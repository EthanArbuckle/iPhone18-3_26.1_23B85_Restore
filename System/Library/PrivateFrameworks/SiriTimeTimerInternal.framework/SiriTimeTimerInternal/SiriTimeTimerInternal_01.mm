uint64_t sub_269359F58(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269356F50, 0, 0);
}

uint64_t sub_269359FC4(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_269359FE4, 0, 0);
}

uint64_t sub_269359FE4()
{
  v1 = *(v0 + 112);
  v2 = [v1 targetTimer];
  v3 = [v1 targetTimer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2693667D8(v2, v5, v4 == 0);
  *(v0 + 128) = v6;

  v7 = [v6 shouldMatchAny];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 168) = v9;
  v10 = sub_26939F390(&unk_2879EC870);
  *(v0 + 136) = v10;
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v11[1] = sub_26935A170;
  v12 = *(v0 + 120);

  return sub_26937EE98(v6, v9, 1, v10, v12);
}

uint64_t sub_26935A170(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *(*v2 + 136);
  v8 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v6 = sub_26935A528;
  }

  else
  {
    v6 = sub_26935A2A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26935A2A4()
{
  v1 = *(v0 + 152);
  v2 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
  v3 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 4;
  [v2 setUserActivity_];
  if (v1 >> 62)
  {
    if (*(v0 + 152) < 0)
    {
      v15 = *(v0 + 152);
    }

    v4 = sub_2693B3C70();
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_2693B3C20();
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = *(v0 + 152);
  type metadata accessor for SiriTimer();
  v7 = 0;
  v8 = v6 + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D639EB0](v7, *(v0 + 152));
    }

    else
    {
      v10 = *(v8 + 8 * v7);
    }

    v11 = v10;
    v12 = [*(v0 + 128) device];
    if (!v12)
    {
      v13 = (*(v0 + 120) + qword_28030D540);
      swift_beginAccess();
      v12 = *(*__swift_project_boxed_opaque_existential_1(v13, v13[3]) + 24);
      v14 = v12;
    }

    ++v7;
    sub_26935CB88(v11, v12);
    sub_2693B3C00();
    v9 = *(v20 + 16);
    sub_2693B3C30();
    sub_2693B3C40();
    sub_2693B3C10();
  }

  while (v4 != v7);
LABEL_15:
  v16 = *(v0 + 152);

  v17 = *(v0 + 128);
  type metadata accessor for SiriTimer();
  v18 = sub_2693B3800();

  [v2 setPausedTimers_];

  v19 = *(v0 + 8);

  return v19(v2);
}

uint64_t sub_26935A528()
{
  v25 = v0;
  v1 = *(v0 + 160);
  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 128);

    v24 = *(v0 + 96);
    v5 = v24;
    v6 = sub_26935BCB8(&v24, v3);

    sub_26934ADAC(v5);
  }

  else
  {

    if (qword_28030CDE8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 160);
    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030D0E8);
    v9 = v7;
    v10 = sub_2693B3610();
    v11 = sub_2693B39A0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 160);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      *(v0 + 104) = v12;
      v15 = v12;
      v16 = sub_2693B3760();
      v18 = sub_26934CA40(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26933F000, v10, v11, "Unknown error handling PauseTimerIntent: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D63A640](v14, -1, -1);
      MEMORY[0x26D63A640](v13, -1, -1);
    }

    v19 = *(v0 + 160);
    v20 = *(v0 + 128);
    v6 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v21 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    *&v6[v21] = 5;
    [v6 setUserActivity_];
  }

  v22 = *(v0 + 8);

  return v22(v6);
}

uint64_t sub_26935A7D8(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5DC0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5AE0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5DD0, v15);
}

uint64_t sub_26935A960(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269359FC4(v6);
}

uint64_t sub_26935AA24(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_26935AA44, 0, 0);
}

uint64_t sub_26935AA44()
{
  v1 = v0[10];
  v2 = [v1 targetTimer];
  v3 = sub_2693667D8(v2, 0, 0);
  v0[12] = v3;

  v4 = type metadata accessor for PauseTimerIntent();
  v0[2] = v1;
  v0[5] = v4;
  v0[6] = &protocol witness table for PauseTimerIntent;
  v5 = [v1 targetTimer];
  if (v5 && (v6 = v5, v7 = [v5 shouldMatchAny], v6, v7))
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_26939ECE0(&unk_2879EC898);
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26935ABCC;
  v11 = v0[11];

  return sub_2693911F0(v3, (v0 + 2), v8, v9);
}

uint64_t sub_26935ABCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v8 = sub_26935AD20;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_269356A08(v4 + 16);
    v8 = sub_269354CA4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26935AD20()
{
  v26 = v0;
  v1 = *(v0 + 120);
  sub_269356A08(v0 + 16);
  *(v0 + 56) = v1;
  v2 = (v0 + 56);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 64);
    v5 = *(v0 + 96);
    if (v4 >= 0xA)
    {
      type metadata accessor for SiriTimerResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = v5;
      v6 = [ObjCClassFromMetadata resolutionResultSuccessWithResolvedValue_];
      sub_26934ADAC(v4);
    }

    else
    {
      v6 = sub_2693A08FC(*(v0 + 64), *(v0 + 96));

      sub_26934ADAC(v4);
    }
  }

  else
  {

    if (qword_28030CDE8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 120);
    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030D0E8);
    v9 = v7;
    v10 = sub_2693B3610();
    v11 = sub_2693B39A0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 120);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      *(v0 + 72) = v12;
      v15 = v12;
      v16 = sub_2693B3760();
      v18 = sub_26934CA40(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26933F000, v10, v11, "Unknown error resolving targetTimer for PauseTimerIntent: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D63A640](v14, -1, -1);
      MEMORY[0x26D63A640](v13, -1, -1);
    }

    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    type metadata accessor for SiriTimerResolutionResult();
    v6 = [swift_getObjCClassFromMetadata() unsupported];
  }

  v23 = *(v0 + 8);

  return v23(v6);
}

uint64_t sub_26935AFE8(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5D98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5DA0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5AC0, v15);
}

uint64_t sub_26935B170(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_26935AA24(v6);
}

uint64_t sub_26935B234(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5D68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5D70;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5A90, v15);
}

uint64_t sub_26935B3BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26935B448, 0, 0);
}

uint64_t sub_26935B448()
{
  v1 = [*(v0 + 16) targetTimer];
  v2 = [v1 shouldMatchAny];

  [v2 BOOLValue];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2693478B0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return (sub_26935BFE8)(v5, v4);
}

uint64_t sub_26935B544(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5D48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

uint64_t sub_26935B6CC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26935B758, 0, 0);
}

uint64_t sub_26935B758()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_26935B914(v3);
}

uint64_t type metadata accessor for PauseTimerIntentHandler()
{
  result = qword_28030D100;
  if (!qword_28030D100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26935B860()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26935B6CC(v2, v3, v4);
}

uint64_t sub_26935B914(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26935B9D4, 0, 0);
}

uint64_t sub_26935B9D4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    __swift_project_value_buffer(v5, qword_280E262F0);
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAllTargetableDevices() Resolving all targetable devices", v8, 2u);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_269349074;
    v10 = v0[2];

    return sub_26939476C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    v13 = v0[5];

    v14 = v0[1];

    return v14(v12);
  }
}

uint64_t sub_26935BC04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26935B3BC(v2, v3, v4);
}

char *sub_26935BCB8(unint64_t *a1, char a2)
{
  v2 = *a1;
  if (*a1 <= 4)
  {
    if (v2 >= 5)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 - 7 < 3)
  {
    if (qword_28030CDE8 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_28030D0E8);
    sub_26934AD9C(v2);
    v4 = sub_2693B3610();
    v5 = sub_2693B39A0();
    sub_26934ADAC(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      sub_26934AD9C(v2);
      v8 = sub_2693B3760();
      v10 = sub_26934CA40(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_26933F000, v4, v5, "Failed in PauseTimerIntent handling with an invalid, unhandled error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x26D63A640](v7, -1, -1);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

LABEL_10:
    v11 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v12 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 5;
LABEL_11:
    *&v11[v12] = v13;
    [v11 setUserActivity_];
    return v11;
  }

  if (v2 == 5)
  {
    v11 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v12 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 100;
    goto LABEL_11;
  }

  if (v2 == 6)
  {
    v11 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v12 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 101;
    goto LABEL_11;
  }

LABEL_16:
  v11 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
  v16 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  if (a2)
  {
    v17 = 103;
  }

  else
  {
    v17 = 102;
  }

  *&v11[v16] = v17;
  [v11 setUserActivity_];
  sub_26938B998(v2);
  type metadata accessor for SiriTimer();
  v18 = sub_2693B3800();

  [v11 setPausedTimers_];

  return v11;
}

uint64_t sub_26935BFE8(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for PauseTimerIntent();
  v2[6] = &protocol witness table for PauseTimerIntent;
  v2[2] = a1;
  v7 = a1;

  return MEMORY[0x2822009F8](sub_26935C0CC, 0, 0);
}

uint64_t sub_26935C0CC()
{
  v21 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    v0[25] = __swift_project_value_buffer(v5, qword_280E262F0);
    sub_26934489C((v0 + 2), (v0 + 7));
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      sub_26934489C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v10 = sub_2693B3760();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_26934CA40(v10, v12, &v20);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAssociatedDeviceTarget(for:) %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D63A640](v9, -1, -1);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = sub_26935C3A8;
    v19 = v0[21];

    return sub_26939476C();
  }

  else
  {
    *(v0[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v14 = [swift_getObjCClassFromMetadata() notRequired];
    v15 = v0[24];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v16 = v0[1];

    return v16(v14);
  }
}

uint64_t sub_26935C3A8(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_26935C4A8, 0, 0);
}

uint64_t sub_26935C4A8()
{
  v54 = v0;
  v1 = *(v0 + 216);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    v47 = *(v0 + 216);
    goto LABEL_23;
  }

  if (v1 < 0)
  {
    v46 = *(v0 + 216);
  }

  if (!sub_2693B3C70())
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = [*(v0 + 160) targetingInfo];
  v3 = *(v0 + 216);
  if (!v2)
  {
LABEL_23:

LABEL_24:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v41 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  v4 = *(v0 + 200);

  v5 = v2;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53 = v9;
    *v8 = 134218242;
    if (v1 >> 62)
    {
      v12 = *(v0 + 216);
      if (v1 < 0)
      {
        v13 = *(v0 + 216);
      }

      v10 = sub_2693B3C70();
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = *(v0 + 216);
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    v15 = v5;
    v16 = [v15 description];
    v17 = v5;
    v18 = sub_2693B3750();
    v20 = v19;

    v21 = v18;
    v5 = v17;
    v22 = sub_26934CA40(v21, v20, &v53);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_26933F000, v6, v7, "Filtering %ld targets using targeting info: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
    v11 = *(v0 + 216);
  }

  v23 = sub_26939E8D4(v5, *(v0 + 160), *(v0 + 216));

  v24 = *(v0 + 200);
  if (!v23)
  {
    v42 = sub_2693B3610();
    v43 = sub_2693B39B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26933F000, v42, v43, "No valid device target found for target criteria", v44, 2u);
      MEMORY[0x26D63A640](v44, -1, -1);
    }

    v45 = *(v0 + 168);

    *(v45 + qword_280E266B8) = 1;
    goto LABEL_24;
  }

  v25 = v23;
  v26 = sub_2693B3610();
  v27 = sub_2693B39B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v28 = 136315138;
    v52 = v5;
    v29 = v25;
    v30 = v25;
    v31 = [v29 description];
    v32 = sub_2693B3750();
    v34 = v33;

    v25 = v30;
    v5 = v52;
    v35 = sub_26934CA40(v32, v34, &v53);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_26933F000, v26, v27, "Found valid device target: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x26D63A640](v51, -1, -1);
    MEMORY[0x26D63A640](v28, -1, -1);
  }

  v36 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v37 = *(v36 + 24);
  v38 = *(v36 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v39 = *(v38 + 40);
  v40 = v25;
  v39(v23, v37, v38);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v41 = sub_2693B1D2C(v40);

LABEL_25:
  v48 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v49 = *(v0 + 8);

  return v49(v41);
}

uint64_t sub_26935C96C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_26935B170(v2, v3, v4);
}

uint64_t sub_26935CA20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26935A960(v2, v3, v4);
}

uint64_t sub_26935CAD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269359F58(v2, v3);
}

id sub_26935CB88(void *a1, void *a2)
{
  v3 = a1;
  v4 = SiriTimer.__allocating_init(mtTimer:)(v3);
  [v4 setDevice_];
  if (qword_280E26288 != -1)
  {
    swift_once();
  }

  v5 = sub_2693B3620();
  __swift_project_value_buffer(v5, qword_280E26290);
  v6 = v3;
  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();

  v29 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = a2;
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_2693B3750();
    v15 = v14;

    v16 = sub_26934CA40(v13, v15, &v30);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_26933F000, v7, v8, "Converting MTTimer: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v17 = v10;
    a2 = v28;
    MEMORY[0x26D63A640](v17, -1, -1);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  v18 = v4;
  v19 = sub_2693B3610();
  v20 = sub_2693B39B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v23 = sub_26935D3DC();
    v25 = v24;

    v26 = sub_26934CA40(v23, v25, &v30);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_26933F000, v19, v20, "To SiriTimer: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x26D63A640](v22, -1, -1);
    MEMORY[0x26D63A640](v21, -1, -1);
  }

  else
  {
  }

  return v18;
}

uint64_t sub_26935CE54()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E26290);
  v1 = __swift_project_value_buffer(v0, qword_280E26290);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SiriTimer.__allocating_init(mtTimer:)(void *a1)
{
  v3 = sub_2693B3170();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2693B31C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v1);
  v14 = [a1 timerID];
  sub_2693B31A0();

  sub_2693B3180();
  (*(v9 + 8))(v12, v8);
  v15 = sub_2693B3740();

  v16 = sub_2693B3740();
  v17 = [v13 initWithIdentifier:v15 displayString:v16];

  v18 = v17;
  if ([a1 type] == 2 || (v19 = objc_msgSend(a1, sel_sound), v20 = objc_msgSend(v19, sel_isSilent), v19, (v20 & 1) == 0))
  {
    v22 = [a1 type];
    if (v22 == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v22 == 1;
    }
  }

  else
  {
    v21 = 2;
  }

  [v18 setType_];
  v23 = [a1 state];
  if (v23 > 4)
  {
    v24 = 0;
  }

  else
  {
    v24 = qword_2693B5DF8[v23];
  }

  [v18 setState_];
  [a1 duration];
  v25 = sub_2693B3930();
  [v18 setDuration_];

  [a1 remainingTime];
  v26 = sub_2693B3930();
  [v18 setRemainingTime_];

  if ([a1 state] == 3)
  {
    v39 = [a1 nextTrigger];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 triggerDate];

      sub_2693B3150();
      v42 = sub_2693B3140();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v42 = 0;
    }

    [v18 setFireDate_];
  }

  else
  {
    [v18 setFireDate_];
  }

  v27 = [a1 title];
  if (!v27)
  {
    v35 = *MEMORY[0x277D29768];
    sub_2693B3750();
    goto LABEL_18;
  }

  v28 = v27;
  v29 = sub_2693B3750();
  v31 = v30;

  v32 = *MEMORY[0x277D29768];
  v33 = sub_2693B3750();
  if (!v31)
  {
LABEL_18:

LABEL_19:
    v36 = [a1 title];
    [v18 setLabel_];

LABEL_20:
    return v18;
  }

  if (v29 != v33 || v31 != v34)
  {
    v38 = sub_2693B3CE0();

    if (v38)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return v18;
}

uint64_t sub_26935D3DC()
{
  swift_getObjectType();
  sub_26935E1D0();
  return sub_269372CB0();
}

uint64_t sub_26935D424@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_2693B31C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 timerID];
  sub_2693B31A0();

  v14 = sub_2693B3180();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_2693B3750();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      goto LABEL_19;
    }

    v23 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v23 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v24 = v19 == v14 && v21 == v16;
      if (v24 || (sub_2693B3CE0() & 1) != 0 || ((v25 = sub_2693B37A0(), v27 = v26, , v25 == v14) ? (v28 = v27 == v16) : (v28 = 0), v28))
      {

LABEL_29:
        if (qword_280E26288 != -1)
        {
          swift_once();
        }

        v42 = sub_2693B3620();
        __swift_project_value_buffer(v42, qword_280E26290);

        v43 = sub_2693B3610();
        v44 = sub_2693B3990();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v138 = v46;
          *v45 = 136315138;
          v47 = sub_26934CA40(v14, v16, &v138);

          *(v45 + 4) = v47;
          _os_log_impl(&dword_26933F000, v43, v44, "Timer identifier matched: MTTimer – %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x26D63A640](v46, -1, -1);
          MEMORY[0x26D63A640](v45, -1, -1);
        }

        else
        {
        }

        v97 = *MEMORY[0x277D618A8];
        v98 = sub_2693B3590();
        (*(*(v98 - 8) + 104))(a3, v97, v98);
        v99 = MEMORY[0x277D618C8];
        goto LABEL_76;
      }

      v29 = sub_2693B3CE0();

      if (v29)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_19:
    }
  }

  v30 = [a1 duration];
  if (v30)
  {
    v31 = v30;
    [v30 doubleValue];
    v33 = v32;
  }

  else
  {
    [objc_opt_self() defaultDuration];
    v33 = v34;
  }

  v35 = objc_opt_self();
  [v35 defaultDuration];
  if (v33 != v36)
  {
    [v4 duration];
    if (v33 != v37)
    {
      if (qword_280E26288 != -1)
      {
        swift_once();
      }

      v100 = sub_2693B3620();
      __swift_project_value_buffer(v100, qword_280E26290);
      v101 = v4;
      v60 = sub_2693B3610();
      v102 = sub_2693B3990();

      if (!os_log_type_enabled(v60, v102))
      {
        goto LABEL_75;
      }

      v74 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v138 = v103;
      *v74 = 136315394;
      [v101 duration];
      v104 = sub_2693B3950();
      v106 = sub_26934CA40(v104, v105, &v138);

      *(v74 + 4) = v106;
      *(v74 + 12) = 2080;
      v107 = sub_2693B3950();
      v109 = sub_26934CA40(v107, v108, &v138);

      *(v74 + 14) = v109;
      v110 = "Duration time doesn't match: MTTimer – %s, SiriTimer - %s";
LABEL_72:
      _os_log_impl(&dword_26933F000, v60, v102, v110, v74, 0x16u);
      swift_arrayDestroy();
      v82 = v103;
LABEL_73:
      MEMORY[0x26D63A640](v82, -1, -1);
      v70 = v74;
      goto LABEL_74;
    }
  }

  if ((a2 & 1) == 0)
  {
    v38 = [a1 remainingTime];
    if (v38)
    {
      v39 = v38;
      [v38 doubleValue];
      v41 = v40;
    }

    else
    {
      [v35 defaultDuration];
      v41 = v48;
    }

    [v35 defaultDuration];
    if (v41 != v49)
    {
      [v4 remainingTime];
      if (v41 != v50)
      {
        if (qword_280E26288 != -1)
        {
          swift_once();
        }

        v111 = sub_2693B3620();
        __swift_project_value_buffer(v111, qword_280E26290);
        v112 = v4;
        v60 = sub_2693B3610();
        v102 = sub_2693B3990();

        if (!os_log_type_enabled(v60, v102))
        {
          goto LABEL_75;
        }

        v74 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v138 = v103;
        *v74 = 136315394;
        [v112 remainingTime];
        v113 = sub_2693B3950();
        v115 = sub_26934CA40(v113, v114, &v138);

        *(v74 + 4) = v115;
        *(v74 + 12) = 2080;
        v116 = sub_2693B3950();
        v118 = sub_26934CA40(v116, v117, &v138);

        *(v74 + 14) = v118;
        v110 = "Remaining time doesn't match: MTTimer – %s, SiriTimer - %s";
        goto LABEL_72;
      }
    }
  }

  v51 = [a1 state];
  if (!v51)
  {
    goto LABEL_41;
  }

  v52 = v51;
  v53 = [v4 state];
  if (v53 != 2)
  {
    if (v53 != 3)
    {
LABEL_49:
      if (qword_280E26288 != -1)
      {
        swift_once();
      }

      v71 = sub_2693B3620();
      __swift_project_value_buffer(v71, qword_280E26290);
      v72 = v4;
      v60 = sub_2693B3610();
      v73 = sub_2693B3990();

      if (!os_log_type_enabled(v60, v73))
      {
        goto LABEL_75;
      }

      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v138 = v75;
      *v74 = 136315394;
      v140 = [v72 state];
      type metadata accessor for MTTimerState(0);
      v76 = sub_2693B3760();
      v78 = sub_26934CA40(v76, v77, &v138);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v140 = v52;
      v79 = sub_2693B3760();
      v81 = sub_26934CA40(v79, v80, &v138);

      *(v74 + 14) = v81;
      _os_log_impl(&dword_26933F000, v60, v73, "State doesn't match: MTTimer – %s, SiriTimer - %s", v74, 0x16u);
      swift_arrayDestroy();
      v82 = v75;
      goto LABEL_73;
    }

    v53 = 1;
  }

  if (v52 != v53)
  {
    goto LABEL_49;
  }

