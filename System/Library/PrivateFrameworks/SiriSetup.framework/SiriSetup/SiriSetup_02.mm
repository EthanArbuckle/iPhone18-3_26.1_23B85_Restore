id sub_269033158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuccessProxCardController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2690331FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269033284(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E80, &unk_26905B180);
    v2 = sub_269057D04();
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
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_26901729C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_26901729C(v34, v35);
    v19 = *(v2 + 40);
    result = sub_269057C34();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_26901729C(v35, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_26903354C(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[11];
  v38[10] = v3[10];
  v38[11] = v4;
  v38[12] = v3[12];
  v5 = v3[7];
  v38[6] = v3[6];
  v38[7] = v5;
  v6 = v3[9];
  v38[8] = v3[8];
  v38[9] = v6;
  v7 = v3[3];
  v38[2] = v3[2];
  v38[3] = v7;
  v8 = v3[5];
  v38[4] = v3[4];
  v38[5] = v8;
  v9 = v3[1];
  v38[0] = *v3;
  v38[1] = v9;
  v10 = a1[11];
  v3[10] = a1[10];
  v3[11] = v10;
  v3[12] = a1[12];
  v11 = a1[7];
  v3[6] = a1[6];
  v3[7] = v11;
  v12 = a1[9];
  v3[8] = a1[8];
  v3[9] = v12;
  v13 = a1[3];
  v3[2] = a1[2];
  v3[3] = v13;
  v14 = a1[5];
  v3[4] = a1[4];
  v3[5] = v14;
  v15 = a1[1];
  *v3 = *a1;
  v3[1] = v15;
  result = sub_269009EE0(v38);
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
  {
    v17 = v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController;
    v18 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    if (v18)
    {
      v19 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      v36[5] = v18;
      v21 = v3[11];
      v37[10] = v3[10];
      v37[11] = v21;
      v37[12] = v3[12];
      v22 = v3[7];
      v37[6] = v3[6];
      v37[7] = v22;
      v23 = v3[9];
      v37[8] = v3[8];
      v37[9] = v23;
      v24 = v3[3];
      v37[2] = v3[2];
      v37[3] = v24;
      v25 = v3[5];
      v37[4] = v3[4];
      v37[5] = v25;
      v26 = v3[1];
      v37[0] = *v3;
      v37[1] = v26;
      v36[3] = &type metadata for ViewModel;
      v36[4] = &off_2879A7790;
      v27 = swift_allocObject();
      v36[0] = v27;
      v28 = v3[11];
      v27[11] = v3[10];
      v27[12] = v28;
      v27[13] = v3[12];
      v29 = v3[7];
      v27[7] = v3[6];
      v27[8] = v29;
      v30 = v3[9];
      v27[9] = v3[8];
      v27[10] = v30;
      v31 = v3[3];
      v27[3] = v3[2];
      v27[4] = v31;
      v32 = v3[5];
      v27[5] = v3[4];
      v27[6] = v32;
      v33 = v3[1];
      v27[1] = *v3;
      v27[2] = v33;
      v34 = *(v19 + 16);
      sub_269009E3C(v37, &v35);
      v34(v36, 0, ObjectType, v19);
      return __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }
  }

  return result;
}

void (*sub_26903372C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel;
  *(v3 + 464) = v1;
  *(v3 + 472) = v4;
  swift_beginAccess();
  return sub_2690337B4;
}

void sub_2690337B4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[58];
    if (*(v4 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
    {
      v5 = *(v4 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
      if (v5)
      {
        v6 = (v4 + v3[59]);
        v7 = *(v4 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
        v8 = *(v4 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
        ObjectType = swift_getObjectType();
        v3[57] = v5;
        *v3 = *v6;
        v10 = v6[1];
        v11 = v6[2];
        v12 = v6[4];
        *(v3 + 3) = v6[3];
        *(v3 + 4) = v12;
        *(v3 + 1) = v10;
        *(v3 + 2) = v11;
        v13 = v6[5];
        v14 = v6[6];
        v15 = v6[8];
        *(v3 + 7) = v6[7];
        *(v3 + 8) = v15;
        *(v3 + 5) = v13;
        *(v3 + 6) = v14;
        v16 = v6[9];
        v17 = v6[10];
        v18 = v6[12];
        *(v3 + 11) = v6[11];
        *(v3 + 12) = v18;
        *(v3 + 9) = v16;
        *(v3 + 10) = v17;
        v3[55] = &type metadata for ViewModel;
        v3[56] = &off_2879A7790;
        v19 = swift_allocObject();
        v3[52] = v19;
        v19[1] = *v6;
        v20 = v6[4];
        v22 = v6[1];
        v21 = v6[2];
        v19[4] = v6[3];
        v19[5] = v20;
        v19[2] = v22;
        v19[3] = v21;
        v23 = v6[8];
        v25 = v6[5];
        v24 = v6[6];
        v19[8] = v6[7];
        v19[9] = v23;
        v19[6] = v25;
        v19[7] = v24;
        v26 = v6[12];
        v28 = v6[9];
        v27 = v6[10];
        v19[12] = v6[11];
        v19[13] = v26;
        v19[10] = v28;
        v19[11] = v27;
        v29 = *(v7 + 16);
        sub_269009E3C(v3, (v3 + 26));
        v29(v3 + 52, 0, ObjectType, v7);
        __swift_destroy_boxed_opaque_existential_1Tm(v3 + 52);
      }
    }
  }

  free(v3);
}

char *sub_269033924(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_preEnrollmentVoiceTriggerState] = 0;
  v15 = &v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_AVVCRetryCount] = 0;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled] = 0;
  v16 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager] = 0;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState] = 0;
  v49 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager] = 0;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingSessionId] = 0;
  sub_2690576D4();
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator] = 0;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_lastPlayedTryAgain] = 0;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_currentAnimationCompleted] = 0;
  v17 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_clearCaptionsTask] = 0;
  *&v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page] = a7;
  v19 = &v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSourceWriter];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0xE000000000000000;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  *(v21 + 6) = 0;
  *(v21 + 7) = 0xE000000000000000;
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 7) = 0u;
  *(v21 + 8) = 0u;
  *(v21 + 18) = 0;
  v21[152] = 2;
  *(v21 + 21) = 0;
  *(v21 + 22) = 0;
  *(v21 + 20) = 0;
  *(v21 + 183) = 0;
  *(v21 + 24) = 0;
  *(v21 + 25) = 0;
  v22 = swift_getObjectType();
  v23 = *(a2 + 80);

  v24 = a1;
  v48 = a3;
  v8[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewStyle] = v23(v22, a2);
  if (a6 && (objc_opt_self(), (v25 = swift_dynamicCastObjCClass()) != 0))
  {
    v26 = v25;
    v27 = a6;
    v28 = v26;
  }

  else
  {
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v28 = [objc_allocWithZone(SRSVoiceProfileManager) init];
  }

  v29 = a5;
  v30 = *&v8[v16];
  *&v8[v16] = v28;

  if (a5 && (objc_opt_self(), (v31 = swift_dynamicCastObjCClass()) != 0))
  {
    v32 = v31;
    v29 = a5;
  }

  else
  {
    (*(a2 + 88))(v22, a2);
    (*(a2 + 16))(v22, a2);
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v33 = objc_allocWithZone(SRSVoiceTrainingManager);
    v34 = sub_269057944();

    v35 = sub_269057944();

    v32 = [v33 initWithLanguageCode:v34 withSharedUserId:v35];
  }

  v36 = *&v8[v49];
  *&v8[v49] = v32;

  v52.receiver = v8;
  v52.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v52, sel_init);
  v38 = v37[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewStyle];
  v39 = v37;
  v40 = sub_269033DB0(v38);
  v42 = v41;
  v44 = v43;

  v45 = &v39[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
  v46 = *&v39[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
  *v45 = v40;
  v45[1] = v42;
  v45[2] = v44;

  return v39;
}

char *sub_269033DB0(char a1)
{
  sub_2690343E8(&v47);
  sub_26903354C(&v47);
  if (a1)
  {
    if (a1 == 1)
    {
      return 0;
    }

    else
    {
      v18 = (v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
      swift_beginAccess();
      v19 = v18[9];
      v20 = v18[11];
      v57 = v18[10];
      v58 = v20;
      v21 = v18[11];
      v59 = v18[12];
      v22 = v18[5];
      v23 = v18[7];
      v53 = v18[6];
      v54 = v23;
      v24 = v18[7];
      v25 = v18[9];
      v55 = v18[8];
      v56 = v25;
      v26 = v18[1];
      v27 = v18[3];
      v49 = v18[2];
      v50 = v27;
      v28 = v18[3];
      v29 = v18[5];
      v51 = v18[4];
      v52 = v29;
      v30 = v18[1];
      v47 = *v18;
      v48 = v30;
      v44 = v57;
      v45 = v21;
      v46 = v18[12];
      v40 = v53;
      v41 = v24;
      v42 = v55;
      v43 = v19;
      v36 = v49;
      v37 = v28;
      v38 = v51;
      v39 = v22;
      v34 = v47;
      v35 = v26;
      v31 = objc_allocWithZone(type metadata accessor for VoiceTrainingProxController());
      sub_269009E3C(&v47, v33);
      v3 = sub_26901CB88(&v34);
      *&v3[OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_delegate + 8] = &off_2879A8010;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    v4 = (v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
    swift_beginAccess();
    v5 = v4[9];
    v6 = v4[11];
    v57 = v4[10];
    v58 = v6;
    v7 = v4[11];
    v59 = v4[12];
    v8 = v4[5];
    v9 = v4[7];
    v53 = v4[6];
    v54 = v9;
    v10 = v4[7];
    v11 = v4[9];
    v55 = v4[8];
    v56 = v11;
    v12 = v4[1];
    v13 = v4[3];
    v49 = v4[2];
    v50 = v13;
    v14 = v4[3];
    v15 = v4[5];
    v51 = v4[4];
    v52 = v15;
    v16 = v4[1];
    v47 = *v4;
    v48 = v16;
    v44 = v57;
    v45 = v7;
    v46 = v4[12];
    v40 = v53;
    v41 = v10;
    v42 = v55;
    v43 = v5;
    v36 = v49;
    v37 = v14;
    v38 = v51;
    v39 = v8;
    v34 = v47;
    v35 = v12;
    v17 = objc_allocWithZone(type metadata accessor for VoiceTrainingWelcomeController());
    sub_269009E3C(&v47, v33);
    v3 = sub_26902661C(&v34);
    *&v3[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_delegate + 8] = &off_2879A8010;
    swift_unknownObjectWeakAssign();
  }

  return v3;
}

uint64_t sub_269034014()
{
  v1 = *(v0 + 16);
  sub_269057C54();

  v2 = v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource;
  v4 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
  v3 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  v7 = v4;
  v8 = v6(ObjectType, v3);
  v10 = v9;

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 7104878;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x26D62FBC0](v11, v12);

  MEMORY[0x26D62FBC0](0x5564657261687320, 0xEE00206449726573);
  v14 = *v2;
  v13 = *(v2 + 8);
  v15 = swift_getObjectType();
  v16 = *(v13 + 16);
  v17 = v14;
  v18 = v16(v15, v13);
  v20 = v19;

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = 7104878;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  MEMORY[0x26D62FBC0](v21, v22);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 16);
  v24 = sub_269057774();
  __swift_project_value_buffer(v24, qword_2802F3FF8);
  v25 = sub_269057AA4();
  sub_269053434(v25, 0xD000000000000015, 0x800000026905ECE0, 0xD000000000000022, 0x800000026905ED00, 0x4164756F6C436920, 0xEF2044495344746CLL);

  v26 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  v27 = *(v23 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
  v28 = v27;
  v29 = v27;
  if (!v27)
  {
    v31 = *v2;
    v30 = *(v2 + 8);
    v32 = swift_getObjectType();
    v33 = *(v30 + 88);
    v34 = v31;
    v33(v32, v30);

    v35 = *v2;
    v36 = *(v2 + 8);
    v37 = swift_getObjectType();
    v38 = *(v36 + 16);
    v39 = v35;
    v38(v37, v36);

    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v40 = objc_allocWithZone(SRSVoiceTrainingManager);
    v41 = sub_269057944();

    v42 = sub_269057944();

    v29 = [v40 initWithLanguageCode:v41 withSharedUserId:v42];

    v28 = *(v23 + v26);
  }

  *(v23 + v26) = v29;
  v43 = v27;

  v44 = *(v23 + v26);
  if (v44)
  {
    [v44 setDelegate_];
  }

  v45 = *(v0 + 8);

  return v45();
}

double sub_2690343E8@<D0>(uint64_t a1@<X8>)
{
  v3 = 0x800000026905E8F0;
  v4 = v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource;
  v5 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
  v6 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 88);
  v9 = v5;
  v8(ObjectType, v6);
  v11 = v10;

  if (qword_2802F3248 != -1)
  {
LABEL_21:
    swift_once();
  }

  v12 = byte_2802F5130;
  v13 = sub_269051B18(byte_2802F5130);
  v48 = 0xD00000000000001FLL;
  v49 = 0x800000026905E8F0;
  MEMORY[0x26D62FBC0](v13);

  v14 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    v14 = sub_26904DCD8((v15 > 1), v16 + 1, 1, v14);
    v15 = *(v14 + 3);
    v17 = v15 >> 1;
  }

  *(v14 + 2) = v18;
  v19 = &v14[16 * v16];
  *(v19 + 4) = 0xD00000000000001FLL;
  *(v19 + 5) = 0x800000026905E8F0;
  v46 = v11;
  if (v17 < (v16 + 2))
  {
    v14 = sub_26904DCD8((v15 > 1), v16 + 2, 1, v14);
  }

  *(v14 + 2) = v16 + 2;
  v20 = &v14[16 * v18];
  *(v20 + 4) = 0xD00000000000001FLL;
  *(v20 + 5) = 0x800000026905E8F0;
  v21 = (v14 + 40);
  v22 = -v16;
  v11 = -1;
  while (v22 + v11 != 1)
  {
    if (++v11 >= *(v14 + 2))
    {
      __break(1u);
      goto LABEL_21;
    }

    v23 = v21 + 2;
    v24 = *(v21 - 1);
    v25 = *v21;

    v26 = sub_26902F7F4(v24, v25, 0);
    v28 = v27;

    v21 = v23;
    if (v28)
    {

      v3 = v28;
      if (!v46)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD00000000000001FLL, 0x800000026905E8F0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v29 = sub_269057774();
  __swift_project_value_buffer(v29, qword_2802F3FF8);
  v30 = sub_269057A94();
  v48 = 0xD00000000000003BLL;
  v49 = 0x800000026905BF00;
  v31 = sub_269057764();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47[0] = v33;
    *v32 = 136315138;
    v34 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v47);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_269002000, v31, v30, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x26D6309D0](v33, -1, -1);
    MEMORY[0x26D6309D0](v32, -1, -1);
  }

  else
  {
  }

  v26 = 0xD00000000000001FLL;
  if (v46)
  {
LABEL_18:
    v26 = sub_26902FAA0();
    v36 = v35;

    v3 = v36;
  }

LABEL_19:
  sub_2690519EC(v12);
  v48 = v26;
  v49 = v3;
  strcpy(v47, "%DEVICE_NAME%");
  HIWORD(v47[1]) = -4864;
  sub_26900BE9C();
  v37 = sub_269057BE4();
  v39 = v38;

  sub_2690519EC(v12);
  v48 = v37;
  v49 = v39;
  v47[0] = 0xD000000000000014;
  v47[1] = 0x800000026905BEA0;
  v40 = sub_269057BE4();
  v42 = v41;

  v43 = sub_269043D38(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = v40;
  *(a1 + 80) = v42;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v43;
  *(a1 + 112) = v44;
  result = 0.0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 183) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_2690349B0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 == 5)
      {
        v2 = 0x800000026905E6B0;
        v46 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
        v47 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
        ObjectType = swift_getObjectType();
        v49 = *(v47 + 88);
        v50 = v46;
        v49(ObjectType, v47);
        v10 = v51;

        if (qword_2802F3248 != -1)
        {
          swift_once();
        }

        v11 = byte_2802F5130;
        v52 = sub_269051B18(byte_2802F5130);
        v156 = 0xD000000000000013;
        v157 = 0x800000026905E6B0;
        MEMORY[0x26D62FBC0](v52);

        v53 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
        v15 = *(v53 + 2);
        v54 = *(v53 + 3);
        v55 = v54 >> 1;
        v17 = v15 + 1;
        if (v54 >> 1 <= v15)
        {
          v53 = sub_26904DCD8((v54 > 1), v15 + 1, 1, v53);
          v54 = *(v53 + 3);
          v55 = v54 >> 1;
        }

        *(v53 + 2) = v17;
        v56 = &v53[16 * v15];
        *(v56 + 4) = 0xD000000000000013;
        *(v56 + 5) = 0x800000026905E6B0;
        v19 = v15 + 2;
        if (v55 < (v15 + 2))
        {
          v53 = sub_26904DCD8((v54 > 1), v15 + 2, 1, v53);
        }

        *(v53 + 2) = v19;
        v57 = &v53[16 * v17];
        *(v57 + 4) = 0xD000000000000013;
        *(v57 + 5) = 0x800000026905E6B0;
        v58 = (v53 + 40);
        v59 = -v15;
        v60 = -1;
        while (v59 + v60 != 1)
        {
          if (++v60 >= *(v53 + 2))
          {
            goto LABEL_109;
          }

          v61 = v58 + 2;
          v62 = *(v58 - 1);
          v15 = *v58;

          v19 = sub_26902F7F4(v62, v15, 0);
          v17 = v63;

          v58 = v61;
          if (v17)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        v2 = 0x800000026905E6B0;
        v108 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
        v109 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
        v110 = swift_getObjectType();
        v111 = *(v109 + 88);
        v112 = v108;
        v111(v110, v109);
        v10 = v113;

        if (qword_2802F3248 != -1)
        {
          swift_once();
        }

        v11 = byte_2802F5130;
        v114 = sub_269051B18(byte_2802F5130);
        v156 = 0xD000000000000013;
        v157 = 0x800000026905E6B0;
        MEMORY[0x26D62FBC0](v114);

        v115 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
        v15 = *(v115 + 2);
        v116 = *(v115 + 3);
        v117 = v116 >> 1;
        v17 = v15 + 1;
        if (v116 >> 1 <= v15)
        {
          v115 = sub_26904DCD8((v116 > 1), v15 + 1, 1, v115);
          v116 = *(v115 + 3);
          v117 = v116 >> 1;
        }

        *(v115 + 2) = v17;
        v118 = &v115[16 * v15];
        *(v118 + 4) = 0xD000000000000013;
        *(v118 + 5) = 0x800000026905E6B0;
        v19 = v15 + 2;
        if (v117 < (v15 + 2))
        {
          v115 = sub_26904DCD8((v116 > 1), v15 + 2, 1, v115);
        }

        *(v115 + 2) = v19;
        v119 = &v115[16 * v17];
        *(v119 + 4) = 0xD000000000000013;
        *(v119 + 5) = 0x800000026905E6B0;
        v120 = (v115 + 40);
        v121 = -v15;
        v122 = -1;
        while (v121 + v122 != 1)
        {
          if (++v122 >= *(v115 + 2))
          {
            goto LABEL_111;
          }

          v123 = v120 + 2;
          v124 = *(v120 - 1);
          v15 = *v120;

          v19 = sub_26902F7F4(v124, v15, 0);
          v17 = v125;

          v120 = v123;
          if (v17)
          {
LABEL_78:

            v2 = v17;
            goto LABEL_88;
          }
        }
      }
    }

    else
    {
      if (a1 == 3)
      {
        v2 = 0x800000026905E6F0;
        v3 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
        v4 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
        v5 = swift_getObjectType();
        v6 = *(v4 + 88);
        v7 = v3;
        v6(v5, v4);
        v9 = v8;

        if (qword_2802F3248 != -1)
        {
          swift_once();
        }

        v10 = 0xD000000000000013;
        v11 = byte_2802F5130;
        v12 = sub_269051B18(byte_2802F5130);
        v156 = 0xD000000000000014;
        v157 = 0x800000026905E6F0;
        MEMORY[0x26D62FBC0](v12);

        v13 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        v16 = v14 >> 1;
        v17 = v15 + 1;
        if (v14 >> 1 <= v15)
        {
          v13 = sub_26904DCD8((v14 > 1), v15 + 1, 1, v13);
          v14 = *(v13 + 3);
          v16 = v14 >> 1;
        }

        *(v13 + 2) = v17;
        v18 = &v13[16 * v15];
        *(v18 + 4) = 0xD000000000000014;
        *(v18 + 5) = 0x800000026905E6F0;
        v19 = v15 + 2;
        v153 = v9;
        if (v16 < (v15 + 2))
        {
          v13 = sub_26904DCD8((v14 > 1), v15 + 2, 1, v13);
        }

        *(v13 + 2) = v19;
        v20 = &v13[16 * v17];
        *(v20 + 4) = 0xD000000000000014;
        *(v20 + 5) = 0x800000026905E6F0;
        v21 = (v13 + 40);
        v22 = -v15;
        v23 = -1;
        while (v22 + v23 != 1)
        {
          if (++v23 >= *(v13 + 2))
          {
            goto LABEL_108;
          }

          v24 = v21 + 2;
          v25 = *(v21 - 1);
          v15 = *v21;

          v19 = sub_26902F7F4(v25, v15, 0);
          v17 = v26;

          v21 = v24;
          if (v17)
          {

            v2 = v17;
            if (!v153)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          }
        }

        sub_269057C54();
        MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
        MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905E6F0);
        MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
        if (qword_2802F3258 != -1)
        {
          swift_once();
        }

        v141 = sub_269057774();
        __swift_project_value_buffer(v141, qword_2802F3FF8);
        v142 = sub_269057A94();
        v156 = 0xD00000000000003BLL;
        v157 = 0x800000026905BF00;
        v143 = sub_269057764();
        if (os_log_type_enabled(v143, v142))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v155[0] = v145;
          *v144 = 136315138;
          v146 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v155);

          *(v144 + 4) = v146;
          _os_log_impl(&dword_269002000, v143, v142, "%s", v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v145);
          MEMORY[0x26D6309D0](v145, -1, -1);
          MEMORY[0x26D6309D0](v144, -1, -1);
        }

        else
        {
        }

        v19 = 0xD000000000000014;
        if (v153)
        {
LABEL_102:
          v19 = sub_26902FAA0();
          v148 = v147;

          v2 = v148;
        }

