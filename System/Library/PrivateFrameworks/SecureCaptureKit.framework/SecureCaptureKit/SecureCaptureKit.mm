uint64_t SharedSecureCaptureSessionActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264EF2EA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SharedSecureCaptureSessionActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_264EF2EF8(uint64_t *a1)
{
  qword_27FFBD920 = *a1;
}

id SecureCaptureSession.__allocating_init(sceneDelegate:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_264EF9E2C(a1);

  return v5;
}

id SecureCaptureSession.init(sceneDelegate:)(void *a1)
{
  v2 = sub_264EF9E2C(a1);

  return v2;
}

uint64_t sub_264EF2FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_264F13314();
  v5[4] = sub_264F13304();
  v7 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF304C, v7, v6);
}

uint64_t sub_264EF304C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = v2;
  sub_264F0F99C(v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_264EF30BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_264EFBAD4(a3, v26 - v10, &qword_27FFBD978, &qword_264F14E00);
  v12 = sub_264F13334();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_264EFB174(v11, &qword_27FFBD978, &qword_264F14E00);
  }

  else
  {
    sub_264F13324();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_264F132D4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_264F13234() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_264EFB174(a3, &qword_27FFBD978, &qword_264F14E00);

      return v24;
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

  sub_264EFB174(a3, &qword_27FFBD978, &qword_264F14E00);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t SecureCaptureSession.sessionContentsURL.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EF33DC, 0, 0);
}

uint64_t sub_264EF33DC()
{
  v1 = v0[2];
  v2 = [*(v0[3] + 16) url];
  sub_264F13004();

  v3 = v0[1];

  return v3();
}

id SecureCaptureSession._sceneDelegate.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

id SecureCaptureSession.sceneDelegate.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_264EF34F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  *a2 = v4;
}

void (*SecureCaptureSession.sceneDelegate.modify(void *a1))(id *a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_264EF35B0;
}

uint64_t SecureCaptureSession.urlsToOpen.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD968, &qword_264F15510);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  v6 = *(v0 + 24);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 24));
  v8 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_urlContexts;
  swift_beginAccess();
  (*(v2 + 16))(v5, &v7[v8], v1);

  sub_264F13014();
  sub_264EFAF30(&qword_27FFBD970, &qword_27FFBD968, &qword_264F15510);
  return sub_264F13674();
}

uint64_t sub_264EF3744(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_264EF3768, 0, 0);
}

uint64_t sub_264EF3768()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) URL];
  sub_264F13004();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264EF3808(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20]();
  v11 = &v16 - v10;
  if (!a3 && a2 >> 60 != 15)
  {
    v12 = sub_264F13334();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_264F13314();
    sub_264EFB7B4(a1, a2);

    v13 = sub_264F13304();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = a4;
    v14[5] = a1;
    v14[6] = a2;
    sub_264EF30BC(0, 0, v11, &unk_264F14D68, v14);
  }

  return result;
}

uint64_t sub_264EF3960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  sub_264F13314();
  v6[13] = sub_264F13304();
  v8 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF39FC, v8, v7);
}

uint64_t sub_264EF39FC()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = *(v2 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  v5 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v6 = *&v4[v5];
  v7 = v6;

  if (v6)
  {
    v8 = [v7 windowScene];

    if (v8)
    {
      v10 = v0[11];
      v9 = v0[12];
      v11 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v12 = sub_264F13024();
      v13 = [v11 initWithData_];

      if (v13)
      {
        v14 = [objc_allocWithZone(SESecureCaptureOpenApplicationAction) initWithUserActivity:v13 responder:0];
        v15 = [v8 _FBSScene];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC8, &qword_264F14D30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_264F147C0;
        *(inited + 32) = v14;
        v17 = v14;
        sub_264F02E9C(inited);
        swift_setDeallocating();
        v18 = *(inited + 16);
        swift_arrayDestroy();
        sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        sub_264EFB470();
        v19 = sub_264F13364();

        [v15 sendActions_];
      }
    }
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_264EF3C40(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_264F13034();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_264EFB958(v4, v9);
}

void sub_264EF3CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_264EFA0B8(MEMORY[0x277D84F90]);
  v8 = sub_264F131C4();

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v3;
  v9[5] = v7;
  v11[4] = sub_264EFB7A8;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_264EF3C40;
  v11[3] = &block_descriptor_95;
  v10 = _Block_copy(v11);

  [a1 _createUserActivityDataWithOptions_completionHandler_];
  _Block_release(v10);
}

void sub_264EF3E58(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v23 - v15;
  if (a3 || a2 >> 60 == 15)
  {
    sub_264EFA8CC();
    v21 = swift_allocError();
    *v22 = 0;
    a4(v21, 1);
  }

  else
  {
    v17 = sub_264F13334();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    sub_264F13314();
    sub_264EFB7B4(a1, a2);
    sub_264EFB7B4(a1, a2);

    v18 = sub_264F13304();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = a6;
    v19[5] = a1;
    v19[6] = a2;
    v19[7] = a4;
    v19[8] = a5;
    v19[9] = a7;
    sub_264EF30BC(0, 0, v16, &unk_264F14D58, v19);
    sub_264EFB958(a1, a2);
  }
}

uint64_t sub_264EF4054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v13;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  sub_264F13314();
  v8[22] = sub_264F13304();
  v10 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF40FC, v10, v9);
}

uint64_t sub_264EF40FC()
{
  v1 = v0[22];
  v2 = v0[16];

  v3 = *(v2 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  v5 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v6 = *&v4[v5];
  v7 = v6;

  if (v6)
  {
    v8 = [v7 windowScene];

    if (v8)
    {
      v10 = v0[17];
      v9 = v0[18];
      v11 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v12 = sub_264F13024();
      v13 = [v11 initWithData_];

      if (v13)
      {
        v14 = v0[19];
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = *(v0 + 10);
        v0[6] = sub_264EFB9A4;
        v0[7] = v15;
        v0[2] = MEMORY[0x277D85DD0];
        v0[3] = 1107296256;
        v0[4] = sub_264F01334;
        v0[5] = &block_descriptor_105;
        v16 = _Block_copy(v0 + 2);
        v17 = objc_opt_self();

        v18 = [v17 responderWithHandler_];
        _Block_release(v16);
        v19 = v0[7];

        v20 = [objc_allocWithZone(SESecureCaptureOpenApplicationAction) initWithUserActivity:v13 responder:v18];
        v21 = [v8 _FBSScene];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC8, &qword_264F14D30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_264F147C0;
        *(inited + 32) = v20;
        v23 = v20;
        sub_264F02E9C(inited);
        swift_setDeallocating();
        v24 = *(inited + 16);
        swift_arrayDestroy();
        sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        sub_264EFB470();
        v25 = sub_264F13364();

        [v21 sendActions_];

        goto LABEL_7;
      }
    }
  }

  v27 = v0[19];
  v26 = v0[20];
  sub_264EFA8CC();
  v28 = swift_allocError();
  *v29 = 0;
  v27(v28, 1);

LABEL_7:
  v30 = v0[1];

  return v30();
}

void sub_264EF4468(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAB8, &qword_264F153D0);
  if (swift_dynamicCast())
  {
    v4 = v22;
  }

  else
  {
    v21 = sub_264F12FC4();
    v5 = [v21 underlyingErrors];
    v6 = sub_264F13294();

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = *MEMORY[0x277D0ABC8];
      while (1)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        v10 = *(v6 + 8 * v8 + 32);
        v11 = v10;
        v12 = sub_264F12FC4();
        v13 = [v12 domain];

        v14 = sub_264F13214();
        v16 = v15;

        if (v14 == sub_264F13214() && v16 == v17)
        {
          break;
        }

        v19 = sub_264F136F4();

        if (v19)
        {
          goto LABEL_14;
        }

        ++v8;

        if (v7 == v8)
        {
          goto LABEL_12;
        }
      }

LABEL_14:

      sub_264EFB608(0, &qword_27FFBDF60, 0x277CCA9B8);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_19;
      }

      v20 = [v22 code];

      v4 = v20 == 4;
      if (v20 == 7)
      {
        v4 = 2;
      }
    }

    else
    {
LABEL_12:

LABEL_19:
      v4 = 0;
    }
  }

  *a2 = v4;
}

uint64_t sub_264EF46C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v18 - v10;
  v12 = sub_264F13334();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_264F13314();

  v13 = a1;
  v14 = sub_264F13304();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v4;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = v13;
  v15[8] = v8;
  sub_264EF30BC(0, 0, v11, &unk_264F14D48, v15);
}

uint64_t sub_264EF4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  sub_264F13314();
  v8[21] = sub_264F13304();
  v10 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF48E4, v10, v9);
}

uint64_t sub_264EF48E4()
{
  v1 = v0[21];
  v2 = v0[16];

  v3 = *(v2 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  v5 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v6 = *&v4[v5];
  v7 = v6;

  if (v6 && (v8 = [v7 windowScene], v7, v8))
  {
    v9 = v0[19];
    v10 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v11;
    v13[4] = v10;
    v0[6] = sub_264EFBDA4;
    v0[7] = v13;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_264F01334;
    v0[5] = &block_descriptor_86;
    v14 = _Block_copy(v0 + 2);
    v15 = objc_opt_self();

    v16 = [v15 responderWithHandler_];
    _Block_release(v14);
    v17 = v0[7];

    v18 = [objc_allocWithZone(SESecureCaptureOpenApplicationAfterTransitionCompletionAction) initWithUserActivity:v9 responder:v16];
    v19 = [v8 _FBSScene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC8, &qword_264F14D30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264F147C0;
    *(inited + 32) = v18;
    v21 = v18;
    sub_264F02E9C(inited);
    swift_setDeallocating();
    v22 = *(inited + 16);
    swift_arrayDestroy();
    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    sub_264EFB470();
    v23 = sub_264F13364();

    [v19 sendActions_];
  }

  else
  {
    v25 = v0[17];
    v24 = v0[18];
    sub_264EFA8CC();
    v26 = swift_allocError();
    *v27 = 0;
    v25(v26, 1);
  }

  v28 = v0[1];

  return v28();
}

void sub_264EF4BF4(void *a1, void (*a2)(void *, uint64_t))
{
  v3 = [a1 error];
  if (v3)
  {
    v6 = v3;
    sub_264EFA8CC();
    v4 = swift_allocError();
    sub_264EF4468(v6, v5);
    a2(v4, 1);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t SecureCaptureSession.openApplication(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EF4CE8, 0, 0);
}

uint64_t sub_264EF4CE8()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_264EF4DD8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264EF4DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_264EF4F0C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_264EF4EF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264EF4F0C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t SecureCaptureSession.openApplicationAfterTransitionCompletion(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_264F13314();
  v2[5] = sub_264F13304();
  v4 = sub_264F132D4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_264EF500C, v4, v3);
}

uint64_t sub_264EF500C()
{
  v1 = v0[2].i64[0];
  v6 = v0[1];
  v0[4].i64[0] = sub_264F13304();
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v6, v6, 8uLL);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_264EF5120;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264EF5120()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_264EF52A8;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_264EF5244;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_264EF5244()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264EF52A8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_264EF5320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDAE0, &qword_264F14D38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  a6(a3, a5, v16);
}

uint64_t sub_264EF5478(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDAE0, &qword_264F14D38);
    return sub_264F132E4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDAE0, &qword_264F14D38);
    return sub_264F132F4();
  }
}

uint64_t sub_264EF550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_264F13314();
  v5[12] = sub_264F13304();
  v7 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF55A4, v7, v6);
}

uint64_t sub_264EF55A4()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = *(v2 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  v5 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v6 = *&v4[v5];
  v7 = v6;

  if (v6)
  {
    v8 = [v7 windowScene];

    if (v8)
    {
      v9 = v0[11];
      v10 = objc_allocWithZone(SESecureCaptureOpenApplicationAction);
      v11 = sub_264F12FD4();
      v12 = [v10 initWithURL:v11 responder:0];

      v13 = [v8 _FBSScene];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC8, &qword_264F14D30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_264F147C0;
      *(inited + 32) = v12;
      v15 = v12;
      sub_264F02E9C(inited);
      swift_setDeallocating();
      v16 = *(inited + 16);
      swift_arrayDestroy();
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      sub_264EFB470();
      v17 = sub_264F13364();

      [v13 sendActions_];
    }
  }

  v18 = v0[1];

  return v18();
}

void SecureCaptureSession.__allocating_init(delegate:)()
{
  if (![objc_opt_self() temporarySessionPathWithType_])
  {
    __break(1u);
  }

  sub_264F13684();
  __break(1u);
}

void SecureCaptureSession.init(delegate:)()
{
  v1 = [objc_opt_self() temporarySessionPathWithType_];
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + 16) = v1;
  v2 = OBJC_IVAR____TtC16SecureCaptureKit20SecureCaptureSession_sessionContentsPath;
  v3 = sub_264F13014();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  sub_264F13684();
  __break(1u);
}

void sub_264EF5988(void *a1, uint64_t a2, uint64_t a3)
{
  sub_264EFA0B8(MEMORY[0x277D84F90]);
  v7 = sub_264F131C4();

  v9[4] = a2;
  v10 = v3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_264EF3C40;
  v9[3] = a3;
  v8 = _Block_copy(v9);

  [a1 _createUserActivityDataWithOptions_completionHandler_];
  _Block_release(v8);
}

uint64_t sub_264EF5AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_264F13014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v19 - v11;
  v13 = sub_264F13334();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_264F13314();

  v14 = sub_264F13304();
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = v5;
  (*(v8 + 32))(&v16[v15], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_264EF30BC(0, 0, v12, a3, v16);
}

