id sub_26901C6E0()
{
  v1 = OBJC_IVAR____TtC9SiriSetup13CheckMarkView_xMaskLayer;
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup13CheckMarkView_xMaskLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SiriSetup13CheckMarkView_xMaskLayer);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
    [v5 setBounds_];
    [v5 setAnchorPoint_];
    Mutable = CGPathCreateMutable();
    sub_269057AC4();
    sub_269057AD4();
    sub_269057AC4();
    sub_269057AD4();
    [v5 setPath_];
    [v5 setFillColor_];
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    [v5 setStrokeColor_];

    [v5 setLineWidth_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_26901C928(void *a1)
{
  *&v1[OBJC_IVAR____TtC9SiriSetup13CheckMarkView_colorLayer] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup13CheckMarkView_checkMaskLayer] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup13CheckMarkView_xMaskLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CheckMarkView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_26901C9DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CheckMarkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26901CAB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_26901CB88(__int128 *a1)
{
  v2 = v1;
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
  v37 = *a1;
  v38 = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_orbView;
  *&v1[OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_orbView] = 0;
  v10 = type metadata accessor for SiriSetupProxCardView();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_constraintsSpecified] = 0;
  v12 = objc_allocWithZone(type metadata accessor for OrbContainerView());
  *&v11[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView] = sub_269012CF0(0);
  v11[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbOverTitle] = 1;
  v36.receiver = v11;
  v36.super_class = v10;
  v13 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView;
  [v13 addSubview_];
  [*&v13[v14] intrinsicContentSize];
  v16 = v15;
  [v13 layoutMargins];
  [v13 setLayoutMargins_];
  v18 = *&v13[v14];
  v19 = *&v2[v9];
  *&v2[v9] = v18;
  v20 = v18;

  v21 = &v2[OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_viewModel];
  *(v21 + 3) = &type metadata for ViewModel;
  *(v21 + 4) = &off_2879A7790;
  v22 = swift_allocObject();
  *v21 = v22;
  v23 = v48;
  v22[11] = v47;
  v22[12] = v23;
  v22[13] = v49;
  v24 = v44;
  v22[7] = v43;
  v22[8] = v24;
  v25 = v46;
  v22[9] = v45;
  v22[10] = v25;
  v26 = v40;
  v22[3] = v39;
  v22[4] = v26;
  v27 = v42;
  v22[5] = v41;
  v22[6] = v27;
  v28 = v38;
  v22[1] = v37;
  v22[2] = v28;
  sub_269009E3C(&v37, v35);
  v34.receiver = v2;
  v34.super_class = type metadata accessor for VoiceTrainingProxController();
  v29 = objc_msgSendSuper2(&v34, sel_initWithContentView_, v13);
  v30 = sub_269057944();
  [v29 setTitle_];

  if (v44)
  {

    v31 = sub_269057944();
  }

  else
  {
    v31 = 0;
  }

  [v29 setBottomTrayTitle_];

  if (*(&v39 + 1))
  {

    v32 = sub_269057944();
  }

  else
  {
    v32 = 0;
  }

  [v29 setSubtitle_];

  [v29 setDismissalType_];
  v35[10] = v47;
  v35[11] = v48;
  v35[12] = v49;
  v35[6] = v43;
  v35[7] = v44;
  v35[8] = v45;
  v35[9] = v46;
  v35[2] = v39;
  v35[3] = v40;
  v35[4] = v41;
  v35[5] = v42;
  v35[0] = v37;
  v35[1] = v38;
  sub_26901D098(v35);

  sub_269009EE0(&v37);
  return v29;
}

uint64_t sub_26901CEE0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for VoiceTrainingProxController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_269057A64();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_269057A44();
    swift_unknownObjectRetain();
    v11 = sub_269057A34();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    sub_269038934(0, 0, v6, &unk_26905A598, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26901D098(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = *(a1 + 72);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = v1;
    v5 = sub_269057944();
    v18 = sub_26901E068;
    v19 = v3;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_26904BBEC;
    v17 = &block_descriptor_25;
    v6 = _Block_copy(&v14);
    v7 = [objc_opt_self() actionWithTitle:v5 style:1 handler:v6];

    _Block_release(v6);

    v8 = [v4 addAction_];
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = v1;
  v11 = sub_269057944();
  v18 = sub_26901E020;
  v19 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_26904BBEC;
  v17 = &block_descriptor_4;
  v12 = _Block_copy(&v14);
  v13 = [objc_opt_self() actionWithTitle:v11 style:0 handler:v12];

  _Block_release(v12);

  [v10 setDismissButtonAction_];
}

uint64_t sub_26901D2CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26901D32C(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_viewModel;
  swift_beginAccess();
  sub_269009C7C(&v2[v6], &v68);
  v7 = v69;
  v8 = v70;
  __swift_project_boxed_opaque_existential_1(&v68, v69);
  v9 = (*(v8 + 32))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  if (v9 == (*(v13 + 32))(v12, v13) && v11 == v14)
  {
  }

  else
  {
    v16 = sub_269057DE4();

    if (v16)
    {
      goto LABEL_18;
    }

    v65 = a2;
    v17 = 0xD000000000000013;
    v18 = 0x800000026905D480;
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_269057C54();

    *&v68 = 0xD000000000000013;
    *(&v68 + 1) = 0x800000026905D4A0;
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v21 = (*(v20 + 32))(v19, v20);
    MEMORY[0x26D62FBC0](v21);

    v22 = v68;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v23 = sub_269057774();
    __swift_project_value_buffer(v23, qword_2802F3FF8);
    v24 = sub_269057AA4();
    *&v68 = 0xD000000000000013;
    *(&v68 + 1) = 0x800000026905D480;
    v25 = HIBYTE(*(&v22 + 1)) & 0xFLL;
    if ((*(&v22 + 1) & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v66 = 32;
      v67 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v22, *(&v22 + 1));
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v18 = *(&v68 + 1);
      v17 = v68;
    }

    v26 = sub_269057764();
    if (os_log_type_enabled(v26, v24))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v66 = v28;
      *v27 = 136315138;
      v29 = sub_269010108(v17, v18, &v66);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_269002000, v26, v24, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D6309D0](v28, -1, -1);
      MEMORY[0x26D6309D0](v27, -1, -1);
    }

    else
    {
    }

    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    v32 = (*(v31 + 32))(v30, v31);
    sub_26901DA58(v32, v33, v65 & 1);
  }

LABEL_18:
  sub_269009C7C(&v3[v6], &v68);
  v34 = v69;
  v35 = v70;
  __swift_project_boxed_opaque_existential_1(&v68, v69);
  v36 = (*(v35 + 176))(v34, v35);
  v38 = v37;
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = (*(v40 + 176))(v39, v40);
  if (!v38)
  {
    if (!v42)
    {
      goto LABEL_41;
    }

    goto LABEL_24;
  }

  if (!v42)
  {
LABEL_24:

    goto LABEL_25;
  }

  if (v36 == v41 && v38 == v42)
  {

    goto LABEL_41;
  }

  v64 = sub_269057DE4();

  if (v64)
  {
    goto LABEL_41;
  }

LABEL_25:
  v43 = 0xD000000000000013;
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_269057C54();

  *&v68 = 0xD00000000000001ELL;
  *(&v68 + 1) = 0x800000026905D4C0;
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = (*(v45 + 176))(v44, v45);
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = 0x800000026905D480;
  MEMORY[0x26D62FBC0](v46, v48);

  v50 = *(&v68 + 1);
  v51 = v68;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v52 = sub_269057774();
  __swift_project_value_buffer(v52, qword_2802F3FF8);
  v53 = sub_269057AA4();
  *&v68 = 0xD000000000000013;
  *(&v68 + 1) = 0x800000026905D480;
  v54 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v54 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v66 = 32;
    v67 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v51, v50);
    MEMORY[0x26D62FBC0](v66, v67);

    v49 = *(&v68 + 1);
    v43 = v68;
  }

  v55 = sub_269057764();
  if (os_log_type_enabled(v55, v53))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v66 = v57;
    *v56 = 136315138;
    v58 = sub_269010108(v43, v49, &v66);

    *(v56 + 4) = v58;
    _os_log_impl(&dword_269002000, v55, v53, "%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x26D6309D0](v57, -1, -1);
    MEMORY[0x26D6309D0](v56, -1, -1);
  }

  else
  {
  }

  v59 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  (*(v60 + 176))(v59, v60);
  if (v61)
  {
    v62 = sub_269057944();
  }

  else
  {
    v62 = 0;
  }

  [v3 setBottomTrayTitle_];

LABEL_41:
  sub_269009C7C(a1, &v68);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v3[v6]);
  sub_269009D24(&v68, &v3[v6]);
  return swift_endAccess();
}

void sub_26901DA58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = v3 + OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_viewModel;
  swift_beginAccess();
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  v11 = *(v10 + 40);

  v11(a1, a2, v9, v10);
  swift_endAccess();
  v12 = sub_269057944();
  [v4 setTitle_];

  v13 = [objc_allocWithZone(MEMORY[0x277CDA000]) init];
  v14 = *MEMORY[0x277CDA7B8];
  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 functionWithName_];
  [v16 setTimingFunction_];

  v18 = 0.2;
  if ((a3 & 1) == 0)
  {
    v18 = 0.0;
  }

  [v16 setDuration_];

  [v16 setType_];
  v19 = [v4 view];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 semanticContentAttribute];

    v22 = MEMORY[0x277CDA938];
    if (v21 != 4)
    {
      v22 = MEMORY[0x277CDA940];
    }

    v23 = *v22;
    [v16 setSubtype_];

    v24 = [v4 contentView];
    v25 = [v24 layer];

    [v25 removeAllAnimations];
    v26 = [v4 contentView];
    v27 = [v26 layer];

    [v27 addAnimation:v16 forKey:*MEMORY[0x277CDA920]];
  }

  else
  {
    __break(1u);
  }
}

id sub_26901DD40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceTrainingProxController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26901DE38(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  v5 = *(*v4 + OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_orbView);
  if (v5)
  {
    return [*(v5 + OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView) *a3];
  }

  return result;
}

void sub_26901DE68(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_orbView);
  if (v4)
  {
    v8 = *&v4[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark];
    v9 = v4;
    v10 = v8;
    sub_26901BE7C(a1 & 1, a2, a3);
  }
}

id sub_26901DF20()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_orbView);
  if (v1)
  {
    return [*(v1 + OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView) setPowerLevel_];
  }

  return result;
}

uint64_t sub_26901DF50()
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

uint64_t sub_26901DFE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26901E098()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26901E0D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26901E18C;

  return sub_26903F2C8();
}

uint64_t sub_26901E18C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26901E28C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_26901E2BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_26901E2F4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

void sub_26901E32C(_BYTE *a1@<X8>)
{
  v2 = v1[185];
  v3 = v1[186];
  *a1 = v1[184];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_26901E348()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901E3BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901E430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v1;
}

uint64_t sub_26901E4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();
}

uint64_t sub_26901E51C()
{
  v1 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__prelude;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3940, &qword_26905A840);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__title;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3948, &qword_26905A848);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__subtitle, v2);
  v6(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__caption, v5);
  v7 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__primaryButtonTexts;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3950, &qword_26905A850);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__secondaryButtonText, v2);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__linkText, v2);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__navigationTitle, v2);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__continueButtonText, v2);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__backButtonText, v2);
  v9 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__loading;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3958, &qword_26905A858);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__bulletItems;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3960, &qword_26905A860);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__disclaimerText, v2);
  v13 = OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__configuration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3968, &qword_26905A868);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v3(v0 + OBJC_IVAR____TtC9SiriSetup19ObservableViewModel__languageCode, v2);
  return v0;
}

uint64_t sub_26901E820()
{
  sub_26901E51C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ObservableViewModel()
{
  result = qword_2802F38E8;
  if (!qword_2802F38E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26901E8CC()
{
  sub_26901EB10(319, &qword_2802F38F8, &qword_2802F3548, &unk_269059F70);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26901EB64(319, &qword_2802F3900);
    if (v4 <= 0x3F)
    {
      v13 = *(v3 - 8) + 64;
      sub_26901EB10(319, &qword_2802F3908, &qword_2802F3910, &qword_26905A5E0);
      if (v6 <= 0x3F)
      {
        v14 = *(v5 - 8) + 64;
        sub_26901EB10(319, &qword_2802F3918, &qword_2802F3920, &qword_26905A5E8);
        if (v8 <= 0x3F)
        {
          v15 = *(v7 - 8) + 64;
          sub_26901EB10(319, &qword_2802F3928, &qword_2802F3930, &qword_26905A5F0);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            sub_26901EB64(319, &qword_2802F3938);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_26901EB10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_269057854();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26901EB64(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269057854();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26901EBC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26901EC0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_26901ECA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26901ECEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 208) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26901ED70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableViewModel();
  result = sub_269057824();
  *a1 = result;
  return result;
}

uint64_t sub_26901EDB0()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v3;
}

uint64_t sub_26901EE28()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

uint64_t sub_26901EEA8()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v3;
}

uint64_t sub_26901EF20()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  return v3;
}

uint64_t sub_26901EF98()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();
}

uint64_t sub_26901F020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_26901F0A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

double sub_26901F124@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_26901F1A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

uint64_t sub_26901F228@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  *a2 = v5;
  return result;
}

uint64_t sub_26901F2A8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

uint64_t sub_26901F31C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269057834();

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_26901F3B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_269057844();
}

uint64_t sub_26901F458(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel);
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
  v17 = v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController;
  v18 = *(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController);
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
    v34(v36, 1, ObjectType, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  return result;
}

void (*sub_26901F628(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel;
  *(v3 + 464) = v1;
  *(v3 + 472) = v4;
  swift_beginAccess();
  return sub_26901F6B0;
}

void sub_26901F6B0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[58];
    v5 = *(v4 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController);
    if (v5)
    {
      v6 = (v4 + v3[59]);
      v7 = *(v4 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController + 8);
      v8 = *(v4 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController);
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
      v29(v3 + 52, 1, ObjectType, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + 52);
    }
  }

  free(v3);
}

char *sub_26901F810(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController];
  *v12 = 0;
  v12[1] = 0;
  v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_checkboxCheckedMac] = 1;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_dataSource];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_dataSourceWriter];
  *v14 = a3;
  v14[1] = a4;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 80);
  v17 = a1;
  v18 = a3;
  v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewStyle] = v16(ObjectType, a2);
  *&v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_page] = a5;
  v19 = type metadata accessor for IntroPresenter();

  sub_26901FAD4(v17, a2, v64);
  v20 = &v6[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel];
  v21 = v64[11];
  v20[10] = v64[10];
  v20[11] = v21;
  v20[12] = v64[12];
  v22 = v64[7];
  v20[6] = v64[6];
  v20[7] = v22;
  v23 = v64[9];
  v20[8] = v64[8];
  v20[9] = v23;
  v24 = v64[3];
  v20[2] = v64[2];
  v20[3] = v24;
  v25 = v64[5];
  v20[4] = v64[4];
  v20[5] = v25;
  v26 = v64[1];
  *v20 = v64[0];
  v20[1] = v26;
  v63.receiver = v6;
  v63.super_class = v19;
  v27 = objc_msgSendSuper2(&v63, sel_init);
  LOBYTE(v19) = v16(ObjectType, a2);
  v28 = &v27[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel];
  swift_beginAccess();
  v65[0] = *v28;
  v29 = *(v28 + 1);
  v30 = *(v28 + 2);
  v31 = *(v28 + 4);
  v65[3] = *(v28 + 3);
  v65[4] = v31;
  v65[1] = v29;
  v65[2] = v30;
  v32 = *(v28 + 5);
  v33 = *(v28 + 6);
  v34 = *(v28 + 8);
  v65[7] = *(v28 + 7);
  v65[8] = v34;
  v65[5] = v32;
  v65[6] = v33;
  v35 = *(v28 + 9);
  v36 = *(v28 + 10);
  v37 = *(v28 + 12);
  v65[11] = *(v28 + 11);
  v65[12] = v37;
  v65[9] = v35;
  v65[10] = v36;
  v38 = *(v28 + 11);
  v60 = *(v28 + 10);
  v61 = v38;
  v62 = *(v28 + 12);
  v39 = *(v28 + 7);
  v56 = *(v28 + 6);
  v57 = v39;
  v40 = *(v28 + 9);
  v58 = *(v28 + 8);
  v59 = v40;
  v41 = *(v28 + 3);
  v52 = *(v28 + 2);
  v53 = v41;
  v42 = *(v28 + 5);
  v54 = *(v28 + 4);
  v55 = v42;
  v43 = *(v28 + 1);
  v50 = *v28;
  v51 = v43;
  sub_269009E3C(v65, v66);
  v44 = sub_269023DD4(v19, &v50);
  v46 = v45;

  v66[10] = v60;
  v66[11] = v61;
  v66[12] = v62;
  v66[6] = v56;
  v66[7] = v57;
  v66[8] = v58;
  v66[9] = v59;
  v66[2] = v52;
  v66[3] = v53;
  v66[4] = v54;
  v66[5] = v55;
  v66[0] = v50;
  v66[1] = v51;
  sub_269009EE0(v66);
  v47 = &v27[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController];
  v48 = *&v27[OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController];
  *v47 = v44;
  v47[1] = v46;

  return v27;
}