LABEL_103:
        sub_2690519EC(v11);
        v156 = v19;
        v157 = v2;
        strcpy(v155, "%DEVICE_NAME%");
        HIWORD(v155[1]) = -4864;
        sub_26900BE9C();
        v149 = sub_269057BE4();
        v151 = v150;

        sub_2690519EC(v11);
        v156 = v149;
        v157 = v151;
        v155[0] = 0xD000000000000014;
        v155[1] = 0x800000026905BEA0;
        v64 = sub_269057BE4();

LABEL_104:

        return v64;
      }

      v2 = 0x800000026905E6D0;
      v90 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
      v91 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
      v92 = swift_getObjectType();
      v93 = *(v91 + 88);
      v94 = v90;
      v93(v92, v91);
      v10 = v95;

      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v11 = byte_2802F5130;
      v96 = sub_269051B18(byte_2802F5130);
      v156 = 0xD000000000000013;
      v157 = 0x800000026905E6D0;
      MEMORY[0x26D62FBC0](v96);

      v97 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = *(v97 + 2);
      v98 = *(v97 + 3);
      v99 = v98 >> 1;
      v17 = v15 + 1;
      if (v98 >> 1 <= v15)
      {
        v97 = sub_26904DCD8((v98 > 1), v15 + 1, 1, v97);
        v98 = *(v97 + 3);
        v99 = v98 >> 1;
      }

      *(v97 + 2) = v17;
      v100 = &v97[16 * v15];
      *(v100 + 4) = 0xD000000000000013;
      *(v100 + 5) = 0x800000026905E6D0;
      v19 = v15 + 2;
      if (v99 < (v15 + 2))
      {
        v97 = sub_26904DCD8((v98 > 1), v15 + 2, 1, v97);
      }

      *(v97 + 2) = v19;
      v101 = &v97[16 * v17];
      *(v101 + 4) = 0xD000000000000013;
      *(v101 + 5) = 0x800000026905E6D0;
      v102 = (v97 + 40);
      v103 = -v15;
      v104 = -1;
      while (v103 + v104 != 1)
      {
        if (++v104 >= *(v97 + 2))
        {
          goto LABEL_110;
        }

        v105 = v102 + 2;
        v106 = *(v102 - 1);
        v15 = *v102;

        v19 = sub_26902F7F4(v106, v15, 0);
        v17 = v107;

        v102 = v105;
        if (v17)
        {
          goto LABEL_78;
        }
      }
    }

    v15 = 0x800000026905BF00;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000013, v2);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    v19 = 0;
    v17 = 0xE000000000000000;
    if (qword_2802F3258 != -1)
    {
LABEL_112:
      swift_once();
    }

    v126 = sub_269057774();
    __swift_project_value_buffer(v126, qword_2802F3FF8);
    v127 = sub_269057A94();
    v128 = 0xD00000000000003BLL;
    v156 = 0xD00000000000003BLL;
    v157 = v15;
    v129 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v129 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v129)
    {
      v155[0] = 32;
      v155[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v19, v17);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v128 = v156;
      v15 = v157;
    }

    v130 = sub_269057764();
    if (os_log_type_enabled(v130, v127))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v155[0] = v132;
      *v131 = 136315138;
      v133 = sub_269010108(v128, v15, v155);

      *(v131 + 4) = v133;
      _os_log_impl(&dword_269002000, v130, v127, "%s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      MEMORY[0x26D6309D0](v132, -1, -1);
      MEMORY[0x26D6309D0](v131, -1, -1);
    }

    else
    {
    }

    v19 = 0xD000000000000013;
LABEL_88:
    if (v10)
    {
      v19 = sub_26902FAA0();
      v135 = v134;

      v2 = v135;
    }

    goto LABEL_103;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x800000026905E730;
      v27 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
      v28 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
      v29 = swift_getObjectType();
      v30 = *(v28 + 88);
      v31 = v27;
      v30(v29, v28);
      v33 = v32;

      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v11 = byte_2802F5130;
      v34 = sub_269051B18(byte_2802F5130);
      v17 = 0xD000000000000012;
      v156 = 0xD000000000000012;
      v157 = 0x800000026905E730;
      MEMORY[0x26D62FBC0](v34);

      v35 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = *(v35 + 2);
      v36 = *(v35 + 3);
      v37 = v36 >> 1;
      v15 = v19 + 1;
      if (v36 >> 1 <= v19)
      {
        v35 = sub_26904DCD8((v36 > 1), v19 + 1, 1, v35);
        v36 = *(v35 + 3);
        v37 = v36 >> 1;
      }

      *(v35 + 2) = v15;
      v38 = &v35[16 * v19];
      *(v38 + 4) = 0xD000000000000012;
      *(v38 + 5) = 0x800000026905E730;
      v10 = v19 + 2;
      v154 = v33;
      if (v37 < (v19 + 2))
      {
        v35 = sub_26904DCD8((v36 > 1), v19 + 2, 1, v35);
      }

      *(v35 + 2) = v10;
      v39 = &v35[16 * v15];
      *(v39 + 4) = 0xD000000000000012;
      *(v39 + 5) = 0x800000026905E730;
      v40 = (v35 + 40);
      v41 = -v19;
      v42 = -1;
      while (v41 + v42 != 1)
      {
        if (++v42 >= *(v35 + 2))
        {
          __break(1u);
          goto LABEL_107;
        }

        v43 = v40 + 2;
        v44 = *(v40 - 1);
        v15 = *v40;

        v10 = sub_26902F7F4(v44, v15, 0);
        v19 = v45;

        v40 = v43;
        if (v19)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      v2 = 0x800000026905E710;
      v65 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
      v66 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
      v67 = swift_getObjectType();
      v68 = *(v66 + 88);
      v69 = v65;
      v68(v67, v66);
      v71 = v70;

      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v11 = byte_2802F5130;
      v72 = sub_269051B18(byte_2802F5130);
      v17 = 0xD000000000000012;
      v156 = 0xD000000000000012;
      v157 = 0x800000026905E710;
      MEMORY[0x26D62FBC0](v72);

      v73 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = *(v73 + 2);
      v74 = *(v73 + 3);
      v75 = v74 >> 1;
      v15 = v19 + 1;
      if (v74 >> 1 <= v19)
      {
        v73 = sub_26904DCD8((v74 > 1), v19 + 1, 1, v73);
        v74 = *(v73 + 3);
        v75 = v74 >> 1;
      }

      *(v73 + 2) = v15;
      v76 = &v73[16 * v19];
      *(v76 + 4) = 0xD000000000000012;
      *(v76 + 5) = 0x800000026905E710;
      v10 = v19 + 2;
      v154 = v71;
      if (v75 < (v19 + 2))
      {
        v73 = sub_26904DCD8((v74 > 1), v19 + 2, 1, v73);
      }

      *(v73 + 2) = v10;
      v77 = &v73[16 * v15];
      *(v77 + 4) = 0xD000000000000012;
      *(v77 + 5) = 0x800000026905E710;
      v78 = (v73 + 40);
      v79 = -v19;
      v80 = -1;
      while (v79 + v80 != 1)
      {
        if (++v80 >= *(v73 + 2))
        {
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v81 = v78 + 2;
        v82 = *(v78 - 1);
        v15 = *v78;

        v10 = sub_26902F7F4(v82, v15, 0);
        v19 = v83;

        v78 = v81;
        if (v19)
        {
LABEL_52:

          v17 = v10;
          v2 = v19;
          goto LABEL_93;
        }
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000012, v2);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v84 = sub_269057774();
    __swift_project_value_buffer(v84, qword_2802F3FF8);
    v85 = sub_269057A94();
    v156 = 0xD00000000000003BLL;
    v157 = 0x800000026905BF00;
    v86 = sub_269057764();
    if (os_log_type_enabled(v86, v85))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v155[0] = v88;
      *v87 = 136315138;
      v89 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v155);

      *(v87 + 4) = v89;
      _os_log_impl(&dword_269002000, v86, v85, "%s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      MEMORY[0x26D6309D0](v88, -1, -1);
      MEMORY[0x26D6309D0](v87, -1, -1);
    }

    else
    {
    }

LABEL_93:
    if (v154)
    {
      v17 = sub_26902FAA0();
      v137 = v136;

      v2 = v137;
    }

    sub_2690519EC(v11);
    v156 = v17;
    v157 = v2;
    strcpy(v155, "%DEVICE_NAME%");
    HIWORD(v155[1]) = -4864;
    sub_26900BE9C();
    v138 = sub_269057BE4();
    v140 = v139;

    sub_2690519EC(v11);
    v156 = v138;
    v157 = v140;
    v155[0] = 0xD000000000000014;
    v155[1] = 0x800000026905BEA0;
    v64 = sub_269057BE4();

    goto LABEL_104;
  }

  return a1;
}

uint64_t sub_269035EE0()
{
  v1[5] = v0;
  v2 = sub_2690576E4();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269035FA0, 0, 0);
}

uint64_t sub_269035FA0()
{
  v22 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  *(v4 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled) = 0;
  sub_2690576D4();
  v5 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceEnrollmentLoggingId;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();
  sub_269057C54();

  v20 = 0xD000000000000028;
  v21 = 0x800000026905E960;
  (*(v2 + 16))(v1, v4 + v5, v3);
  sub_269041A0C(&qword_2802F3E58, MEMORY[0x277CC95F0]);
  v6 = sub_269057DA4();
  MEMORY[0x26D62FBC0](v6);

  (*(v2 + 8))(v1, v3);
  MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v7 = sub_269057774();
  __swift_project_value_buffer(v7, qword_2802F3FF8);
  v8 = sub_269057AA4();
  v9 = (0x800000026905E960 >> 56) & 0xF;
  if ((0x800000026905E960 & 0x2000000000000000) == 0)
  {
    v9 = 40;
  }

  if (v9)
  {
    v20 = 32;
    v21 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000028, 0x800000026905E960);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v10 = sub_269057764();
  if (os_log_type_enabled(v10, v8))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = sub_269010108(0x6172547472617473, 0xEF2928676E696E69, &v20);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_269002000, v10, v8, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6309D0](v12, -1, -1);
    MEMORY[0x26D6309D0](v11, -1, -1);
  }

  else
  {
  }

  if (qword_2802F3228 != -1)
  {
    swift_once();
  }

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v14 = [objc_opt_self() sharedAnalytics];
  if (v14)
  {
    v15 = v14;
    [v14 logEventWithType:3302 context:0];
  }

  v16 = v0[5];
  sub_269040100();
  sub_269036614();
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_2690363C0;
  v18 = v0[5];

  return sub_269033FF4();
}

uint64_t sub_2690363C0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v3;
  v4[1] = sub_269036504;
  v5 = *(v1 + 40);

  return sub_2690366E4(0);
}

uint64_t sub_269036504()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

id sub_269036614()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() currentCoordinator];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D55AF8]) initWithDelegate_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator);
  *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator) = v1;

  result = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator);
  if (result)
  {

    return [result setupEnabled_];
  }

  return result;
}

uint64_t sub_2690366E4(char a1)
{
  *(v2 + 256) = v1;
  *(v2 + 163) = a1;
  v3 = sub_269057C94();
  *(v2 + 264) = v3;
  v4 = *(v3 - 8);
  *(v2 + 272) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2690367A8, 0, 0);
}

uint64_t sub_2690367A8()
{
  v62 = v0;
  v1 = *(v0 + 256);
  v2 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled;
  *(v0 + 288) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled;
  if (*(v1 + v2))
  {
LABEL_49:
    v55 = *(v0 + 280);

    v56 = *(v0 + 8);

    return v56();
  }

  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState;
  *(v0 + 296) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState;
  v59 = v3;
  *(v0 + 161) = *(v1 + v3);
  v4 = *(v0 + 163);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x7274657220736920, 0xEA00000000003A79);
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v5, v6);

  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v9 = sub_269057774();
  *(v0 + 304) = __swift_project_value_buffer(v9, qword_2802F3FF8);
  v10 = sub_269057AA4();
  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v60 = 32;
    v61 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v7, v8);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v12 = sub_269057764();
  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v60 = v14;
    *v13 = 136315138;
    v15 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v60);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_269002000, v12, v10, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D6309D0](v14, -1, -1);
    MEMORY[0x26D6309D0](v13, -1, -1);
  }

  else
  {
  }

  if (*(v1 + v59))
  {
    if (*(v1 + v2))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v22 = *(v0 + 256);
    sub_269038C34(0, *(v0 + 163));
    if (*(v1 + v2))
    {
LABEL_19:
      v16 = sub_269057AA4();
      if ((" audio guide step" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v60 = 32;
        v61 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000034, 0x800000026905EAA0);
        MEMORY[0x26D62FBC0](v60, v61);
      }

      v17 = sub_269057764();
      if (os_log_type_enabled(v17, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v60 = v19;
        *v18 = 136315138;
        v20 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v60);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_269002000, v17, v16, "%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        v21 = v19;
LABEL_23:
        MEMORY[0x26D6309D0](v21, -1, -1);
        MEMORY[0x26D6309D0](v18, -1, -1);

        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  if (*(v0 + 163))
  {
    v23 = *(v0 + 256);
    v24 = *(v1 + v59);
    if (*(v23 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_lastPlayedTryAgain) != v24)
    {
      *(v23 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_lastPlayedTryAgain) = v24;
      v25 = *(v23 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
      if (v25)
      {
        [v25 playSoundsEffect_];
      }
    }

    v26 = *(v0 + 296);
    v27 = *(v0 + 256);
    sub_269038C34(*(v27 + v26), *(v0 + 163));
    v28 = *(v27 + v26);
    if (v28 == 6)
    {
      v29 = swift_task_alloc();
      *(v0 + 320) = v29;
      *v29 = v0;
      v29[1] = sub_2690376C8;
      v30 = *(v0 + 256);

      return sub_269038F08();
    }

    else
    {
      v38 = *(v0 + 256);
      v39 = sub_2690349B0(v28);
      sub_269040398(v28, v39, v40);

      v41 = sub_269057AA4();
      if (("(retryCurrentPhrase:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v60 = 32;
        v61 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000027, 0x800000026905E9C0);
        MEMORY[0x26D62FBC0](v60, v61);
      }

      v42 = *(v0 + 304);
      v43 = sub_269057764();
      if (os_log_type_enabled(v43, v41))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v60 = v45;
        *v44 = 136315138;
        v46 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v60);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_269002000, v43, v41, "%s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x26D6309D0](v45, -1, -1);
        MEMORY[0x26D6309D0](v44, -1, -1);
      }

      else
      {
      }

      v48 = *(v0 + 256);
      v49 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
      *(v0 + 328) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
      v50 = *(v48 + v49);
      if (v50)
      {
        LODWORD(v47) = 20.0;
        [v50 startAdvertisingForPHSSetupAfterDelay:0.0 maxInterval:v47];
        v48 = *(v0 + 256);
      }

      if (*(v48 + *(v0 + 288)))
      {
        v51 = sub_269057AA4();
        if (("utterance trained. success: " & 0x2F00000000000000) != 0x2000000000000000)
        {
          v60 = 32;
          v61 = 0xE100000000000000;
          MEMORY[0x26D62FBC0](0xD000000000000031, 0x800000026905EA60);
          MEMORY[0x26D62FBC0](v60, v61);
        }

        v52 = *(v0 + 304);
        v17 = sub_269057764();
        if (os_log_type_enabled(v17, v51))
        {
          v18 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v60 = v53;
          *v18 = 136315138;
          v54 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v60);

          *(v18 + 4) = v54;
          _os_log_impl(&dword_269002000, v17, v51, "%s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          v21 = v53;
          goto LABEL_23;
        }

LABEL_48:

        goto LABEL_49;
      }

      v57 = swift_task_alloc();
      *(v0 + 336) = v57;
      *v57 = v0;
      v57[1] = sub_2690377D8;
      v58 = *(v0 + 256);

      return sub_26903950C();
    }
  }

  else
  {
    v32 = *(v0 + 280);
    *(v1 + v59) = sub_269044E6C(*(v1 + v59));
    v33 = sub_269057EB4();
    v35 = v34;
    sub_269057E34();
    v36 = swift_task_alloc();
    *(v0 + 312) = v36;
    *v36 = v0;
    v36[1] = sub_2690370BC;
    v37 = *(v0 + 280);

    return sub_26903F62C(v33, v35, 0, 0, 1);
  }
}

uint64_t sub_2690370BC()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;

  v5 = v2[35];
  v6 = v2[34];
  v7 = v2[33];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_269041A88;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_269037254;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269037254()
{
  v32 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  sub_269038C34(*(v2 + v1), *(v0 + 163));
  v3 = *(v2 + v1);
  if (v3 == 6)
  {
    v4 = swift_task_alloc();
    *(v0 + 320) = v4;
    *v4 = v0;
    v4[1] = sub_2690376C8;
    v5 = *(v0 + 256);

    return sub_269038F08();
  }

  else
  {
    v7 = *(v0 + 256);
    v8 = sub_2690349B0(v3);
    sub_269040398(v3, v8, v9);

    v10 = sub_269057AA4();
    if (("(retryCurrentPhrase:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v30 = 32;
      v31 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000027, 0x800000026905E9C0);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v11 = *(v0 + 304);
    v12 = sub_269057764();
    if (os_log_type_enabled(v12, v10))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      v15 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v30);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_269002000, v12, v10, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D6309D0](v14, -1, -1);
      MEMORY[0x26D6309D0](v13, -1, -1);
    }

    else
    {
    }

    v17 = *(v0 + 256);
    v18 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
    *(v0 + 328) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
    v19 = *(v17 + v18);
    if (v19)
    {
      LODWORD(v16) = 20.0;
      [v19 startAdvertisingForPHSSetupAfterDelay:0.0 maxInterval:v16];
      v17 = *(v0 + 256);
    }

    if (*(v17 + *(v0 + 288)))
    {
      v20 = sub_269057AA4();
      if (("utterance trained. success: " & 0x2F00000000000000) != 0x2000000000000000)
      {
        v30 = 32;
        v31 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000031, 0x800000026905EA60);
        MEMORY[0x26D62FBC0](v30, v31);
      }

      v21 = *(v0 + 304);
      v22 = sub_269057764();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136315138;
        v25 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v30);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_269002000, v22, v20, "%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x26D6309D0](v24, -1, -1);
        MEMORY[0x26D6309D0](v23, -1, -1);
      }

      else
      {
      }

      v28 = *(v0 + 280);

      v29 = *(v0 + 8);

      return v29();
    }

    else
    {
      v26 = swift_task_alloc();
      *(v0 + 336) = v26;
      *v26 = v0;
      v26[1] = sub_2690377D8;
      v27 = *(v0 + 256);

      return sub_26903950C();
    }
  }
}

uint64_t sub_2690376C8()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v6 = *v0;

  v3 = *(v1 + 280);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2690377D8()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2690378D4, 0, 0);
}