unint64_t SecureCaptureSession.ApplicationLaunchError.failureReason.getter()
{
  v1 = 0xD00000000000002ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000063;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t SecureCaptureSession.ApplicationLaunchError.hashValue.getter()
{
  v1 = *v0;
  sub_264F137C4();
  MEMORY[0x266752E30](v1);
  return sub_264F137F4();
}

uint64_t sub_264EF5DB8()
{
  v1 = *v0;
  sub_264F137C4();
  MEMORY[0x266752E30](v1);
  return sub_264F137F4();
}

uint64_t sub_264EF5E2C()
{
  v1 = *v0;
  sub_264F137C4();
  MEMORY[0x266752E30](v1);
  return sub_264F137F4();
}

unint64_t sub_264EF5E9C()
{
  v1 = 0xD00000000000002ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000063;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t sub_264EF5EFC(uint64_t a1)
{
  v2 = sub_264EFB018();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_264EF5F38(uint64_t a1)
{
  v2 = sub_264EFB018();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t SecureCaptureSession.deinit()
{
  v1 = *(v0 + 24);

  sub_264EFB174(v0 + OBJC_IVAR____TtC16SecureCaptureKit20SecureCaptureSession_sessionContentsPath, &qword_27FFBD980, &qword_264F14820);
  return v0;
}

uint64_t SecureCaptureSession.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_264EFB174(v0 + OBJC_IVAR____TtC16SecureCaptureKit20SecureCaptureSession_sessionContentsPath, &qword_27FFBD980, &qword_264F14820);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_264EF6068(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a3 = v4;
  return result;
}

uint64_t sub_264EF60F0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_264EF6154(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SharedSecureCaptureSessionStorageActor();

  return MEMORY[0x2822005F8](v3, a2);
}

size_t sub_264EF618C()
{
  v0 = type metadata accessor for SecureCaptureSessionStorage(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = SecureCaptureSessionStorage.init()();
  if (result)
  {
    qword_27FFBD940 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t SecureCaptureSessionStorage.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return SecureCaptureSessionStorage.init()();
}

uint64_t sub_264EF622C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_264EF62DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_264EF63A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_264EF6488(v4);
}

uint64_t sub_264EF63CC()
{
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_264EF6488(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_264EF9784(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
    sub_264F13074();
  }
}

uint64_t sub_264EF65D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*sub_264EF663C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16SecureCaptureKit27SecureCaptureSessionStorage___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  *v4 = v1;
  swift_getKeyPath();
  sub_264F130A4();

  v4[7] = sub_264EF628C();
  return sub_264EF6778;
}

uint64_t sub_264EF6784()
{
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_264EF6840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_264EF6904(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_264EF6930(v4);
}

uint64_t sub_264EF6930(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  sub_264EF999C(v4, a1);
  v6 = v5;

  if (v6)
  {
    v7 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
    sub_264F13074();
  }
}

uint64_t sub_264EF6A7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

size_t SecureCaptureSessionStorage.init()()
{
  v1 = v0;
  v21 = sub_264F13014();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[4] = 0;
  sub_264F130B4();
  v6 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
  v7 = sub_264F13294();

  if (v7 >> 62)
  {
    v8 = sub_264F13584();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_13:
    v1[2] = v9;
    v17 = v1[4];
    swift_bridgeObjectRetain_n();

    v1[4] = v9;
    v18 = sub_264EFA6B8(v9, v7);

    v1[3] = v18;
    return v1;
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_264EF8FE4(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = v1;
    v11 = 0;
    v9 = v22;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x266752CA0](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 url];
      sub_264F13004();

      v22 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_264EF8FE4(v15 > 1, v16 + 1, 1);
        v9 = v22;
      }

      ++v11;
      *(v9 + 16) = v16 + 1;
      (*(v2 + 32))(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v5, v21);
    }

    while (v8 != v11);
    v1 = v20;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_264EF6D84(uint64_t a1)
{
  swift_beginAccess();
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
    sub_264F13074();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 32);

  v5 = sub_264EF9784(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + 32);
LABEL_7:
  *(v1 + 32) = a1;
}

void sub_264EF6EE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264F13014();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v1;
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    swift_getKeyPath();
    v19 = v1;
    sub_264F13084();

    v8 = *(v1 + 16);

    v9 = sub_264EF72F4(a1, v8);
    v11 = v10;

    swift_getKeyPath();
    v19 = v2;
    sub_264F13084();

    swift_beginAccess();
    v12 = *(v2 + 24);
    if (*(v12 + 16))
    {
      v13 = *(v2 + 24);

      v14 = sub_264EF7F38(a1);
      if (v15)
      {
        v16 = *(*(v12 + 56) + 8 * v14);

        if ((v11 & 1) == 0 && ([v16 isTemporaryPath] & 1) == 0)
        {
          [v16 invalidate];
          (*(v17 + 16))(v7, a1, v4);
          swift_getKeyPath();
          v18 = v2;
          sub_264F13084();

          v18 = v2;
          swift_getKeyPath();
          sub_264F130A4();

          swift_beginAccess();
          sub_264EF7418(0, v7);
          swift_endAccess();
          v18 = v2;
          swift_getKeyPath();
          sub_264F13094();

          swift_getKeyPath();
          v18 = v2;
          sub_264F13084();

          v18 = v2;
          swift_getKeyPath();
          sub_264F130A4();

          swift_beginAccess();
          sub_264EF75D8(v9, v7);
          (*(v17 + 8))(v7, v4);
          swift_endAccess();
          v18 = v2;
          swift_getKeyPath();
          sub_264F13094();
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_264EF72F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_264F13014() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_264EFA808(&qword_27FFBDAA8, 255, MEMORY[0x277CC9260]);
  v7 = 0;
  while ((sub_264F131F4() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_264EF7418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_264EF9500(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_264F13014();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_264EF7F38(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_264EF8990();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_264F13014();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_264EF91DC(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_264F13014();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_264EF75D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264EFFC68(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_264F13014();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_264EF7734@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_264EF77F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_264EF6D84(v4);
}

uint64_t sub_264EF7824()
{
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_264EF78E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
}

void (*sub_264EF7948(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16SecureCaptureKit27SecureCaptureSessionStorage___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage);
  sub_264F13084();

  *v4 = v1;
  swift_getKeyPath();
  sub_264F130A4();

  v4[7] = sub_264EF76E0();
  return sub_264EF7A84;
}

void sub_264EF7A90(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_264F13094();

  free(v1);
}

char *SecureCaptureSessionStorage.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC16SecureCaptureKit27SecureCaptureSessionStorage___observationRegistrar;
  v5 = sub_264F130C4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t SecureCaptureSessionStorage.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC16SecureCaptureKit27SecureCaptureSessionStorage___observationRegistrar;
  v5 = sub_264F130C4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

BOOL sub_264EF7C70(void *a1, uint64_t *a2)
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

void *sub_264EF7CC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_264EF7D04(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264EF7DFC;

  return v7(a1);
}

uint64_t sub_264EF7DFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_264EF7EF4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_264F135B4();

  return sub_264EF8090(a1, v5);
}

unint64_t sub_264EF7F38(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_264F13014();
  sub_264EFA808(&qword_27FFBDAA0, 255, MEMORY[0x277CC9260]);
  v5 = sub_264F131D4();

  return sub_264EF8158(a1, v5);
}

unint64_t sub_264EF7FD4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_264F137B4();

  return sub_264EF831C(a1, v4);
}

unint64_t sub_264EF8018(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_264F137C4();
  sub_264F13244();
  v6 = sub_264F137F4();

  return sub_264EF8388(a1, a2, v6);
}

unint64_t sub_264EF8090(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_264EFB06C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266752C20](v9, a1);
      sub_264EFB0C8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_264EF8158(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_264F13014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_264EFA808(&qword_27FFBDAA8, 255, MEMORY[0x277CC9260]);
      v16 = sub_264F131F4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_264EF831C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_264EF8388(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264F136F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_264EF8440(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v58 = a4;
  v7 = sub_264F13014();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v59 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAB0, &unk_264F14D00);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - 8);
  v53 = v46 - v15;
  v16 = *(a1 + 16);

  v55 = a2;

  v50 = v16;
  if (!v16)
  {
LABEL_28:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v17 = 0;
  v18 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 < 0)
  {
    v19 = v55;
  }

  else
  {
    v19 = v55 & 0xFFFFFFFFFFFFFF8;
  }

  v46[1] = v19;
  v48 = a1;
  v49 = v55 & 0xC000000000000001;
  v20 = (v54 + 32);
  v51 = v55 >> 62;
  v52 = v54 + 16;
  v47 = v55 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v17 >= *(a1 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      sub_264F13734();
      __break(1u);
      goto LABEL_36;
    }

    v21 = *(v54 + 72);
    (*(v54 + 16))(v12, a1 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v21 * v17, v7);
    if (v51)
    {
      if (v17 == sub_264F13584())
      {
LABEL_29:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        (*(v54 + 8))(v12, v7);
        return;
      }
    }

    else if (v17 == *(v18 + 16))
    {
      goto LABEL_29;
    }

    v56 = v21;
    if (v49)
    {
      v22 = MEMORY[0x266752CA0](v17, v55);
    }

    else
    {
      if (v17 >= *(v18 + 16))
      {
        goto LABEL_33;
      }

      v22 = *(v55 + 8 * v17 + 32);
    }

    v57 = v22;
    v23 = *v20;
    v24 = v53;
    v25 = v12;
    (*v20)(v53, v12, v7);
    v26 = v59;
    v27 = v7;
    v23(v59, v24, v7);
    v28 = *v58;
    v30 = sub_264EF7F38(v26);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_32;
    }

    v34 = v29;
    if (v28[3] < v33)
    {
      break;
    }

    if (a3)
    {
      if (v29)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_264EF8990();
      if (v34)
      {
        goto LABEL_26;
      }
    }

LABEL_19:
    v39 = v59;
    v40 = *v58;
    *(*v58 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    v7 = v27;
    v23((v40[6] + v30 * v56), v39, v27);
    *(v40[7] + 8 * v30) = v57;
    v41 = v40[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_34;
    }

    ++v17;
    v40[2] = v43;
    a3 = 1;
    v18 = v47;
    a1 = v48;
    v12 = v25;
    if (v50 == v17)
    {
      goto LABEL_28;
    }
  }

  v35 = v58;
  sub_264EF8C04(v33, a3 & 1);
  v36 = *v35;
  v37 = sub_264EF7F38(v59);
  if ((v34 & 1) != (v38 & 1))
  {
    goto LABEL_35;
  }

  v30 = v37;
  if ((v34 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_26:
  v44 = swift_allocError();
  swift_willThrow();
  v62 = v44;
  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAB8, &qword_264F153D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v54 + 8))(v59, v27);

    return;
  }

LABEL_36:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_264F13634();
  MEMORY[0x2667528B0](0xD00000000000001BLL, 0x8000000264F15AD0);
  sub_264F13664();
  MEMORY[0x2667528B0](39, 0xE100000000000000);
  sub_264F13684();
  __break(1u);
}

char *sub_264EF8990()
{
  v1 = v0;
  v32 = sub_264F13014();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20]();
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA98, &qword_264F14CF8);
  v4 = *v0;
  v5 = sub_264F136A4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_264EF8C04(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_264F13014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA98, &qword_264F14CF8);
  v43 = a2;
  result = sub_264F136B4();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_264EFA808(&qword_27FFBDAA0, 255, MEMORY[0x277CC9260]);
      result = sub_264F131D4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

size_t sub_264EF8FE4(size_t a1, int64_t a2, char a3)
{
  result = sub_264EF9004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_264EF9004(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC0, &qword_264F14D10);
  v10 = *(sub_264F13014() - 8);
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
  v15 = *(sub_264F13014() - 8);
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

unint64_t sub_264EF91DC(int64_t a1, uint64_t a2)
{
  v43 = sub_264F13014();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_264F13554();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_264EFA808(&qword_27FFBDAA0, 255, MEMORY[0x277CC9260]);
      v26 = sub_264F131D4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

void sub_264EF9500(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_264F13014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_264EF7F38(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_264EF8990();
      goto LABEL_7;
    }

    sub_264EF8C04(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_264EF7F38(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_264EF96CC(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_264F13734();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_264EF96CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_264F13014();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_264EF9784(uint64_t a1, uint64_t a2)
{
  v4 = sub_264F13014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_264EFA808(&qword_27FFBDAA8, 255, MEMORY[0x277CC9260]);
    v22 = sub_264F131F4();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_264EF999C(uint64_t a1, uint64_t a2)
{
  v60 = sub_264F13014();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v60);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA70, &qword_264F14CD8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v52 = a2;
    v53 = v12;
    v14 = 0;
    v50 = a1;
    v17 = *(a1 + 64);
    v16 = a1 + 64;
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15;
    v47 = (v18 + 63) >> 6;
    v48 = v16;
    v49 = v55 + 16;
    v57 = &v47 - v11;
    v58 = (v55 + 32);
    v51 = (v55 + 8);
    while (v20)
    {
      v59 = (v20 - 1) & v20;
      v21 = __clz(__rbit64(v20)) | (v14 << 6);
      v22 = v53;
LABEL_16:
      v27 = v50;
      v28 = v54;
      v29 = v55;
      v30 = v60;
      (*(v55 + 16))(v54, *(v50 + 48) + *(v55 + 72) * v21, v60);
      v31 = *(*(v27 + 56) + 8 * v21);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA78, &qword_264F14CE0);
      v33 = *(v32 + 48);
      (*(v29 + 32))(v22, v28, v30);
      *(v22 + v33) = v31;
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
      v34 = v31;
      v13 = v57;
LABEL_17:
      sub_264EFAFA8(v22, v13);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA78, &qword_264F14CE0);
      if ((*(*(v35 - 8) + 48))(v13, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v56;
      v38 = v60;
      (*v58)(v56, v13, v60);
      v39 = *&v13[v36];
      v40 = v52;
      v41 = sub_264EF7F38(v37);
      v43 = v42;
      (*v51)(v37, v38);
      if ((v43 & 1) == 0)
      {

        return;
      }

      sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
      v44 = *(*(v40 + 56) + 8 * v41);
      v45 = sub_264F13504();

      v13 = v57;
      v20 = v59;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v47 <= v14 + 1)
    {
      v23 = v14 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    v22 = v53;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v47)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA78, &qword_264F14CE0);
        (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
        v59 = 0;
        v14 = v24;
        goto LABEL_17;
      }

      v26 = *(v48 + 8 * v25);
      ++v14;
      if (v26)
      {
        v59 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

id sub_264EF9E2C(void *a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v19 - v5;
  result = [objc_opt_self() temporarySessionPathWithType_];
  if (result)
  {
    v8 = result;
    *(v2 + 16) = result;
    v9 = OBJC_IVAR____TtC16SecureCaptureKit20SecureCaptureSession_sessionContentsPath;
    v10 = sub_264F13014();
    (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
    v11 = sub_264F13334();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_264F13314();
    v12 = v8;
    v13 = a1;
    v14 = sub_264F13304();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = v12;
    sub_264EF30BC(0, 0, v6, &unk_264F14D88, v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDB00, &qword_264F14D90);
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    v18 = v13;

    *(v17 + 16) = v18;
    *(v2 + 24) = v17;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_264EFA0B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAF0, &qword_264F14D70);
    v3 = sub_264F136C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_264EFBAD4(v4, v13, &qword_27FFBDAF8, &qword_264F14D78);
      result = sub_264EF7EF4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_264EFBB3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264EFA2B0(uint64_t a1)
{
  v4 = *(sub_264F13014() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264EFBDA0;

  return sub_264EF550C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = sub_264F13014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_264EFA4B0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA90, &qword_264F14CF0);
  v3 = sub_264F136C4();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_264EF7FD4(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_264EFB11C(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_264EF7FD4(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_264EFA5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA88, &qword_264F14CE8);
    v3 = sub_264F136C4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_264EF8018(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_264EFA6B8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v5 = sub_264F13584();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA98, &qword_264F14CF8);
    v6 = sub_264F136C4();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_264EF8440(a1, a2, 1, &v8);
  return v8;
}

uint64_t sub_264EFA808(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264EFA878()
{
  result = qword_27FFBD9A8;
  if (!qword_27FFBD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBD9A8);
  }

  return result;
}

unint64_t sub_264EFA8CC()
{
  result = qword_27FFBD9B0;
  if (!qword_27FFBD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBD9B0);
  }

  return result;
}

uint64_t sub_264EFA9D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264EFAA08()
{
  sub_264EFAAF4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264EFAAF4()
{
  if (!qword_27FFBD9D8)
  {
    sub_264F13014();
    v0 = sub_264F13514();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFBD9D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SecureCaptureSession.ApplicationLaunchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureCaptureSession.ApplicationLaunchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_264EFACDC()
{
  result = sub_264F130C4();
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

uint64_t sub_264EFAF30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_264EFAFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA70, &qword_264F14CD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264EFB018()
{
  result = qword_27FFBDA80;
  if (!qword_27FFBDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBDA80);
  }

  return result;
}

uint64_t sub_264EFB11C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_264EFB174(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_264EFB1D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264EFB20C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264EFBDA0;

  return sub_264EF7D04(a1, v5);
}

uint64_t sub_264EFB2C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264EFB37C;

  return sub_264EF7D04(a1, v5);
}

uint64_t sub_264EFB37C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_264EFB470()
{
  result = qword_27FFBDCF0;
  if (!qword_27FFBDCF0)
  {
    sub_264EFB608(255, &unk_27FFBDAD0, 0x277CF0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBDCF0);
  }

  return result;
}

uint64_t sub_264EFB4DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_264EFB52C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_264EFBDA0;

  return sub_264EF4844(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264EFB608(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_75Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDAE0, &qword_264F14D38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264EFB768()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264EFB7B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264EFB11C(a1, a2);
  }

  return a1;
}

uint64_t sub_264EFB7C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_264EFB818(v0[5], v0[6]);
  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264EFB818(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_264EFB86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_264EFBDA0;

  return sub_264EF4054(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_264EFB958(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264EFB818(a1, a2);
  }

  return a1;
}

uint64_t sub_264EFB96C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_264EFB9A4(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_264EF4BF4(a1, *(v1 + 16));
}

uint64_t sub_264EFB9C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_264EFB818(v0[5], v0[6]);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264EFBA0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264EFBDA0;

  return sub_264EF3960(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_264EFBAD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_264EFBB3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_264EFBB4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264EFBB94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264EFB37C;

  return sub_264EF2FB4(a1, v4, v5, v7, v6);
}

uint64_t sub_264EFBC60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264EFBC80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_264EFBCC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264EFBCE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_264EFBD24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

size_t sub_264EFBDD0(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBF8, &qword_264F14FD8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v61 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC00, &qword_264F14FE0);
  v12 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v76 = &v61 - v13;
  v14 = type metadata accessor for SecureCaptureManager.URLUpdate();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v65 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_264F13014();
  v18 = *(v17 - 8);
  v74 = v17;
  v75 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v61 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - v22;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC08, &qword_264F14FE8);
  v67 = *(v64 - 8);
  v24 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  v66 = &v61 - v25;
  v26 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
  v27 = sub_264F13294();

  v71 = a2;
  v72 = a1;
  v70 = v6;
  if (v27 >> 62)
  {
    v28 = sub_264F13584();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x277D84F90];
  v63 = v10;
  v73 = v14;
  if (v28)
  {
    v30 = v27;
    v77[0] = MEMORY[0x277D84F90];
    result = sub_264EF8FE4(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      __break(1u);
      return result;
    }

    v68 = v3;
    v32 = 0;
    v29 = v77[0];
    v33 = v30;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x266752CA0](v32, v33);
      }

      else
      {
        v34 = *(v33 + 8 * v32 + 32);
      }

      v35 = v34;
      v36 = [v34 url];
      sub_264F13004();

      v77[0] = v29;
      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_264EF8FE4(v37 > 1, v38 + 1, 1);
        v29 = v77[0];
      }

      ++v32;
      *(v29 + 16) = v38 + 1;
      (*(v75 + 32))(v29 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v38, v23, v74);
      v33 = v30;
    }

    while (v28 != v32);
    v39 = v30;
    v3 = v68;
  }

  else
  {
    v39 = v27;
  }

  v41 = sub_264EFA6B8(v40, v39);

  v77[0] = v29;
  v77[4] = v3[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC18, &qword_264F14FF0);
  sub_264EFAF30(&unk_27FFBDC20, &qword_27FFBDC18, &qword_264F14FF0);
  sub_264F0010C(&qword_27FFBDAA8, MEMORY[0x277CC9260]);
  v42 = v66;
  sub_264F131E4();
  v43 = v3[15];
  v3[15] = v29;

  v44 = v3[16];
  v3[16] = v41;

  v45 = v64;
  if (v3[14])
  {

    v46 = v76;
    (*(v67 + 16))(v76, v42, v45);
    v47 = *(v69 + 36);
    sub_264EFAF30(&qword_27FFBDC30, &qword_27FFBDC08, &qword_264F14FE8);
    sub_264F133B4();
    v48 = v46;
    sub_264F133C4();
    v49 = *&v46[v47];
    v50 = v62;
    v51 = v63;
    v52 = v65;
    v53 = v74;
    v54 = v45;
    v55 = v61;
    if (v49 != v77[0])
    {
      v68 = (v75 + 16);
      v69 = v75 + 32;
      v56 = (v75 + 8);
      do
      {
        v57 = sub_264F133E4();
        sub_264F001B0(v58, v50);
        v57(v77, 0);
        sub_264F133D4();
        sub_264F00220(v50, v51);
        swift_getEnumCaseMultiPayload();
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC38, &qword_264F14FF8);
        (*v69)(v55, v51 + *(v59 + 48), v53);
        (*v68)(v52, v55, v53);
        swift_storeEnumTagMultiPayload();
        v72(v52);
        sub_264F00154(v52);
        (*v56)(v55, v53);
        sub_264F133C4();
        v48 = v76;
      }

      while (*&v76[v47] != v77[0]);
    }

    sub_264F00290(v48);
    return (*(v67 + 8))(v66, v54);
  }

  else
  {
    v60 = v65;
    *v65 = v29;
    swift_storeEnumTagMultiPayload();
    v72(v60);
    sub_264F00154(v60);
    result = (*(v67 + 8))(v42, v45);
    *(v3 + 112) = 1;
  }

  return result;
}

void sub_264EFC58C(uint64_t a1)
{
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v4 = *(v1 + 128);

    sub_264EF72F4(a1, v2);
    v6 = v5;

    if (*(v4 + 16) && (v7 = sub_264EF7F38(a1), (v8 & 1) != 0))
    {
      v9 = *(*(v4 + 56) + 8 * v7);

      if ((v6 & 1) == 0 && ([v9 isTemporaryPath] & 1) == 0)
      {
        [v9 invalidate];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_264EFC698()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_264EFC6D8(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v3 = sub_264F13194();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264F131B4();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264F13464();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264F13014();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v2;
  if (*(v2 + 112))
  {
    v21 = *(v2 + 112);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((sub_264F13484() & 1) == 0)
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v41 = sub_264F13154();
      __swift_project_value_buffer(v41, qword_27FFBE290);
      v64 = sub_264F13134();
      v42 = sub_264F133F4();
      if (os_log_type_enabled(v64, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_264EF1000, v64, v42, "Already observing directory changes when beginObservingChanges called, bailing.", v43, 2u);
        MEMORY[0x266753530](v43, -1, -1);
      }

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  v22 = objc_allocWithZone(MEMORY[0x277D243F8]);
  v23 = sub_264F13204();
  v64 = [v22 initWithTypeIdentifier_];

  v24 = [v64 finalizedSessionsContainerURLForCurrentApplication];
  if (v24)
  {
    v25 = v24;
    sub_264F13004();

    sub_264F12FF4();
    v26 = aBlock;
    if (aBlock == -1)
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v49 = sub_264F13154();
      __swift_project_value_buffer(v49, qword_27FFBE290);
      v50 = sub_264F13134();
      v51 = sub_264F13414();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_264EF1000, v50, v51, "Unable to acquire fd for session container URL", v52, 2u);
        MEMORY[0x266753530](v52, -1, -1);
      }

      (*(v17 + 8))(v20, v16);
    }

    else
    {
      v53 = sub_264EFB608(0, &qword_27FFBDBB8, 0x277D85CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBC0, &qword_264F14FB0);
      v27 = *(v12 + 72);
      v28 = *(v12 + 80);
      v56 = v16;
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_264F14DF0;
      sub_264F13454();
      aBlock = v29;
      sub_264F0010C(&qword_27FFBDBC8, MEMORY[0x277D85288]);
      v55 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBD0, &qword_264F14FB8);
      v54 = v20;
      sub_264EFAF30(&qword_27FFBDBD8, &qword_27FFBDBD0, &qword_264F14FB8);
      sub_264F13544();
      v30 = sub_264F13474();
      (*(v12 + 8))(v15, v11);
      v31 = *(v63 + 136);
      swift_getObjectType();
      v32 = swift_allocObject();
      v32[2] = v30;
      v32[3] = v31;
      v33 = v58;
      v32[4] = v57;
      v32[5] = v33;
      v69 = sub_264EFFB1C;
      v70 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v66 = 1107296256;
      LODWORD(v57) = v26;
      v67 = sub_264EFD564;
      v68 = &block_descriptor_0;
      v34 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_264F131A4();
      sub_264EFD698();
      sub_264F13494();
      _Block_release(v34);
      v35 = v62;
      v61 = *(v61 + 8);
      (v61)(v6, v62);
      v36 = v60;
      v37 = *(v59 + 8);
      v37(v10, v60);

      v38 = swift_allocObject();
      *(v38 + 16) = v57;
      v69 = sub_264EFFB50;
      v70 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v66 = 1107296256;
      v67 = sub_264EFD564;
      v68 = &block_descriptor_52;
      v39 = _Block_copy(&aBlock);
      sub_264F131A4();
      sub_264EFD698();
      sub_264F134A4();
      _Block_release(v39);
      (v61)(v6, v35);
      v37(v10, v36);

      sub_264F134C4();

      (*(v55 + 8))(v54, v56);
      v40 = *(v63 + 112);
      *(v63 + 112) = v30;
      swift_unknownObjectRelease();
    }

    return;
  }

  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v44 = sub_264F13154();
  __swift_project_value_buffer(v44, qword_27FFBE290);
  v45 = sub_264F13134();
  v46 = sub_264F13414();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_264EF1000, v45, v46, "beginObservingChanges: Unable to build sessions container URL for current application.", v47, 2u);
    MEMORY[0x266753530](v47, -1, -1);
  }

LABEL_17:
  v48 = v64;
}

uint64_t sub_264EFCFEC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (a1)
  {
    result = sub_264F13164();
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v4 = sub_264F13154();
    __swift_project_value_buffer(v4, qword_27FFBE290);
    v5 = sub_264F13134();
    v6 = sub_264F13414();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_264EF1000, v5, v6, "unable to get fs path for sessionContainerURL", v7, 2u);
      MEMORY[0x266753530](v7, -1, -1);
    }

    result = 0xFFFFFFFFLL;
  }

  *a2 = result;
  return result;
}

uint64_t sub_264EFD0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_264F13464();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  swift_getObjectType();
  sub_264F134E4();
  sub_264F13454();
  sub_264F0010C(&qword_27FFBDBC8, MEMORY[0x277D85288]);
  v19 = sub_264F13534();
  v20 = *(v12 + 8);
  v20(v16, v11);
  if (v19)
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v21 = sub_264F13154();
    __swift_project_value_buffer(v21, qword_27FFBE290);
    v22 = sub_264F13134();
    v23 = sub_264F13424();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = v20;
      v25 = a2;
      v26 = a4;
      v27 = a3;
      v28 = v24;
      *v24 = 0;
      _os_log_impl(&dword_264EF1000, v22, v23, "Write event received, refreshing session URLs", v24, 2u);
      v29 = v28;
      a3 = v27;
      a4 = v26;
      a2 = v25;
      v20 = v38;
      MEMORY[0x266753530](v29, -1, -1);
    }

    v30 = sub_264F13334();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = a2;
    v31[5] = a3;
    v31[6] = a4;

    sub_264EF30BC(0, 0, v10, &unk_264F14FD0, v31);
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v32 = sub_264F13154();
    __swift_project_value_buffer(v32, qword_27FFBE290);
    v33 = sub_264F13134();
    v34 = sub_264F13404();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_264EF1000, v33, v34, "Event received, was not a write (or self == nil), bailing", v35, 2u);
      MEMORY[0x266753530](v35, -1, -1);
    }
  }

  return (v20)(v18, v11);
}

uint64_t sub_264EFD4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_264EFD500, a4, 0);
}

uint64_t sub_264EFD500()
{
  v1 = *(v0 + 16);
  sub_264EFBDD0(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264EFD564(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_264EFD5A8(int a1)
{
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v2 = sub_264F13154();
  __swift_project_value_buffer(v2, qword_27FFBE290);
  v3 = sub_264F13134();
  v4 = sub_264F13424();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264EF1000, v3, v4, "DispatchSource cancelled, closing file handle", v5, 2u);
    MEMORY[0x266753530](v5, -1, -1);
  }

  return close(a1);
}

uint64_t sub_264EFD698()
{
  sub_264F13194();
  sub_264F0010C(&unk_27FFBDBE0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDF30, &qword_264F14FC0);
  sub_264EFAF30(&qword_27FFBDBF0, &unk_27FFBDF30, &qword_264F14FC0);
  return sub_264F13544();
}

uint64_t sub_264EFD784()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v2 = v0[15];
  swift_unknownObjectRelease();
  v3 = v0[16];
  swift_unknownObjectRelease();
  v4 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

size_t sub_264EFD7D4()
{
  type metadata accessor for SecureCaptureManager();
  v0 = swift_allocObject();
  result = sub_264EFD8AC();
  qword_27FFBDB80 = v0;
  return result;
}

uint64_t static SecureCaptureManager.shared.getter()
{
  if (qword_27FFBD948 != -1)
  {
    swift_once();
  }
}

uint64_t SecureCaptureManager.sessionContentURLs.getter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

size_t sub_264EFD8AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v45 = &v45 - v2;
  v49 = sub_264F13014();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC40, &qword_264F15000);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC48, &qword_264F15008);
  v12 = *(v47 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v47);
  v15 = &v45 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC50, &qword_264F15010);
  v16 = *(v46 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v46);
  v19 = &v45 - v18;
  type metadata accessor for SecureCaptureManager.URLUpdate();
  v20 = v48;
  *(v48 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v8 + 104))(v11, *MEMORY[0x277D85778], v7);
  sub_264F13344();
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v47);
  (*(v16 + 8))(v19, v46);
  v21 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
  v22 = sub_264F13294();

  if (v22 >> 62)
  {
    v23 = sub_264F13584();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  if (!v23)
  {
LABEL_12:
    swift_bridgeObjectRetain_n();
    v32 = sub_264EFA6B8(v24, v22);

    type metadata accessor for CaptureManagerURLs();
    v33 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v33 + 112) = 1;
    *(v33 + 120) = v24;
    *(v33 + 128) = v32;
    v34 = v48;
    *(v48 + 40) = v33;
    type metadata accessor for CaptureManagerFSObserving();
    v35 = swift_allocObject();

    swift_defaultActor_initialize();
    v35[14] = 0;
    v35[15] = 0;
    v35[16] = 0;
    v35[17] = v33;
    *(v34 + 48) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC58, &qword_264F15018);
    v36 = swift_allocObject();
    *(v36 + 24) = 0;
    *(v36 + 16) = v24;
    *(v34 + 32) = v36;
    v37 = sub_264F13334();
    v38 = *(*(v37 - 8) + 56);
    v39 = v45;
    v38(v45, 1, 1, v37);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v34;

    sub_264EF30BC(0, 0, v39, &unk_264F15028, v40);

    v38(v39, 1, 1, v37);
    sub_264F13314();

    v41 = sub_264F13304();
    v42 = swift_allocObject();
    v43 = MEMORY[0x277D85700];
    v42[2] = v41;
    v42[3] = v43;
    v42[4] = v34;
    sub_264EF30BC(0, 0, v39, &unk_264F15038, v42);

    v38(v39, 1, 1, v37);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v34;

    sub_264EF30BC(0, 0, v39, &unk_264F15048, v44);

    return v34;
  }

  v50 = MEMORY[0x277D84F90];
  result = sub_264EF8FE4(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v24 = v50;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x266752CA0](v26, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = [v27 url];
      sub_264F13004();

      v50 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_264EF8FE4(v30 > 1, v31 + 1, 1);
        v24 = v50;
      }

      ++v26;
      *(v24 + 16) = v31 + 1;
      (*(v3 + 32))(v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v31, v6, v49);
    }

    while (v23 != v26);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *SecureCaptureManager.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_264F13334();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_264EF30BC(0, 0, v5, &unk_264F14E10, v8);

  v7(v5, 1, 1, v6);
  sub_264F13314();

  v9 = sub_264F13304();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v1;
  sub_264EF30BC(0, 0, v5, &unk_264F14E20, v10);

  v12 = v1[2];
  swift_unknownObjectRelease();
  v13 = v1[3];
  swift_unknownObjectRelease();
  v14 = v1[4];

  v15 = v1[5];

  v16 = v1[6];

  return v1;
}