double sub_26901FAD4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 48))(ObjectType, a2);
  v9 = *(a2 + 232);
  v10 = v9(ObjectType, a2);
  (*(a2 + 32))(&v391, ObjectType, a2);
  v373 = a3;
  if (v391 > 1u)
  {
    if (v391 != 2)
    {
      v17 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v10 = 0;
      v61 = 0xE000000000000000;
      v374 = 0xE000000000000000;
      v375 = 0;
      v377 = 0xE000000000000000;
      v378 = 0;
      goto LABEL_260;
    }

    LODWORD(v372) = v8;
    v371 = a1;
    v366 = ObjectType;
    v368 = a2;
    v362 = *(a2 + 88);
    v378 = v362(ObjectType, a2);
    v11 = v29;
    if (qword_2802F3248 != -1)
    {
      swift_once();
    }

    LODWORD(v370) = byte_2802F5130;
    v30 = sub_269051B18(byte_2802F5130);
    v17 = 0xD000000000000010;
    v380[0] = 0xD000000000000010;
    v380[1] = 0x800000026905D750;
    MEMORY[0x26D62FBC0](v30);

    v31 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    v34 = v32 >> 1;
    v35 = v33 + 1;
    if (v32 >> 1 <= v33)
    {
      v31 = sub_26904DCD8((v32 > 1), v33 + 1, 1, v31);
      v32 = *(v31 + 3);
      v34 = v32 >> 1;
    }

    *(v31 + 2) = v35;
    v36 = &v31[16 * v33];
    *(v36 + 4) = 0xD000000000000010;
    *(v36 + 5) = 0x800000026905D750;
    if (v34 < (v33 + 2))
    {
      v31 = sub_26904DCD8((v32 > 1), v33 + 2, 1, v31);
    }

    *(v31 + 2) = v33 + 2;
    v37 = &v31[16 * v35];
    *(v37 + 4) = 0xD000000000000010;
    *(v37 + 5) = 0x800000026905D750;
    v38 = (v31 + 40);
    v24 = -v33;
    v3 = -1;
    while (v24 + v3 != 1)
    {
      if (++v3 >= *(v31 + 2))
      {
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
        goto LABEL_284;
      }

      v10 = (v38 + 2);
      v39 = *(v38 - 1);
      v40 = *v38;

      sub_26902F7F4(v39, v40, 0);
      v42 = v41;

      v38 = v10;
      if (v42)
      {

        goto LABEL_92;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905D750);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v64 = sub_269057774();
    __swift_project_value_buffer(v64, qword_2802F3FF8);
    v65 = sub_269057A94();
    v380[0] = 0xD00000000000003BLL;
    v380[1] = 0x800000026905BF00;
    v129 = sub_269057764();
    if (os_log_type_enabled(v129, v65))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v390[0] = v131;
      *v130 = 136315138;
      v132 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

      *(v130 + 4) = v132;
      _os_log_impl(&dword_269002000, v129, v65, "%s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v131);
      MEMORY[0x26D6309D0](v131, -1, -1);
      MEMORY[0x26D6309D0](v130, -1, -1);
    }

    else
    {
    }

LABEL_92:
    v3 = v370;
    if (v11)
    {
      sub_26902FAA0();
    }

    sub_2690519EC(v370);
    strcpy(v390, "%DEVICE_NAME%");
    HIWORD(v390[1]) = -4864;
    v17 = sub_26900BE9C();
    sub_269057BE4();

    sub_2690519EC(v370);
    v369 = 0xD000000000000014;
    v390[0] = 0xD000000000000014;
    v390[1] = 0x800000026905BEA0;
    v133 = sub_269057BE4();
    v377 = v134;
    v378 = v133;

    v375 = v362(v366, v368);
    v136 = v135;
    v137 = sub_269051B18(v370);
    v10 = 0xD000000000000013;
    v380[0] = 0xD000000000000013;
    v380[1] = 0x800000026905D770;
    MEMORY[0x26D62FBC0](v137);

    v138 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = *(v138 + 2);
    v139 = *(v138 + 3);
    v140 = v139 >> 1;
    v141 = v11 + 1;
    if (v139 >> 1 <= v11)
    {
      v138 = sub_26904DCD8((v139 > 1), v11 + 1, 1, v138);
      v139 = *(v138 + 3);
      v140 = v139 >> 1;
    }

    *(v138 + 2) = v141;
    v142 = &v138[16 * v11];
    *(v142 + 4) = 0xD000000000000013;
    *(v142 + 5) = 0x800000026905D770;
    v360 = v136;
    if (v140 < (v11 + 2))
    {
      v138 = sub_26904DCD8((v139 > 1), v11 + 2, 1, v138);
    }

    *(v138 + 2) = v11 + 2;
    v143 = &v138[16 * v141];
    *(v143 + 4) = 0xD000000000000013;
    *(v143 + 5) = 0x800000026905D770;
    v144 = (v138 + 40);
    v145 = -v11;
    v24 = -1;
    while (v145 + v24 != 1)
    {
      if (++v24 >= *(v138 + 2))
      {
        goto LABEL_273;
      }

      v3 = (v144 + 2);
      v146 = *(v144 - 1);
      v11 = *v144;

      v147 = sub_26902F7F4(v146, v11, 0);
      v149 = v148;

      v144 = v3;
      if (v149)
      {

        v10 = v147;
        goto LABEL_152;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905D770);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v150 = sub_269057774();
    __swift_project_value_buffer(v150, qword_2802F3FF8);
    v151 = sub_269057A94();
    v380[0] = 0xD00000000000003BLL;
    v380[1] = 0x800000026905BF00;
    v208 = sub_269057764();
    if (os_log_type_enabled(v208, v151))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v390[0] = v210;
      *v209 = 136315138;
      v211 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

      *(v209 + 4) = v211;
      _os_log_impl(&dword_269002000, v208, v151, "%s", v209, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v210);
      MEMORY[0x26D6309D0](v210, -1, -1);
      MEMORY[0x26D6309D0](v209, -1, -1);
    }

    else
    {
    }

LABEL_152:
    if (v360)
    {
      v10 = sub_26902FAA0();
    }

    sub_2690519EC(v370);
    strcpy(v390, "%DEVICE_NAME%");
    HIWORD(v390[1]) = -4864;
    v212 = sub_269057BE4();
    v214 = v213;

    sub_2690519EC(v370);
    v380[0] = v212;
    v380[1] = v214;
    v390[0] = 0xD000000000000014;
    v390[1] = 0x800000026905BEA0;
    v215 = sub_269057BE4();
    v374 = v216;
    v375 = v215;

    if (v372)
    {
      v217 = sub_269051B18(v370);
      v11 = 0xD000000000000016;
      v380[0] = 0xD000000000000016;
      v380[1] = 0x800000026905D7D0;
      MEMORY[0x26D62FBC0](v217);

      v218 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v220 = *(v218 + 2);
      v219 = *(v218 + 3);
      v221 = v219 >> 1;
      v222 = v220 + 1;
      if (v219 >> 1 <= v220)
      {
        v218 = sub_26904DCD8((v219 > 1), v220 + 1, 1, v218);
        v219 = *(v218 + 3);
        v221 = v219 >> 1;
      }

      *(v218 + 2) = v222;
      v223 = &v218[16 * v220];
      *(v223 + 4) = 0xD000000000000016;
      *(v223 + 5) = 0x800000026905D7D0;
      if (v221 < (v220 + 2))
      {
        v218 = sub_26904DCD8((v219 > 1), v220 + 2, 1, v218);
      }

      *(v218 + 2) = v220 + 2;
      v224 = &v218[16 * v222];
      *(v224 + 4) = 0xD000000000000016;
      *(v224 + 5) = 0x800000026905D7D0;
      v225 = (v218 + 40);
      v24 = -v220;
      v3 = -1;
      while (v24 + v3 != 1)
      {
        if (++v3 >= *(v218 + 2))
        {
          goto LABEL_282;
        }

        v10 = (v225 + 2);
        v226 = *(v225 - 1);
        v227 = *v225;

        sub_26902F7F4(v226, v227, 0);
        v229 = v228;

        v225 = v10;
        if (v229)
        {

          v230 = v370;
          goto LABEL_235;
        }
      }

      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
      MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905D7D0);
      MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v246 = sub_269057774();
      __swift_project_value_buffer(v246, qword_2802F3FF8);
      v247 = sub_269057A94();
      v380[0] = 0xD00000000000003BLL;
      v380[1] = 0x800000026905BF00;
      v3 = 0xD00000000000003BLL;
      v313 = sub_269057764();
      if (os_log_type_enabled(v313, v247))
      {
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        v390[0] = v315;
        *v314 = 136315138;
        v3 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

        *(v314 + 4) = v3;
        _os_log_impl(&dword_269002000, v313, v247, "%s", v314, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v315);
        MEMORY[0x26D6309D0](v315, -1, -1);
        MEMORY[0x26D6309D0](v314, -1, -1);
      }

      else
      {
      }

      v230 = v370;
LABEL_235:
      sub_2690519EC(v230);
      strcpy(v390, "%DEVICE_NAME%");
      HIWORD(v390[1]) = -4864;
      v316 = sub_269057BE4();
      v318 = v317;

      sub_2690519EC(v230);
      v380[0] = v316;
      v380[1] = v318;
      v390[0] = 0xD000000000000014;
      v390[1] = 0x800000026905BEA0;
      v10 = sub_269057BE4();
      v372 = v319;
    }

    else
    {
      v372 = v362(v366, v368);
      v232 = v231;
      v233 = sub_269051B18(v370);
      v11 = 0xD000000000000012;
      v380[0] = 0xD000000000000012;
      v380[1] = 0x800000026905D790;
      MEMORY[0x26D62FBC0](v233);

      v234 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v236 = *(v234 + 2);
      v235 = *(v234 + 3);
      v237 = v235 >> 1;
      v238 = v236 + 1;
      if (v235 >> 1 <= v236)
      {
        v234 = sub_26904DCD8((v235 > 1), v236 + 1, 1, v234);
        v235 = *(v234 + 3);
        v237 = v235 >> 1;
      }

      *(v234 + 2) = v238;
      v239 = &v234[16 * v236];
      *(v239 + 4) = 0xD000000000000012;
      *(v239 + 5) = 0x800000026905D790;
      v371 = v232;
      if (v237 < (v236 + 2))
      {
        v234 = sub_26904DCD8((v235 > 1), v236 + 2, 1, v234);
      }

      *(v234 + 2) = v236 + 2;
      v240 = &v234[16 * v238];
      *(v240 + 4) = 0xD000000000000012;
      *(v240 + 5) = 0x800000026905D790;
      v241 = (v234 + 40);
      v24 = -v236;
      v3 = -1;
      while (v24 + v3 != 1)
      {
        if (++v3 >= *(v234 + 2))
        {
          goto LABEL_283;
        }

        v10 = (v241 + 2);
        v242 = *(v241 - 1);
        v243 = *v241;

        sub_26902F7F4(v242, v243, 0);
        v245 = v244;

        v241 = v10;
        if (v245)
        {

          goto LABEL_240;
        }
      }

      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
      MEMORY[0x26D62FBC0](0xD000000000000012, 0x800000026905D790);
      MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v248 = sub_269057774();
      __swift_project_value_buffer(v248, qword_2802F3FF8);
      v249 = sub_269057A94();
      v380[0] = 0xD00000000000003BLL;
      v380[1] = 0x800000026905BF00;
      v320 = sub_269057764();
      if (os_log_type_enabled(v320, v249))
      {
        v321 = swift_slowAlloc();
        v322 = swift_slowAlloc();
        v390[0] = v322;
        *v321 = 136315138;
        v323 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

        *(v321 + 4) = v323;
        _os_log_impl(&dword_269002000, v320, v249, "%s", v321, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v322);
        MEMORY[0x26D6309D0](v322, -1, -1);
        MEMORY[0x26D6309D0](v321, -1, -1);
      }

      else
      {
      }

LABEL_240:
      v230 = v370;
      v3 = v371;
      if (v371)
      {
        sub_26902FAA0();
      }

      sub_2690519EC(v370);
      strcpy(v390, "%DEVICE_NAME%");
      HIWORD(v390[1]) = -4864;
      v324 = sub_269057BE4();
      v326 = v325;

      sub_2690519EC(v370);
      v380[0] = v324;
      v380[1] = v326;
      v390[0] = 0xD000000000000014;
      v390[1] = 0x800000026905BEA0;
      v10 = sub_269057BE4();
      v372 = v327;
    }

    v328 = sub_269051B18(v230);
    v380[0] = 0xD000000000000014;
    v380[1] = 0x800000026905D7B0;
    MEMORY[0x26D62FBC0](v328);

    v329 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = *(v329 + 2);
    v330 = *(v329 + 3);
    v331 = v330 >> 1;
    v332 = v11 + 1;
    if (v330 >> 1 <= v11)
    {
      v329 = sub_26904DCD8((v330 > 1), v11 + 1, 1, v329);
      v330 = *(v329 + 3);
      v331 = v330 >> 1;
    }

    *(v329 + 2) = v332;
    v333 = &v329[16 * v11];
    *(v333 + 4) = 0xD000000000000014;
    *(v333 + 5) = 0x800000026905D7B0;
    if (v331 < (v11 + 2))
    {
      v329 = sub_26904DCD8((v330 > 1), v11 + 2, 1, v329);
    }

    *(v329 + 2) = v11 + 2;
    v334 = &v329[16 * v332];
    *(v334 + 4) = 0xD000000000000014;
    *(v334 + 5) = 0x800000026905D7B0;
    v335 = (v329 + 40);
    v336 = -v11;
    v24 = -1;
    while (v336 + v24 != 1)
    {
      if (++v24 >= *(v329 + 2))
      {
        goto LABEL_277;
      }

      v3 = (v335 + 2);
      v337 = *(v335 - 1);
      v11 = *v335;

      sub_26902F7F4(v337, v11, 0);
      v339 = v338;

      v335 = v3;
      if (v339)
      {

        v340 = v370;
        goto LABEL_258;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905D7B0);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v341 = sub_269057774();
    __swift_project_value_buffer(v341, qword_2802F3FF8);
    v342 = sub_269057A94();
    v380[0] = 0xD00000000000003BLL;
    v380[1] = 0x800000026905BF00;
    v343 = sub_269057764();
    if (os_log_type_enabled(v343, v342))
    {
      v344 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      v390[0] = v345;
      *v344 = 136315138;
      v346 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

      *(v344 + 4) = v346;
      _os_log_impl(&dword_269002000, v343, v342, "%s", v344, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v345);
      MEMORY[0x26D6309D0](v345, -1, -1);
      MEMORY[0x26D6309D0](v344, -1, -1);
    }

    else
    {
    }

    v340 = v370;
LABEL_258:
    sub_2690519EC(v340);
    strcpy(v390, "%DEVICE_NAME%");
    HIWORD(v390[1]) = -4864;
    v347 = sub_269057BE4();
    v349 = v348;

    sub_2690519EC(v340);
    v380[0] = v347;
    v380[1] = v349;
    v390[0] = 0xD000000000000014;
    v390[1] = 0x800000026905BEA0;
    v59 = sub_269057BE4();
    v60 = v350;

    v17 = 0;
    v57 = 0;
    v58 = 0;
    goto LABEL_259;
  }

  if (v391)
  {
    if (qword_2802F3248 != -1)
    {
      swift_once();
    }

    v24 = 0xEB00000000454C54;
    LODWORD(v371) = byte_2802F5130;
    v43 = sub_269051B18(byte_2802F5130);
    strcpy(v380, "INTRO_TITLE");
    HIDWORD(v380[1]) = -352321536;
    MEMORY[0x26D62FBC0](v43);

    v44 = v380[0];
    v45 = v380[1];
    v46 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v46 + 2);
    v47 = *(v46 + 3);
    v48 = v47 >> 1;
    v49 = v17 + 1;
    if (v47 >> 1 <= v17)
    {
      v46 = sub_26904DCD8((v47 > 1), v17 + 1, 1, v46);
      v47 = *(v46 + 3);
      v48 = v47 >> 1;
    }

    *(v46 + 2) = v49;
    v50 = &v46[16 * v17];
    *(v50 + 4) = v44;
    *(v50 + 5) = v45;
    LODWORD(v372) = v8;
    if (v48 < (v17 + 2))
    {
      v46 = sub_26904DCD8((v47 > 1), v17 + 2, 1, v46);
    }

    *(v46 + 2) = v17 + 2;
    v51 = &v46[16 * v49];
    *(v51 + 4) = 0x49545F4F52544E49;
    *(v51 + 5) = 0xEB00000000454C54;
    v52 = (v46 + 40);
    v11 = -v17;
    v53 = -1;
    while (v11 + v53 != 1)
    {
      if (++v53 >= *(v46 + 2))
      {
        goto LABEL_271;
      }

      v3 = (v52 + 2);
      v54 = *(v52 - 1);
      v17 = *v52;

      sub_26902F7F4(v54, v17, 0);
      v56 = v55;

      v52 = v3;
      if (v56)
      {

        goto LABEL_50;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0x49545F4F52544E49, 0xEB00000000454C54);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v66 = sub_269057774();
    __swift_project_value_buffer(v66, qword_2802F3FF8);
    v67 = sub_269057A94();
    v380[0] = 0xD00000000000003BLL;
    v380[1] = 0x800000026905BF00;
    v68 = sub_269057764();
    if (os_log_type_enabled(v68, v67))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v390[0] = v70;
      *v69 = 136315138;
      v71 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

      *(v69 + 4) = v71;
      _os_log_impl(&dword_269002000, v68, v67, "%s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x26D6309D0](v70, -1, -1);
      MEMORY[0x26D6309D0](v69, -1, -1);
    }

    else
    {
    }

LABEL_50:
    v11 = 0x55535F4F52544E49;
    sub_2690519EC(v371);
    strcpy(v390, "%DEVICE_NAME%");
    HIWORD(v390[1]) = -4864;
    v17 = sub_26900BE9C();
    sub_269057BE4();

    sub_2690519EC(v371);
    v369 = 0xD000000000000014;
    v370 = 0x800000026905BEA0;
    v390[0] = 0xD000000000000014;
    v390[1] = 0x800000026905BEA0;
    v72 = sub_269057BE4();
    v377 = v73;
    v378 = v72;

    v74 = sub_269051B18(v371);
    strcpy(v380, "INTRO_SUBTITLE");
    HIBYTE(v380[1]) = -18;
    MEMORY[0x26D62FBC0](v74);

    v75 = v380[0];
    v76 = v380[1];
    v77 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v79 = *(v77 + 2);
    v78 = *(v77 + 3);
    v80 = v78 >> 1;
    v81 = v79 + 1;
    if (v78 >> 1 <= v79)
    {
      v77 = sub_26904DCD8((v78 > 1), v79 + 1, 1, v77);
      v78 = *(v77 + 3);
      v80 = v78 >> 1;
    }

    *(v77 + 2) = v81;
    v82 = &v77[16 * v79];
    *(v82 + 4) = v75;
    *(v82 + 5) = v76;
    if (v80 < (v79 + 2))
    {
      v77 = sub_26904DCD8((v78 > 1), v79 + 2, 1, v77);
    }

    *(v77 + 2) = v79 + 2;
    v83 = &v77[16 * v81];
    strcpy(v83 + 32, "INTRO_SUBTITLE");
    v83[47] = -18;
    v84 = (v77 + 40);
    v24 = -v79;
    v3 = -1;
    while (v24 + v3 != 1)
    {
      if (++v3 >= *(v77 + 2))
      {
        goto LABEL_272;
      }

      v10 = (v84 + 2);
      v85 = *(v84 - 1);
      v86 = *v84;

      sub_26902F7F4(v85, v86, 0);
      v88 = v87;

      v84 = v10;
      if (v88)
      {

        goto LABEL_110;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0x55535F4F52544E49, 0xEE00454C54495442);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v89 = sub_269057774();
    v10 = __swift_project_value_buffer(v89, qword_2802F3FF8);
    v90 = sub_269057A94();
    v380[0] = 0xD00000000000003BLL;
    v380[1] = 0x800000026905BF00;
    v152 = sub_269057764();
    if (os_log_type_enabled(v152, v90))
    {
      v10 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v390[0] = v153;
      *v10 = 136315138;
      v154 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

      *(v10 + 4) = v154;
      _os_log_impl(&dword_269002000, v152, v90, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v153);
      MEMORY[0x26D6309D0](v153, -1, -1);
      MEMORY[0x26D6309D0](v10, -1, -1);
    }

    else
    {
    }

LABEL_110:
    sub_2690519EC(v371);
    strcpy(v390, "%DEVICE_NAME%");
    HIWORD(v390[1]) = -4864;
    v155 = sub_269057BE4();
    v157 = v156;

    sub_2690519EC(v371);
    v380[0] = v155;
    v380[1] = v157;
    v390[0] = 0xD000000000000014;
    v390[1] = 0x800000026905BEA0;
    v158 = sub_269057BE4();
    v374 = v159;
    v375 = v158;

    v160 = sub_269051B18(v371);
    if (v372)
    {
      v162 = 0x800000026905D7D0;
      v11 = 0xD000000000000016;
      v380[0] = 0xD000000000000016;
      v380[1] = 0x800000026905D7D0;
      MEMORY[0x26D62FBC0](v160, v161);

      v163 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v165 = *(v163 + 2);
      v164 = *(v163 + 3);
      v166 = v164 >> 1;
      v167 = v165 + 1;
      if (v164 >> 1 <= v165)
      {
        v163 = sub_26904DCD8((v164 > 1), v165 + 1, 1, v163);
        v164 = *(v163 + 3);
        v166 = v164 >> 1;
      }

      *(v163 + 2) = v167;
      v168 = &v163[16 * v165];
      *(v168 + 4) = 0xD000000000000016;
      *(v168 + 5) = 0x800000026905D7D0;
      if (v166 < (v165 + 2))
      {
        v163 = sub_26904DCD8((v164 > 1), v165 + 2, 1, v163);
      }

      *(v163 + 2) = v165 + 2;
      v169 = &v163[16 * v167];
      *(v169 + 4) = 0xD000000000000016;
      *(v169 + 5) = 0x800000026905D7D0;
      v170 = (v163 + 40);
      v24 = -v165;
      v3 = -1;
      while (v24 + v3 != 1)
      {
        if (++v3 >= *(v163 + 2))
        {
          goto LABEL_280;
        }

        v10 = (v170 + 2);
        v171 = *(v170 - 1);
        v172 = *v170;

        sub_26902F7F4(v171, v172, 0);
        v174 = v173;

        v170 = v10;
        if (v174)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      v162 = 0x800000026905D7F0;
      v11 = 0xD000000000000016;
      v380[0] = 0xD000000000000016;
      v380[1] = 0x800000026905D7F0;
      MEMORY[0x26D62FBC0](v160, v161);

      v175 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v177 = *(v175 + 2);
      v176 = *(v175 + 3);
      v178 = v176 >> 1;
      v179 = v177 + 1;
      if (v176 >> 1 <= v177)
      {
        v175 = sub_26904DCD8((v176 > 1), v177 + 1, 1, v175);
        v176 = *(v175 + 3);
        v178 = v176 >> 1;
      }

      *(v175 + 2) = v179;
      v180 = &v175[16 * v177];
      *(v180 + 4) = 0xD000000000000016;
      *(v180 + 5) = 0x800000026905D7F0;
      if (v178 < (v177 + 2))
      {
        v175 = sub_26904DCD8((v176 > 1), v177 + 2, 1, v175);
      }

      *(v175 + 2) = v177 + 2;
      v181 = &v175[16 * v179];
      *(v181 + 4) = 0xD000000000000016;
      *(v181 + 5) = 0x800000026905D7F0;
      v182 = (v175 + 40);
      v24 = -v177;
      v3 = -1;
      while (v24 + v3 != 1)
      {
        if (++v3 >= *(v175 + 2))
        {
          goto LABEL_281;
        }

        v10 = (v182 + 2);
        v183 = *(v182 - 1);
        v184 = *v182;

        sub_26902F7F4(v183, v184, 0);
        v186 = v185;

        v182 = v10;
        if (v186)
        {
LABEL_128:

          goto LABEL_183;
        }
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000016, v162);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v187 = sub_269057774();
    v10 = __swift_project_value_buffer(v187, qword_2802F3FF8);
    v188 = sub_269057A94();
    v380[0] = 0xD00000000000003BLL;
    v380[1] = 0x800000026905BF00;
    v250 = sub_269057764();
    if (os_log_type_enabled(v250, v188))
    {
      v251 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v390[0] = v10;
      *v251 = 136315138;
      v252 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

      *(v251 + 4) = v252;
      _os_log_impl(&dword_269002000, v250, v188, "%s", v251, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26D6309D0](v10, -1, -1);
      MEMORY[0x26D6309D0](v251, -1, -1);
    }

    else
    {
    }

LABEL_183:
    sub_2690519EC(v371);
    strcpy(v390, "%DEVICE_NAME%");
    HIWORD(v390[1]) = -4864;
    sub_269057BE4();

    sub_2690519EC(v371);
    v390[0] = 0xD000000000000014;
    v390[1] = 0x800000026905BEA0;
    v363 = sub_269057BE4();
    v372 = v253;

    v11 = 0x45535F4F52544E49;
    v254 = sub_269051B18(v371);
    v380[0] = 0x45535F4F52544E49;
    v380[1] = 0xEF595241444E4F43;
    MEMORY[0x26D62FBC0](v254);

    v255 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v257 = *(v255 + 2);
    v256 = *(v255 + 3);
    v258 = v256 >> 1;
    v259 = v257 + 1;
    if (v256 >> 1 <= v257)
    {
      v255 = sub_26904DCD8((v256 > 1), v257 + 1, 1, v255);
      v256 = *(v255 + 3);
      v258 = v256 >> 1;
    }

    *(v255 + 2) = v259;
    v260 = &v255[16 * v257];
    *(v260 + 4) = 0x45535F4F52544E49;
    *(v260 + 5) = 0xEF595241444E4F43;
    if (v258 < (v257 + 2))
    {
      v255 = sub_26904DCD8((v256 > 1), v257 + 2, 1, v255);
    }

    *(v255 + 2) = v257 + 2;
    v261 = &v255[16 * v259];
    *(v261 + 4) = 0x45535F4F52544E49;
    *(v261 + 5) = 0xEF595241444E4F43;
    v262 = (v255 + 40);
    v24 = -v257;
    v3 = -1;
    while (v24 + v3 != 1)
    {
      if (++v3 >= *(v255 + 2))
      {
        goto LABEL_275;
      }

      v10 = (v262 + 2);
      v263 = *(v262 - 1);
      v264 = *v262;

      sub_26902F7F4(v263, v264, 0);
      v266 = v265;

      v262 = v10;
      if (v266)
      {

        goto LABEL_215;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0x45535F4F52544E49, 0xEF595241444E4F43);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v267 = sub_269057774();
    __swift_project_value_buffer(v267, qword_2802F3FF8);
    v268 = sub_269057A94();
    v380[0] = 0xD00000000000003BLL;
    v380[1] = 0x800000026905BF00;
    v289 = sub_269057764();
    if (os_log_type_enabled(v289, v268))
    {
      v290 = swift_slowAlloc();
      v291 = swift_slowAlloc();
      v390[0] = v291;
      *v290 = 136315138;
      v292 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

      *(v290 + 4) = v292;
      _os_log_impl(&dword_269002000, v289, v268, "%s", v290, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v291);
      MEMORY[0x26D6309D0](v291, -1, -1);
      MEMORY[0x26D6309D0](v290, -1, -1);
    }

    else
    {
    }

LABEL_215:
    sub_2690519EC(v371);
    strcpy(v390, "%DEVICE_NAME%");
    HIWORD(v390[1]) = -4864;
    v293 = sub_269057BE4();
    v295 = v294;

    sub_2690519EC(v371);
    v380[0] = v293;
    v380[1] = v295;
    v390[0] = 0xD000000000000014;
    v390[1] = 0x800000026905BEA0;
    v57 = sub_269057BE4();
    v58 = v296;

    v17 = 0;
    v59 = 0;
    v60 = 0;
    v10 = v363;
LABEL_259:
    v61 = v372;
    goto LABEL_260;
  }

  v361 = v9;
  v365 = ObjectType;
  v367 = a2;
  if (qword_2802F3248 != -1)
  {
    swift_once();
  }

  v11 = 0xEB00000000454C54;
  LODWORD(v370) = byte_2802F5130;
  v12 = sub_269051B18(byte_2802F5130);
  strcpy(v380, "INTRO_TITLE");
  HIDWORD(v380[1]) = -352321536;
  MEMORY[0x26D62FBC0](v12);

  v13 = v380[0];
  v14 = v380[1];
  v15 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  v18 = v16 >> 1;
  v19 = v17 + 1;
  if (v16 >> 1 <= v17)
  {
    v15 = sub_26904DCD8((v16 > 1), v17 + 1, 1, v15);
    v16 = *(v15 + 3);
    v18 = v16 >> 1;
  }

  *(v15 + 2) = v19;
  v20 = &v15[16 * v17];
  *(v20 + 4) = v13;
  *(v20 + 5) = v14;
  v371 = a1;
  if (v18 < (v17 + 2))
  {
    v15 = sub_26904DCD8((v16 > 1), v17 + 2, 1, v15);
  }

  *(v15 + 2) = v17 + 2;
  v21 = &v15[16 * v19];
  *(v21 + 4) = 0x49545F4F52544E49;
  *(v21 + 5) = 0xEB00000000454C54;
  v22 = (v15 + 40);
  v23 = -v17;
  v24 = -1;
  while (v23 + v24 != 1)
  {
    if (++v24 >= *(v15 + 2))
    {
      __break(1u);
      goto LABEL_270;
    }

    v3 = (v22 + 2);
    v25 = *(v22 - 1);
    v17 = *v22;

    sub_26902F7F4(v25, v17, 0);
    v27 = v26;

    v22 = v3;
    if (v27)
    {

      v28 = v370;
      goto LABEL_66;
    }
  }

  v379 = v10;

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0x49545F4F52544E49, 0xEB00000000454C54);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v62 = sub_269057774();
  __swift_project_value_buffer(v62, qword_2802F3FF8);
  v63 = sub_269057A94();
  v380[0] = 0xD00000000000003BLL;
  v380[1] = 0x800000026905BF00;
  v28 = v370;
  v91 = sub_269057764();
  if (os_log_type_enabled(v91, v63))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v390[0] = v93;
    *v92 = 136315138;
    v94 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

    *(v92 + 4) = v94;
    _os_log_impl(&dword_269002000, v91, v63, "%s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x26D6309D0](v93, -1, -1);
    MEMORY[0x26D6309D0](v92, -1, -1);
  }

  else
  {
  }

  v10 = v379;
LABEL_66:
  sub_2690519EC(v28);
  strcpy(v390, "%DEVICE_NAME%");
  HIWORD(v390[1]) = -4864;
  sub_26900BE9C();
  v95 = sub_269057BE4();
  v97 = v96;

  sub_2690519EC(v28);
  v380[0] = v95;
  v380[1] = v97;
  v369 = 0xD000000000000014;
  v390[0] = 0xD000000000000014;
  v390[1] = 0x800000026905BEA0;
  v98 = sub_269057BE4();
  v377 = v99;
  v378 = v98;

  if (v10)
  {
    v17 = 0xEE00454C54495442;
    v11 = 0x55535F4F52544E49;
    v100 = sub_269051B18(v28);
    strcpy(v380, "INTRO_SUBTITLE");
    HIBYTE(v380[1]) = -18;
    MEMORY[0x26D62FBC0](v100);

    v101 = v380[0];
    v24 = v380[1];
    v102 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v104 = *(v102 + 2);
    v103 = *(v102 + 3);
    v105 = v103 >> 1;
    v106 = v104 + 1;
    if (v103 >> 1 <= v104)
    {
      v102 = sub_26904DCD8((v103 > 1), v104 + 1, 1, v102);
      v103 = *(v102 + 3);
      v105 = v103 >> 1;
    }

    *(v102 + 2) = v106;
    v107 = &v102[16 * v104];
    *(v107 + 4) = v101;
    *(v107 + 5) = v24;
    if (v105 < (v104 + 2))
    {
      v102 = sub_26904DCD8((v103 > 1), v104 + 2, 1, v102);
    }

    *(v102 + 2) = v104 + 2;
    v108 = &v102[16 * v106];
    strcpy(v108 + 32, "INTRO_SUBTITLE");
    v108[47] = -18;
    v109 = (v102 + 40);
    v110 = -v104;
    v3 = -1;
    while (v110 + v3 != 1)
    {
      if (++v3 >= *(v102 + 2))
      {
        goto LABEL_278;
      }

      v10 = (v109 + 2);
      v111 = *(v109 - 1);
      v24 = *v109;

      sub_26902F7F4(v111, v24, 0);
      v113 = v112;

      v109 = v10;
      if (v113)
      {
        goto LABEL_84;
      }
    }
  }

  else
  {
    v17 = 0x800000026905D810;
    v114 = sub_269051B18(v28);
    v11 = 0xD000000000000013;
    v380[0] = 0xD000000000000013;
    v380[1] = 0x800000026905D810;
    MEMORY[0x26D62FBC0](v114);

    v24 = 0x800000026905D810;
    v115 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v117 = *(v115 + 2);
    v116 = *(v115 + 3);
    v118 = v116 >> 1;
    v119 = v117 + 1;
    if (v116 >> 1 <= v117)
    {
      v115 = sub_26904DCD8((v116 > 1), v117 + 1, 1, v115);
      v116 = *(v115 + 3);
      v118 = v116 >> 1;
    }

    *(v115 + 2) = v119;
    v120 = &v115[16 * v117];
    *(v120 + 4) = 0xD000000000000013;
    *(v120 + 5) = 0x800000026905D810;
    if (v118 < (v117 + 2))
    {
      v115 = sub_26904DCD8((v116 > 1), v117 + 2, 1, v115);
    }

    *(v115 + 2) = v117 + 2;
    v121 = &v115[16 * v119];
    *(v121 + 4) = 0xD000000000000013;
    *(v121 + 5) = 0x800000026905D810;
    v122 = (v115 + 40);
    v123 = -v117;
    v3 = -1;
    while (v123 + v3 != 1)
    {
      if (++v3 >= *(v115 + 2))
      {
        goto LABEL_279;
      }

      v10 = (v122 + 2);
      v124 = *(v122 - 1);
      v24 = *v122;

      sub_26902F7F4(v124, v24, 0);
      v126 = v125;

      v122 = v10;
      if (v126)
      {
LABEL_84:

        v127 = v370;
        goto LABEL_136;
      }
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](v11, v17);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v128 = sub_269057774();
  __swift_project_value_buffer(v128, qword_2802F3FF8);
  v24 = sub_269057A94();
  v380[0] = 0xD00000000000003BLL;
  v380[1] = 0x800000026905BF00;
  v127 = v370;
  v189 = sub_269057764();
  if (os_log_type_enabled(v189, v24))
  {
    v190 = swift_slowAlloc();
    v376 = v24;
    v24 = swift_slowAlloc();
    v390[0] = v24;
    *v190 = 136315138;
    v191 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

    *(v190 + 4) = v191;
    _os_log_impl(&dword_269002000, v189, v376, "%s", v190, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D6309D0](v24, -1, -1);
    MEMORY[0x26D6309D0](v190, -1, -1);
  }

  else
  {
  }

LABEL_136:
  sub_2690519EC(v127);
  strcpy(v390, "%DEVICE_NAME%");
  HIWORD(v390[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v127);
  v390[0] = 0xD000000000000014;
  v390[1] = 0x800000026905BEA0;
  v192 = sub_269057BE4();
  v374 = v193;
  v375 = v192;

  v10 = 0x800000026905D7F0;
  v194 = sub_269051B18(v127);
  v3 = 0xD000000000000016;
  v380[0] = 0xD000000000000016;
  v380[1] = 0x800000026905D7F0;
  MEMORY[0x26D62FBC0](v194);

  v195 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = *(v195 + 2);
  v196 = *(v195 + 3);
  v197 = v196 >> 1;
  v198 = v17 + 1;
  if (v196 >> 1 <= v17)
  {
    v195 = sub_26904DCD8((v196 > 1), v17 + 1, 1, v195);
    v196 = *(v195 + 3);
    v197 = v196 >> 1;
  }

  *(v195 + 2) = v198;
  v199 = &v195[16 * v17];
  *(v199 + 4) = 0xD000000000000016;
  *(v199 + 5) = 0x800000026905D7F0;
  if (v197 < (v17 + 2))
  {
    v195 = sub_26904DCD8((v196 > 1), v17 + 2, 1, v195);
  }

  *(v195 + 2) = v17 + 2;
  v200 = &v195[16 * v198];
  *(v200 + 4) = 0xD000000000000016;
  *(v200 + 5) = 0x800000026905D7F0;
  v201 = (v195 + 40);
  v11 = -v17;
  v202 = -1;
  while (v11 + v202 != 1)
  {
    if (++v202 >= *(v195 + 2))
    {
      goto LABEL_274;
    }

    v24 = (v201 + 2);
    v203 = *(v201 - 1);
    v17 = *v201;

    sub_26902F7F4(v203, v17, 0);
    v205 = v204;

    v201 = v24;
    if (v205)
    {

      v10 = v205;
      goto LABEL_199;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905D7F0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v206 = sub_269057774();
  __swift_project_value_buffer(v206, qword_2802F3FF8);
  v207 = sub_269057A94();
  v380[0] = 0xD00000000000003BLL;
  v380[1] = 0x800000026905BF00;
  v269 = sub_269057764();
  if (os_log_type_enabled(v269, v207))
  {
    v270 = swift_slowAlloc();
    v271 = swift_slowAlloc();
    v390[0] = v271;
    *v270 = 136315138;
    v272 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

    *(v270 + 4) = v272;
    _os_log_impl(&dword_269002000, v269, v207, "%s", v270, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v271);
    MEMORY[0x26D6309D0](v271, -1, -1);
    MEMORY[0x26D6309D0](v270, -1, -1);
  }

  else
  {
  }

LABEL_199:
  v17 = 0xEF595241444E4F43;
  v11 = 0x45535F4F52544E49;
  sub_2690519EC(v370);
  strcpy(v390, "%DEVICE_NAME%");
  HIWORD(v390[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v370);
  v390[0] = 0xD000000000000014;
  v390[1] = 0x800000026905BEA0;
  v364 = sub_269057BE4();
  v372 = v273;

  v274 = sub_269051B18(v370);
  v380[0] = 0x45535F4F52544E49;
  v380[1] = 0xEF595241444E4F43;
  MEMORY[0x26D62FBC0](v274);

  v275 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v277 = *(v275 + 2);
  v276 = *(v275 + 3);
  v278 = v276 >> 1;
  v279 = v277 + 1;
  if (v276 >> 1 <= v277)
  {
    v275 = sub_26904DCD8((v276 > 1), v277 + 1, 1, v275);
    v276 = *(v275 + 3);
    v278 = v276 >> 1;
  }

  *(v275 + 2) = v279;
  v280 = &v275[16 * v277];
  *(v280 + 4) = 0x45535F4F52544E49;
  *(v280 + 5) = 0xEF595241444E4F43;
  if (v278 < (v277 + 2))
  {
    v275 = sub_26904DCD8((v276 > 1), v277 + 2, 1, v275);
  }

  *(v275 + 2) = v277 + 2;
  v281 = &v275[16 * v279];
  *(v281 + 4) = 0x45535F4F52544E49;
  *(v281 + 5) = 0xEF595241444E4F43;
  v282 = (v275 + 40);
  v24 = -v277;
  v3 = -1;
  while (v24 + v3 != 1)
  {
    if (++v3 >= *(v275 + 2))
    {
      goto LABEL_276;
    }

    v10 = (v282 + 2);
    v283 = *(v282 - 1);
    v284 = *v282;

    sub_26902F7F4(v283, v284, 0);
    v286 = v285;

    v282 = v10;
    if (v286)
    {

      goto LABEL_220;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0x45535F4F52544E49, 0xEF595241444E4F43);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v287 = sub_269057774();
  __swift_project_value_buffer(v287, qword_2802F3FF8);
  v288 = sub_269057A94();
  v380[0] = 0xD00000000000003BLL;
  v380[1] = 0x800000026905BF00;
  v297 = sub_269057764();
  if (os_log_type_enabled(v297, v288))
  {
    v298 = swift_slowAlloc();
    v299 = swift_slowAlloc();
    v390[0] = v299;
    *v298 = 136315138;
    v300 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v390);

    *(v298 + 4) = v300;
    _os_log_impl(&dword_269002000, v297, v288, "%s", v298, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v299);
    MEMORY[0x26D6309D0](v299, -1, -1);
    MEMORY[0x26D6309D0](v298, -1, -1);
  }

  else
  {
  }

LABEL_220:
  sub_2690519EC(v370);
  strcpy(v390, "%DEVICE_NAME%");
  HIWORD(v390[1]) = -4864;
  v301 = sub_269057BE4();
  v303 = v302;

  sub_2690519EC(v370);
  v380[0] = v301;
  v380[1] = v303;
  v390[0] = 0xD000000000000014;
  v390[1] = 0x800000026905BEA0;
  v304 = sub_269057BE4();
  v306 = v305;

  v17 = 0;
  if (v361(v365, v367))
  {
    v17 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_26904DDE4(0, *(v17 + 16) + 1, 1, v17);
    }

    v308 = *(v17 + 16);
    v307 = *(v17 + 24);
    if (v308 >= v307 >> 1)
    {
      v17 = sub_26904DDE4((v307 > 1), v308 + 1, 1, v17);
    }

    *(v17 + 16) = v308 + 1;
    v309 = v17 + 48 * v308;
    strcpy((v309 + 32), "quote.bubble");
    *(v309 + 45) = 0;
    *(v309 + 46) = -5120;
    *(v309 + 48) = 0xD000000000000011;
    *(v309 + 56) = 0x800000026905D830;
    *(v309 + 64) = 0xD000000000000014;
    *(v309 + 72) = 0x800000026905D850;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_26904DDE4(0, *(v17 + 16) + 1, 1, v17);
    }

    v311 = *(v17 + 16);
    v310 = *(v17 + 24);
    if (v311 >= v310 >> 1)
    {
      v17 = sub_26904DDE4((v310 > 1), v311 + 1, 1, v17);
    }

    *(v17 + 16) = v311 + 1;
    v312 = (v17 + 48 * v311);
    v312[4] = 0xD00000000000001DLL;
    v312[5] = 0x800000026905D870;
    v312[6] = 0xD000000000000011;
    v312[7] = 0x800000026905D890;
    v312[8] = 0xD000000000000014;
    v312[9] = 0x800000026905D8B0;
  }

  v57 = 0;
  v58 = 0;
  v10 = v364;
  v61 = v372;
  v59 = v304;
  v60 = v306;
LABEL_260:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_269059EE0;
  *(v24 + 32) = v10;
  *(v24 + 40) = v61;
  v3 = 0x800000026905D710;

  sub_269057C54();
  v390[0] = 0;
  v390[1] = 0xE000000000000000;
  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905D730);
  v380[0] = 0;
  v380[1] = 0;
  v380[2] = v378;
  v380[3] = v377;
  v380[4] = v375;
  v380[5] = v374;
  v380[6] = 0;
  v380[7] = 0xE000000000000000;
  v380[8] = v24;
  v380[9] = v59;
  v371 = v60;
  v372 = v59;
  v380[10] = v60;
  v381 = 0u;
  v382 = 0u;
  v383 = 0u;
  v369 = v58;
  v370 = v57;
  v384 = v57;
  v385 = v58;
  v386 = 2;
  v387 = v17;
  v388 = 0;
  v389[0] = 0;
  *(v389 + 7) = 0;
  v389[2] = 0;
  v389[3] = 0;
  sub_269057CB4();
  v11 = v390[0];
  v10 = v390[1];
  if (qword_2802F3258 != -1)
  {
LABEL_284:
    swift_once();
  }

  v351 = sub_269057774();
  __swift_project_value_buffer(v351, qword_2802F3FF8);
  v352 = sub_269057AA4();
  v353 = 0xD00000000000001CLL;
  v380[0] = 0xD00000000000001CLL;
  v380[1] = v3;
  v354 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v354 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v354)
  {
    v390[0] = 32;
    v390[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v11, v10);
    MEMORY[0x26D62FBC0](v390[0], v390[1]);

    v353 = v380[0];
    v3 = v380[1];
  }

  v355 = sub_269057764();
  if (os_log_type_enabled(v355, v352))
  {
    v356 = swift_slowAlloc();
    v357 = swift_slowAlloc();
    v390[0] = v357;
    *v356 = 136315138;
    v358 = sub_269010108(v353, v3, v390);

    *(v356 + 4) = v358;
    _os_log_impl(&dword_269002000, v355, v352, "%s", v356, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v357);
    MEMORY[0x26D6309D0](v357, -1, -1);
    MEMORY[0x26D6309D0](v356, -1, -1);
  }

  else
  {
  }

  *v373 = 0;
  *(v373 + 8) = 0;
  *(v373 + 16) = v378;
  *(v373 + 24) = v377;
  *(v373 + 32) = v375;
  *(v373 + 40) = v374;
  *(v373 + 48) = 0;
  *(v373 + 56) = 0xE000000000000000;
  *(v373 + 64) = v24;
  *(v373 + 72) = v372;
  *(v373 + 80) = v371;
  result = 0.0;
  *(v373 + 88) = 0u;
  *(v373 + 104) = 0u;
  *(v373 + 120) = 0u;
  *(v373 + 136) = v370;
  *(v373 + 144) = v369;
  *(v373 + 152) = 2;
  *(v373 + 153) = v380[0];
  *(v373 + 156) = *(v380 + 3);
  *(v373 + 183) = 0;
  *(v373 + 160) = v17;
  *(v373 + 168) = 0;
  *(v373 + 176) = 0;
  *(v373 + 187) = v390[0];
  *(v373 + 191) = BYTE4(v390[0]);
  *(v373 + 192) = 0;
  *(v373 + 200) = 0;
  return result;
}

char *sub_269023DD4(char a1, _OWORD *a2)
{
  v2 = a2[11];
  v47[10] = a2[10];
  v47[11] = v2;
  v47[12] = a2[12];
  v3 = a2[7];
  v47[6] = a2[6];
  v47[7] = v3;
  v4 = a2[9];
  v47[8] = a2[8];
  v47[9] = v4;
  v5 = a2[3];
  v47[2] = a2[2];
  v47[3] = v5;
  v6 = a2[5];
  v47[4] = a2[4];
  v47[5] = v6;
  v7 = a2[1];
  v47[0] = *a2;
  v47[1] = v7;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x800000026905D8D0;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v9 = 0xD000000000000028;
      v10 = sub_269057774();
      __swift_project_value_buffer(v10, qword_2802F3FF8);
      v11 = sub_269057A94();
      *&v34 = 0xD000000000000028;
      *(&v34 + 1) = 0x800000026905D8D0;
      if (("rViewStyle(_:viewModel:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v33[0] = 32;
        v33[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000029, 0x800000026905D900);
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v8 = *(&v34 + 1);
        v9 = v34;
      }

      v12 = sub_269057764();
      if (os_log_type_enabled(v12, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v33[0] = v14;
        *v13 = 136315138;
        v15 = sub_269010108(v9, v8, v33);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_269002000, v12, v11, "%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x26D6309D0](v14, -1, -1);
        MEMORY[0x26D6309D0](v13, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      v25 = a2[11];
      v44 = a2[10];
      v45 = v25;
      v46 = a2[12];
      v26 = a2[7];
      v40 = a2[6];
      v41 = v26;
      v27 = a2[9];
      v42 = a2[8];
      v43 = v27;
      v28 = a2[3];
      v36 = a2[2];
      v37 = v28;
      v29 = a2[5];
      v38 = a2[4];
      v39 = v29;
      v30 = a2[1];
      v34 = *a2;
      v35 = v30;
      v31 = objc_allocWithZone(type metadata accessor for IntroProxCardController());
      sub_269009E3C(v47, v33);
      v24 = sub_26904FC48(&v34);
      *&v24[OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_delegate + 8] = &off_2879A7A40;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    v16 = a2[11];
    v44 = a2[10];
    v45 = v16;
    v46 = a2[12];
    v17 = a2[7];
    v40 = a2[6];
    v41 = v17;
    v18 = a2[9];
    v42 = a2[8];
    v43 = v18;
    v19 = a2[3];
    v36 = a2[2];
    v37 = v19;
    v20 = a2[5];
    v38 = a2[4];
    v39 = v20;
    v21 = a2[1];
    v34 = *a2;
    v35 = v21;
    v22 = objc_allocWithZone(type metadata accessor for IntroWelcomeController());
    sub_269009E3C(v47, v33);
    sub_269028E84(&v34);
    v24 = v23;
    *&v23[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_delegate + 8] = &off_2879A7A40;
    swift_unknownObjectWeakAssign();
  }

  return v24;
}

id sub_269024140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntroPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26902425C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewModel);
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

void (*sub_269024330(uint64_t **a1))(void *a1)
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
  v2[4] = sub_26901F628(v2);
  return sub_26901AFE8;
}

void *sub_2690243A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_presentingViewController + 8);
  v3 = v1;
  return v1;
}

uint64_t sub_2690243E8()
{
  v1 = v0;
  v2 = 0xD000000000000015;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_viewStyle) == 1 && (*(v0 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_checkboxCheckedMac) & 1) == 0)
  {
    v13 = 0x800000026905D1F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v14 = sub_269057774();
    __swift_project_value_buffer(v14, qword_2802F3FF8);
    v15 = sub_269057AA4();
    v24 = 0xD000000000000015;
    v25 = 0x800000026905D1F0;
    if (("Siri from intro action" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v22 = 32;
      v23 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD00000000000003DLL, 0x800000026905D6D0);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v2 = v24;
      v13 = v25;
    }

    v16 = sub_269057764();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      v19 = sub_269010108(v2, v13, &v22);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_269002000, v16, v15, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D6309D0](v18, -1, -1);
      MEMORY[0x26D6309D0](v17, -1, -1);
    }

    else
    {
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = *(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_page);

      sub_26900D268(v21);
      goto LABEL_21;
    }
  }

  else
  {
    v3 = 0x800000026905D1F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057AA4();
    v24 = 0xD000000000000015;
    v25 = 0x800000026905D1F0;
    if (("Dismissed from intro" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v22 = 32;
      v23 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000036, 0x800000026905D690);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v2 = v24;
      v3 = v25;
    }

    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136315138;
      v9 = sub_269010108(v2, v3, &v22);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }

    *(*(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_dataSourceWriter) + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled) = 2;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_page);

      sub_26900E6C8(v12);