LABEL_41:
  if ([a1 type])
  {
    v54 = [a1 type];
    if ([v4 type] == 2 || (v55 = objc_msgSend(v4, sel_sound), v56 = objc_msgSend(v55, sel_isSilent), v55, (v56 & 1) == 0))
    {
      v83 = [v4 type];
      v84 = v83 == 1;
      if (v83 == 2)
      {
        v84 = 2;
      }

      if (v54 != v84)
      {
        goto LABEL_45;
      }
    }

    else if (v54 != 2)
    {
LABEL_45:
      if (qword_280E26288 != -1)
      {
        swift_once();
      }

      v57 = sub_2693B3620();
      __swift_project_value_buffer(v57, qword_280E26290);
      v58 = v4;
      v59 = a1;
      v60 = sub_2693B3610();
      v61 = sub_2693B3990();

      if (!os_log_type_enabled(v60, v61))
      {
        goto LABEL_75;
      }

      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v138 = v63;
      *v62 = 136315394;
      v140 = [v58 type];
      type metadata accessor for INTimerType(0);
      v64 = sub_2693B3760();
      v66 = sub_26934CA40(v64, v65, &v138);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v140 = [v59 type];
      v67 = sub_2693B3760();
      v69 = sub_26934CA40(v67, v68, &v138);

      *(v62 + 14) = v69;
      _os_log_impl(&dword_26933F000, v60, v61, "Type doesn't match: MTTimer – %s, SiriTimer - %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v63, -1, -1);
      v70 = v62;
LABEL_74:
      MEMORY[0x26D63A640](v70, -1, -1);
LABEL_75:

      v99 = MEMORY[0x277D61898];
LABEL_76:
      v119 = *v99;
      v120 = sub_2693B35B0();
      return (*(*(v120 - 8) + 104))(a3, v119, v120);
    }
  }

  if (qword_280E26288 != -1)
  {
    swift_once();
  }

  v85 = sub_2693B3620();
  __swift_project_value_buffer(v85, qword_280E26290);
  v86 = v4;
  v87 = a1;
  v88 = sub_2693B3610();
  v89 = sub_2693B3990();

  if (os_log_type_enabled(v88, v89))
  {
    v137 = a3;
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v140 = v91;
    *v90 = 136315394;
    v92 = [v87 label];
    if (v92)
    {
      v93 = v92;
      v94 = sub_2693B3750();
      v96 = v95;
    }

    else
    {
      v94 = 0;
      v96 = 0;
    }

    v138 = v94;
    v139 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
    v122 = sub_2693B3760();
    v124 = sub_26934CA40(v122, v123, &v140);

    *(v90 + 4) = v124;
    *(v90 + 12) = 2080;
    v125 = [v86 title];
    if (v125)
    {
      v126 = v125;
      v127 = sub_2693B3750();
      v129 = v128;
    }

    else
    {
      v127 = 0;
      v129 = 0;
    }

    v138 = v127;
    v139 = v129;
    v130 = sub_2693B3760();
    v132 = sub_26934CA40(v130, v131, &v140);

    *(v90 + 14) = v132;
    _os_log_impl(&dword_26933F000, v88, v89, "Timer identifier checking labels: MTTimer – label: %s, title: %s", v90, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v91, -1, -1);
    MEMORY[0x26D63A640](v90, -1, -1);
  }

  else
  {
  }

  v133 = [v87 label];
  if (v133)
  {
    v134 = v133;
    sub_2693B3750();
  }

  v135 = [v86 title];
  if (v135)
  {
    v136 = v135;
    sub_2693B3750();
  }

  sub_2693B3570();
}

unint64_t sub_26935E1D0()
{
  result = qword_280E26308;
  if (!qword_280E26308)
  {
    type metadata accessor for SiriTimer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E26308);
  }

  return result;
}

uint64_t sub_26935E298()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E26250);
  v1 = __swift_project_value_buffer(v0, qword_280E26250);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double IntentTargetable.knownHomePodCount.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_2693B3420();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2693B3410();
  v9 = sub_2693B3400();
  (*(v5 + 8))(v8, v4);
  v10 = 1.0;
  if (v9)
  {
    v11 = (*(a2 + 16))(a1, a2);
    if (v11)
    {
      if (v11 >> 62)
      {
        v12 = sub_2693B3C70();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v12;
    }
  }

  return v10;
}

id SiriRemoteTimerTarget.__allocating_init(deviceNames:deviceReferenceNames:)(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v8 = v2;
    if (qword_280E26248 != -1)
    {
      swift_once();
    }

    v11 = sub_2693B3620();
    __swift_project_value_buffer(v11, qword_280E26250);

    v12 = sub_2693B3610();
    v13 = sub_2693B39B0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D110, &qword_2693B5E20);
      v16 = sub_2693B3760();
      v18 = sub_26934CA40(v16, v17, &v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v28 = a2;

      v19 = sub_2693B3760();
      v21 = sub_26934CA40(v19, v20, &v29);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_26933F000, v12, v13, "SiriRemoteTimerTarget.init Using deviceName/reference name: %s/%s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v15, -1, -1);
      MEMORY[0x26D63A640](v14, -1, -1);
    }

    v22 = objc_allocWithZone(v8);
    v23 = sub_2693B3740();
    v24 = [v22 initWithIdentifier:0 displayString:v23];

    v7 = v24;
    if (a1)
    {
      v25 = sub_2693B3800();
    }

    else
    {
      v25 = 0;
    }

    [v7 setDeviceNames_];

    if (a2)
    {
      v26 = sub_2693B3800();
    }

    else
    {
      v26 = 0;
    }

    [v7 setRoomNames_];

    [v7 setDeviceType_];
  }

  else
  {
    if (qword_280E26248 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_280E26250);
    v4 = sub_2693B3610();
    v5 = sub_2693B39B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26933F000, v4, v5, "SiriRemoteTimerTarget.init No targetable info found", v6, 2u);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

    return 0;
  }

  return v7;
}

id static SiriRemoteTimerTarget.testHomeEntertainmentRoomTarget()()
{
  type metadata accessor for SiriRemoteTimerTarget();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2693B3740();
  v2 = [v0 initWithIdentifier:0 displayString:v1];

  v3 = sub_2693B3800();
  [v2 setDeviceNames_];

  v4 = sub_2693B3800();
  [v2 setRoomNames_];

  return v2;
}

uint64_t sub_26935E944()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D118);
  v1 = __swift_project_value_buffer(v0, qword_28030D118);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26935EA94(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D138, &qword_2693B5F58) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v4 = sub_2693B3110();
  v2[31] = v4;
  v5 = *(v4 - 8);
  v2[32] = v5;
  v6 = *(v5 + 64) + 15;
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26935EB8C, 0, 0);
}

uint64_t sub_26935EB8C()
{
  if (qword_28030CDF0 != -1)
  {
    swift_once();
  }

  v1 = v0[14].i64[0];
  v2 = sub_2693B3620();
  v0[17].i64[0] = __swift_project_value_buffer(v2, qword_28030D118);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14].i64[0];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_26933F000, v4, v5, "Handling dismiss timer intent %@.", v7, 0xCu);
    sub_26934B4F0(v8, &qword_28030D150, &qword_2693B5F70);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v10 = v0[14].i64[0];

  v11 = [v10 remoteExecutionId];
  if (v11)
  {
    v12 = v0[14].i64[0];
    v13 = v11;
    v14 = sub_2693B3750();
    v16 = v15;

    v0[17].i64[1] = v14;
    v0[18].i64[0] = v16;
    v17 = [v12 timerId];
    if (!v17)
    {

      goto LABEL_13;
    }

    v18 = v0[15].i64[1];
    v19 = v0[16].i64[0];
    v20 = v0[15].i64[0];
    v21 = v17;
    sub_2693B3750();

    sub_2693B3100();

    if ((*(v19 + 48))(v20, 1, v18) == 1)
    {
      v22 = v0[15].i64[0];

      sub_26934B4F0(v22, &qword_28030D138, &qword_2693B5F58);
LABEL_13:
      v27 = sub_2693B3610();
      v28 = sub_2693B39A0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_26933F000, v27, v28, "Failed to get a valid timerId or timerURL for SATimerDismiss command", v29, 2u);
        MEMORY[0x26D63A640](v29, -1, -1);
      }

      v30 = sub_2693B35D0();
      v31 = MEMORY[0x277D61908];
      v0[2].i64[1] = v30;
      v0[3].i64[0] = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0[1].i64);
      *boxed_opaque_existential_1 = 0xD000000000000010;
      boxed_opaque_existential_1[1] = 0x80000002693B8780;
      v33 = *MEMORY[0x277D61878];
      v34 = sub_2693B3560();
      (*(*(v34 - 8) + 104))(boxed_opaque_existential_1, v33, v34);
      (*(*(v30 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v30);
      sub_2693B34C0();
      __swift_destroy_boxed_opaque_existential_1(v0[1].i64);
      v35 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
      v36 = OBJC_IVAR___DismissTimerIntentResponse_code;
      swift_beginAccess();
      *&v35[v36] = 5;
      [v35 setUserActivity_];
      v37 = v0[16].i64[1];
      v38 = v0[15].i64[0];

      v39 = v0->i64[1];

      return v39(v35);
    }

    v41 = v0[16].i64[0];
    v40 = v0[16].i64[1];
    v42 = v0[15].i64[1];
    (*(v41 + 32))(v40, v0[15].i64[0], v42);
    v43 = [objc_allocWithZone(MEMORY[0x277D479D0]) init];
    v0[18].i64[1] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D140, &unk_2693B5F60);
    v44 = *(v41 + 72);
    v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2693B5770;
    (*(v41 + 16))(v46 + v45, v40, v42);
    v47 = sub_2693B3800();

    [v43 setTimerIds_];

    sub_2693B3340();
    v48 = v0[5].i64[0];
    v49 = v0[5].i64[1];
    __swift_project_boxed_opaque_existential_1(&v0[3].i64[1], v48);
    v50 = *(MEMORY[0x277D5BFA8] + 4);
    v51 = swift_task_alloc();
    v0[19].i64[0] = v51;
    v52 = sub_2693608D8(0, &qword_28030D148, 0x277D471B0);
    *v51 = v0;
    v51[1] = sub_26935F230;

    return MEMORY[0x2821BB680](v43, v14, v16, v48, v52, v49);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[20].i64[0] = v23;
    v23[1] = vextq_s8(v0[14], v0[14], 8uLL);
    v24 = *(MEMORY[0x277D859E0] + 4);
    v25 = swift_task_alloc();
    v0[20].i64[1] = v25;
    v26 = type metadata accessor for DismissTimerIntentResponse();
    *v25 = v0;
    v25[1] = sub_26935F54C;

    return MEMORY[0x2822007B8](&v0[13], 0, 0, 0x6928656C646E6168, 0xEF293A746E65746ELL, sub_269360468, v23, v26);
  }
}

uint64_t sub_26935F230(void *a1)
{
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_26935F6D8;
  }

  else
  {

    v5 = sub_26935F34C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26935F34C()
{
  v22 = v0;
  v1 = v0[36];
  v2 = v0[34];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v3 = sub_2693B3610();
  v4 = sub_2693B39B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[36];
  if (v5)
  {
    v7 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = sub_26934CA40(v7, v6, &v21);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_26933F000, v3, v4, "Execute SATimerDismiss on remote device %s succeeded!", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[37];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[31];
  v15 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
  v16 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = 4;
  [v15 setUserActivity_];

  (*(v13 + 8))(v12, v14);
  v17 = v0[33];
  v18 = v0[30];

  v19 = v0[1];

  return v19(v15);
}

uint64_t sub_26935F54C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26935F664, 0, 0);
}

uint64_t sub_26935F664()
{
  v1 = v0[26];
  v2 = v0[33];
  v3 = v0[30];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_26935F6D8()
{
  v35 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[34];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v4 = v1;
  v5 = sub_2693B3610();
  v6 = sub_2693B39A0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[39];
    v9 = v0[35];
    v8 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315394;
    v12 = sub_26934CA40(v9, v8, &v34);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v0[27] = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v14 = sub_2693B3760();
    v16 = sub_26934CA40(v14, v15, &v34);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_26933F000, v5, v6, "Execute SATimerDismiss on remote device %s failed with error %s!", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v11, -1, -1);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  else
  {
    v17 = v0[36];
  }

  v18 = v0[39];
  v19 = v0[37];
  v21 = v0[32];
  v20 = v0[33];
  v22 = v0[31];
  v23 = sub_2693B35D0();
  v24 = MEMORY[0x277D61908];
  v0[15] = v23;
  v0[16] = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v26 = *MEMORY[0x277D618D0];
  v27 = sub_2693B35C0();
  (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
  (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D61900], v23);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v28 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
  v29 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *&v28[v29] = 5;
  [v28 setUserActivity_];

  (*(v21 + 8))(v20, v22);
  v30 = v0[33];
  v31 = v0[30];

  v32 = v0[1];

  return v32(v28);
}

uint64_t sub_26935FA2C(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-1] - v9;
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal25DismissTimerIntentHandler_siriTimerManager, v20);
  v11 = v21;
  v12 = v22;
  v19 = __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  (*(v7 + 32))(v14 + v13, v10, v6);
  v15 = *(v12 + 16);
  v16 = a3;
  v17 = a2;
  v15(sub_269360470, v14, v11, v12);

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_26935FBDC(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  if (a1[8])
  {
    if (qword_28030CDF0 != -1)
    {
      swift_once();
    }

    v13 = sub_2693B3620();
    __swift_project_value_buffer(v13, qword_28030D118);
    v14 = sub_2693B3610();
    v15 = sub_2693B39A0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26933F000, v14, v15, "Search timers failed, return failure", v16, 2u);
      MEMORY[0x26D63A640](v16, -1, -1);
    }

    v17 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
    v18 = OBJC_IVAR___DismissTimerIntentResponse_code;
    swift_beginAccess();
    *&v17[v18] = 5;
    [v17 setUserActivity_];
    v42 = v17;
    return sub_2693B3900();
  }

  else
  {
    v20 = (*a1 + 40);
    v21 = *(*a1 + 16) + 1;
    while (--v21)
    {
      v22 = (v20 + 16);
      v23 = *v20;
      v20 += 16;
      if (v23)
      {
        v24 = v8;
        v25 = *(v22 - 3);
        v26 = [v25 identifier];
        if (v26)
        {
          v27 = v26;
          v28 = sub_2693B3750();
          v30 = v29;

LABEL_14:
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v24 = v8;
    v31 = [a2 timerId];
    if (v31)
    {
      v25 = v31;
      v28 = sub_2693B3750();
      v30 = v32;
      goto LABEL_14;
    }

LABEL_16:
    v28 = 0;
    v30 = 0;
LABEL_17:
    sub_26934489C(a3 + OBJC_IVAR____TtC21SiriTimeTimerInternal25DismissTimerIntentHandler_siriTimerManager, v39);
    v33 = v40;
    v34 = v41;
    v38[1] = __swift_project_boxed_opaque_existential_1(v39, v40);
    if (!v30)
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v35 = v24;
    (*(v9 + 16))(v12, a4, v24);
    v36 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v37 = swift_allocObject();
    (*(v9 + 32))(v37 + v36, v12, v35);
    (*(v34 + 8))(v28, v30, sub_2693604F0, v37, v33, v34);

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }
}

uint64_t sub_26935FF80(uint64_t a1)
{
  if (*(a1 + 1))
  {
    if (qword_28030CDF0 != -1)
    {
      swift_once();
    }

    v1 = sub_2693B3620();
    __swift_project_value_buffer(v1, qword_28030D118);
    v2 = sub_2693B3610();
    v3 = sub_2693B39A0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Timer dismissed failed. We still return success code since the timer is highly likely not existed anymore.";
LABEL_10:
      _os_log_impl(&dword_26933F000, v2, v3, v5, v4, 2u);
      MEMORY[0x26D63A640](v4, -1, -1);
    }
  }

  else
  {
    if (qword_28030CDF0 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    __swift_project_value_buffer(v6, qword_28030D118);
    v2 = sub_2693B3610();
    v3 = sub_2693B39B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Timer dismissed successfully";
      goto LABEL_10;
    }
  }

  v7 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
  v8 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *&v7[v8] = 4;
  [v7 setUserActivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);
  return sub_2693B3900();
}

uint64_t sub_2693602F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_26935EA94(v6);
}

id sub_2693603EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissTimerIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269360470(_BYTE *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26935FBDC(a1, v4, v5, v6);
}

uint64_t sub_2693604F0(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78) - 8) + 80);

  return sub_26935FF80(a1);
}

uint64_t sub_26936056C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_2693602F8(v2, v3, v4);
}

void sub_269360620(void *a1, uint64_t a2)
{
  v4 = [a1 remoteDeviceId];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_2693B3750();
  v8 = v7;

  v9 = [a1 skipConfirmation];
  sub_2693608D8(0, &qword_280E261B8, 0x277CCABB0);
  v10 = sub_2693B3A30();
  v11 = v10;
  if (!v9)
  {

    goto LABEL_9;
  }

  v12 = sub_2693B3A50();

  if ((v12 & 1) == 0)
  {
LABEL_9:

LABEL_10:
    v19 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
    v20 = OBJC_IVAR___DismissTimerIntentResponse_code;
    swift_beginAccess();
    v21 = 4;
    goto LABEL_11;
  }

  if (qword_28030CDF0 != -1)
  {
    swift_once();
  }

  v13 = sub_2693B3620();
  __swift_project_value_buffer(v13, qword_28030D118);

  v14 = sub_2693B3610();
  v15 = sub_2693B39B0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    v18 = sub_26934CA40(v6, v8, &v22);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_26933F000, v14, v15, "DismissTimerIntentHandler returning needs confirm intent since the firing timer is on remote device %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x26D63A640](v17, -1, -1);
    MEMORY[0x26D63A640](v16, -1, -1);
  }

  else
  {
  }

  v19 = [objc_allocWithZone(type metadata accessor for DismissTimerIntentResponse()) init];
  v20 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  v21 = 3;