uint64_t sub_2690378D4()
{
  v62 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_269057C54();
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905E9F0);
  *(v0 + 162) = *(v2 + v1);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905EA10);
  *(v0 + 216) = mach_absolute_time();
  v3 = sub_269057DA4();
  MEMORY[0x26D62FBC0](v3);

  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = sub_269057AA4();
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v60 = 32;
    v61 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v4, v5);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v8 = *(v0 + 304);
  v9 = sub_269057764();
  if (os_log_type_enabled(v9, v6))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v60 = v11;
    *v10 = 136315138;
    v12 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v60);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_269002000, v9, v6, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6309D0](v11, -1, -1);
    MEMORY[0x26D6309D0](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 256);
  v14 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  *(v0 + 344) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  v15 = *(v13 + v14);
  v16 = v13;
  if (v15)
  {
    v17 = v15;
    [v17 setRecordingStartHostTime_];

    v16 = *(v0 + 256);
  }

  v18 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController;
  *(v0 + 352) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController;
  v19 = (v16 + v18);
  v20 = *v19;
  if (*v19)
  {
    v21 = v19[2];
    v22 = *v19;
    ObjectType = swift_getObjectType();
    *(v0 + 224) = v20;
    (*(v21 + 8))(ObjectType, v21);
  }

  v24 = *(v13 + v14);
  if (v24)
  {
    [v24 startRMS];
    v25 = *(v13 + v14);
    *(v0 + 360) = v25;
    v26 = *(v0 + 256);
    if (v25)
    {
      v27 = *(v26 + *(v0 + 296));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_269038094;
      v28 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E60, &qword_26905B138);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_269039BB0;
      *(v0 + 104) = &block_descriptor_82;
      *(v0 + 112) = v28;
      [v25 trainUtterance:v27 shouldUseASR:1 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  else
  {
    v26 = *(v0 + 256);
  }

  if (*(v26 + *(v0 + 288)))
  {
    v29 = *(v0 + 280);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_269057C54();
    v31 = v61;
    *(v0 + 200) = v60;
    *(v0 + 208) = v31;
    MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905EA40);
    MEMORY[0x26D62FBC0](0x65736C6166, 0xE500000000000000);

    MEMORY[0x26D62FBC0](0x737574617473202CLL, 0xEA0000000000203ALL);
    *(v0 + 232) = 3;
    type metadata accessor for SRSTrainingManagerSessionStatus(0);
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x6F6973736573202CLL, 0xED0000203A44496ELL);
    *(v0 + 240) = 0;
    v32 = sub_269057DA4();
    MEMORY[0x26D62FBC0](v32);

    v34 = *(v0 + 200);
    v33 = *(v0 + 208);
    v35 = sub_269057AA4();
    v36 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v60 = 32;
      v61 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v34, v33);
      MEMORY[0x26D62FBC0](v60, v61);
    }

    v37 = *(v0 + 304);
    v38 = sub_269057764();
    if (os_log_type_enabled(v38, v35))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v60 = v40;
      *v39 = 136315138;
      v41 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v60);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_269002000, v38, v35, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x26D6309D0](v40, -1, -1);
      MEMORY[0x26D6309D0](v39, -1, -1);
    }

    else
    {
    }

    v43 = *(v0 + 328);
    v44 = *(v0 + 256);
    *(v44 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingSessionId) = 0;
    v45 = *(v44 + v43);
    if (v45)
    {
      LODWORD(v42) = 0.5;
      [v45 endAdvertisingAfterDelay_];
    }

    v46 = *(v0 + 256);
    v47 = *(v46 + *(v0 + 344));
    if (v47)
    {
      [v47 stopRMS];
      v46 = *(v0 + 256);
    }

    v48 = (v46 + *(v0 + 352));
    v49 = *v48;
    if (*v48)
    {
      v50 = v48[2];
      v51 = *v48;
      v52 = swift_getObjectType();
      *(v0 + 248) = v49;
      (*(v50 + 16))(v52, v50);
      v46 = *(v0 + 256);
    }

    v53 = *(v46 + *(v0 + 296));
    v54 = sub_2690349B0(v53);
    v56 = v55;
    *(v0 + 368) = v55;
    v57 = swift_task_alloc();
    *(v0 + 376) = v57;
    *v57 = v0;
    v57[1] = sub_2690385A8;
    v58 = *(v0 + 256);

    return sub_26904059C(3, v53, v54, v56);
  }
}

uint64_t sub_269038094()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_269038174, 0, 0);
}

uint64_t sub_269038174()
{
  v38 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);

  if (*(*(v0 + 256) + *(v0 + 288)))
  {
    v4 = *(v0 + 280);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_269057C54();
    *(v0 + 200) = 0;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905EA40);
    if (v3)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x26D62FBC0](v7, v8);

    MEMORY[0x26D62FBC0](0x737574617473202CLL, 0xEA0000000000203ALL);
    *(v0 + 232) = v1;
    type metadata accessor for SRSTrainingManagerSessionStatus(0);
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x6F6973736573202CLL, 0xED0000203A44496ELL);
    *(v0 + 240) = v2;
    v9 = sub_269057DA4();
    MEMORY[0x26D62FBC0](v9);

    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v12 = sub_269057AA4();
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v36 = 32;
      v37 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v10, v11);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v14 = *(v0 + 304);
    v15 = sub_269057764();
    if (os_log_type_enabled(v15, v12))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 136315138;
      v18 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v36);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_269002000, v15, v12, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D6309D0](v17, -1, -1);
      MEMORY[0x26D6309D0](v16, -1, -1);
    }

    else
    {
    }

    v20 = *(v0 + 328);
    v21 = *(v0 + 256);
    *(v21 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingSessionId) = v2;
    v22 = *(v21 + v20);
    if (v22)
    {
      LODWORD(v19) = 0.5;
      [v22 endAdvertisingAfterDelay_];
    }

    v23 = *(v0 + 256);
    v24 = *(v23 + *(v0 + 344));
    if (v24)
    {
      [v24 stopRMS];
      v23 = *(v0 + 256);
    }

    v25 = (v23 + *(v0 + 352));
    v26 = *v25;
    if (*v25)
    {
      v27 = v25[2];
      v28 = *v25;
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v26;
      (*(v27 + 16))(ObjectType, v27);
      v23 = *(v0 + 256);
    }

    v30 = *(v23 + *(v0 + 296));
    v31 = sub_2690349B0(v30);
    v33 = v32;
    *(v0 + 368) = v32;
    v34 = swift_task_alloc();
    *(v0 + 376) = v34;
    *v34 = v0;
    v34[1] = sub_2690385A8;
    v35 = *(v0 + 256);

    return sub_26904059C(v1, v30, v31, v33);
  }
}

uint64_t sub_2690385A8()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v7 = *v0;

  v4 = *(v1 + 280);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2690386DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[2] = sub_269057A44();
  v5[3] = sub_269057A34();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_269038798;

  return sub_2690366E4(a5);
}

uint64_t sub_269038798()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_269057A14();

  return MEMORY[0x2822009F8](sub_2690388D4, v5, v4);
}

uint64_t sub_2690388D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_269038934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_269041944(a3, v27 - v11, &qword_2802F3868, &qword_26905A590);
  v13 = sub_269057A64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2690419AC(v12, &qword_2802F3868, &qword_26905A590);
  }

  else
  {
    sub_269057A54();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_269057A14();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_269057974() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2690419AC(a3, &qword_2802F3868, &qword_26905A590);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2690419AC(a3, &qword_2802F3868, &qword_26905A590);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_269038C34(char a1, char a2)
{
  v5 = sub_269057874();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2690578A4();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v14 = sub_269057B34();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v2;
  *(v15 + 32) = a2;
  aBlock[4] = sub_26903FFF4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_40_0;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_269038F28()
{
  v22 = v0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v1 = sub_269057774();
  __swift_project_value_buffer(v1, qword_2802F3FF8);
  v2 = sub_269057AA4();
  if (("trainingCompleted()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v21[0] = 32;
    v21[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000019, 0x800000026905EB00);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v3 = sub_269057764();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136315138;
    v6 = sub_269010108(0xD000000000000013, 0x800000026905EAE0, v21);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_269002000, v3, v2, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6309D0](v5, -1, -1);
    MEMORY[0x26D6309D0](v4, -1, -1);
  }

  else
  {
  }

  if (qword_2802F3228 != -1)
  {
    swift_once();
  }

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v7 = [objc_opt_self() sharedAnalytics];
  if (v7)
  {
    v8 = v7;
    [v7 logEventWithType:3303 context:0];
  }

  v9 = *(v0 + 16) + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource;
  v11 = *v9;
  v10 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v13 = *(v10 + 32);
  v14 = v11;
  v13(v21, ObjectType, v10);

  if (LOBYTE(v21[0]) == 2)
  {

    v15 = 45;
  }

  else
  {
    v16 = sub_269057DE4();

    if (v16)
    {
      v15 = 45;
    }

    else
    {
      v15 = 44;
    }
  }

  v17 = *(v0 + 16);
  sub_269025608(v15);
  sub_269038C34(6, 0);
  sub_26903BA04();
  sub_26903BA88(1);
  v18 = *(MEMORY[0x277D857E8] + 4);
  v19 = swift_task_alloc();
  *(v0 + 24) = v19;
  *v19 = v0;
  v19[1] = sub_269039344;

  return MEMORY[0x282200480](500000000);
}

uint64_t sub_269039344()
{
  v2 = *(*v1 + 24);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_269041AB0;
  }

  else
  {
    v3 = sub_26903945C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26903945C()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_26903C620(sub_2690416D8, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26903952C()
{
  v29 = v0;
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_currentAnimationCompleted;
  *(v0 + 56) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_currentAnimationCompleted;
  if (*(v1 + v2))
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_269057C54();
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000020, 0x800000026905EC90);
    *(v0 + 81) = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState);
    sub_269057CB4();
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057AA4();
    v7 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v7 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v27 = 32;
      v28 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v3, v4);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v8 = sub_269057764();
    if (os_log_type_enabled(v8, v6))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315138;
      v11 = sub_269010108(0xD00000000000001CLL, 0x800000026905EC40, &v27);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_269002000, v8, v6, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26D6309D0](v10, -1, -1);
      MEMORY[0x26D6309D0](v9, -1, -1);
    }

    else
    {
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_269057C54();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000026, 0x800000026905EC60);
    *(v0 + 80) = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState);
    sub_269057CB4();
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v14 = sub_269057774();
    __swift_project_value_buffer(v14, qword_2802F3FF8);
    v15 = sub_269057AA4();
    v16 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v16 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v27 = 32;
      v28 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v12, v13);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v19 = sub_269057764();
    if (os_log_type_enabled(v19, v15))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      v22 = sub_269010108(0xD00000000000001CLL, 0x800000026905EC40, &v27);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_269002000, v19, v15, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D6309D0](v21, -1, -1);
      MEMORY[0x26D6309D0](v20, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 48);
    v24 = swift_task_alloc();
    *(v0 + 64) = v24;
    *(v24 + 16) = v23;
    v25 = *(MEMORY[0x277D859E0] + 4);
    v26 = swift_task_alloc();
    *(v0 + 72) = v26;
    *v26 = v0;
    v26[1] = sub_269039A7C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_269039A7C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269039B94, 0, 0);
}

uint64_t sub_269039BB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;

  return MEMORY[0x282200948]();
}

uint64_t sub_269039C20(char a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = sub_269057874();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2690578A4();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v14 = sub_269057B34();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = v19;
  *(v16 + 40) = a3;
  aBlock[4] = sub_269041820;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_108;
  v17 = _Block_copy(aBlock);

  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v13, v9, v17);
  _Block_release(v17);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

void sub_269039F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_269057A64();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_269057A44();
    v11 = v9;
    v12 = sub_269057A34();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 32) = v11;
    *(v13 + 40) = 0;
    sub_269038934(0, 0, v7, a3, v13);
  }
}

uint64_t sub_26903A078(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v21 - v6;
  if ((*(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled) & 1) == 0)
  {
    v8 = 0x800000026905E580;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v9 = 0xD00000000000001DLL;
    v10 = sub_269057774();
    __swift_project_value_buffer(v10, qword_2802F3FF8);
    v11 = sub_269057AA4();
    v23 = 0xD00000000000001DLL;
    v24 = 0x800000026905E580;
    if (("skipTraining(notifyDelegate:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v21 = 32;
      v22 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E5A0);
      MEMORY[0x26D62FBC0](v21, v22);

      v9 = v23;
      v8 = v24;
    }

    v12 = sub_269057764();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_269010108(v9, v8, &v21);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_269002000, v12, v11, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D6309D0](v14, -1, -1);
      MEMORY[0x26D6309D0](v13, -1, -1);
    }

    else
    {
    }

    if (qword_2802F3228 != -1)
    {
      swift_once();
    }

    v16 = sub_269057A64();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269057A44();

    v18 = sub_269057A34();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    *(v19 + 32) = v17;
    *(v19 + 40) = a1 & 1;

    sub_269038934(0, 0, v7, &unk_26905B0F8, v19);
  }

  return result;
}

void sub_26903A3BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *&Strong[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
    if (v9)
    {
      v10 = *&Strong[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 16];
      v11 = *&Strong[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
      ObjectType = swift_getObjectType();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = a2 & 1;
      *(v13 + 24) = v14;
      *(v13 + 32) = a3;
      *(v13 + 40) = a4;
      v15 = *(v10 + 24);
      v16 = v9;

      v15(v14, sub_269041870, v13, ObjectType, v10);
    }

    else
    {
    }
  }
}

void sub_26903A518(uint64_t a1, char a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
      if (v7)
      {
        [v7 playSoundsEffect_];
      }
    }

    a3();
  }
}

uint64_t sub_26903A5B0(unsigned __int8 a1, uint64_t a2, char a3)
{
  v4 = 0x2802F3000uLL;
  if (a1 == 6)
  {
    v5 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
    swift_beginAccess();
    v6 = *(v5 + 14);
    *(v5 + 13) = 0;
    *(v5 + 14) = 0;

    v7 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState;
    if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
    {
      v8 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
      if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
      {
        v9 = v8[1];
        v10 = *v8;
        ObjectType = swift_getObjectType();
        v12 = v5[11];
        v280 = v5[10];
        v281 = v12;
        v282 = v5[12];
        v13 = v5[7];
        v276 = v5[6];
        v277 = v13;
        v14 = v5[9];
        v278 = v5[8];
        v279 = v14;
        v15 = v5[3];
        v272 = v5[2];
        v273 = v15;
        v16 = v5[5];
        v274 = v5[4];
        v275 = v16;
        v17 = v5[1];
        v270 = *v5;
        v271 = v17;
        v268 = &type metadata for ViewModel;
        v269 = &off_2879A7790;
        v18 = swift_allocObject();
        v266 = v18;
        v19 = v5[11];
        v18[11] = v5[10];
        v18[12] = v19;
        v18[13] = v5[12];
        v20 = v5[7];
        v18[7] = v5[6];
        v18[8] = v20;
        v21 = v5[9];
        v18[9] = v5[8];
        v18[10] = v21;
        v22 = v5[3];
        v18[3] = v5[2];
        v18[4] = v22;
        v23 = v5[5];
        v18[5] = v5[4];
        v18[6] = v23;
        v24 = v5[1];
        v18[1] = *v5;
        v18[2] = v24;
        v25 = *(v9 + 16);
        sub_269009E3C(&v270, v265);
        v25(&v266, 0, ObjectType, v9);
        __swift_destroy_boxed_opaque_existential_1Tm(&v266);
      }
    }

    v26 = *(v5 + 1);
    *v5 = xmmword_26905AF70;

    if (*(a2 + v7))
    {
      v27 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
      if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
      {
        v28 = v27[1];
        v29 = *v27;
        v30 = swift_getObjectType();
        v31 = v5[11];
        v280 = v5[10];
        v281 = v31;
        v282 = v5[12];
        v32 = v5[7];
        v276 = v5[6];
        v277 = v32;
        v33 = v5[9];
        v278 = v5[8];
        v279 = v33;
        v34 = v5[3];
        v272 = v5[2];
        v273 = v34;
        v35 = v5[5];
        v274 = v5[4];
        v275 = v35;
        v36 = v5[1];
        v270 = *v5;
        v271 = v36;
        v268 = &type metadata for ViewModel;
        v269 = &off_2879A7790;
        v37 = swift_allocObject();
        v266 = v37;
        v38 = v5[11];
        v37[11] = v5[10];
        v37[12] = v38;
        v37[13] = v5[12];
        v39 = v5[7];
        v37[7] = v5[6];
        v37[8] = v39;
        v40 = v5[9];
        v37[9] = v5[8];
        v37[10] = v40;
        v41 = v5[3];
        v37[3] = v5[2];
        v37[4] = v41;
        v42 = v5[5];
        v37[5] = v5[4];
        v37[6] = v42;
        v43 = v5[1];
        v37[1] = *v5;
        v37[2] = v43;
        v44 = *(v28 + 16);
        sub_269009E3C(&v270, v265);
        v44(&v266, 0, v30, v28);
        __swift_destroy_boxed_opaque_existential_1Tm(&v266);
      }
    }

    v45 = *(v5 + 3);
    *(v5 + 2) = 0;
    *(v5 + 3) = 0xE000000000000000;

    if (*(a2 + v7))
    {
      v46 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
      if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
      {
        v47 = v46[1];
        v48 = *v46;
        v49 = swift_getObjectType();
        v50 = v5[11];
        v280 = v5[10];
        v281 = v50;
        v282 = v5[12];
        v51 = v5[7];
        v276 = v5[6];
        v277 = v51;
        v52 = v5[9];
        v278 = v5[8];
        v279 = v52;
        v53 = v5[3];
        v272 = v5[2];
        v273 = v53;
        v54 = v5[5];
        v274 = v5[4];
        v275 = v54;
        v55 = v5[1];
        v270 = *v5;
        v271 = v55;
        v268 = &type metadata for ViewModel;
        v269 = &off_2879A7790;
        v56 = swift_allocObject();
        v266 = v56;
        v57 = v5[11];
        v56[11] = v5[10];
        v56[12] = v57;
        v56[13] = v5[12];
        v58 = v5[7];
        v56[7] = v5[6];
        v56[8] = v58;
        v59 = v5[9];
        v56[9] = v5[8];
        v56[10] = v59;
        v60 = v5[3];
        v56[3] = v5[2];
        v56[4] = v60;
        v61 = v5[5];
        v56[5] = v5[4];
        v56[6] = v61;
        v62 = v5[1];
        v56[1] = *v5;
        v56[2] = v62;
        v63 = *(v47 + 16);
        sub_269009E3C(&v270, v265);
        v63(&v266, 0, v49, v47);
        __swift_destroy_boxed_opaque_existential_1Tm(&v266);
      }
    }

    v64 = *(v5 + 10);
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;

    if (*(a2 + v7))
    {
      v66 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
      if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
      {
        v67 = v66[1];
        v68 = *v66;
        v69 = swift_getObjectType();
        v70 = v5[11];
        v280 = v5[10];
        v281 = v70;
        v282 = v5[12];
        v71 = v5[7];
        v276 = v5[6];
        v277 = v71;
        v72 = v5[9];
        v278 = v5[8];
        v279 = v72;
        v73 = v5[3];
        v272 = v5[2];
        v273 = v73;
        v74 = v5[5];
        v274 = v5[4];
        v275 = v74;
        v75 = v5[1];
        v270 = *v5;
        v271 = v75;
        v268 = &type metadata for ViewModel;
        v269 = &off_2879A7790;
        v76 = swift_allocObject();
        v266 = v76;
        v77 = v5[11];
        v76[11] = v5[10];
        v76[12] = v77;
        v76[13] = v5[12];
        v78 = v5[7];
        v76[7] = v5[6];
        v76[8] = v78;
        v79 = v5[9];
        v76[9] = v5[8];
        v76[10] = v79;
        v80 = v5[3];
        v76[3] = v5[2];
        v76[4] = v80;
        v81 = v5[5];
        v76[5] = v5[4];
        v76[6] = v81;
        v82 = v5[1];
        v76[1] = *v5;
        v76[2] = v82;
        v83 = *(v67 + 16);
        sub_269009E3C(&v270, v265);
        v83(&v266, 0, v69, v67);
LABEL_63:
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v266);
        goto LABEL_64;
      }
    }

    goto LABEL_64;
  }

  v84 = 0x2802F3000;
  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      goto LABEL_54;
    }

    v85 = 0x800000026905E660;
    if (qword_2802F3248 != -1)
    {
      swift_once();
    }

    v104 = byte_2802F5130;
    v105 = sub_269051B18(byte_2802F5130);
    *&v270 = 0xD00000000000001ALL;
    *(&v270 + 1) = 0x800000026905E660;
    MEMORY[0x26D62FBC0](v105);

    v106 = v270;
    v107 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v109 = *(v107 + 2);
    v108 = *(v107 + 3);
    v110 = v108 >> 1;
    v111 = v109 + 1;
    if (v108 >> 1 <= v109)
    {
      v107 = sub_26904DCD8((v108 > 1), v109 + 1, 1, v107);
      v108 = *(v107 + 3);
      v110 = v108 >> 1;
    }

    *(v107 + 2) = v111;
    *&v107[16 * v109 + 32] = v106;
    if (v110 < (v109 + 2))
    {
      v107 = sub_26904DCD8((v108 > 1), v109 + 2, 1, v107);
    }

    *(v107 + 2) = v109 + 2;
    v112 = &v107[16 * v111];
    *(v112 + 4) = 0xD00000000000001ALL;
    *(v112 + 5) = 0x800000026905E660;
    v113 = (v107 + 40);
    v114 = -v109;
    v115 = -1;
    while (1)
    {
      if (v114 + v115 == 1)
      {

        *(&v270 + 1) = 0xE000000000000000;
        sub_269057C54();
        MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
        MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905E660);
        MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
        if (qword_2802F3258 != -1)
        {
          swift_once();
        }

        v128 = sub_269057774();
        __swift_project_value_buffer(v128, qword_2802F3FF8);
        v129 = sub_269057A94();
        *&v270 = 0xD00000000000003BLL;
        *(&v270 + 1) = 0x800000026905BF00;
        v130 = sub_269057764();
        if (os_log_type_enabled(v130, v129))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v265[0] = v132;
          *v131 = 136315138;
          v133 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v265);

          *(v131 + 4) = v133;
          _os_log_impl(&dword_269002000, v130, v129, "%s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v132);
          MEMORY[0x26D6309D0](v132, -1, -1);
          MEMORY[0x26D6309D0](v131, -1, -1);
        }

        else
        {
        }

        v119 = 0xD00000000000001ALL;
        goto LABEL_50;
      }

      if (++v115 >= *(v107 + 2))
      {
        break;
      }

      v116 = v113 + 2;
      v117 = *(v113 - 1);
      v118 = *v113;

      v119 = sub_26902F7F4(v117, v118, 0);
      v121 = v120;

      v113 = v116;
      if (v121)
      {

        v85 = v121;
LABEL_50:
        v144 = sub_2690519EC(v104);
        *&v270 = v119;
        *(&v270 + 1) = v85;
        strcpy(v265, "%DEVICE_NAME%");
        HIWORD(v265[1]) = -4864;
        v266 = v144;
        v267 = v145;
        sub_26900BE9C();
        v146 = sub_269057BE4();
        v148 = v147;

        v149 = sub_2690519EC(v104);
        *&v270 = v146;
        *(&v270 + 1) = v148;
        v265[0] = 0xD000000000000014;
        v265[1] = 0x800000026905BEA0;
        v266 = v149;
        v267 = v150;
        v141 = sub_269057BE4();
        v143 = v151;

        v4 = 0x2802F3000uLL;
        goto LABEL_51;
      }
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v85 = 0x800000026905E680;
  if (qword_2802F3248 != -1)
  {
LABEL_69:
    swift_once();
  }

  v86 = byte_2802F5130;
  v87 = sub_269051B18(byte_2802F5130);
  *&v270 = 0xD000000000000020;
  *(&v270 + 1) = v85;
  MEMORY[0x26D62FBC0](v87);

  v88 = v270;
  v89 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v91 = *(v89 + 2);
  v90 = *(v89 + 3);
  v92 = v90 >> 1;
  v93 = v91 + 1;
  if (v90 >> 1 <= v91)
  {
    v89 = sub_26904DCD8((v90 > 1), v91 + 1, 1, v89);
    v90 = *(v89 + 3);
    v92 = v90 >> 1;
  }

  *(v89 + 2) = v93;
  *&v89[16 * v91 + 32] = v88;
  if (v92 < (v91 + 2))
  {
    v89 = sub_26904DCD8((v90 > 1), v91 + 2, 1, v89);
  }

  *(v89 + 2) = v91 + 2;
  v94 = &v89[16 * v93];
  *(v94 + 4) = 0xD000000000000020;
  *(v94 + 5) = v85;
  v95 = (v89 + 40);
  v96 = -v91;
  v97 = -1;
  while (v96 + v97 != 1)
  {
    if (++v97 >= *(v89 + 2))
    {
      __break(1u);
      goto LABEL_68;
    }

    v98 = v95 + 2;
    v99 = *(v95 - 1);
    v100 = *v95;

    v101 = sub_26902F7F4(v99, v100, 0);
    v103 = v102;

    v95 = v98;
    if (v103)
    {

      v85 = v103;
      v4 = 0x2802F3000;
      goto LABEL_47;
    }
  }

  *(&v270 + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000020, v85);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v122 = sub_269057774();
  __swift_project_value_buffer(v122, qword_2802F3FF8);
  v123 = sub_269057A94();
  *&v270 = 0xD00000000000003BLL;
  *(&v270 + 1) = 0x800000026905BF00;
  v124 = sub_269057764();
  if (os_log_type_enabled(v124, v123))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v265[0] = v126;
    *v125 = 136315138;
    v127 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v265);

    *(v125 + 4) = v127;
    _os_log_impl(&dword_269002000, v124, v123, "%s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    MEMORY[0x26D6309D0](v126, -1, -1);
    MEMORY[0x26D6309D0](v125, -1, -1);
  }

  else
  {
  }

  v4 = 0x2802F3000;
  v101 = 0xD000000000000020;