uint64_t SecureCaptureManager.__deallocating_deinit()
{
  SecureCaptureManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_264EFE1C0()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_264EFE234, v1, 0);
}

uint64_t sub_264EFE234()
{
  sub_264F00514(v0[3], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_264EFE2A0(uint64_t a1)
{
  v3 = sub_264F13014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  v11 = type metadata accessor for SecureCaptureManager.URLUpdate();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264F00CBC(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = (*(v4 + 32))(v10, v14, v3);
      v17 = *(v1 + 32);
      MEMORY[0x28223BE20](v16);
      *&v23[-16] = v10;
      os_unfair_lock_lock((v17 + 24));
      sub_264F00D3C((v17 + 16));
      os_unfair_lock_unlock((v17 + 24));
      return (*(v4 + 8))(v10, v3);
    }

    else
    {
      v21 = (*(v4 + 32))(v8, v14, v3);
      v22 = *(v1 + 32);
      MEMORY[0x28223BE20](v21);
      *&v23[-16] = v8;
      os_unfair_lock_lock(v22 + 6);
      sub_264F00D20(&v22[4]);
      os_unfair_lock_unlock(v22 + 6);
      return (*(v4 + 8))(v8, v3);
    }
  }

  else
  {
    v19 = *v14;
    v20 = *(v1 + 32);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *&v23[-16] = v19;
    os_unfair_lock_lock((v20 + 24));
    sub_264F00D58((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));
  }
}

uint64_t sub_264EFE53C(void **a1, uint64_t a2)
{
  v4 = sub_264F13014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_264F039A4(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_264F039A4(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  *a1 = v9;
  return result;
}

uint64_t sub_264EFE6B4(uint64_t a1, uint64_t a2)
{
  v5[2] = a2;
  result = sub_264EFFC7C(sub_264F00DA0, v5);
  v4 = *(*a1 + 16);
  if (v4 >= result)
  {
    return sub_264F00F18(result, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_264EFE73C()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_264EFE7B0, v1, 0);
}

uint64_t sub_264EFE7B0()
{
  v1 = v0[3];
  sub_264EFC6D8(sub_264F01228, v0[2]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264EFE830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_264F13314();
  *(v4 + 72) = sub_264F13304();
  v6 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EFE8C8, v6, v5);
}

uint64_t sub_264EFE8C8()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = *MEMORY[0x277D76660];
  v6 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_264F01010;
  v0[7] = v6;
  v7 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264EFEC94;
  v0[5] = &block_descriptor_74;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  v10 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  v11 = *(v2 + 16);
  if (v11)
  {
    v12 = *(v2 + 16);
    swift_unknownObjectRetain();
    v13 = [v3 defaultCenter];
    [v13 removeObserver_];

    swift_unknownObjectRelease();
    v14 = *(v2 + 16);
  }

  v15 = v0[8];
  *(v2 + 16) = v10;
  swift_unknownObjectRelease();
  v16 = [v3 defaultCenter];
  v17 = *MEMORY[0x277D76758];
  v18 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_264F01048;
  v0[7] = v18;
  v0[2] = v7;
  v0[3] = 1107296256;
  v0[4] = sub_264EFEC94;
  v0[5] = &block_descriptor_78;
  v19 = _Block_copy(v0 + 2);
  v20 = v0[7];

  v21 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);

  v22 = *(v15 + 24);
  if (v22)
  {
    v23 = *(v15 + 24);
    swift_unknownObjectRetain();
    v24 = [v3 defaultCenter];
    [v24 removeObserver_];

    swift_unknownObjectRelease();
    v25 = *(v15 + 24);
  }

  *(v15 + 24) = v21;
  swift_unknownObjectRelease();
  v26 = v0[1];

  return v26();
}

uint64_t sub_264EFEBE8()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EFEC0C, v1, 0);
}