LABEL_11:
  *&v19[v20] = v21;
  [v19 setUserActivity_];
  (*(a2 + 16))(a2, v19);
}

uint64_t sub_2693608D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_269360A48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2693B3620();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_269360B0C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2693B3620();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2693B34A0();
}

uint64_t sub_269360B6C()
{
  result = sub_2693B3490();
  qword_280E26338 = result;
  return result;
}

id static SiriTimeLog.timerExtensionOSLogObject.getter()
{
  if (qword_280E26330 != -1)
  {
    swift_once();
  }

  v1 = qword_280E26338;

  return v1;
}

uint64_t getEnumTagSinglePayload for SiriTimeLog(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriTimeLog(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_269360CF0()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E262B0);
  v1 = __swift_project_value_buffer(v0, qword_280E262B0);
  if (qword_280E26310 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26318);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static TimerIntentHandlerRouter.getIntentHandler(intent:)(void *a1)
{
  v2 = sub_2693B3420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E262A8 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_280E262B0);
  v8 = a1;
  v9 = sub_2693B3610();
  v10 = sub_2693B39B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v32 = v3;
    v14 = v13;
    v35[0] = v13;
    *v12 = 136315138;
    v15 = v8;
    v16 = [v15 description];
    v17 = sub_2693B3750();
    v19 = v18;

    v20 = sub_26934CA40(v17, v19, v35);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_26933F000, v9, v10, "Matching intent to handler: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v21 = v14;
    v3 = v32;
    MEMORY[0x26D63A640](v21, -1, -1);
    v22 = v12;
    v2 = v33;
    MEMORY[0x26D63A640](v22, -1, -1);
  }

  type metadata accessor for DismissTimerIntent();
  if (swift_dynamicCastClass())
  {
    v23 = [v8 _metadata];

    v24 = type metadata accessor for SiriDismissTimerManager();
    v25 = swift_allocObject();
    if (qword_28030CE20 != -1)
    {
      swift_once();
    }

    sub_26934489C(&qword_28030D2A0, v25 + 16);
    v35[3] = v24;
    v35[4] = &protocol witness table for SiriDismissTimerManager;
    v35[0] = v25;
    v26 = type metadata accessor for DismissTimerIntentHandler();
    v27 = objc_allocWithZone(v26);
    sub_26934489C(v35, v27 + OBJC_IVAR____TtC21SiriTimeTimerInternal25DismissTimerIntentHandler_siriTimerManager);
    v34.receiver = v27;
    v34.super_class = v26;
    v28 = objc_msgSendSuper2(&v34, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return v28;
  }

  else
  {
    sub_2693B3410();
    v30 = sub_2693B33F0();
    (*(v3 + 8))(v6, v2);
    if (v30)
    {
      return sub_269361C58(v8);
    }

    else
    {
      return sub_269363234();
    }
  }
}

id sub_269361120(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v80[3] = type metadata accessor for TimerManager();
  v80[4] = &off_2879EDD98;
  v15 = qword_280E266B8;
  a4[qword_280E266B8] = 0;
  v80[0] = a1;
  v16 = qword_280E266A8;
  a4[qword_280E266A8] = 1;
  v72 = qword_280E266B0;
  a4[qword_280E266B0] = 0;
  v71 = qword_280E266A0;
  a4[qword_280E266A0] = 1;
  v17 = &a4[qword_28030D540];
  sub_26934489C(v80, &a4[qword_28030D540]);
  v18 = qword_280E26A48;
  v19 = sub_2693B3480();
  v68 = *(v19 - 8);
  v69 = v19;
  (*(v68 + 16))(&a4[v18], a3);
  if (a2)
  {
    v67 = a3;
    v75 = a5(0);
    v76 = a6;
    *&v74 = a2;
    sub_2693436F0(&v74, v77);
    v20 = qword_280E262E8;
    v21 = a2;
    if (v20 != -1)
    {
      swift_once();
    }

    v66 = a8;
    v22 = sub_2693B3620();
    __swift_project_value_buffer(v22, qword_280E262F0);
    v23 = sub_2693B3610();
    v24 = sub_2693B39B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26933F000, v23, v24, "TimerIntentHandler.init(timerManager:intent) found targetable intent", v25, 2u);
      MEMORY[0x26D63A640](v25, -1, -1);
    }

    v26 = v78;
    v27 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v28 = (*(v27 + 16))(v26, v27);
    if (v28)
    {
      v29 = v28;

      v30 = sub_2693B3610();
      v31 = sub_2693B39B0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        if (v29 >> 62)
        {
          v33 = sub_2693B3C70();
        }

        else
        {
          v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v32 + 4) = v33;

        _os_log_impl(&dword_26933F000, v30, v31, "TimerIntentHandler.init found previous list of targets: %ld targets", v32, 0xCu);
        MEMORY[0x26D63A640](v32, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      v39 = *(v17 + 24);
      v40 = *(v17 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v17, v39);
      (*(v40 + 16))(v29, v39, v40);
      swift_endAccess();
      v38 = 0;
      v37 = 1;
    }

    else
    {
      v34 = sub_2693B3610();
      v35 = sub_2693B39B0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_26933F000, v34, v35, "TimerIntentHandler.init found no previous targetable devices", v36, 2u);
        MEMORY[0x26D63A640](v36, -1, -1);
      }

      v37 = 0;
      v38 = 1;
    }

    a4[v72] = v37;
    a4[v71] = v38;
    v41 = v78;
    v42 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v43 = (*(v42 + 8))(v41, v42);
    if (v43)
    {
      v44 = v43;
      v45 = v43;
      v46 = sub_2693B3610();
      v47 = sub_2693B39B0();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v74 = v64;
        *v48 = 136315138;
        v49 = v45;
        v50 = [v49 description];
        v51 = sub_2693B3750();
        v65 = v45;
        v53 = v52;

        v54 = sub_26934CA40(v51, v53, &v74);
        v45 = v65;

        *(v48 + 4) = v54;
        _os_log_impl(&dword_26933F000, v46, v47, "TimerIntentHandler.init found user device target: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x26D63A640](v64, -1, -1);
        MEMORY[0x26D63A640](v48, -1, -1);
      }

      a3 = v67;
      swift_beginAccess();
      v55 = *(v17 + 24);
      v56 = *(v17 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v17, v55);
      v57 = *(v56 + 40);
      v58 = v45;
      v57(v44, v55, v56);
      swift_endAccess();

      a4[v72] = 1;
      a4[v71] = 0;
    }

    else
    {
      v59 = sub_2693B3610();
      v60 = sub_2693B39B0();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_26933F000, v59, v60, "TimerIntentHandler.init found no user device target", v61, 2u);
        MEMORY[0x26D63A640](v61, -1, -1);
      }

      a4[v15] = 0;
      a4[v16] = 1;
    }

    a8 = v66;
    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v73.receiver = a4;
  v73.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v62 = objc_msgSendSuper2(&v73, sel_init);
  (*(v68 + 8))(a3, v69);
  __swift_destroy_boxed_opaque_existential_1(v80);
  return v62;
}

id sub_2693617A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v32 = a7;
  v33 = a8;
  v31 = a6;
  v13 = sub_2693B3480();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v37[3] = type metadata accessor for TimerManager();
  v37[4] = &off_2879EDD98;
  v37[0] = a1;
  sub_26934489C(v37, v36);
  v21 = v14[2];
  v21(v20, a3, v13);
  sub_26934489C(v36, v34);
  v21(v18, v20, v13);
  v22 = v35;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = sub_269361120(*v26, a2, v18, a4, a5, v31, v32, v33);
  v29 = v14[1];
  v29(a3, v13);
  v29(v20, v13);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v28;
}

id sub_269361A08(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = sub_2693B3480();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = type metadata accessor for TimerManager();
  v26[4] = &off_2879EDD98;
  v26[0] = a1;
  v13 = &a4[qword_280E26A70];
  sub_2693B35E0();
  v14 = sub_2693B3440();
  v15 = MEMORY[0x277D61820];
  v13[3] = v14;
  v13[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_2693B3430();
  sub_26934489C(v26, v24);
  (*(v9 + 16))(v12, a3, v8);
  v16 = v25;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_269361120(*v20, a2, v12, a4, type metadata accessor for CreateTimerIntent, &protocol witness table for CreateTimerIntent, &qword_28030D1C8, &unk_2693B6020);
  (*(v9 + 8))(a3, v8);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v22;
}

id sub_269361C58(id a1)
{
  v2 = sub_2693B3480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v204 = v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v201 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v201 - v10;
  v12 = sub_2693B3420();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2693B3410();
  v17 = sub_2693B3400();
  (*(v13 + 8))(v16, v12);
  v205 = a1;
  if (v17)
  {
    v209[0] = a1;
    sub_269363514();
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v213 = 0;
      v211 = 0u;
      v212 = 0u;
    }

    v214 = v211;
    v215 = v212;
    v216 = v213;
  }

  else
  {
    if (qword_280E262A8 != -1)
    {
      swift_once();
    }

    v19 = sub_2693B3620();
    __swift_project_value_buffer(v19, qword_280E262B0);
    v20 = a1;
    v21 = sub_2693B3610();
    v22 = sub_2693B39B0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      *&v214 = v203;
      *v23 = 136315138;
      v24 = [v20 typeName];
      v25 = sub_2693B3750();
      v26 = v9;
      v27 = v11;
      v28 = v2;
      v29 = v3;
      v31 = v30;

      v32 = sub_26934CA40(v25, v31, &v214);
      v3 = v29;
      v2 = v28;
      v11 = v27;
      v9 = v26;
      a1 = v205;

      *(v23 + 4) = v32;
      _os_log_impl(&dword_26933F000, v21, v22, "Intent is not a targetable intent: %s", v23, 0xCu);
      v33 = v203;
      __swift_destroy_boxed_opaque_existential_1(v203);
      MEMORY[0x26D63A640](v33, -1, -1);
      MEMORY[0x26D63A640](v23, -1, -1);
    }

    v216 = 0;
    v214 = 0u;
    v215 = 0u;
  }

  sub_2693634A4(&v214, &v211);
  v34 = *(&v212 + 1);
  if (*(&v212 + 1))
  {
    v35 = v213;
    __swift_project_boxed_opaque_existential_1(&v211, *(&v212 + 1));
    v36 = (v35[2])(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(&v211);
  }

  else
  {
    sub_269356A08(&v211);
    v36 = 0;
  }

  sub_2693634A4(&v214, &v211);
  v37 = *(&v212 + 1);
  if (*(&v212 + 1))
  {
    v38 = v213;
    __swift_project_boxed_opaque_existential_1(&v211, *(&v212 + 1));
    v39 = (v38[1])(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(&v211);
  }

  else
  {
    sub_269356A08(&v211);
    v39 = 0;
  }

  v40 = [a1 _metadata];
  if (v40 && (v41 = v40, v42 = [v40 endpointId], v41, v42))
  {
    v43 = sub_2693B3750();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = type metadata accessor for TimerManager();
  swift_allocObject();
  v47 = sub_2693668A4(v36, v39, v43, v45);
  *(&v212 + 1) = v46;
  v213 = &off_2879EDD98;
  *&v211 = v47;
  sub_2693B3470();
  type metadata accessor for DeleteTimerIntent();
  v48 = v205;
  v49 = swift_dynamicCastClass();
  if (v49)
  {
    v50 = v49;
    sub_26934489C(&v211, v209);
    (*(v3 + 16))(v9, v11, v2);
    v51 = v210;
    v52 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
    v204 = v201;
    v53 = *(*(v51 - 8) + 64);
    MEMORY[0x28223BE20](v52);
    v55 = v3;
    v56 = (v201 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = *v56;
    v207 = v46;
    v208 = &off_2879EDD98;
    v206[0] = v58;
    v59 = objc_allocWithZone(type metadata accessor for DeleteTimerIntentHandler());
    v60 = v207;
    v61 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
    v62 = *(*(v60 - 8) + 64);
    MEMORY[0x28223BE20](v61);
    v64 = v11;
    v65 = (v201 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65);
    v67 = *v65;
    v68 = v48;
    v69 = v9;
    v70 = v68;
    v71 = &protocol witness table for DeleteTimerIntent;
    v72 = &unk_28030D198;
    v73 = &unk_2693B5FF0;
    v74 = type metadata accessor for DeleteTimerIntent;
LABEL_28:
    v120 = sub_2693617A4(v67, v50, v69, v59, v74, v71, v72, v73);
LABEL_29:
    v121 = v120;

    (*(v55 + 8))(v64, v2);
    sub_269356A08(&v214);
    __swift_destroy_boxed_opaque_existential_1(v206);
    __swift_destroy_boxed_opaque_existential_1(v209);
    v122 = &v218;
LABEL_30:
    v123 = *(v122 - 32);
    goto LABEL_31;
  }

  type metadata accessor for PauseTimerIntent();
  v75 = swift_dynamicCastClass();
  if (v75)
  {
    v50 = v75;
    sub_26934489C(&v211, v209);
    (*(v3 + 16))(v9, v11, v2);
    v76 = v210;
    v77 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
    v204 = v201;
    v78 = *(*(v76 - 8) + 64);
    MEMORY[0x28223BE20](v77);
    v55 = v3;
    v80 = (v201 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v81 + 16))(v80);
    v82 = *v80;
    v207 = v46;
    v208 = &off_2879EDD98;
    v206[0] = v82;
    v59 = objc_allocWithZone(type metadata accessor for PauseTimerIntentHandler());
    v83 = v207;
    v84 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
    v85 = *(*(v83 - 8) + 64);
    MEMORY[0x28223BE20](v84);
    v64 = v11;
    v87 = (v201 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v88 + 16))(v87);
    v67 = *v87;
    v89 = v48;
    v69 = v9;
    v70 = v89;
    v71 = &protocol witness table for PauseTimerIntent;
    v72 = &unk_28030D1A0;
    v73 = &unk_2693B5FF8;
    v74 = type metadata accessor for PauseTimerIntent;
    goto LABEL_28;
  }

  type metadata accessor for ResetTimerIntent();
  v90 = swift_dynamicCastClass();
  if (v90)
  {
    v50 = v90;
    sub_26934489C(&v211, v209);
    (*(v3 + 16))(v9, v11, v2);
    v91 = v210;
    v92 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
    v204 = v201;
    v93 = *(*(v91 - 8) + 64);
    MEMORY[0x28223BE20](v92);
    v55 = v3;
    v95 = (v201 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v96 + 16))(v95);
    v97 = *v95;
    v207 = v46;
    v208 = &off_2879EDD98;
    v206[0] = v97;
    v59 = objc_allocWithZone(type metadata accessor for ResetTimerIntentHandler());
    v98 = v207;
    v99 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
    v100 = *(*(v98 - 8) + 64);
    MEMORY[0x28223BE20](v99);
    v64 = v11;
    v102 = (v201 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v103 + 16))(v102);
    v67 = *v102;
    v104 = v48;
    v69 = v9;
    v70 = v104;
    v71 = &protocol witness table for ResetTimerIntent;
    v72 = &unk_28030D1A8;
    v73 = &unk_2693B6000;
    v74 = type metadata accessor for ResetTimerIntent;
    goto LABEL_28;
  }

  type metadata accessor for ResumeTimerIntent();
  v105 = swift_dynamicCastClass();
  if (v105)
  {
    v50 = v105;
    sub_26934489C(&v211, v209);
    (*(v3 + 16))(v9, v11, v2);
    v106 = v210;
    v107 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
    v204 = v201;
    v108 = *(*(v106 - 8) + 64);
    MEMORY[0x28223BE20](v107);
    v55 = v3;
    v110 = (v201 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v111 + 16))(v110);
    v112 = *v110;
    v207 = v46;
    v208 = &off_2879EDD98;
    v206[0] = v112;
    v59 = objc_allocWithZone(type metadata accessor for ResumeTimerIntentHandler());
    v113 = v207;
    v114 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
    v115 = *(*(v113 - 8) + 64);
    MEMORY[0x28223BE20](v114);
    v64 = v11;
    v117 = (v201 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v118 + 16))(v117);
    v67 = *v117;
    v119 = v48;
    v69 = v9;
    v70 = v119;
    v71 = &protocol witness table for ResumeTimerIntent;
    v72 = &unk_28030D1B0;
    v73 = &unk_2693B6008;
    v74 = type metadata accessor for ResumeTimerIntent;
    goto LABEL_28;
  }

  type metadata accessor for SearchTimerIntent();
  v125 = swift_dynamicCastClass();
  if (v125)
  {
    v126 = v125;
    sub_26934489C(&v211, v209);
    v202 = *(v3 + 16);
    v202(v9, v11, v2);
    v127 = v210;
    v128 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
    v203 = v201;
    v129 = *(*(v127 - 8) + 64);
    MEMORY[0x28223BE20](v128);
    v131 = v3;
    v132 = (v201 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v133 + 16))(v132);
    v134 = *v132;
    v207 = v46;
    v208 = &off_2879EDD98;
    v206[0] = v134;
    v135 = objc_allocWithZone(type metadata accessor for SearchTimersIntentHandler());
    v136 = v207;
    v137 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
    v201[1] = v201;
    v138 = *(*(v136 - 8) + 64);
    MEMORY[0x28223BE20](v137);
    v140 = (v201 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v141 + 16))(v140);
    v142 = *v140;
    v143 = v204;
    v202(v204, v9, v2);
    v144 = v205;
    v121 = sub_269361120(v142, v126, v143, v135, type metadata accessor for SearchTimerIntent, &protocol witness table for SearchTimerIntent, &qword_28030D1B8, &qword_2693B6010);

    v145 = *(v131 + 8);
    v145(v9, v2);
    v145(v11, v2);
    sub_269356A08(&v214);
    __swift_destroy_boxed_opaque_existential_1(v206);
    __swift_destroy_boxed_opaque_existential_1(v209);
    v122 = &v217;
    goto LABEL_30;
  }

  type metadata accessor for SetTimerAttributeIntent();
  v146 = swift_dynamicCastClass();
  if (v146)
  {
    v50 = v146;
    sub_26934489C(&v211, v209);
    (*(v3 + 16))(v9, v11, v2);
    v147 = v210;
    v148 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
    v204 = v201;
    v149 = *(*(v147 - 8) + 64);
    MEMORY[0x28223BE20](v148);
    v55 = v3;
    v151 = (v201 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v152 + 16))(v151);
    v153 = *v151;
    v207 = v46;
    v208 = &off_2879EDD98;
    v206[0] = v153;
    v59 = objc_allocWithZone(type metadata accessor for SetTimerAttributeIntentHandler());
    v154 = v207;
    v155 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
    v156 = *(*(v154 - 8) + 64);
    MEMORY[0x28223BE20](v155);
    v64 = v11;
    v158 = (v201 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v159 + 16))(v158);
    v67 = *v158;
    v160 = v48;
    v69 = v9;
    v70 = v160;
    v71 = &protocol witness table for SetTimerAttributeIntent;
    v72 = &unk_28030D1C0;
    v73 = &unk_2693B6018;
    v74 = type metadata accessor for SetTimerAttributeIntent;
    goto LABEL_28;
  }

  type metadata accessor for CreateTimerIntent();
  v161 = swift_dynamicCastClass();
  if (v161)
  {
    v162 = v161;
    sub_26934489C(&v211, v209);
    (*(v3 + 16))(v9, v11, v2);
    v163 = v210;
    v164 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
    v204 = v201;
    v165 = *(*(v163 - 8) + 64);
    MEMORY[0x28223BE20](v164);
    v55 = v3;
    v167 = (v201 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v168 + 16))(v167);
    v169 = *v167;
    v207 = v46;
    v208 = &off_2879EDD98;
    v206[0] = v169;
    v170 = objc_allocWithZone(type metadata accessor for CreateTimerIntentHandler());
    v171 = v207;
    v172 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
    v173 = *(*(v171 - 8) + 64);
    MEMORY[0x28223BE20](v172);
    v64 = v11;
    v175 = (v201 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v176 + 16))(v175);
    v177 = *v175;
    v178 = v48;
    v179 = v9;
    v70 = v178;
    v120 = sub_269361A08(v177, v162, v179, v170);
    goto LABEL_29;
  }

  v180 = v9;
  if (qword_280E262A8 != -1)
  {
    swift_once();
  }

  v181 = sub_2693B3620();
  __swift_project_value_buffer(v181, qword_280E262B0);
  v182 = sub_2693B3610();
  v183 = sub_2693B39A0();
  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    *v184 = 0;
    _os_log_impl(&dword_26933F000, v182, v183, "Intent is not expected. Using CreateTimer intent handler anyways.", v184, 2u);
    MEMORY[0x26D63A640](v184, -1, -1);
  }

  sub_26934489C(&v211, v209);
  (*(v3 + 16))(v180, v11, v2);
  v185 = v210;
  v186 = __swift_mutable_project_boxed_opaque_existential_1(v209, v210);
  v187 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v186);
  v189 = (v201 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v190 + 16))(v189);
  v191 = *v189;
  v207 = v46;
  v208 = &off_2879EDD98;
  v206[0] = v191;
  v192 = objc_allocWithZone(type metadata accessor for CreateTimerIntentHandler());
  v193 = v207;
  v194 = __swift_mutable_project_boxed_opaque_existential_1(v206, v207);
  v195 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v197 = v2;
  v198 = v3;
  v199 = (v201 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v200 + 16))(v199);
  v121 = sub_269361A08(*v199, 0, v180, v192);
  (*(v198 + 8))(v11, v197);
  sub_269356A08(&v214);
  __swift_destroy_boxed_opaque_existential_1(v206);
  __swift_destroy_boxed_opaque_existential_1(v209);