LABEL_47:
  v134 = sub_2690519EC(v86);
  *&v270 = v101;
  *(&v270 + 1) = v85;
  strcpy(v265, "%DEVICE_NAME%");
  HIWORD(v265[1]) = -4864;
  v266 = v134;
  v267 = v135;
  sub_26900BE9C();
  v136 = sub_269057BE4();
  v138 = v137;

  v139 = sub_2690519EC(v86);
  *&v270 = v136;
  *(&v270 + 1) = v138;
  v265[0] = 0xD000000000000014;
  v265[1] = 0x800000026905BEA0;
  v266 = v139;
  v267 = v140;
  v141 = sub_269057BE4();
  v143 = v142;

LABEL_51:
  v152 = (a2 + *(v4 + 3216));
  swift_beginAccess();
  v153 = *(v152 + 1);
  *v152 = v141;
  *(v152 + 1) = v143;

  v84 = 0x2802F3000uLL;
  if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
  {
    v154 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    v155 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    if (v155)
    {
      v156 = v154[1];
      v157 = *v154;
      v158 = swift_getObjectType();
      v283 = v155;
      v159 = v152[11];
      v280 = v152[10];
      v281 = v159;
      v282 = v152[12];
      v160 = v152[7];
      v276 = v152[6];
      v277 = v160;
      v161 = v152[9];
      v278 = v152[8];
      v279 = v161;
      v162 = v152[3];
      v272 = v152[2];
      v273 = v162;
      v163 = v152[5];
      v274 = v152[4];
      v275 = v163;
      v164 = v152[1];
      v270 = *v152;
      v271 = v164;
      v268 = &type metadata for ViewModel;
      v269 = &off_2879A7790;
      v165 = swift_allocObject();
      v266 = v165;
      v166 = v152[11];
      v165[11] = v152[10];
      v165[12] = v166;
      v165[13] = v152[12];
      v167 = v152[7];
      v165[7] = v152[6];
      v165[8] = v167;
      v168 = v152[9];
      v165[9] = v152[8];
      v165[10] = v168;
      v169 = v152[3];
      v165[3] = v152[2];
      v165[4] = v169;
      v170 = v152[5];
      v165[5] = v152[4];
      v165[6] = v170;
      v171 = v152[1];
      v165[1] = *v152;
      v165[2] = v171;
      v172 = *(v156 + 16);
      sub_269009E3C(&v270, v265);
      v172(&v266, 0, v158, v156);
      __swift_destroy_boxed_opaque_existential_1Tm(&v266);
    }
  }

LABEL_54:
  v173 = *(v84 + 3272);
  v174 = sub_2690349B0(*(a2 + v173));
  v176 = v175;
  v177 = (a2 + *(v4 + 3216));
  swift_beginAccess();
  v178 = *(v177 + 3);
  *(v177 + 2) = v174;
  *(v177 + 3) = v176;

  if (*(a2 + v173))
  {
    v179 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
    {
      v180 = v179[1];
      v181 = *v179;
      v182 = swift_getObjectType();
      v183 = v177[11];
      v280 = v177[10];
      v281 = v183;
      v282 = v177[12];
      v184 = v177[7];
      v276 = v177[6];
      v277 = v184;
      v185 = v177[9];
      v278 = v177[8];
      v279 = v185;
      v186 = v177[3];
      v272 = v177[2];
      v273 = v186;
      v187 = v177[5];
      v274 = v177[4];
      v275 = v187;
      v188 = v177[1];
      v270 = *v177;
      v271 = v188;
      v268 = &type metadata for ViewModel;
      v269 = &off_2879A7790;
      v189 = swift_allocObject();
      v266 = v189;
      v190 = v177[11];
      v189[11] = v177[10];
      v189[12] = v190;
      v189[13] = v177[12];
      v191 = v177[7];
      v189[7] = v177[6];
      v189[8] = v191;
      v192 = v177[9];
      v189[9] = v177[8];
      v189[10] = v192;
      v193 = v177[3];
      v189[3] = v177[2];
      v189[4] = v193;
      v194 = v177[5];
      v189[5] = v177[4];
      v189[6] = v194;
      v195 = v177[1];
      v189[1] = *v177;
      v189[2] = v195;
      v196 = *(v180 + 16);
      sub_269009E3C(&v270, v265);
      v196(&v266, 0, v182, v180);
      __swift_destroy_boxed_opaque_existential_1Tm(&v266);
    }
  }

  v197 = sub_269043D38(a1);
  v198 = *(v177 + 14);
  *(v177 + 13) = v197;
  *(v177 + 14) = v199;

  if (*(a2 + v173))
  {
    v200 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
    {
      v201 = v200[1];
      v202 = *v200;
      v203 = swift_getObjectType();
      v204 = v177[11];
      v280 = v177[10];
      v281 = v204;
      v282 = v177[12];
      v205 = v177[7];
      v276 = v177[6];
      v277 = v205;
      v206 = v177[9];
      v278 = v177[8];
      v279 = v206;
      v207 = v177[3];
      v272 = v177[2];
      v273 = v207;
      v208 = v177[5];
      v274 = v177[4];
      v275 = v208;
      v209 = v177[1];
      v270 = *v177;
      v271 = v209;
      v268 = &type metadata for ViewModel;
      v269 = &off_2879A7790;
      v210 = swift_allocObject();
      v266 = v210;
      v211 = v177[11];
      v210[11] = v177[10];
      v210[12] = v211;
      v210[13] = v177[12];
      v212 = v177[7];
      v210[7] = v177[6];
      v210[8] = v212;
      v213 = v177[9];
      v210[9] = v177[8];
      v210[10] = v213;
      v214 = v177[3];
      v210[3] = v177[2];
      v210[4] = v214;
      v215 = v177[5];
      v210[5] = v177[4];
      v210[6] = v215;
      v216 = v177[1];
      v210[1] = *v177;
      v210[2] = v216;
      v217 = *(v201 + 16);
      sub_269009E3C(&v270, v265);
      v217(&v266, 0, v203, v201);
      __swift_destroy_boxed_opaque_existential_1Tm(&v266);
    }
  }

  v218 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
  v219 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
  v220 = swift_getObjectType();
  v221 = *(v219 + 88);
  v222 = v218;
  v223 = v221(v220, v219);
  v225 = v224;

  v226 = *(v177 + 25);
  *(v177 + 24) = v223;
  *(v177 + 25) = v225;

  if (*(a2 + v173))
  {
    v227 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
    {
      v228 = v227[1];
      v229 = *v227;
      v230 = swift_getObjectType();
      v231 = v177[11];
      v280 = v177[10];
      v281 = v231;
      v282 = v177[12];
      v232 = v177[7];
      v276 = v177[6];
      v277 = v232;
      v233 = v177[9];
      v278 = v177[8];
      v279 = v233;
      v234 = v177[3];
      v272 = v177[2];
      v273 = v234;
      v235 = v177[5];
      v274 = v177[4];
      v275 = v235;
      v236 = v177[1];
      v270 = *v177;
      v271 = v236;
      v268 = &type metadata for ViewModel;
      v269 = &off_2879A7790;
      v237 = swift_allocObject();
      v266 = v237;
      v238 = v177[11];
      v237[11] = v177[10];
      v237[12] = v238;
      v237[13] = v177[12];
      v239 = v177[7];
      v237[7] = v177[6];
      v237[8] = v239;
      v240 = v177[9];
      v237[9] = v177[8];
      v237[10] = v240;
      v241 = v177[3];
      v237[3] = v177[2];
      v237[4] = v241;
      v242 = v177[5];
      v237[5] = v177[4];
      v237[6] = v242;
      v243 = v177[1];
      v237[1] = *v177;
      v237[2] = v243;
      v244 = *(v228 + 16);
      sub_269009E3C(&v270, v265);
      v244(&v266, 0, v230, v228);
      goto LABEL_63;
    }
  }

LABEL_64:
  v245 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
  if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
  {
    v246 = v245[1];
    v247 = *v245;
    v248 = swift_getObjectType();
    v249 = (a2 + *(v4 + 3216));
    swift_beginAccess();
    v250 = v249[11];
    v280 = v249[10];
    v281 = v250;
    v282 = v249[12];
    v251 = v249[7];
    v276 = v249[6];
    v277 = v251;
    v252 = v249[9];
    v278 = v249[8];
    v279 = v252;
    v253 = v249[3];
    v272 = v249[2];
    v273 = v253;
    v254 = v249[5];
    v274 = v249[4];
    v275 = v254;
    v255 = v249[1];
    v270 = *v249;
    v271 = v255;
    v268 = &type metadata for ViewModel;
    v269 = &off_2879A7790;
    v256 = swift_allocObject();
    v266 = v256;
    v257 = v249[11];
    v256[11] = v249[10];
    v256[12] = v257;
    v256[13] = v249[12];
    v258 = v249[7];
    v256[7] = v249[6];
    v256[8] = v258;
    v259 = v249[9];
    v256[9] = v249[8];
    v256[10] = v259;
    v260 = v249[3];
    v256[3] = v249[2];
    v256[4] = v260;
    v261 = v249[5];
    v256[5] = v249[4];
    v256[6] = v261;
    v262 = v249[1];
    v256[1] = *v249;
    v256[2] = v262;
    v263 = *(v246 + 16);
    sub_269009E3C(&v270, v265);
    v263(&v266, 1, v248, v246);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v266);
  }

  return result;
}

id sub_26903BA04()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
  result = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator);
  if (result)
  {
    [result endAdvertisingAfterDelay_];
    result = *(v0 + v1);
    if (result)
    {
      [result stopListening_];
      result = *(v0 + v1);
      if (result)
      {

        return [result setupEnabled_];
      }
    }
  }

  return result;
}

void sub_26903BA88(char a1)
{
  if (a1)
  {
    v2 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager];
    if (v2 && (v3 = [v2 voiceProfile]) != 0)
    {
      v4 = v3;
      v5 = v3;
      v6 = sub_269057944();
      v7 = [v5 valueForKey_];

      if (v7)
      {
        sub_269057C04();
        swift_unknownObjectRelease();
      }

      else
      {
        aBlock = 0u;
        v68 = 0u;
      }

      v11 = 0;
      v75 = aBlock;
      v76 = v68;
    }

    else
    {
      v4 = 0;
      v75 = 0u;
      v76 = 0u;
      v11 = 1;
    }

    *(*&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSourceWriter] + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled) = 2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v66 = v1;
    v12 = &v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource];
    v13 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource];
    v14 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 24);
    v17 = v13;
    v18 = v16(ObjectType, v14);
    v20 = v19;

    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = 7104878;
    }

    if (!v20)
    {
      v20 = 0xE300000000000000;
    }

    v22 = 0x800000026905E750;
    MEMORY[0x26D62FBC0](v21, v20);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v23 = 0xD00000000000001BLL;
    v24 = sub_269057774();
    __swift_project_value_buffer(v24, qword_2802F3FF8);
    v25 = sub_269057AA4();
    sub_269053434(v25, 0xD00000000000001BLL, 0x800000026905E750, 0xD000000000000022, 0x800000026905E770, aBlock, *(&aBlock + 1));

    if ((v11 & 1) == 0)
    {
      v27 = *v12;
      v26 = *(v12 + 1);
      v28 = swift_getObjectType();
      v29 = *(v26 + 24);
      v30 = v4;
      v31 = v4;
      v32 = v27;
      v29(v28, v26);
      v34 = v33;

      if (v34)
      {
        v35 = sub_269057944();
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_269057944();
      [v31 setValue:v35 forKey:v36];

      swift_unknownObjectRelease();
      v4 = v30;
      v22 = 0x800000026905E750;
    }

    if (!*(&v76 + 1))
    {
      goto LABEL_36;
    }

    sub_269041944(&v75, &aBlock, &unk_2802F3E30, &unk_26905AD70);
    if (*(&v68 + 1))
    {
      sub_26900A408(0, &unk_2802F3B90, 0x277CCACA8);
      if (swift_dynamicCast())
      {
        v37 = v71;
        goto LABEL_34;
      }
    }

    else
    {
      sub_2690419AC(&aBlock, &unk_2802F3E30, &unk_26905AD70);
    }

    v37 = 0;
LABEL_34:
    sub_26900A408(0, &unk_2802F3B90, 0x277CCACA8);
    v38 = sub_269057BB4();
    v39 = v38;
    if (v37)
    {
      v40 = sub_269057BA4();

      if (v40)
      {
LABEL_36:
        v41 = sub_269057AA4();
        *&aBlock = 0xD00000000000001BLL;
        *(&aBlock + 1) = 0x800000026905E750;
        if ((" to voice profile " & 0x2F00000000000000) != 0x2000000000000000)
        {
          *&v71 = 32;
          *(&v71 + 1) = 0xE100000000000000;
          MEMORY[0x26D62FBC0](0xD000000000000032, 0x800000026905E7A0);
          MEMORY[0x26D62FBC0](v71, *(&v71 + 1));

          v22 = *(&aBlock + 1);
          v23 = aBlock;
        }

        v42 = sub_269057764();
        if (os_log_type_enabled(v42, v41))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *&v71 = v44;
          *v43 = 136315138;
          v45 = sub_269010108(v23, v22, &v71);

          *(v43 + 4) = v45;
          _os_log_impl(&dword_269002000, v42, v41, "%s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
          MEMORY[0x26D6309D0](v44, -1, -1);
          MEMORY[0x26D6309D0](v43, -1, -1);
        }

        else
        {
        }

        sub_26900A408(0, &qword_2802F3E28, 0x277CEF318);
        v46 = *v12;
        v47 = *(v12 + 1);
        v48 = swift_getObjectType();
        v49 = *(v47 + 8);
        v50 = v46;
        v51 = v49(v48, v47);
        v53 = v52;

        v54 = swift_allocObject();
        *(v54 + 16) = v4;
        *(v54 + 24) = v66;
        v55 = v4;
        v56 = v66;
        sub_269014FD0(v51, v53, sub_2690400DC, v54);

        goto LABEL_49;
      }
    }

    else
    {
    }

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_269041944(&v75, &v71, &unk_2802F3E30, &unk_26905AD70);
    if (v72)
    {
      sub_26901729C(&v71, &aBlock);
    }

    else
    {
      *(&v68 + 1) = MEMORY[0x277D837D0];
      *&aBlock = 7104878;
      *(&aBlock + 1) = 0xE300000000000000;
    }

    sub_269057CB4();
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v57 = v73;
    v58 = v74;
    v59 = sub_269057AA4();
    sub_269053434(v59, 0xD00000000000001BLL, 0x800000026905E750, 0xD00000000000002DLL, 0x800000026905E7E0, v57, v58);

    v60 = *&v66[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager];
    if (v60)
    {
      v61 = swift_allocObject();
      *(v61 + 16) = v66;
      *(v61 + 24) = v4;
      v69 = sub_2690400E4;
      v70 = v61;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v68 = sub_26903D918;
      *(&v68 + 1) = &block_descriptor_62;
      v62 = _Block_copy(&aBlock);
      v63 = v4;
      v64 = v60;
      v65 = v66;

      [v64 markSATEnrollmentSuccessForVoiceProfile:v63 completion:v62];

      _Block_release(v62);
    }

    else
    {
    }

LABEL_49:
    sub_2690419AC(&v75, &unk_2802F3E30, &unk_26905AD70);
    return;
  }

  v8 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager];
  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager];
    v10 = v8;
    if (v9)
    {
      v9 = [v9 voiceProfile];
    }

    [v10 deleteUserVoiceProfile_];
  }

  sub_26903D5D8(0);
}

uint64_t sub_26903C2D4(uint64_t a1)
{
  v2 = sub_269057874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2690578A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v12 = sub_269057B34();
  aBlock[4] = sub_2690416E0;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_90;
  v13 = _Block_copy(aBlock);

  sub_269057884();
  v15[1] = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v11, v6, v13);
  _Block_release(v13);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