LABEL_21:

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_269024810()
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
  if (("checkboxCheckedMac" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v13[0] = 32;
    v13[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905D670);
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

  *(*(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_dataSourceWriter) + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_setupDismissed) = 2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_page);

    sub_26900E964(v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_269024A60()
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

uint64_t sub_269024AF8()
{
  type metadata accessor for Analytics();
  v0 = swift_allocObject();
  result = sub_269024B34();
  qword_2802F5108 = v0;
  return result;
}

uint64_t sub_269024B34()
{
  v1 = sub_2690576E4();
  v22 = *(v1 - 8);
  v23 = v1;
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_269057B24();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269057B04();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2690578A4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  type metadata accessor for AssistantSiriAnalyticsProvider();
  *(v0 + 16) = swift_allocObject();
  sub_269010AA8();
  sub_269057884();
  v24 = MEMORY[0x277D84F90];
  sub_269025718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F39B8, &qword_26905A8E8);
  sub_269025770();
  sub_269057C14();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v20);
  v12 = sub_269057B74();
  v13 = v19;
  *(v19 + 24) = v12;
  v14 = v21;
  sub_2690576D4();
  v15 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v16 = sub_2690576C4();
  v17 = [v15 initWithNSUUID_];

  (*(v22 + 8))(v14, v23);
  result = v13;
  *(v13 + 32) = v17;
  return result;
}