uint64_t sub_264EFEC0C()
{
  v1 = *(v0 + 24);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_264F134D4();
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264EFEC94(uint64_t a1)
{
  v2 = sub_264F12F64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_264F12F54();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_264EFED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_264F13334();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    sub_264EF30BC(0, 0, v8, a4, v12);
  }

  return result;
}

uint64_t sub_264EFEEC4()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EFEEE8, v1, 0);
}

uint64_t sub_264EFEEE8()
{
  v1 = *(v0 + 24);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_264F134C4();
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264EFEF90()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EFEFB4, v1, 0);
}

uint64_t sub_264EFEFB4()
{
  v1 = *(v0 + 24);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_264F134B4();
    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264EFF040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFEF70(a1, v4, v5, v6);
}

uint64_t sub_264EFF0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_264F13314();
  *(v4 + 24) = sub_264F13304();
  v6 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EFF18C, v6, v5);
}

uint64_t sub_264EFF18C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];

    swift_unknownObjectRelease();
    v6 = *(v2 + 16);
  }

  v7 = v0[2];
  *(v2 + 16) = 0;
  swift_unknownObjectRelease();
  v8 = *(v7 + 24);
  if (v8)
  {
    v9 = objc_opt_self();
    swift_unknownObjectRetain();
    v10 = [v9 defaultCenter];
    [v10 removeObserver_];

    swift_unknownObjectRelease();
    v11 = *(v7 + 24);
  }

  *(v7 + 24) = 0;
  swift_unknownObjectRelease();
  v12 = v0[1];

  return v12();
}

uint64_t sub_264EFF2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFF0F4(a1, v4, v5, v6);
}

uint64_t SecureCaptureManager.invalidate(url:)(uint64_t a1)
{
  v3 = sub_264F13014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_264F13334();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v1;
  (*(v4 + 32))(&v12[v11], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_264EF30BC(0, 0, v9, &unk_264F14E30, v12);
}

uint64_t sub_264EFF564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_264EFF584, 0, 0);
}

uint64_t sub_264EFF584()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_264EFF5A8, v1, 0);
}