void sub_26903C580()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page];

      sub_26900E6C8(v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_26903C620(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  v6 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
  if (v6)
  {
    [v6 cancelTrainingForSessionId_];
    v7 = *(v2 + v5);
    if (v7)
    {
      [v7 stopRMS];
      v8 = *(v2 + v5);
      if (v8)
      {
        if (a1)
        {
          v12[4] = a1;
          v12[5] = a2;
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 1107296256;
          v12[2] = sub_26900BEF0;
          v12[3] = &block_descriptor_7;
          v9 = _Block_copy(v12);
          v10 = v8;
          sub_26903FFAC(a1);
        }

        else
        {
          v10 = v8;
          v9 = 0;
        }

        [v10 cleanupWithCompletion_];
        _Block_release(v9);
      }
    }
  }

  else if (a1)
  {

    a1(v11);

    sub_26903FF84(a1);
  }
}

uint64_t sub_26903C790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v19 - v4;
  if ((*(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled) & 1) == 0)
  {
    v6 = 0x800000026905E580;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v7 = 0xD00000000000001DLL;
    v8 = sub_269057774();
    __swift_project_value_buffer(v8, qword_2802F3FF8);
    v9 = sub_269057AA4();
    v21 = 0xD00000000000001DLL;
    v22 = 0x800000026905E580;
    if (("skipTraining(notifyDelegate:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v19 = 32;
      v20 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E5A0);
      MEMORY[0x26D62FBC0](v19, v20);

      v7 = v21;
      v6 = v22;
    }

    v10 = sub_269057764();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = sub_269010108(v7, v6, &v19);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_269002000, v10, v9, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D6309D0](v12, -1, -1);
      MEMORY[0x26D6309D0](v11, -1, -1);
    }

    else
    {
    }

    if (qword_2802F3228 != -1)
    {
      swift_once();
    }

    v14 = sub_269057A64();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269057A44();

    v16 = sub_269057A34();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v15;
    *(v17 + 40) = 0;

    sub_269038934(0, 0, v5, &unk_26905B0D0, v17);
  }

  return result;
}

uint64_t sub_26903CAE4()
{
  v21 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled;
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057AA4();
    if (("cancelTraining()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v20[0] = 32;
      v20[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000017, 0x800000026905E5E0);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(0xD000000000000010, 0x800000026905E5C0, v20);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v6, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }

    v11 = v0[2];
    *(v1 + v2) = 1;
    sub_269038C34(6, 0);
    sub_26903BA04();
    v12 = *(v11 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager);
    if (v12)
    {
      v13 = *(v0[2] + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
      v14 = v12;
      if (v13)
      {
        v13 = [v13 voiceProfile];
      }

      [v12 deleteUserVoiceProfile_];
    }

    v15 = v0[2];
    sub_26903D5D8(0);
    if (qword_2802F3228 != -1)
    {
      swift_once();
    }

    v16 = v0[2];
    v17 = swift_task_alloc();
    v0[3] = v17;
    *(v17 + 16) = v16;
    v18 = *(MEMORY[0x277D859E0] + 4);
    v19 = swift_task_alloc();
    v0[4] = v19;
    *v19 = v0;
    v19[1] = sub_26903CE90;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_26903CE90()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26903CFA8, 0, 0);
}

uint64_t sub_26903CFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_26903C620(sub_26903FF18, v8);
}

uint64_t sub_26903D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 40) = a4;
  sub_269057A44();
  *(v5 + 48) = sub_269057A34();
  v7 = sub_269057A14();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x2822009F8](sub_26903D1A0, v7, v6);
}

uint64_t sub_26903D1A0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_26903D290;

    return sub_26903CAC4();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_26903D290()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26903D3B0, v4, v3);
}

uint64_t sub_26903D3B0()
{
  v18 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 88);

  v3 = *(v0 + 72);
  if (v2 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(*(v0 + 72) + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page);

      sub_26900D268(v5);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for SiriSetupCoordinator();
      if (swift_dynamicCastClass())
      {
        v6 = *(v0 + 72);
        v7 = *&v6[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page];
        v14[0] = 1;
        v15 = 0;
        v16 = 0;
        v17 = 0;

        sub_26900EC94(v8, v14);

        swift_unknownObjectRelease();

        goto LABEL_11;
      }

      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v0 + 72);
    if (Strong)
    {
      v10 = *&v3[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page];

      sub_26900E964(v11);
      swift_unknownObjectRelease();
    }
  }

LABEL_11:
  v12 = *(v0 + 8);

  return v12();
}

void sub_26903D538()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  [v1 setIdleTimerDisabled_];

  v2 = [v0 sharedApplication];
  [v2 setIdleTimerDisabled_];
}

void sub_26903D5D8(char a1)
{
  v2 = v1;
  v4 = 0xD000000000000023;
  sub_269057C54();

  v31 = 0xD000000000000020;
  v32 = 0x800000026905E600;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x800000026905E630;
  MEMORY[0x26D62FBC0](v5, v6);

  v9 = v31;
  v8 = v32;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v10 = sub_269057774();
  __swift_project_value_buffer(v10, qword_2802F3FF8);
  v11 = sub_269057AA4();
  v31 = 0xD000000000000023;
  v32 = 0x800000026905E630;
  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v30[0] = 32;
    v30[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v9, v8);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v4 = v31;
    v7 = v32;
  }

  v13 = sub_269057764();
  if (os_log_type_enabled(v13, v11))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30[0] = v15;
    *v14 = 136315138;
    v16 = sub_269010108(v4, v7, v30);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_269002000, v13, v11, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26D6309D0](v15, -1, -1);
    MEMORY[0x26D6309D0](v14, -1, -1);
  }

  else
  {
  }

  v17 = v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource;
  v18 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
  v19 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 32);
  v22 = v18;
  v21(&v31, ObjectType, v19);

  if (v31 != 3)
  {
    v23 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSourceWriter);
    v24 = 1;
    if (a1)
    {
      v24 = 2;
    }

    *(v23 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled) = v24;
    *(v23 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled) = v24;
    v25 = *v17;
    v26 = *(v17 + 8);
    v27 = swift_getObjectType();
    v28 = *(v26 + 64);
    v29 = v25;
    v28(v27, v26);
  }
}

void sub_26903D918(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_26903D990(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  sub_269057C54();

  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E40, &qword_26905A3D8);
  v11 = sub_269057964();
  MEMORY[0x26D62FBC0](v11);

  MEMORY[0x26D62FBC0](0xD000000000000012, 0x800000026905E8D0);
  v23 = 32;
  v24 = 0xE100000000000000;
  v29 = a2;
  v30 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v12 = sub_269057964();
  MEMORY[0x26D62FBC0](v12);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v13 = sub_269057774();
  __swift_project_value_buffer(v13, qword_2802F3FF8);
  v14 = sub_269057AA4();
  sub_269053434(v14, 0xD00000000000001BLL, 0x800000026905E750, 0xD00000000000001BLL, 0x800000026905E8B0, 32, 0xE100000000000000);

  if (a4)
  {
    if (a3)
    {
      v15 = sub_269057944();
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_269057944();
    [a4 setValue:v15 forKey:v16];
    swift_unknownObjectRelease();
  }

  v17 = *&a5[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager];
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a4;
    v27 = sub_269041A70;
    v28 = v18;
    v23 = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_26903D918;
    v26 = &block_descriptor_68;
    v19 = _Block_copy(&v23);
    v20 = a4;
    v21 = v17;
    v22 = a5;

    [v21 markSATEnrollmentSuccessForVoiceProfile:v20 completion:v19];
    _Block_release(v19);
  }
}

void sub_26903DC98(char a1, void *a2)
{
  v4 = 0xD00000000000001BLL;
  sub_269057C54();

  v20 = 0xD00000000000001ELL;
  v21 = 0x800000026905E830;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x800000026905E750;
  MEMORY[0x26D62FBC0](v5, v6);

  MEMORY[0x26D62FBC0](0x20726F727265202CLL, 0xE800000000000000);
  v19[0] = a2;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E40, &qword_26905A3D8);
  v9 = sub_269057964();
  MEMORY[0x26D62FBC0](v9);

  v11 = v20;
  v10 = v21;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v12 = sub_269057774();
  __swift_project_value_buffer(v12, qword_2802F3FF8);
  v13 = sub_269057AA4();
  v20 = 0xD00000000000001BLL;
  v21 = 0x800000026905E750;
  v14 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v19[0] = 32;
    v19[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v11, v10);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v4 = v20;
    v7 = v21;
  }

  v15 = sub_269057764();
  if (os_log_type_enabled(v15, v13))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315138;
    v18 = sub_269010108(v4, v7, v19);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_269002000, v15, v13, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6309D0](v17, -1, -1);
    MEMORY[0x26D6309D0](v16, -1, -1);
  }

  else
  {
  }

  if (a2)
  {
    a2 = sub_269057664();
  }

  sub_269041344(a2);

  sub_26903D5D8(1);
}

uint64_t sub_26903DF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_269057874();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2690578A4();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2690578C4();
  v33 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E50, &qword_26905B100);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a1, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
  swift_beginAccess();
  sub_2690418CC(v21, a2 + v24);
  swift_endAccess();
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v25 = sub_269057B34();
  sub_2690578B4();
  sub_269057904();
  v26 = *(v11 + 8);
  v32 = v11 + 8;
  v26(v15, v10);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_26904193C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_122;
  v28 = _Block_copy(aBlock);

  v29 = v34;
  sub_269057884();
  v39 = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  v30 = v35;
  sub_269057C14();
  MEMORY[0x26D62FD40](v17, v29, v30, v28);
  _Block_release(v28);

  (*(v38 + 8))(v30, v4);
  (*(v36 + 8))(v29, v37);
  v26(v17, v33);
}

void sub_26903E438()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E50, &qword_26905B100);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v1 + 56))(v11, 1, 1, v0);
    goto LABEL_6;
  }

  v13 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
  v14 = Strong;
  swift_beginAccess();
  sub_269041944(v14 + v13, v11, &qword_2802F3E50, &qword_26905B100);

  v15 = *(v1 + 48);
  if (v15(v11, 1, v0) == 1)
  {
LABEL_6:
    sub_2690419AC(v11, &qword_2802F3E50, &qword_26905B100);
    return;
  }

  sub_2690419AC(v11, &qword_2802F3E50, &qword_26905B100);
  v45[3] = 0;
  v45[4] = 0xE000000000000000;
  sub_269057C54();

  strcpy(v45, "Animation for ");
  HIBYTE(v45[1]) = -18;
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  v42 = v9;
  v41 = v4;
  v39 = v15;
  if (v16)
  {
    v17 = v16[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState];
  }

  else
  {
    v17 = 7;
  }

  v40 = v1;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000026905EC40;
  LOBYTE(v43) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E68, &qword_26905B168);
  v20 = sub_269057964();
  MEMORY[0x26D62FBC0](v20);

  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905ECC0);
  v21 = v45[0];
  v22 = v45[1];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v23 = sub_269057774();
  __swift_project_value_buffer(v23, qword_2802F3FF8);
  v24 = sub_269057AA4();
  v45[0] = 0xD00000000000001CLL;
  v45[1] = 0x800000026905EC40;
  v25 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v25 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v43 = 32;
    v44 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v21, v22);
    MEMORY[0x26D62FBC0](v43, v44);

    v18 = v45[0];
    v19 = v45[1];
  }

  v26 = sub_269057764();
  if (os_log_type_enabled(v26, v24))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v43 = v28;
    *v27 = 136315138;
    v29 = sub_269010108(v18, v19, &v43);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_269002000, v26, v24, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26D6309D0](v28, -1, -1);
    MEMORY[0x26D6309D0](v27, -1, -1);
  }

  else
  {
  }

  v30 = v40;
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  v32 = v42;
  v33 = v41;
  if (v31)
  {
    v34 = v31;
    v35 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
    swift_beginAccess();
    if (v39(&v34[v35], 1, v0))
    {
    }

    else
    {
      (*(v30 + 16))(v33, &v34[v35], v0);

      sub_269057A24();
      (*(v30 + 8))(v33, v0);
    }
  }

  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    (*(v30 + 56))(v32, 1, 1, v0);
    v38 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
    swift_beginAccess();
    sub_2690418CC(v32, v37 + v38);
    swift_endAccess();
  }
}

id sub_26903EA34()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for VoiceTrainingPresenter()
{
  result = qword_2802F3D18;
  if (!qword_2802F3D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26903EC24()
{
  v0 = sub_2690576E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26903ED6C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26903ED6C()
{
  if (!qword_2802F3D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F3D30, &qword_26905B098);
    v0 = sub_269057BD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2802F3D28);
    }
  }
}

uint64_t sub_26903EDD0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[11];
  v32 = v3[10];
  v33 = v5;
  v6 = v3[11];
  v34 = v3[12];
  v7 = v3[5];
  v8 = v3[7];
  v28 = v3[6];
  v9 = v28;
  v29 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v30 = v3[8];
  v12 = v30;
  v31 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v24 = v3[2];
  v15 = v24;
  v25 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v26 = v3[4];
  v18 = v26;
  v27 = v17;
  v19 = v3[1];
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  a1[10] = v32;
  a1[11] = v6;
  a1[12] = v3[12];
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v7;
  *a1 = v20;
  a1[1] = v13;
  return sub_269009E3C(v23, v22);
}

void (*sub_26903EEA4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_26903372C(v2);
  return sub_26901AFE8;
}

void *sub_26903EF14()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
  }

  v3 = v1;
  return v1;
}

uint64_t sub_26903EF68()
{
  v1 = v0;
  v2 = 0x800000026905D1B0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v3 = 0xD000000000000017;
  v4 = sub_269057774();
  __swift_project_value_buffer(v4, qword_2802F3FF8);
  v5 = sub_269057AA4();
  v14 = 0xD000000000000017;
  v15 = 0x800000026905D1B0;
  if (("rainingPresenter" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v13[0] = 32;
    v13[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905E940);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v3 = v14;
    v2 = v15;
  }

  v6 = sub_269057764();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    v9 = sub_269010108(v3, v2, v13);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6309D0](v8, -1, -1);
    MEMORY[0x26D6309D0](v7, -1, -1);
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page);

    sub_26900D268(v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26903F198()
{
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
  {
    sub_26903A078(1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for SiriSetupCoordinator();
    if (swift_dynamicCastClass())
    {
      v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page);
      v6[0] = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;

      sub_26900EC94(v2, v6);

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_page);

    sub_26900E964(v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26903F2C8()
{
  v0[2] = sub_269057A44();
  v0[3] = sub_269057A34();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26903F374;

  return sub_269035EE0();
}

uint64_t sub_26903F374()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_269057A14();

  return MEMORY[0x2822009F8](sub_269041AB4, v5, v4);
}

uint64_t sub_26903F52C()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26903F568(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269041A84;

  return sub_26903D104(a1, v4, v5, v6, v7);
}

uint64_t sub_26903F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_269057C84();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26903F72C, 0, 0);
}

uint64_t sub_26903F72C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_269057C94();
  v7 = sub_269041A0C(&qword_2802F3E88, MEMORY[0x277D85928]);
  sub_269057E14();
  sub_269041A0C(&unk_2802F3E90, MEMORY[0x277D858F8]);
  sub_269057CA4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26903F8BC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_26903F8BC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26903FA78, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_26903FA78()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_26903FAE4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26903FBDC;

  return v7(a1);
}

uint64_t sub_26903FBDC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26903FCD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26903FD0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_269041A84;

  return sub_26903FAE4(a1, v5);
}

uint64_t sub_26903FDC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26901E18C;

  return sub_26903FAE4(a1, v5);
}

uint64_t sub_26903FE84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26903FF18()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_269057A24();
}

uint64_t sub_26903FF84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26903FFAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26903FFBC()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_269040004()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[27];

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_26904009C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2690400E4(char a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_26903DC98(a1, a2);
}

uint64_t sub_269040100()
{
  v0 = sub_269057874();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2690578A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v10 = sub_269057B34();
  aBlock[4] = sub_26903D538;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_127;
  v11 = _Block_copy(aBlock);
  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v9, v4, v11);
  _Block_release(v11);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_269040398(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 2u)
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      v5 = 3305;
    }

    else
    {
      v5 = 3306;
    }
  }

  else if (result > 4u)
  {
    if (result != 5)
    {
      return result;
    }

    v5 = 3309;
  }

  else if (result == 3)
  {
    v5 = 3307;
  }

  else
  {
    v5 = 3308;
  }

  if (qword_2802F3228 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E70, &qword_26905B170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269059EE0;
  *(inited + 32) = 0x7463757274736E69;
  *(inited + 40) = 0xEB000000006E6F69;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v7 = sub_2690172AC(inited);
  swift_setDeallocating();
  sub_2690419AC(inited + 32, &qword_2802F3E78, &qword_26905B178);
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;
    sub_269033284(v7);
    v10 = sub_269057914();

    [v9 logEventWithType:v5 context:v10];
  }
}

uint64_t sub_26904059C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 121) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  return MEMORY[0x2822009F8](sub_2690405C4, 0, 0);
}

uint64_t sub_2690405C4()
{
  v51 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 121);
  v4 = *(v0 + 56);
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_269057C54();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x26D62FBC0]();
  v5 = sub_269043A34(v4);
  MEMORY[0x26D62FBC0](v5);

  MEMORY[0x26D62FBC0](0x3A657461747320, 0xE700000000000000);
  *(v0 + 120) = v3;
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x63757274736E6920, 0xED00003A6E6F6974);
  MEMORY[0x26D62FBC0](v2, v1);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  v10 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v10 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v49 = 32;
    v50 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v6, v7);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v12 = 136315138;
    v14 = sub_269010108(0xD00000000000003FLL, 0x800000026905EB20, &v49);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 56);
  if (v16 > 3)
  {
    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v31 = sub_269057AA4();
        if (("TrainingResult: " & 0x2F00000000000000) != 0x2000000000000000)
        {
          v49 = 32;
          v50 = 0xE100000000000000;
          MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905EB80);
          MEMORY[0x26D62FBC0](v49, v50);
        }

        v32 = sub_269057764();
        if (os_log_type_enabled(v32, v31))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v49 = v34;
          *v33 = 136315138;
          v35 = sub_269010108(0xD00000000000003FLL, 0x800000026905EB20, &v49);

          *(v33 + 4) = v35;
          v36 = v31;
LABEL_46:
          _os_log_impl(&dword_269002000, v32, v36, "%s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x26D6309D0](v34, -1, -1);
          MEMORY[0x26D6309D0](v33, -1, -1);

LABEL_48:
          v43 = *(v0 + 80);
          sub_26903A078(1);
          goto LABEL_53;
        }

LABEL_47:

        goto LABEL_48;
      }

      if (v16 != 7)
      {
        goto LABEL_37;
      }

      v24 = swift_task_alloc();
      *(v0 + 96) = v24;
      *v24 = v0;
      v25 = sub_269041068;
    }

    else if (v16 == 4)
    {
      v24 = swift_task_alloc();
      *(v0 + 104) = v24;
      *v24 = v0;
      v25 = sub_26904115C;
    }

    else
    {
      v20 = *(v0 + 80);
      v21 = *(v20 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_AVVCRetryCount);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return result;
      }

      *(v20 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_AVVCRetryCount) = v23;
      if (v23 > 4)
      {
        v26 = sub_269057AA4();
        v27 = "Skipped training";
        if (("Skipped training" & 0x2F00000000000000) == 0x2000000000000000)
        {
          goto LABEL_44;
        }

        v49 = 32;
        v50 = 0xE100000000000000;
        v28 = 0xD00000000000003ALL;
LABEL_43:
        MEMORY[0x26D62FBC0](v28, v27 | 0x8000000000000000);
        MEMORY[0x26D62FBC0](v49, v50);

LABEL_44:
        v32 = sub_269057764();
        if (os_log_type_enabled(v32, v26))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v49 = v34;
          *v33 = 136315138;
          v42 = sub_269010108(0xD00000000000003FLL, 0x800000026905EB20, &v49);

          *(v33 + 4) = v42;
          v36 = v26;
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v24 = swift_task_alloc();
      *(v0 + 112) = v24;
      *v24 = v0;
      v25 = sub_269041250;
    }
  }

  else
  {
    if (v16 <= 1)
    {
      if (!v16)
      {
        v29 = *(v0 + 80);
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v19 = sub_269041720;
        goto LABEL_27;
      }

      if (v16 == 1)
      {
        v17 = *(v0 + 80);
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v19 = sub_2690416E8;
LABEL_27:
        sub_269039C20(1, v19, v18);

LABEL_53:
        v48 = *(v0 + 8);

        return v48();
      }

LABEL_37:
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_269057C54();
      v37 = v50;
      *(v0 + 32) = v49;
      *(v0 + 40) = v37;
      MEMORY[0x26D62FBC0](0x206E776F6E6B6E55, 0xEF203A65756C6176);
      *(v0 + 48) = v16;
      type metadata accessor for SRSTrainingManagerSessionStatus(0);
      sub_269057CB4();
      v38 = *(v0 + 32);
      v39 = *(v0 + 40);
      v40 = sub_269057A94();
      v41 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v49 = 32;
        v50 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](v38, v39);
        MEMORY[0x26D62FBC0](v49, v50);
      }

      v44 = sub_269057764();
      if (os_log_type_enabled(v44, v40))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v49 = v46;
        *v45 = 136315138;
        v47 = sub_269010108(0xD00000000000003FLL, 0x800000026905EB20, &v49);

        *(v45 + 4) = v47;
        _os_log_impl(&dword_269002000, v44, v40, "%s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x26D6309D0](v46, -1, -1);
        MEMORY[0x26D6309D0](v45, -1, -1);
      }

      else
      {
      }

      goto LABEL_53;
    }

    if (v16 != 2)
    {
      v26 = sub_269057A94();
      v27 = "ors. Cancelling enrollment";
      if (("ors. Cancelling enrollment" & 0x2F00000000000000) == 0x2000000000000000)
      {
        goto LABEL_44;
      }

      v49 = 32;
      v50 = 0xE100000000000000;
      v28 = 0xD000000000000057;
      goto LABEL_43;
    }

    v24 = swift_task_alloc();
    *(v0 + 88) = v24;
    *v24 = v0;
    v25 = sub_269040F74;
  }

  v24[1] = v25;
  v30 = *(v0 + 80);

  return sub_2690366E4(1);
}