void sub_269024E38()
{
  v1 = v0;
  v2 = sub_2690576E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupContext) init];
  if (v7)
  {
    v22 = v7;
    v8 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupStarted) init];
    if (v8)
    {
      v9 = v8;
      sub_2690576D4();
      v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v11 = sub_2690576C4();
      v12 = [v10 initWithNSUUID_];

      (*(v3 + 8))(v6, v2);
      v13 = *(v1 + 32);
      *(v1 + 32) = v12;

      [v9 setExists_];
      [v22 setStarted_];
      v14 = objc_allocWithZone(SetupSchemaProvisionalSiriSetupEvent);
      v15 = v22;
      v16 = [v14 init];
      if (v16)
      {
        v17 = v16;
        v18 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupEventMetadata) init];
        if (v18)
        {
          v19 = v18;
          [v18 setSetupId_];
          [v17 setEventMetadata_];
          [v17 setSiriSetupContext_];
          if (qword_2802F3220 != -1)
          {
            swift_once();
          }

          [objc_msgSend(objc_opt_self() sharedStream)];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      v20 = v22;
    }
  }
}

void sub_26902511C(char a1, char a2)
{
  v5 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupContext) init];
  if (!v5)
  {
    return;
  }

  v14 = v5;
  v6 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupEnded) init];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  [v6 setSiriEnabled_];
  [v7 setDismissed_];
  [v14 setEnded_];
  v8 = objc_allocWithZone(SetupSchemaProvisionalSiriSetupEvent);
  v14 = v14;
  v9 = [v8 init];
  if (!v9)
  {

LABEL_12:
    v12 = v14;
    goto LABEL_13;
  }

  v13 = v9;
  v10 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupEventMetadata) init];
  if (v10)
  {
    v11 = v10;
    [v10 setSetupId_];
    [v13 setEventMetadata_];
    [v13 setSiriSetupContext_];
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    [objc_msgSend(objc_opt_self() sharedStream)];

    swift_unknownObjectRelease();
    return;
  }

  v12 = v13;
LABEL_13:
}

void sub_26902536C(char *a1)
{
  v2 = *a1;
  v3 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupContext) init];
  if (!v3)
  {
    return;
  }

  v12 = v3;
  v4 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupStep) init];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  [v4 setPage_];
  [v12 setStep_];
  v6 = objc_allocWithZone(SetupSchemaProvisionalSiriSetupEvent);
  v12 = v12;
  v7 = [v6 init];
  if (!v7)
  {

LABEL_12:
    v10 = v12;
    goto LABEL_13;
  }

  v11 = v7;
  v8 = [objc_allocWithZone(SetupSchemaProvisionalSiriSetupEventMetadata) init];
  if (v8)
  {
    v9 = v8;
    [v8 setSetupId_];
    [v11 setEventMetadata_];
    [v11 setSiriSetupContext_];
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    [objc_msgSend(objc_opt_self() sharedStream)];

    swift_unknownObjectRelease();
    return;
  }

  v10 = v11;
LABEL_13:
}

uint64_t sub_26902559C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_269025608(uint64_t a1)
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() sharedAnalytics];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 newTurnBasedInstrumentationContext];
  }

  else
  {
    v4 = 0;
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D5A928]) init];
  [v6 setInvocationSource_];
  v5 = v6;
  if (v6)
  {
    if (v4)
    {
      [v4 emitInstrumentation_];

      v5 = v6;
    }
  }

  else
  {
    v5 = v4;
  }
}

unint64_t sub_269025718()
{
  result = qword_2802F39B0;
  if (!qword_2802F39B0)
  {
    sub_269057B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F39B0);
  }

  return result;
}

unint64_t sub_269025770()
{
  result = qword_2802F39C0;
  if (!qword_2802F39C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F39B8, &qword_26905A8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F39C0);
  }

  return result;
}

id sub_2690257D4(_OWORD *a1)
{
  v2 = a1[11];
  v38 = a1[10];
  v39 = v2;
  v40 = a1[12];
  v3 = a1[7];
  v34 = a1[6];
  v35 = v3;
  v4 = a1[9];
  v36 = a1[8];
  v37 = v4;
  v5 = a1[3];
  v30 = a1[2];
  v31 = v5;
  v6 = a1[5];
  v32 = a1[4];
  v33 = v6;
  v7 = a1[1];
  v29[0] = *a1;
  v29[1] = v7;
  *&v1[OBJC_IVAR____TtC9SiriSetup28DataSharingWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup28DataSharingWelcomeController_orbView] = 0;
  v8 = sub_269057944();
  if (*(&v30 + 1))
  {

    v9 = sub_269057944();
  }

  else
  {
    v9 = 0;
  }

  v28.receiver = v1;
  v28.super_class = type metadata accessor for DataSharingWelcomeController();
  v10 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v8, v9, 0, 2);

  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 buttonWithType_];
  v14 = [v13 titleLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setAdjustsFontSizeToFitWidth_];
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  if (v34)
  {

    v16 = sub_269057944();
  }

  else
  {
    v16 = 0;
  }

  [v13 setTitle:v16 forState:0];

  [v13 addTarget:v12 action:sel_aboutDataSharingTapped forControlEvents:64];
  v17 = [v12 headerView];

  [v17 addAccessoryButton_];
  if (v32 && *(v32 + 16))
  {
    v18 = *(v32 + 32);
    v19 = *(v32 + 40);
    v20 = objc_opt_self();

    v21 = [v20 boldButton];
    v22 = sub_269057944();

    [v21 setTitle:v22 forState:0];

    [v21 addTarget:v12 action:sel_shareTapped forControlEvents:64];
    v23 = [v12 buttonTray];
    [v23 addButton_];
  }

  if (v33)
  {

    sub_269009EE0(v29);
    v24 = [objc_opt_self() linkButton];
    v25 = sub_269057944();

    [v24 setTitle:v25 forState:0];

    [v24 addTarget:v12 action:sel_notNowTapped forControlEvents:64];
    v26 = [v12 buttonTray];
    [v26 addButton_];
  }

  else
  {

    sub_269009EE0(v29);
  }

  return v12;
}

void sub_269025BAC()
{
  v1 = sub_269057944();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    [v2 setPresentingViewController_];
  }

  [v2 present];
}

void sub_269025CD4(void *a1, uint64_t a2, void (*a3)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    a3();
    swift_unknownObjectRelease();
  }
}

id sub_269025DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataSharingWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_269025E64(_OWORD *a1)
{
  v2 = a1[11];
  v40 = a1[10];
  v41 = v2;
  v42 = a1[12];
  v3 = a1[7];
  v36 = a1[6];
  v37 = v3;
  v4 = a1[9];
  v38 = a1[8];
  v39 = v4;
  v5 = a1[3];
  v32 = a1[2];
  v33 = v5;
  v6 = a1[5];
  v34 = a1[4];
  v35 = v6;
  v7 = a1[1];
  v31[0] = *a1;
  v31[1] = v7;
  *&v1[OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_orbView] = 0;
  v8 = sub_269057944();
  if (*(&v32 + 1))
  {

    v9 = sub_269057944();
  }

  else
  {
    v9 = 0;
  }

  v30.receiver = v1;
  v30.super_class = type metadata accessor for SuccessWelcomeController();
  v10 = objc_msgSendSuper2(&v30, sel_initWithTitle_detailText_icon_contentLayout_, v8, v9, 0, 2);

  v11 = objc_allocWithZone(type metadata accessor for OrbContainerView());
  v12 = v10;
  v13 = sub_269012CF0(1);
  v14 = [v12 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    [v15 addSubview_];
  }

  v16 = [v12 headerView];

  v17 = [v16 customIconContainerView];
  if (v17)
  {
    [v17 setClipsToBounds_];
  }

  v18 = *&v12[OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_orbView];
  *&v12[OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_orbView] = v13;
  v29 = v13;

  v19 = v34;
  if (v34)
  {
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_269009EE0(v31);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = (v19 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;

      v25 = [v21 boldButton];
      v26 = sub_269057944();

      [v25 setTitle:v26 forState:0];

      [v25 addTarget:v12 action:sel_doneTapped forControlEvents:64];
      v27 = [v12 buttonTray];
      [v27 addButton_];

      v22 += 2;
      --v20;
    }

    while (v20);
  }

  return v12;
}

uint64_t sub_26902617C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = 0x800000026905D1F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v3 = 0xD000000000000015;
    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057AA4();
    v13 = 0xD000000000000015;
    v14 = 0x800000026905D1F0;
    if (("SuccessWelcomeController" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v12[0] = 32;
      v12[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905DB10);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v3 = v13;
      v2 = v14;
    }

    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v9 = sub_269010108(v3, v2, v12);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_page);

      sub_26900E6C8(v11);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26902647C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuccessWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26902661C(_OWORD *a1)
{
  v3 = a1[11];
  v43 = a1[10];
  v44 = v3;
  v45 = a1[12];
  v4 = a1[7];
  v39 = a1[6];
  v40 = v4;
  v5 = a1[9];
  v41 = a1[8];
  v42 = v5;
  v6 = a1[3];
  v35 = a1[2];
  v36 = v6;
  v7 = a1[5];
  v37 = a1[4];
  v38 = v7;
  v8 = a1[1];
  v34[0] = *a1;
  v34[1] = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView] = 0;
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel];
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
  sub_269009E3C(v34, v33);
  v16 = sub_269057944();
  if (*(&v35 + 1))
  {

    v17 = sub_269057944();
  }

  else
  {
    v17 = 0;
  }

  v32.receiver = v1;
  v32.super_class = type metadata accessor for VoiceTrainingWelcomeController();
  v18 = objc_msgSendSuper2(&v32, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, 0, 2);

  v19 = objc_allocWithZone(type metadata accessor for OrbContainerView());
  v20 = v18;
  v21 = sub_269012CF0(1);
  v22 = [v20 headerView];
  v23 = [v22 customIconContainerView];

  if (v23)
  {
    [v23 addSubview_];
  }

  v24 = [v20 headerView];
  v25 = [v24 customIconContainerView];

  if (v25)
  {
    [v25 setClipsToBounds_];
  }

  v26 = *&v20[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView];
  *&v20[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView] = v21;
  v27 = v21;

  v28 = [objc_opt_self() linkButton];
  if (v38)
  {

    v29 = sub_269057944();
    sub_269009EE0(v34);
  }

  else
  {
    sub_269009EE0(v34);
    v29 = 0;
  }

  [v28 setTitle:v29 forState:0];

  [v28 addTarget:v20 action:sel_secondaryButtonTapped forControlEvents:64];
  v30 = [v20 buttonTray];

  [v30 addButton_];
  return v20;
}