LABEL_31:
  __swift_destroy_boxed_opaque_existential_1(&v211);
  return v121;
}

id sub_269363234()
{
  type metadata accessor for CreateTimerIntent();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for DeleteTimerIntent();
    if (swift_dynamicCastClass())
    {
      v11[3] = type metadata accessor for SiriTimerManagerImpl();
      v11[4] = &protocol witness table for SiriTimerManagerImpl;
      v11[0] = swift_allocObject();
      v3 = type metadata accessor for DeleteTimerIntentHandlerSingle();
      v4 = objc_allocWithZone(v3);
      sub_26934489C(v11, v4 + OBJC_IVAR____TtC21SiriTimeTimerInternal30DeleteTimerIntentHandlerSingle_siriTimerManager);
      v10.receiver = v4;
      v10.super_class = v3;
      v5 = objc_msgSendSuper2(&v10, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v11);
      return v5;
    }

    type metadata accessor for PauseTimerIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for PauseTimerIntentHandlerSingle();
      goto LABEL_3;
    }

    type metadata accessor for ResetTimerIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for ResetTimerIntentHandlerSingle();
      goto LABEL_3;
    }

    type metadata accessor for ResumeTimerIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for ResumeTimerIntentHandlerSingle();
      goto LABEL_3;
    }

    type metadata accessor for SearchTimerIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for SearchForTimersIntentHandlerSingle();
      goto LABEL_3;
    }

    type metadata accessor for SetTimerAttributeIntent();
    if (swift_dynamicCastClass())
    {
      TimerIntentHandlerSingle = type metadata accessor for SetTimerAttributeIntentHandlerSingle();
      goto LABEL_3;
    }

    if (qword_280E262A8 != -1)
    {
      swift_once();
    }

    v6 = sub_2693B3620();
    __swift_project_value_buffer(v6, qword_280E262B0);
    v7 = sub_2693B3610();
    v8 = sub_2693B39A0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26933F000, v7, v8, "Intent is not expected. Using CreateTimer intent handler anyways.", v9, 2u);
      MEMORY[0x26D63A640](v9, -1, -1);
    }
  }

  TimerIntentHandlerSingle = type metadata accessor for CreateTimerIntentHandlerSingle();
LABEL_3:
  v1 = objc_allocWithZone(TimerIntentHandlerSingle);

  return [v1 init];
}

uint64_t sub_2693634A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF78, &qword_2693B5880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269363514()
{
  result = qword_28030D190;
  if (!qword_28030D190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030D190);
  }

  return result;
}

uint64_t sub_269363560()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D1D0);
  v1 = __swift_project_value_buffer(v0, qword_28030D1D0);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269363628(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B60D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B60E0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B60E8, v15);
}

uint64_t sub_2693637B0(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_26936381C, 0, 0);
}

uint64_t sub_26936381C()
{
  v1 = *(v0 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
  v3 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 4;
  [v2 setUserActivity_];
  (v1)[2](v1, v2);
  _Block_release(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2693638F8(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_269363918, 0, 0);
}

uint64_t sub_269363918()
{
  v1 = v0[10];
  v2 = [v1 targetTimer];
  v3 = [v1 targetTimer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 == 0;
  v7 = v0[10];
  v8 = sub_26936558C(v2, v5, v6);
  v0[12] = v8;

  v9 = sub_26939ECE0(&unk_2879EC928);
  v0[13] = v9;
  v0[5] = type metadata accessor for ResetTimerIntent();
  v0[6] = &protocol witness table for ResetTimerIntent;
  v0[2] = v7;
  v10 = [v7 targetTimer];
  if (v10 && (v11 = v10, v12 = [v10 shouldMatchAny], v11, v12))
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_269363AE4;
  v15 = v0[11];

  return sub_2693917AC(v8, (v0 + 2), v13, v9);
}

uint64_t sub_269363AE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v8 = sub_269363C38;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_269356A08(v4 + 16);
    v8 = sub_269354CA4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269363C38()
{
  v23 = v0;
  v1 = *(v0 + 120);
  sub_269356A08(v0 + 16);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 96);

    v4 = *(v0 + 64);
    v5 = sub_2693A08FC(v4, v3);

    sub_26934ADAC(v4);
  }

  else
  {

    if (qword_28030CE08 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 120);
    v7 = sub_2693B3620();
    __swift_project_value_buffer(v7, qword_28030D1D0);
    v8 = v6;
    v9 = sub_2693B3610();
    v10 = sub_2693B39A0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 120);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      *(v0 + 72) = v11;
      v14 = v11;
      v15 = sub_2693B3760();
      v17 = sub_26934CA40(v15, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26933F000, v9, v10, "Unknown error resolving targetTimer for ResetTimerIntent: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D63A640](v13, -1, -1);
      MEMORY[0x26D63A640](v12, -1, -1);
    }

    v18 = *(v0 + 120);
    v19 = *(v0 + 96);
    type metadata accessor for SiriTimerResolutionResult();
    v5 = [swift_getObjCClassFromMetadata() unsupported];
  }

  v20 = *(v0 + 8);

  return v20(v5);
}

uint64_t sub_269363EAC(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B60B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5AE0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5DD0, v15);
}

uint64_t sub_269364034(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_2693638F8(v6);
}

uint64_t sub_2693640F8(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6098;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5DA0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5AC0, v15);
}

uint64_t sub_269364280(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26936430C, 0, 0);
}

uint64_t sub_26936430C()
{
  v1 = [*(v0 + 16) targetTimer];
  v2 = [v1 shouldMatchAny];

  [v2 BOOLValue];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2693478B0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_269365920(v5, v4);
}

uint64_t sub_269364408(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6078;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5D70;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5A90, v15);
}

uint64_t sub_269364590(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_26936461C, 0, 0);
}

uint64_t sub_26936461C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_26936529C(v3);
}

uint64_t sub_2693646D0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2693646F0, 0, 0);
}

uint64_t sub_2693646F0()
{
  v1 = *(v0 + 64);
  v2 = [v1 targetTimer];
  v3 = [v1 targetTimer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 64);
  v7 = sub_26936558C(v2, v5, v4 == 0);
  *(v0 + 80) = v7;

  v8 = [v6 targetTimer];
  if (v8 && (v9 = v8, v10 = [v8 shouldMatchAny], v9, v10))
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 64);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_2693648A0;
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = MEMORY[0x277D84FA0];

  return sub_26937FF18(v7, v11, 1, v16, v14, v15);
}

uint64_t sub_2693648A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v8 = sub_269364A70;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_2693649E8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2693649E8()
{
  v1 = v0[10];
  v2 = sub_269364D18(v0[13], v1);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_269364A70()
{
  v24 = v0;
  v1 = *(v0 + 96);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 80);

    v23 = *(v0 + 48);
    v4 = v23;
    v5 = sub_2693662A4(&v23);

    sub_26934ADAC(v4);
  }

  else
  {

    if (qword_28030CE08 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 96);
    v7 = sub_2693B3620();
    __swift_project_value_buffer(v7, qword_28030D1D0);
    v8 = v6;
    v9 = sub_2693B3610();
    v10 = sub_2693B39A0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 96);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      *(v0 + 56) = v11;
      v14 = v11;
      v15 = sub_2693B3760();
      v17 = sub_26934CA40(v15, v16, &v23);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26933F000, v9, v10, "Unknown error handling ResetTimerIntent: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D63A640](v13, -1, -1);
      MEMORY[0x26D63A640](v12, -1, -1);
    }

    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    v5 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
    v20 = OBJC_IVAR___ResetTimerIntentResponse_code;
    swift_beginAccess();
    *&v5[v20] = 5;
    [v5 setUserActivity_];
  }

  v21 = *(v0 + 8);

  return v21(v5);
}

uint64_t sub_269364D18(unint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
  v5 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  *&v4[v5] = 4;
  [v4 setUserActivity_];
  if (a1 >> 62)
  {
    v6 = sub_2693B3C70();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_12:
    type metadata accessor for SiriTimer();
    v15 = sub_2693B3800();

    [v4 setResetTimers_];

    return v4;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_2693B3C20();
  if ((v6 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SiriTimer();
    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D639EB0](v8, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [a2 device];
      if (!v12)
      {
        v13 = (v16 + qword_28030D540);
        swift_beginAccess();
        v12 = *(*__swift_project_boxed_opaque_existential_1(v13, v13[3]) + 24);
        v14 = v12;
      }

      ++v8;
      sub_26935CB88(v11, v12);
      sub_2693B3C00();
      v9 = *(v17 + 16);
      sub_2693B3C30();
      sub_2693B3C40();
      sub_2693B3C10();
    }

    while (v6 != v8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_269364F48(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6058;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

uint64_t sub_2693650D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_2693646D0(v6);
}

uint64_t type metadata accessor for ResetTimerIntentHandler()
{
  result = qword_28030D1E8;
  if (!qword_28030D1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693651E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693650D0(v2, v3, v4);
}

uint64_t sub_26936529C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936535C, 0, 0);
}

uint64_t sub_26936535C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    __swift_project_value_buffer(v5, qword_280E262F0);
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAllTargetableDevices() Resolving all targetable devices", v8, 2u);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_269349074;
    v10 = v0[2];

    return sub_269394998();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    v13 = v0[5];

    v14 = v0[1];

    return v14(v12);
  }
}

id sub_26936558C(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a3)
    {
      v3 = 0;
    }

    else
    {
      v3 = a2;
    }

    v4 = a1;
    v5 = [v4 label];
    if (v5)
    {
      v6 = sub_2693B3750();
      v8 = v7;
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v12 = [v4 duration];
    if (v12 && (v30 = 0.0, v31 = 1, v13 = v12, MEMORY[0x26D639C20](v12, &v30), v13, (v31 & 1) == 0))
    {
      v15 = v30;
    }

    else
    {
      [objc_opt_self() defaultDuration];
      v15 = v14;
    }

    v16 = [v4 type];
    if (v8)
    {
      v17 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v17 = v9;
      }

      if (v17)
      {
        [objc_opt_self() defaultDuration];
        if (v15 == v18)
        {
          v16 = (2 * ([v4 type] == 2));
        }
      }
    }

    type metadata accessor for SiriTimer();
    v19 = [v4 identifier];
    if (v19)
    {
      v20 = v19;
      sub_2693B3750();

      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = sub_2693B3740();
    }

    else
    {
      v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v22 = 0;
    }

    v23 = sub_2693B3740();

    v11 = [v21 initWithIdentifier:v22 displayString:v23];

    if (v8)
    {

      [v11 setLabel_];
    }

    v24 = sub_2693B3930();
    [v11 setDuration_];

    v25 = [v4 remainingTime];
    [v11 setRemainingTime_];

    [v11 setState_];
    [v11 setType_];
    v26 = [v4 shouldMatchAny];
    [v11 setShouldMatchAny_];

    v27 = [v4 shouldMatchRemote];
    [v11 setShouldMatchRemote_];

    v28 = [v4 device];
    [v11 setDevice_];
  }

  else
  {
    type metadata accessor for SiriTimer();
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = sub_2693B3740();
    v11 = [v10 initWithIdentifier:0 displayString:v4];
  }

  return v11;
}

uint64_t sub_269365920(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for ResetTimerIntent();
  v2[6] = &protocol witness table for ResetTimerIntent;
  v2[2] = a1;
  v7 = a1;

  return MEMORY[0x2822009F8](sub_269365A04, 0, 0);
}

uint64_t sub_269365A04()
{
  v21 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    v0[25] = __swift_project_value_buffer(v5, qword_280E262F0);
    sub_26934489C((v0 + 2), (v0 + 7));
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      sub_26934489C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v10 = sub_2693B3760();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_26934CA40(v10, v12, &v20);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAssociatedDeviceTarget(for:) %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D63A640](v9, -1, -1);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = sub_269365CE0;
    v19 = v0[21];

    return sub_269394998();
  }

  else
  {
    *(v0[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v14 = [swift_getObjCClassFromMetadata() notRequired];
    v15 = v0[24];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v16 = v0[1];

    return v16(v14);
  }
}

uint64_t sub_269365CE0(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_269365DE0, 0, 0);
}

uint64_t sub_269365DE0()
{
  v54 = v0;
  v1 = *(v0 + 216);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    v47 = *(v0 + 216);
    goto LABEL_23;
  }

  if (v1 < 0)
  {
    v46 = *(v0 + 216);
  }

  if (!sub_2693B3C70())
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = [*(v0 + 160) targetingInfo];
  v3 = *(v0 + 216);
  if (!v2)
  {
LABEL_23:

LABEL_24:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v41 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  v4 = *(v0 + 200);

  v5 = v2;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53 = v9;
    *v8 = 134218242;
    if (v1 >> 62)
    {
      v12 = *(v0 + 216);
      if (v1 < 0)
      {
        v13 = *(v0 + 216);
      }

      v10 = sub_2693B3C70();
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = *(v0 + 216);
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    v15 = v5;
    v16 = [v15 description];
    v17 = v5;
    v18 = sub_2693B3750();
    v20 = v19;

    v21 = v18;
    v5 = v17;
    v22 = sub_26934CA40(v21, v20, &v53);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_26933F000, v6, v7, "Filtering %ld targets using targeting info: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
    v11 = *(v0 + 216);
  }

  v23 = sub_26939E908(v5, *(v0 + 160), *(v0 + 216));

  v24 = *(v0 + 200);
  if (!v23)
  {
    v42 = sub_2693B3610();
    v43 = sub_2693B39B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26933F000, v42, v43, "No valid device target found for target criteria", v44, 2u);
      MEMORY[0x26D63A640](v44, -1, -1);
    }

    v45 = *(v0 + 168);

    *(v45 + qword_280E266B8) = 1;
    goto LABEL_24;
  }

  v25 = v23;
  v26 = sub_2693B3610();
  v27 = sub_2693B39B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v28 = 136315138;
    v52 = v5;
    v29 = v25;
    v30 = v25;
    v31 = [v29 description];
    v32 = sub_2693B3750();
    v34 = v33;

    v25 = v30;
    v5 = v52;
    v35 = sub_26934CA40(v32, v34, &v53);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_26933F000, v26, v27, "Found valid device target: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x26D63A640](v51, -1, -1);
    MEMORY[0x26D63A640](v28, -1, -1);
  }

  v36 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v37 = *(v36 + 24);
  v38 = *(v36 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v39 = *(v38 + 40);
  v40 = v25;
  v39(v23, v37, v38);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v41 = sub_2693B1D2C(v40);

LABEL_25:
  v48 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v49 = *(v0 + 8);

  return v49(v41);
}

char *sub_2693662A4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 5)
  {
LABEL_8:
    v10 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
    v11 = OBJC_IVAR___ResetTimerIntentResponse_code;
    swift_beginAccess();
    v12 = 5;
    goto LABEL_9;
  }

  if (v1 - 7 < 3)
  {
    if (qword_28030CE08 != -1)
    {
      swift_once();
    }

    v2 = sub_2693B3620();
    __swift_project_value_buffer(v2, qword_28030D1D0);
    sub_26934AD9C(v1);
    v3 = sub_2693B3610();
    v4 = sub_2693B39A0();
    sub_26934ADAC(v1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v1;
      v15 = v6;
      *v5 = 136315138;
      sub_26934AD9C(v1);
      v7 = sub_2693B3760();
      v9 = sub_26934CA40(v7, v8, &v15);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_26933F000, v3, v4, "Failed in SetTimerAttributeIntent handling with an invalid, unhandled error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x26D63A640](v6, -1, -1);
      MEMORY[0x26D63A640](v5, -1, -1);
    }

    goto LABEL_8;
  }

  v10 = [objc_allocWithZone(type metadata accessor for ResetTimerIntentResponse()) init];
  v11 = OBJC_IVAR___ResetTimerIntentResponse_code;
  swift_beginAccess();
  if (v1 == 6)
  {
    v12 = 101;
  }

  else
  {
    v12 = 100;
  }

LABEL_9:
  *&v10[v11] = v12;
  [v10 setUserActivity_];
  return v10;
}

uint64_t sub_269366508()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269364590(v2, v3, v4);
}

uint64_t sub_2693665BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269364280(v2, v3, v4);
}

uint64_t sub_269366670()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_269364034(v2, v3, v4);
}

uint64_t sub_269366724()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693637B0(v2, v3);
}

uint64_t sub_2693667DC()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E26270);
  v1 = __swift_project_value_buffer(v0, qword_280E26270);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_2693668A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[7] = 0x409F400000000000;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  if (a4)
  {
    v5 = a2;

    v6 = sub_2693B3740();
  }

  else
  {
    v5 = a2;
    v6 = 0;
  }

  v7 = [objc_opt_self() timerManagerWithEndpointUUIDString_];

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = 0;
  }

  v4[6] = v8;
  return v4;
}

uint64_t sub_269366980(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2693669A0, 0, 0);
}

uint64_t sub_2693669A0()
{
  v19 = v0;
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_26939ECE0(&unk_2879EC530);
  }

  *(v0 + 48) = v1;
  v2 = qword_280E26268;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 40);
  v4 = sub_2693B3620();
  __swift_project_value_buffer(v4, qword_280E26270);

  v5 = sub_2693B3610();
  v6 = sub_2693B39B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = *(v7 + 16);
    if (v10)
    {
      if (v10 >> 62)
      {
        v11 = sub_2693B3C70();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v11 = 0;
    }

    *(v0 + 16) = v11;
    *(v0 + 24) = v10 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D210, &unk_2693B61A0);
    v12 = sub_2693B3760();
    v14 = sub_26934CA40(v12, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_26933F000, v5, v6, "allHostTimers: Searching for timers on %s devices", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  *(v0 + 56) = *(*(v0 + 40) + 16);

  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_269366C18;
  v16 = *(v0 + 40);

  return sub_26936FA6C();
}