uint64_t sub_269040F74()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_269041068()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26904115C()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_269041250()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_269041344(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = 0x800000026905E850;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = 0xD00000000000002BLL;
    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057A94();
    v17 = 0xD00000000000002BLL;
    v18 = 0x800000026905E850;
    if (("(voiceProfile:savingError:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v16[0] = 32;
      v16[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD00000000000002BLL, 0x800000026905E880);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v4 = v17;
      v3 = v18;
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(v4, v3, v16);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v6, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }

    v11 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager);
    if (v11)
    {
      v12 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
      v13 = v11;
      if (v12)
      {
        v14 = [v12 voiceProfile];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      [v11 deleteUserVoiceProfile_];
    }
  }
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2690415E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26901E18C;

  return sub_26903D104(a1, v4, v5, v6, v7);
}

uint64_t sub_269041758(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269041A84;

  return sub_2690386DC(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_104Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_98Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2690418CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E50, &qword_26905B100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269041944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2690419AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269041A0C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_269041AB8(_OWORD *a1)
{
  v3 = a1[11];
  v47 = a1[10];
  v48 = v3;
  v49 = a1[12];
  v4 = a1[7];
  v43 = a1[6];
  v44 = v4;
  v5 = a1[9];
  v45 = a1[8];
  v46 = v5;
  v6 = a1[3];
  v39 = a1[2];
  v40 = v6;
  v7 = a1[5];
  v41 = a1[4];
  v42 = v7;
  v8 = a1[1];
  v38[0] = *a1;
  v38[1] = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup34LanguageSelectionWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup34LanguageSelectionWelcomeController_orbView] = 0;
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup34LanguageSelectionWelcomeController_viewModel];
  v10 = a1[11];
  *(v9 + 10) = a1[10];
  *(v9 + 11) = v10;
  *(v9 + 12) = a1[12];
  v11 = a1[7];
  *(v9 + 6) = a1[6];
  *(v9 + 7) = v11;
  v12 = a1[9];
  *(v9 + 8) = a1[8];
  *(v9 + 9) = v12;
  v13 = a1[3];
  *(v9 + 2) = a1[2];
  *(v9 + 3) = v13;
  v14 = a1[5];
  *(v9 + 4) = a1[4];
  *(v9 + 5) = v14;
  v15 = a1[1];
  *v9 = *a1;
  *(v9 + 1) = v15;
  sub_269009E3C(v38, v37);
  v16 = sub_269057944();
  if (*(&v39 + 1))
  {

    v17 = sub_269057944();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_269017F70();
  v36.receiver = v1;
  v36.super_class = type metadata accessor for LanguageSelectionWelcomeController();
  v19 = objc_msgSendSuper2(&v36, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, v18, 2);

  v20 = v41;
  if (v41)
  {
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_269009EE0(v38);
  v21 = *(v20 + 16);
  v22 = &off_279C4A000;
  if (v21)
  {
    v23 = objc_opt_self();
    v24 = (v20 + 40);
    do
    {
      v25 = v22;
      v26 = *(v24 - 1);
      v27 = *v24;

      v28 = [v23 boldButton];
      v29 = sub_269057944();
      v22 = v25;

      [v28 setTitle:v29 forState:0];

      [v28 addTarget:v19 action:sel_continueTappedWithSender_ forControlEvents:64];
      v30 = [v19 v25 + 4048];
      [v30 addButton_];

      v24 += 2;
      --v21;
    }

    while (v21);
  }

  v31 = objc_opt_self();
  v32 = sub_269057944();
  v33 = [v31 linkWithBundleIdentifier_];

  v34 = [v19 v22[234]];
  [v34 setPrivacyLinkController_];

  return v19;
}

uint64_t sub_269041DD4(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = [a1 currentTitle];
    if (v3)
    {
      v4 = v3;
      v5 = sub_269057954();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    sub_269043814(v5, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_269041F50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageSelectionWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26904203C(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v171 = a5;
  v172 = sub_269057714();
  v165 = *(v172 - 8);
  v11 = *(v165 + 64);
  MEMORY[0x28223BE20](v172);
  v164 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController];
  *v13 = 0;
  *(v13 + 1) = 0;
  v173 = OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_languages;
  *&v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_languages] = MEMORY[0x277D84F98];
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_dataSource];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_dataSourceWriter];
  *v15 = a3;
  *(v15 + 1) = a4;
  ObjectType = swift_getObjectType();
  v17 = *(a2 + 80);
  v18 = a1;
  v170 = a3;
  v177 = v18;
  v178 = ObjectType;
  v19 = v17(ObjectType, a2);
  v175 = v6;
  v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewStyle] = v19;
  v20 = 0x800000026905EDE0;
  if (qword_2802F3248 != -1)
  {
LABEL_75:
    swift_once();
  }

  LODWORD(v180) = byte_2802F5130;
  v21 = sub_269051B18(byte_2802F5130);
  *&v199[0] = 0xD000000000000018;
  *(&v199[0] + 1) = v20;
  MEMORY[0x26D62FBC0](v21);

  v22 = v199[0];
  v23 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  v26 = v24 >> 1;
  v27 = v25 + 1;
  if (v24 >> 1 <= v25)
  {
    v23 = sub_26904DCD8((v24 > 1), v25 + 1, 1, v23);
    v24 = *(v23 + 3);
    v26 = v24 >> 1;
  }

  *(v23 + 2) = v27;
  *&v23[16 * v25 + 32] = v22;
  if (v26 < (v25 + 2))
  {
    v23 = sub_26904DCD8((v24 > 1), v25 + 2, 1, v23);
  }

  *(v23 + 2) = v25 + 2;
  v28 = &v23[16 * v27];
  *(v28 + 4) = 0xD000000000000018;
  *(v28 + 5) = v20;
  v29 = (v23 + 40);
  v30 = -v25;
  v31 = -1;
  while (v30 + v31 != 1)
  {
    if (++v31 >= *(v23 + 2))
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v32 = v29 + 2;
    v33 = *(v29 - 1);
    v34 = *v29;

    v35 = sub_26902F7F4(v33, v34, 0);
    v37 = v36;

    v29 = v32;
    if (v37)
    {

      v20 = v37;
      goto LABEL_20;
    }
  }

  v38 = 0x800000026905BF00;
  *&v199[0] = 0;
  *(&v199[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000018, v20);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v39 = *(&v199[0] + 1);
  v40 = *&v199[0];
  if (qword_2802F3258 != -1)
  {
LABEL_77:
    swift_once();
  }

  v41 = sub_269057774();
  __swift_project_value_buffer(v41, qword_2802F3FF8);
  v42 = sub_269057A94();
  v43 = 0xD00000000000003BLL;
  *&v199[0] = 0xD00000000000003BLL;
  *(&v199[0] + 1) = v38;
  v44 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v44 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    *&v198[0] = 32;
    *(&v198[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v40, v39);
    MEMORY[0x26D62FBC0](*&v198[0], *(&v198[0] + 1));

    v38 = *(&v199[0] + 1);
    v43 = *&v199[0];
  }

  v45 = sub_269057764();
  if (os_log_type_enabled(v45, v42))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v198[0] = v47;
    *v46 = 136315138;
    v48 = sub_269010108(v43, v38, v198);

    *(v46 + 4) = v48;
    _os_log_impl(&dword_269002000, v45, v42, "%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x26D6309D0](v47, -1, -1);
    MEMORY[0x26D6309D0](v46, -1, -1);
  }

  else
  {
  }

  v35 = 0xD000000000000018;
LABEL_20:
  v49 = v180;
  v50 = sub_2690519EC(v180);
  *&v199[0] = v35;
  *(&v199[0] + 1) = v20;
  strcpy(v198, "%DEVICE_NAME%");
  HIWORD(v198[0]) = -4864;
  *&v181 = v50;
  *(&v181 + 1) = v51;
  sub_26900BE9C();
  v52 = sub_269057BE4();
  v54 = v53;

  v55 = sub_2690519EC(v49);
  *&v199[0] = v52;
  *(&v199[0] + 1) = v54;
  v174 = 0xD000000000000014;
  *&v198[0] = 0xD000000000000014;
  *(&v198[0] + 1) = 0x800000026905BEA0;
  v179 = 0x800000026905BEA0;
  *&v181 = v55;
  *(&v181 + 1) = v56;
  v57 = sub_269057BE4();
  v168 = v58;
  v169 = v57;

  v59 = 0x800000026905EE00;
  v60 = sub_269051B18(v49);
  *&v199[0] = 0xD00000000000001BLL;
  *(&v199[0] + 1) = 0x800000026905EE00;
  MEMORY[0x26D62FBC0](v60);

  v61 = v199[0];
  v62 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v64 = *(v62 + 2);
  v63 = *(v62 + 3);
  v65 = v63 >> 1;
  v66 = v64 + 1;
  if (v63 >> 1 <= v64)
  {
    v62 = sub_26904DCD8((v63 > 1), v64 + 1, 1, v62);
    v63 = *(v62 + 3);
    v65 = v63 >> 1;
  }

  *(v62 + 2) = v66;
  *&v62[16 * v64 + 32] = v61;
  v176 = a2;
  if (v65 < (v64 + 2))
  {
    v62 = sub_26904DCD8((v63 > 1), v64 + 2, 1, v62);
  }

  *(v62 + 2) = v64 + 2;
  v67 = &v62[16 * v66];
  *(v67 + 4) = 0xD00000000000001BLL;
  *(v67 + 5) = 0x800000026905EE00;
  v68 = (v62 + 40);
  v20 = -v64;
  a2 = -1;
  while (v20 + a2 != 1)
  {
    if (++a2 >= *(v62 + 2))
    {
      goto LABEL_74;
    }

    v69 = v68 + 2;
    v70 = *(v68 - 1);
    v71 = *v68;

    v72 = sub_26902F7F4(v70, v71, 0);
    v74 = v73;

    v68 = v69;
    if (v74)
    {

      v59 = v74;
      goto LABEL_40;
    }
  }

  *&v199[0] = 0;
  *(&v199[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905EE00);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  a2 = *(&v199[0] + 1);
  v75 = *&v199[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v76 = sub_269057774();
  __swift_project_value_buffer(v76, qword_2802F3FF8);
  LODWORD(v167) = sub_269057A94();
  v77 = 0xD00000000000003BLL;
  *&v199[0] = 0xD00000000000003BLL;
  *(&v199[0] + 1) = 0x800000026905BF00;
  v78 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v78 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (v78)
  {
    *&v198[0] = 32;
    *(&v198[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v75, a2);
    MEMORY[0x26D62FBC0](*&v198[0], *(&v198[0] + 1));

    v79 = *(&v199[0] + 1);
    v77 = *&v199[0];
  }

  else
  {
    v79 = 0x800000026905BF00;
  }

  v80 = sub_269057764();
  v81 = v167;
  if (os_log_type_enabled(v80, v167))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v198[0] = v83;
    *v82 = 136315138;
    v84 = sub_269010108(v77, v79, v198);

    *(v82 + 4) = v84;
    _os_log_impl(&dword_269002000, v80, v81, "%s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x26D6309D0](v83, -1, -1);
    MEMORY[0x26D6309D0](v82, -1, -1);
  }

  else
  {
  }

  v72 = 0xD00000000000001BLL;
LABEL_40:
  v85 = v176;
  v86 = v180;
  v87 = sub_2690519EC(v180);
  *&v199[0] = v72;
  *(&v199[0] + 1) = v59;
  strcpy(v198, "%DEVICE_NAME%");
  HIWORD(v198[0]) = -4864;
  *&v181 = v87;
  *(&v181 + 1) = v88;
  v20 = MEMORY[0x277D837D0];
  v89 = sub_269057BE4();
  v91 = v90;

  v92 = sub_2690519EC(v86);
  *&v199[0] = v89;
  *(&v199[0] + 1) = v91;
  *&v198[0] = v174;
  *(&v198[0] + 1) = v179;
  *&v181 = v92;
  *(&v181 + 1) = v93;
  v94 = sub_269057BE4();
  v166 = v95;
  v167 = v94;

  v96 = v178;
  v179 = (*(v85 + 11))(v178, v85);
  v180 = v97;
  if (!v97)
  {
    v98 = [objc_opt_self() currentLocale];
    v99 = v164;
    sub_269057704();

    v179 = sub_2690576F4();
    v180 = v100;
    (*(v165 + 8))(v99, v172);
  }

  v101 = MEMORY[0x277D84F90];
  v102 = (*(v85 + 5))(v96, v85);
  if (v102)
  {
    v103 = v102;
  }

  else
  {
    v103 = v101;
  }

  v104 = *(v103 + 16);
  if (v104)
  {
    v105 = 0;
    v106 = v103 + 40;
    v178 = *(v103 + 16);
    v164 = (v104 - 1);
    v165 = v103 + 40;
    while (2)
    {
      v176 = v101;
      v107 = (v106 + 16 * v105);
      v38 = v105;
      while (1)
      {
        if (v38 >= *(v103 + 16))
        {
          __break(1u);
          goto LABEL_73;
        }

        v39 = *(v107 - 1);
        a2 = *v107;
        v108 = qword_2802F3220;

        if (v108 != -1)
        {
          swift_once();
        }

        v109 = [objc_opt_self() sharedInstance];
        if (!v109)
        {
          goto LABEL_79;
        }

        v110 = v109;
        v111 = sub_269057944();
        v20 = sub_269057944();
        v112 = [v110 localizedCompactNameForSiriLanguage:v111 inDisplayLanguage:v20];

        if (v112)
        {
          break;
        }

        ++v38;

        v107 += 2;
        if (v178 == v38)
        {
          v101 = v176;
          goto LABEL_71;
        }
      }

      v174 = sub_269057954();
      v114 = v113;

      v172 = v114;

      v115 = v176;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_26904DCD8(0, *(v115 + 2) + 1, 1, v115);
      }

      v117 = *(v115 + 2);
      v116 = *(v115 + 3);
      if (v117 >= v116 >> 1)
      {
        v115 = sub_26904DCD8((v116 > 1), v117 + 1, 1, v115);
      }

      *(v115 + 2) = v117 + 1;
      v176 = v115;
      v118 = &v115[16 * v117];
      v119 = v175;
      v40 = v172;
      v20 = v173;
      *(v118 + 4) = v174;
      *(v118 + 5) = v40;
      swift_beginAccess();
      v120 = *&v119[v20];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v198[0] = *&v119[v20];
      v122 = *&v198[0];
      *&v119[v20] = 0x8000000000000000;
      v124 = sub_269016B94(v174, v40);
      v125 = *(v122 + 16);
      v126 = (v123 & 1) == 0;
      v127 = v125 + v126;
      if (__OFADD__(v125, v126))
      {
        __break(1u);
        goto LABEL_77;
      }

      v20 = v123;
      if (*(v122 + 24) >= v127)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v130 = *&v198[0];
          if ((v123 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          sub_2690485E4();
          v130 = *&v198[0];
          if ((v20 & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        sub_269047FEC(v127, isUniquelyReferenced_nonNull_native);
        v128 = sub_269016B94(v174, v172);
        if ((v20 & 1) != (v129 & 1))
        {
          goto LABEL_80;
        }

        v124 = v128;
        v130 = *&v198[0];
        if ((v20 & 1) == 0)
        {
LABEL_68:
          v130[(v124 >> 6) + 8] |= 1 << v124;
          v133 = (v130[6] + 16 * v124);
          v134 = v172;
          *v133 = v174;
          v133[1] = v134;
          v135 = (v130[7] + 16 * v124);
          *v135 = v39;
          v135[1] = a2;
          v136 = v130[2];
          v137 = __OFADD__(v136, 1);
          v138 = v136 + 1;
          if (!v137)
          {
            v130[2] = v138;
LABEL_70:
            v105 = v38 + 1;
            *&v175[v173] = v130;
            swift_endAccess();
            v106 = v165;
            v101 = v176;
            if (v164 != v38)
            {
              continue;
            }

            goto LABEL_71;
          }

          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          result = sub_269057E04();
          __break(1u);
          return result;
        }
      }

      break;
    }

    v131 = (v130[7] + 16 * v124);
    v132 = v131[1];
    *v131 = v39;
    v131[1] = a2;

    goto LABEL_70;
  }

LABEL_71:

  v139 = v175;
  v140 = &v175[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewModel];
  *v140 = 0;
  *(v140 + 1) = 0;
  v141 = v168;
  *(v140 + 2) = v169;
  *(v140 + 3) = v141;
  v142 = v166;
  *(v140 + 4) = v167;
  *(v140 + 5) = v142;
  *(v140 + 6) = 0;
  *(v140 + 7) = 0xE000000000000000;
  *(v140 + 8) = v101;
  *(v140 + 72) = 0u;
  *(v140 + 88) = 0u;
  *(v140 + 104) = 0u;
  *(v140 + 120) = 0u;
  *(v140 + 136) = 0u;
  v140[152] = 2;
  *(v140 + 153) = *v197;
  *(v140 + 39) = *&v197[3];
  *(v140 + 20) = 0;
  *(v140 + 21) = 0;
  *(v140 + 183) = 0;
  *(v140 + 22) = 0;
  *(v140 + 187) = v195;
  v140[191] = v196;
  *(v140 + 24) = 0;
  *(v140 + 25) = 0;
  *&v139[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_page] = v171;
  v143 = type metadata accessor for LanguageSelectionPresenter();
  v194.receiver = v139;
  v194.super_class = v143;

  v144 = objc_msgSendSuper2(&v194, sel_init);
  v145 = &v144[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewModel];
  v146 = v144[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewStyle];
  swift_beginAccess();
  v198[0] = *v145;
  v147 = v145[1];
  v148 = v145[2];
  v149 = v145[4];
  v198[3] = v145[3];
  v198[4] = v149;
  v198[1] = v147;
  v198[2] = v148;
  v150 = v145[5];
  v151 = v145[6];
  v152 = v145[8];
  v198[7] = v145[7];
  v198[8] = v152;
  v198[5] = v150;
  v198[6] = v151;
  v153 = v145[9];
  v154 = v145[10];
  v155 = v145[12];
  v198[11] = v145[11];
  v198[12] = v155;
  v198[9] = v153;
  v198[10] = v154;
  v190 = v145[9];
  v191 = v145[10];
  v192 = v145[11];
  v193 = v145[12];
  v186 = v145[5];
  v187 = v145[6];
  v188 = v145[7];
  v189 = v145[8];
  v182 = v145[1];
  v183 = v145[2];
  v184 = v145[3];
  v185 = v145[4];
  v181 = *v145;
  v156 = v144;
  sub_269009E3C(v198, v199);
  v157 = sub_269043150(v146, &v181);
  v159 = v158;

  v199[10] = v191;
  v199[11] = v192;
  v199[12] = v193;
  v199[6] = v187;
  v199[7] = v188;
  v199[8] = v189;
  v199[9] = v190;
  v199[2] = v183;
  v199[3] = v184;
  v199[4] = v185;
  v199[5] = v186;
  v199[0] = v181;
  v199[1] = v182;
  sub_269009EE0(v199);
  v160 = &v156[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController];
  v161 = *&v156[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController];
  *v160 = v157;
  v160[1] = v159;

  return v156;
}

char *sub_269043150(char a1, _OWORD *a2)
{
  v2 = a2[11];
  v30[10] = a2[10];
  v30[11] = v2;
  v30[12] = a2[12];
  v3 = a2[7];
  v30[6] = a2[6];
  v30[7] = v3;
  v4 = a2[9];
  v30[8] = a2[8];
  v30[9] = v4;
  v5 = a2[3];
  v30[2] = a2[2];
  v30[3] = v5;
  v6 = a2[5];
  v30[4] = a2[4];
  v30[5] = v6;
  v7 = a2[1];
  v30[0] = *a2;
  v30[1] = v7;
  if (a1)
  {
    v9 = 0xD000000000000030;
    v10 = 0x800000026905BF90;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000036, 0x800000026905EE20);
    LOBYTE(v28[0]) = a1;
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x6C696E202CLL, 0xE500000000000000);
    v11 = v29[0];
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v12 = sub_269057774();
    __swift_project_value_buffer(v12, qword_2802F3FF8);
    v13 = sub_269057A94();
    *&v29[0] = 0xD000000000000030;
    *(&v29[0] + 1) = 0x800000026905BF90;
    v14 = HIBYTE(*(&v11 + 1)) & 0xFLL;
    if ((*(&v11 + 1) & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v28[0] = 32;
      v28[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v11, *(&v11 + 1));
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v10 = *(&v29[0] + 1);
      v9 = *&v29[0];
    }

    v15 = sub_269057764();
    if (os_log_type_enabled(v15, v13))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315138;
      v18 = sub_269010108(v9, v10, v28);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_269002000, v15, v13, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D6309D0](v17, -1, -1);
      MEMORY[0x26D6309D0](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v19 = a2[11];
    v29[10] = a2[10];
    v29[11] = v19;
    v29[12] = a2[12];
    v20 = a2[7];
    v29[6] = a2[6];
    v29[7] = v20;
    v21 = a2[9];
    v29[8] = a2[8];
    v29[9] = v21;
    v22 = a2[3];
    v29[2] = a2[2];
    v29[3] = v22;
    v23 = a2[5];
    v29[4] = a2[4];
    v29[5] = v23;
    v24 = a2[1];
    v29[0] = *a2;
    v29[1] = v24;
    v25 = objc_allocWithZone(type metadata accessor for LanguageSelectionWelcomeController());
    sub_269009E3C(v30, v28);
    v26 = sub_269041AB8(v29);
    *&v26[OBJC_IVAR____TtC9SiriSetup34LanguageSelectionWelcomeController_delegate + 8] = &off_2879A8490;
    swift_unknownObjectWeakAssign();
    return v26;
  }
}

id sub_2690434A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageSelectionPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2690435D0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[11];
  v32 = v3[10];
  v33 = v5;
  v6 = v3[11];
  v34 = v3[12];
  v7 = v3[5];
  v8 = v3[7];
  v28 = v3[6];
  v9 = v28;
  v29 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v30 = v3[8];
  v12 = v30;
  v31 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v24 = v3[2];
  v15 = v24;
  v25 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v26 = v3[4];
  v18 = v26;
  v27 = v17;
  v19 = v3[1];
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  a1[10] = v32;
  a1[11] = v6;
  a1[12] = v3[12];
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v7;
  *a1 = v20;
  a1[1] = v13;
  return sub_269009E3C(v23, v22);
}

uint64_t sub_2690436A0(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[8];
  v19[9] = v3[9];
  v19[10] = v4;
  v7 = v3[12];
  v19[11] = v5;
  v19[12] = v7;
  v8 = v3[6];
  v19[7] = v3[7];
  v19[8] = v6;
  v9 = v3[3];
  v19[2] = v3[2];
  v19[3] = v9;
  v10 = v3[4];
  v19[5] = v3[5];
  v19[6] = v8;
  v19[4] = v10;
  v11 = v3[1];
  v19[0] = *v3;
  v19[1] = v11;
  v12 = a1[11];
  v3[10] = a1[10];
  v3[11] = v12;
  v3[12] = a1[12];
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  v14 = a1[9];
  v3[8] = a1[8];
  v3[9] = v14;
  v15 = a1[3];
  v3[2] = a1[2];
  v3[3] = v15;
  v16 = a1[5];
  v3[4] = a1[4];
  v3[5] = v16;
  v17 = a1[1];
  *v3 = *a1;
  v3[1] = v17;
  return sub_269009EE0(v19);
}

void *sub_2690437CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController + 8);
  v3 = v1;
  return v1;
}

uint64_t sub_269043814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_languages;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {

    sub_269016B94(a1, a2);
    v8 = v7;

    if (v8)
    {
      v9 = *(v2 + v6);
      v10 = *(v9 + 16);
      v11 = *(v3 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_dataSourceWriter);
      if (v10)
      {

        v12 = sub_269016B94(a1, a2);
        if (v13)
        {
          v14 = (*(v9 + 56) + 16 * v12);
          v16 = *v14;
          v15 = v14[1];
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }

      v17 = &v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage];
      v18 = *&v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8];
      *v17 = v16;
      *(v17 + 1) = v15;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v3 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_page);

    sub_26900E6C8(v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_269043970()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceStyle];

  if (v1 == 1)
  {
    v2 = 0x746867694CLL;
  }

  else
  {
    v2 = 1802658116;
  }

  if (v1 == 1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x26D62FBC0](v2, v3);

  qword_2802F5120 = 0xD00000000000001BLL;
  *algn_2802F5128 = 0x800000026905EE90;
  return result;
}

uint64_t sub_269043A34(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        return 0x63694D646162;
      }

      else
      {
        return 0x52746F4E43565641;
      }
    }

    if (a1 == 6)
    {
      return 0x6C65636E6163;
    }

    if (a1 == 7)
    {
      return 0x74756F656D6974;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6E69616741797274;
      }

      else
      {
        return 0x6E6964726F636572;
      }
    }

    if (!a1)
    {
      return 0xD000000000000012;
    }

    if (a1 == 1)
    {
      return 0xD00000000000001BLL;
    }
  }

  v10[10] = v1;
  v10[11] = v2;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v4 = sub_269057774();
  __swift_project_value_buffer(v4, qword_2802F3FF8);
  v5 = sub_269057A94();
  v10[2] = 0xD00000000000001ALL;
  v10[3] = 0x800000026905EEB0;
  v10[0] = 32;
  v10[1] = 0xE100000000000000;
  MEMORY[0x26D62FBC0](0x206E776F6E6B6E75, 0xEE00737574617473);
  MEMORY[0x26D62FBC0](32, 0xE100000000000000);

  v6 = sub_269057764();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10[0] = v8;
    *v7 = 136315138;
    v9 = sub_269010108(0xD00000000000001ALL, 0x800000026905EEB0, v10);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6309D0](v8, -1, -1);
    MEMORY[0x26D6309D0](v7, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_269043D38(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      v1 = 0x800000026905EF30;
      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v2 = byte_2802F5130;
      v58 = sub_269051B18(byte_2802F5130);
      v121 = 0xD00000000000001DLL;
      v122 = 0x800000026905EF30;
      MEMORY[0x26D62FBC0](v58);

      v59 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      v62 = v60 >> 1;
      v63 = v61 + 1;
      if (v60 >> 1 <= v61)
      {
        v59 = sub_26904DCD8((v60 > 1), v61 + 1, 1, v59);
        v60 = *(v59 + 3);
        v62 = v60 >> 1;
      }

      *(v59 + 2) = v63;
      v64 = &v59[16 * v61];
      *(v64 + 4) = 0xD00000000000001DLL;
      *(v64 + 5) = 0x800000026905EF30;
      if (v62 < (v61 + 2))
      {
        v59 = sub_26904DCD8((v60 > 1), v61 + 2, 1, v59);
      }

      *(v59 + 2) = v61 + 2;
      v65 = &v59[16 * v63];
      *(v65 + 4) = 0xD00000000000001DLL;
      *(v65 + 5) = 0x800000026905EF30;
      v66 = (v59 + 40);
      v67 = -v61;
      v68 = -1;
      while (v67 + v68 != 1)
      {
        if (++v68 >= *(v59 + 2))
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v69 = v66 + 2;
        v70 = *(v66 - 1);
        v71 = *v66;

        v4 = sub_26902F7F4(v70, v71, 0);
        v36 = v72;

        v66 = v69;
        if (v36)
        {
LABEL_78:

          v1 = v36;
          goto LABEL_89;
        }
      }
    }

    else if (a1 == 5)
    {
      v1 = 0x800000026905EF10;
      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v2 = byte_2802F5130;
      v21 = sub_269051B18(byte_2802F5130);
      v121 = 0xD00000000000001DLL;
      v122 = 0x800000026905EF10;
      MEMORY[0x26D62FBC0](v21);

      v22 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      v25 = v23 >> 1;
      v26 = v24 + 1;
      if (v23 >> 1 <= v24)
      {
        v22 = sub_26904DCD8((v23 > 1), v24 + 1, 1, v22);
        v23 = *(v22 + 3);
        v25 = v23 >> 1;
      }

      *(v22 + 2) = v26;
      v27 = &v22[16 * v24];
      *(v27 + 4) = 0xD00000000000001DLL;
      *(v27 + 5) = 0x800000026905EF10;
      if (v25 < (v24 + 2))
      {
        v22 = sub_26904DCD8((v23 > 1), v24 + 2, 1, v22);
      }

      *(v22 + 2) = v24 + 2;
      v28 = &v22[16 * v26];
      *(v28 + 4) = 0xD00000000000001DLL;
      *(v28 + 5) = 0x800000026905EF10;
      v29 = (v22 + 40);
      v30 = -v24;
      v31 = -1;
      while (v30 + v31 != 1)
      {
        if (++v31 >= *(v22 + 2))
        {
          goto LABEL_92;
        }

        v32 = v29 + 2;
        v33 = *(v29 - 1);
        v34 = *v29;

        v4 = sub_26902F7F4(v33, v34, 0);
        v36 = v35;

        v29 = v32;
        if (v36)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v1 = 0x800000026905EF10;
      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v2 = byte_2802F5130;
      v73 = sub_269051B18(byte_2802F5130);
      v121 = 0xD00000000000001DLL;
      v122 = 0x800000026905EF10;
      MEMORY[0x26D62FBC0](v73);

      v74 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v76 = *(v74 + 2);
      v75 = *(v74 + 3);
      v77 = v75 >> 1;
      v78 = v76 + 1;
      if (v75 >> 1 <= v76)
      {
        v74 = sub_26904DCD8((v75 > 1), v76 + 1, 1, v74);
        v75 = *(v74 + 3);
        v77 = v75 >> 1;
      }

      *(v74 + 2) = v78;
      v79 = &v74[16 * v76];
      *(v79 + 4) = 0xD00000000000001DLL;
      *(v79 + 5) = 0x800000026905EF10;
      if (v77 < (v76 + 2))
      {
        v74 = sub_26904DCD8((v75 > 1), v76 + 2, 1, v74);
      }

      *(v74 + 2) = v76 + 2;
      v80 = &v74[16 * v78];
      *(v80 + 4) = 0xD00000000000001DLL;
      *(v80 + 5) = 0x800000026905EF10;
      v81 = (v74 + 40);
      v82 = -v76;
      v83 = -1;
      while (v82 + v83 != 1)
      {
        if (++v83 >= *(v74 + 2))
        {
          goto LABEL_93;
        }

        v84 = v81 + 2;
        v85 = *(v81 - 1);
        v86 = *v81;

        v4 = sub_26902F7F4(v85, v86, 0);
        v36 = v87;

        v81 = v84;
        if (v36)
        {
          goto LABEL_78;
        }
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD00000000000001DLL, v1);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v88 = sub_269057774();
    __swift_project_value_buffer(v88, qword_2802F3FF8);
    v89 = sub_269057A94();
    v121 = 0xD00000000000003BLL;
    v122 = 0x800000026905BF00;
    v90 = sub_269057764();
    if (os_log_type_enabled(v90, v89))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v120[0] = v92;
      *v91 = 136315138;
      v93 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v120);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_269002000, v90, v89, "%s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x26D6309D0](v92, -1, -1);
      MEMORY[0x26D6309D0](v91, -1, -1);
    }

    else
    {
    }

    v4 = 0xD00000000000001DLL;
  }

  else
  {
    if (a1 < 2u)
    {
      v1 = 0x800000026905EF90;
      if (qword_2802F3248 != -1)
      {
LABEL_96:
        swift_once();
      }

      v2 = byte_2802F5130;
      v3 = sub_269051B18(byte_2802F5130);
      v4 = 0xD00000000000001CLL;
      v121 = 0xD00000000000001CLL;
      v122 = v1;
      MEMORY[0x26D62FBC0](v3);

      v5 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      v8 = v6 >> 1;
      v9 = v7 + 1;
      if (v6 >> 1 <= v7)
      {
        v5 = sub_26904DCD8((v6 > 1), v7 + 1, 1, v5);
        v6 = *(v5 + 3);
        v8 = v6 >> 1;
      }

      *(v5 + 2) = v9;
      v10 = &v5[16 * v7];
      *(v10 + 4) = 0xD00000000000001CLL;
      *(v10 + 5) = v1;
      if (v8 < (v7 + 2))
      {
        v5 = sub_26904DCD8((v6 > 1), v7 + 2, 1, v5);
      }

      *(v5 + 2) = v7 + 2;
      v11 = &v5[16 * v9];
      *(v11 + 4) = 0xD00000000000001CLL;
      *(v11 + 5) = v1;
      v12 = (v5 + 40);
      v13 = -v7;
      v14 = -1;
      while (v13 + v14 != 1)
      {
        if (++v14 >= *(v5 + 2))
        {
          __break(1u);
          goto LABEL_91;
        }

        v15 = v12 + 2;
        v16 = *(v12 - 1);
        v17 = *v12;

        v18 = sub_26902F7F4(v16, v17, 0);
        v20 = v19;

        v12 = v15;
        if (v20)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_38;
    }

    if (a1 == 2)
    {
      v1 = 0x800000026905EF70;
      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v2 = byte_2802F5130;
      v37 = sub_269051B18(byte_2802F5130);
      v4 = 0xD00000000000001CLL;
      v121 = 0xD00000000000001CLL;
      v122 = 0x800000026905EF70;
      MEMORY[0x26D62FBC0](v37);

      v38 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      v41 = v39 >> 1;
      v42 = v40 + 1;
      if (v39 >> 1 <= v40)
      {
        v38 = sub_26904DCD8((v39 > 1), v40 + 1, 1, v38);
        v39 = *(v38 + 3);
        v41 = v39 >> 1;
      }

      *(v38 + 2) = v42;
      v43 = &v38[16 * v40];
      *(v43 + 4) = 0xD00000000000001CLL;
      *(v43 + 5) = 0x800000026905EF70;
      if (v41 < (v40 + 2))
      {
        v38 = sub_26904DCD8((v39 > 1), v40 + 2, 1, v38);
      }

      *(v38 + 2) = v40 + 2;
      v44 = &v38[16 * v42];
      *(v44 + 4) = 0xD00000000000001CLL;
      *(v44 + 5) = 0x800000026905EF70;
      v45 = (v38 + 40);
      v46 = -v40;
      v47 = -1;
      while (v46 + v47 != 1)
      {
        if (++v47 >= *(v38 + 2))
        {
          goto LABEL_94;
        }

        v48 = v45 + 2;
        v49 = *(v45 - 1);
        v50 = *v45;

        v18 = sub_26902F7F4(v49, v50, 0);
        v20 = v51;

        v45 = v48;
        if (v20)
        {
LABEL_37:

          v4 = v18;
          v1 = v20;
          goto LABEL_89;
        }
      }

LABEL_38:

      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
      MEMORY[0x26D62FBC0](0xD00000000000001CLL, v1);
      MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v52 = sub_269057774();
      __swift_project_value_buffer(v52, qword_2802F3FF8);
      v53 = sub_269057A94();
      v121 = 0xD00000000000003BLL;
      v122 = 0x800000026905BF00;
      v54 = sub_269057764();
      if (os_log_type_enabled(v54, v53))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v120[0] = v56;
        *v55 = 136315138;
        v57 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v120);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_269002000, v54, v53, "%s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x26D6309D0](v56, -1, -1);
        MEMORY[0x26D6309D0](v55, -1, -1);
      }

      else
      {
      }

      goto LABEL_89;
    }

    v1 = 0x800000026905EF50;
    if (qword_2802F3248 != -1)
    {
      swift_once();
    }

    v2 = byte_2802F5130;
    v94 = sub_269051B18(byte_2802F5130);
    v121 = 0xD00000000000001ELL;
    v122 = 0x800000026905EF50;
    MEMORY[0x26D62FBC0](v94);

    v95 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v97 = *(v95 + 2);
    v96 = *(v95 + 3);
    v98 = v96 >> 1;
    v99 = v97 + 1;
    if (v96 >> 1 <= v97)
    {
      v95 = sub_26904DCD8((v96 > 1), v97 + 1, 1, v95);
      v96 = *(v95 + 3);
      v98 = v96 >> 1;
    }

    *(v95 + 2) = v99;
    v100 = &v95[16 * v97];
    *(v100 + 4) = 0xD00000000000001ELL;
    *(v100 + 5) = 0x800000026905EF50;
    if (v98 < (v97 + 2))
    {
      v95 = sub_26904DCD8((v96 > 1), v97 + 2, 1, v95);
    }

    *(v95 + 2) = v97 + 2;
    v101 = &v95[16 * v99];
    *(v101 + 4) = 0xD00000000000001ELL;
    *(v101 + 5) = 0x800000026905EF50;
    v102 = (v95 + 40);
    v103 = -v97;
    v104 = -1;
    while (v103 + v104 != 1)
    {
      if (++v104 >= *(v95 + 2))
      {
        goto LABEL_95;
      }

      v105 = v102 + 2;
      v106 = *(v102 - 1);
      v107 = *v102;

      v4 = sub_26902F7F4(v106, v107, 0);
      v36 = v108;

      v102 = v105;
      if (v36)
      {
        goto LABEL_78;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD00000000000001ELL, 0x800000026905EF50);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v109 = sub_269057774();
    __swift_project_value_buffer(v109, qword_2802F3FF8);
    v110 = sub_269057A94();
    v121 = 0xD00000000000003BLL;
    v122 = 0x800000026905BF00;
    v111 = sub_269057764();
    if (os_log_type_enabled(v111, v110))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v120[0] = v113;
      *v112 = 136315138;
      v114 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v120);

      *(v112 + 4) = v114;
      _os_log_impl(&dword_269002000, v111, v110, "%s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      MEMORY[0x26D6309D0](v113, -1, -1);
      MEMORY[0x26D6309D0](v112, -1, -1);
    }

    else
    {
    }

    v4 = 0xD00000000000001ELL;
  }