void sub_269026954(void *a1, char a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel];
  v7 = *&v2[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel + 16];
  v6 = *&v2[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel + 24];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(v9 + 32);

  v61 = v10;
  if (v7 == v10(v8, v9) && v6 == v11)
  {
  }

  else
  {
    v13 = sub_269057DE4();

    if (v13)
    {
      goto LABEL_18;
    }

    v58 = v3;
    v14 = 0xD000000000000013;
    v15 = 0x800000026905D480;
    sub_269057C54();

    v16 = v10(v8, v9);
    MEMORY[0x26D62FBC0](v16);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v17 = sub_269057774();
    __swift_project_value_buffer(v17, qword_2802F3FF8);
    v59 = sub_269057AA4();
    v65 = 0xD000000000000013;
    v66 = 0x800000026905D480;
    v18 = (0x800000026905D4A0 >> 56) & 0xF;
    if ((0x800000026905D4A0 & 0x2000000000000000) == 0)
    {
      v18 = 19;
    }

    if (v18)
    {
      v63 = 32;
      v64 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905D4A0);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v14 = v65;
      v15 = v66;
    }

    v19 = sub_269057764();
    if (os_log_type_enabled(v19, v59))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v63 = v21;
      *v20 = 136315138;
      v22 = sub_269010108(v14, v15, &v63);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_269002000, v19, v59, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D6309D0](v21, -1, -1);
      MEMORY[0x26D6309D0](v20, -1, -1);
    }

    else
    {
    }

    v23 = v61(v8, v9);
    v3 = v58;
    sub_269027254(v23, v24, a2 & 1);
  }

LABEL_18:
  v26 = *(v5 + 13);
  v25 = *(v5 + 14);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = *(v28 + 176);

  v30 = v29(v27, v28);
  if (!v25)
  {
    if (!v31)
    {
      return;
    }

    goto LABEL_27;
  }

  if (!v31)
  {
LABEL_27:

LABEL_28:
    v34 = 0xD000000000000013;
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_269057C54();

    v65 = 0xD00000000000001ELL;
    v66 = 0x800000026905D4C0;
    v35 = a1[3];
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v35);
    v37 = (*(v36 + 176))(v35, v36);
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = 0x800000026905D480;
    MEMORY[0x26D62FBC0](v37, v39);

    v42 = v65;
    v41 = v66;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v43 = sub_269057774();
    __swift_project_value_buffer(v43, qword_2802F3FF8);
    v44 = sub_269057AA4();
    v65 = 0xD000000000000013;
    v66 = 0x800000026905D480;
    v45 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v63 = 32;
      v64 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v42, v41);
      MEMORY[0x26D62FBC0](v63, v64);

      v34 = v65;
      v40 = v66;
    }

    v46 = sub_269057764();
    if (os_log_type_enabled(v46, v44))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63 = v48;
      *v47 = 136315138;
      v49 = sub_269010108(v34, v40, &v63);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_269002000, v46, v44, "%s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x26D6309D0](v48, -1, -1);
      MEMORY[0x26D6309D0](v47, -1, -1);
    }

    else
    {
    }

    v50 = a1[3];
    v51 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v50);
    v52 = (*(v51 + 176))(v50, v51);
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    v55 = *(v5 + 14);
    if (v53)
    {
      v56 = v53;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    *(v5 + 13) = v54;
    *(v5 + 14) = v56;

    v57 = [v3 navigationItem];
    v62 = sub_269057944();
    [v57 setTitle_];

    return;
  }

  if (v26 != v30 || v25 != v31)
  {
    v33 = sub_269057DE4();

    if (v33)
    {
      return;
    }

    goto LABEL_28;
  }
}

uint64_t sub_269027024(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for VoiceTrainingWelcomeController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_269057A64();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_269057A44();
    swift_unknownObjectRetain();
    v11 = sub_269057A34();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    sub_269038934(0, 0, v6, &unk_26905A598, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269027254(uint64_t a1, uint64_t a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel];
  v6 = *&v3[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_viewModel + 24];
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;

  v7 = [v3 headerView];
  v8 = sub_269057944();
  [v7 setTitle_];

  v9 = [objc_allocWithZone(MEMORY[0x277CDA000]) init];
  v10 = *MEMORY[0x277CDA7B8];
  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 functionWithName_];
  [v12 setTimingFunction_];

  v14 = 0.2;
  if ((a3 & 1) == 0)
  {
    v14 = 0.0;
  }

  [v12 setDuration_];

  [v12 setType_];
  v15 = [v3 view];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 semanticContentAttribute];

    v18 = MEMORY[0x277CDA938];
    if (v17 != 4)
    {
      v18 = MEMORY[0x277CDA940];
    }

    v19 = *v18;
    [v12 setSubtype_];

    v20 = [v3 headerView];
    v21 = [v20 layer];

    [v21 removeAllAnimations];
    v22 = [v3 headerView];
    v23 = [v22 layer];

    [v23 addAnimation:v12 forKey:*MEMORY[0x277CDA920]];
  }

  else
  {
    __break(1u);
  }
}

id sub_269027540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceTrainingWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26902764C(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  v5 = *(*v4 + OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView);
  if (v5)
  {
    return [*(v5 + OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView) *a3];
  }

  return result;
}

void sub_26902767C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView);
  if (v4)
  {
    v8 = *&v4[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark];
    v9 = v4;
    v10 = v8;
    sub_26901BE7C(a1 & 1, a2, a3);
  }
}

id sub_269027734()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_orbView);
  if (v1)
  {
    return [*(v1 + OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView) setPowerLevel_];
  }

  return result;
}

uint64_t sub_269027788()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2690277C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_26902781C(_OWORD *a1)
{
  v2 = a1[11];
  v34 = a1[10];
  v35 = v2;
  v36 = a1[12];
  v3 = a1[7];
  v30 = a1[6];
  v31 = v3;
  v4 = a1[9];
  v32 = a1[8];
  v33 = v4;
  v5 = a1[3];
  v26 = a1[2];
  v27 = v5;
  v6 = a1[5];
  v28 = a1[4];
  v29 = v6;
  v7 = a1[1];
  v25[0] = *a1;
  v25[1] = v7;
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_orbView] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_player] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerLooper] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerViewController] = 0;
  v8 = sub_269057944();
  if (*(&v26 + 1))
  {

    v9 = sub_269057944();
  }

  else
  {
    v9 = 0;
  }

  v24.receiver = v1;
  v24.super_class = type metadata accessor for EducationWelcomeController();
  v10 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v8, v9, 0, 2);

  v11 = v10;
  v12 = [v11 headerView];
  [v12 setAlpha_];

  v13 = [v11 contentView];
  [v13 setAlpha_];

  sub_269028084();
  v14 = v28;
  if (v28)
  {
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  sub_269009EE0(v25);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      v20 = [v16 boldButton];
      v21 = sub_269057944();

      [v20 setTitle:v21 forState:0];

      [v20 addTarget:v11 action:sel_continueTapped forControlEvents:64];
      v22 = [v11 buttonTray];
      [v22 addButton_];

      v17 += 2;
      --v15;
    }

    while (v15);
  }

  return v11;
}

void sub_269027AD4(char a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for EducationWelcomeController();
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1 & 1);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v17 = sub_269028DE4;
  v18 = v4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26900BEF0;
  v16 = &block_descriptor_5;
  v5 = _Block_copy(&v13);
  v6 = v1;

  [v3 animateWithDuration:0 delay:v5 options:0 animations:0.4 completion:0.0];
  _Block_release(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v17 = sub_269028E20;
  v18 = v7;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26900BEF0;
  v16 = &block_descriptor_23;
  v8 = _Block_copy(&v13);
  v9 = v6;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v17 = sub_269028E44;
  v18 = v10;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2690277C8;
  v16 = &block_descriptor_29;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [v3 animateWithDuration:0 delay:v8 options:v11 animations:0.4 completion:0.3];
  _Block_release(v11);
  _Block_release(v8);
}

uint64_t sub_269027D94()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = 0x800000026905D1F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v3 = 0xD000000000000015;
    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057AA4();
    v13 = 0xD000000000000015;
    v14 = 0x800000026905D1F0;
    if (("roller not initialized" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v12[0] = 32;
      v12[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000017, 0x800000026905DD90);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v3 = v13;
      v2 = v14;
    }

    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v9 = sub_269010108(v3, v2, v12);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup18EducationPresenter_page);

      sub_26900E6C8(v11);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269028030(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  [v2 setAlpha_];
}