uint64_t sub_269366C18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v9 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = sub_269366E1C;
  }

  else
  {
    v6 = v3[6];
    v7 = v3[7];

    v5 = sub_269366D3C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269366D3C()
{
  if (sub_2693995BC(*(v0 + 72)))
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 72);

    return v1(v2);
  }

  else
  {
    v4 = *(v0 + 72);

    sub_26934B0F0();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_269366E1C()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

id sub_269366E88(uint64_t a1, void *a2, void *a3)
{
  v68 = a3;
  v71 = a2;
  v74 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D218, &qword_2693B61B0);
  v69 = *(v67 - 8);
  v73 = *(v69 + 64);
  (MEMORY[0x28223BE20])();
  v70 = &v54 - v3;
  v4 = sub_2693B3620();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2693B33A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  (MEMORY[0x28223BE20])();
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2693B33D0();
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  v16 = (MEMORY[0x28223BE20])();
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  (*(v10 + 104))(v13, *MEMORY[0x277D617D8], v9);
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, qword_280E26270);
  (*(v5 + 16))(v8, v19, v4);
  mach_absolute_time();
  sub_2693B33E0();
  result = [v71 timers];
  v71 = result;
  if (result)
  {
    v21 = v72;
    v22 = *(v72 + 16);
    v65 = v72 + 16;
    v66 = v22;
    v55 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v14;
    v22(v55, v18, v14);
    v25 = v69;
    v24 = v70;
    v26 = *(v69 + 16);
    v62 = v18;
    v63 = v69 + 16;
    v64 = v26;
    v27 = v67;
    v26(v70, v74, v67);
    v28 = *(v21 + 80);
    v29 = v21;
    v30 = (v28 + 16) & ~v28;
    v61 = v30 + v15;
    v59 = v30;
    v31 = (v30 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = *(v25 + 80);
    v33 = (v32 + v31 + 8) & ~v32;
    v60 = v28 | v32;
    v34 = swift_allocObject();
    v56 = v23;
    v58 = *(v29 + 32);
    v35 = v34 + v30;
    v36 = v55;
    v58(v35, v55, v23);
    *(v34 + v31) = v68;
    v69 = *(v25 + 32);
    v37 = v24;
    v38 = v24;
    v39 = v27;
    (v69)(v34 + v33, v37, v27);
    v79 = sub_2693702A0;
    v80 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v57 = &v77;
    v77 = sub_269378A84;
    v78 = &block_descriptor_41_0;
    v40 = _Block_copy(&aBlock);

    v41 = v71;
    v68 = [v71 addSuccessBlock_];
    _Block_release(v40);

    v42 = v36;
    v43 = v62;
    v44 = v56;
    v66(v36, v62, v56);
    v45 = v38;
    v46 = v38;
    v47 = v39;
    v64(v46, v74, v39);
    v48 = (v61 + v32) & ~v32;
    v49 = swift_allocObject();
    v50 = v44;
    v58(v49 + v59, v42, v44);
    (v69)(v49 + v48, v45, v47);
    v79 = sub_269370390;
    v80 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_269373AD8;
    v78 = &block_descriptor_47;
    v51 = _Block_copy(&aBlock);

    v52 = v68;
    v53 = [v68 addFailureBlock_];
    _Block_release(v51);

    return (*(v72 + 8))(v43, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269367518()
{
  sub_2693B33C0();
  sub_2693608D8(0, &qword_280E261C0, 0x277D29730);
  sub_2693B3810();
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B3620();
  __swift_project_value_buffer(v0, qword_280E26270);
  v1 = sub_2693B3610();
  v2 = sub_2693B39A0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26933F000, v1, v2, "Error casting input timers to MT objects", v3, 2u);
    MEMORY[0x26D63A640](v3, -1, -1);
  }

  sub_2693A83E8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D218, &qword_2693B61B0);
  return sub_2693B3900();
}

uint64_t sub_269367778(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269367820, 0, 0);
}

uint64_t sub_269367820()
{
  v46 = v0;
  v1 = *(*(v0 + 72) + 48);
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 64);
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    *(v0 + 104) = v3;
    v4 = v1;
    if (v3)
    {
      v5 = v4;
      v6 = *(v0 + 64);
      v7 = [v3 sound];
      if (v7)
      {
        v15 = v7;
        v16 = [v7 isSilent];

        if (v16)
        {

          goto LABEL_6;
        }

        v33 = swift_task_alloc();
        *(v0 + 112) = v33;
        *(v33 + 16) = v5;
        v34 = *(MEMORY[0x277D859E0] + 4);
        v35 = swift_task_alloc();
        *(v0 + 120) = v35;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D250, &qword_2693B6200);
        *v35 = v0;
        v35[1] = sub_269367E10;
        v12 = sub_269370EB4;
        v10 = 0x72656D6954646461;
        v11 = 0xEC000000293A5F28;
        v7 = (v0 + 56);
        v8 = 0;
        v9 = 0;
        v13 = v33;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x2822007B8](v7, v8, v9, v10, v11, v12, v13, v14);
    }

LABEL_6:
    v17 = *(v0 + 96);
    v18 = *(v0 + 64);
    v19 = swift_task_alloc();
    *(v0 + 128) = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = *(MEMORY[0x277D85A40] + 4);
    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_269368084;
    v22 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v21, 0, 0, 0x72656D6954646461, 0xEC000000293A5F28, sub_269370EAC, v19, v22);
  }

  v23 = sub_2693B35D0();
  v24 = MEMORY[0x277D61908];
  *(v0 + 40) = v23;
  *(v0 + 48) = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v26 = *MEMORY[0x277D61880];
  v27 = sub_2693B3560();
  (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
  (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v23);
  sub_2693B34C0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 80);
  v28 = *(v0 + 88);
  v30 = sub_2693B3620();
  v31 = __swift_project_value_buffer(v30, qword_280E26270);
  v32 = *(v30 - 8);
  (*(v32 + 16))(v28, v31, v30);
  (*(v32 + 56))(v28, 0, 1, v30);
  sub_26936F690(v28, v29);
  if ((*(v32 + 48))(v29, 1, v30) == 1)
  {
    sub_26934B4F0(*(v0 + 80), &qword_28030D200, &qword_2693B6178);
  }

  else
  {
    v36 = *(v0 + 80);
    v37 = sub_2693B3610();
    v38 = sub_2693B39A0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v39 = 136315650;
      v41 = sub_2693B3BB0();
      v43 = sub_26934CA40(v41, v42, &v45);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      *(v39 + 14) = 285;
      *(v39 + 22) = 2080;
      *(v39 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, &v45);
      _os_log_impl(&dword_26933F000, v37, v38, "FatalError at %s:%lu - %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v40, -1, -1);
      MEMORY[0x26D63A640](v39, -1, -1);
    }

    (*(v32 + 8))(*(v0 + 80), v30);
  }

  sub_2693B3330();
  return sub_2693B3C50();
}

uint64_t sub_269367E10()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269367F28, 0, 0);
}

uint64_t sub_269367F28()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    if ([*(v0 + 56) isSilent])
    {
    }

    else
    {
      v2 = *(v0 + 104);
      v3 = *(v0 + 64);
      v1 = v1;
      [v2 setSound_];
    }
  }

  else
  {
    v1 = *(v0 + 64);
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_269368084;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0x72656D6954646461, 0xEC000000293A5F28, sub_269370EAC, v6, v9);
}

uint64_t sub_269368084()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_269368218;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_2693681A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2693681A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_269368218()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);
  v5 = *(v0 + 144);

  return v4();
}

void sub_2693682A4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = [a2 latestDuration];
  if (v9)
  {
    v10 = v9;
    v21 = *(v5 + 16);
    v21(v8, a1, v4);
    v20 = a1;
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    v19 = *(v5 + 32);
    v19(v12 + v11, v8, v4);
    v26 = sub_269370EBC;
    v27 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2693685E4;
    v25 = &block_descriptor_87;
    v13 = _Block_copy(&aBlock);

    v18 = [v10 addSuccessBlock_];
    _Block_release(v13);

    v21(v8, v20, v4);
    v14 = swift_allocObject();
    v19(v14 + v11, v8, v4);
    v26 = sub_269370FCC;
    v27 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_269373AD8;
    v25 = &block_descriptor_93;
    v15 = _Block_copy(&aBlock);

    v16 = v18;
    v17 = [v18 addFailureBlock_];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269368584(void *a1)
{
  [a1 sound];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  return sub_2693B3900();
}

void sub_2693685E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_26936864C(uint64_t a1, void *a2, char *a3)
{
  v57 = a3;
  v61 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  v60 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v45 - v6;
  v7 = sub_2693B3620();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2693B33A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2693B33D0();
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  (*(v13 + 104))(v16, *MEMORY[0x277D617D0], v12);
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v7, qword_280E26270);
  (*(v8 + 16))(v11, v22, v7);
  mach_absolute_time();
  sub_2693B33E0();
  result = [a2 addTimer_];
  v53 = result;
  if (result)
  {
    v24 = v58;
    v25 = *(v58 + 16);
    v51 = v58 + 16;
    v52 = v25;
    v26 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v26;
    v25(v26, v21, v59);
    v27 = v55;
    v50 = *(v55 + 16);
    v28 = v56;
    v29 = v54;
    v50();
    v30 = *(v24 + 80);
    v57 = v21;
    v31 = (v30 + 16) & ~v30;
    v32 = *(v27 + 80);
    v48 = v31;
    v33 = (v18 + v32 + v31) & ~v32;
    v49 = v30 | v32;
    v34 = swift_allocObject();
    v47 = *(v24 + 32);
    v35 = v34 + v31;
    v36 = v59;
    v47(v35, v26, v59);
    v55 = *(v27 + 32);
    v37 = v28;
    (v55)(v34 + v33, v28, v29);
    v66 = sub_269371064;
    v67 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_269378A84;
    v65 = &block_descriptor_99;
    v38 = _Block_copy(&aBlock);

    v39 = v53;
    v46 = [v53 addSuccessBlock_];
    _Block_release(v38);

    v40 = v45;
    v52(v45, v57, v36);
    (v50)(v37, v61, v29);
    v41 = swift_allocObject();
    v47(v41 + v48, v40, v36);
    (v55)(v41 + v33, v37, v29);
    v66 = sub_2693712C4;
    v67 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_269373AD8;
    v65 = &block_descriptor_105;
    v42 = _Block_copy(&aBlock);

    v43 = v46;
    v44 = [v46 addFailureBlock_];
    _Block_release(v42);

    return (*(v58 + 8))(v57, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269368C60()
{
  sub_2693B33C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  return sub_2693B3900();
}

uint64_t sub_269368CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_2693B33C0();
  v14[0] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2693B38F0();
  v9 = sub_2693B35D0();
  v14[3] = v9;
  v14[4] = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v11 = *MEMORY[0x277D61838];
  v12 = sub_2693B34B0();
  (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, v11, v12);
  (*(*(v9 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v9);
  sub_2693B34C0();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_269368DE0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_2693B3620();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = sub_2693B33A0();
  v2[21] = v7;
  v8 = *(v7 - 8);
  v2[22] = v8;
  v9 = *(v8 + 64) + 15;
  v2[23] = swift_task_alloc();
  v10 = sub_2693B33D0();
  v2[24] = v10;
  v11 = *(v10 - 8);
  v2[25] = v11;
  v12 = *(v11 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269368F9C, 0, 0);
}

uint64_t sub_269368F9C()
{
  v88 = v0;
  v1 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  v2 = v0 + 11;
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[15];
  v8 = swift_allocObject();
  v0[27] = v8;
  v79 = v8;
  *(v8 + 16) = v1;
  v81 = (v8 + 16);
  v86 = *(v7 + 48);
  v9 = swift_allocBox();
  v11 = v10;
  v78 = v9;
  v0[28] = v9;
  (*(v6 + 104))(v4, *MEMORY[0x277D617C8], v5);
  if (qword_280E26268 != -1)
  {
LABEL_30:
    swift_once();
  }

  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[23];
  v84 = v0[24];
  v15 = v0[20];
  v80 = v0;
  v16 = v0[14];
  v76 = (v0[19] + 16);
  v77 = __swift_project_value_buffer(v0[18], qword_280E26270);
  v75 = *v76;
  (*v76)(v15);
  mach_absolute_time();
  sub_2693B33E0();
  (*(v13 + 32))(v11, v12, v84);
  if (v16 >> 62)
  {
    if (v0[14] < 0)
    {
      v56 = v0[14];
    }

    v11 = sub_2693B3C70();
    if (v11)
    {
LABEL_4:
      v17 = 0;
      v74 = (v2 - 9);
      v85 = v16 & 0xC000000000000001;
      v83 = v16 & 0xFFFFFFFFFFFFFF8;
      v82 = v0[14] + 32;
      while (1)
      {
        if (v85)
        {
          v18 = MEMORY[0x26D639EB0](v17, v80[14]);
        }

        else
        {
          if (v17 >= *(v83 + 16))
          {
            goto LABEL_29;
          }

          v18 = *(v82 + 8 * v17);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        [v18 mutableCopy];
        sub_2693B3AB0();
        swift_unknownObjectRelease();
        sub_2693608D8(0, &qword_28030D220, 0x277D29700);
        if (!swift_dynamicCast())
        {
          break;
        }

        v21 = v2[1];
        [v21 setState_];
        if (!v86)
        {
          v38 = v80[18];
          v39 = v80[19];
          v40 = v80[16];
          v41 = v80[17];
          v42 = sub_2693B35D0();
          v43 = MEMORY[0x277D61908];
          v80[5] = v42;
          v80[6] = v43;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
          v45 = *MEMORY[0x277D61880];
          v46 = sub_2693B3560();
          (*(*(v46 - 8) + 104))(boxed_opaque_existential_1, v45, v46);
          (*(*(v42 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v42);
          sub_2693B34C0();
          __swift_destroy_boxed_opaque_existential_1(v74);
          (v75)(v41, v77, v38);
          (*(v39 + 56))(v41, 0, 1, v38);
          sub_26936F690(v41, v40);
          if ((*(v39 + 48))(v40, 1, v38) == 1)
          {
            sub_26934B4F0(v80[16], &qword_28030D200, &qword_2693B6178);
          }

          else
          {
            v47 = v80[16];
            v48 = sub_2693B3610();
            v49 = sub_2693B39A0();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v87[0] = v51;
              *v50 = 136315650;
              v52 = sub_2693B3BB0();
              v54 = sub_26934CA40(v52, v53, v87);

              *(v50 + 4) = v54;
              *(v50 + 12) = 2048;
              *(v50 + 14) = 337;
              *(v50 + 22) = 2080;
              *(v50 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, v87);
              _os_log_impl(&dword_26933F000, v48, v49, "FatalError at %s:%lu - %s", v50, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v51, -1, -1);
              MEMORY[0x26D63A640](v50, -1, -1);
            }

            (*(v80[19] + 8))(v80[16], v80[18]);
          }

          sub_2693B3330();
          return sub_2693B3C50();
        }

        v22 = v21;
        v23 = v86;
        v24 = [v23 updateTimer_];
        if (!v24)
        {
          __break(1u);
          return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31);
        }

        MEMORY[0x26D639AD0]();
        v0 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0 >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v32 = *v2;
        MEMORY[0x26D639AD0]();
        if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2693B3850();
        }

        sub_2693B3870();

        ++v17;
        if (v20 == v11)
        {
          goto LABEL_35;
        }
      }

      v33 = sub_2693B3610();
      v34 = sub_2693B39A0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_26933F000, v33, v34, "Failed to cast fetched timer as mutable timer!", v35, 2u);
        MEMORY[0x26D63A640](v35, -1, -1);
      }

      sub_26934B0F0();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();

      v37 = v80;
      goto LABEL_42;
    }
  }

  else
  {
    v11 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_35:
  v57 = sub_26936C730(v32);

  if (!v57)
  {
    v64 = sub_2693B3610();
    v65 = sub_2693B39A0();
    v37 = v80;
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_26933F000, v64, v65, "Failed to cast updateFutures as [NAFuture<AnyObject>]. Did an interface change??", v66, 2u);
      MEMORY[0x26D63A640](v66, -1, -1);
    }

    sub_26934B0F0();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();
LABEL_42:

    v68 = v37[26];
    v69 = v37[23];
    v70 = v37[20];
    v72 = v37[16];
    v71 = v37[17];

    v73 = v37[1];

    return v73();
  }

  v58 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
  v59 = sub_2693B3800();

  v60 = [v58 combineAllFutures:v59 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];
  v80[29] = v60;
  swift_unknownObjectRelease();

  v61 = swift_task_alloc();
  v80[30] = v61;
  v61[2] = v60;
  v61[3] = v78;
  v61[4] = v79;
  v62 = *(MEMORY[0x277D85A40] + 4);
  v63 = swift_task_alloc();
  v80[31] = v63;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  *v63 = v80;
  v63[1] = sub_2693699A4;
  v27 = 0xD000000000000019;
  v29 = sub_2693713F0;
  v24 = v80 + 13;
  v28 = 0x80000002693B8B10;
  v25 = 0;
  v26 = 0;
  v30 = v61;

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_2693699A4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_269371420;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_2693713E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_269369AC0(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_2693B3620();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = sub_2693B33A0();
  v2[21] = v7;
  v8 = *(v7 - 8);
  v2[22] = v8;
  v9 = *(v8 + 64) + 15;
  v2[23] = swift_task_alloc();
  v10 = sub_2693B33D0();
  v2[24] = v10;
  v11 = *(v10 - 8);
  v2[25] = v11;
  v12 = *(v11 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269369C7C, 0, 0);
}

uint64_t sub_269369C7C()
{
  v88 = v0;
  v1 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  v2 = v0 + 11;
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[15];
  v8 = swift_allocObject();
  v0[27] = v8;
  v79 = v8;
  *(v8 + 16) = v1;
  v81 = (v8 + 16);
  v86 = *(v7 + 48);
  v9 = swift_allocBox();
  v11 = v10;
  v78 = v9;
  v0[28] = v9;
  (*(v6 + 104))(v4, *MEMORY[0x277D617C8], v5);
  if (qword_280E26268 != -1)
  {
LABEL_30:
    swift_once();
  }

  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[23];
  v84 = v0[24];
  v15 = v0[20];
  v80 = v0;
  v16 = v0[14];
  v76 = (v0[19] + 16);
  v77 = __swift_project_value_buffer(v0[18], qword_280E26270);
  v75 = *v76;
  (*v76)(v15);
  mach_absolute_time();
  sub_2693B33E0();
  (*(v13 + 32))(v11, v12, v84);
  if (v16 >> 62)
  {
    if (v0[14] < 0)
    {
      v56 = v0[14];
    }

    v11 = sub_2693B3C70();
    if (v11)
    {
LABEL_4:
      v17 = 0;
      v74 = (v2 - 9);
      v85 = v16 & 0xC000000000000001;
      v83 = v16 & 0xFFFFFFFFFFFFFF8;
      v82 = v0[14] + 32;
      while (1)
      {
        if (v85)
        {
          v18 = MEMORY[0x26D639EB0](v17, v80[14]);
        }

        else
        {
          if (v17 >= *(v83 + 16))
          {
            goto LABEL_29;
          }

          v18 = *(v82 + 8 * v17);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        [v18 mutableCopy];
        sub_2693B3AB0();
        swift_unknownObjectRelease();
        sub_2693608D8(0, &qword_28030D220, 0x277D29700);
        if (!swift_dynamicCast())
        {
          break;
        }

        v21 = v2[1];
        [v21 setState_];
        if (!v86)
        {
          v38 = v80[18];
          v39 = v80[19];
          v40 = v80[16];
          v41 = v80[17];
          v42 = sub_2693B35D0();
          v43 = MEMORY[0x277D61908];
          v80[5] = v42;
          v80[6] = v43;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
          v45 = *MEMORY[0x277D61880];
          v46 = sub_2693B3560();
          (*(*(v46 - 8) + 104))(boxed_opaque_existential_1, v45, v46);
          (*(*(v42 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v42);
          sub_2693B34C0();
          __swift_destroy_boxed_opaque_existential_1(v74);
          (v75)(v41, v77, v38);
          (*(v39 + 56))(v41, 0, 1, v38);
          sub_26936F690(v41, v40);
          if ((*(v39 + 48))(v40, 1, v38) == 1)
          {
            sub_26934B4F0(v80[16], &qword_28030D200, &qword_2693B6178);
          }

          else
          {
            v47 = v80[16];
            v48 = sub_2693B3610();
            v49 = sub_2693B39A0();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v87[0] = v51;
              *v50 = 136315650;
              v52 = sub_2693B3BB0();
              v54 = sub_26934CA40(v52, v53, v87);

              *(v50 + 4) = v54;
              *(v50 + 12) = 2048;
              *(v50 + 14) = 337;
              *(v50 + 22) = 2080;
              *(v50 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, v87);
              _os_log_impl(&dword_26933F000, v48, v49, "FatalError at %s:%lu - %s", v50, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v51, -1, -1);
              MEMORY[0x26D63A640](v50, -1, -1);
            }

            (*(v80[19] + 8))(v80[16], v80[18]);
          }

          sub_2693B3330();
          return sub_2693B3C50();
        }

        v22 = v21;
        v23 = v86;
        v24 = [v23 updateTimer_];
        if (!v24)
        {
          __break(1u);
          return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31);
        }

        MEMORY[0x26D639AD0]();
        v0 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0 >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v32 = *v2;
        MEMORY[0x26D639AD0]();
        if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2693B3850();
        }

        sub_2693B3870();

        ++v17;
        if (v20 == v11)
        {
          goto LABEL_35;
        }
      }

      v33 = sub_2693B3610();
      v34 = sub_2693B39A0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_26933F000, v33, v34, "Failed to cast fetched timer as mutable timer!", v35, 2u);
        MEMORY[0x26D63A640](v35, -1, -1);
      }

      sub_26934B0F0();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();

      v37 = v80;
      goto LABEL_42;
    }
  }

  else
  {
    v11 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_35:
  v57 = sub_26936C730(v32);

  if (!v57)
  {
    v64 = sub_2693B3610();
    v65 = sub_2693B39A0();
    v37 = v80;
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_26933F000, v64, v65, "Failed to cast updateFutures as [NAFuture<AnyObject>]. Did an interface change??", v66, 2u);
      MEMORY[0x26D63A640](v66, -1, -1);
    }

    sub_26934B0F0();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();
LABEL_42:

    v68 = v37[26];
    v69 = v37[23];
    v70 = v37[20];
    v72 = v37[16];
    v71 = v37[17];

    v73 = v37[1];

    return v73();
  }

  v58 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
  v59 = sub_2693B3800();

  v60 = [v58 combineAllFutures:v59 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];
  v80[29] = v60;
  swift_unknownObjectRelease();

  v61 = swift_task_alloc();
  v80[30] = v61;
  v61[2] = v60;
  v61[3] = v78;
  v61[4] = v79;
  v62 = *(MEMORY[0x277D85A40] + 4);
  v63 = swift_task_alloc();
  v80[31] = v63;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  *v63 = v80;
  v63[1] = sub_26936A684;
  v27 = 0xD000000000000019;
  v29 = sub_2693713F0;
  v24 = v80 + 13;
  v28 = 0x80000002693B8B10;
  v25 = 0;
  v26 = 0;
  v30 = v61;

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_26936A684()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_26936A86C;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_26936A7A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26936A7A0()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);

  v8 = *(v0 + 104);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_26936A86C()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);

  v4 = *(v0 + 256);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26936A930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_2693B3620();
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = sub_2693B33A0();
  v3[22] = v8;
  v9 = *(v8 - 8);
  v3[23] = v9;
  v10 = *(v9 + 64) + 15;
  v3[24] = swift_task_alloc();
  v11 = sub_2693B33D0();
  v3[25] = v11;
  v12 = *(v11 - 8);
  v3[26] = v12;
  v13 = *(v12 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936AAF0, 0, 0);
}