LABEL_89:
  sub_2690519EC(v2);
  v121 = v4;
  v122 = v1;
  strcpy(v120, "%DEVICE_NAME%");
  HIWORD(v120[1]) = -4864;
  sub_26900BE9C();
  v115 = sub_269057BE4();
  v117 = v116;

  sub_2690519EC(v2);
  v121 = v115;
  v122 = v117;
  v120[0] = 0xD000000000000014;
  v120[1] = 0x800000026905BEA0;
  v118 = sub_269057BE4();

  return v118;
}

uint64_t sub_269044E6C(int a1)
{
  if (a1 < 6u)
  {
    return (a1 + 1);
  }

  else
  {
    return 6;
  }
}

unint64_t sub_269044E80@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269044F10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_269044EBC()
{
  result = qword_2802F3EF8;
  if (!qword_2802F3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3EF8);
  }

  return result;
}

unint64_t sub_269044F10(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

void sub_269044FFC()
{
  v0 = 0x800000026905D480;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v1 = 0xD000000000000013;
  v2 = sub_269057774();
  __swift_project_value_buffer(v2, qword_2802F3FF8);
  v3 = sub_269057A94();
  v9 = 0xD000000000000013;
  v10 = 0x800000026905D480;
  if (("AFAnalyticsProvider" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v8[0] = 32;
    v8[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000006DLL, 0x800000026905F0E0);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v1 = v9;
    v0 = v10;
  }

  log = sub_269057764();
  if (os_log_type_enabled(log, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8[0] = v5;
    *v4 = 136315138;
    v6 = sub_269010108(v1, v0, v8);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_269002000, log, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6309D0](v5, -1, -1);
    MEMORY[0x26D6309D0](v4, -1, -1);
  }

  else
  {
  }
}

void *sub_2690451CC(uint64_t a1)
{
  v14 = a1;
  v13 = sub_269057B24();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v13);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269057B04();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2690578A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v1[3] = -1;
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[7] = MEMORY[0x277D84F98];
  v10 = sub_269010AA8();
  v12[1] = "PHS Data in cloud:";
  v12[2] = v10;
  sub_269057894();
  v15 = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F39B0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F39B8, &qword_26905A8E8);
  sub_269048DD0(&qword_2802F39C0, &qword_2802F39B8, &qword_26905A8E8);
  sub_269057C14();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v13);
  v1[6] = sub_269057B74();
  v1[2] = v14;
  return v1;
}