uint64_t sub_264EFF5A8()
{
  v1 = v0[4];
  sub_264EFC58C(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_264EFF608()
{
  v1 = sub_264F13014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264EFF6D4(uint64_t a1)
{
  v4 = *(sub_264F13014() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264EFBDA0;

  return sub_264EFF564(a1, v6, v7, v8, v1 + v5);
}

Swift::Void __swiftcall SecureCaptureManager.applicationDidCompleteTransition()()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 applicationDidCompleteTransition];
}

uint64_t type metadata accessor for SecureCaptureManager.URLUpdate()
{
  result = qword_27FFBDB88;
  if (!qword_27FFBDB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264EFF94C()
{
  sub_264EFFA50(319, &qword_27FFBDB98, sub_264EFF9F8);
  if (v0 <= 0x3F)
  {
    sub_264EFFA50(319, &unk_27FFBDBA8, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_264EFF9F8()
{
  if (!qword_27FFBDBA0)
  {
    sub_264F13014();
    v0 = sub_264F132C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFBDBA0);
    }
  }
}

void sub_264EFFA50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_264EFFAD4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264EFFB58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264EFFBA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264EFB37C;

  return sub_264EFD4DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_264EFFC7C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_264F13014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *v2;
  v17 = v54;
  result = sub_264F00020(a1, a2, *v2);
  if (!v17)
  {
    v50 = v15;
    v54 = 0;
    if (v19)
    {
      return *(v16 + 16);
    }

    v20 = v5;
    v42 = v10;
    v43 = v13;
    v47 = a1;
    v41 = v2;
    v52 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v16;
      v24 = (v16 + 16);
      v23 = *(v16 + 16);
      v25 = v50;
      if (v21 == v23)
      {
        return v52;
      }

      v26 = v20;
      v49 = v6 + 16;
      v45 = v6;
      v46 = (v6 + 8);
      v40 = (v6 + 40);
      v44 = a2;
      while (v21 < v23)
      {
        v27 = *(v6 + 80);
        v53 = v22;
        v48 = (v27 + 32) & ~v27;
        v28 = v22 + v48;
        v29 = *(v6 + 72);
        v30 = *(v6 + 16);
        v51 = v29 * v21;
        v30(v25, &v28[v29 * v21], v26);
        v31 = v54;
        v32 = v47(v25);
        v54 = v31;
        if (v31)
        {
          return (*v46)(v25, v26);
        }

        v33 = v32;
        result = (*v46)(v25, v26);
        if (v33)
        {
          v6 = v45;
          v25 = v50;
          v22 = v53;
        }

        else
        {
          v34 = v52;
          if (v21 == v52)
          {
            v6 = v45;
            v25 = v50;
            v22 = v53;
          }

          else
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v35 = *v24;
            if (v52 >= v35)
            {
              goto LABEL_27;
            }

            v36 = v29 * v52;
            result = (v30)(v43, &v28[v36], v26);
            if (v21 >= v35)
            {
              goto LABEL_28;
            }

            v37 = v42;
            v30(v42, &v28[v51], v26);
            v22 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_264EFFC68(v22);
            }

            v38 = v22 + v48;
            v39 = *v40;
            result = (*v40)(v22 + v48 + v36, v37, v26);
            v6 = v45;
            if (v21 >= v22[2])
            {
              goto LABEL_29;
            }

            result = v39(&v38[v51], v43, v26);
            *v41 = v22;
            v34 = v52;
            v25 = v50;
          }

          v52 = v34 + 1;
        }

        ++v21;
        v24 = v22 + 2;
        v23 = v22[2];
        if (v21 == v23)
        {
          return v52;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_264F00020(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_264F13014() - 8);
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

uint64_t sub_264F0010C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264F00154(uint64_t a1)
{
  v2 = type metadata accessor for SecureCaptureManager.URLUpdate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264F001B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBF8, &qword_264F14FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264F00220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBF8, &qword_264F14FD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264F00290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC00, &qword_264F14FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264F002F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFE71C(a1, v4, v5, v6);
}

uint64_t sub_264F003AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFE830(a1, v4, v5, v6);
}

uint64_t sub_264F00460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFE1A0(a1, v4, v5, v6);
}

size_t sub_264F00514(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v3 = sub_264F13014();
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = type metadata accessor for SecureCaptureManager.URLUpdate();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBF8, &qword_264F14FD8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v59 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC00, &qword_264F14FE0);
  v19 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v74 = &v59 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC08, &qword_264F14FE8);
  v65 = *(v62 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  v64 = &v59 - v22;
  v23 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
  v24 = sub_264F13294();

  v25 = v24;
  v70 = v10;
  v71 = a2;
  v61 = v9;
  v63 = v13;
  v69 = v14;
  if (v24 >> 62)
  {
    v26 = sub_264F13584();
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  v72 = v3;
  if (v26)
  {
    v75[0] = MEMORY[0x277D84F90];
    result = sub_264EF8FE4(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    v29 = 0;
    v27 = v75[0];
    v30 = v24;
    v31 = v24 & 0xC000000000000001;
    v32 = v24;
    do
    {
      if (v31)
      {
        v33 = MEMORY[0x266752CA0](v29, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v29 + 32);
      }

      v34 = v33;
      v35 = [v33 url];
      sub_264F13004();

      v75[0] = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_264EF8FE4(v36 > 1, v37 + 1, 1);
        v27 = v75[0];
      }

      ++v29;
      *(v27 + 16) = v37 + 1;
      (*(v73 + 32))(v27 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v37, v7, v72);
      v30 = v32;
    }

    while (v26 != v29);
    v25 = v32;
  }

  v39 = sub_264EFA6B8(v38, v25);

  v75[0] = v27;
  v40 = v67;
  v75[4] = *(v67 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC18, &qword_264F14FF0);
  sub_264EFAF30(&unk_27FFBDC20, &qword_27FFBDC18, &qword_264F14FF0);
  sub_264F0010C(&qword_27FFBDAA8, MEMORY[0x277CC9260]);
  v41 = v64;
  sub_264F131E4();
  v42 = *(v40 + 120);
  *(v40 + 120) = v27;

  v43 = *(v40 + 128);
  *(v40 + 128) = v39;

  v44 = v62;
  if (*(v40 + 112) == 1)
  {

    v45 = v74;
    (*(v65 + 16))(v74, v41, v44);
    v46 = *(v66 + 36);
    sub_264EFAF30(&qword_27FFBDC30, &qword_27FFBDC08, &qword_264F14FE8);
    sub_264F133B4();
    v47 = v45;
    sub_264F133C4();
    v48 = *&v45[v46];
    v49 = v72;
    v50 = v60;
    v51 = v61;
    v52 = v63;
    if (v48 != v75[0])
    {
      v66 = v73 + 16;
      v67 = v73 + 32;
      v53 = (v73 + 8);
      do
      {
        v54 = sub_264F133E4();
        v55 = v68;
        sub_264F001B0(v56, v68);
        v54(v75, 0);
        sub_264F133D4();
        sub_264F00220(v55, v50);
        swift_getEnumCaseMultiPayload();
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC38, &qword_264F14FF8);
        (*v67)(v51, v50 + *(v57 + 48), v49);
        (*v66)(v52, v51, v49);
        swift_storeEnumTagMultiPayload();
        sub_264EFE2A0(v52);
        sub_264F00154(v52);
        (*v53)(v51, v49);
        sub_264F133C4();
        v47 = v74;
      }

      while (*&v74[v46] != v75[0]);
    }

    sub_264F00290(v47);
    return (*(v65 + 8))(v64, v44);
  }

  else
  {
    v58 = v63;
    *v63 = v27;
    swift_storeEnumTagMultiPayload();
    sub_264EFE2A0(v58);
    sub_264F00154(v58);
    result = (*(v65 + 8))(v41, v44);
    *(v40 + 112) = 1;
  }

  return result;
}

uint64_t sub_264F00CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCaptureManager.URLUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264F00D58(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

unint64_t sub_264F00DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_264F13014();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_264F00F18(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_264F039A4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_264F00DD0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_264F00FD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264F01080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFEEA4(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264F01174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFEBC8(a1, v4, v5, v6);
}

uint64_t sub_264F0125C()
{
  v0 = sub_264F13154();
  __swift_allocate_value_buffer(v0, qword_27FFBE290);
  __swift_project_value_buffer(v0, qword_27FFBE290);
  return sub_264F13144();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_264F01334(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(userActivity:responder:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserActivity:a1 responder:a2];

  return v4;
}

{
  v22 = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_264F15080;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  [a1 setNeedsSave_];
  sub_264EFA0B8(MEMORY[0x277D84F90]);
  v6 = sub_264F131C4();

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  aBlock[4] = sub_264F02E7C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264EF3C40;
  aBlock[3] = &block_descriptor_1;
  v8 = _Block_copy(aBlock);

  [a1 _createUserActivityDataWithOptions_completionHandler_];
  _Block_release(v8);

  swift_beginAccess();
  if (*(v5 + 16))
  {
    v9 = objc_msgSendSuper2(&v23, sel_initWithInfo_responder_, 0, 0, v22, v2, SESecureCaptureOpenApplicationAfterTransitionCompletionAction);
LABEL_5:
    v11 = v9;
    goto LABEL_6;
  }

  swift_beginAccess();
  v10 = *(v4 + 24);
  if (v10 >> 60 == 15)
  {
    v26.receiver = v2;
    v26.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
    v9 = objc_msgSendSuper2(&v26, sel_initWithInfo_responder_, 0, 0, v22, v23.receiver, v23.super_class);
    goto LABEL_5;
  }

  v14 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC60, &qword_264F15090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264F14DF0;
  *(inited + 32) = 7;
  v16 = inited + 32;
  *(inited + 40) = v14;
  *(inited + 48) = v10;
  v17 = sub_264EFA4B0(inited);
  swift_setDeallocating();
  sub_264EFB11C(v14, v10);
  sub_264EFB11C(v14, v10);
  sub_264EFB174(v16, &qword_27FFBDC68, &qword_264F15098);
  sub_264F01968(v17);

  v18 = objc_allocWithZone(MEMORY[0x277D750D8]);
  v19 = sub_264F131C4();

  v12 = [v18 initWithSettings_];

  if (v12)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    [v20 setObject:v12 forSetting:1];
    v24.receiver = v2;
    v24.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
    v21 = v20;
    v11 = objc_msgSendSuper2(&v24, sel_initWithInfo_responder_, v21, v22);
    sub_264EFB958(v14, v10);

    goto LABEL_7;
  }

  v25.receiver = v2;
  v25.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  v11 = objc_msgSendSuper2(&v25, sel_initWithInfo_responder_, 0, 0);
  sub_264EFB958(v14, v10);
LABEL_6:

  v12 = v22;
LABEL_7:

  return v11;
}

uint64_t sub_264F01838()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_264EFB818(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264F01880()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_264F018B8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_264EFB7B4(a1, a2);
  sub_264EFB958(v10, v11);
  swift_beginAccess();
  v12 = *(a5 + 16);
  *(a5 + 16) = a3;
  v13 = a3;
}

uint64_t sub_264F01968(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAF0, &qword_264F14D70);
    v2 = sub_264F136C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    v15 = (*(a1 + 56) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    sub_264EFB11C(*v15, v17);
    swift_dynamicCast();
    *&v34[0] = v16;
    *(&v34[0] + 1) = v17;
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_264EFBB3C(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_264EFBB3C(v33, v34);
    v18 = *(v2 + 40);
    result = sub_264F135B4();
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
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
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_264EFBB3C(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(coder:)(void *a1)
{
  v4.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(xpcDictionary:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithXPCDictionary_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v3.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  v1 = objc_msgSendSuper2(&v3, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v1)
  {
  }

  return v1;
}

uint64_t SESecureCaptureOpenApplicationAfterTransitionCompletionAction.launchActions.getter()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_264F13584())
  {
    sub_264F02E9C(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  v10 = v1;
  v2 = [v0 info];
  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_264EFB174(&v8, &qword_27FFBDC70, &qword_264F150A0);
    return v10;
  }

  v3 = v2;
  v4 = [v2 objectForSetting_];

  if (v4)
  {
    sub_264F13524();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  sub_264EFB608(0, &qword_27FFBDC78, 0x277D750D8);
  if (swift_dynamicCast())
  {
    sub_264F02294(&v8, v6);
  }

  return v10;
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(info:responder:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:a1 responder:a2];

  return v4;
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_264F01334;
    v11[3] = &block_descriptor_9;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:a1 timeout:a2 forResponseOnQueue:v8 withHandler:a5];
  _Block_release(v8);

  return v9;
}

uint64_t sub_264F02294(void *a1, void *a2)
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

    v9 = sub_264F13594();

    if (v9)
    {

      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_264F13584();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_264F024CC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_264F026BC(v22 + 1);
    }

    v20 = v8;
    sub_264F028E4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  v11 = *(v6 + 40);
  v12 = sub_264F134F4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_264F02968(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_264F13504();

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

uint64_t sub_264F024CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
    v2 = sub_264F13604();
    v16 = v2;
    sub_264F13574();
    if (sub_264F135A4())
    {
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_264F026BC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_264F134F4();
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

      while (sub_264F135A4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_264F026BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
  result = sub_264F135F4();
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
      result = sub_264F134F4();
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

unint64_t sub_264F028E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_264F134F4();
  v5 = -1 << *(a2 + 32);
  result = sub_264F13564();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_264F02968(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_264F026BC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_264F02AD8();
      goto LABEL_12;
    }

    sub_264F02C28(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_264F134F4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_264F13504();

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
  sub_264F13724();
  __break(1u);
}

id sub_264F02AD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
  v2 = *v0;
  v3 = sub_264F135E4();
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

uint64_t sub_264F02C28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
  result = sub_264F135F4();
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
      result = sub_264F134F4();
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

uint64_t sub_264F02E3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_264F02E9C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_264F13584())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
      v3 = sub_264F13614();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_264F13584();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x266752CA0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_264F134F4();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_264F13504();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_264F134F4();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_264F13504();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_264F033A0(void *a1, void *a2)
{
  v14 = [a1 clientSettings];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, (v6 = [a2 previousSettings]) != 0))
  {
    v13 = v6;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = OBJC_IVAR____TtC16SecureCaptureKit40SecureCaptureSceneStatusBarHostComponent_delegate;
      swift_beginAccess();
      sub_264EFBAD4(v2 + v9, v15, &qword_27FFBDCA0, &qword_264F15218);
      if (v16)
      {
        sub_264EFB174(v15, &qword_27FFBDCA0, &qword_264F15218);
        v10 = [v5 statusBarHidden];
        if (v10 != [v8 statusBarHidden])
        {
          v11 = [a2 transitionContext];
        }
      }

      else
      {

        sub_264EFB174(v15, &qword_27FFBDCA0, &qword_264F15218);
      }

      return;
    }

    v12 = v13;
  }

  else
  {
    v12 = v14;
  }
}

id sub_264F036CC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_264F037F8(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = &a1[*a3];
  v6 = a4();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v8.receiver = a1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_264F03870(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  v6 = &a1[*a4];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v9.receiver = a1;
  v9.super_class = a5();
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v9, sel_initWithScene_, a3);
  swift_unknownObjectRelease();
  if (v7)
  {
  }

  return v7;
}

id sub_264F03914(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

size_t sub_264F039A4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC0, &qword_264F14D10);
  v10 = *(sub_264F13014() - 8);
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
  v15 = *(sub_264F13014() - 8);
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

char *sub_264F03B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDCB0, &qword_264F15228);
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

char *sub_264F03C80()
{
  v0 = sub_264F13204();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v3 = sub_264F03B7C(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_264F03B7C((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    *&v3[8 * v5 + 32] = ObjCClassMetadata;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_264F03B7C(0, *(v3 + 2) + 1, 1, v3);
  }

  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    v3 = sub_264F03B7C((v6 > 1), v7 + 1, 1, v3);
  }

  v9 = type metadata accessor for SecureCaptureSceneStatusBarHostComponent();
  *(v3 + 2) = v8;
  *&v3[8 * v7 + 32] = v9;
  v10 = *(v3 + 3);
  v11 = v7 + 2;
  if (v11 > (v10 >> 1))
  {
    v3 = sub_264F03B7C((v10 > 1), v11, 1, v3);
  }

  v12 = type metadata accessor for SecureCaptureSceneSessionPathHostComponent();
  *(v3 + 2) = v11;
  *&v3[8 * v8 + 32] = v12;
  return v3;
}

id sub_264F03DF4(void *a1)
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit40SecureCaptureSceneStatusBarHostComponent_delegate;
  swift_beginAccess();
  sub_264EFBAD4(v1 + v3, &v16, &qword_27FFBDCA0, &qword_264F15218);
  if (!v17)
  {
    return sub_264EFB174(&v16, &qword_27FFBDCA0, &qword_264F15218);
  }

  sub_264F043B0(&v16, v18);
  v4 = [a1 mutableSettings];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v6;
    v8 = *__swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v9 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_rootViewController;
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (!v10)
    {
      goto LABEL_11;
    }

    result = [v10 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = result;
    v13 = [result window];

    if (v13 && (v14 = [v13 windowScene], v13, v14) && (v15 = objc_msgSend(v14, sel_statusBarManager), v14, v15))
    {
      [v15 defaultStatusBarHeightInOrientation_];
      [v7 setDefaultStatusBarHeight:1 forOrientation:?];
      [v15 defaultStatusBarHeightInOrientation_];
      [v7 setDefaultStatusBarHeight:4 forOrientation:?];
      [v15 defaultStatusBarHeightInOrientation_];
      [v7 setDefaultStatusBarHeight:3 forOrientation:?];
      [v15 defaultStatusBarHeightInOrientation_];
      [v7 setDefaultStatusBarHeight:2 forOrientation:?];
    }

    else
    {
LABEL_11:
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void sub_264F04034(void *a1)
{
  v3 = [a1 settings];
  if (v3)
  {
    v4 = v3;
    v25 = &unk_2876D00E8;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (!v5 || (v6 = v5, (v7 = [a1 previousSettings]) == 0))
    {

      return;
    }

    v8 = v7;
    v24 = &unk_2876D00E8;
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v9;
    v11 = [v6 captureSessionPath];
    v12 = [v10 captureSessionPath];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        sub_264F04364();
        v14 = sub_264F13504();

        if ((v14 & 1) == 0)
        {
LABEL_14:
          v15 = OBJC_IVAR____TtC16SecureCaptureKit42SecureCaptureSceneSessionPathHostComponent_delegate;
          swift_beginAccess();
          sub_264EFBAD4(v1 + v15, v22, &qword_27FFBDD20, &qword_264F15210);
          if (v23)
          {
            sub_264F04270(v22, v19);
            sub_264EFB174(v22, &qword_27FFBDD20, &qword_264F15210);
            v16 = v20;
            v17 = v21;
            __swift_project_boxed_opaque_existential_1(v19, v20);
            v18 = [v6 captureSessionPath];
            (*(v17 + 8))(v1, v18, v16, v17);

            __swift_destroy_boxed_opaque_existential_1(v19);
          }

          else
          {

            sub_264EFB174(v22, &qword_27FFBDD20, &qword_264F15210);
          }

          return;
        }

LABEL_11:

        return;
      }

      v13 = v11;
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }
}

uint64_t sub_264F04270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_264F04364()
{
  result = qword_27FFBDC10;
  if (!qword_27FFBDC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFBDC10);
  }

  return result;
}

uint64_t sub_264F043B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t PresentationMode.description.getter(int a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x70616E536576696CLL;
    case 1:
      return 1702259052;
  }

  result = sub_264F13714();
  __break(1u);
  return result;
}

unint64_t PresentationMode.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

uint64_t sub_264F044B0()
{
  v1 = *v0;
  sub_264F137C4();
  sub_264F137E4();
  return sub_264F137F4();
}

uint64_t sub_264F04524()
{
  v1 = *v0;
  sub_264F137C4();
  sub_264F137E4();
  return sub_264F137F4();
}

int *sub_264F04568@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_264F04590()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1701736302;
  }

  if (v1 == 2)
  {
    return 0x70616E536576696CLL;
  }

  if (v1 == 1)
  {
    return 1702259052;
  }

  v3 = *v0;
  result = sub_264F13714();
  __break(1u);
  return result;
}

id sub_264F0461C()
{
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___clientSettingsDiffInspector;
  v2 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___clientSettingsDiffInspector);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___clientSettingsDiffInspector);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75160]) init];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_264F0E97C;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_264F048A0;
    v10[3] = &block_descriptor_32;
    v6 = _Block_copy(v10);

    [v4 observeIdleTimerDisabledWithBlock_];
    _Block_release(v6);
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_264F04748()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___SESecureCaptureSceneViewController_scene);
    if (v2)
    {
      v3 = v2;

      v1 = [v3 clientSettings];
      if (!v1)
      {
        return;
      }

      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          v8 = [v5 idleTimerDisabled];
          v9 = v7[OBJC_IVAR___SESecureCaptureSceneViewController__requestsIdleTimerDisabled];
          v7[OBJC_IVAR___SESecureCaptureSceneViewController__requestsIdleTimerDisabled] = v8;
          if (v8 != v9)
          {
            v10 = [v7 delegate];
            if (v10)
            {
              [v10 secureCaptureSceneViewController:v7 requestsIdleTimerDisabled:{objc_msgSend(v7, sel_requestsIdleTimerDisabled)}];
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_264F048A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_264F048F4()
{
  v1 = &v0[OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___logIdentifier];
  if (*&v0[OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___logIdentifier + 8])
  {
    v2 = *v1;
    v3 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___logIdentifier + 8];
  }

  else
  {
    v2 = sub_264F04970(v0);
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

uint64_t sub_264F04970(void *a1)
{
  v2 = sub_264F13064();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264F13054();
  v7 = sub_264F13044();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v15[0] = v7;
  v15[1] = v9;
  MEMORY[0x2667528B0](45, 0xE100000000000000);
  v10 = [objc_msgSend(a1 extensionProvider)];
  swift_unknownObjectRelease();
  v11 = sub_264F13214();
  v13 = v12;

  MEMORY[0x2667528B0](v11, v13);

  return v15[0];
}

id sub_264F04ACC()
{
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___queue;
  v2 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___queue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___queue);
  }

  else
  {
    v4 = sub_264F13204();
    Serial = BSDispatchQueueCreateSerial();

    v6 = *(v0 + v1);
    *(v0 + v1) = Serial;
    v3 = Serial;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *SESecureCaptureSceneViewController._scene.getter()
{
  v1 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_scene);
  v2 = v1;
  return v1;
}

void SESecureCaptureSceneViewController.presentationMode.setter(unsigned int a1)
{
  BSDispatchQueueAssertMain();

  sub_264F04BE8(a1, 0);
}

void sub_264F04BE8(unsigned int a1, char a2)
{
  BSDispatchQueueAssertMain();
  if ((v2[OBJC_IVAR___SESecureCaptureSceneViewController_invalidated] & 1) != 0 || (a2 & 1) == 0 && *&v2[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] == a1)
  {
    return;
  }

  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v5 = sub_264F13154();
  __swift_project_value_buffer(v5, qword_27FFBE290);
  v6 = v2;
  v7 = sub_264F13134();
  v8 = sub_264F13424();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136446722;
    v11 = sub_264F048F4();
    v13 = sub_264F0C768(v11, v12, &v31);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    if (a1)
    {
      if (a1 == 2)
      {
        v14 = 0xEC000000746F6873;
        v15 = 0x70616E536576696CLL;
      }

      else
      {
        if (a1 != 1)
        {
LABEL_33:
          sub_264F13714();
          __break(1u);
          return;
        }

        v14 = 0xE400000000000000;
        v15 = 1702259052;
      }
    }

    else
    {
      v14 = 0xE400000000000000;
      v15 = 1701736302;
    }

    v16 = sub_264F0C768(v15, v14, &v31);

    *(v9 + 14) = v16;
    *(v9 + 22) = 1026;
    *(v9 + 24) = a2 & 1;
    _os_log_impl(&dword_264EF1000, v7, v8, "[%{public}s] Updating presentationMode to: %{public}s - (forced? %{BOOL,public}d).", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266753530](v10, -1, -1);
    MEMORY[0x266753530](v9, -1, -1);
  }

  else
  {
  }

  v17 = OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode;
  *&v6[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] = a1;
  if (a1 < 2)
  {
    sub_264F06348(0, 1);
    sub_264F0741C(a1 == 1, 0, 0);
    return;
  }

  if (a1 != 2)
  {
LABEL_32:
    LODWORD(v31) = a1;
    goto LABEL_33;
  }

  v18 = *&v6[OBJC_IVAR___SESecureCaptureSceneViewController_scene];
  if (v18)
  {
    v30 = v18;
    if ([v30 contentState]== 2)
    {
      BSDispatchQueueAssertMain();
      if (*&v6[v17] == 2)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v6;
        v20 = v6;
        sub_264F06830(sub_264F0EAAC, v19);

        return;
      }

      __break(1u);
      goto LABEL_32;
    }

    v28 = swift_allocObject();
    v28[2] = v6;
    v29 = v6;
    sub_264F0741C(1, sub_264F0EAA4, v28);
  }

  else
  {
    v21 = v6;
    v30 = sub_264F13134();
    v22 = sub_264F13414();

    if (os_log_type_enabled(v30, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136446210;
      v25 = sub_264F048F4();
      v27 = sub_264F0C768(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_264EF1000, v30, v22, "[%{public}s] Snapshot failed because there is no scene found", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x266753530](v24, -1, -1);
      MEMORY[0x266753530](v23, -1, -1);

      return;
    }
  }
}

void (*SESecureCaptureSceneViewController.presentationMode.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode);
  return sub_264F050E4;
}

void sub_264F050E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  BSDispatchQueueAssertMain();
  sub_264F04BE8(v2, 0);
}