uint64_t sub_26936AAF0()
{
  v96 = v0;
  v1 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  v2 = v0 + 11;
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[15];
  v8 = swift_allocObject();
  v0[28] = v8;
  v89 = v8;
  *(v8 + 16) = v1;
  v90 = (v8 + 16);
  v92 = *(v7 + 48);
  v9 = swift_allocBox();
  v94 = v10;
  v88 = v9;
  v0[29] = v9;
  (*(v6 + 104))(v4, *MEMORY[0x277D617C8], v5);
  if (qword_280E26268 != -1)
  {
LABEL_33:
    swift_once();
  }

  v12 = v0[26];
  v11 = v0[27];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[21];
  v93 = v0;
  v16 = v0[14];
  v86 = (v0[20] + 16);
  v87 = __swift_project_value_buffer(v0[19], qword_280E26270);
  v85 = *v86;
  (*v86)(v15);
  mach_absolute_time();
  sub_2693B33E0();
  (*(v12 + 32))(v94, v11, v13);
  if (v16 >> 62)
  {
    if (v0[14] < 0)
    {
      v66 = v0[14];
    }

    v17 = sub_2693B3C70();
    if (v17)
    {
LABEL_4:
      v18 = 0;
      v84 = (v2 - 9);
      v91 = v0[14] + 32;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v0 = v93;
          v19 = MEMORY[0x26D639EB0](v18, v93[14]);
        }

        else
        {
          v0 = v93;
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v19 = *(v91 + 8 * v18);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v94 = v18;
        [v19 mutableCopy];
        sub_2693B3AB0();
        swift_unknownObjectRelease();
        sub_2693608D8(0, &qword_28030D220, 0x277D29700);
        if (!swift_dynamicCast())
        {
          break;
        }

        v22 = v0[16];
        v23 = v0[12];
        [v23 setState_];
        v24 = [v22 toTimer];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 duration];

          if (v26)
          {
            [v26 doubleValue];
            v28 = v27;

            [v23 setDuration_];
          }
        }

        [v23 setState_];
        if (!v92)
        {
          v47 = v0[19];
          v48 = v0[20];
          v49 = v0[17];
          v50 = v0[18];
          v51 = sub_2693B35D0();
          v52 = MEMORY[0x277D61908];
          v0[5] = v51;
          v0[6] = v52;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
          v54 = *MEMORY[0x277D61880];
          v55 = sub_2693B3560();
          (*(*(v55 - 8) + 104))(boxed_opaque_existential_1, v54, v55);
          (*(*(v51 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v51);
          sub_2693B34C0();
          __swift_destroy_boxed_opaque_existential_1(v84);
          (v85)(v50, v87, v47);
          (*(v48 + 56))(v50, 0, 1, v47);
          sub_26936F690(v50, v49);
          if ((*(v48 + 48))(v49, 1, v47) == 1)
          {
            sub_26934B4F0(v0[17], &qword_28030D200, &qword_2693B6178);
          }

          else
          {
            v56 = v0[17];
            v57 = sub_2693B3610();
            v58 = sub_2693B39A0();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v95[0] = v60;
              *v59 = 136315650;
              v61 = sub_2693B3BB0();
              v63 = sub_26934CA40(v61, v62, v95);

              *(v59 + 4) = v63;
              *(v59 + 12) = 2048;
              *(v59 + 14) = 337;
              *(v59 + 22) = 2080;
              *(v59 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, v95);
              _os_log_impl(&dword_26933F000, v57, v58, "FatalError at %s:%lu - %s", v59, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v60, -1, -1);
              MEMORY[0x26D63A640](v59, -1, -1);
            }

            (*(v0[20] + 8))(v0[17], v0[19]);
          }

          v64 = v0[16];
          sub_2693B3330();

          return sub_2693B3C50();
        }

        v29 = v17;
        v30 = v23;
        v31 = v92;
        v32 = [v31 updateTimer_];
        if (!v32)
        {
          __break(1u);
          return MEMORY[0x2822008A0](v32, v33, v34, v35, v36, v37, v38, v39);
        }

        MEMORY[0x26D639AD0]();
        if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v40 = *v2;
        MEMORY[0x26D639AD0]();
        if (*((*v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((*v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2693B3850();
        }

        sub_2693B3870();

        v18 = v94 + 1;
        v17 = v29;
        if (v21 == v29)
        {
          goto LABEL_38;
        }
      }

      v42 = sub_2693B3610();
      v43 = sub_2693B39A0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_26933F000, v42, v43, "Failed to cast fetched timer as mutable timer!", v44, 2u);
        MEMORY[0x26D63A640](v44, -1, -1);
      }

      v45 = v0[16];

      sub_26934B0F0();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();

      goto LABEL_45;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }
  }

  v40 = MEMORY[0x277D84F90];
LABEL_38:
  v67 = sub_26936C730(v40);

  if (!v67)
  {
    v74 = sub_2693B3610();
    v75 = sub_2693B39A0();
    v0 = v93;
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_26933F000, v74, v75, "Failed to cast updateFutures as [NAFuture<AnyObject>]. Did an interface change??", v76, 2u);
      MEMORY[0x26D63A640](v76, -1, -1);
    }

    v45 = v93[16];

    sub_26934B0F0();
    swift_allocError();
    *v77 = 0;
    swift_willThrow();
LABEL_45:

    v78 = v0[27];
    v79 = v0[24];
    v80 = v0[21];
    v82 = v0[17];
    v81 = v0[18];

    v83 = v0[1];

    return v83();
  }

  v68 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
  v69 = sub_2693B3800();

  v70 = [v68 combineAllFutures:v69 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];
  v93[30] = v70;
  swift_unknownObjectRelease();

  v71 = swift_task_alloc();
  v93[31] = v71;
  v71[2] = v70;
  v71[3] = v88;
  v71[4] = v89;
  v72 = *(MEMORY[0x277D85A40] + 4);
  v73 = swift_task_alloc();
  v93[32] = v73;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  *v73 = v93;
  v73[1] = sub_26936B59C;
  v35 = 0xD000000000000019;
  v37 = sub_2693713F0;
  v32 = v93 + 13;
  v36 = 0x80000002693B8B10;
  v33 = 0;
  v34 = 0;
  v38 = v71;

  return MEMORY[0x2822008A0](v32, v33, v34, v35, v36, v37, v38, v39);
}

uint64_t sub_26936B59C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_26936B78C;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_26936B6B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26936B6B8()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 128);

  v9 = *(v0 + 104);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_26936B78C()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 128);

  v5 = *(v0 + 264);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26936B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 280) = a5;
  *(v5 + 128) = a3;
  *(v5 + 136) = a4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178) - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v7 = sub_2693B3620();
  *(v5 + 160) = v7;
  v8 = *(v7 - 8);
  *(v5 + 168) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v10 = sub_2693B33A0();
  *(v5 + 184) = v10;
  v11 = *(v10 - 8);
  *(v5 + 192) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v13 = sub_2693B33D0();
  *(v5 + 208) = v13;
  v14 = *(v13 - 8);
  *(v5 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936BA1C, 0, 0);
}

uint64_t sub_26936BA1C()
{
  v92 = v0;
  v1 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  v2 = v0 + 11;
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[15];
  v8 = swift_allocObject();
  v0[29] = v8;
  v83 = v8;
  *(v8 + 16) = v1;
  v85 = (v8 + 16);
  v89 = *(v7 + 48);
  v9 = swift_allocBox();
  v88 = v10;
  v82 = v9;
  v0[30] = v9;
  (*(v6 + 104))(v4, *MEMORY[0x277D617C8], v5);
  if (qword_280E26268 != -1)
  {
LABEL_30:
    swift_once();
  }

  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[22];
  v90 = v0;
  v16 = v0[14];
  v80 = (v0[21] + 16);
  v81 = __swift_project_value_buffer(v0[20], qword_280E26270);
  v79 = *v80;
  (*v80)(v15);
  mach_absolute_time();
  sub_2693B33E0();
  (*(v12 + 32))(v88, v11, v13);
  if (v16 >> 62)
  {
    if (v0[14] < 0)
    {
      v60 = v0[14];
    }

    v17 = sub_2693B3C70();
    if (v17)
    {
LABEL_4:
      v18 = 0;
      v78 = (v2 - 9);
      v84 = *(v0 + 280);
      v87 = v16 & 0xFFFFFFFFFFFFFF8;
      v88 = v16 & 0xC000000000000001;
      v86 = v0[14] + 32;
      while (1)
      {
        if (v88)
        {
          v0 = v90;
          v19 = MEMORY[0x26D639EB0](v18, v90[14]);
        }

        else
        {
          v0 = v90;
          if (v18 >= *(v87 + 16))
          {
            goto LABEL_29;
          }

          v19 = *(v86 + 8 * v18);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        [v19 mutableCopy];
        sub_2693B3AB0();
        swift_unknownObjectRelease();
        sub_2693608D8(0, &qword_28030D220, 0x277D29700);
        if (!swift_dynamicCast())
        {
          break;
        }

        v22 = v0[12];
        sub_26939BD60(v22, v0[16], v0[17], v84 & 1);
        if (!v89)
        {
          v41 = v90[20];
          v42 = v90[21];
          v43 = v90[18];
          v44 = v90[19];
          v45 = sub_2693B35D0();
          v46 = MEMORY[0x277D61908];
          v90[5] = v45;
          v90[6] = v46;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
          v48 = *MEMORY[0x277D61880];
          v49 = sub_2693B3560();
          (*(*(v49 - 8) + 104))(boxed_opaque_existential_1, v48, v49);
          (*(*(v45 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v45);
          sub_2693B34C0();
          __swift_destroy_boxed_opaque_existential_1(v78);
          (v79)(v44, v81, v41);
          (*(v42 + 56))(v44, 0, 1, v41);
          sub_26936F690(v44, v43);
          if ((*(v42 + 48))(v43, 1, v41) == 1)
          {
            sub_26934B4F0(v90[18], &qword_28030D200, &qword_2693B6178);
          }

          else
          {
            v50 = v90[18];
            v51 = sub_2693B3610();
            v52 = sub_2693B39A0();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v91[0] = v54;
              *v53 = 136315650;
              v55 = sub_2693B3BB0();
              v57 = sub_26934CA40(v55, v56, v91);

              *(v53 + 4) = v57;
              *(v53 + 12) = 2048;
              *(v53 + 14) = 337;
              *(v53 + 22) = 2080;
              *(v53 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, v91);
              _os_log_impl(&dword_26933F000, v51, v52, "FatalError at %s:%lu - %s", v53, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v54, -1, -1);
              MEMORY[0x26D63A640](v53, -1, -1);
            }

            (*(v90[21] + 8))(v90[18], v90[20]);
          }

          v58 = v90[16];
          sub_2693B3330();

          return sub_2693B3C50();
        }

        v23 = v17;
        v24 = v22;
        v25 = v89;
        v26 = [v25 updateTimer_];
        if (!v26)
        {
          __break(1u);
          return MEMORY[0x2822008A0](v26, v27, v28, v29, v30, v31, v32, v33);
        }

        MEMORY[0x26D639AD0]();
        if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2693B3850();
        }

        sub_2693B3870();

        v34 = *v2;
        MEMORY[0x26D639AD0]();
        if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2693B3850();
        }

        sub_2693B3870();

        ++v18;
        v17 = v23;
        if (v21 == v23)
        {
          goto LABEL_35;
        }
      }

      v36 = sub_2693B3610();
      v37 = sub_2693B39A0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_26933F000, v36, v37, "Failed to cast fetched timer as mutable timer!", v38, 2u);
        MEMORY[0x26D63A640](v38, -1, -1);
      }

      v39 = v0[16];

      sub_26934B0F0();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();

      goto LABEL_42;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_35:
  v61 = sub_26936C730(v34);

  if (!v61)
  {
    v68 = sub_2693B3610();
    v69 = sub_2693B39A0();
    v0 = v90;
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26933F000, v68, v69, "Failed to cast updateFutures as [NAFuture<AnyObject>]. Did an interface change??", v70, 2u);
      MEMORY[0x26D63A640](v70, -1, -1);
    }

    v39 = v90[16];

    sub_26934B0F0();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();
LABEL_42:

    v72 = v0[28];
    v73 = v0[25];
    v74 = v0[22];
    v76 = v0[18];
    v75 = v0[19];

    v77 = v0[1];

    return v77();
  }

  v62 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
  v63 = sub_2693B3800();

  v64 = [v62 combineAllFutures:v63 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];
  v90[31] = v64;
  swift_unknownObjectRelease();

  v65 = swift_task_alloc();
  v90[32] = v65;
  v65[2] = v64;
  v65[3] = v82;
  v65[4] = v83;
  v66 = *(MEMORY[0x277D85A40] + 4);
  v67 = swift_task_alloc();
  v90[33] = v67;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  *v67 = v90;
  v67[1] = sub_26936C474;
  v29 = 0xD000000000000019;
  v31 = sub_269370C4C;
  v26 = v90 + 13;
  v30 = 0x80000002693B8B10;
  v27 = 0;
  v28 = 0;
  v32 = v65;

  return MEMORY[0x2822008A0](v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_26936C474()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_26936C664;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_26936C590;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26936C590()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 128);

  v9 = *(v0 + 104);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_26936C664()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 128);

  v5 = *(v0 + 272);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 176);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26936C730(unint64_t a1)
{
  v11 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    result = sub_2693B3C20();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return v11;
  }

  sub_2693B3C70();
  sub_2693B3C20();
  result = sub_2693B3C70();
  v4 = result;
  if (!result)
  {
    return v11;
  }

LABEL_3:
  if (v4 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x26D639EB0](v5++, a1);
        sub_2693B3C00();
        v6 = *(v11 + 16);
        sub_2693B3C30();
        sub_2693B3C40();
        sub_2693B3C10();
      }

      while (v4 != v5);
    }

    else
    {
      v7 = (a1 + 32);
      do
      {
        v8 = *v7++;
        v9 = v8;
        sub_2693B3C00();
        v10 = *(v11 + 16);
        sub_2693B3C30();
        sub_2693B3C40();
        sub_2693B3C10();
        --v4;
      }

      while (v4);
    }

    return v11;
  }

  __break(1u);
  return result;
}

void sub_26936C880(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D228, &qword_2693B61C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock - v11;
  (*(v9 + 16))(&aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v23 = sub_269370C58;
  v24 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269378A84;
  v22 = &block_descriptor_59;
  v15 = _Block_copy(&aBlock);

  v16 = [a2 addSuccessBlock_];
  _Block_release(v15);
  v23 = sub_269370D04;
  v24 = a3;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269373AD8;
  v22 = &block_descriptor_62;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 addFailureBlock_];
  _Block_release(v17);
}