void sub_269028084()
{
  v1 = v0;
  v2 = sub_2690576A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802F3240 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  v10 = sub_269057944();
  v11 = sub_269057944();
  v12 = [v9 pathForResource:v10 ofType:v11];

  if (v12)
  {
    v92 = v3;
    sub_269057954();

    sub_269057684();
    v13 = objc_allocWithZone(MEMORY[0x277CE65B0]);
    v14 = sub_269057694();
    v15 = [v13 initWithURL_];

    v16 = [objc_allocWithZone(MEMORY[0x277CE65F8]) initWithPlayerItem_];
    v17 = *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_player];
    *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_player] = v16;
    v18 = v16;

    v93 = v2;
    if (v18)
    {
      v19 = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
      v20 = *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerViewController];
      *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerViewController] = v19;
      v21 = v19;

      if (v21)
      {
        v90 = v18;
        v91 = v15;
        [v21 setShowsPlaybackControls_];
        [v21 setAllowsPictureInPicturePlayback_];
        v22 = v21;
        v23 = [v22 view];
        if (v23)
        {
          v24 = v23;
          [v23 setTranslatesAutoresizingMaskIntoConstraints_];

          v25 = [v22 view];
          if (v25)
          {
            v26 = v25;
            v89 = v9;
            v27 = [objc_opt_self() systemBackgroundColor];
            [v26 setBackgroundColor_];

            v28 = [v1 contentView];
            v29 = [v22 view];
            if (v29)
            {
              v30 = v29;
              v88 = v6;
              [v28 addSubview_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_26905AB00;
              v32 = [v22 view];
              if (v32)
              {
                v33 = v32;
                v34 = [v32 topAnchor];

                v35 = [v1 contentView];
                v36 = [v35 topAnchor];

                v37 = [v34 constraintEqualToAnchor:v36 constant:60.0];
                *(v31 + 32) = v37;
                v38 = [v22 view];
                if (v38)
                {
                  v39 = v38;
                  v40 = [v38 centerXAnchor];

                  v41 = [v1 contentView];
                  v42 = [v41 centerXAnchor];

                  v43 = [v40 constraintEqualToAnchor_];
                  *(v31 + 40) = v43;
                  v44 = [v22 view];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = [v44 heightAnchor];

                    v47 = [v46 constraintEqualToConstant_];
                    *(v31 + 48) = v47;
                    v48 = [v22 view];

                    v49 = v88;
                    if (v48)
                    {

                      v50 = objc_opt_self();

                      v51 = [v48 widthAnchor];

                      v52 = [v51 constraintEqualToConstant_];
                      *(v31 + 56) = v52;
                      sub_26901BDD8();
                      v53 = sub_2690579C4();

                      [v50 activateConstraints_];

                      v54 = v90;
                      [v22 setPlayer_];
                      v55 = objc_allocWithZone(MEMORY[0x277CE65E0]);
                      v56 = *(MEMORY[0x277CC08C8] + 16);
                      v94[0] = *MEMORY[0x277CC08C8];
                      v94[1] = v56;
                      v94[2] = *(MEMORY[0x277CC08C8] + 32);
                      v57 = v91;
                      v58 = [v55 initWithPlayer:v54 templateItem:v91 timeRange:v94];

                      (*(v92 + 8))(v49, v93);
                      v59 = *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerLooper];
                      *&v1[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_playerLooper] = v58;

                      return;
                    }

                    goto LABEL_44;
                  }

LABEL_43:
                  __break(1u);
LABEL_44:
                  __break(1u);
                  return;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_40;
      }

      v77 = v9;

      v78 = 0x800000026905DCF0;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v79 = 0xD000000000000012;
      v80 = sub_269057774();
      __swift_project_value_buffer(v80, qword_2802F3FF8);
      v81 = sub_269057A94();
      *&v94[0] = 0xD000000000000012;
      *(&v94[0] + 1) = 0x800000026905DCF0;
      if (("AVQueuePlayer not initialized" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v95 = 32;
        v96 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000026, 0x800000026905DD60);
        MEMORY[0x26D62FBC0](v95, v96);

        v78 = *(&v94[0] + 1);
        v79 = *&v94[0];
      }

      v72 = sub_269057764();
      if (os_log_type_enabled(v72, v81))
      {
        v82 = swift_slowAlloc();
        v83 = v15;
        v84 = swift_slowAlloc();
        v95 = v84;
        *v82 = 136315138;
        v85 = sub_269010108(v79, v78, &v95);
        v86 = v18;
        v87 = v85;

        *(v82 + 4) = v87;
        _os_log_impl(&dword_269002000, v72, v81, "%s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        MEMORY[0x26D6309D0](v84, -1, -1);
        MEMORY[0x26D6309D0](v82, -1, -1);

        goto LABEL_37;
      }
    }

    else
    {

      v68 = 0x800000026905DCF0;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v69 = 0xD000000000000012;
      v70 = sub_269057774();
      __swift_project_value_buffer(v70, qword_2802F3FF8);
      v71 = sub_269057A94();
      *&v94[0] = 0xD000000000000012;
      *(&v94[0] + 1) = 0x800000026905DCF0;
      if (("iri Education Video" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v95 = 32;
        v96 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD00000000000001DLL, 0x800000026905DD40);
        MEMORY[0x26D62FBC0](v95, v96);

        v68 = *(&v94[0] + 1);
        v69 = *&v94[0];
      }

      v72 = sub_269057764();
      if (os_log_type_enabled(v72, v71))
      {
        v73 = swift_slowAlloc();
        v74 = v15;
        v75 = swift_slowAlloc();
        v95 = v75;
        *v73 = 136315138;
        v76 = sub_269010108(v69, v68, &v95);

        *(v73 + 4) = v76;
        _os_log_impl(&dword_269002000, v72, v71, "%s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x26D6309D0](v75, -1, -1);
        MEMORY[0x26D6309D0](v73, -1, -1);

LABEL_37:
        (*(v92 + 8))(v6, v93);
        return;
      }
    }

    goto LABEL_37;
  }

  v60 = 0x800000026905DCF0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v61 = 0xD000000000000012;
  v62 = sub_269057774();
  __swift_project_value_buffer(v62, qword_2802F3FF8);
  v63 = sub_269057A94();
  *&v94[0] = 0xD000000000000012;
  *(&v94[0] + 1) = 0x800000026905DCF0;
  if (("setupVideoPlayer()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v95 = 32;
    v96 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000023, 0x800000026905DD10);
    MEMORY[0x26D62FBC0](v95, v96);

    v60 = *(&v94[0] + 1);
    v61 = *&v94[0];
  }

  v64 = sub_269057764();
  if (os_log_type_enabled(v64, v63))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v95 = v66;
    *v65 = 136315138;
    v67 = sub_269010108(v61, v60, &v95);

    *(v65 + 4) = v67;
    _os_log_impl(&dword_269002000, v64, v63, "%s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x26D6309D0](v66, -1, -1);
    MEMORY[0x26D6309D0](v65, -1, -1);
  }

  else
  {
  }
}

id sub_269028CD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EducationWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269028DAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_269028E44(double a1)
{
  result = *(*(v1 + 16) + OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_player);
  if (result)
  {
    LODWORD(a1) = 1.0;
    return [result playImmediatelyAtRate_];
  }

  return result;
}

void sub_269028E84(_OWORD *a1)
{
  v199 = sub_269057714();
  v3 = *(v199 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v198 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[11];
  v216 = a1[10];
  v217 = v6;
  v218 = a1[12];
  v7 = a1[7];
  v212 = a1[6];
  v213 = v7;
  v8 = a1[9];
  v214 = a1[8];
  v215 = v8;
  v9 = a1[3];
  v208 = a1[2];
  v209 = v9;
  v10 = a1[5];
  v210 = a1[4];
  v211 = v10;
  v11 = a1[1];
  v207[0] = *a1;
  v207[1] = v11;
  *&v1[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_orbView] = 0;
  v1[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading] = 0;
  v12 = &v1[OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_viewModel];
  v12[3] = &type metadata for ViewModel;
  v12[4] = &off_2879A7790;
  v13 = swift_allocObject();
  *v12 = v13;
  v14 = a1[11];
  v13[11] = a1[10];
  v13[12] = v14;
  v13[13] = a1[12];
  v15 = a1[7];
  v13[7] = a1[6];
  v13[8] = v15;
  v16 = a1[9];
  v13[9] = a1[8];
  v13[10] = v16;
  v17 = a1[3];
  v13[3] = a1[2];
  v13[4] = v17;
  v18 = a1[5];
  v13[5] = a1[4];
  v13[6] = v18;
  v19 = a1[1];
  v13[1] = *a1;
  v13[2] = v19;
  sub_269009E3C(v207, &v205);
  v20 = sub_269057944();
  if (*(&v208 + 1))
  {

    v21 = sub_269057944();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_269017F70();
  v23 = type metadata accessor for IntroWelcomeController();
  v204.receiver = v1;
  v204.super_class = v23;
  v174 = objc_msgSendSuper2(&v204, sel_initWithTitle_detailText_icon_contentLayout_, v20, v21, v22, 2);

  v24 = v216;
  if (!v216 || (v180 = *(v216 + 16)) == 0)
  {
LABEL_75:
    if (v210)
    {
      v150 = v210;
    }

    else
    {
      v150 = MEMORY[0x277D84F90];
    }

    v151 = *(v150 + 16);
    v152 = &off_279C4A000;
    v153 = &off_279C4A000;
    v199 = v150;
    if (v151)
    {
      v200 = objc_opt_self();

      v154 = (v150 + 40);
      v155 = v174;
      do
      {
        v156 = v153;
        v157 = v152;
        v158 = *(v154 - 1);
        v159 = *v154;

        v160 = [v200 boldButton];
        v161 = sub_269057944();
        v152 = v157;
        v153 = v156;

        [v160 setTitle:v161 forState:0];

        [v160 addTarget:v155 action:sel_continueTapped forControlEvents:64];
        v162 = [v155 v152 + 4048];
        [v162 v156 + 146];

        v154 += 2;
        --v151;
      }

      while (v151);
    }

    else
    {
    }

    v163 = [objc_opt_self() linkButton];
    if (v211)
    {

      v164 = sub_269057944();
      sub_269009EE0(v207);
    }

    else
    {
      sub_269009EE0(v207);
      v164 = 0;
    }

    v165 = v174;
    [v163 setTitle:v164 forState:{0, v172}];

    v166 = v165;
    [v163 addTarget:v166 action:sel_skipTapped forControlEvents:64];
    v167 = [v166 *(v152 + 234)];
    [v167 v153[235]];

    v168 = objc_opt_self();
    v169 = sub_269057944();
    v170 = [v168 linkWithBundleIdentifier_];

    v171 = [v166 *(v152 + 234)];
    [v171 setPrivacyLinkController_];

    *(v166 + OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading) = 0;
    return;
  }

  v25 = objc_opt_self();
  v178 = v24 + 32;
  v179 = v25;
  v196 = (v3 + 8);
  v197 = "T@NSString,N,R";
  v176 = ":localDevice:targetDevice:)";
  v177 = 0x800000026905BF00;
  v175 = "ocalizable string for key ";
  v186 = 0x800000026905BEA0;

  v26 = 0;
  *&v27 = 136315138;
  v172 = v27;
  v173 = v24;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      goto LABEL_89;
    }

    v28 = (v178 + 48 * v26);
    v29 = v28[2];
    v30 = v28[3];
    v31 = v28[5];
    v190 = v28[4];
    v191 = v29;
    v32 = *v28;
    v33 = v28[1];

    v34 = sub_269057944();
    v35 = [v179 _systemImageNamed_];

    if (v35)
    {
      break;
    }

LABEL_8:
    if (++v26 == v180)
    {

      goto LABEL_75;
    }
  }

  v188 = v31;
  v189 = v30;
  if (qword_2802F3248 != -1)
  {
    swift_once();
  }

  v187 = byte_2802F5130;
  v36 = sub_269051B18(byte_2802F5130);
  v38 = v37;
  v39 = v189;
  v205 = v191;
  v206 = v189;

  MEMORY[0x26D62FBC0](v36, v38);

  v40 = v205;
  v41 = v206;
  v42 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  v193 = v42;
  v45 = v44 + 1;
  if (v44 >= v43 >> 1)
  {
    v193 = sub_26904DCD8((v43 > 1), v44 + 1, 1, v193);
  }

  v46 = v193;
  *(v193 + 2) = v45;
  v47 = &v46[16 * v44];
  *(v47 + 4) = v40;
  *(v47 + 5) = v41;
  v48 = *(v46 + 3);

  v192 = v44 + 2;
  v184 = v33;
  v185 = v26;
  v183 = v35;
  if ((v44 + 2) > (v48 >> 1))
  {
    v193 = sub_26904DCD8((v48 > 1), v192, 1, v193);
  }

  v49 = 0;
  v50 = v193;
  *(v193 + 2) = v192;
  v51 = &v50[16 * v45];
  *(v51 + 4) = v191;
  *(v51 + 5) = v39;
  v52 = (v50 + 40);
  while (v49 < *(v193 + 2))
  {
    v54 = *(v52 - 1);
    v53 = *v52;

    v195 = 0xD000000000000018;
    v55 = sub_269057944();
    v56 = objc_opt_self();
    v57 = [v56 bundleWithIdentifier_];

    if (!v57)
    {
      v57 = [v56 mainBundle];
    }

    v58 = [objc_opt_self() currentLocale];
    v59 = v198;
    sub_269057704();

    sub_2690576F4();
    v194 = *v196;
    v194(v59, v199);
    if (qword_2802F3238 != -1)
    {
      swift_once();
    }

    v60 = qword_2802F5118;
    v61 = sub_269057944();
    v200 = v53;
    v62 = v54;
    v63 = v61;
    v64 = v57;
    v65 = sub_269057944();

    v66 = [v60 localizedStringForKey:v63 gender:0 table:0 bundle:v64 languageCode:v65];

    if (v66)
    {
      v67 = sub_269057954();
      v69 = v68;

      if (v67 != v62 || v69 != v200)
      {
        v70 = sub_269057DE4();

        if ((v70 & 1) == 0)
        {

          v191 = v67;
          goto LABEL_43;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    ++v49;
    v52 += 2;
    if (v192 == v49)
    {

      v205 = 0;
      v206 = 0xE000000000000000;
      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002ALL, v176 | 0x8000000000000000);
      MEMORY[0x26D62FBC0](v191, v189);
      MEMORY[0x26D62FBC0](0xD000000000000015, v175 | 0x8000000000000000);
      v71 = v205;
      v72 = v206;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v73 = sub_269057774();
      __swift_project_value_buffer(v73, qword_2802F3FF8);
      v74 = sub_269057A94();
      v75 = v177;
      v205 = 0xD00000000000003BLL;
      v206 = v177;
      v76 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v76 = v71 & 0xFFFFFFFFFFFFLL;
      }

      if (v76)
      {
        v203[0] = 32;
        v203[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](v71, v72);
        MEMORY[0x26D62FBC0](v203[0], v203[1]);

        v77 = v205;
        v75 = v206;
      }

      else
      {
        v77 = 0xD00000000000003BLL;
      }

      v78 = sub_269057764();
      if (os_log_type_enabled(v78, v74))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v203[0] = v80;
        *v79 = v172;
        v81 = sub_269010108(v77, v75, v203);

        *(v79 + 4) = v81;
        _os_log_impl(&dword_269002000, v78, v74, "%s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x26D6309D0](v80, -1, -1);
        MEMORY[0x26D6309D0](v79, -1, -1);
      }

      else
      {
      }

      v69 = v189;

LABEL_43:
      v82 = v187;
      v83 = sub_2690519EC(v187);
      v205 = v191;
      v206 = v69;
      v202 = v84;
      strcpy(v203, "%DEVICE_NAME%");
      HIWORD(v203[1]) = -4864;
      v201 = v83;
      v85 = sub_26900BE9C();
      v86 = sub_269057BE4();
      v88 = v87;

      v89 = sub_2690519EC(v82);
      v205 = v86;
      v206 = v88;
      v181 = 0xD000000000000014;
      v203[0] = 0xD000000000000014;
      v203[1] = v186;
      v201 = v89;
      v202 = v90;
      v191 = v85;
      sub_269057BE4();

      v182 = sub_269057944();

      v91 = sub_269051B18(v82);
      v93 = v92;
      v94 = v188;
      v205 = v190;
      v206 = v188;

      MEMORY[0x26D62FBC0](v91, v93);

      v95 = v205;
      v96 = v206;
      v97 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v99 = *(v97 + 2);
      v98 = *(v97 + 3);
      v193 = v97;
      v100 = v99 + 1;
      if (v99 >= v98 >> 1)
      {
        v193 = sub_26904DCD8((v98 > 1), v99 + 1, 1, v193);
      }

      v101 = v193;
      *(v193 + 2) = v100;
      v102 = &v101[16 * v99];
      *(v102 + 4) = v95;
      *(v102 + 5) = v96;
      v103 = *(v101 + 3);

      v192 = v99 + 2;
      if ((v99 + 2) > (v103 >> 1))
      {
        v193 = sub_26904DCD8((v103 > 1), v192, 1, v193);
      }

      v104 = 0;
      v105 = v193;
      *(v193 + 2) = v192;
      v106 = &v105[16 * v100];
      *(v106 + 4) = v190;
      *(v106 + 5) = v94;
      v107 = (v105 + 40);
      while (2)
      {
        if (v104 >= *(v193 + 2))
        {
          goto LABEL_88;
        }

        v109 = *(v107 - 1);
        v108 = *v107;

        v110 = sub_269057944();
        v111 = objc_opt_self();
        v112 = [v111 bundleWithIdentifier_];

        if (!v112)
        {
          v112 = [v111 mainBundle];
        }

        v113 = [objc_opt_self() currentLocale];
        v114 = v198;
        sub_269057704();

        sub_2690576F4();
        v194(v114, v199);
        if (qword_2802F3238 != -1)
        {
          swift_once();
        }

        v115 = qword_2802F5118;
        v116 = sub_269057944();
        v200 = v108;
        v117 = v109;
        v118 = v116;
        v119 = v112;
        v120 = sub_269057944();

        v121 = [v115 localizedStringForKey:v118 gender:0 table:0 bundle:v119 languageCode:v120];

        if (v121)
        {
          v122 = sub_269057954();
          v124 = v123;

          if (v122 == v117 && v124 == v200)
          {

            goto LABEL_48;
          }

          v125 = sub_269057DE4();

          if ((v125 & 1) == 0)
          {

            v190 = v122;
            v24 = v173;
LABEL_73:
            v138 = v187;
            v139 = sub_2690519EC(v187);
            v205 = v190;
            v206 = v124;
            v202 = v140;
            strcpy(v203, "%DEVICE_NAME%");
            HIWORD(v203[1]) = -4864;
            v201 = v139;
            v141 = sub_269057BE4();
            v143 = v142;

            v144 = sub_2690519EC(v138);
            v205 = v141;
            v206 = v143;
            v203[0] = v181;
            v203[1] = v186;
            v201 = v144;
            v202 = v145;
            sub_269057BE4();

            v146 = sub_269057944();

            v147 = [objc_opt_self() whiteColor];
            v149 = v182;
            v148 = v183;
            [v174 addBulletedListItemWithTitle:v182 description:v146 image:v183 tintColor:v147];

            v26 = v185;
            goto LABEL_8;
          }
        }

        else
        {
LABEL_48:
        }

        ++v104;
        v107 += 2;
        if (v192 == v104)
        {

          v205 = 0;
          v206 = 0xE000000000000000;
          sub_269057C54();
          MEMORY[0x26D62FBC0](0xD00000000000002ALL, v176 | 0x8000000000000000);
          MEMORY[0x26D62FBC0](v190, v188);
          MEMORY[0x26D62FBC0](0xD000000000000015, v175 | 0x8000000000000000);
          v126 = v205;
          v127 = v206;
          if (qword_2802F3258 != -1)
          {
            swift_once();
          }

          v128 = sub_269057774();
          __swift_project_value_buffer(v128, qword_2802F3FF8);
          v129 = sub_269057A94();
          v130 = v177;
          v205 = 0xD00000000000003BLL;
          v206 = v177;
          v131 = HIBYTE(v127) & 0xF;
          if ((v127 & 0x2000000000000000) == 0)
          {
            v131 = v126 & 0xFFFFFFFFFFFFLL;
          }

          if (v131)
          {
            v203[0] = 32;
            v203[1] = 0xE100000000000000;
            MEMORY[0x26D62FBC0](v126, v127);
            MEMORY[0x26D62FBC0](v203[0], v203[1]);

            v132 = v205;
            v130 = v206;
          }

          else
          {
            v132 = 0xD00000000000003BLL;
          }

          v133 = sub_269057764();
          if (os_log_type_enabled(v133, v129))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v203[0] = v135;
            *v134 = v172;
            v136 = sub_269010108(v132, v130, v203);

            *(v134 + 4) = v136;
            _os_log_impl(&dword_269002000, v133, v129, "%s", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v135);
            MEMORY[0x26D6309D0](v135, -1, -1);
            MEMORY[0x26D6309D0](v134, -1, -1);
          }

          else
          {
          }

          v137 = v188;

          v124 = v137;
          v24 = v173;
          goto LABEL_73;
        }

        continue;
      }
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
}

void sub_26902A258()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading))
  {
    v3 = 0x800000026905DE50;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = 0xD000000000000010;
    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057AA4();
    v12 = 0xD000000000000010;
    v13 = 0x800000026905DE50;
    if (("roller" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v11[0] = 32;
      v11[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000028, 0x800000026905DE20);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v4 = v12;
      v3 = v13;
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(v4, v3, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v6, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2690243E8();
    swift_unknownObjectRelease();
  }

  *(v1 + v2) = 1;
}

void sub_26902A4A8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_isLoading))
  {
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v3 = 0x7070615470696B73;
    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057AA4();
    v6 = 0xEC00000029286465;
    strcpy(v12, "skipTapped()");
    BYTE5(v12[1]) = 0;
    HIWORD(v12[1]) = -5120;
    if (("roller" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v11[0] = 32;
      v11[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000028, 0x800000026905DE20);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v3 = v12[0];
      v6 = v12[1];
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v5))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(v3, v6, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v5, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_269024810();
    swift_unknownObjectRelease();
  }

  *(v1 + v2) = 1;
}

void sub_26902A700()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v1 startAnimating];
  v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  v3 = [v0 navigationItem];
  [v3 setRightBarButtonItem:v2 animated:1];

  v4 = [v0 buttonTray];
  [v4 showButtonsBusy];
}

id sub_26902A850()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntroWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26902A91C(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22IntroWelcomeController_viewModel;
  swift_beginAccess();
  sub_269009C7C(v1 + v3, &v14);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  v6 = (*(v5 + 248))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 248))(v7, v8);
  if (v6 == 2)
  {
    if (v9 == 2)
    {
      goto LABEL_9;
    }
  }

  else if (v9 != 2 && ((v6 ^ v9) & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 248))(v10, v11);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    sub_26902A700();
  }

LABEL_9:
  sub_269009C7C(a1, &v14);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_269009D24(&v14, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_26902AAA8()
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

uint64_t sub_26902AB40()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902AB84(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902AC34()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902AC78(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902ADA0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_26902AE14(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_26902AE74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

void sub_26902AF30(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_26902AF90()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26902AFDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t sub_26902B094()
{
  v1 = (v0 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_26902B0EC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_26902B1A0()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902B1E4(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902B294()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902B2D8(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902B388()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902B3CC(char a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26902B47C()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26902B4C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AssistantConfiguration.__allocating_init(hasVoiceProfileInCloud:siriEnabled:siriLanguage:siriSharedUserId:siriVoice:recognizeMyVoiceEnabled:voiceTriggerEnabled:siriInCallEnabled:siriDataSharingStatus:systemLanguage:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v51[11] = *MEMORY[0x277D85DE8];
  v20 = objc_allocWithZone(v13);
  v21 = &v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  *&v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice] = 0;
  v24 = &v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
  *v24 = 0;
  v24[4] = 1;
  v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud] = a1;
  v20[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled] = a2;
  v25 = v20;
  swift_beginAccess();
  *v21 = a3;
  v21[1] = a4;
  swift_beginAccess();
  *v22 = a5;
  v22[1] = a6;
  swift_beginAccess();
  *&v25[v23] = a7;
  v25[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled] = a8;
  v25[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled] = a9;
  v25[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled] = a10;
  *&v25[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus] = a11;
  if (!a13)
  {
    v26 = a7;
    goto LABEL_20;
  }

  if (!a4)
  {
    v47 = v25;
    v49 = 0;
    v27 = qword_2802F3220;
    v26 = a7;
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = [objc_opt_self() sharedPreferences];
    v29 = sub_269057944();
    v30 = [v28 allSiriLanguageCodesForSystemLanguageCode:v29 isGoodFit:&v49];

    if (v30)
    {
      v31 = sub_2690579D4();

      if (v31[2])
      {
        v32 = v31[4];
        v33 = v31[5];

        v34 = v21[1];
        *v21 = v32;
        v21[1] = v33;

        sub_269057C54();
        MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905DF80);
        MEMORY[0x26D62FBC0](a12, a13);

        MEMORY[0x26D62FBC0](0xD00000000000002FLL, 0x800000026905DFD0);
        MEMORY[0x26D62FBC0](v32, v33);

        if (qword_2802F3258 != -1)
        {
          swift_once();
        }

        v35 = sub_269057774();
        __swift_project_value_buffer(v35, qword_2802F3FF8);
        v36 = sub_269057AA4();
        v37 = sub_269057764();
        if (os_log_type_enabled(v37, v36))
        {
LABEL_17:
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v51[0] = v40;
          *v39 = 136315138;
          v41 = sub_269010108(0xD0000000000000B4, 0x800000026905DEC0, v51);

          *(v39 + 4) = v41;
          _os_log_impl(&dword_269002000, v37, v36, "%s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          MEMORY[0x26D6309D0](v40, -1, -1);
          MEMORY[0x26D6309D0](v39, -1, -1);
LABEL_19:

          v25 = v47;
          goto LABEL_20;
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905DF80);
    MEMORY[0x26D62FBC0](a12, a13);

    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905DFA0);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v38 = sub_269057774();
    __swift_project_value_buffer(v38, qword_2802F3FF8);
    v36 = sub_269057A94();
    v37 = sub_269057764();
    if (os_log_type_enabled(v37, v36))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v26 = a7;

LABEL_20:
  v50.receiver = v25;
  v50.super_class = v48;
  v42 = objc_msgSendSuper2(&v50, sel_init);

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

id AssistantConfiguration.init(hasVoiceProfileInCloud:siriEnabled:siriLanguage:siriSharedUserId:siriVoice:recognizeMyVoiceEnabled:voiceTriggerEnabled:siriInCallEnabled:siriDataSharingStatus:systemLanguage:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53[11] = *MEMORY[0x277D85DE8];
  v19 = &v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  *&v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice] = 0;
  v22 = &v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
  *v22 = 0;
  v22[4] = 1;
  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud] = a1;
  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled] = a2;
  swift_beginAccess();
  *v19 = a3;
  v19[1] = a4;
  swift_beginAccess();
  *v20 = a5;
  v20[1] = a6;
  swift_beginAccess();
  v23 = *&v13[v21];
  *&v13[v21] = a7;
  v24 = a7;

  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled] = a8;
  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled] = a9;
  v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled] = a10;
  *&v13[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus] = a11;
  if (!a13)
  {

    goto LABEL_22;
  }

  if (a4)
  {

    goto LABEL_22;
  }

  v51 = 0;
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v25 = [objc_opt_self() sharedPreferences];
  v26 = sub_269057944();
  v27 = [v25 allSiriLanguageCodesForSystemLanguageCode:v26 isGoodFit:&v51];

  if (v27)
  {
    v28 = sub_2690579D4();

    if (v28[2])
    {
      v29 = v13;
      v31 = v28[4];
      v30 = v28[5];

      v32 = v19[1];
      *v19 = v31;
      v19[1] = v30;

      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905DF80);
      MEMORY[0x26D62FBC0](a12, a13);

      MEMORY[0x26D62FBC0](0xD00000000000002FLL, 0x800000026905DFD0);
      MEMORY[0x26D62FBC0](v31, v30);

      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v33 = sub_269057774();
      __swift_project_value_buffer(v33, qword_2802F3FF8);
      v34 = sub_269057AA4();
      v35 = sub_269057764();
      if (os_log_type_enabled(v35, v34))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v53[0] = v37;
        *v36 = 136315138;
        v38 = sub_269010108(0xD0000000000000B4, 0x800000026905DEC0, v53);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_269002000, v35, v34, "%s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x26D6309D0](v37, -1, -1);
        MEMORY[0x26D6309D0](v36, -1, -1);
      }

      else
      {
      }

      v13 = v29;
      goto LABEL_22;
    }
  }

  v39 = v13;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905DF80);
  MEMORY[0x26D62FBC0](a12, a13);

  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905DFA0);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v40 = sub_269057774();
  __swift_project_value_buffer(v40, qword_2802F3FF8);
  v41 = sub_269057A94();
  v42 = sub_269057764();
  if (os_log_type_enabled(v42, v41))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53[0] = v44;
    *v43 = 136315138;
    v45 = sub_269010108(0xD0000000000000B4, 0x800000026905DEC0, v53);

    *(v43 + 4) = v45;
    _os_log_impl(&dword_269002000, v42, v41, "%s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x26D6309D0](v44, -1, -1);
    MEMORY[0x26D6309D0](v43, -1, -1);
  }

  else
  {
  }

  v13 = v39;
LABEL_22:
  v46 = type metadata accessor for AssistantConfiguration();
  v52.receiver = v13;
  v52.super_class = v46;
  v47 = objc_msgSendSuper2(&v52, sel_init);

  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t sub_26902C320()
{
  v1 = v0;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905E000);
  v2 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v3, v4);

  MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905E020);
  v5 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + v5))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v6, v7);

  MEMORY[0x26D62FBC0](0xD000000000000011, 0x800000026905E040);
  v8 = (v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage);
  swift_beginAccess();
  v34 = *v8;
  v35 = v8[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v9 = sub_269057964();
  MEMORY[0x26D62FBC0](v9);

  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905E060);
  v10 = (v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId);
  swift_beginAccess();
  v32 = *v10;
  v33 = v10[1];

  v11 = sub_269057964();
  MEMORY[0x26D62FBC0](v11);

  MEMORY[0x26D62FBC0](0x6F5669726973203BLL, 0xEE00203D20656369);
  v12 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v13 = *(v1 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AB0, &qword_26905AB78);
  v14 = sub_269057964();
  MEMORY[0x26D62FBC0](v14);

  MEMORY[0x26D62FBC0](0x6F5669726973203BLL, 0xEF203D20656D756CLL);
  v15 = (v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume);
  swift_beginAccess();
  v30 = *v15;
  v31 = *(v15 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AB8, &qword_26905AB80);
  v16 = sub_269057964();
  MEMORY[0x26D62FBC0](v16);

  MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905E080);
  v17 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  swift_beginAccess();
  if (*(v1 + v17))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v1 + v17))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v18, v19);

  MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905E0A0);
  v20 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  swift_beginAccess();
  if (*(v1 + v20))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + v20))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v21, v22);

  MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E0C0);
  v23 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  swift_beginAccess();
  if (*(v1 + v23))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v1 + v23))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v24, v25);

  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905E0E0);
  v26 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  swift_beginAccess();
  v29 = *(v1 + v26);
  type metadata accessor for AFSiriDataSharingOptInStatus(0);
  v27 = sub_269057964();
  MEMORY[0x26D62FBC0](v27);

  MEMORY[0x26D62FBC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26902C7C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000017;
    if (a1 == 5)
    {
      v7 = 0x756C6F5669726973;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x62616E4569726973;
    v2 = 0x676E614C69726973;
    v3 = 0x63696F5669726973;
    if (a1 == 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26902C924(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_26902C7C0(*a1);
  v5 = v4;
  if (v3 == sub_26902C7C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_269057DE4();
  }

  return v8 & 1;
}

uint64_t sub_26902C9AC()
{
  v1 = *v0;
  sub_269057E54();
  sub_26902C7C0(v1);
  sub_269057984();

  return sub_269057E84();
}

uint64_t sub_26902CA10()
{
  sub_26902C7C0(*v0);
  sub_269057984();
}

uint64_t sub_26902CA64()
{
  v1 = *v0;
  sub_269057E54();
  sub_26902C7C0(v1);
  sub_269057984();

  return sub_269057E84();
}

uint64_t sub_26902CAC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26902E258();
  *a2 = result;
  return result;
}

uint64_t sub_26902CAF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26902C7C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26902CB3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26902E258();
  *a1 = result;
  return result;
}

uint64_t sub_26902CB7C(uint64_t a1)
{
  v2 = sub_26902E09C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26902CBB8(uint64_t a1)
{
  v2 = sub_26902E09C();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *AssistantConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AC0, &qword_26905AB88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = &v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  *v10 = 0;
  v10[1] = 0;
  v40 = v10;
  v11 = &v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
  *v11 = 0;
  v11[1] = 0;
  v37 = a1;
  v38 = v11;
  v39 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  *&v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice] = 0;
  v12 = &v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26902E09C();
  sub_269057E94();
  if (v2)
  {
    v14 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v17 = v40[1];

    v18 = v14[1];

    type metadata accessor for AssistantConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v6;
    v47 = 0;
    v15 = sub_269057D34();
    v16 = v38;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud] = v15 & 1;
    v47 = 1;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled] = sub_269057D34() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v47 = 2;
    v35 = sub_26902E198(&qword_2802F3AD0);
    sub_269057D54();
    v20 = v46;
    v34 = v45;
    v21 = v40;
    swift_beginAccess();
    v22 = v21[1];
    *v21 = v34;
    v21[1] = v20;

    LOBYTE(v45) = 3;
    sub_269057D54();
    v23 = v43;
    v24 = v44;
    v35 = v5;
    swift_beginAccess();
    v25 = v16[1];
    *v16 = v23;
    v16[1] = v24;

    v42 = 4;
    sub_26902E0F0();
    sub_269057D54();
    v26 = v43;
    v27 = v44;
    sub_26900A408(0, &qword_2802F3AE0, 0x277CCAAC8);
    sub_26900A408(0, &qword_2802F3AE8, 0x277CEF528);
    v28 = sub_269057AE4();
    v34 = v26;
    v29 = v39;
    swift_beginAccess();
    v30 = *&v3[v29];
    *&v3[v29] = v28;

    v42 = 5;
    v31 = sub_269057D24();
    swift_beginAccess();
    *v12 = v31;
    v12[4] = BYTE4(v31) & 1;
    v48 = 6;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled] = sub_269057D34() & 1;
    v48 = 7;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled] = sub_269057D34() & 1;
    v48 = 8;
    v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled] = sub_269057D34() & 1;
    v48 = 9;
    v32 = sub_269057D44();
    (*(v36 + 8))(v9, v35);
    sub_26902E144(v34, v27);
    *&v3[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus] = v32;
    v33 = type metadata accessor for AssistantConfiguration();
    v41.receiver = v3;
    v41.super_class = v33;
    v3 = objc_msgSendSuper2(&v41, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  return v3;
}