uint64_t SESecureCaptureSceneViewController.__presentationMode.getter()
{
  result = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode);
  if (result >= 3)
  {
    result = sub_264F13714();
    __break(1u);
  }

  return result;
}

void SESecureCaptureSceneViewController.__presentationMode.setter(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  if (a1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = a1 == 1;
  }

  sub_264F04BE8(v2, 0);
}

unint64_t sub_264F05274()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t SESecureCaptureSceneViewController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t SESecureCaptureSceneViewController.extensionProvider.getter()
{
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController_extensionProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t SESecureCaptureSceneViewController.extensionProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SESecureCaptureSceneViewController_extensionProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id SESecureCaptureSceneViewController.init(provider:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProvider_];
  swift_unknownObjectRelease();
  return v1;
}

{
  if (MEMORY[0x277D84F90] >> 62 && sub_264F13584())
  {
    sub_264F02E9C(MEMORY[0x277D84F90]);
  }

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v3 = sub_264F13364();

  v4 = [v1 initWithProvider:a1 launchActions:v3];

  swift_unknownObjectRelease();
  return v4;
}

id SESecureCaptureSceneViewController.init(provider:launch:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v3 = sub_264F13364();

  v4 = [v2 initWithProvider:a1 launchActions:v3];
  swift_unknownObjectRelease();

  return v4;
}

id SESecureCaptureSceneViewController.init(provider:launch:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_264F0CD10(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

id SESecureCaptureSceneViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id sub_264F05990(void *a1)
{
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v2 = sub_264F13154();
  __swift_project_value_buffer(v2, qword_27FFBE290);
  v3 = sub_264F13134();
  v4 = sub_264F13424();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264EF1000, v3, v4, "Capture Extension scene dealloc", v5, 2u);
    MEMORY[0x266753530](v5, -1, -1);
  }

  return [a1 invalidate];
}