uint64_t sub_26936CB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2693B33D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = swift_projectBox();
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  sub_2693B33C0();
  (*(v6 + 8))(v9, v5);
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v11 = sub_2693B3620();
  __swift_project_value_buffer(v11, qword_280E26270);
  v12 = sub_2693B3610();
  v13 = sub_2693B3990();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26933F000, v12, v13, "UpdateTimerIntentHandler: allUpdateFuture success block called", v14, 2u);
    MEMORY[0x26D63A640](v14, -1, -1);
  }

  swift_beginAccess();
  v17 = *(a4 + 16);
  v16[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D230, &qword_2693B61D0);
  sub_269353B24(&qword_28030D238, &qword_28030CF60, &qword_2693B61C0);
  sub_269353B24(&qword_28030D240, &qword_28030D230, &qword_2693B61D0);
  v17 = sub_2693B37E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D228, &qword_2693B61C8);
  return sub_2693B3900();
}

uint64_t sub_26936CDDC(void *a1)
{
  v2 = sub_2693B33D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_projectBox();
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  sub_2693B33C0();
  (*(v3 + 8))(v6, v2);
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v8 = sub_2693B3620();
  __swift_project_value_buffer(v8, qword_280E26270);
  v9 = a1;
  v10 = sub_2693B3610();
  v11 = sub_2693B3990();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[1] = a1;
    v24[0] = v13;
    *v12 = 136315138;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v15 = sub_2693B3760();
    v17 = sub_26934CA40(v15, v16, v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_26933F000, v10, v11, "UpdateTimerIntentHandler: allUpdateFuture failure block called: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D63A640](v13, -1, -1);
    MEMORY[0x26D63A640](v12, -1, -1);
  }

  v18 = sub_2693B35D0();
  v24[3] = v18;
  v24[4] = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v20 = *MEMORY[0x277D61838];
  v21 = sub_2693B34B0();
  (*(*(v21 - 8) + 104))(boxed_opaque_existential_1, v20, v21);
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v18);
  sub_2693B34C0();
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_26936D0F4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_2693B3520();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = sub_2693B3620();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = sub_2693B33A0();
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936D2BC, 0, 0);
}

uint64_t sub_26936D2BC()
{
  v44 = v0;
  v1 = *(v0[8] + 48);
  v0[21] = v1;
  if (v1)
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[17];
    v5 = v0[18];
    (*(v5 + 104))(v2, *MEMORY[0x277D617E0], v4);
    sub_2693B33D0();
    v42 = swift_allocBox();
    v0[22] = v42;
    (*(v5 + 16))(v3, v2, v4);
    v6 = qword_280E26268;
    v41 = v1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v40 = v0[7];
    v15 = __swift_project_value_buffer(v12, qword_280E26270);
    (*(v9 + 16))(v10, v15, v12);
    mach_absolute_time();
    sub_2693B33E0();
    *v11 = sub_2693B3390();
    v11[1] = v16;
    (*(v13 + 104))(v11, *MEMORY[0x277D61848], v14);
    sub_2693B33B0();
    (*(v13 + 8))(v11, v14);
    v17 = swift_task_alloc();
    v0[23] = v17;
    v17[2] = v41;
    v17[3] = v40;
    v17[4] = v42;
    v18 = *(MEMORY[0x277D85A40] + 4);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_26936D878;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v19, 0, 0, 0x695465766F6D6572, 0xEF293A5F2872656DLL, sub_269370D0C, v17, v20);
  }

  else
  {
    v21 = sub_2693B35D0();
    v22 = MEMORY[0x277D61908];
    v0[5] = v21;
    v0[6] = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v24 = *MEMORY[0x277D61880];
    v25 = sub_2693B3560();
    (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, v24, v25);
    (*(*(v21 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v21);
    sub_2693B34C0();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_280E26268 != -1)
    {
      swift_once();
    }

    v26 = v0[14];
    v27 = v0[15];
    v29 = v0[9];
    v28 = v0[10];
    v30 = __swift_project_value_buffer(v26, qword_280E26270);
    (*(v27 + 16))(v28, v30, v26);
    (*(v27 + 56))(v28, 0, 1, v26);
    sub_26936F690(v28, v29);
    if ((*(v27 + 48))(v29, 1, v26) == 1)
    {
      sub_26934B4F0(v0[9], &qword_28030D200, &qword_2693B6178);
    }

    else
    {
      v31 = v0[9];
      v32 = sub_2693B3610();
      v33 = sub_2693B39A0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43 = v35;
        *v34 = 136315650;
        v36 = sub_2693B3BB0();
        v38 = sub_26934CA40(v36, v37, &v43);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2048;
        *(v34 + 14) = 467;
        *(v34 + 22) = 2080;
        *(v34 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, &v43);
        _os_log_impl(&dword_26933F000, v32, v33, "FatalError at %s:%lu - %s", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D63A640](v35, -1, -1);
        MEMORY[0x26D63A640](v34, -1, -1);
      }

      (*(v0[15] + 8))(v0[9], v0[14]);
    }

    sub_2693B3330();
    return sub_2693B3C50();
  }
}

uint64_t sub_26936D878()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_26936DA90;
  }

  else
  {
    v4 = sub_26936D9A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26936D9A8()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  (*(v5 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26936DA90()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  (*(v5 + 8))(v2, v4);

  v10 = *(v0 + 8);
  v11 = *(v0 + 200);

  return v10();
}

void sub_26936DB78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v27 = [a2 removeTimer_];
  if (v27)
  {
    v26 = *(v9 + 16);
    v26(v12, a1, v8);
    v25 = a1;
    v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    v24 = *(v9 + 32);
    v24(v14 + v13, v12, v8);
    v32 = sub_269370D18;
    v33 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v23[1] = &v30;
    v30 = sub_269378A84;
    v31 = &block_descriptor_72;
    v15 = _Block_copy(&aBlock);
    v23[0] = v10;
    v16 = a4;
    v17 = v15;

    v18 = v27;
    v19 = [v27 addSuccessBlock_];
    _Block_release(v17);

    v26(v12, v25, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v24(v20 + v13, v12, v8);
    v32 = sub_269370E00;
    v33 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_269373AD8;
    v31 = &block_descriptor_78;
    v21 = _Block_copy(&aBlock);

    v22 = [v19 addFailureBlock_];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26936DE98()
{
  v0 = sub_2693B33D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_projectBox();
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  sub_2693B33C0();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  return sub_2693B3900();
}

uint64_t sub_26936DFC8(void *a1)
{
  v2 = sub_2693B33D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_projectBox();
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  sub_2693B33C0();
  (*(v3 + 8))(v6, v2);
  v14[0] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  sub_2693B38F0();
  v9 = sub_2693B35D0();
  v14[3] = v9;
  v14[4] = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v11 = *MEMORY[0x277D61838];
  v12 = sub_2693B34B0();
  (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, v11, v12);
  (*(*(v9 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v9);
  sub_2693B34C0();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26936E1D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v96 = a3;
  v93 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  v88 = *(v4 - 8);
  v90 = *(v88 + 64);
  MEMORY[0x28223BE20](v4);
  v91 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v84 = (&v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v83 = &v80 - v10;
  v11 = sub_2693B3620();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2693B33A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2693B33D0();
  v92 = *(v95 - 8);
  v21 = *(v92 + 64);
  v22 = MEMORY[0x28223BE20](v95);
  v86 = v23;
  v87 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v80 - v24;
  (*(v17 + 104))(v20, *MEMORY[0x277D617E0], v16);
  if (qword_280E26268 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v26 = __swift_project_value_buffer(v11, qword_280E26270);
    v27 = v12;
    v28 = *(v12 + 16);
    v28(v15, v26, v11);
    mach_absolute_time();
    sub_2693B33E0();
    v29 = *(a2 + 48);
    if (!v29)
    {
      goto LABEL_28;
    }

    v27 = v96;
    v85 = v26;
    a2 = v96 >> 62 ? sub_2693B3C70() : *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = MEMORY[0x277D84F90];
    v89 = v4;
    v94 = v25;
    if (!a2)
    {
      break;
    }

    aBlock = MEMORY[0x277D84F90];
    v11 = v29;
    sub_2693B3C20();
    if (a2 < 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v64 = v26;
      v65 = sub_2693B35D0();
      v100 = v65;
      v101 = MEMORY[0x277D61908];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      v67 = *MEMORY[0x277D61880];
      v68 = sub_2693B3560();
      (*(*(v68 - 8) + 104))(boxed_opaque_existential_1, v67, v68);
      (*(*(v65 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v65);
      sub_2693B34C0();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v69 = v83;
      v28(v83, v64, v11);
      (*(v27 + 56))(v69, 0, 1, v11);
      v70 = v69;
      v71 = v84;
      sub_26936F690(v70, v84);
      v72 = v27;
      if ((*(v27 + 48))(v71, 1, v11) == 1)
      {
        sub_26934B4F0(v84, &qword_28030D200, &qword_2693B6178);
      }

      else
      {
        v73 = sub_2693B3610();
        v74 = sub_2693B39A0();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          aBlock = v76;
          *v75 = 136315650;
          v77 = sub_2693B3BB0();
          v79 = sub_26934CA40(v77, v78, &aBlock);

          *(v75 + 4) = v79;
          *(v75 + 12) = 2048;
          *(v75 + 14) = 496;
          *(v75 + 22) = 2080;
          *(v75 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, &aBlock);
          _os_log_impl(&dword_26933F000, v73, v74, "FatalError at %s:%lu - %s", v75, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D63A640](v76, -1, -1);
          MEMORY[0x26D63A640](v75, -1, -1);
        }

        (*(v72 + 8))(v84, v11);
      }

      sub_2693B3330();
      result = sub_2693B3C50();
      __break(1u);
      return result;
    }

    v15 = 0;
    v12 = v27 & 0xC000000000000001;
    v4 = v27 & 0xFFFFFFFFFFFFFF8;
    v28 = &property descriptor for SearchTimerIntent.targetingInfo;
    while (1)
    {
      v27 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12)
      {
        v30 = MEMORY[0x26D639EB0](v15, v96);
      }

      else
      {
        if (v15 >= *(v4 + 16))
        {
          goto LABEL_23;
        }

        v30 = *(v96 + 8 * v15 + 32);
      }

      v31 = v30;
      v32 = [v11 removeTimer_];
      if (!v32)
      {
        goto LABEL_27;
      }

      v26 = v32;

      sub_2693B3C00();
      v25 = *(aBlock + 16);
      sub_2693B3C30();
      sub_2693B3C40();
      sub_2693B3C10();
      ++v15;
      if (v27 == a2)
      {

        v26 = aBlock;
        v33 = v89;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v33 = v4;
LABEL_17:
  v34 = sub_26936C730(v26);

  if (v34)
  {
    v35 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D208, &unk_2693B6180);
    v36 = sub_2693B3800();

    v96 = [v35 combineAllFutures:v36 scheduler:{objc_msgSend(objc_opt_self(), sel_immediateScheduler)}];

    swift_unknownObjectRelease();
    v37 = v92;
    v85 = *(v92 + 16);
    v38 = v87;
    v85(v87, v94, v95);
    v39 = v88;
    v84 = *(v88 + 16);
    (v84)(v91, v93, v33);
    v40 = *(v37 + 80);
    v41 = v37;
    v42 = *(v39 + 80);
    v43 = (v40 + 16) & ~v40;
    v83 = v43;
    v44 = (v86 + v42 + v43) & ~v42;
    v86 = v40 | v42;
    v45 = swift_allocObject();
    v82 = *(v41 + 32);
    v46 = v38;
    v82(v45 + v43, v38, v95);
    v88 = *(v39 + 32);
    v47 = v91;
    (v88)(v45 + v44, v91, v33);
    v101 = sub_26936F700;
    v102 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_269378A84;
    v100 = &block_descriptor_0;
    v48 = _Block_copy(&aBlock);

    v81 = [v96 addSuccessBlock_];
    _Block_release(v48);
    v49 = v46;
    v50 = v46;
    v51 = v95;
    v85(v50, v94, v95);
    v52 = v89;
    (v84)(v47, v93, v89);
    v53 = swift_allocObject();
    v82(&v83[v53], v49, v51);
    (v88)(v53 + v44, v47, v52);
    v101 = sub_26936F730;
    v102 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_269373AD8;
    v100 = &block_descriptor_31;
    v54 = _Block_copy(&aBlock);

    v55 = v81;
    v56 = [v81 addFailureBlock_];
    _Block_release(v54);

    return (*(v92 + 8))(v94, v51);
  }

  else
  {
    v58 = sub_2693B3610();
    v59 = sub_2693B39A0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26933F000, v58, v59, "Failed to cast expected NAFuture<NANoResult> to NAFuture<AnyObject> when deleting timers!", v60, 2u);
      MEMORY[0x26D63A640](v60, -1, -1);
    }

    v61 = v94;
    sub_2693B33C0();
    sub_26934B0F0();
    v62 = swift_allocError();
    *v63 = 0;
    aBlock = v62;
    sub_2693B38F0();
    return (*(v92 + 8))(v61, v95);
  }
}

uint64_t sub_26936EDC4()
{
  sub_2693B33C0();
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B3620();
  __swift_project_value_buffer(v0, qword_280E26270);
  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26933F000, v1, v2, "DeleteTimerIntentHandler success deleting all timers", v3, 2u);
    MEMORY[0x26D63A640](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  return sub_2693B3900();
}

uint64_t sub_26936EEC8(void *a1)
{
  sub_2693B33C0();
  if (qword_280E26268 != -1)
  {
    swift_once();
  }

  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E26270);
  v3 = a1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v9 = sub_2693B3760();
    v11 = sub_26934CA40(v9, v10, v22);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26933F000, v4, v5, "DeleteTimerIntentHandler error deleting all timers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  v12 = sub_2693B30D0();
  sub_2693A7BF4(v12, v22);

  v13 = v22[0];
  if (v22[0] == 10)
  {
    v22[0] = a1;
    v14 = a1;
  }

  else
  {
    sub_26934B0F0();
    v15 = swift_allocError();
    *v16 = v13;
    v22[0] = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  sub_2693B38F0();
  v17 = sub_2693B35D0();
  v22[3] = v17;
  v22[4] = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  *boxed_opaque_existential_1 = sub_2693B30D0();
  v19 = *MEMORY[0x277D61838];
  v20 = sub_2693B34B0();
  (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, v19, v20);
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E8], v17);
  sub_2693B34C0();
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26936F190()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26936F204(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 16) = a1;
}

uint64_t sub_26936F218(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 24) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_26936F228(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_26936F24C, 0, 0);
}

uint64_t sub_26936F24C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_26936F33C;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000010, 0x80000002693B8A00, sub_26936F4D4, v1, v4);
}

uint64_t sub_26936F33C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_26936F470;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_26936F458;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26936F470()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void *sub_26936F4DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D248, &qword_2693B61E8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_26936F610(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D639EB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2693713EC;
  }

  __break(1u);
  return result;
}

uint64_t sub_26936F690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_26936F748(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D639EB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26936F7C8;
  }

  __break(1u);
  return result;
}

char *sub_26936F7D0(char *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v25 = (MEMORY[0x277D84F90] + 32);
LABEL_4:
  v6 = *(v1 + 2);
  if (v3 == v6)
  {
    goto LABEL_38;
  }

  if (v3 >= v6)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v7 = *&v4[8 * v3];

    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7 >> 62)
    {
      break;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_9:
    ++v3;
    v8 = *(v1 + 2);
    if (v3 == v8)
    {
      goto LABEL_38;
    }

    if (v3 >= v8)
    {
      goto LABEL_42;
    }
  }

  result = sub_2693B3C70();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = 0;
  ++v3;
  if ((v7 & 0xC000000000000001) == 0)
  {
    while (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      result = *(v7 + 8 * v9 + 32);
      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        goto LABEL_37;
      }

LABEL_20:
      if (!v2)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v24 = result;
        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 25;
        }

        v17 = v16 >> 3;
        v14[2] = v13;
        v14[3] = (2 * (v16 >> 3)) | 1;
        v18 = (v14 + 4);
        v19 = v5[3] >> 1;
        if (v5[2])
        {
          v20 = v5 + 4;
          if (v14 != v5 || v18 >= v20 + 8 * v19)
          {
            memmove(v14 + 4, v20, 8 * v19);
          }

          v5[2] = 0;
        }

        v25 = (v18 + 8 * v19);
        v2 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v5 = v14;
        result = v24;
      }

      v10 = __OFSUB__(v2--, 1);
      if (v10)
      {
        goto LABEL_45;
      }

      *v25++ = result;
      if (v7 >> 62)
      {
        result = sub_2693B3C70();
        if (v9 == result)
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 == result)
        {
          goto LABEL_4;
        }
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        goto LABEL_35;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_44;
  }

LABEL_35:
  result = MEMORY[0x26D639EB0](v9, v7);
  v10 = __OFADD__(v9++, 1);
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v21 = v5[3];
  if (v21 < 2)
  {
    return v5;
  }

  v22 = v21 >> 1;
  v10 = __OFSUB__(v22, v2);
  v23 = v22 - v2;
  if (!v10)
  {
    v5[2] = v23;
    return v5;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_26936FA6C()
{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D200, &qword_2693B6178) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26936FB14, 0, 0);
}

uint64_t sub_26936FB14()
{
  v33 = v0;
  v1 = *(v0[8] + 48);
  v0[11] = v1;
  if (v1)
  {
    v2 = qword_280E26268;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_280E26270);
    v5 = sub_2693B3610();
    v6 = sub_2693B39B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "TimerManager allTimers() with mtTimerManager", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = v0[8];

    v9 = swift_task_alloc();
    v0[12] = v9;
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v10 = *(MEMORY[0x277D85A40] + 4);
    v11 = swift_task_alloc();
    v0[13] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF48, &qword_2693B6A70);
    *v11 = v0;
    v11[1] = sub_26937006C;

    return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD00000000000001CLL, 0x80000002693B8AF0, sub_269370298, v9, v12);
  }

  else
  {
    v13 = sub_2693B35D0();
    v14 = MEMORY[0x277D61908];
    v0[5] = v13;
    v0[6] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v16 = *MEMORY[0x277D61880];
    v17 = sub_2693B3560();
    (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v16, v17);
    (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v13);
    sub_2693B34C0();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_280E26268 != -1)
    {
      swift_once();
    }

    v19 = v0[9];
    v18 = v0[10];
    v20 = sub_2693B3620();
    v21 = __swift_project_value_buffer(v20, qword_280E26270);
    v22 = *(v20 - 8);
    (*(v22 + 16))(v18, v21, v20);
    (*(v22 + 56))(v18, 0, 1, v20);
    sub_26936F690(v18, v19);
    if ((*(v22 + 48))(v19, 1, v20) == 1)
    {
      sub_26934B4F0(v0[9], &qword_28030D200, &qword_2693B6178);
    }

    else
    {
      v23 = v0[9];
      v24 = sub_2693B3610();
      v25 = sub_2693B39A0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136315650;
        v28 = sub_2693B3BB0();
        v30 = sub_26934CA40(v28, v29, &v32);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 208;
        *(v26 + 22) = 2080;
        *(v26 + 24) = sub_26934CA40(0xD000000000000021, 0x80000002693B8A20, &v32);
        _os_log_impl(&dword_26933F000, v24, v25, "FatalError at %s:%lu - %s", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D63A640](v27, -1, -1);
        MEMORY[0x26D63A640](v26, -1, -1);
      }

      (*(v22 + 8))(v0[9], v20);
    }

    sub_2693B3330();
    return sub_2693B3C50();
  }
}

uint64_t sub_26937006C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_269370210;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_269370188;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_269370188()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);

  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_269370210()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);
  v5 = *(v0 + 112);

  return v4();
}

uint64_t sub_2693702A0()
{
  v1 = *(sub_2693B33D0() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D218, &qword_2693B61B0) - 8);
  v4 = *(v0 + v2);
  v5 = v0 + ((v2 + *(v3 + 80) + 8) & ~*(v3 + 80));

  return sub_269367518();
}