uint64_t sub_26902D288(void *a1)
{
  v3 = v1;
  v52 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AF0, &qword_26905AB90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26902E09C();
  sub_269057EA4();
  v11 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  swift_beginAccess();
  v12 = *(v3 + v11);
  v51 = 0;
  sub_269057D74();
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
    swift_beginAccess();
    v14 = *(v3 + v13);
    v50 = 1;
    sub_269057D74();
    v15 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage;
    swift_beginAccess();
    v49 = *(v3 + v15);
    LOBYTE(v48) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    sub_26902E198(&qword_2802F3AF8);
    sub_269057D94();
    v16 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId;
    swift_beginAccess();
    v48 = *(v3 + v16);
    v47 = 3;
    sub_269057D94();
    v17 = (v3 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume);
    swift_beginAccess();
    v18 = *v17;
    v19 = *(v17 + 4);
    v47 = 5;
    v46 = v19;
    sub_269057D64();
    v20 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
    swift_beginAccess();
    v21 = *(v3 + v20);
    v46 = 6;
    sub_269057D74();
    v22 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
    swift_beginAccess();
    v23 = *(v3 + v22);
    v45 = 7;
    sub_269057D74();
    v24 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
    swift_beginAccess();
    v25 = *(v3 + v24);
    v44 = 8;
    sub_269057D74();
    v26 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
    swift_beginAccess();
    v27 = *(v3 + v26);
    if (!v27)
    {
LABEL_6:
      v36 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
      swift_beginAccess();
      v37 = *(v3 + v36);
      v42 = 9;
      sub_269057D84();
      goto LABEL_7;
    }

    v28 = objc_opt_self();
    v43[0] = 0;
    v29 = v27;
    v30 = [v28 archivedDataWithRootObject:v29 requiringSecureCoding:0 error:v43];
    v31 = v43[0];
    if (v30)
    {
      v41 = v29;
      v32 = sub_2690576B4();
      v34 = v33;

      v43[0] = v32;
      v43[1] = v34;
      v42 = 4;
      sub_26902E204();
      sub_269057D94();

      sub_26902E144(v32, v34);
      goto LABEL_6;
    }

    v35 = v31;
    sub_269057674();

    swift_willThrow();
  }

LABEL_7:
  result = (*(v6 + 8))(v9, v5);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static AssistantConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_2802F3A50 = a1;
  return result;
}

void sub_26902D950(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_269057944();
  [a1 encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_269057944();
  [a1 encodeBool:v7 forKey:v8];

  v9 = (v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage);
  swift_beginAccess();
  if (v9[1])
  {
    v10 = *v9;

    v11 = sub_269057944();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_269057944();
  [a1 encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = (v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId);
  swift_beginAccess();
  if (v13[1])
  {
    v14 = *v13;

    v15 = sub_269057944();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_269057944();
  [a1 encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  v17 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = sub_269057944();
  [a1 encodeObject:v18 forKey:v19];

  v20 = (v1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume);
  swift_beginAccess();
  if ((v20[1] & 1) == 0)
  {
    v21 = *v20;
    v22 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v23) = v21;
    v24 = [v22 initWithFloat_];
    v25 = sub_269057944();
    [a1 encodeObject:v24 forKey:v25];
  }

  v26 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  swift_beginAccess();
  v27 = *(v1 + v26);
  v28 = sub_269057944();
  [a1 encodeBool:v27 forKey:v28];

  v29 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  swift_beginAccess();
  v30 = *(v1 + v29);
  v31 = sub_269057944();
  [a1 encodeBool:v30 forKey:v31];

  v32 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  swift_beginAccess();
  v33 = *(v1 + v32);
  v34 = sub_269057944();
  [a1 encodeBool:v33 forKey:v34];

  v35 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  swift_beginAccess();
  v36 = *(v1 + v35);
  v37 = sub_269057944();
  [a1 encodeInteger:v36 forKey:v37];
}

id AssistantConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26902E2A4(a1);

  return v4;
}

id AssistantConfiguration.init(coder:)(void *a1)
{
  v2 = sub_26902E2A4(a1);

  return v2;
}

id AssistantConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssistantConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssistantConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *sub_26902E000@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AssistantConfiguration());
  result = AssistantConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_26902E09C()
{
  result = qword_2802F3AC8;
  if (!qword_2802F3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3AC8);
  }

  return result;
}

unint64_t sub_26902E0F0()
{
  result = qword_2802F3AD8;
  if (!qword_2802F3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3AD8);
  }

  return result;
}

uint64_t sub_26902E144(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26902E198(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F3548, &unk_269059F70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26902E204()
{
  result = qword_2802F3B00;
  if (!qword_2802F3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3B00);
  }

  return result;
}

uint64_t sub_26902E258()
{
  v0 = sub_269057D14();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

id sub_26902E2A4(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  *&v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice] = 0;
  v7 = &v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
  *v7 = 0;
  v7[4] = 1;
  v8 = sub_269057944();
  v39 = [a1 decodeIntegerForKey_];

  v9 = sub_269057944();
  v35 = [a1 decodeBoolForKey_];

  v10 = sub_269057944();
  v34 = [a1 decodeBoolForKey_];

  v11 = sub_269057944();
  v38 = [a1 decodeBoolForKey_];

  v12 = sub_269057944();
  v37 = [a1 decodeBoolForKey_];

  v13 = sub_269057944();
  v36 = [a1 decodeBoolForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3B88, &qword_26905AD68);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269059EE0;
  v15 = sub_26900A408(0, &unk_2802F3B90, 0x277CCACA8);
  *(v14 + 32) = v15;
  sub_269057B94();

  if (v44)
  {
    v16 = swift_dynamicCast();
    v17 = v41;
    if (!v16)
    {
      v17 = 0;
    }

    v33 = v17;
    if (v16)
    {
      v18 = v42;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    sub_26902F628(v43);
    v33 = 0;
    v18 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_269059EE0;
  *(v19 + 32) = v15;
  sub_269057B94();

  if (v44)
  {
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v41;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v42;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_26902F628(v43);
    v21 = 0;
    v22 = 0;
  }

  sub_26900A408(0, &qword_2802F3AE8, 0x277CEF528);
  v23 = sub_269057B84();
  sub_26900A408(0, &unk_2802F3BA0, 0x277CCABB0);
  v24 = sub_269057B84();
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud] = v35;
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled] = v34;
  swift_beginAccess();
  v25 = v4[1];
  *v4 = v33;
  v4[1] = v18;

  swift_beginAccess();
  v26 = v5[1];
  *v5 = v21;
  v5[1] = v22;

  swift_beginAccess();
  v27 = *&v2[v6];
  *&v2[v6] = v23;
  v28 = v23;

  if (v24)
  {
    v29 = v24;
    [v29 floatValue];
    v31 = v30;
  }

  else
  {

    v31 = 0;
  }

  swift_beginAccess();
  *v7 = v31;
  v7[4] = v24 == 0;
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled] = v38;
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled] = v37;
  v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled] = v36;
  *&v2[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus] = v39;
  v40.receiver = v2;
  v40.super_class = type metadata accessor for AssistantConfiguration();
  return objc_msgSendSuper2(&v40, sel_init);
}

uint64_t keypath_get_8Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

id sub_26902E884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_26902E8F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_26902E94C(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_26902EA98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26902EAF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_26902EB44@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_2802F3A50;
  return result;
}

uint64_t sub_26902EB90(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_2802F3A50 = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistantConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssistantConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26902F524()
{
  result = qword_2802F3B70;
  if (!qword_2802F3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3B70);
  }

  return result;
}

unint64_t sub_26902F57C()
{
  result = qword_2802F3B78;
  if (!qword_2802F3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3B78);
  }

  return result;
}

unint64_t sub_26902F5D4()
{
  result = qword_2802F3B80;
  if (!qword_2802F3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3B80);
  }

  return result;
}

uint64_t sub_26902F628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E30, &unk_26905AD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_26902F71C()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  result = [objc_allocWithZone(SRSVTPreferences) init];
  qword_2802F5110 = result;
  return result;
}

id sub_26902F780()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    qword_2802F5118 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26902F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269057714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269057944();
  v12 = objc_opt_self();
  v13 = [v12 bundleWithIdentifier_];

  if (!v13)
  {
    v13 = [v12 mainBundle];
  }

  v14 = [objc_opt_self() currentLocale];
  sub_269057704();

  sub_2690576F4();
  (*(v7 + 8))(v10, v6);
  if (qword_2802F3238 != -1)
  {
    swift_once();
  }

  v15 = qword_2802F5118;
  v16 = sub_269057944();
  v17 = v13;
  v18 = sub_269057944();

  v19 = [v15 localizedStringForKey:v16 gender:a3 table:0 bundle:v17 languageCode:v18];

  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = sub_269057954();
  v22 = v21;

  if (v20 == a1 && v22 == a2)
  {

LABEL_9:

    return 0;
  }

  v24 = sub_269057DE4();

  if ((v24 & 1) == 0)
  {
    return v20;
  }

  return 0;
}

uint64_t sub_26902FAA0()
{
  v0 = qword_2802F3230;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802F5110;
  v2 = sub_269057944();
  [v1 compactVoiceTriggerEnabled_];

  sub_26900BE9C();
  v3 = sub_269057BF4();

  if (v3)
  {
    sub_269057BF4();
  }

  v4 = sub_269057944();
  v5 = [v1 localizedTriggerPhraseForLanguageCode_];

  sub_269057954();
  v6 = sub_269057944();
  v7 = [v1 localizedCompactTriggerPhraseForLanguageCode_];

  sub_269057954();
  sub_269057BE4();

  v8 = sub_269057BE4();

  return v8;
}

uint64_t sub_26902FDE4(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel);
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
  v17 = v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController;
  v18 = *(v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController);
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
    v34(v36, 1, ObjectType, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  return result;
}

void (*sub_26902FFB4(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel;
  *(v3 + 464) = v1;
  *(v3 + 472) = v4;
  swift_beginAccess();
  return sub_26903003C;
}

void sub_26903003C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[58];
    v5 = *(v4 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController);
    if (v5)
    {
      v6 = (v4 + v3[59]);
      v7 = *(v4 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController + 8);
      v8 = *(v4 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController);
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
      v29(v3 + 52, 1, ObjectType, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + 52);
    }
  }

  free(v3);
}

char *sub_26903019C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSource];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSourceWriter];
  *v14 = a3;
  *(v14 + 1) = a4;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 80);
  v17 = a1;
  v18 = a3;
  v160 = ObjectType;
  v161 = a2;
  v157 = v6;
  v6[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewStyle] = v16(ObjectType, a2);
  v19 = 0x800000026905E230;
  if (qword_2802F3248 != -1)
  {
LABEL_68:
    swift_once();
  }

  v163 = byte_2802F5130;
  v20 = sub_269051B18(byte_2802F5130);
  *&v179[0] = 0xD000000000000015;
  *(&v179[0] + 1) = v19;
  MEMORY[0x26D62FBC0](v20);

  v21 = v179[0];
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
  *&v22[16 * v24 + 32] = v21;
  v158 = v18;
  if (v25 < (v24 + 2))
  {
    v22 = sub_26904DCD8((v23 > 1), v24 + 2, 1, v22);
  }

  *(v22 + 2) = v24 + 2;
  v27 = &v22[16 * v26];
  *(v27 + 4) = 0xD000000000000015;
  *(v27 + 5) = v19;
  v28 = (v22 + 40);
  v29 = -v24;
  v18 = -1;
  v159 = a5;
  v162 = v17;
  while (v29 + v18 != 1)
  {
    if (++v18 >= *(v22 + 2))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v30 = v28 + 2;
    v31 = *(v28 - 1);
    v32 = *v28;

    v33 = sub_26902F7F4(v31, v32, 0);
    v35 = v34;

    v28 = v30;
    if (v35)
    {

      v19 = v35;
      goto LABEL_21;
    }
  }

  v36 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000015, v19);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v37 = *(&v179[0] + 1);
  v38 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v39 = sub_269057774();
  __swift_project_value_buffer(v39, qword_2802F3FF8);
  v40 = sub_269057A94();
  v41 = 0xD00000000000003BLL;
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v42 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v42 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v38, v37);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v36 = *(&v179[0] + 1);
    v41 = *&v179[0];
  }

  v43 = sub_269057764();
  if (os_log_type_enabled(v43, v40))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v178[0] = v45;
    *v44 = 136315138;
    v46 = sub_269010108(v41, v36, v178);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_269002000, v43, v40, "%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x26D6309D0](v45, -1, -1);
    MEMORY[0x26D6309D0](v44, -1, -1);
  }

  else
  {
  }

  v33 = 0xD000000000000015;
LABEL_21:
  sub_2690519EC(v163);
  *&v179[0] = v33;
  *(&v179[0] + 1) = v19;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v17 = sub_26900BE9C();
  a5 = MEMORY[0x277D837D0];
  v47 = sub_269057BE4();
  v49 = v48;

  v50 = sub_2690519EC(v163);
  *&v179[0] = v47;
  *(&v179[0] + 1) = v49;
  *&v178[0] = 0xD000000000000014;
  *(&v178[0] + 1) = 0x800000026905BEA0;
  *&v164 = v50;
  *(&v164 + 1) = v51;
  v52 = sub_269057BE4();
  v155 = v53;
  v156 = v52;

  v19 = 0x800000026905E250;
  v54 = sub_269051B18(v163);
  *&v179[0] = 0xD000000000000016;
  *(&v179[0] + 1) = 0x800000026905E250;
  MEMORY[0x26D62FBC0](v54);

  v55 = v179[0];
  v56 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v58 = *(v56 + 2);
  v57 = *(v56 + 3);
  v59 = v57 >> 1;
  v60 = v58 + 1;
  if (v57 >> 1 <= v58)
  {
    v56 = sub_26904DCD8((v57 > 1), v58 + 1, 1, v56);
    v57 = *(v56 + 3);
    v59 = v57 >> 1;
  }

  *(v56 + 2) = v60;
  *&v56[16 * v58 + 32] = v55;
  if (v59 < (v58 + 2))
  {
    v56 = sub_26904DCD8((v57 > 1), v58 + 2, 1, v56);
  }

  *(v56 + 2) = v58 + 2;
  v61 = &v56[16 * v60];
  *(v61 + 4) = 0xD000000000000016;
  *(v61 + 5) = 0x800000026905E250;
  v62 = (v56 + 40);
  v63 = -v58;
  v18 = -1;
  while (v63 + v18 != 1)
  {
    if (++v18 >= *(v56 + 2))
    {
      goto LABEL_66;
    }

    v64 = v62 + 2;
    v65 = *(v62 - 1);
    v66 = *v62;

    v67 = sub_26902F7F4(v65, v66, 0);
    v69 = v68;

    v62 = v64;
    if (v69)
    {

      v19 = v69;
      goto LABEL_40;
    }
  }

  v70 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E250);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v71 = *(&v179[0] + 1);
  v72 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v73 = sub_269057774();
  __swift_project_value_buffer(v73, qword_2802F3FF8);
  v74 = sub_269057A94();
  v75 = 0xD00000000000003BLL;
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v76 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v76 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v72, v71);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v70 = *(&v179[0] + 1);
    v75 = *&v179[0];
  }

  v77 = sub_269057764();
  if (os_log_type_enabled(v77, v74))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v178[0] = v79;
    *v78 = 136315138;
    v80 = sub_269010108(v75, v70, v178);

    *(v78 + 4) = v80;
    _os_log_impl(&dword_269002000, v77, v74, "%s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    MEMORY[0x26D6309D0](v79, -1, -1);
    MEMORY[0x26D6309D0](v78, -1, -1);
  }

  else
  {
  }

  v67 = 0xD000000000000016;