uint64_t sub_264F05A8C(uint64_t a1, uint64_t a2)
{
  sub_264F13304();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_264F0E738();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_264F13634();
    MEMORY[0x2667528B0](0xD00000000000003FLL, 0x8000000264F164E0);
    v8 = sub_264F13804();
    MEMORY[0x2667528B0](v8);

    MEMORY[0x2667528B0](46, 0xE100000000000000);
    result = sub_264F13684();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SESecureCaptureSceneViewController.viewDidLoad()()
{
  BSDispatchQueueAssertMain();
  v22.receiver = v0;
  v22.super_class = SESecureCaptureSceneViewController;
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  sub_264F05FF4();
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionAssistant;
  [*&v0[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionAssistant] addObserver_];
  if ([*&v0[v1] shouldShield])
  {
    v2 = OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController;
    if (!*&v0[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController])
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D243C0]) initWithAssistant_];
      v4 = [v3 view];
      if (v4)
      {
        v5 = v4;
        v6 = [v0 view];
        if (v6)
        {
          v7 = v6;
          [v6 bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v5 setFrame_];
          v16 = [v3 view];
          if (v16)
          {
            v17 = v16;
            [v16 setAutoresizingMask_];

            v18 = [v0 view];
            if (v18)
            {
              v19 = v18;
              v20 = [v3 view];

              if (v20)
              {
                [v19 addSubview_];

                [v0 addChildViewController_];
                [v3 didMoveToParentViewController_];
                v21 = *&v0[v2];
                *&v0[v2] = v3;

                return;
              }

              goto LABEL_15;
            }

LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            return;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    sub_264F0629C();
  }
}

void sub_264F05FF4()
{
  BSDispatchQueueAssertMain();
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = [v1 layer];
  v3 = sub_264F13204();
  [v2 setName_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v1 setFrame_];
  [v1 setClipsToBounds_];
  [v1 setAutoresizingMask_];
  v14 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController];
  if (!v14)
  {
    v20 = [v0 view];
    if (v20)
    {
      v19 = v20;
      [v20 addSubview_];
      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v0 view];
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v15 view];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  [v17 insertSubview:v1 belowSubview:v18];

LABEL_8:
  v21 = OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView;
  v22 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
  *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView] = v1;
  v25 = v1;

  BSDispatchQueueAssertMain();
  v23 = *&v0[v21];
  if (v23)
  {
    v24 = v23;
    sub_264F065A0(v0, v24, 0);
    [v24 setHidden_];
  }
}

void sub_264F0629C()
{
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController;
  v2 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 removeFromSuperview];

      [v3 didMoveToParentViewController_];
      v6 = *(v0 + v1);
      *(v0 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_264F06348(unsigned __int8 a1, char a2)
{
  BSDispatchQueueAssertMain();
  v5 = *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
  if (!v5)
  {
    return;
  }

  v16 = *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
  if (a1 != 2)
  {
    v6 = v5;
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v16;
    v9 = a1 & 1;
    *(v8 + 32) = a1 & 1;
    v21 = sub_264F0EA44;
    v22 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_264EFD564;
    v20 = &block_descriptor_54;
    v10 = _Block_copy(&aBlock);
    v11 = v16;
    v12 = v2;

    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v9;
    v21 = sub_264F0EA88;
    v22 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_264F066B8;
    v20 = &block_descriptor_60;
    v14 = _Block_copy(&aBlock);
    v15 = v11;

    [v7 animateWithDuration:v10 animations:v14 completion:0.4];

    _Block_release(v14);
    _Block_release(v10);
    return;
  }

  a1 = [v5 isHidden];
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_264F065A0(v2, v16, a1 & 1);
  [v16 setHidden_];
}

id sub_264F065A0(char *a1, void *a2, char a3)
{
  v5 = *&a1[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController];
  if (!v5)
  {
    result = [a1 view];
    if (result)
    {
      v10 = result;
      [result bringSubviewToFront_];
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v7 = v5;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = [v7 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  [v9 insertSubview:a2 belowSubview:result];

LABEL_7:
  v11 = 0.0;
  if (a3)
  {
    v11 = 1.0;
  }

  return [a2 setAlpha_];
}

uint64_t sub_264F066B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_264F0670C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 capture];
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v5 = 2;
  }

  v8 = v6 ^ 1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  v11[4] = sub_264F0EB64;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_264EFD564;
  v11[3] = &block_descriptor_81;
  v10 = _Block_copy(v11);

  sub_264F0EB98(v5, v8);

  BSDispatchMain();
  _Block_release(v10);
  sub_264F0EB58(v5, v8);
}

uint64_t sub_264F06830(uint64_t a1, uint64_t a2)
{
  v5 = sub_264F13194();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264F131B4();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;

  v14 = v2;
  BSDispatchQueueAssertMain();
  v15 = *&v14[OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter];
  if (v15 && (v16 = *&v14[OBJC_IVAR___SESecureCaptureSceneViewController_scene]) != 0)
  {
    v17 = *&v14[OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter];
    swift_unknownObjectRetain();
    v18 = v16;
    if ([v18 contentState] == 2)
    {
      v19 = [v15 newSnapshot];
      v26 = sub_264F04ACC();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = sub_264F0EAB8;
      v20[4] = v13;
      aBlock[4] = sub_264F0EB08;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264EFD564;
      aBlock[3] = &block_descriptor_75;
      v21 = _Block_copy(aBlock);
      v25 = v19;

      sub_264F131A4();
      v29 = MEMORY[0x277D84F90];
      sub_264F0E898(&unk_27FFBDBE0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDF30, &qword_264F14FC0);
      sub_264F0E8E0();
      sub_264F13544();
      v22 = v26;
      MEMORY[0x266752AA0](0, v12, v8, v21);
      _Block_release(v21);

      swift_unknownObjectRelease();

      (*(v28 + 8))(v8, v5);
      (*(v27 + 8))(v12, v9);
    }

    sub_264F06C20(1, 1, v14, a1, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_264F06C20(0, 1, v14, a1, a2);
  }
}

void sub_264F06C20(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v9 = sub_264F13154();
    __swift_project_value_buffer(v9, qword_27FFBE290);
    v10 = a3;
    v11 = sub_264F13134();
    v12 = sub_264F13424();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v13 = 136446466;
      v14 = sub_264F048F4();
      v16 = sub_264F0C768(v14, v15, &aBlock);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      sub_264F0EC0C();
      v17 = sub_264F136E4();
      if (!v17)
      {
        v17 = swift_allocError();
        *v18 = a1;
      }

      v19 = v17;
      v20 = sub_264F12FC4();

      v21 = [v20 localizedDescription];
      v22 = sub_264F13214();
      v24 = v23;

      v25 = sub_264F0C768(v22, v24, &aBlock);

      *(v13 + 14) = v25;
      _os_log_impl(&dword_264EF1000, v11, v12, "[%{public}s] Snapshot failed - %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v30, -1, -1);
      MEMORY[0x266753530](v13, -1, -1);
    }

    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    *(v26 + 32) = a1;
    v35 = sub_264F0EBDC;
    v36 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_264EFD564;
    v34 = &block_descriptor_87;
    v27 = _Block_copy(&aBlock);
  }

  else
  {
    v28 = swift_allocObject();
    v28[2] = a3;
    v28[3] = a1;
    v28[4] = a4;
    v28[5] = a5;
    v35 = sub_264F0ECA8;
    v36 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_264EFD564;
    v34 = &block_descriptor_93;
    v27 = _Block_copy(&aBlock);
    v29 = a3;
    sub_264F0EB98(a1, 0);
  }

  BSDispatchMain();
  _Block_release(v27);
}

void sub_264F06F9C(char *a1, void *a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] == 2)
  {
    v21[11] = v3;
    v22 = v4;
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v8 = sub_264F13154();
    __swift_project_value_buffer(v8, qword_27FFBE290);
    v9 = a1;
    v10 = sub_264F13134();
    v11 = sub_264F13424();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136446210;
      v14 = sub_264F048F4();
      v16 = sub_264F0C768(v14, v15, v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_264EF1000, v10, v11, "[%{public}s] Snapshot success - Updating layer.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x266753530](v13, -1, -1);
      MEMORY[0x266753530](v12, -1, -1);
    }

    v17 = [a2 IOSurface];
    if (!v17)
    {
      v17 = [a2 fallbackIOSurface];
    }

    v20 = v17;
    v18 = *&v9[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
    if (v18)
    {
      v19 = [v18 layer];
      [v19 setContents_];
    }

    a3(3);
  }
}

void sub_264F071BC(unsigned __int8 a1, char *a2)
{
  v4 = a1;
  BSDispatchQueueAssertMain();
  if (v4 == 3)
  {
    BSDispatchQueueAssertMain();
    v5 = *&a2[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
    if (v5)
    {
LABEL_3:
      v6 = v5;
      sub_264F065A0(a2, v6, a1 == 3);
      [v6 setHidden_];
    }
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v7 = sub_264F13154();
    __swift_project_value_buffer(v7, qword_27FFBE290);
    v8 = a2;
    v9 = sub_264F13134();
    v10 = sub_264F13414();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136446466;
      v14 = sub_264F048F4();
      v16 = sub_264F0C768(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2114;
      sub_264F0EC0C();
      swift_allocError();
      *v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_264EF1000, v9, v10, "[%{public}s] Snapshot failed so backgrounding scene without updated snapshot: %{public}@", v11, 0x16u);
      sub_264EFB174(v12, &qword_27FFBDD30, &qword_264F15258);
      MEMORY[0x266753530](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x266753530](v13, -1, -1);
      MEMORY[0x266753530](v11, -1, -1);
    }

    BSDispatchQueueAssertMain();
    v5 = *&v8[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_264F0741C(0, 0, 0);
}

void sub_264F0741C(char a1, void (*a2)(void), void *a3)
{
  LOBYTE(v9) = a1;
  BSDispatchQueueAssertMain();
  v10 = OBJC_IVAR___SESecureCaptureSceneViewController_scene;
  v11 = *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_scene);
  if (v11)
  {
    v12 = qword_27FFBD950;
    v13 = v11;
    if (v12 != -1)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v14 = sub_264F13154();
      __swift_project_value_buffer(v14, qword_27FFBE290);
      v15 = v3;
      v16 = sub_264F13134();
      v17 = sub_264F13424();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = a3;
        v20 = swift_slowAlloc();
        aBlock = v20;
        *v18 = 136446466;
        v21 = sub_264F048F4();
        v15 = sub_264F0C768(v21, v22, &aBlock);

        *(v18 + 4) = v15;
        *(v18 + 12) = 2082;
        if (v9)
        {
          v23 = 0x756F726765726F66;
        }

        else
        {
          v23 = 0x756F72676B636162;
        }

        v24 = sub_264F0C768(v23, 0xEA0000000000646ELL, &aBlock);

        *(v18 + 14) = v24;
        _os_log_impl(&dword_264EF1000, v16, v17, "[%{public}s] Updating capture extension scene to %{public}s.", v18, 0x16u);
        swift_arrayDestroy();
        v25 = v20;
        a3 = v19;
        MEMORY[0x266753530](v25, -1, -1);
        MEMORY[0x266753530](v18, -1, -1);
      }

      v3 = swift_allocObject();
      *(v3 + 16) = v9 & 1;
      v26 = swift_allocObject();
      LOBYTE(v9) = v26;
      *(v26 + 16) = sub_264F0ED94;
      *(v26 + 24) = v3;
      v113 = sub_264F0EF7C;
      v114 = v26;
      aBlock = MEMORY[0x277D85DD0];
      *&v4 = 1107296256;
      v110 = 1107296256;
      v111 = sub_264F084DC;
      v112 = &block_descriptor_131;
      v27 = _Block_copy(&aBlock);

      v28 = swift_allocObject();
      *(v28 + 16) = a2;
      *(v28 + 24) = a3;
      v113 = sub_264F0EDE4;
      v114 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v110 = 1107296256;
      v111 = sub_264F08548;
      v112 = &block_descriptor_137;
      v29 = _Block_copy(&aBlock);
      sub_264F0ED74(a2);

      [v13 performUpdate:v27 withCompletion:v29];

      _Block_release(v29);
      _Block_release(v27);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
LABEL_43:
      v85 = sub_264F13154();
      __swift_project_value_buffer(v85, qword_27FFBE290);
      v86 = v3;
      v87 = sub_264F13134();
      v88 = sub_264F13424();

      v106 = v15;
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        aBlock = v90;
        *v89 = 136446466;
        v91 = sub_264F048F4();
        v93 = sub_264F0C768(v91, v92, &aBlock);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2082;
        if (v9)
        {
          v94 = 0x756F726765726F66;
        }

        else
        {
          v94 = 0x756F72676B636162;
        }

        v95 = sub_264F0C768(v94, 0xEA0000000000646ELL, &aBlock);

        *(v89 + 14) = v95;
        _os_log_impl(&dword_264EF1000, v87, v88, "[%{public}s] Creating capture scene to %{public}s.", v89, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266753530](v90, -1, -1);
        MEMORY[0x266753530](v89, -1, -1);
      }

      v3 = swift_allocObject();
      *(v3 + 16) = v86;
      *(v3 + 24) = v4;
      *(v3 + 32) = v5;
      v96 = v9 & 1;
      *(v3 + 40) = v9 & 1;
      v97 = swift_allocObject();
      *(v97 + 16) = sub_264F0ECB4;
      *(v97 + 24) = v3;
      v113 = sub_264F0F00C;
      v114 = v97;
      aBlock = MEMORY[0x277D85DD0];
      v110 = v6;
      v111 = sub_264F0EFBC;
      v112 = &block_descriptor_105_0;
      v98 = _Block_copy(&aBlock);
      v99 = v86;

      [v108 configureParameters_];
      _Block_release(v98);
      LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

      if (v98)
      {
        __break(1u);
        goto LABEL_56;
      }

      v9 = swift_allocObject();
      *(v9 + 16) = v96;
      *(v9 + 24) = v99;
      v100 = swift_allocObject();
      *(v100 + 16) = sub_264F0ED0C;
      *(v100 + 24) = v9;
      v113 = sub_264F0EF7C;
      v114 = v100;
      aBlock = MEMORY[0x277D85DD0];
      v110 = v6;
      v111 = sub_264F084DC;
      v112 = &block_descriptor_115;
      a3 = _Block_copy(&aBlock);
      v101 = v99;

      v102 = swift_allocObject();
      v102[2] = a2;
      v102[3] = v107;
      v102[4] = v101;
      v102[5] = v108;
      v113 = sub_264F0ED68;
      v114 = v102;
      aBlock = MEMORY[0x277D85DD0];
      v110 = v6;
      v111 = sub_264F08548;
      v112 = &block_descriptor_121;
      v13 = _Block_copy(&aBlock);
      v103 = v101;
      sub_264F0ED74(a2);
      v104 = v108;

      [v104 performUpdate:a3 withCompletion:v13];

      swift_unknownObjectRelease();
      _Block_release(v13);
      _Block_release(a3);
      LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

      if ((v104 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_51:
      swift_once();
    }
  }

  v31 = sub_264F0F238([v3 extensionProvider]);
  swift_unknownObjectRelease();
  if (v31)
  {
    type metadata accessor for SecureCaptureSceneExtension();
    [v31 addExtension_];
    v32 = *(v3 + v10);
    *(v3 + v10) = v31;
    v108 = v31;

    [v108 setDelegate_];
    v33 = [v108 layerManager];
    [v33 addObserver_];

    v34 = [v108 uiPresentationManager];
    if (!v34)
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v71 = sub_264F13154();
      __swift_project_value_buffer(v71, qword_27FFBE290);
      v72 = v3;
      v73 = sub_264F13134();
      v74 = sub_264F13414();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        aBlock = v76;
        *v75 = 136446210;
        v77 = sub_264F048F4();
        v79 = sub_264F0C768(v77, v78, &aBlock);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_264EF1000, v73, v74, "[%{public}s] Can't find the UI presentation manager", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x266753530](v76, -1, -1);
        MEMORY[0x266753530](v75, -1, -1);
      }

      if (a2)
      {
        a2();
      }

      return;
    }

    v15 = v34;
    v107 = a3;
    v35 = sub_264F13204();
    v36 = [v15 createPresenterWithIdentifier_];

    v37 = *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter);
    *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter) = v36;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v113 = sub_264F085C0;
    v114 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v6 = 1107296256;
    v110 = 1107296256;
    v111 = sub_264F0EFBC;
    v112 = &block_descriptor_96;
    v38 = _Block_copy(&aBlock);

    [v36 modifyPresentationContext_];
    _Block_release(v38);
    if (swift_isEscapingClosureAtFileLocation())
    {
      goto LABEL_53;
    }

    [v36 activate];
    v39 = [v36 presentationView];
    v40 = [v39 layer];
    [v40 setSecurityMode_];

    v41 = *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView);
    *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView) = v39;
    v42 = v39;

    v43 = [v3 view];
    if (v43)
    {
      v44 = v43;
      [v43 addSubview_];

      v45 = *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController);
      if (v45)
      {
        v46 = v42;
        v47 = v45;
        v48 = [v3 view];
        if (!v48)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v49 = v48;
        v50 = [v47 view];
        if (!v50)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v51 = v50;
        [v49 bringSubviewToFront_];

        v42 = v46;
      }

      v52 = [v3 view];
      if (v52)
      {
        v53 = v52;
        [v52 setNeedsLayout];

        [v42 setClipsToBounds_];
        v54 = [v42 layer];
        v55 = sub_264F13204();
        [v54 setName_];

        v56 = [v3 view];
        if (v56)
        {
          v57 = v56;
          v58 = [v56 window];

          if (v58)
          {
            v59 = [v58 screen];

            [v59 _referenceBounds];
            v4 = v60;
            v5 = v61;

            goto LABEL_42;
          }

          v80 = [v3 view];
          if (v80)
          {
            v81 = v80;
            [v80 bounds];
            v5 = v82;
            v84 = v83;

            if (v84 >= v5)
            {
              v4 = v5;
            }

            else
            {
              v4 = v84;
            }

            if (v5 <= v84)
            {
              v5 = v84;
            }

LABEL_42:
            v105 = v42;
            [v3 setPreferredContentSize_];
            if (qword_27FFBD950 == -1)
            {
              goto LABEL_43;
            }

            goto LABEL_54;
          }

LABEL_62:
          __break(1u);
          return;
        }

        goto LABEL_59;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (qword_27FFBD950 != -1)
  {
LABEL_56:
    swift_once();
  }

  v62 = sub_264F13154();
  __swift_project_value_buffer(v62, qword_27FFBE290);
  v63 = v3;
  v64 = sub_264F13134();
  v65 = sub_264F13414();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock = v67;
    *v66 = 136446210;
    v68 = sub_264F048F4();
    v70 = sub_264F0C768(v68, v69, &aBlock);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_264EF1000, v64, v65, "[%{public}s] Can't create a capture extension scene", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x266753530](v67, -1, -1);
    MEMORY[0x266753530](v66, -1, -1);
  }

  if (a2)
  {
    a2();
  }
}