uint64_t sub_2693703C4()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[3];
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = v4;
    MEMORY[0x26D639AD0]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2693B3850();
    }

    sub_2693B3870();

    v6 = *v2;
  }

  else
  {
    if (*(v3 + 16))
    {
      v6 = *(v3 + 16);
    }

    else
    {
      v6 = v1;
    }
  }

  v0[4] = v6;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_2693704FC;
  v8 = v0[3];

  return sub_26936FA6C();
}

uint64_t sub_2693704FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v8 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = v3[4];

    v6 = sub_2693707D8;
  }

  else
  {
    v6 = sub_269370618;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_269370618()
{
  v1 = v0[6];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[6];

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v4)))));

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_26936F4DC(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v13 = *(v9 + 2);
        v12 = *(v9 + 3);
        if (v13 >= v12 >> 1)
        {
          result = sub_26936F4DC((v12 > 1), v13 + 1, 1, v9);
          v9 = result;
        }

        v4 &= v4 - 1;
        *(v9 + 2) = v13 + 1;
        *&v9[8 * v13 + 32] = v11;
      }

      while (v4);
    }
  }

  v14 = v0[6];
  v15 = v0[4];

  v16 = sub_26936F7D0(v9);

  v17 = v0[1];

  return v17(v16);
}

unint64_t sub_2693707F0(unint64_t a1, uint64_t a2)
{
  v4 = sub_2693B3420();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2693B3410();
  v9 = sub_2693B3400();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    sub_2693B3410();
    v11 = sub_2693B33F0();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {

      return a1;
    }
  }

  v47 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_52:
    v12 = sub_2693B3C70();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    v29 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_28;
  }

  v13 = 0;
  v45 = a1 & 0xFFFFFFFFFFFFFF8;
  v46 = a1 & 0xC000000000000001;
  v14 = *MEMORY[0x277D29768];
  do
  {
    if (v46)
    {
      v15 = MEMORY[0x26D639EB0](v13, a1);
    }

    else
    {
      if (v13 >= *(v45 + 16))
      {
        goto LABEL_49;
      }

      v15 = *(a1 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v18 = a1;
    v19 = [v15 title];
    if (!v19)
    {
      sub_2693B3750();
LABEL_22:

      goto LABEL_23;
    }

    v20 = v19;
    v21 = sub_2693B3750();
    v23 = v22;

    v24 = sub_2693B3750();
    if (!v23)
    {
      goto LABEL_22;
    }

    if (v21 == v24 && v23 == v25)
    {

      goto LABEL_8;
    }

    v27 = sub_2693B3CE0();

    if (v27)
    {

      goto LABEL_8;
    }

LABEL_23:
    sub_2693B3C00();
    v28 = *(v47 + 16);
    sub_2693B3C30();
    sub_2693B3C40();
    sub_2693B3C10();
LABEL_8:
    ++v13;
    a1 = v18;
  }

  while (v17 != v12);
  v29 = v47;
  v48 = MEMORY[0x277D84F90];
  if (v47 < 0)
  {
LABEL_53:
    v30 = sub_2693B3C70();
    if (!v30)
    {
      goto LABEL_54;
    }

LABEL_30:
    v31 = 0;
    a1 = v29 & 0xC000000000000001;
    v32 = a2 + 56;
    while (1)
    {
      if (a1)
      {
        v33 = MEMORY[0x26D639EB0](v31, v29);
      }

      else
      {
        if (v31 >= *(v29 + 16))
        {
          goto LABEL_51;
        }

        v33 = *(v29 + 32 + 8 * v31);
      }

      v34 = v33;
      if (__OFADD__(v31++, 1))
      {
        goto LABEL_50;
      }

      v36 = [v33 state];
      if (*(a2 + 16) && (v37 = v36, v38 = *(a2 + 40), sub_2693B3DB0(), MEMORY[0x26D63A0A0](v37), v39 = sub_2693B3DD0(), v40 = -1 << *(a2 + 32), v41 = v39 & ~v40, ((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
      {
        v42 = ~v40;
        while (*(*(a2 + 48) + 8 * v41) != v37)
        {
          v41 = (v41 + 1) & v42;
          if (((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
LABEL_41:
        if (([v34 isFiring] & 1) == 0 || objc_msgSend(v34, sel_type) == 2)
        {

          if (v31 == v30)
          {
            goto LABEL_46;
          }

          continue;
        }
      }

      sub_2693B3C00();
      v43 = *(v48 + 16);
      sub_2693B3C30();
      sub_2693B3C40();
      sub_2693B3C10();
      if (v31 == v30)
      {
LABEL_46:
        a1 = v48;
        goto LABEL_55;
      }
    }
  }

LABEL_28:
  if ((v29 & 0x4000000000000000) != 0)
  {
    goto LABEL_53;
  }

  v30 = *(v29 + 16);
  if (v30)
  {
    goto LABEL_30;
  }

LABEL_54:
  a1 = MEMORY[0x277D84F90];
LABEL_55:

  return a1;
}

uint64_t sub_269370C58(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D228, &qword_2693B61C8) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26936CB14(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_68Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269370E18(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_269370EBC(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208) - 8) + 80);

  return sub_269368584(a1);
}

uint64_t objectdestroy_83Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269370FCC()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D258, &qword_2693B6208);
  return sub_2693B3900();
}

uint64_t sub_26937107C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_2693B33D0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D1F8, &qword_2693B6170) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_2693B33D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x2821FE8E8](v2, v13 + v14, v15 | 7);
}

uint64_t sub_2693712D8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(sub_2693B33D0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  return sub_269368CA8(a1, v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t sub_269371428()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D260);
  v1 = __swift_project_value_buffer(v0, qword_28030D260);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693714F0()
{
  v0 = sub_2693B31C0();
  __swift_allocate_value_buffer(v0, qword_280E26A50);
  __swift_project_value_buffer(v0, qword_280E26A50);
  return sub_2693B31B0();
}

BOOL SiriDevice.isEqual(_:)(uint64_t a1)
{
  sub_269373298(a1, v80);
  if (!v81)
  {
    sub_269373308(v80);
    return 0;
  }

  type metadata accessor for SiriDevice();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v1;
  if (qword_28030CE10 != -1)
  {
    swift_once();
  }

  v3 = sub_2693B3620();
  __swift_project_value_buffer(v3, qword_28030D260);
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26933F000, v4, v5, "☔️ SiriDevice isEqual Check", v6, 2u);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  v7 = v2;
  v8 = [v2 roomName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2693B3750();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v79 roomName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2693B3750();
    v17 = v16;

    if (v12)
    {
      if (!v17)
      {
        goto LABEL_88;
      }

      if (v10 == v15 && v12 == v17)
      {
      }

      else
      {
        v18 = sub_2693B3CE0();

        if ((v18 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v17)
    {
      goto LABEL_90;
    }
  }

  else if (v12)
  {
    goto LABEL_88;
  }

  v19 = [v7 deviceName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2693B3750();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [v79 deviceName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2693B3750();
    v28 = v27;

    if (v23)
    {
      if (!v28)
      {
        goto LABEL_88;
      }

      if (v21 == v26 && v23 == v28)
      {
      }

      else
      {
        v29 = sub_2693B3CE0();

        if ((v29 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v28)
    {
      goto LABEL_90;
    }
  }

  else if (v23)
  {
    goto LABEL_88;
  }

  v30 = [v7 assistantId];
  if (v30)
  {
    v31 = v30;
    v32 = sub_2693B3750();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [v79 assistantId];
  if (v35)
  {
    v36 = v35;
    v37 = sub_2693B3750();
    v39 = v38;

    if (v34)
    {
      if (!v39)
      {
        goto LABEL_88;
      }

      if (v32 == v37 && v34 == v39)
      {
      }

      else
      {
        v40 = sub_2693B3CE0();

        if ((v40 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v39)
    {
      goto LABEL_90;
    }
  }

  else if (v34)
  {
    goto LABEL_88;
  }

  v41 = [v7 accessoryId];
  if (v41)
  {
    v42 = v41;
    v43 = sub_2693B3750();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = [v79 accessoryId];
  if (v46)
  {
    v47 = v46;
    v48 = sub_2693B3750();
    v50 = v49;

    if (v45)
    {
      if (!v50)
      {
        goto LABEL_88;
      }

      if (v43 == v48 && v45 == v50)
      {
      }

      else
      {
        v51 = sub_2693B3CE0();

        if ((v51 & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v50)
    {
      goto LABEL_90;
    }
  }

  else if (v45)
  {
    goto LABEL_88;
  }

  v52 = [v7 homeID];
  if (v52)
  {
    v53 = v52;
    v54 = sub_2693B3750();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v57 = [v79 homeID];
  if (!v57)
  {
    if (v56)
    {
      goto LABEL_88;
    }

    goto LABEL_78;
  }

  v58 = v57;
  v59 = sub_2693B3750();
  v61 = v60;

  if (!v56)
  {
    if (!v61)
    {
      goto LABEL_78;
    }

LABEL_90:

    goto LABEL_91;
  }

  if (!v61)
  {
    goto LABEL_88;
  }

  if (v54 == v59 && v56 == v61)
  {
  }

  else
  {
    v62 = sub_2693B3CE0();

    if ((v62 & 1) == 0)
    {
      goto LABEL_91;
    }
  }

LABEL_78:
  v63 = [v7 accessoryType];
  if (v63)
  {
    v64 = v63;
    v65 = sub_2693B3750();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = [v79 accessoryType];
  if (!v68)
  {
    if (!v67)
    {
      goto LABEL_94;
    }

LABEL_88:

    return 0;
  }

  v69 = v68;
  v70 = sub_2693B3750();
  v72 = v71;

  if (!v67)
  {
    if (!v72)
    {
      goto LABEL_94;
    }

    goto LABEL_90;
  }

  if (!v72)
  {
    goto LABEL_88;
  }

  if (v65 == v70 && v67 == v72)
  {

    goto LABEL_94;
  }

  v74 = sub_2693B3CE0();

  if ((v74 & 1) == 0)
  {
LABEL_91:

    return 0;
  }

LABEL_94:
  v75 = [v7 isRespondingDevice];
  v76 = [v79 isRespondingDevice];
  v77 = v76;
  if (!v75)
  {

    if (!v77)
    {
      return 1;
    }

    return 0;
  }

  if (!v76)
  {

    goto LABEL_91;
  }

  sub_269373370();
  v78 = sub_2693B3A50();

  return (v78 & 1) != 0;
}

id sub_269371C94(void *a1)
{
  v2 = v1;
  v4 = sub_2693B31C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - v9;
  v11 = [a1 uniqueIdentifier];
  sub_2693B31A0();

  if (qword_28030CE10 != -1)
  {
    swift_once();
  }

  v12 = sub_2693B3620();
  v13 = __swift_project_value_buffer(v12, qword_28030D260);
  v14 = a1;
  v66 = v13;
  v15 = sub_2693B3610();
  v16 = sub_2693B39B0();

  v17 = os_log_type_enabled(v15, v16);
  v68 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v65 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v64 = v5;
    v21 = v20;
    v69 = v20;
    *v19 = 136315138;
    v22 = v14;
    v23 = [v22 description];
    v24 = v2;
    v25 = sub_2693B3750();
    v27 = v26;

    v28 = v25;
    v2 = v24;
    v29 = sub_26934CA40(v28, v27, &v69);

    *(v19 + 4) = v29;
    _os_log_impl(&dword_26933F000, v15, v16, "Creating SiriDevice from accessory: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v30 = v21;
    v5 = v64;
    MEMORY[0x26D63A640](v30, -1, -1);
    v31 = v19;
    v4 = v65;
    MEMORY[0x26D63A640](v31, -1, -1);
  }

  v32 = objc_allocWithZone(v2);
  sub_2693B3180();
  v33 = sub_2693B3740();

  v34 = sub_2693B3740();
  v35 = [v32 initWithIdentifier:v33 displayString:v34];

  v36 = v35;
  v37 = [v14 name];
  if (!v37)
  {
    sub_2693B3750();
    v37 = sub_2693B3740();
  }

  [v36 setDeviceName_];

  v38 = [v14 room];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 name];

    if (!v40)
    {
      sub_2693B3750();
      v40 = sub_2693B3740();
    }
  }

  else
  {
    v40 = 0;
  }

  [v36 setRoomName_];

  sub_2693B3180();
  v41 = sub_2693B3740();

  [v36 setAccessoryId_];

  v42 = [v14 assistantIdentifier];
  [v36 setAssistantId_];

  v43 = [v14 home];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 uniqueIdentifier];

    v46 = v67;
    sub_2693B31A0();

    sub_2693B3180();
    (*(v5 + 8))(v46, v4);
    v47 = sub_2693B3740();
  }

  else
  {
    v47 = 0;
    v46 = v67;
  }

  [v36 setHomeID_];

  v48 = [v14 category];
  v49 = [v48 categoryType];

  if (!v49)
  {
    sub_2693B3750();
    v49 = sub_2693B3740();
  }

  [v36 setAccessoryType_];

  v50 = [v14 room];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 uniqueIdentifier];

    sub_2693B31A0();
    sub_2693B3180();
    (*(v5 + 8))(v46, v4);
    v53 = sub_2693B3740();
  }

  else
  {
    v53 = 0;
  }

  [v36 setRoomID_];

  v54 = v36;
  v55 = sub_2693B3610();
  v56 = sub_2693B39B0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v69 = v58;
    *v57 = 136315138;
    v59 = sub_26937238C();
    v61 = v60;

    v62 = sub_26934CA40(v59, v61, &v69);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_26933F000, v55, v56, "SiriDevice.init(accessory:) %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x26D63A640](v58, -1, -1);
    MEMORY[0x26D63A640](v57, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v68, v4);
  return v54;
}

uint64_t sub_26937238C()
{
  swift_getObjectType();
  sub_2693733BC();
  return sub_2693B3CB0();
}

void sub_2693723DC()
{
  type metadata accessor for SiriDevice();
  if (qword_280E266C0 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B31C0();
  __swift_project_value_buffer(v0, qword_280E26A50);
  sub_2693B3180();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_2693B3740();

  v3 = sub_2693B3740();
  v4 = [v1 initWithIdentifier:v2 displayString:v3];

  sub_269373370();
  v5 = sub_2693B3A20();
  [v4 setIsRespondingDevice_];

  qword_280E26A68 = v4;
}

void *sub_2693724F4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v88[3] = a4;
  v88[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v87 = 0;
  v10 = [a1 roomNames];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2693B3820();

    v13 = *(v12 + 16);
    if (v13)
    {
      v86 = MEMORY[0x277D84F90];
      sub_26939D4BC(0, v13, 0);
      v14 = v86;
      v15 = (v12 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v18 = sub_2693B3770();
        v86 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          v23 = v18;
          v24 = v19;
          sub_26939D4BC((v20 > 1), v21 + 1, 1);
          v19 = v24;
          v18 = v23;
          v14 = v86;
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v15 += 2;
        --v13;
      }

      while (v13);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v14 = 0;
  }

  v25 = [a1 deviceNames];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2693B3820();

    v28 = *(v27 + 16);
    if (v28)
    {
      v84 = 0;
      v86 = MEMORY[0x277D84F90];
      sub_26939D4BC(0, v28, 0);
      v29 = v86;
      v30 = (v27 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v33 = sub_2693B3770();
        v86 = v29;
        v36 = v29[2];
        v35 = v29[3];
        if (v36 >= v35 >> 1)
        {
          v83 = v33;
          v38 = a3;
          v39 = v34;
          sub_26939D4BC((v35 > 1), v36 + 1, 1);
          v34 = v39;
          a3 = v38;
          v33 = v83;
          v29 = v86;
        }

        v29[2] = v36 + 1;
        v37 = &v29[2 * v36];
        v37[4] = v33;
        v37[5] = v34;
        v30 += 2;
        --v28;
      }

      while (v28);

      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
      if (!v14)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v29 = 0;
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  if (*(v14 + 16))
  {
    goto LABEL_24;
  }

LABEL_22:
  if (v29)
  {
    if (v29[2])
    {
LABEL_24:
      if (qword_28030CE10 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }
  }

  if (a3 >> 62)
  {
    v14 = sub_2693B3C70();
    if (v14)
    {
LABEL_34:
      a1 = 0;
      v65 = a3 & 0xC000000000000001;
      v66 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v65)
        {
          v68 = a3;
          v69 = MEMORY[0x26D639EB0](a1, a3);
        }

        else
        {
          if (a1 >= *(v66 + 16))
          {
            goto LABEL_46;
          }

          v68 = a3;
          v69 = *(a3 + 8 * a1 + 32);
        }

        v54 = v69;
        a3 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        v29 = [v69 isRespondingDevice];
        sub_269373370();
        v70 = sub_2693B3A30();
        v71 = v70;
        if (v29)
        {
          v72 = sub_2693B3A50();

          if (v72)
          {
            [v54 setTargetMatchType_];
            goto LABEL_50;
          }
        }

        else
        {
        }

        ++a1;
        v67 = a3 == v14;
        a3 = v68;
        if (v67)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
LABEL_25:
      v40 = sub_2693B3620();
      v41 = __swift_project_value_buffer(v40, qword_28030D260);
      v42 = a1;
      v43 = sub_2693B3610();
      v44 = sub_2693B39B0();

      if (os_log_type_enabled(v43, v44))
      {
        v83 = v41;
        v45 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v86 = v82;
        *v45 = 136315138;
        v46 = v42;
        v81 = v44;
        v47 = v42;
        v48 = [v46 description];
        v49 = sub_2693B3750();
        v84 = a3;
        v51 = v50;

        v42 = v47;
        v52 = sub_26934CA40(v49, v51, &v86);
        a3 = v84;

        *(v45 + 4) = v52;
        _os_log_impl(&dword_26933F000, v43, v81, "Matching against targetingInfo: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x26D63A640](v82, -1, -1);
        MEMORY[0x26D63A640](v45, -1, -1);
      }

      MEMORY[0x28223BE20](v53);
      v80[2] = v14;
      v80[3] = &v87;
      v80[4] = v29;
      v80[5] = v88;
      v80[6] = v42;
      v54 = sub_2693965F4(sub_269373414, v80, a3);

      if (v54)
      {
        [v54 setTargetMatchType_];
      }

      v55 = v54;
      v56 = sub_2693B3610();
      v57 = sub_2693B39B0();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v85 = v54;
        v86 = v59;
        *v58 = 136315138;
        v60 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF40, &unk_2693B57D0);
        v61 = sub_2693B3760();
        v63 = sub_26934CA40(v61, v62, &v86);

        *(v58 + 4) = v63;
        v64 = "Matched device: %s";
LABEL_54:
        _os_log_impl(&dword_26933F000, v56, v57, v64, v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x26D63A640](v59, -1, -1);
        MEMORY[0x26D63A640](v58, -1, -1);
        goto LABEL_55;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_34;
    }
  }

LABEL_49:
  v54 = 0;
LABEL_50:
  if (qword_28030CE10 != -1)
  {
    swift_once();
  }

  v73 = sub_2693B3620();
  __swift_project_value_buffer(v73, qword_28030D260);
  v74 = v54;
  v56 = sub_2693B3610();
  v57 = sub_2693B39B0();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v85 = v54;
    v86 = v59;
    *v58 = 136315138;
    v75 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF40, &unk_2693B57D0);
    v76 = sub_2693B3760();
    v78 = sub_26934CA40(v76, v77, &v86);

    *(v58 + 4) = v78;
    v64 = "No targeting info – using local device as target: %s";
    goto LABEL_54;
  }

LABEL_55:

  __swift_destroy_boxed_opaque_existential_1(v88);
  return v54;
}