LABEL_40:
  sub_2690519EC(v163);
  *&v179[0] = v67;
  *(&v179[0] + 1) = v19;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v81 = sub_269057BE4();
  v83 = v82;

  v84 = sub_2690519EC(v163);
  *&v179[0] = v81;
  *(&v179[0] + 1) = v83;
  *&v178[0] = 0xD000000000000014;
  *(&v178[0] + 1) = 0x800000026905BEA0;
  *&v164 = v84;
  *(&v164 + 1) = v85;
  v86 = sub_269057BE4();
  v153 = v87;
  v154 = v86;

  (*(v161 + 32))(&v183, v160);
  v88 = 0x800000026905E270;
  v89 = sub_269051B18(v163);
  *&v179[0] = 0xD000000000000014;
  *(&v179[0] + 1) = 0x800000026905E270;
  MEMORY[0x26D62FBC0](v89);

  v90 = v179[0];
  v91 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v93 = *(v91 + 2);
  v92 = *(v91 + 3);
  v94 = v92 >> 1;
  v95 = v93 + 1;
  if (v92 >> 1 <= v93)
  {
    v91 = sub_26904DCD8((v92 > 1), v93 + 1, 1, v91);
    v92 = *(v91 + 3);
    v94 = v92 >> 1;
  }

  *(v91 + 2) = v95;
  *&v91[16 * v93 + 32] = v90;
  v19 = v93 + 2;
  if (v94 < (v93 + 2))
  {
    v91 = sub_26904DCD8((v92 > 1), v93 + 2, 1, v91);
  }

  *(v91 + 2) = v19;
  v96 = &v91[16 * v95];
  *(v96 + 4) = 0xD000000000000014;
  *(v96 + 5) = 0x800000026905E270;
  v97 = (v91 + 40);
  v98 = -v93;
  v18 = -1;
  while (v98 + v18 != 1)
  {
    if (++v18 >= *(v91 + 2))
    {
      goto LABEL_67;
    }

    v99 = v97 + 2;
    v100 = *(v97 - 1);
    v101 = *v97;

    v102 = sub_26902F7F4(v100, v101, 0);
    v19 = v103;

    v97 = v99;
    if (v19)
    {

      v88 = v19;
      goto LABEL_59;
    }
  }

  v104 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905E270);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v105 = *(&v179[0] + 1);
  v106 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v107 = sub_269057774();
  __swift_project_value_buffer(v107, qword_2802F3FF8);
  v108 = sub_269057A94();
  v109 = 0xD00000000000003BLL;
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v110 = HIBYTE(v105) & 0xF;
  if ((v105 & 0x2000000000000000) == 0)
  {
    v110 = v106 & 0xFFFFFFFFFFFFLL;
  }

  if (v110)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v106, v105);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v104 = *(&v179[0] + 1);
    v109 = *&v179[0];
  }

  v111 = sub_269057764();
  if (os_log_type_enabled(v111, v108))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *&v178[0] = v113;
    *v112 = 136315138;
    v114 = sub_269010108(v109, v104, v178);

    *(v112 + 4) = v114;
    _os_log_impl(&dword_269002000, v111, v108, "%s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    MEMORY[0x26D6309D0](v113, -1, -1);
    MEMORY[0x26D6309D0](v112, -1, -1);
  }

  else
  {
  }

  v102 = 0xD000000000000014;
LABEL_59:
  sub_2690519EC(v163);
  *&v179[0] = v102;
  *(&v179[0] + 1) = v88;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v115 = sub_269057BE4();
  v117 = v116;

  v118 = sub_2690519EC(v163);
  *&v179[0] = v115;
  *(&v179[0] + 1) = v117;
  *&v178[0] = 0xD000000000000014;
  *(&v178[0] + 1) = 0x800000026905BEA0;
  *&v164 = v118;
  *(&v164 + 1) = v119;
  v120 = sub_269057BE4();
  v122 = v121;

  v123 = &v157[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel];
  *v123 = 0u;
  *(v123 + 2) = v156;
  *(v123 + 3) = v155;
  *(v123 + 4) = 0;
  *(v123 + 40) = 0u;
  *(v123 + 7) = 0xE000000000000000;
  *(v123 + 8) = 0;
  *(v123 + 9) = v154;
  *(v123 + 10) = v153;
  *(v123 + 88) = 0u;
  *(v123 + 104) = 0u;
  *(v123 + 15) = v120;
  *(v123 + 16) = v122;
  *(v123 + 136) = 0u;
  v123[152] = 2;
  v124 = *v182;
  *(v123 + 39) = *&v182[3];
  *(v123 + 153) = v124;
  *(v123 + 20) = 0;
  *(v123 + 21) = 0;
  *(v123 + 183) = 0;
  *(v123 + 22) = 0;
  v125 = v180;
  v123[191] = v181;
  *(v123 + 187) = v125;
  *(v123 + 24) = 0;
  *(v123 + 25) = 0;
  *&v157[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_page] = v159;
  v126 = *&v158[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8];
  if (v126)
  {
    v127 = &v157[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption];
    *v127 = *&v158[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage];
    *(v127 + 1) = v126;

    v128 = 0x2802F3000;
    v129 = v162;
  }

  else
  {
    v130 = *(v161 + 88);

    v129 = v162;
    v131 = v130(v160, v161);
    v128 = 0x2802F3000uLL;
    if (!v132)
    {
      v131 = (*(v161 + 96))(v160, v161);
    }

    v133 = &v157[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption];
    *v133 = v131;
    v133[1] = v132;
  }

  v177.receiver = v157;
  v177.super_class = type metadata accessor for VoiceSelectionPresenter();

  v134 = objc_msgSendSuper2(&v177, sel_init, a5, v17, v17, v17);
  v135 = &v134[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel];
  v136 = v134[OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewStyle];
  swift_beginAccess();
  v178[0] = *v135;
  v137 = v135[1];
  v138 = v135[2];
  v139 = v135[4];
  v178[3] = v135[3];
  v178[4] = v139;
  v178[1] = v137;
  v178[2] = v138;
  v140 = v135[5];
  v141 = v135[6];
  v142 = v135[8];
  v178[7] = v135[7];
  v178[8] = v142;
  v178[5] = v140;
  v178[6] = v141;
  v143 = v135[9];
  v144 = v135[10];
  v145 = v135[12];
  v178[11] = v135[11];
  v178[12] = v145;
  v178[9] = v143;
  v178[10] = v144;
  v173 = v135[9];
  v174 = v135[10];
  v175 = v135[11];
  v176 = v135[12];
  v169 = v135[5];
  v170 = v135[6];
  v171 = v135[7];
  v172 = v135[8];
  v165 = v135[1];
  v166 = v135[2];
  v167 = v135[3];
  v168 = v135[4];
  v164 = *v135;
  v146 = v134;
  sub_269009E3C(v178, v179);
  v147 = sub_26903132C(v136, &v164);
  v149 = v148;

  v179[10] = v174;
  v179[11] = v175;
  v179[12] = v176;
  v179[6] = v170;
  v179[7] = v171;
  v179[8] = v172;
  v179[9] = v173;
  v179[2] = v166;
  v179[3] = v167;
  v179[4] = v168;
  v179[5] = v169;
  v179[0] = v164;
  v179[1] = v165;
  sub_269009EE0(v179);
  v150 = &v146[*(v128 + 3112)];
  v151 = *v150;
  *v150 = v147;
  *(v150 + 1) = v149;

  return v146;
}

char *sub_26903132C(char a1, _OWORD *a2)
{
  v3 = a2[11];
  v76[10] = a2[10];
  v76[11] = v3;
  v76[12] = a2[12];
  v4 = a2[7];
  v76[6] = a2[6];
  v76[7] = v4;
  v5 = a2[9];
  v76[8] = a2[8];
  v76[9] = v5;
  v6 = a2[3];
  v76[2] = a2[2];
  v76[3] = v6;
  v7 = a2[5];
  v76[4] = a2[4];
  v76[5] = v7;
  v8 = a2[1];
  v76[0] = *a2;
  v76[1] = v8;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0xD000000000000030;
      v10 = 0x800000026905BF90;
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD000000000000033, 0x800000026905E290);
      LOBYTE(v62[0]) = 1;
      sub_269057CB4();
      MEMORY[0x26D62FBC0](0x6C696E202CLL, 0xE500000000000000);
      v11 = v63;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v12 = sub_269057774();
      __swift_project_value_buffer(v12, qword_2802F3FF8);
      v13 = sub_269057A94();
      *&v63 = 0xD000000000000030;
      *(&v63 + 1) = 0x800000026905BF90;
      v14 = HIBYTE(*(&v11 + 1)) & 0xFLL;
      if ((*(&v11 + 1) & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v62[0] = 32;
        v62[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](v11, *(&v11 + 1));
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v10 = *(&v63 + 1);
        v9 = v63;
      }

      v15 = sub_269057764();
      if (os_log_type_enabled(v15, v13))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v62[0] = v17;
        *v16 = 136315138;
        v18 = sub_269010108(v9, v10, v62);

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
      v29 = a2[11];
      v73 = a2[10];
      v74 = v29;
      v75 = a2[12];
      v30 = a2[7];
      v69 = a2[6];
      v70 = v30;
      v31 = a2[9];
      v71 = a2[8];
      v72 = v31;
      v32 = a2[3];
      v65 = a2[2];
      v66 = v32;
      v33 = a2[5];
      v67 = a2[4];
      v68 = v33;
      v34 = a2[1];
      v63 = *a2;
      v64 = v34;
      v35 = (v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption);
      v36 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption);
      v37 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption + 8);
      v38 = objc_allocWithZone(type metadata accessor for VoiceSelectionProxCardController());
      sub_269009E3C(v76, v62);

      v28 = sub_2690085B8(&v63);
      *&v28[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_delegate + 8] = &off_2879A7D90;
      swift_unknownObjectWeakAssign();
      v40 = *v35;
      v39 = v35[1];
      v41 = v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSource;
      v42 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSource);
      v43 = *(v41 + 8);
      ObjectType = swift_getObjectType();
      v45 = *(v43 + 168);

      v46 = v42;
      v47 = v45(ObjectType, v43);

      if (v47)
      {
        v48 = [v47 languageCode];

        if (v48)
        {
          v49 = sub_269057954();
          v51 = v50;

          if (v40 == v49 && v39 == v51)
          {
          }

          else
          {
            v52 = sub_269057DE4();

            if ((v52 & 1) == 0)
            {
              return v28;
            }
          }

          v53 = *v41;
          v54 = *(v41 + 8);
          v55 = swift_getObjectType();
          v56 = *(v54 + 168);
          v57 = v53;
          v58 = v56(v55, v54);

          v59 = *&v28[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection];
          *&v28[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection] = v58;
          v60 = v58;

          sub_269008414();
          return v28;
        }
      }
    }
  }

  else
  {
    v19 = a2[11];
    v73 = a2[10];
    v74 = v19;
    v75 = a2[12];
    v20 = a2[7];
    v69 = a2[6];
    v70 = v20;
    v21 = a2[9];
    v71 = a2[8];
    v72 = v21;
    v22 = a2[3];
    v65 = a2[2];
    v66 = v22;
    v23 = a2[5];
    v67 = a2[4];
    v68 = v23;
    v24 = a2[1];
    v63 = *a2;
    v64 = v24;
    v25 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption);
    v26 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_languageOption + 8);
    objc_allocWithZone(type metadata accessor for VoiceSelectionWelcomeController());
    sub_269009E3C(v76, v62);

    sub_26901342C(&v63, v25, v26);
    v28 = v27;
    *&v27[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_delegate + 8] = &off_2879A7D90;
    swift_unknownObjectWeakAssign();
  }

  return v28;
}

id sub_2690318C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceSelectionPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2690319F8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_viewModel);
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

void (*sub_269031ACC(uint64_t **a1))(void *a1)
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
  v2[4] = sub_26902FFB4(v2);
  return sub_26901AFE8;
}

void *sub_269031B3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_presentingViewController + 8);
  v3 = v1;
  return v1;
}

uint64_t sub_269031B84(void *a1)
{
  v2 = v1;
  v4 = 0xD00000000000001BLL;
  v5 = 0x800000026905E300;
  sub_269057C54();

  v21[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AB0, &qword_26905AB78);
  v7 = sub_269057964();
  MEMORY[0x26D62FBC0](v7);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  v22 = 0xD00000000000001BLL;
  v23 = 0x800000026905E300;
  v10 = (0x800000026905E320 >> 56) & 0xF;
  if ((0x800000026905E320 & 0x2000000000000000) == 0)
  {
    v10 = 22;
  }

  if (v10)
  {
    v21[0] = 32;
    v21[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E320);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v4 = v22;
    v5 = v23;
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315138;
    v14 = sub_269010108(v4, v5, v21);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }

  if (a1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_dataSourceWriter);
    v16 = *(v15 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice);
    *(v15 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice) = a1;
    v17 = v6;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_page);

    sub_26900E6C8(v20);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_269031E3C()
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

uint64_t SiriSetupEnrollmentResult.voiceProfileId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SiriSetupEnrollmentResult.voiceProfileId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_269031FD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_26903202C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

SiriSetup::SiriSetupEnrollmentMode_optional __swiftcall SiriSetupEnrollmentMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269057D14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriSetupEnrollmentMode.rawValue.getter()
{
  v1 = 0x6464754220534F69;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0x7453206B63697551;
  }

  if (*v0)
  {
    v1 = 0x754220534F63616DLL;
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

unint64_t sub_269032194()
{
  result = qword_2802F3C50;
  if (!qword_2802F3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3C50);
  }

  return result;
}

uint64_t sub_2690321E8()
{
  v1 = *v0;
  sub_269057E54();
  sub_269057984();

  return sub_269057E84();
}

uint64_t sub_2690322C4()
{
  *v0;
  *v0;
  *v0;
  sub_269057984();
}

uint64_t sub_26903238C()
{
  v1 = *v0;
  sub_269057E54();
  sub_269057984();

  return sub_269057E84();
}

void sub_269032470(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x6464754220534F69;
  v4 = 0x800000026905BBF0;
  v5 = 0xD00000000000001ALL;
  if (*v1 != 2)
  {
    v5 = 0x7453206B63697551;
    v4 = 0xEB00000000747261;
  }

  if (*v1)
  {
    v3 = 0x754220534F63616DLL;
    v2 = 0xEB00000000796464;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for SiriSetupEnrollmentMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriSetupEnrollmentMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_269032658(__int128 *a1)
{
  v2 = a1[11];
  v36 = a1[10];
  v37 = v2;
  v38 = a1[12];
  v3 = a1[7];
  v32 = a1[6];
  v33 = v3;
  v4 = a1[9];
  v34 = a1[8];
  v35 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  v6 = a1[5];
  v30 = a1[4];
  v31 = v6;
  v7 = a1[1];
  v26 = *a1;
  v27 = v7;
  *&v1[OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_orbView] = 0;
  v8 = type metadata accessor for SiriSetupProxCardView();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_constraintsSpecified] = 0;
  v10 = objc_allocWithZone(type metadata accessor for OrbContainerView());
  *&v9[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView] = sub_269012CF0(0);
  v9[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbOverTitle] = 1;
  v25.receiver = v9;
  v25.super_class = v8;
  v11 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView;
  [v11 addSubview_];
  [*&v11[v12] intrinsicContentSize];
  v14 = v13;
  [v11 layoutMargins];
  [v11 setLayoutMargins_];
  v24.receiver = v1;
  v24.super_class = type metadata accessor for SuccessProxCardController();
  v16 = objc_msgSendSuper2(&v24, sel_initWithContentView_, v11);
  v17 = sub_269057944();
  [v16 setTitle_];

  if (*(&v28 + 1))
  {

    v18 = sub_269057944();
  }

  else
  {
    v18 = 0;
  }

  [v16 setSubtitle_];

  [v16 setDismissalType_];
  v19 = *&v11[v12];
  v20 = *&v16[OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_orbView];
  *&v16[OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_orbView] = v19;
  v21 = v19;

  v23[10] = v36;
  v23[11] = v37;
  v23[12] = v38;
  v23[6] = v32;
  v23[7] = v33;
  v23[8] = v34;
  v23[9] = v35;
  v23[2] = v28;
  v23[3] = v29;
  v23[4] = v30;
  v23[5] = v31;
  v23[0] = v26;
  v23[1] = v27;
  sub_269032C58(v23);

  sub_269009EE0(&v26);
  return v16;
}

void sub_2690328F4(unint64_t a1)
{
  v2 = v1;
  v4 = [v2 actions];
  v5 = sub_26900A408(0, &qword_2802F33F8, 0x277D432F0);
  v6 = sub_2690579D4();

  if (v6 >> 62)
  {
    if (sub_269057CD4())
    {
LABEL_3:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D62FE90](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_26:
          swift_once();
LABEL_9:
          v12 = 0xD000000000000015;
          v13 = sub_269057774();
          __swift_project_value_buffer(v13, qword_2802F3FF8);
          v14 = sub_269057AA4();
          v22 = 0xD000000000000015;
          v23 = v5;
          if ((a1 & 0x2F00000000000000) != 0x2000000000000000)
          {
            v21[0] = 32;
            v21[1] = 0xE100000000000000;
            MEMORY[0x26D62FBC0](0xD000000000000015, a1 | 0x8000000000000000);
            MEMORY[0x26D62FBC0](32, 0xE100000000000000);

            v12 = v22;
            v5 = v23;
          }

          v15 = sub_269057764();
          if (os_log_type_enabled(v15, v14))
          {
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            v21[0] = v17;
            *v16 = 136315138;
            v18 = sub_269010108(v12, v5, v21);

            *(v16 + 4) = v18;
            _os_log_impl(&dword_269002000, v15, v14, "%s", v16, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v17);
            MEMORY[0x26D6309D0](v17, -1, -1);
            MEMORY[0x26D6309D0](v16, -1, -1);
          }

          else
          {
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v19 = *&v2[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_page];

            sub_26900E6C8(v20);

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = v7;

      v9 = a1;
      v10 = sub_269057BA4();

      if ((v10 & 1) == 0)
      {
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v2 = Strong;
      v5 = 0x800000026905D1F0;
      a1 = "SuccessWelcomeController";
      if (qword_2802F3258 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

void sub_269032C58(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 64);
  if (v3 && v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
    sub_26900A408(0, &unk_2802F3410, 0x277D43308);

    v6 = sub_2690542F4();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    v8 = v2;
    v9 = sub_269057944();

    v22 = sub_269033254;
    v23 = v7;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_26904BBEC;
    v21 = &block_descriptor_14_0;
    v10 = _Block_copy(&v18);
    v11 = [objc_opt_self() actionWithTitle:v9 customColors:v6 handler:v10];

    _Block_release(v10);

    v12 = [v8 addAction_];
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  v14 = v2;
  v15 = sub_269057944();
  v22 = sub_269033234;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_26904BBEC;
  v21 = &block_descriptor_6;
  v16 = _Block_copy(&v18);
  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];

  _Block_release(v16);

  [v14 setDismissButtonAction_];
}

uint64_t sub_269032ED4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = 0x800000026905BD40;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v3 = 0xD000000000000015;
    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057AA4();
    v13 = 0xD000000000000015;
    v14 = 0x800000026905BD40;
    if (("SuccessProxCardController" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v12[0] = 32;
      v12[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905E370);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v3 = v13;
      v2 = v14;
    }

    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v9 = sub_269010108(v3, v2, v12);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_page);

      sub_26900E964(v11);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}