void sub_264F08378(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v5[4] = sub_264F0EEBC;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_264EFD564;
  v5[3] = &block_descriptor_152;
  v3 = _Block_copy(v5);
  v4 = a1;

  BSDispatchMain();
  _Block_release(v3);
}

uint64_t sub_264F08444(char *a1)
{
  result = BSDispatchQueueAssertMain();
  if (*&a1[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] == 2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v4 = a1;
    sub_264F06830(sub_264F0F014, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_264F084DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_264F08548(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_264F085C0(void *a1)
{
  [a1 setPresentedLayerTypes_];
  [a1 setAppearanceStyle_];
  [a1 setBackgroundColorWhileHosting_];
  [a1 setBackgroundColorWhileNotHosting_];
  [a1 setInheritsSecurity_];

  return [a1 setResizesHostedContext_];
}

uint64_t sub_264F08660(void *a1, void *a2, char a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  *(v10 + 40) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_264F0EE4C;
  *(v11 + 24) = v10;
  v15[4] = sub_264F0EE5C;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_264F0EFBC;
  v15[3] = &block_descriptor_146;
  v12 = _Block_copy(v15);
  v13 = a2;

  [a1 updateSettingsWithBlock_];
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_264F087D4(void *a1, void *a2, char a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v26 = a1;
    BSRectWithSize();
    [v7 setFrame_];
    [v7 setInterfaceOrientation_];
    [v7 setInterfaceOrientationMode_];
    v8 = [objc_opt_self() mainConfiguration];
    [v7 setDisplayConfiguration_];

    [v7 setForeground_];
    [v7 setActivityMode_];

    v9 = [a2 traitCollection];
    v10 = [v9 userInterfaceStyle];

    [v7 setUserInterfaceStyle_];
    v11 = [v7 otherSettings];
    v12 = sub_264F13204();
    [v11 setObject:v12 forSetting:20211529];

    v13 = [a2 view];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = [v13 window];

    if (v15)
    {
      v16 = [v15 windowScene];

      if (v16)
      {
        v17 = [v16 statusBarManager];

        if (v17)
        {
          [v17 defaultStatusBarHeightInOrientation_];
          [v7 setDefaultStatusBarHeight:1 forOrientation:?];
        }
      }
    }
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v18 = sub_264F13154();
    __swift_project_value_buffer(v18, qword_27FFBE290);
    v19 = a2;
    v26 = sub_264F13134();
    v20 = sub_264F13414();

    if (os_log_type_enabled(v26, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136446210;
      v23 = sub_264F048F4();
      v25 = sub_264F0C768(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_264EF1000, v26, v20, "[%{public}s] Can't update Capture Extension mutable scene settings.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x266753530](v22, -1, -1);
      MEMORY[0x266753530](v21, -1, -1);
    }
  }
}

void sub_264F08B98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_264F08BE4(uint64_t a1, void *a2, char a3, char *a4)
{
  if ((a3 & 1) == 0)
  {
    return;
  }

  v6 = OBJC_IVAR___SESecureCaptureSceneViewController_launchActions;
  v7 = *&a4[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions];
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (!*(v7 + 16))
    {
      return;
    }

    goto LABEL_6;
  }

  if (v7 < 0)
  {
    v8 = *&a4[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions];
  }

  v9 = *&a4[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions];

  v10 = sub_264F13584();

  if (v10)
  {
LABEL_6:
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v11 = sub_264F13154();
    __swift_project_value_buffer(v11, qword_27FFBE290);
    v12 = a4;
    v13 = sub_264F13134();
    v14 = sub_264F13424();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136446466;
      v17 = sub_264F048F4();
      v19 = sub_264F0C768(v17, v18, &v27);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = *&a4[v6];
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      sub_264EFB470();

      v21 = sub_264F13394();
      v23 = v22;

      v24 = sub_264F0C768(v21, v23, &v27);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_264EF1000, v13, v14, "[%{public}s] Setting transition context with launch actions: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v16, -1, -1);
      MEMORY[0x266753530](v15, -1, -1);
    }

    v25 = *&a4[v6];
    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    sub_264EFB470();

    v26 = sub_264F13364();

    [a2 setActions_];
  }
}

id sub_264F08EA8(int a1, int a2, void (*a3)(void), int a4, id a5, uint64_t a6)
{
  if (a3)
  {
    a3();
  }

  result = [a5 delegate];
  if (result)
  {
    [result secureCaptureSceneViewController:a5 didCreateScene:a6];

    return swift_unknownObjectRelease();
  }

  return result;
}

void SESecureCaptureSceneViewController.reactivate(launchActions:)(uint64_t a1)
{
  v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR___SESecureCaptureSceneViewController_scene);
  if (v2)
  {
    if (*(isEscapingClosureAtFileLocation + OBJC_IVAR___SESecureCaptureSceneViewController_sceneActivated))
    {
      v3 = qword_27FFBD950;
      oslog = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v4 = sub_264F13154();
      __swift_project_value_buffer(v4, qword_27FFBE290);
      v5 = isEscapingClosureAtFileLocation;
      v6 = sub_264F13134();
      v7 = sub_264F13424();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        aBlock[0] = v9;
        *v8 = 136446210;
        v10 = sub_264F048F4();
        v12 = sub_264F0C768(v10, v11, aBlock);

        *(v8 + 4) = v12;
        v13 = "[%{public}s] Scene is already activated. Ignoring reactivation request.";
LABEL_18:
        _os_log_impl(&dword_264EF1000, v6, v7, v13, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x266753530](v9, -1, -1);
        MEMORY[0x266753530](v8, -1, -1);

        goto LABEL_19;
      }
    }

    else
    {
      oslog = v2;
      v23 = [oslog settings];
      v24 = [v23 isForeground];

      if (v24)
      {
        v25 = *(isEscapingClosureAtFileLocation + OBJC_IVAR___SESecureCaptureSceneViewController_launchActions);
        *(isEscapingClosureAtFileLocation + OBJC_IVAR___SESecureCaptureSceneViewController_launchActions) = a1;

        [oslog activate:0];
        v26 = swift_allocObject();
        *(v26 + 16) = 1;
        *(v26 + 24) = a1;
        *(v26 + 32) = isEscapingClosureAtFileLocation;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_264F0CFEC;
        *(v27 + 24) = v26;
        aBlock[4] = sub_264F0CFF8;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_264F084DC;
        aBlock[3] = &block_descriptor_2;
        v28 = _Block_copy(aBlock);

        v29 = isEscapingClosureAtFileLocation;

        [oslog performUpdate:v28];

        _Block_release(v28);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }

      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v30 = sub_264F13154();
      __swift_project_value_buffer(v30, qword_27FFBE290);
      v31 = isEscapingClosureAtFileLocation;
      v6 = sub_264F13134();
      v7 = sub_264F13424();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        aBlock[0] = v9;
        *v8 = 136446210;
        v32 = sub_264F048F4();
        v34 = sub_264F0C768(v32, v33, aBlock);

        *(v8 + 4) = v34;
        v13 = "[%{public}s] Scene is not in foreground. Ignoring reactivation request.";
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v14 = sub_264F13154();
    __swift_project_value_buffer(v14, qword_27FFBE290);
    v15 = isEscapingClosureAtFileLocation;
    oslog = sub_264F13134();
    v16 = sub_264F13424();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446210;
      v19 = sub_264F048F4();
      v21 = sub_264F0C768(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_264EF1000, oslog, v16, "[%{public}s] Scene has not been initialized. Ignoring reactivation request.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x266753530](v18, -1, -1);
      MEMORY[0x266753530](v17, -1, -1);
LABEL_19:

      return;
    }
  }
}

void sub_264F0948C(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      if (!sub_264F13584())
      {
        return;
      }
    }

    else if (!*(a4 + 16))
    {
      return;
    }

    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v7 = sub_264F13154();
    __swift_project_value_buffer(v7, qword_27FFBE290);
    v8 = a5;
    v9 = sub_264F13134();
    v10 = sub_264F13424();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446466;
      v13 = sub_264F048F4();
      v15 = sub_264F0C768(v13, v14, &v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = *&v8[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions];
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      sub_264EFB470();

      v17 = sub_264F13394();
      v19 = v18;

      v20 = sub_264F0C768(v17, v19, &v22);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_264EF1000, v9, v10, "[%{public}s] Reactivation: Setting transition context with launch actions: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v12, -1, -1);
      MEMORY[0x266753530](v11, -1, -1);
    }

    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    sub_264EFB470();
    v21 = sub_264F13364();
    [a2 setActions_];
  }
}