void sub_269045450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v129 = a5;
  v10 = sub_269057874();
  v123 = *(v10 - 8);
  v124 = v10;
  v11 = *(v123 + 64);
  MEMORY[0x28223BE20]();
  v121 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_2690578A4();
  v120 = *(v122 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x28223BE20]();
  v119 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v135 = 0xE000000000000000;
  sub_269057C54();
  v140 = a1;

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F08, &unk_26905B580);
  v15 = sub_269057964();
  MEMORY[0x26D62FBC0](v15);

  MEMORY[0x26D62FBC0](0x6E75522064694420, 0xEA0000000000203ALL);
  v127 = a2;
  v140 = a2;
  type metadata accessor for AFBoolean(0);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905F430);
  v128 = a3;
  v140 = a3;
  sub_269057CB4();
  v17 = aBlock;
  v16 = v135;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v18 = v5;
  v19 = sub_269057774();
  v131 = __swift_project_value_buffer(v19, qword_2802F3FF8);
  v20 = sub_269057AA4();
  aBlock = 0xD000000000000044;
  v135 = 0x800000026905F3E0;
  v21 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v130 = 0x800000026905F3E0;
  if (v21)
  {
    v140 = 32;
    v141 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v17, v16);
    MEMORY[0x26D62FBC0](v140, v141);

    v23 = aBlock;
    v22 = v135;
  }

  else
  {
    v22 = 0x800000026905F3E0;
    v23 = 0xD000000000000044;
  }

  v24 = sub_269057764();
  if (os_log_type_enabled(v24, v20))
  {
    v25 = swift_slowAlloc();
    v26 = a4;
    v27 = swift_slowAlloc();
    v140 = v27;
    *v25 = 136315138;
    v28 = sub_269010108(v23, v22, &v140);

    *(v25 + 4) = v28;
    _os_log_impl(&dword_269002000, v24, v20, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v29 = v27;
    a4 = v26;
    MEMORY[0x26D6309D0](v29, -1, -1);
    MEMORY[0x26D6309D0](v25, -1, -1);
  }

  else
  {
  }

  v125 = a4;
  v30 = v129;
  v31 = v18;
  sub_2690475A0(a1, a4, v129);
  v32 = sub_269046CE0(a1, v127, v128);
  if (v32)
  {
    v33 = v32;
    aBlock = a1;

    aBlock = sub_269057964();
    v135 = v34;
    MEMORY[0x26D62FBC0](540945696, 0xE400000000000000);

    v35 = sub_269011260();
    v37 = v36;

    MEMORY[0x26D62FBC0](v35, v37);

    v39 = aBlock;
    v38 = v135;
    v40 = sub_269057AA4();
    aBlock = 0xD000000000000044;
    v135 = v130;
    v41 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v140 = 32;
      v141 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v39, v38);
      MEMORY[0x26D62FBC0](v140, v141);

      v43 = aBlock;
      v42 = v135;
    }

    else
    {
      v42 = v130;
      v43 = 0xD000000000000044;
    }

    v46 = sub_269057764();
    if (os_log_type_enabled(v46, v40))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v140 = v48;
      *v47 = 136315138;
      v49 = sub_269010108(v43, v42, &v140);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_269002000, v46, v40, "%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x26D6309D0](v48, -1, -1);
      MEMORY[0x26D6309D0](v47, -1, -1);
    }

    else
    {
    }

    if ((*(v33 + 40) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v59 = Strong;
        v60 = sub_26904785C(v33);
        sub_26900F204(v33, v60, v61);

        return;
      }

      goto LABEL_51;
    }

    aBlock = 0;
    v135 = 0xE000000000000000;
    sub_269057C54();

    aBlock = 0xD000000000000018;
    v135 = 0x800000026905F450;

    v50 = sub_269011260();
    v52 = v51;

    MEMORY[0x26D62FBC0](v50, v52);

    MEMORY[0x26D62FBC0](0x742073746E617720, 0xED00006E7572206FLL);
    v54 = aBlock;
    v53 = v135;
    v55 = sub_269057AA4();
    aBlock = 0xD000000000000044;
    v135 = v130;
    v56 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v56 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v140 = 32;
      v141 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v54, v53);
      MEMORY[0x26D62FBC0](v140, v141);

      v57 = aBlock;
      v130 = v135;
    }

    else
    {
      v57 = 0xD000000000000044;
    }

    v62 = sub_269057764();
    if (os_log_type_enabled(v62, v55))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v140 = v64;
      *v63 = 136315138;
      v65 = sub_269010108(v57, v130, &v140);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_269002000, v62, v55, "%s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x26D6309D0](v64, -1, -1);
      MEMORY[0x26D6309D0](v63, -1, -1);
    }

    else
    {
    }

    v66 = swift_unknownObjectWeakLoadStrong();
    if (v66)
    {
      v67 = v66;
      v68 = sub_269057AA4();
      v69 = sub_269057764();
      if (os_log_type_enabled(v69, v68))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        aBlock = v71;
        *v70 = 136315138;
        v72 = sub_269010108(0xD000000000000026, 0x800000026905F470, &aBlock);

        *(v70 + 4) = v72;
        _os_log_impl(&dword_269002000, v69, v68, "%s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x26D6309D0](v71, -1, -1);
        MEMORY[0x26D6309D0](v70, -1, -1);
      }

      else
      {
      }

      if (*&v67[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter])
      {
        v73 = *&v67[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter + 8];
        v74 = *&v67[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter];
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_2690573B4(1, ObjectType, v73);
        swift_unknownObjectRelease();
      }
    }

    v76 = swift_allocObject();
    v76[2] = v31;
    v76[3] = v33;
    v77 = v125;
    v76[4] = v125;
    v76[5] = v30;
    if (*(v33 + 40) != 1)
    {
      swift_retain_n();
      v81 = v77;
LABEL_48:
      v82 = v81;
      swift_retain_n();
      v80 = v82;
      sub_26904640C(1, v31, v33, v80, v30);
      goto LABEL_49;
    }

    swift_beginAccess();
    v78 = *(v33 + 16);
    if (v78 > 1)
    {
      switch(v78)
      {
        case 2u:
          v89 = v125;
          v90 = swift_getObjectType();
          v91 = *(v30 + 56);
          swift_retain_n();
          v92 = v89;
          swift_retain_n();
          v93 = v92;
          if ((v91(v90, v30) & 1) == 0)
          {
            v111 = *(v31 + 48);
            v112 = swift_allocObject();
            v112[2] = v93;
            v112[3] = v30;
            v112[4] = sub_269048CA0;
            v112[5] = v76;
            v138 = sub_269048CEC;
            v139 = v112;
            aBlock = MEMORY[0x277D85DD0];
            v135 = 1107296256;
            v136 = sub_26900BEF0;
            v137 = &block_descriptor_39;
            v130 = _Block_copy(&aBlock);
            v131 = v93;
            v113 = v111;

            v114 = v119;
            sub_269057884();
            v132 = MEMORY[0x277D84F90];
            sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
            sub_269048DD0(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90);
            v115 = v121;
            v116 = v124;
            sub_269057C14();
            v117 = v130;
            MEMORY[0x26D62FD80](0, v114, v115, v130);
            _Block_release(v117);

            (*(v123 + 8))(v115, v116);
            (*(v120 + 8))(v114, v122);

            goto LABEL_51;
          }

          v94 = 0x800000026905F4A0;
          v95 = sub_269057AA4();
          v96 = 0xD00000000000002FLL;
          aBlock = 0xD00000000000002FLL;
          v135 = 0x800000026905F4A0;
          if (("raining(dataSource:completion:)" & 0x2F00000000000000) != 0x2000000000000000)
          {
            v132 = 32;
            v133 = 0xE100000000000000;
            MEMORY[0x26D62FBC0](0xD000000000000034, 0x800000026905F4D0);
            MEMORY[0x26D62FBC0](v132, v133);

            v96 = aBlock;
            v94 = v135;
          }

          v97 = sub_269057764();
          if (os_log_type_enabled(v97, v95))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v132 = v99;
            *v98 = 136315138;
            v100 = sub_269010108(v96, v94, &v132);

            *(v98 + 4) = v100;
            _os_log_impl(&dword_269002000, v97, v95, "%s", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v99);
            v101 = v99;
            v30 = v129;
            MEMORY[0x26D6309D0](v101, -1, -1);
            MEMORY[0x26D6309D0](v98, -1, -1);
          }

          else
          {
          }

          sub_26904640C(0, v31, v33, v93, v30);
LABEL_50:

LABEL_51:

          return;
        case 4u:
          v102 = v125;
          v103 = swift_getObjectType();
          v104 = *(v30 + 32);
          swift_retain_n();
          v105 = v102;
          swift_retain_n();
          v106 = v105;
          v104(&aBlock, v103, v30);
          (*(v30 + 208))(&aBlock, sub_269048CA0, v76, v103, v30);

          goto LABEL_50;
        case 6u:
          swift_retain_n();
          v79 = v125;
          swift_retain_n();
          v80 = v79;
          sub_2690472C4(v80, v30, sub_269048CA0, v76);
LABEL_49:

          goto LABEL_50;
      }

      goto LABEL_64;
    }

    if (*(v33 + 16))
    {
      if (v78 != 1)
      {
LABEL_64:
        swift_retain_n();
        v81 = v125;
        goto LABEL_48;
      }

      v83 = v125;
      v84 = swift_getObjectType();
      v85 = *(v30 + 216);
      swift_retain_n();
      v86 = v83;
      swift_retain_n();
      v87 = v86;
      v88 = v85(v84, v30);
    }

    else
    {
      v107 = v125;
      v108 = swift_getObjectType();
      v109 = *(v30 + 224);
      swift_retain_n();
      v110 = v107;
      swift_retain_n();
      v87 = v110;
      v88 = v109(v108, v30);
    }

    sub_26904640C(v88 & 1, v31, v33, v87, v30);

    goto LABEL_50;
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    sub_26900FBD0();
  }
}

uint64_t sub_26904640C(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v24 = a5;
  v8 = sub_269057874();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2690578A4();
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269010AA8();
  v16 = sub_269057B34();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3;
  *(v18 + 32) = a1;
  v19 = v24;
  *(v18 + 40) = a4;
  *(v18 + 48) = v19;
  aBlock[4] = sub_269048D78;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_48;
  v20 = _Block_copy(aBlock);

  v21 = a4;

  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_269048DD0(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90);
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v15, v11, v20);
  _Block_release(v20);

  (*(v26 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v25);
}

void sub_269046724(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v29 = a4;
    v30 = a5;
    sub_269057C54();
    v9 = sub_269011260();
    v11 = v10;

    v32 = v9;
    v33 = v11;
    MEMORY[0x26D62FBC0](0x742073746E617720, 0xEE00206E7572206FLL);
    if (a3)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (a3)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = 0x800000026905F3E0;
    MEMORY[0x26D62FBC0](v12, v13);

    v15 = v32;
    v16 = v33;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v17 = 0xD000000000000044;
    v18 = sub_269057774();
    __swift_project_value_buffer(v18, qword_2802F3FF8);
    v19 = sub_269057AA4();
    v32 = 0xD000000000000044;
    v33 = 0x800000026905F3E0;
    v20 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v20 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v31[0] = 32;
      v31[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v15, v16);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v17 = v32;
      v14 = v33;
    }

    v21 = sub_269057764();
    if (os_log_type_enabled(v21, v19))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315138;
      v24 = sub_269010108(v17, v14, v31);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_269002000, v21, v19, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D6309D0](v23, -1, -1);
      MEMORY[0x26D6309D0](v22, -1, -1);
    }

    else
    {
    }

    if (a3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = Strong;
        v27 = sub_26904785C(a2);
        sub_26900F204(a2, v27, v28);

        return;
      }
    }

    else
    {
      sub_269045450(a2, 1, 0, v29, v30);
    }
  }
}

void sub_269046A34()
{
  v2 = *(v0 + 24);
  if (!v2)
  {
    v3 = 0x800000026905F310;
    v0 = "ntPageRequested()";
    if (qword_2802F3258 == -1)
    {
LABEL_10:
      v8 = 0xD000000000000021;
      v9 = sub_269057774();
      __swift_project_value_buffer(v9, qword_2802F3FF8);
      v10 = sub_269057AA4();
      v16 = 0xD000000000000021;
      v17 = v3;
      if ((v0 & 0x2F00000000000000) != 0x2000000000000000)
      {
        v15[0] = 32;
        v15[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000025, v0 | 0x8000000000000000);
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v8 = v16;
        v3 = v17;
      }

      log = sub_269057764();
      if (os_log_type_enabled(log, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v15[0] = v12;
        *v11 = 136315138;
        v13 = sub_269010108(v8, v3, v15);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_269002000, log, v10, "%s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x26D6309D0](v12, -1, -1);
        MEMORY[0x26D6309D0](v11, -1, -1);
      }

      else
      {
      }

      goto LABEL_18;
    }

LABEL_25:
    swift_once();
    goto LABEL_10;
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
    v1 = *(v0 + 16);
    if ((v1 & 0xC000000000000001) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v1 + 8 * v3 + 32);

        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  v4 = MEMORY[0x26D62FE90](v3, v1);

LABEL_7:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    log = Strong;
    v6 = sub_26904785C(v4);
    sub_26900F204(v4, v6, v7);

LABEL_18:

    return;
  }
}

uint64_t sub_269046CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 48);
    v5 = v4 && a2 == 2;
    if (v5 && a3 == 1)
    {
      v13 = 0xD00000000000004CLL;
      v14 = 0x800000026905F270;
      v30 = 0;
      v31 = 0xE000000000000000;

      sub_269057C54();

      v15 = 0x800000026905F2E0;
      v16 = 0xD000000000000023;
      goto LABEL_19;
    }
  }

  v7 = *(v3 + 24);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 16);
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 < result)
      {
        goto LABEL_12;
      }

      return 0;
    }
  }

  result = sub_269057CD4();
  if (v8 >= result)
  {
    return 0;
  }

LABEL_12:
  v11 = *(v3 + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  *(v3 + 24) = v12;
  v3 = *(v3 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_34:

    v4 = MEMORY[0x26D62FE90](v12, v3);

    goto LABEL_17;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 8 * v12 + 32);

LABEL_17:
    v13 = 0xD00000000000004CLL;
    v14 = 0x800000026905F270;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_269057C54();

    v15 = 0x800000026905F2C0;
    v16 = 0xD000000000000015;
LABEL_19:
    v30 = v16;
    v31 = v15;

    v17 = sub_269011260();
    v19 = v18;

    MEMORY[0x26D62FBC0](v17, v19);

    v21 = v30;
    v20 = v31;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v22 = sub_269057774();
    __swift_project_value_buffer(v22, qword_2802F3FF8);
    v23 = sub_269057AA4();
    v30 = 0xD00000000000004CLL;
    v31 = 0x800000026905F270;
    v24 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v29[0] = 32;
      v29[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v21, v20);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v13 = v30;
      v14 = v31;
    }

    v25 = sub_269057764();
    if (os_log_type_enabled(v25, v23))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v26 = 136315138;
      v28 = sub_269010108(v13, v14, v29);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_269002000, v25, v23, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D6309D0](v27, -1, -1);
      MEMORY[0x26D6309D0](v26, -1, -1);
    }

    else
    {
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_269047040(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL))
{
  v5 = 0xD00000000000002FLL;
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 72))(ObjectType, a2);
  sub_269057C54();

  v22 = 0xD000000000000012;
  v23 = 0x800000026905F510;
  if (v7)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = 0x800000026905F4A0;
  MEMORY[0x26D62FBC0](v8, v9);

  v12 = v22;
  v11 = v23;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v13 = sub_269057774();
  __swift_project_value_buffer(v13, qword_2802F3FF8);
  v14 = sub_269057AA4();
  v22 = 0xD00000000000002FLL;
  v23 = 0x800000026905F4A0;
  v15 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v21[0] = 32;
    v21[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v12, v11);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v5 = v22;
    v10 = v23;
  }

  v16 = sub_269057764();
  if (os_log_type_enabled(v16, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    v19 = sub_269010108(v5, v10, v21);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_269002000, v16, v14, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x26D6309D0](v18, -1, -1);
    MEMORY[0x26D6309D0](v17, -1, -1);
  }

  else
  {
  }

  return a3((v7 & 1) == 0);
}

uint64_t sub_2690472C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_269057874();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2690578A4();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + 48);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;
  aBlock[4] = sub_269048910;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_8;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  v21 = a1;
  sub_269057884();
  v26 = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_269048DD0(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90);
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v16, v12, v19);
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

void sub_2690475A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(v3 + 56);
    if (*(v6 + 16))
    {

      v7 = sub_269016B10(a1);
      if (v8)
      {
        v9 = *(v6 + 56) + 16 * v7;
        v18 = *(v9 + 8);
        v10 = *v9;

        sub_269057C54();

        strcpy(v19, "Completion of ");
        HIBYTE(v19[1]) = -18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F08, &unk_26905B580);
        v11 = sub_269057964();
        MEMORY[0x26D62FBC0](v11);

        MEMORY[0x26D62FBC0](0xD000000000000019, 0x800000026905F250);
        v13 = v19[0];
        v12 = v19[1];
        v19[0] = 0;
        v19[1] = 0xE000000000000000;
        swift_getObjectType();
        v19[3] = v10;
        swift_getWitnessTable();
        sub_269057DC4();
        if (qword_2802F3258 != -1)
        {
          swift_once();
        }

        v14 = sub_269057774();
        __swift_project_value_buffer(v14, qword_2802F3FF8);
        v15 = sub_269057AA4();
        sub_269053434(v15, 0xD000000000000031, 0x800000026905F210, v13, v12, 0, 0xE000000000000000);

        ObjectType = swift_getObjectType();
        (*(a3 + 248))(v10, v18, ObjectType, a3);
        swift_beginAccess();
        v17 = sub_269047C88(a1);
        swift_endAccess();
      }

      else
      {
      }
    }
  }
}

id sub_26904785C(uint64_t a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = *(v1 + 56);
    if (*(v6 + 16))
    {
      v7 = *(v2 + 56);

      v8 = sub_269016B10(v5);
      if (v9)
      {
        v10 = *(v6 + 56) + 16 * v8;
        v11 = *(v10 + 8);
        v12 = *v10;

LABEL_8:
        v19 = v12;
        goto LABEL_14;
      }
    }

    v20 = [objc_allocWithZone(type metadata accessor for LocalDataSourceWriter()) init];
    swift_beginAccess();
    v19 = v20;
    v21 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v2 + 56);
    *(v2 + 56) = 0x8000000000000000;
    sub_26904875C(v19, v5, isUniquelyReferenced_nonNull_native, &v34);
  }

  else
  {
    swift_beginAccess();
    v13 = *(v1 + 56);
    if (*(v13 + 16))
    {
      v14 = *(v2 + 56);

      v15 = sub_269016B10(a1);
      if (v16)
      {
        v17 = *(v13 + 56) + 16 * v15;
        v18 = *(v17 + 8);
        v12 = *v17;

        goto LABEL_8;
      }
    }

    v23 = [objc_allocWithZone(type metadata accessor for LocalDataSourceWriter()) init];
    swift_beginAccess();
    v19 = v23;

    v24 = *(v2 + 56);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v2 + 56);
    *(v2 + 56) = 0x8000000000000000;
    sub_26904875C(v19, a1, v25, &v34);
  }

  *(v2 + 56) = v34;
  swift_endAccess();
LABEL_14:
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_269057C54();

  v35 = 2125391;
  v36 = 0xE300000000000000;
  v26 = sub_269011260();
  MEMORY[0x26D62FBC0](v26);

  MEMORY[0x26D62FBC0](0xD000000000000017, 0x800000026905F1F0);
  v28 = v35;
  v27 = v36;
  v35 = 0;
  v36 = 0xE000000000000000;
  swift_getObjectType();
  v34 = v19;
  swift_getWitnessTable();
  sub_269057DC4();
  v29 = v35;
  v30 = v36;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v31 = sub_269057774();
  __swift_project_value_buffer(v31, qword_2802F3FF8);
  v32 = sub_269057AA4();
  sub_269053434(v32, 0xD000000000000015, 0x800000026905F1D0, v28, v27, v29, v30);

  return v19;
}

uint64_t sub_269047BC8()
{
  v1 = *(v0 + 16);

  sub_26900A620(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_269047C3C(void *a1, uint64_t a2)
{
  *(*v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_269047C88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_269016B10(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26904846C();
    v9 = v15;
  }

  v10 = *(*(v9 + 48) + 8 * v6);

  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_2690482AC(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_269047D30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F00, &qword_26905B578);
  v35 = a2;
  result = sub_269057CF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v36 = *(*(v5 + 56) + 16 * v20);
      if ((v35 & 1) == 0)
      {

        v22 = v36;
      }

      v23 = *(v8 + 40);
      sub_269057E54();
      v24 = *(v21 + 24);
      v25 = *(v21 + 32);

      sub_269057984();

      result = sub_269057E84();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v36;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_269047FEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3790, &qword_26905B590);
  v40 = a2;
  result = sub_269057CF4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_269057E54();
      sub_269057984();
      result = sub_269057E84();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2690482AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_269057C24() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_269057E54();
      v11 = *(v10 + 24);
      v12 = *(v10 + 32);

      sub_269057984();

      v13 = sub_269057E84();

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
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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