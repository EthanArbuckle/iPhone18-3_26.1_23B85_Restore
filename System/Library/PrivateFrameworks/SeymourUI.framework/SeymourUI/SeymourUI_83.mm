void sub_20BE86284()
{
  v0 = sub_20C132E94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_20C13B534();
    sub_20C13BB64();
    (*(v5 + 8))(v7, v4);
    v10 = v9;
    sub_20C132E84();
    type metadata accessor for RootViewController();
    sub_20BE8F2DC(&qword_27C76FCE8, type metadata accessor for RootViewController);
    sub_20C139274();
    (*(v1 + 8))(v3, v0);
  }
}

void sub_20BE864B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BE87F94();
  }
}

uint64_t sub_20BE8650C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButtonPresenter);
    v5 = result;
    v6 = sub_20C13CDF4();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v4;

    sub_20B6383D0(0, 0, v2, &unk_20C1814C0, v7);
  }

  return result;
}

void sub_20BE86658(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a4)
    {
      if (a3)
      {
        if (!a6)
        {
          v16 = a4;
          sub_20BF9A428(v16, a1, a2);
          v17 = v15;
          v15 = v16;
LABEL_12:

          goto LABEL_13;
        }

LABEL_8:
        v17 = a6;
        v19 = [v15 viewIfLoaded];
        v20 = [v19 window];

        if (v20)
        {

          if (a3)
          {
            ObjectType = swift_getObjectType();
            v22 = *&v15[OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingMessageViewControllerHandler];
            v23 = *(a7 + 16);
            v24 = v22;
            v23(v22, ObjectType, a7);
            v17 = v17;
            sub_20BF9A630(v17, a1, a2);
          }

          else
          {
            v25 = *(*&v15[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48);
            sub_20C0C1FA8(a1, a2);

            sub_20BF9AD74(v17, a7, a1, a2);
          }
        }

        goto LABEL_12;
      }

      v18 = a4;
      sub_20BF99484(a1, a2, 0, 0);
      sub_20BF9B18C(v18, a5, a1, a2);
      sub_20BE8A81C();
    }

    if (!a6)
    {
LABEL_13:

      return;
    }

    goto LABEL_8;
  }
}

void sub_20BE86844(unsigned __int8 a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20BE80BD0(a1);
  }
}

uint64_t sub_20BE868DC()
{
  if (!*(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability))
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability) = 1;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator), v1);
  return (*(v2 + 48))(v1, v2);
}

id sub_20BE86950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for RootViewController();
  v26.receiver = v0;
  v26.super_class = v4;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() systemBackgroundColor];
    [v6 setBackgroundColor_];

    sub_20BE80628();
    sub_20BE879F8();
    sub_20B7959FC(0);
    sub_20BAD5BC8();
    v8 = [objc_opt_self() mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    Width = CGRectGetWidth(v28);
    sub_20B755B8C(v27, Width);
    sub_20B5F320C(v27);
    v18 = *v27;
    v19 = [v0 navigationItem];
    [v19 setLargeTitleInsets_];

    sub_20C13CDB4();
    v20 = sub_20C13CDF4();
    (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
    sub_20C13CDA4();
    v21 = v0;
    v22 = sub_20C13CD94();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_20B6383D0(0, 0, v3, &unk_20C180FA0, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20BE86C14(char a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for RootViewController();
  objc_msgSendSuper2(&v19, sel_viewWillAppear_, a1 & 1);
  if (*&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_accountButton])
  {
    v4 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_avatarSettingsProvider + 24];
    v5 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_avatarSettingsProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_avatarSettingsProvider], v4);
    (*(v5 + 8))(&v14, v4, v5);
    v6 = v14;
    if (v14 == 1)
    {
      v6 = 0;
    }

    else
    {
      v7 = v14;
      sub_20B8FD958(v6);
    }

    sub_20B52EF60(v6);
  }

  v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability] = 1;
  v8 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator + 24];
  v9 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentationCoordinator], v8);
  (*(v9 + 56))(v8, v9);
  v10 = &v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior];
  v11 = v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16];
  if (v11 <= 0xFB)
  {
    if (!(v11 >> 6))
    {
LABEL_10:
      sub_20BE8AD1C(v11);
      return;
    }

    if (v11 >> 6 == 1)
    {
      LOBYTE(v11) = 0;
      goto LABEL_10;
    }

    v12 = *v10;
    v13 = *(v10 + 1);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_20C13DC94();
    v17 = v14;
    v18 = v15;
    MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
    v14 = v12;
    v15 = v13;
    LOBYTE(v16) = v11;
    sub_20C13DDF4();
    sub_20C1380E4();
  }
}

uint64_t sub_20BE86F00(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  v26 = sub_20C1333A4();
  v12 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RootViewController();
  v16 = v1;
  v25 = v1;
  v29.receiver = v1;
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, sel_viewDidAppear_, a1 & 1);
  v17 = *&v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider];
  sub_20B8F8E94();
  v28 = v16;
  v24[1] = *(*(v17 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v18 = *MEMORY[0x277D517F0];
  v19 = sub_20C1352F4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v11, v18, v19);
  (*(v20 + 56))(v11, 0, 1, v19);

  sub_20C132C04();
  v21 = sub_20C135ED4();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = sub_20C136914();
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  sub_20C133384();
  sub_20BE8F2DC(&qword_27C76FCE0, type metadata accessor for RootViewController);
  sub_20C138C54();
  (*(v12 + 8))(v14, v26);
  sub_20BE8F2DC(&qword_27C76FCE8, type metadata accessor for RootViewController);
  sub_20BE8F2DC(&unk_27C76FCF0, type metadata accessor for RootViewController);
  return sub_20C139364();
}

void sub_20BE873C4(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RootViewController();
  v16.receiver = v2;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1 & 1);
  v15 = v2;
  sub_20C132E84();
  sub_20BE8F2DC(&qword_27C76FCE8, type metadata accessor for RootViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v12 = sub_20C13CC74();

    v15 = v2;
    MEMORY[0x28223BE20](v13);
    *(&v14 - 2) = &v15;
    LOBYTE(v11) = sub_20B79AEEC(sub_20B5978BC, (&v14 - 4), v12);

    if ((v11 & 1) == 0)
    {
      v15 = v2;
      sub_20BE8F2DC(&qword_27C76FCE0, type metadata accessor for RootViewController);
      sub_20C138C64();
    }
  }
}

void sub_20BE8781C(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for RootViewController();
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = *(*&v3[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48);
  v8 = *&v7[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v9 = v7;
  v10 = [v8 collectionViewLayout];
  [v10 invalidateLayout];

  sub_20B755B8C(v14, a2);
  sub_20B5F320C(v14);
  v11 = *v14;
  v12 = [v3 navigationItem];
  [v12 setLargeTitleInsets_];
}

void sub_20BE879F8()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButton];
  v2 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v4 = v1;
  *(v4 + 1) = &off_2822C8C68;
  v24.receiver = v3;
  v24.super_class = v2;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v24, sel_init);
  [v6 setCustomView_];

  if (v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_platform] == 1)
  {
    v7 = [v0 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20C151490;
    *(v10 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    v9 = (v10 + 40);
  }

  else
  {
    if (v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_platform])
    {
      goto LABEL_6;
    }

    v7 = [v0 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14F580;
    v9 = (v8 + 32);
  }

  *v9 = v6;
  sub_20B51C88C(0, &qword_27C770510);
  v11 = v6;
  v12 = sub_20C13CC54();

  [v7 setRightBarButtonItems_];

LABEL_6:
  v13 = [v0 navigationItem];

  v14 = sub_20C13C914();

  [v13 setBackButtonTitle_];

  v15 = *&v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_largeTitleUpNextQueueButton];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v16];
  v17 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAxis_];
  [v17 setDistribution_];
  [v17 setSpacing_];
  [v17 addArrangedSubview_];
  v18 = *&v0[OBJC_IVAR____TtC9SeymourUI18RootViewController_accountButton];
  if (v18)
  {
    v19 = v18;
    [v19 addTarget:v0 action:sel_accountButtonTapped_ forControlEvents:64];
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = &v19[OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed];
    v22 = *&v19[OBJC_IVAR____TtC9SeymourUI13AccountButton_onLongPressed];
    *v21 = sub_20BE8F244;
    v21[1] = v20;

    sub_20B583ECC(v22);

    [v17 addArrangedSubview_];
  }

  v23 = [v0 navigationItem];
  [v23 _setLargeTitleAccessoryView_alignToBaseline_];
}

uint64_t sub_20BE87DF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider);
    v6 = result;

    __swift_project_boxed_opaque_existential_1((v5 + 200), *(v5 + 224));
    sub_20C139FB4();
    v7 = sub_20C137CB4();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v7(sub_20B52347C, v8);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_20BE87F94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_20C1333A4();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v0 presentedViewController];
  v18 = sub_20C1393F4();
  if (v17)
  {
    v28 = v18;
    sub_20B51C88C(0, &qword_281100550);
    v19 = sub_20C13D5F4();

    if (v19)
    {
      v29 = v1;
      v28 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
      v20 = *MEMORY[0x277D517F0];
      v21 = sub_20C1352F4();
      v27 = v13;
      v22 = v21;
      v23 = *(v21 - 8);
      (*(v23 + 104))(v11, v20, v21);
      (*(v23 + 56))(v11, 0, 1, v22);

      sub_20C132C04();
      v24 = sub_20C135ED4();
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
      v25 = sub_20C136914();
      (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
      sub_20C133384();
      type metadata accessor for RootViewController();
      sub_20BE8F2DC(&qword_27C76FCE0, type metadata accessor for RootViewController);
      sub_20C138C54();
      (*(v27 + 8))(v16, v12);
    }
  }

  else
  {
  }
}

uint64_t sub_20BE88414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  v4[5] = swift_task_alloc();
  v5 = sub_20C133954();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5E0);
  v4[9] = swift_task_alloc();
  v6 = sub_20C1364E4();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767FD0);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_20C132E94();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  sub_20C13CDA4();
  v4[19] = sub_20C13CD94();
  v10 = sub_20C13CD24();
  v4[20] = v10;
  v4[21] = v9;

  return MEMORY[0x2822009F8](sub_20BE88698, v10, v9);
}

uint64_t sub_20BE88698()
{
  if ((sub_20C1380B4() & 1) != 0 && (v2 = *(v0 + 136), v1 = *(v0 + 144), v4 = *(v0 + 120), v3 = *(v0 + 128), v5 = *(v0 + 104), v6 = *(v0 + 112), v7 = *(v0 + 32), sub_20C132E84(), sub_20C132E44(), v9 = v8, v10 = *(v2 + 8), *(v0 + 176) = v10, *(v0 + 184) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v10(v1, v3), v11 = OBJC_IVAR____TtC9SeymourUI18RootViewController__lastWorkoutPlanTapToRadarAlertTimestamp, *(v0 + 192) = OBJC_IVAR____TtC9SeymourUI18RootViewController__lastWorkoutPlanTapToRadarAlertTimestamp, v12 = *(v6 + 16), *(v0 + 200) = v12, *(v0 + 208) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000, v12(v4, v7 + v11, v5), sub_20C13A344(), v13 = *(v6 + 8), *(v0 + 216) = v13, *(v0 + 224) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v13(v4, v5), v9 - *(v0 + 16) > 86400.0))
  {
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v14[1] = sub_20BE888BC;
    v15 = *(v0 + 72);

    return sub_20BFC21AC(v15);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_20BE888BC()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20BE889DC, v3, v2);
}

uint64_t sub_20BE889DC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[9], &qword_27C76D5E0);
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    sub_20C1364C4();
    sub_20C1364D4();
    v8 = sub_20BE88C48(v4, v7);
    sub_20B520158(v7, &unk_27C762300);
    (*(v5 + 8))(v4, v6);
    if (v8)
    {
      v22 = v0[27];
      v21 = v0[25];
      v20 = v0[24];
      v9 = v0[22];
      v10 = v0[18];
      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[13];
      v14 = v0[11];
      v23 = v0[10];
      v24 = v0[12];
      v15 = v0[4];
      sub_20C132E84();
      sub_20C132E44();
      v17 = v16;
      v9(v10, v11);
      v21(v12, &v15[v20], v13);
      v0[3] = v17;
      sub_20C13A354();
      v22(v12, v13);
      [v15 presentViewController:v8 animated:1 completion:0];

      (*(v14 + 8))(v24, v23);
    }

    else
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
    }
  }

  v18 = v0[1];

  return v18();
}

id sub_20BE88C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &aBlock - v9;
  v11 = sub_20BE84760();
  v12 = *(sub_20C1338A4() + 16);

  if (v11)
  {
    aBlock = 0;
    v43 = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD00000000000003ELL, 0x800000020C1B5640);
    sub_20C133954();
    sub_20BE8F2DC(&unk_27C76FDA0, MEMORY[0x277D50180]);
    v13 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v13);

    MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C1B5570);
    sub_20BE8EB58(a2, v10);
    v14 = sub_20C135814();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14) == 1)
    {
      v16 = 1701736270;
      sub_20B520158(v10, &unk_27C762300);
      v17 = 0xE400000000000000;
    }

    else
    {
      v16 = sub_20C1357E4();
      v17 = v19;
      (*(v15 + 8))(v10, v14);
    }

    MEMORY[0x20F2F4230](v16, v17);

    v20 = aBlock;
    v21 = v43;
    v22 = 0xD00000000000002ALL;
    v23 = "workouts, please file a Radar.";
LABEL_12:
    v30 = v23 | 0x8000000000000000;
    v31 = sub_20C13C914();

    v32 = sub_20C13C914();

    v18 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = v22;
    v33[4] = v30;
    v33[5] = v20;
    v33[6] = v21;
    v34 = v3;
    v35 = sub_20C13C914();
    v46 = sub_20BE8EBC8;
    v47 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_20B762A80;
    v45 = &block_descriptor_143;
    v36 = _Block_copy(&aBlock);

    v37 = objc_opt_self();
    v38 = [v37 actionWithTitle:v35 style:0 handler:v36];
    _Block_release(v36);

    [v18 addAction_];
    v39 = sub_20C13C914();
    v40 = [v37 actionWithTitle:v39 style:1 handler:0];

    [v18 addAction_];
    return v18;
  }

  if (!v12)
  {
    aBlock = 0;
    v43 = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD00000000000002ELL, 0x800000020C1B5540);
    sub_20C133954();
    sub_20BE8F2DC(&unk_27C76FDA0, MEMORY[0x277D50180]);
    v24 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v24);

    MEMORY[0x20F2F4230](0xD000000000000019, 0x800000020C1B5570);
    sub_20BE8EB58(a2, v7);
    v25 = sub_20C135814();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) == 1)
    {
      v27 = 1701736270;
      sub_20B520158(v7, &unk_27C762300);
      v28 = 0xE400000000000000;
    }

    else
    {
      v27 = sub_20C1357E4();
      v28 = v29;
      (*(v26 + 8))(v7, v25);
    }

    MEMORY[0x20F2F4230](v27, v28);

    v20 = aBlock;
    v21 = v43;
    v22 = 0xD000000000000025;
    v23 = "e to include a sysdiagnose.";
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_20BE89288(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_20C13CDA4();

  v15 = a2;
  v16 = sub_20C13CD94();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[8] = a6;
  sub_20B6383D0(0, 0, v13, &unk_20C181468, v17);
}

uint64_t sub_20BE893E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for TapToRadarDraft();
  v8[7] = swift_task_alloc();
  sub_20C13CDA4();
  v8[8] = sub_20C13CD94();
  v10 = sub_20C13CD24();
  v8[9] = v10;
  v8[10] = v9;

  return MEMORY[0x2822009F8](sub_20BE894B4, v10, v9);
}

uint64_t sub_20BE894B4()
{
  sub_20BE896FC(v0[3], v0[4], v0[5], v0[6], v0[7]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_20BE89554;

  return sub_20BFCC80C();
}

uint64_t sub_20BE89554()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_20BE8F768;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_20BE89678;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20BE89678()
{
  v1 = *(v0 + 56);

  sub_20BE8ECB4(v1, type metadata accessor for TapToRadarDraft);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20BE896FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v32 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for TapToRadarDraft();
  v11 = (a5 + v10[11]);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD90) + 36);
  v13 = sub_20C132E94();
  v14 = *(*(v13 - 8) + 56);
  v14(&v11[v12], 1, 1, v13);
  *v11 = 0x7349664F656D6954;
  *(v11 + 1) = 0xEB00000000657573;
  *a5 = 0x4449656C646E7542;
  *(a5 + 8) = 0xE800000000000000;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = xmmword_20C180F50;
  *(a5 + 48) = xmmword_20C180F60;
  *(a5 + 64) = xmmword_20C180F70;
  *(a5 + 80) = 0xEE006E6F69746163;
  *(a5 + 88) = 10;
  *(a5 + 96) = 0x6375646F72706552;
  *(a5 + 104) = 0xEF7974696C696269;
  *(a5 + 112) = 6;
  *(a5 + 120) = 0x656C746954;
  *(a5 + 128) = 0xE500000000000000;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0x7470697263736544;
  *(a5 + 160) = 0xEB000000006E6F69;
  *(a5 + 168) = 0;
  *(a5 + 176) = 0;
  *(a5 + 184) = 0x7364726F7779654BLL;
  *(a5 + 192) = 0xE800000000000000;
  v15 = MEMORY[0x277D84F90];
  *(a5 + 200) = MEMORY[0x277D84F90];
  v16 = (a5 + v10[12]);
  *v16 = 0x656D686361747441;
  v16[1] = 0xEB0000000073746ELL;
  v16[2] = v15;
  v17 = (a5 + v10[13]);
  *v17 = 0xD000000000000011;
  v17[1] = 0x800000020C1B5400;
  v17[2] = v15;
  v18 = (a5 + v10[14]);
  *v18 = 0xD000000000000014;
  v18[1] = 0x800000020C1B5420;
  v18[2] = v15;
  v19 = (a5 + v10[15]);
  strcpy(v19, "DeleteOnAttach");
  v19[15] = -18;
  v19[16] = 0;
  v20 = (a5 + v10[16]);
  *v20 = 0x4449656369766544;
  v20[1] = 0xE900000000000073;
  v20[2] = v15;
  v21 = a5 + v10[17];
  strcpy(v21, "DeviceClasses");
  *(v21 + 14) = -4864;
  *(v21 + 16) = v15;
  v22 = a5 + v10[18];
  strcpy(v22, "DeviceModels");
  *(v22 + 13) = 0;
  *(v22 + 14) = -5120;
  *(v22 + 16) = v15;
  v23 = (a5 + v10[19]);
  *v23 = 0xD000000000000016;
  v23[1] = 0x800000020C1B5440;
  v23[2] = 0;
  v24 = a5 + v10[20];
  *v24 = 0xD00000000000001ALL;
  *(v24 + 8) = 0x800000020C1B5460;
  *(v24 + 16) = 0;
  v25 = a5 + v10[21];
  *v25 = 0x676169446F747541;
  *(v25 + 8) = 0xEF73636974736F6ELL;
  *(v25 + 16) = 0;
  v26 = (a5 + v10[22]);
  *v26 = 0xD00000000000001BLL;
  v26[1] = 0x800000020C1B5480;
  v26[2] = v15;
  v27 = (a5 + v10[23]);
  *v27 = 0xD000000000000018;
  v27[1] = 0x800000020C1B53C0;
  v27[2] = 0;
  v27[3] = 0;
  v28 = (a5 + v10[24]);
  *v28 = 0xD000000000000012;
  v28[1] = 0x800000020C1B53E0;
  v28[2] = 0;
  v28[3] = 0;
  *(a5 + 88) = 1;
  *(a5 + 112) = 5;
  *(a5 + 136) = v32;
  *(a5 + 144) = a2;

  sub_20C132E64();
  v14(v9, 0, 1, v13);
  sub_20BAC70D4(v9, &v11[v12]);
  *(v24 + 16) = 1;
  v29 = v34;
  *(a5 + 168) = v33;
  *(a5 + 176) = v29;
}

id RootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BE89EB4(uint64_t a1, id *a2)
{
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI18RootViewController_accountButton))
  {
    if (*a2 == 1)
    {
      v3 = 0;
    }

    else
    {
      v5 = *a2;
      v4 = *a2;
      v3 = v5;
    }

    v6 = v3;
    sub_20B52EF60(v3);
  }
}

id sub_20BE89F40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  sub_20BEFF6CC();
  if (((1 << *(*(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider) + 56)) & 0x1AB) != 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_largeTitleUpNextQueueButton);
    v4[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 1;
    [v4 setHidden_];
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButton);
    v5[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 1;
    [v5 setHidden_];
    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButtonPresenter);
    v7 = sub_20C13CDF4();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;

    sub_20B6383D0(0, 0, v3, &unk_20C181490, v8);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_largeTitleUpNextQueueButton);
    v10[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 0;
    [v10 setHidden_];
    v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_upNextQueueButton);
    v11[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 0;

    return [v11 setHidden_];
  }
}

void sub_20BE8A164(char a1)
{
  v2 = v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior + 16];
  if (v2 > 0xFB || (v2 & 0xC0) != 0x40)
  {
    v12 = [v1 navigationController];
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = [v12 navigationBar];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v16 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 whiteColor];
    *(inited + 64) = sub_20B51C88C(0, &qword_27C762070);
    *(inited + 40) = v19;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C763978);
    type metadata accessor for Key(0);
    sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key);
    v10 = sub_20C13C744();

    [v14 setTitleTextAttributes_];

    goto LABEL_12;
  }

  if (v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_isBeyondScrollBoundary] != (a1 & 1) || v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged] == 1)
  {
    v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_isBeyondScrollBoundary] = a1 & 1;
    v1[OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged] = 0;
    if (a1)
    {
      v3 = &selRef_whiteColor;
    }

    else
    {
      v3 = &selRef_clearColor;
    }

    v20 = [objc_opt_self() *v3];
    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_20C14F980;
      v8 = *MEMORY[0x277D740C0];
      *(v7 + 32) = *MEMORY[0x277D740C0];
      *(v7 + 64) = sub_20B51C88C(0, &qword_27C762070);
      *(v7 + 40) = v20;
      v9 = v8;
      v10 = v20;
      sub_20B6B1650(v7);
      swift_setDeallocating();
      sub_20B520158(v7 + 32, &qword_27C763978);
      type metadata accessor for Key(0);
      sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key);
      v11 = sub_20C13C744();

      [v6 setTitleTextAttributes_];

LABEL_12:
      return;
    }
  }
}

uint64_t sub_20BE8A754()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BE8A7B8()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20BE8A81C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v0 - 8);
  v24 = &v21 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v22 = sub_20C1333A4();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13B884();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767750);
  sub_20C13B834();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  sub_20C13B824();
  sub_20C13B854();

  (*(v12 + 8))(v14, v11);
  v15 = *MEMORY[0x277D517F0];
  v16 = sub_20C1352F4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v7, v15, v16);
  (*(v17 + 56))(v7, 0, 1, v16);

  sub_20C132C04();
  v18 = sub_20C135ED4();
  (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
  v19 = sub_20C136914();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  sub_20C133384();
  sub_20B90D720(v10);
  return (*(v8 + 8))(v10, v22);
}

void sub_20BE8AD1C(char a1)
{
  v3 = [v1 navigationItem];
  v4 = v3;
  if (a1)
  {
    if (a1 == 1)
    {
      [v3 setLargeTitleDisplayMode_];

      v5 = [v1 navigationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationBar];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20C14F980;
        v9 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v10 = objc_opt_self();
        v11 = v9;
        v12 = [v10 clearColor];
        *(inited + 64) = sub_20B51C88C(0, &qword_27C762070);
        *(inited + 40) = v12;
        sub_20B6B1650(inited);
        swift_setDeallocating();
        sub_20B520158(inited + 32, &qword_27C763978);
        type metadata accessor for Key(0);
        sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key);
        v13 = sub_20C13C744();

        [v7 setTitleTextAttributes_];
      }

      v14 = [v1 navigationController];
      if (v14)
      {
        v15 = &selRef_clearColor;
LABEL_15:
        v34 = v14;
        v35 = [v14 navigationBar];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_20C14F980;
        v37 = *MEMORY[0x277D740C0];
        *(v36 + 32) = *MEMORY[0x277D740C0];
        v38 = objc_opt_self();
        v39 = v37;
        v40 = [v38 *v15];
        *(v36 + 64) = sub_20B51C88C(0, &qword_27C762070);
        *(v36 + 40) = v40;
        sub_20B6B1650(v36);
        swift_setDeallocating();
        sub_20B520158(v36 + 32, &qword_27C763978);
        type metadata accessor for Key(0);
        sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key);
        v41 = sub_20C13C744();

        [v35 setLargeTitleTextAttributes_];
      }
    }

    else
    {
      [v3 setLargeTitleDisplayMode_];

      v25 = [v1 navigationController];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 navigationBar];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
        v28 = swift_initStackObject();
        *(v28 + 16) = xmmword_20C14F980;
        v29 = *MEMORY[0x277D740C0];
        *(v28 + 32) = *MEMORY[0x277D740C0];
        v30 = objc_opt_self();
        v31 = v29;
        v32 = [v30 whiteColor];
        *(v28 + 64) = sub_20B51C88C(0, &qword_27C762070);
        *(v28 + 40) = v32;
        sub_20B6B1650(v28);
        swift_setDeallocating();
        sub_20B520158(v28 + 32, &qword_27C763978);
        type metadata accessor for Key(0);
        sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key);
        v33 = sub_20C13C744();

        [v27 setTitleTextAttributes_];
      }

      v14 = [v1 navigationController];
      if (v14)
      {
        v15 = &selRef_whiteColor;
        goto LABEL_15;
      }
    }
  }

  else
  {
    [v3 setLargeTitleDisplayMode_];

    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_20C14F980;
      v20 = *MEMORY[0x277D740C0];
      *(v19 + 32) = *MEMORY[0x277D740C0];
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 whiteColor];
      *(v19 + 64) = sub_20B51C88C(0, &qword_27C762070);
      *(v19 + 40) = v23;
      sub_20B6B1650(v19);
      swift_setDeallocating();
      sub_20B520158(v19 + 32, &qword_27C763978);
      type metadata accessor for Key(0);
      sub_20BE8F2DC(&qword_27C761D80, type metadata accessor for Key);
      v24 = sub_20C13C744();

      [v18 setTitleTextAttributes_];
    }

    v14 = [v1 navigationController];
    if (v14)
    {
      v15 = &selRef_whiteColor;
      goto LABEL_15;
    }
  }
}

unint64_t sub_20BE8B400(void *a1, void *a2, double a3, double a4)
{
  result = [v4 navigationController];
  if (result)
  {
    v10 = result;
    v11 = [result navigationBar];

    if (!v11)
    {
      return 0;
    }

    v12 = [v11 _restingHeights];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v12;
    sub_20B51C88C(0, &qword_27C765490);
    v14 = sub_20C13CC74();

    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      if (!sub_20C13DB34())
      {
        v5 = 0.0;
LABEL_10:
        v18 = sub_20C13DB34();
        if (!v18)
        {
          goto LABEL_11;
        }

LABEL_16:
        v20 = __OFSUB__(v18, 1);
        result = v18 - 1;
        if (!v20)
        {
          if ((v14 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v21 = *(v14 + 8 * result + 32);
              goto LABEL_21;
            }

            __break(1u);
            return result;
          }

LABEL_30:
          v21 = MEMORY[0x20F2F5430]();
LABEL_21:
          v22 = v21;

          [v22 doubleValue];
          v19 = v23;

          if (v5 != v19)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = 0.0;
      goto LABEL_15;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {

      v16 = MEMORY[0x20F2F5430](0, v14);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v14 + 32);
    }

    [v16 doubleValue];
    v5 = v17;

    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      goto LABEL_10;
    }

LABEL_15:
    v18 = *(v15 + 16);
    if (!v18)
    {
LABEL_11:

      if (v5 != 0.0)
      {
        v19 = 0.0;
LABEL_23:
        [v11 frame];
        Height = CGRectGetHeight(v28);

        return (Height - v5 + -14.0) / (v19 + -14.0) < 0.05;
      }

LABEL_22:
      v24 = *(*(*&v4[*a1] + *a2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      [v24 adjustedContentInset];
      v26 = v25;

      return v26 + a4 >= 4.0;
    }

    goto LABEL_16;
  }

  return result;
}

unint64_t sub_20BE8B6B0(double a1, double a2)
{
  result = [v2 navigationController];
  if (result)
  {
    v6 = result;
    v7 = [result navigationBar];

    if (!v7)
    {
      return 0;
    }

    v8 = [v7 _restingHeights];
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    sub_20B51C88C(0, &qword_27C765490);
    v10 = sub_20C13CC74();

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      if (!sub_20C13DB34())
      {
        v3 = 0.0;
LABEL_10:
        v14 = sub_20C13DB34();
        if (!v14)
        {
          goto LABEL_11;
        }

LABEL_16:
        v16 = __OFSUB__(v14, 1);
        result = v14 - 1;
        if (!v16)
        {
          if ((v10 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v17 = *(v10 + 8 * result + 32);
              goto LABEL_21;
            }

            __break(1u);
            return result;
          }

LABEL_30:
          v17 = MEMORY[0x20F2F5430]();
LABEL_21:
          v18 = v17;

          [v18 doubleValue];
          v15 = v19;

          if (v3 != v15)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = 0.0;
      goto LABEL_15;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x20F2F5430](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(v10 + 32);
    }

    [v12 doubleValue];
    v3 = v13;

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      goto LABEL_10;
    }

LABEL_15:
    v14 = *(v11 + 16);
    if (!v14)
    {
LABEL_11:

      if (v3 != 0.0)
      {
        v15 = 0.0;
LABEL_23:
        [v7 frame];
        Height = CGRectGetHeight(v24);

        return (Height - v3 + -14.0) / (v15 + -14.0) < 0.05;
      }

LABEL_22:
      v20 = *(*(*&v2[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      [v20 adjustedContentInset];
      v22 = v21;

      return v22 + a2 >= 4.0;
    }

    goto LABEL_16;
  }

  return result;
}

unint64_t sub_20BE8B954(double a1, double a2)
{
  result = [v2 navigationController];
  if (result)
  {
    v6 = result;
    v7 = [result navigationBar];

    if (!v7)
    {
      return 0;
    }

    v8 = [v7 _restingHeights];
    if (!v8)
    {
      goto LABEL_22;
    }

    v9 = v8;
    sub_20B51C88C(0, &qword_27C765490);
    v10 = sub_20C13CC74();

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      if (!sub_20C13DB34())
      {
        v3 = 0.0;
LABEL_10:
        v14 = sub_20C13DB34();
        if (!v14)
        {
          goto LABEL_11;
        }

LABEL_16:
        v16 = __OFSUB__(v14, 1);
        result = v14 - 1;
        if (!v16)
        {
          if ((v10 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v17 = *(v10 + 8 * result + 32);
              goto LABEL_21;
            }

            __break(1u);
            return result;
          }

LABEL_30:
          v17 = MEMORY[0x20F2F5430]();
LABEL_21:
          v18 = v17;

          [v18 doubleValue];
          v15 = v19;

          if (v3 != v15)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = 0.0;
      goto LABEL_15;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x20F2F5430](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(v10 + 32);
    }

    [v12 doubleValue];
    v3 = v13;

    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
      goto LABEL_10;
    }

LABEL_15:
    v14 = *(v11 + 16);
    if (!v14)
    {
LABEL_11:

      if (v3 != 0.0)
      {
        v15 = 0.0;
LABEL_23:
        [v7 frame];
        Height = CGRectGetHeight(v24);

        return (Height - v3 + -14.0) / (v15 + -14.0) < 0.05;
      }

LABEL_22:
      v20 = *(*(*&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      [v20 adjustedContentInset];
      v22 = v21;

      return v22 + a2 >= 4.0;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_20BE8BBF4(uint64_t a1)
{
  v2 = sub_20C138034();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764138);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&unk_27C764140, MEMORY[0x277D53BA0]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&qword_27C763F00, MEMORY[0x277D53BA0]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8BF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7647B0);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v15 = a1 + 32;
    while (2)
    {
      v6 = *(v15 + 8 * v4);
      sub_20C13E164();

      sub_20C13C344();
      result = sub_20C13E1B4();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        v11 = sub_20C13C324();

        if (v11)
        {

          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      *(*(v3 + 48) + 8 * i) = v6;
      v12 = *(v3 + 16);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
        *(v3 + 16) = v14;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20BE8C0B0(uint64_t a1)
{
  v2 = sub_20C135C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642E0);
    v10 = sub_20C13DC44();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v25 = v9;
    v26 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    while (2)
    {
      sub_20B747A04(v26 + v14 * v11, v8);
      sub_20C13E164();
      sub_20C135C74();
      v15 = sub_20C13E1B4();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_20B747A04(*(v10 + 48) + i * v14, v5);
        v19 = MEMORY[0x20F2ED3D0](v5, v8);
        sub_20BE8ECB4(v5, MEMORY[0x277D52060]);
        if (v19)
        {
          sub_20BE8ECB4(v8, MEMORY[0x277D52060]);
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_20B7479A0(v8, *(v10 + 48) + i * v14);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v25)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20BE8C2E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764100);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20C13E164();

      sub_20C13CA64();
      result = sub_20C13E1B4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20C13DFF4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20BE8C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = type metadata accessor for MarketingOverlayImpressionsTracker();
  v8[4] = sub_20BE8F2DC(&qword_27C76FC30, type metadata accessor for MarketingOverlayImpressionsTracker);
  v8[0] = a2;
  v5 = MEMORY[0x277D84F98];
  *(a3 + 120) = MEMORY[0x277D84F98];
  *(a3 + 128) = v5;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(a3 + 16) = v7[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE00);
  sub_20C133AA4();
  sub_20B51C710(v7, a3 + 80);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a3 + 32) = sub_20C13A914();
  sub_20B51CC64(v8, a3 + 40);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B8E0204();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a3;
}

uint64_t sub_20BE8C680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764440);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v6 = *(v24 + v4);
      v25 = v4 + 1;
      sub_20C13E164();
      sub_20C13CA64();

      result = sub_20C13E1B4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xED000073676E6952;
          v14 = 0x7974697669746361;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xE700000000000000;
              v14 = 0x7261426E727562;
              break;
            case 2:
              v13 = 0xE700000000000000;
              v15 = 0x636E65646163;
              goto LABEL_20;
            case 3:
              v13 = 0xE800000000000000;
              v14 = 0x65636E6174736964;
              break;
            case 4:
              v13 = 0xE600000000000000;
              v14 = 0x796772656E65;
              break;
            case 5:
              v14 = 0x7461527472616568;
              v13 = 0xE900000000000065;
              break;
            case 6:
              v13 = 0xE900000000000074;
              v14 = 0x6867696C68676968;
              break;
            case 7:
              v13 = 0xE900000000000079;
              v14 = 0x7469736E65746E69;
              break;
            case 8:
              v13 = 0xE700000000000000;
              v15 = 0x6E696C636E69;
LABEL_20:
              v14 = v15 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            case 9:
              v13 = 0xE300000000000000;
              v14 = 7172210;
              break;
            case 0xA:
              v13 = 0xE900000000000072;
              v14 = 0x6F74617261706573;
              break;
            case 0xB:
              v14 = 7172211;
              v13 = 0xE300000000000000;
              break;
            case 0xC:
              v13 = 0xE800000000000000;
              v14 = 0x73736572676F7270;
              break;
            case 0xD:
              v13 = 0xE500000000000000;
              v14 = 0x72656D6974;
              break;
            default:
              break;
          }

          v16 = 0x7974697669746361;
          v17 = 0xED000073676E6952;
          switch(v6)
          {
            case 1:
              v17 = 0xE700000000000000;
              if (v14 == 0x7261426E727562)
              {
                goto LABEL_45;
              }

              goto LABEL_46;
            case 2:
              v17 = 0xE700000000000000;
              v18 = 0x636E65646163;
              goto LABEL_50;
            case 3:
              v17 = 0xE800000000000000;
              if (v14 != 0x65636E6174736964)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 4:
              v17 = 0xE600000000000000;
              if (v14 != 0x796772656E65)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 5:
              v17 = 0xE900000000000065;
              if (v14 != 0x7461527472616568)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 6:
              v17 = 0xE900000000000074;
              if (v14 != 0x6867696C68676968)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 7:
              v17 = 0xE900000000000079;
              if (v14 != 0x7469736E65746E69)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 8:
              v17 = 0xE700000000000000;
              v18 = 0x6E696C636E69;
LABEL_50:
              if (v14 != (v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 9:
              v17 = 0xE300000000000000;
              if (v14 != 7172210)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 10:
              v17 = 0xE900000000000072;
              v16 = 0x6F74617261706573;
              goto LABEL_44;
            case 11:
              v17 = 0xE300000000000000;
              if (v14 != 7172211)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 12:
              v17 = 0xE800000000000000;
              if (v14 != 0x73736572676F7270)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            case 13:
              v17 = 0xE500000000000000;
              if (v14 != 0x72656D6974)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            default:
LABEL_44:
              if (v14 != v16)
              {
                goto LABEL_46;
              }

LABEL_45:
              if (v13 == v17)
              {

                goto LABEL_4;
              }

LABEL_46:
              v19 = sub_20C13DFF4();

              if (v19)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_52;
              }

              break;
          }
        }
      }

LABEL_52:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      v4 = v25;
      if (v25 == v23)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_20BE8CCD8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_20C13DC44();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v11);
      result = sub_20C13E1B4();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8CE0C(uint64_t a1)
{
  v2 = sub_20C137404();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDC0);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&qword_27C76BF30, MEMORY[0x277D53330]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&qword_27C76FDD0, MEMORY[0x277D53330]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8D12C(uint64_t a1)
{
  v2 = sub_20C133134();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD18);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&qword_27C76FD20, MEMORY[0x277CC99D0]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&qword_27C76FD28, MEMORY[0x277CC99D0]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8D44C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764688);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_20C13E154();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8D5B4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_20C13DC44();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v11);
      result = sub_20C13E1B4();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (v11 != *(v18 + v14))
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8D710(uint64_t a1)
{
  v2 = sub_20C132EE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641A8);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&qword_27C7675A0, MEMORY[0x277CC95F0]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&qword_27C7641A0, MEMORY[0x277CC95F0]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20BE8DA30(uint64_t a1)
{
  v2 = sub_20C136064();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FD48);
    v9 = sub_20C13DC44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20BE8F2DC(&qword_27C76FD50, MEMORY[0x277D52578]);
      v16 = sub_20C13C7B4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_20BE8F2DC(&unk_27C76FD58, MEMORY[0x277D52578]);
          v23 = sub_20C13C894();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_20BE8DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v41) = a7;
  v40 = a6;
  v43 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v13 - 8);
  v45 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v15 - 8);
  v42 = &v39 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - v18;
  v44 = sub_20C1333A4();
  v20 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C1390D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for CatalogPageNavigator;
  v50[4] = &off_2822FB218;
  v27 = swift_allocObject();
  v50[0] = v27;
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  *(v27 + 32) = v40;
  *(v27 + 40) = v41;
  (*(v24 + 104))(v26, *MEMORY[0x277D54278], v23);
  sub_20B51CC64(v50, v49);
  v41 = type metadata accessor for AccountViewController();
  v28 = objc_allocWithZone(v41);
  v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_visibility] = 1;
  *&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dependencies] = a1;
  sub_20B51CC64(v49, &v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_pageNavigator]);
  (*(v24 + 16))(&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPagePublishingBehavior], v26, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_eventHub] = v48;
  sub_20C133AA4();
  v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_platform] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v48, &v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_storefrontLocalizer]);
  type metadata accessor for AccountPageDataProvider();
  swift_allocObject();
  swift_unknownObjectRetain();

  v30 = sub_20B81E02C(v29, a2, v43);

  swift_unknownObjectRelease();
  *&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_dataProvider] = v30;
  v31 = *MEMORY[0x277D51830];
  v32 = sub_20C1352F4();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v19, v31, v32);
  (*(v33 + 56))(v19, 0, 1, v32);
  v34 = sub_20C132C14();
  (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  v35 = sub_20C135ED4();
  (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
  v36 = sub_20C136914();
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  sub_20C133384();
  (*(v20 + 32))(&v28[OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPage], v22, v44);
  v47.receiver = v28;
  v47.super_class = v41;
  v37 = objc_msgSendSuper2(&v47, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v49);
  (*(v24 + 8))(v26, v23);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v37;
}

id sub_20BE8E3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v25[3] = a5(0);
  v25[4] = sub_20BE8F2DC(a6, a7);
  v25[0] = a3;
  v12 = type metadata accessor for MarketingControllerHandler();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_actionHandler];
  *v14 = 0;
  *(v14 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v15 = v24;
  v16 = &v13[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_eventHub];
  *v16 = v23;
  *(v16 + 1) = v15;
  sub_20B51CC64(v25, &v13[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_impressionConsumer]);
  *&v13[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_marketingHostedContentCoordinator] = a2;
  v17 = OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_metricPage;
  v18 = sub_20C1333A4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v13[v17], a4, v18);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();

  *&v13[OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_subscriptionToken] = sub_20C13A914();
  v22.receiver = v13;
  v22.super_class = v12;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  (*(v19 + 8))(a4, v18);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

uint64_t type metadata accessor for RootViewController()
{
  result = qword_27C76FD00;
  if (!qword_27C76FD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE8E658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BE88414(a1, v4, v5, v6);
}

void sub_20BE8E72C()
{
  sub_20B95B744();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE8E984()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20B887644();
}

uint64_t sub_20BE8EB58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE8EBD8(uint64_t a1)
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
  v11[1] = sub_20B52A9D4;

  return sub_20BE893E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20BE8ECB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BE8ED14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B858);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20BE8ED84()
{
  v1 = sub_20C13A814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_resignActiveObserver) = 0;
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_currentContentInsetBehavior;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_engagementPresentability) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_visibility) = 1;
  v6 = OBJC_IVAR____TtC9SeymourUI18RootViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = MEMORY[0x277D84F98];
  *(v7 + 16) = v8;
  *(v0 + v6) = v7;
  v9 = OBJC_IVAR____TtC9SeymourUI18RootViewController_dynamicOfferCoordinator;
  *(v0 + v9) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v10 = OBJC_IVAR____TtC9SeymourUI18RootViewController_purchaseCoordinator;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v11 = OBJC_IVAR____TtC9SeymourUI18RootViewController_purchaseHandler;
  *(v0 + v11) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v12 = OBJC_IVAR____TtC9SeymourUI18RootViewController_webUserInterfaceCoordinator;
  *(v0 + v12) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_hasContentInsetChanged) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_isBeyondScrollBoundary) = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D4F088], v1);
  v13[1] = 0;
  sub_20C13A384();
  sub_20C13DE24();
  __break(1u);
}

id sub_20BE8F004(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();

  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20B51E694(a1, a2, v22);
    _os_log_impl(&dword_20B517000, v10, v11, "[UM] Providing marketing placement content for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F2F6A40](v13, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingHostedContentCoordinator);
  swift_beginAccess();
  v15 = *(v14 + 120);
  if (*(v15 + 16))
  {

    v16 = sub_20B65AA60(a1, a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 16 * v16);

      v19 = [v18 view];

      return v19;
    }
  }

  return 0;
}

uint64_t sub_20BE8F2DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BE8F32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE08);
    v3 = sub_20C13DC44();
    v4 = 0;
    v5 = v3 + 56;
    v28 = a1 + 32;
    v27 = v1;
    while (1)
    {
      v6 = *(v28 + v4);
      v29 = v4 + 1;
      sub_20C13E164();
      sub_20C13CA64();

      result = sub_20C13E1B4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 > 3)
          {
            if (*(*(v3 + 48) + v9) <= 5u)
            {
              if (v13 == 4)
              {
                v14 = 0xD000000000000014;
                v15 = 0x800000020C191840;
                if (v6 > 3)
                {
                  goto LABEL_41;
                }

                goto LABEL_28;
              }

              v14 = 0xD000000000000015;
              v15 = 0x800000020C191860;
LABEL_27:
              if (v6 > 3)
              {
                goto LABEL_41;
              }

              goto LABEL_28;
            }

            if (v13 == 6)
            {
              v14 = 0xD000000000000015;
              v15 = 0x800000020C191880;
              if (v6 > 3)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v14 = 0xD000000000000016;
              v15 = 0x800000020C1918A0;
              if (v6 > 3)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
            if (*(*(v3 + 48) + v9) > 1u)
            {
              v14 = 0x6E6E614274736574;
              v15 = 0xEB00000000317265;
              if (v13 != 2)
              {
                v14 = 0xD000000000000014;
                v15 = 0x800000020C191820;
                if (v6 > 3)
                {
                  goto LABEL_41;
                }

                goto LABEL_28;
              }

              goto LABEL_27;
            }

            if (*(*(v3 + 48) + v9))
            {
              v14 = 0xD000000000000013;
            }

            else
            {
              v14 = 0xD000000000000016;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0x800000020C191800;
            }

            else
            {
              v15 = 0x800000020C1917E0;
            }

            if (v6 > 3)
            {
LABEL_41:
              v18 = 0xD000000000000016;
              if (v6 == 6)
              {
                v18 = 0xD000000000000015;
              }

              v19 = 0x800000020C1918A0;
              if (v6 == 6)
              {
                v19 = 0x800000020C191880;
              }

              if (v6 == 4)
              {
                v20 = 0xD000000000000014;
              }

              else
              {
                v20 = 0xD000000000000015;
              }

              v21 = 0x800000020C191860;
              if (v6 == 4)
              {
                v21 = 0x800000020C191840;
              }

              if (v6 <= 5)
              {
                v22 = v20;
              }

              else
              {
                v22 = v18;
              }

              if (v6 <= 5)
              {
                v16 = v21;
              }

              else
              {
                v16 = v19;
              }

              if (v14 != v22)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }
          }

LABEL_28:
          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v17 = 0x6E6E614274736574;
            }

            else
            {
              v17 = 0xD000000000000014;
            }

            if (v6 == 2)
            {
              v16 = 0xEB00000000317265;
            }

            else
            {
              v16 = 0x800000020C191820;
            }

            if (v14 != v17)
            {
              goto LABEL_58;
            }
          }

          else if (v6)
          {
            v16 = 0x800000020C191800;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v16 = 0x800000020C1917E0;
            if (v14 != 0xD000000000000016)
            {
              goto LABEL_58;
            }
          }

LABEL_57:
          if (v15 == v16)
          {

            goto LABEL_4;
          }

LABEL_58:
          v23 = sub_20C13DFF4();

          if (v23)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      v4 = v29;
      if (v29 == v27)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void *sub_20BE8F770()
{
  result = sub_20BE8C680(&unk_282287650);
  off_27C76FE10 = result;
  return result;
}

uint64_t sub_20BE8F798()
{
  result = sub_20BE8C680(&unk_28228D610);
  qword_27C76FE18 = result;
  return result;
}

uint64_t sub_20BE8F7E4(char a1, char a2)
{
  if (qword_27C760C58 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  if ((a2 & 1) == 0)
  {

    if ((a1 & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v6 = qword_27C76FE18;

  sub_20B6FFF90(&v5, 13);
  result = v6;
  if (a1)
  {
LABEL_7:
    v6 = result;
    sub_20B6FFF90(&v5, 1);
    return v6;
  }

  return result;
}

uint64_t sub_20BE8FA88()
{
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  v1 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  v2 = v6;
  if (v6)
  {
    v3 = swift_unknownObjectRetain();
    MEMORY[0x20F2F43B0](v3);
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    v1 = v5;
  }

  sub_20B520158(&v6, &unk_27C764C80);
  return v1;
}

char *sub_20BE8FB54(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_20C13A814();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView] = 0;
  v11 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView;
  v12 = [objc_allocWithZone(type metadata accessor for GymKitResumeMachineView()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView] = 0;
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView] = 0;
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver] = 0;
  (*(v8 + 104))(v10, *MEMORY[0x277D4EF20], v7);
  LOBYTE(aBlock) = 1;
  sub_20C13A384();
  v13 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:0 action:0];
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_tapGestureRecognizer] = v13;
  type metadata accessor for SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController();
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] = a3;
  v14 = &v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter];
  *v14 = a1;
  *(v14 + 1) = a2;
  v84 = a2;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v85 = a3;

  swift_unknownObjectRetain();
  v17 = [v16 bundleForClass_];
  sub_20C132964();

  v18 = objc_allocWithZone(MEMORY[0x277CB85A8]);
  v19 = sub_20C13C914();

  v20 = [v18 initWithTitle:v19 type:2];

  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayControlItem] = v20;
  v21 = qword_27C760C88;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_27C770A90;
  v24 = sub_20C13C914();
  v25 = objc_opt_self();
  v26 = [v25 systemImageNamed:v24 withConfiguration:v23];

  if (v26)
  {
    v27 = [v26 imageWithRenderingMode_];
  }

  else
  {
    v27 = 0;
  }

  [v22 setImage_];

  v28 = [v16 bundleForClass_];
  sub_20C132964();

  v29 = objc_allocWithZone(MEMORY[0x277CB85A8]);
  v30 = sub_20C13C914();

  v31 = [v29 initWithTitle:v30 type:2];

  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsControlItem] = v31;
  v32 = v31;
  v33 = sub_20C13C914();
  v34 = [v25 smm:v33 systemImageNamed:?];

  v35 = [v34 imageWithConfiguration_];
  v36 = [v35 imageWithRenderingMode_];

  [v32 setImage_];
  v37 = type metadata accessor for SessionVideoPlayerViewController();
  v92.receiver = v3;
  v92.super_class = v37;
  v38 = objc_msgSendSuper2(&v92, sel_initWithNibName_bundle_, 0, 0);
  v39 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_tapGestureRecognizer;
  v40 = *&v38[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_tapGestureRecognizer];
  v41 = v38;
  [v40 addTarget:v41 action:sel_didTapMediaPlayerViewWithTapGestureRecognizer_];
  [*&v38[v39] setEnabled_];
  *(a1 + 24) = &off_2822F15B0;
  swift_unknownObjectWeakAssign();
  v42 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController;
  [*&v41[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController] setAllowsPictureInPicturePlayback_];
  v43 = *&v41[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayControlItem];
  v44 = swift_allocObject();
  v45 = v84;
  *(v44 + 16) = a1;
  *(v44 + 24) = v45;
  v90 = sub_20BE95C14;
  v91 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_20B7B548C;
  v89 = &block_descriptor_144;
  v46 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v47 = v43;

  [v47 setAction_];
  _Block_release(v46);

  v48 = *&v41[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsControlItem];
  v49 = swift_allocObject();
  *(v49 + 16) = a1;
  *(v49 + 24) = v45;
  v90 = sub_20BE95C1C;
  v91 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_20B7B548C;
  v89 = &block_descriptor_28_5;
  v50 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v51 = v48;

  [v51 setAction_];
  _Block_release(v50);

  v52 = [*&v41[v42] contentOverlayView];
  if (v52)
  {
    v53 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView;
    v54 = v52;
    [v52 addSubview_];
    v84 = objc_opt_self();
    v56 = *MEMORY[0x277D768C8];
    v55 = *(MEMORY[0x277D768C8] + 8);
    v57 = *(MEMORY[0x277D768C8] + 16);
    v58 = *(MEMORY[0x277D768C8] + 24);
    v59 = *&v41[v53];
    v60 = [v59 leadingAnchor];
    v61 = [v54 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:v55];

    LODWORD(v63) = 1148846080;
    [v62 setPriority_];
    v83 = v62;
    v64 = [v59 trailingAnchor];
    v65 = [v54 trailingAnchor];
    v66 = [v64 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v67) = 1148846080;
    [v66 setPriority_];
    v68 = v66;
    v69 = [v59 topAnchor];
    v70 = [v54 topAnchor];
    v71 = [v69 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v72) = 1148846080;
    [v71 setPriority_];
    v73 = [v59 bottomAnchor];
    v74 = [v54 bottomAnchor];
    v75 = [v73 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v76) = 1148846080;
    [v75 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_20C14FE90;
    v78 = v83;
    *(v77 + 32) = v83;
    *(v77 + 40) = v68;
    *(v77 + 48) = v71;
    *(v77 + 56) = v75;
    v79 = v71;

    sub_20B51C88C(0, &qword_281100500);
    v80 = sub_20C13CC54();

    [v84 activateConstraints_];
  }

  [*&v41[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView] setAlpha_];

  swift_unknownObjectRelease();

  return v41;
}

uint64_t sub_20BE9061C(uint64_t result)
{
  v1 = *(result + 120);
  if (v1)
  {

    v1(v2);

    return sub_20B583ECC(v1);
  }

  return result;
}

uint64_t sub_20BE90678(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {

    v1(v2);

    return sub_20B583ECC(v1);
  }

  return result;
}

void sub_20BE906FC()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for SessionVideoPlayerViewController();
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  sub_20B6776DC(1);
  v7 = [v1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [objc_opt_self() blackColor];
  [v8 setBackgroundColor_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 setOpaque_];

  v12 = [v2 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 addGestureRecognizer_];

  v14 = [v2 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    v18 = objc_opt_self();
    v20 = *MEMORY[0x277D768C8];
    v19 = *(MEMORY[0x277D768C8] + 8);
    v21 = *(MEMORY[0x277D768C8] + 16);
    v22 = *(MEMORY[0x277D768C8] + 24);
    v23 = [v15 leadingAnchor];
    v24 = [v17 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:v19];

    LODWORD(v26) = 1148846080;
    [v25 setPriority_];
    v27 = v25;
    v28 = [v15 trailingAnchor];
    v29 = [v17 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-v22];

    LODWORD(v31) = 1148846080;
    [v30 setPriority_];
    v32 = v30;
    v33 = [v15 topAnchor];
    v34 = [v17 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:v20];

    LODWORD(v36) = 1148846080;
    [v35 setPriority_];
    v37 = [v15 bottomAnchor];
    v38 = [v17 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:-v21];

    LODWORD(v40) = 1148846080;
    [v39 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14FE90;
    *(v41 + 32) = v27;
    *(v41 + 40) = v32;
    *(v41 + 48) = v35;
    *(v41 + 56) = v39;
    v42 = v35;

    sub_20B51C88C(0, &qword_281100500);
    v43 = sub_20C13CC54();

    [v18 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_20BE90DB4(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v7 = v1;

  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v10 = 138543618;
    v49 = v4;
    v50[0] = v12;
    v13 = v7;
    v14 = *&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    *(v10 + 4) = v14;
    *v11 = v14;
    *(v10 + 12) = 2082;
    sub_20B51C88C(0, &qword_27C764F30);
    sub_20BE95F24();
    v47 = v3;
    v15 = v14;
    v7 = v13;
    v16 = sub_20C13C764();
    v18 = sub_20B51E694(v16, v17, v50);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_20B517000, v8, v9, "Updating pre-session video transport controls on %{public}@: %{public}s", v10, 0x16u);
    sub_20B520158(v11, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    v19 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x20F2F6A40](v19, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v49 + 8))(v6, v47);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  if (*(*&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform) != 3)
  {
    return;
  }

  if (*(a1 + 16))
  {
    v20 = sub_20B65CEBC(2);
    if (v21)
    {
      v22 = *(*(a1 + 56) + 8 * v20);
      v23 = *&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_20C14F580;
      *(v24 + 32) = v22;
      sub_20B51C88C(0, &qword_27C764F30);
      v25 = v22;
      v26 = sub_20C13CC54();

      [v23 setTransportBarCustomMenuItems_];
    }
  }

  v27 = sub_20C13AAC4();
  v50[3] = v27;
  v50[4] = sub_20BE95C88();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v27);
  LOBYTE(v27) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v50);
  if ((v27 & 1) == 0)
  {
    v36 = MEMORY[0x277D84F90];
    v50[0] = MEMORY[0x277D84F90];
    if (*(a1 + 16))
    {
      v37 = sub_20B65CEBC(0);
      if (v38)
      {
        v39 = *(*(a1 + 56) + 8 * v37);
        MEMORY[0x20F2F43B0]();
        if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();

        v36 = v50[0];
      }

      if (*(a1 + 16))
      {
        v40 = sub_20B65CEBC(1);
        if (v41)
        {
          v42 = *(*(a1 + 56) + 8 * v40);
          MEMORY[0x20F2F43B0]();
          if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();

          v36 = v50[0];
        }
      }
    }

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    if (v36 >> 62)
    {
      if (sub_20C13DB34())
      {
        goto LABEL_30;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_30:
      sub_20B51C88C(0, &unk_27C76FED0);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_20C14F580;
    sub_20B51C88C(0, &qword_27C7713A0);
    *(v45 + 32) = sub_20C13D624();
    goto LABEL_30;
  }

  v29 = *&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
  v30 = *(*&v7[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] + 32);
  v50[0] = MEMORY[0x277D84F90];
  v31 = *(v30 + 16);
  if (v31)
  {

    v32 = 32;
    do
    {
      if (*(a1 + 16))
      {
        v33 = sub_20B65CEBC(*(v30 + v32));
        if (v34)
        {
          v35 = *(*(a1 + 56) + 8 * v33);
          MEMORY[0x20F2F43B0]();
          if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();
        }
      }

      ++v32;
      --v31;
    }

    while (v31);
  }

  sub_20B51C88C(0, &qword_27C764F30);
  v46 = sub_20C13CC54();

  [v29 setTransportBarCustomMenuItems_];
}

void sub_20BE91554(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v9 = v2;

  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v42 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v13 = 138543618;
    v41 = v6;
    v15 = a1;
    v16 = *&v9[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2082;
    sub_20B51C88C(0, &qword_27C764F30);
    sub_20BE95F24();
    v39 = v5;
    v17 = v16;
    a1 = v15;
    v18 = sub_20C13C764();
    v20 = sub_20B51E694(v18, v19, &v43);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_20B517000, v10, v11, "Updating Airplay and Settings video transport controls on %{public}@: %{public}s", v13, 0x16u);
    sub_20B520158(v14, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    v21 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    v22 = v13;
    a2 = v42;
    MEMORY[0x20F2F6A40](v22, -1, -1);

    (*(v41 + 8))(v8, v39);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if (*(*&v9[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform) <= 1u)
  {
    v43 = MEMORY[0x277D84F90];
    if (sub_20B8DD11C(0, a2))
    {
      v23 = *&v9[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayControlItem];
      MEMORY[0x20F2F43B0]();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
    }

    if (*(a1 + 16))
    {
      v24 = sub_20B65CEBC(2);
      if (v25)
      {
        v26 = *(*(a1 + 56) + 8 * v24);
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v27;
          v29 = v9;
          v30 = objc_allocWithZone(MEMORY[0x277CB85A8]);
          v31 = v26;
          v32 = sub_20C13C914();
          v33 = [v30 initWithTitle:v32 type:2];

          v34 = [v28 image];
          [v33 setImage_];

          [v33 setMenu_];
          v35 = v33;
          MEMORY[0x20F2F43B0]();
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();

          v9 = v29;
        }
      }
    }

    v36 = *&v9[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    sub_20B51C88C(0, &qword_27C76FE98);
    v37 = sub_20C13CC54();

    [v36 setCustomControlItems_];
  }
}

void sub_20BE91A34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370);
  v121 = *(v3 - 8);
  v122 = v3;
  MEMORY[0x28223BE20](v3);
  v118 = v4;
  v119 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v124 = &v114 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v123 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v120 = &v114 - v8;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v13 = v1;

  v14 = sub_20C13BB74();
  v15 = sub_20C13D1F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v116 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v117 = v7;
    v19 = v18;
    v114 = swift_slowAlloc();
    v125[0] = v114;
    *v17 = 138543618;
    v20 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    *(v17 + 4) = v20;
    *v19 = v20;
    *(v17 + 12) = 2082;
    sub_20B51C88C(0, &qword_27C764F30);
    v115 = v9;
    sub_20BE95F24();
    v21 = v13;
    v22 = v20;
    v23 = sub_20C13C764();
    v25 = sub_20B51E694(v23, v24, v125);

    *(v17 + 14) = v25;
    v13 = v21;
    _os_log_impl(&dword_20B517000, v14, v15, "Updating in-session video transport controls on %{public}@: %{public}s", v17, 0x16u);
    sub_20B520158(v19, &unk_27C762E30);
    v26 = v19;
    v7 = v117;
    MEMORY[0x20F2F6A40](v26, -1, -1);
    v27 = v114;
    __swift_destroy_boxed_opaque_existential_1(v114);
    MEMORY[0x20F2F6A40](v27, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);

    (*(v116 + 8))(v12, v115);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v28 = *(*&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform);
  if (v28 >= 2)
  {
    if (v28 == 2)
    {
      return;
    }

    if (*(a1 + 16))
    {
      v54 = sub_20B65CEBC(2);
      if (v55)
      {
        v56 = *(*(a1 + 56) + 8 * v54);
        v57 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_20C14F580;
        *(v58 + 32) = v56;
        sub_20B51C88C(0, &qword_27C764F30);
        v59 = v56;
        v60 = sub_20C13CC54();

        [v57 setTransportBarCustomMenuItems_];
      }
    }

    v61 = sub_20C13AAC4();
    v125[3] = v61;
    v125[4] = sub_20BE95C88();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v125);
    (*(*(v61 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v61);
    LOBYTE(v61) = sub_20C1383C4();
    __swift_destroy_boxed_opaque_existential_1(v125);
    if (v61)
    {
      v43 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
      v63 = [v43 player];
      if (v63)
      {
        v64 = v63;
        v65 = [v63 currentItem];

        if (v65)
        {
          v66 = [v65 asset];

          if (v66)
          {
            objc_opt_self();
            v67 = swift_dynamicCastObjCClass();
            if (v67)
            {
              v68 = v67;
              sub_20B51C88C(0, &qword_281100530);
              v69 = sub_20C13D374();
              v70 = swift_allocObject();
              *(v70 + 16) = v68;
              *(v70 + 24) = v69;
              sub_20B51C88C(0, &qword_27C763230);
              v117 = v66;
              v71 = v124;
              sub_20C137C94();
              v72 = swift_allocObject();
              *(v72 + 16) = v13;
              *(v72 + 24) = a1;
              v73 = swift_allocObject();
              *(v73 + 16) = sub_20BE95DA0;
              *(v73 + 24) = v72;
              v75 = v121;
              v74 = v122;
              v76 = v119;
              (*(v121 + 16))(v119, v71, v122);
              v77 = (*(v75 + 80) + 16) & ~*(v75 + 80);
              v78 = (v118 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
              v79 = swift_allocObject();
              (*(v75 + 32))(v79 + v77, v76, v74);
              v80 = (v79 + v78);
              *v80 = sub_20B939E00;
              v80[1] = v73;
              v81 = v13;

              v82 = v120;
              sub_20C137C94();
              (*(v75 + 8))(v124, v74);
              v83 = sub_20C137CB4();
              v84 = swift_allocObject();
              *(v84 + 16) = 0;
              *(v84 + 24) = 0;
              v83(sub_20B5DF6DC, v84);

              (*(v123 + 8))(v82, v7);
              return;
            }
          }
        }
      }

      v108 = *(*&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] + 32);
      v125[0] = MEMORY[0x277D84F90];
      v109 = *(v108 + 16);
      if (v109)
      {

        v110 = 32;
        do
        {
          if (*(a1 + 16))
          {
            v111 = sub_20B65CEBC(*(v108 + v110));
            if (v112)
            {
              v113 = *(*(a1 + 56) + 8 * v111);
              MEMORY[0x20F2F43B0]();
              if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20C13CCA4();
              }

              sub_20C13CCE4();
            }
          }

          ++v110;
          --v109;
        }

        while (v109);
      }

      goto LABEL_74;
    }

    v93 = MEMORY[0x277D84F90];
    v125[0] = MEMORY[0x277D84F90];
    if (*(a1 + 16))
    {
      v94 = sub_20B65CEBC(0);
      if (v95)
      {
        v96 = *(*(a1 + 56) + 8 * v94);
        MEMORY[0x20F2F43B0]();
        if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();

        v93 = v125[0];
      }

      if (*(a1 + 16))
      {
        v97 = sub_20B65CEBC(1);
        if (v98)
        {
          v99 = *(*(a1 + 56) + 8 * v97);
          MEMORY[0x20F2F43B0]();
          if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();

          v93 = v125[0];
        }
      }
    }

    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v101 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    if (v93 >> 62)
    {
      if (sub_20C13DB34())
      {
        goto LABEL_53;
      }
    }

    else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_53:
      sub_20B51C88C(0, &unk_27C76FED0);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_20C14F580;
    sub_20B51C88C(0, &qword_27C7713A0);
    *(v102 + 32) = sub_20C13D624();
    goto LABEL_53;
  }

  if (!_UISolariumEnabled())
  {
    v85 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
    v86 = *(*&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] + 32);
    v125[0] = MEMORY[0x277D84F90];
    v87 = *(v86 + 16);
    if (v87)
    {

      v88 = 32;
      do
      {
        if (*(a1 + 16))
        {
          v89 = sub_20B65CEBC(*(v86 + v88));
          if (v90)
          {
            v91 = *(*(a1 + 56) + 8 * v89);
            MEMORY[0x20F2F43B0]();
            if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20C13CCA4();
            }

            sub_20C13CCE4();
          }
        }

        ++v88;
        --v87;
      }

      while (v87);
    }

    sub_20B51C88C(0, &qword_27C764F30);
    v92 = sub_20C13CC54();

    [v85 setTransportBarCustomMenuItems_];
    goto LABEL_75;
  }

  if (*(a1 + 16))
  {
    v29 = sub_20B65CEBC(2);
    if (v30)
    {
      v31 = *(*(a1 + 56) + 8 * v29);
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        v33 = v32;
        v34 = objc_allocWithZone(MEMORY[0x277CB85A8]);
        v35 = v31;
        v36 = sub_20C13C914();
        v37 = [v34 initWithTitle:v36 type:2];

        v38 = [v33 image];
        [v37 setImage_];

        [v37 setMenu_];
        v39 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_20C14F580;
        *(v40 + 32) = v37;
        sub_20B51C88C(0, &qword_27C76FE98);
        v41 = v37;
        v42 = sub_20C13CC54();

        [v39 setCustomControlItems_];
      }
    }
  }

  v43 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
  v44 = *(*&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator] + 32);
  v45 = *(v44 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v47 = *&v13[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];

    v48 = MEMORY[0x277D84F90];
    v49 = 32;
    do
    {
      v52 = *(v44 + v49);
      if (v52 != 2)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125[0] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5E974(0, *(v48 + 16) + 1, 1);
          v48 = v125[0];
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_20BB5E974((v50 > 1), v51 + 1, 1);
          v48 = v125[0];
        }

        *(v48 + 16) = v51 + 1;
        *(v48 + v51 + 32) = v52;
      }

      ++v49;
      --v45;
    }

    while (v45);

    v43 = v47;
    v46 = MEMORY[0x277D84F90];
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  v125[0] = v46;
  v103 = *(v48 + 16);
  if (v103)
  {
    v104 = 32;
    do
    {
      if (*(a1 + 16))
      {
        v105 = sub_20B65CEBC(*(v48 + v104));
        if (v106)
        {
          v107 = *(*(a1 + 56) + 8 * v105);
          MEMORY[0x20F2F43B0]();
          if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20C13CCA4();
          }

          sub_20C13CCE4();
        }
      }

      ++v104;
      --v103;
    }

    while (v103);
  }

LABEL_74:
  sub_20B51C88C(0, &qword_27C764F30);
  v92 = sub_20C13CC54();

  [v43 setTransportBarCustomMenuItems_];
LABEL_75:
}

void sub_20BE92A30(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 customMediaSelectionScheme];
  if (v5)
  {

    v27 = *(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
    v6 = *(*(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator) + 32);
    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {

      v9 = MEMORY[0x277D84F90];
      v10 = 32;
      do
      {
        v13 = *(v6 + v10);
        if (v13)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_20BB5E974(0, *(v9 + 16) + 1, 1);
          }

          v12 = *(v9 + 16);
          v11 = *(v9 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_20BB5E974((v11 > 1), v12 + 1, 1);
          }

          *(v9 + 16) = v12 + 1;
          *(v9 + v12 + 32) = v13;
        }

        ++v10;
        --v7;
      }

      while (v7);

      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v29 = v8;
    v21 = *(v9 + 16);
    v14 = v27;
    if (v21)
    {
      v22 = 32;
      do
      {
        if (*(a3 + 16))
        {
          v23 = sub_20B65CEBC(*(v9 + v22));
          if (v24)
          {
            v25 = *(*(a3 + 56) + 8 * v23);
            MEMORY[0x20F2F43B0]();
            if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20C13CCA4();
            }

            sub_20C13CCE4();
          }
        }

        ++v22;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v14 = *(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
    v15 = *(*(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator) + 32);
    v28 = MEMORY[0x277D84F90];
    v16 = *(v15 + 16);
    if (v16)
    {

      v17 = 32;
      do
      {
        if (*(a3 + 16))
        {
          v18 = sub_20B65CEBC(*(v15 + v17));
          if (v19)
          {
            v20 = *(*(a3 + 56) + 8 * v18);
            MEMORY[0x20F2F43B0]();
            if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20C13CCA4();
            }

            sub_20C13CCE4();
          }
        }

        ++v17;
        --v16;
      }

      while (v16);
    }
  }

  sub_20B51C88C(0, &qword_27C764F30);
  v26 = sub_20C13CC54();

  [v14 setTransportBarCustomMenuItems_];
}

id sub_20BE92DC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for SessionVideoPlayerViewController()
{
  result = qword_27C76FE88;
  if (!qword_27C76FE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE92F80()
{
  sub_20B52432C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BE93074()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = *(v1 + 16);
  *(v1 + 16) = sub_20BE95D70;
  *(v1 + 24) = v2;

  sub_20B583ECC(v3);

  v8 = [objc_allocWithZone(MEMORY[0x277CB85E8]) init];
  [v8 setExcludedControls_];
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  [v4 setConfiguration_];
  [v4 setSmu:0 includeTransportControls:?];
  if (_UISolariumEnabled())
  {
    [v4 setSmu:1 includeTransportControls:?];
    v5 = sub_20C138104();
    if (v5 != sub_20C138104())
    {
      sub_20B51C88C(0, &qword_27C764F30);
      v6 = sub_20C13CC54();
      [v4 setTransportBarCustomMenuItems_];
    }

    [v4 setShowsAudioLanguageMenu_];
  }

  else
  {
    sub_20B51C88C(0, &qword_27C76FE98);
    v7 = sub_20C13CC54();
    [v4 setCustomControlItems_];
  }
}

void sub_20BE9326C(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView);
  if (v5)
  {
    v10 = *(v4 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
    v18 = v5;
    v11 = [v10 view];
    if (v11)
    {
      v12 = v11;
      [v18 convertRect:v11 fromCoordinateSpace:{a1, a2, a3, a4}];
      sub_20C12E528(v13, v14, v15, v16);

      v17 = v12;
    }

    else
    {
      v17 = v18;
    }
  }
}

void sub_20BE9335C()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController];
  if ([v1 isPictureInPictureActive])
  {
    v2 = *MEMORY[0x277D768C8];
    v3 = *(MEMORY[0x277D768C8] + 8);
    v4 = *(MEMORY[0x277D768C8] + 16);
    v5 = *(MEMORY[0x277D768C8] + 24);
    v6 = v1;
LABEL_20:

    [v6 setLegibleContentInsets_];
    return;
  }

  sub_20C1380F4();
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 nativeBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v46.origin.x = v10;
  v46.origin.y = v12;
  v46.size.width = v14;
  v46.size.height = v16;
  Width = CGRectGetWidth(v46);
  v18 = [v7 mainScreen];
  [v18 nativeScale];
  v20 = v19;

  v21 = sub_20C138104();
  v22 = sub_20C138104();
  v23 = 20.0;
  if (Width / v20 <= 375.0)
  {
    v23 = 16.0;
  }

  if (v21 == v22)
  {
    v24 = 80.0;
  }

  else
  {
    v24 = v23;
  }

  v25 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView];
  if (!v25)
  {
    v36 = [v0 view];
    if (v36)
    {
      v37 = v36;
      [v36 safeAreaInsets];
      v39 = v38;

      v40 = [v0 view];
      if (v40)
      {
        v41 = v40;
        [v40 safeAreaInsets];
        v43 = v42;

        v5 = v24 + v43;
        v2 = 0.0;
        v4 = 0.0;
        v6 = v1;
        v3 = v24 + v39;
        goto LABEL_20;
      }

LABEL_27:
      __break(1u);
      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = v25;
  if (([v44 isHidden] & 1) != 0 || (objc_msgSend(v44, sel_alpha), v26 == 0.0))
  {
    v27 = [v0 view];
    if (!v27)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v28 = v27;
    [v27 safeAreaInsets];
    v30 = v29;

    MaxX = v24 + v30;
  }

  else
  {
    [*&v44[OBJC_IVAR____TtC9SeymourUI18SessionOverlayView_metricContainer] frame];
    MaxX = CGRectGetMaxX(v47);
  }

  v32 = [v0 view];
  if (!v32)
  {
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  [v32 safeAreaInsets];
  v35 = v34;

  [v1 setLegibleContentInsets_];
}

void sub_20BE93678(uint64_t a1)
{
  v2 = v1;
  if (_UISolariumEnabled())
  {
    v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v7 = *(v4 + 16);
    *(v4 + 16) = sub_20BE95C48;
    *(v4 + 24) = v6;

    sub_20B583ECC(v7);
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 buttonWithType_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [v8 buttonWithType_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = objc_allocWithZone(type metadata accessor for AirplayAndSettingsControlsView());

    v12 = v9;
    v13 = v10;
    v14 = sub_20B832900(v12, v13, a1);
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = &v14[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapAirplay];
    v17 = *&v14[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapAirplay];
    *v16 = sub_20BE95C38;
    v16[1] = v15;

    sub_20B583ECC(v17);

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v14[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapSettings];
    v20 = *&v14[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapSettings];
    *v19 = sub_20BE95C40;
    v19[1] = v18;

    sub_20B583ECC(v20);

    v21 = [*(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) customControlsView];
    [v21 addSubview_];
    v22 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView);
    *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView) = v14;
    v23 = v14;

    v24 = *&v23[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_settingsButton];
    v25 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView);
    *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView) = v24;
    v26 = v24;

    v27 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C151490;
    v29 = [v23 bottomAnchor];
    v30 = [v21 safeAreaLayoutGuide];

    v31 = [v30 bottomAnchor];
    v32 = [v29 constraintEqualToAnchor:v31 constant:-12.0];

    *(v28 + 32) = v32;
    v33 = [v23 trailingAnchor];

    v34 = [v21 safeAreaLayoutGuide];
    v35 = [v34 trailingAnchor];

    v36 = [v33 constraintEqualToAnchor_];
    *(v28 + 40) = v36;
    sub_20B51C88C(0, &qword_281100500);
    v37 = sub_20C13CC54();

    [v27 activateConstraints_];
  }
}

void sub_20BE93B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20BE91554(a1, a3);
  }
}

uint64_t sub_20BE93BAC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = *(v1 + 120);
    sub_20B584050(v3);
    result = swift_unknownObjectRelease();
    if (v3)
    {
      v3(result);
      return sub_20B583ECC(v3);
    }
  }

  return result;
}

uint64_t sub_20BE93C48()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = *(v1 + 72);
    sub_20B584050(v3);
    result = swift_unknownObjectRelease();
    if (v3)
    {
      v3(result);
      return sub_20B583ECC(v3);
    }
  }

  return result;
}

void sub_20BE93CE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370);
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = *(v10 + 16);
  *(v10 + 16) = sub_20BE95C50;
  *(v10 + 24) = v11;

  sub_20B583ECC(v12);

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  v48 = sub_20BE95C80;
  v49 = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  v47 = &block_descriptor_44_0;
  v15 = _Block_copy(aBlock);
  v16 = v0;

  [v13 animateWithDuration:v15 animations:0.2];
  _Block_release(v15);
  v17 = sub_20C13AAC4();
  v47 = v17;
  v48 = sub_20BE95C88();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v17);
  LOBYTE(v17) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

  v19 = [*&v16[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController] player];
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = v19;
  v21 = [v19 currentItem];

  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = [v21 asset];

  if (!v22)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {

LABEL_8:
    [*&v16[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController] setShowsAudioLanguageMenu_];
    goto LABEL_9;
  }

  v24 = v23;
  sub_20B51C88C(0, &qword_281100530);
  v25 = sub_20C13D374();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  sub_20B51C88C(0, &qword_27C763230);
  v41 = v22;
  sub_20C137C94();
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20BE95CE0;
  *(v28 + 24) = v27;
  v29 = v42;
  v30 = v43;
  (*(v42 + 16))(v3, v6, v43);
  v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v32 = swift_allocObject();
  (*(v29 + 32))(v32 + v31, v3, v30);
  v33 = (v32 + ((v2 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_20B939618;
  v33[1] = v28;
  v34 = v16;
  sub_20C137C94();
  (*(v29 + 8))(v6, v30);
  v35 = v45;
  v36 = sub_20C137CB4();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v36(sub_20B52347C, v37);

  (*(v44 + 8))(v9, v35);
LABEL_9:
  v38 = [*&v16[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsControlItem] view];
  v39 = *&v16[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView];
  *&v16[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView] = v38;
}

void sub_20BE942E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_20BE94358(uint64_t a1)
{
  v10 = [objc_allocWithZone(MEMORY[0x277CB85E8]) init];
  [v10 setExcludedControls_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v4 = sub_20C13C914();

  [v10 setMediaPresentationSettingsAudioGroupTitle_];

  v5 = *(a1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  [v5 setConfiguration_];
  [v5 setSmu:1 includeTransportControls:?];
  sub_20BE9455C();
  if ((_UISolariumEnabled() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_20C14F580;
    v7 = *(a1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsControlItem);
    *(v6 + 32) = v7;
    sub_20B51C88C(0, &qword_27C76FE98);
    v8 = v7;
    v9 = sub_20C13CC54();

    [v5 setCustomControlItems_];
  }
}

void sub_20BE9455C()
{
  if (_UISolariumEnabled())
  {
    v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
    v2 = [v1 customControlItems];
    if (v2)
    {
      v3 = v2;
      sub_20B51C88C(0, &qword_27C76FE98);
      v4 = sub_20C13CC74();

      if (v4 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
      {
        v6 = 0;
        v17 = v1;
        v18 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayControlItem;
        v1 = (v4 & 0xC000000000000001);
        v7 = v4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v1)
          {
            v8 = MEMORY[0x20F2F5430](v6, v4);
          }

          else
          {
            if (v6 >= *(v7 + 16))
            {
              goto LABEL_20;
            }

            v8 = *(v4 + 8 * v6 + 32);
          }

          v9 = v8;
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v11 = v4;
          v12 = v0;
          v13 = *(v0 + v18);
          v14 = sub_20C13D5F4();

          if (v14)
          {
          }

          else
          {
            sub_20C13DD34();
            sub_20C13DD74();
            sub_20C13DD84();
            sub_20C13DD44();
          }

          v4 = v11;
          ++v6;
          v0 = v12;
          if (v10 == i)
          {
            v1 = v17;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

LABEL_22:

      v19 = sub_20C13CC54();

      v2 = v19;
    }

    v20 = v2;
    [v1 setCustomControlItems_];
    v16 = v20;
  }

  else
  {
    v15 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView;
    v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView);
    if (v16)
    {
      [v16 removeFromSuperview];
      v16 = *(v0 + v15);
    }

    *(v0 + v15) = 0;
  }
}

id sub_20BE947A8(id *a1, uint64_t a2)
{
  v3 = v2;
  v52 = sub_20C132FB4();
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB8);
  *&v15 = MEMORY[0x28223BE20](v14 - 8).n128_u64[0];
  v17 = &v44 - v16;
  v18 = *a1;
  v19 = [*a1 options];
  sub_20B51C88C(0, &qword_27C76FEC0);
  v20 = sub_20C13CC74();

  if (v20 >> 62)
  {
LABEL_27:
    v55 = v20 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_20C13DB34();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_28:
    v48 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v55 = v20 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_3:
  v22 = 0;
  v54 = v20 & 0xC000000000000001;
  v49 = (v6 + 8);
  v47 = v3;
  v48 = MEMORY[0x277D84F90];
  v53 = v21;
  v45 = v18;
  v46 = a2;
  v50 = v20;
  do
  {
    v18 = v22;
    while (1)
    {
      if (v54)
      {
        v23 = MEMORY[0x20F2F5430](v18, v20);
      }

      else
      {
        if (v18 >= *(v55 + 16))
        {
          goto LABEL_26;
        }

        v23 = *(v20 + 8 * v18 + 32);
      }

      v3 = v23;
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v24 = [v23 locale];
      v56 = (v18 + 1);
      if (v24)
      {
        v25 = v24;
        sub_20C132F84();

        v6 = 0;
      }

      else
      {
        v6 = 1;
      }

      v26 = sub_20C132FD4();
      a2 = *(v26 - 8);
      (*(a2 + 56))(v10, v6, 1, v26);
      sub_20BE95D00(v10, v13);
      if ((*(a2 + 48))(v13, 1, v26) != 1)
      {
        break;
      }

      sub_20B520158(v13, &qword_27C76FEB0);
LABEL_6:
      ++v18;
      if (v56 == v53)
      {
        a2 = v46;
        v18 = v45;
        goto LABEL_29;
      }
    }

    v27 = v10;
    v28 = v17;
    v29 = v51;
    sub_20C132FC4();
    (*(a2 + 8))(v13, v26);
    v6 = v29;
    sub_20C132FA4();
    v30 = v29;
    v17 = v28;
    (*v49)(v30, v52);
    v31 = sub_20C132F24();
    a2 = *(v31 - 8);
    if ((*(a2 + 48))(v28, 1, v31) == 1)
    {

      sub_20B520158(v28, &qword_27C76FEB8);
      v10 = v27;
      v20 = v50;
      goto LABEL_6;
    }

    v6 = sub_20C132F14();
    v33 = v32;

    (*(a2 + 8))(v28, v31);
    v34 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_20BC05BA4(0, *(v34 + 2) + 1, 1, v34);
    }

    v10 = v27;
    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    v20 = v50;
    if (v36 >= v35 >> 1)
    {
      v34 = sub_20BC05BA4((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v48 = v34;
    v37 = &v34[16 * v36];
    *(v37 + 4) = v6;
    *(v37 + 5) = v33;
    v22 = v56;
    a2 = v46;
    v3 = v47;
    v18 = v45;
  }

  while (v56 != v53);
LABEL_29:

  v38 = sub_20B527580(v48);

  v39 = [v18 customMediaSelectionScheme];
  if (v39)
  {
    v40 = v39;

    v41 = 1;
  }

  else
  {
    v42 = *(v38 + 16);

    v41 = v42 > 1;
  }

  return [*(a2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) setShowsAudioLanguageMenu_];
}

void sub_20BE94D74(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  v7 = [*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) contentOverlayView];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview_];
  }
}

id sub_20BE94E3C(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView;
  result = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView);
  if (result)
  {
    [result setHidden_];
    result = *(v1 + v3);
    if (result)
    {
      v5 = 0.0;
      if (a1)
      {
        v5 = 1.0;
      }

      return [result setAlpha_];
    }
  }

  return result;
}

void sub_20BE94EC8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_airplayButton];
    if (a1)
    {
      v4 = objc_allocWithZone(MEMORY[0x277D75348]);
      v5 = v2;
      v6 = [v4 initWithRed:0.0509803922 green:0.478431373 blue:1.0 alpha:1.0];
    }

    else
    {
      v7 = objc_opt_self();
      v8 = v2;
      v6 = [v7 whiteColor];
    }

    v9 = v6;
    [v3 setTintColor_];
  }
}

void sub_20BE94FC8()
{
  v1 = v0;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = v5;
  v3 = sub_20C132A84();

  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver);
  *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver) = v3;
}

uint64_t sub_20BE950A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FEA0);
  result = sub_20C132A54();
  if ((v6 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = result;
      swift_unknownObjectRetain();

      sub_20B672EF4(v2, v3, v4, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20BE95168()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver);
  if (v3)
  {
    v4 = v3;
    sub_20C132A14();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v1 + v5);
  }

  *(v1 + v5) = 0;
}

id sub_20BE95240()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) contentOverlayView];

  return v1;
}

id sub_20BE95280()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) customControlsView];

  return v1;
}

uint64_t sub_20BE952C0(uint64_t a1)
{
  [*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) setDelegate_];

  return swift_unknownObjectRelease();
}

void *sub_20BE95344()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView);
  v2 = v1;
  return v1;
}

id sub_20BE953A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) setPlayer_];
}

id sub_20BE954C4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  return [*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController) setPlayer_];
}

void sub_20BE955E0(char a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = 0.0;
    if (a1)
    {
      v4 = 1.0;
    }

    v5 = v3;
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id sub_20BE9565C(char a1)
{
  v2 = 0.0;
  if (a1)
  {
    v2 = 1.0;
  }

  return [*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView) setAlpha_];
}

void sub_20BE9572C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver);
  if (v3)
  {
    v4 = v3;
    sub_20C132A14();

    v5 = *(v1 + v2);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v2) = 0;
}

id sub_20BE957B4(char a1)
{
  result = *(v1 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView);
  if (result)
  {
    v4 = 0.0;
    if (a1)
    {
      v4 = 1.0;
    }

    return [result setAlpha_];
  }

  return result;
}

id sub_20BE9584C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  [v1 willMoveToParentViewController_];
  result = [v1 view];
  if (result)
  {
    v3 = result;
    [result removeFromSuperview];

    return [v1 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BE958F4(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_transportBarControlsCoordinator);
  swift_beginAccess();
  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  sub_20B91DA38(v6, a2, isUniquelyReferenced_nonNull_native);
  *(v5 + 40) = v11;
  result = swift_endAccess();
  v9 = *(v5 + 16);
  if (v9)
  {
    sub_20B584050(*(v5 + 16));

    v9(v10);
    sub_20B583ECC(v9);
  }

  return result;
}

uint64_t sub_20BE959E4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

uint64_t sub_20BE95A84(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_playbackViewController);
  (*(v5 + 16))(&v11[-v7], v2 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController__requiresLinearPlayback, v4, v6);
  sub_20C13A344();
  (*(v5 + 8))(v8, v4);
  [v9 setRequiresLinearPlayback_];
  [v9 setShowsPlaybackControls_];
  [v9 setShowsTimecodes_];
  [v9 setUpdatesNowPlayingInfoCenter_];
  [v9 setVideoGravity_];
  [v9 setVolumeControlsCanShowSlider_];
  return v2;
}

unint64_t sub_20BE95C88()
{
  result = qword_281103AF0;
  if (!qword_281103AF0)
  {
    sub_20C13AAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103AF0);
  }

  return result;
}

uint64_t sub_20BE95D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_55Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20BE95E68(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E178C(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_20BE95F24()
{
  result = qword_27C76FEE0;
  if (!qword_27C76FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76FEE0);
  }

  return result;
}

void sub_20BE95F78()
{
  v1 = sub_20C13A814();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_airplayAndSettingsControlsView) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_gymKitResumeMachineView;
  v6 = [objc_allocWithZone(type metadata accessor for GymKitResumeMachineView()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_settingsPopoverSourceView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_videoBoundsObserver) = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D4EF20], v1);
  v7[15] = 1;
  sub_20C13A384();
  sub_20C13DE24();
  __break(1u);
}

void *sub_20BE96148()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView);
  v2 = v1;
  return v1;
}

char *sub_20BE96178(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_layout];
  *v11 = xmmword_20C181640;
  *(v11 + 1) = xmmword_20C181650;
  v12 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView;
  v13 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v14 = *&qword_27C79ACA0;
  v15 = [v13 config];
  [v15 setCornerRadius_];

  v16 = [v13 config];
  [v16 setScaleSizeIncrease_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v17 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = sub_20C13C914();
  [v18 setText_];

  [v18 setNumberOfLines_];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontForTextStyle_];
  [v18 setFont_];

  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  [v18 setTextColor_];

  [v18 &selRef_count + 2];
  [v18 setAdjustsFontForContentSizeCategory_];
  *&v4[v17] = v18;
  v24 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v26 = sub_20C13C914();
  [v25 setText_];

  [v25 setNumberOfLines_];
  v27 = [v20 preferredFontForTextStyle_];
  [v25 setFont_];

  v28 = [v22 secondaryLabelColor];
  [v25 setTextColor_];

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setAdjustsFontForContentSizeCategory_];
  *&v4[v24] = v25;
  v29 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v30 setAdjustsFontForContentSizeCategory_];
  v31 = [v20 preferredFontForTextStyle_];
  [v30 setFont_];

  v32 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v30 setBackgroundColor_];

  v33 = [v30 layer];
  [v33 setCornerRadius_];

  [v30 setClipsToBounds_];
  [v30 setTextAlignment_];
  v34 = [v22 blackColor];
  [v30 setTextColor_];

  *&v4[v29] = v30;
  v97.receiver = v4;
  v97.super_class = type metadata accessor for TVIndexedBrickItemCell();
  v35 = objc_msgSendSuper2(&v97, sel_initWithFrame_, a1, a2, a3, a4);
  v36 = [v35 contentView];
  v37 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView;
  v38 = *&v35[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView];
  [v36 addSubview_];

  v39 = [v35 &selRef_setMaximumFractionDigits_];
  v40 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel;
  [v39 addSubview_];

  v41 = [v35 &selRef_setMaximumFractionDigits_];
  v94 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel;
  [v41 addSubview_];

  v42 = [v35 &selRef_setMaximumFractionDigits_];
  v95 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel;
  [v42 addSubview_];

  v43 = *&v35[v37];
  v44 = &v43[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
  *v44 = v14;
  v44[1] = v14;
  v44[2] = v14;
  v44[3] = v14;
  v96 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C1580B0;
  v46 = [v43 leadingAnchor];
  v47 = [v35 &selRef_setMaximumFractionDigits_];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v45 + 32) = v49;
  v50 = [*&v35[v37] trailingAnchor];
  v51 = [v35 &selRef_setMaximumFractionDigits_];
  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v45 + 40) = v53;
  v54 = [*&v35[v37] topAnchor];
  v55 = [v35 &selRef_setMaximumFractionDigits_];
  v56 = [v55 &selRef_setLineBreakMode_];

  v57 = [v54 constraintEqualToAnchor_];
  *(v45 + 48) = v57;
  v58 = [*&v35[v37] heightAnchor];
  v59 = [v58 constraintEqualToConstant_];

  *(v45 + 56) = v59;
  v60 = [*&v35[v40] leadingAnchor];
  v61 = [v35 &selRef_setMaximumFractionDigits_];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor_];
  *(v45 + 64) = v63;
  v64 = [*&v35[v40] widthAnchor];
  v65 = [v64 constraintEqualToConstant_];

  *(v45 + 72) = v65;
  v66 = [*&v35[v40] heightAnchor];
  v67 = [v66 constraintEqualToConstant_];

  *(v45 + 80) = v67;
  v68 = [*&v35[v40] centerYAnchor];
  v69 = [*&v35[v94] centerYAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v45 + 88) = v70;
  v71 = [*&v35[v94] leadingAnchor];
  v72 = [*&v35[v40] trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:10.0];

  *(v45 + 96) = v73;
  v74 = [*&v35[v94] topAnchor];
  v75 = [*&v35[v37] bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:23.0];

  *(v45 + 104) = v76;
  v77 = [*&v35[v94] trailingAnchor];
  v78 = [v35 contentView];
  v79 = [v78 trailingAnchor];

  v80 = [v77 constraintLessThanOrEqualToAnchor_];
  *(v45 + 112) = v80;
  v81 = [*&v35[v95] topAnchor];
  v82 = [*&v35[v94] bottomAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v45 + 120) = v83;
  v84 = [*&v35[v95] leadingAnchor];
  v85 = [v35 contentView];
  v86 = [v85 leadingAnchor];

  v87 = [v84 constraintEqualToAnchor_];
  *(v45 + 128) = v87;
  v88 = [*&v35[v95] trailingAnchor];
  v89 = [v35 contentView];

  v90 = [v89 trailingAnchor];
  v91 = [v88 constraintLessThanOrEqualToAnchor_];

  *(v45 + 136) = v91;
  sub_20B51C88C(0, &qword_281100500);
  v92 = sub_20C13CC54();

  [v96 activateConstraints_];

  return v35;
}

id sub_20BE96FB8(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    v23 = a1;
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v6 = [v2 contentView];
    v7 = [v6 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v8 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x20F2F5430](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v11);

        ++v10;
        if (v12 == i)
        {
          v13 = v24[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v13 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v13;
    sub_20B6FFB30(v24, *&v3[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView]);

    v14 = sub_20B8E9218(v28);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;
      do
      {
        sub_20B51CC64(v16, v24);
        v17 = *&v3[v4];
        v18 = v25;
        v19 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v19 + 16))(v17, a2 & 1, v18, v19);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v16 += 40;
        --v15;
      }

      while (v15);
    }

    LOBYTE(a1) = v23;
  }

  v20 = *&v3[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel];
  if ((a1 & 8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = 4;
  }

  [v20 setSmu:(a1 & 8) >> 3 marqueeEnabled:?];
  return [v20 setLineBreakMode_];
}

void sub_20BE9724C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v7 = [v3 contentView];
    v8 = [v7 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v9 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v12);

        ++v11;
        if (v13 == i)
        {
          v14 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
    v27 = sub_20BE99764;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_145;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

void sub_20BE97550()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel);
}

id sub_20BE975E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVIndexedBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVIndexedBrickItemCell()
{
  result = qword_27C76FF10;
  if (!qword_27C76FF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE97708()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE977D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BE9781C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BE97884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

double sub_20BE97908()
{
  [*(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel) intrinsicContentSize];
  v2 = v1 + 254.0;
  [*(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel) intrinsicContentSize];
  return v2 + v3;
}

uint64_t sub_20BE97988(uint64_t a1, void *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(a2 + v17, v11, &unk_27C766680);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B69ADFC();
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

id sub_20BE97E44(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v224 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v183 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v210 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v183 - v9;
  v209 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v183 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v15 - 8);
  v217 = &v183 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v208 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = v19;
  MEMORY[0x28223BE20](v20);
  v218 = &v183 - v21;
  v215 = sub_20C1391C4();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v216 = &v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_20C138A64();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v219 = &v183 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v24 - 8);
  v213 = &v183 - v25;
  v26 = sub_20C13C554();
  v226 = *(v26 - 8);
  v227 = v26;
  MEMORY[0x28223BE20](v26);
  v225 = (&v183 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v230 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v220 = v29;
  v221 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v231 = &v183 - v31;
  v32 = sub_20C136CD4();
  v222 = *(v32 - 8);
  v223 = v32;
  MEMORY[0x28223BE20](v32);
  v228 = &v183 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134E44();
  MEMORY[0x28223BE20](v34 - 8);
  v229 = &v183 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20C134014();
  MEMORY[0x28223BE20](v36);
  v232 = &v183 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v40 == 33)
  {
    v61 = v233;
    v62 = *&v233[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel];
    v63 = sub_20C13C914();
    [v62 setText_];

    v64 = *&v61[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel];
    v65 = sub_20C13C914();
    [v64 setText_];

    [*&v61[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel] setHidden_];
    v66 = *&v61[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView];
    if (qword_27C760828 == -1)
    {
LABEL_7:
      v67 = qword_27C79AE50;

      return [v66 setBackgroundColor_];
    }

LABEL_30:
    v182 = v66;
    swift_once();
    v66 = v182;
    goto LABEL_7;
  }

  if (v40 == 32)
  {
    v205 = v28;
    v188 = v10;
    v192 = v18;
    v193 = v17;
    v189 = v14;
    v190 = v6;
    v191 = v5;
    v41 = v37;
    v42 = v38;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v44 = swift_projectBox();
    v45 = v44 + *(v43 + 64);
    v47 = *v45;
    v46 = *(v45 + 8);
    v48 = *(v45 + 16);
    v49 = *(v45 + 24);
    v50 = *(v45 + 40);
    v224 = *(v45 + 32);
    v51 = v44 + *(v43 + 80);
    v52 = *(v51 + 8);
    v206 = *v51;
    v204 = *(v51 + 16);
    v203 = *(v51 + 32);
    LODWORD(v202) = *(v51 + 40);
    v198 = v42;
    v53 = *(v42 + 16);
    v199 = v41;
    v53(v232, v44, v41);
    v54 = v233;
    v55 = *&v233[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel];
    v56 = v47;
    v57 = v46;
    v195 = v48;
    v201 = v49;

    v197 = v50;
    v58 = v202;

    v59 = v203;
    sub_20B6543CC(v206, v52);
    [v55 setAttributedText_];
    v60 = *&v54[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel];
    v196 = v57;
    [v60 setAttributedText_];
    v200 = v56;
    if (v52 == 1 || (, , (v58 & 1) != 0))
    {
      [*&v54[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel] setHidden_];
    }

    else
    {
      v80 = *&v54[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel];
      v234[0] = v59;
      sub_20C13DFA4();
      v81 = sub_20C13C914();

      [v80 setText_];

      [v80 setHidden_];
    }

    v83 = v231;
    v82 = v232;
    v84 = v229;
    v85 = sub_20C133EB4() > 0;
    v86 = *&v54[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView];
    sub_20B6262FC(v85);
    v87 = sub_20C133E54();
    v204 = v86;
    sub_20B626760(v87, v88);

    if ((*&v54[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
    {
      v89 = 2;
    }

    else
    {
      v89 = 4;
    }

    [v55 setSmu:(*&v54[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
    [v55 setLineBreakMode_];
    sub_20C133F04();
    v202 = sub_20C138054();
    v206 = v90;
    v91 = v228;
    sub_20C134E34();
    sub_20C136CB4();
    v194 = sub_20C136CC4();
    v203 = v92;
    sub_20B51C88C(0, &qword_281100530);
    v93 = sub_20C13D374();
    v94 = v225;
    v95 = v226;
    *v225 = v93;
    v96 = v227;
    (*(v95 + 104))(v94, *MEMORY[0x277D85200], v227);
    v97 = sub_20C13C584();
    v66 = (*(v95 + 8))(v94, v96);
    v98 = v205;
    if (v97)
    {
      v99 = v204;
      [v204 setContentMode_];
      if (sub_20BE97988(v83, v99, 0))
      {
        v100 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v101 = v230;
        v102 = *(v230 + 16);
        v103 = v221;
        v186 = v230 + 16;
        v185 = v102;
        v102(v221, v83, v98);
        v104 = *(v101 + 80);
        v105 = (v104 + 24) & ~v104;
        v184 = v220 + 7;
        v106 = (v220 + 7 + v105) & 0xFFFFFFFFFFFFFFF8;
        v107 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
        v108 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
        v226 = v104;
        v227 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
        v109 = swift_allocObject();
        *(v109 + 16) = v100;
        v110 = v101;
        v111 = v103;
        v112 = *(v110 + 32);
        v225 = (v110 + 32);
        v187 = v112;
        v112(v109 + v105, v103, v98);
        v113 = (v109 + v106);
        v114 = v203;
        *v113 = v194;
        v113[1] = v114;
        v115 = (v109 + v107);
        v116 = v206;
        *v115 = v202;
        v115[1] = v116;
        *(v109 + v108) = 2;
        v117 = v109 + v227;
        *v117 = MEMORY[0x277D84F90];
        *(v117 + 8) = 0;
        v118 = (v109 + ((v108 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v118 = 0;
        v118[1] = 0;
        v119 = v204;
        v120 = &v204[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v121 = *&v204[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        *v120 = sub_20BE9951C;
        v120[1] = v109;

        sub_20B583ECC(v121);

        [v119 bounds];
        if (v122 <= 0.0 || (v124 = v123, v123 <= 0.0))
        {

          v98 = v205;
          v146 = v223;
          v83 = v231;
        }

        else
        {
          v125 = v122;
          v126 = ~v226;
          [v119 setStackImage_];
          v127 = v213;
          v83 = v231;
          v128 = v205;
          v129 = v185;
          v185(v213, v231, v205);
          (*(v230 + 56))(v127, 0, 1, v128);
          v130 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v127, &v119[v130], &unk_27C766680);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v131 = sub_20C13D5A4();
          [v119 setBackgroundColor_];

          v132 = &v119[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v132 = v125;
          v132[1] = v124;
          *(v132 + 16) = 0;
          v133 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v129(v111, v83, v128);
          v213 = v126;
          v134 = (v226 + 16) & v126;
          v135 = (v184 + v134) & 0xFFFFFFFFFFFFFFF8;
          v136 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
          v137 = (v136 + 23) & 0xFFFFFFFFFFFFFFF8;
          v138 = swift_allocObject();
          v187(v138 + v134, v221, v128);
          *(v138 + v135) = v133;
          v139 = (v138 + v136);
          v140 = v221;
          *v139 = v125;
          v139[1] = v124;
          v227 = v138;
          v141 = (v138 + v137);
          *v141 = 0;
          v141[1] = 0;
          v98 = v128;
          v129(v140, v83, v128);
          (*(v214 + 104))(v216, *MEMORY[0x277D542A8], v215);

          v142 = v219;
          sub_20C138A54();
          v143 = v217;
          sub_20B5F1AA0(v142, v217);
          v144 = v192;
          v145 = v193;
          if ((*(v192 + 48))(v143, 1, v193) == 1)
          {
            sub_20B520158(v143, &unk_27C766670);
            sub_20BA1DA34();

            (*(v211 + 8))(v142, v212);
          }

          else
          {
            v148 = *(v144 + 32);
            v148(v218, v143, v145);
            v149 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v150 = v221;
            v129(v221, v231, v98);
            v151 = (v226 + 40) & v213;
            v152 = v151 + v220;
            v153 = (v151 + v220) & 0xFFFFFFFFFFFFFFF8;
            v154 = v144;
            v155 = swift_allocObject();
            *(v155 + 2) = v149;
            v155[3] = v125;
            v155[4] = v124;
            v187(v155 + v151, v150, v98);
            *(v155 + v152) = 0;
            v156 = v155 + v153;
            *(v156 + 1) = 0;
            *(v156 + 2) = 0;
            v157 = swift_allocObject();
            *(v157 + 16) = sub_20BE996B0;
            *(v157 + 24) = v155;
            v158 = v154;
            v159 = *(v154 + 16);
            v160 = v208;
            v161 = v193;
            v159(v208, v218, v193);
            v162 = (*(v158 + 80) + 16) & ~*(v158 + 80);
            v163 = (v207 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
            v164 = swift_allocObject();
            v148((v164 + v162), v160, v161);
            v165 = (v164 + v163);
            *v165 = sub_20B5F67A4;
            v165[1] = v157;
            v166 = v188;
            sub_20C137C94();
            v167 = swift_allocObject();
            v168 = v227;
            *(v167 + 16) = sub_20BE995F4;
            *(v167 + 24) = v168;
            v169 = swift_allocObject();
            *(v169 + 16) = sub_20B5F67D4;
            *(v169 + 24) = v167;
            v170 = v190;
            v171 = v210;
            v172 = v191;
            (*(v190 + 16))(v210, v166, v191);
            v173 = (*(v170 + 80) + 16) & ~*(v170 + 80);
            v174 = (v209 + v173 + 7) & 0xFFFFFFFFFFFFFFF8;
            v175 = swift_allocObject();
            (*(v170 + 32))(v175 + v173, v171, v172);
            v176 = (v175 + v174);
            *v176 = sub_20B5DF204;
            v176[1] = v169;

            v177 = v189;
            sub_20C137C94();
            v178 = *(v170 + 8);
            v178(v166, v172);
            v179 = sub_20C137CB4();
            v180 = swift_allocObject();
            *(v180 + 16) = 0;
            *(v180 + 24) = 0;
            v179(sub_20B52347C, v180);

            v83 = v231;
            v178(v177, v172);
            (*(v192 + 8))(v218, v193);
            (*(v211 + 8))(v219, v212);
            v98 = v205;
          }

          v146 = v223;
        }

        v91 = v228;
        v84 = v229;
        v147 = v222;
        v82 = v232;
      }

      else
      {

        v147 = v222;
        v146 = v223;
      }

      v181 = v200;
      (*(v230 + 8))(v83, v98);
      (*(v147 + 8))(v91, v146);

      sub_20B62A2AC(v84);
      return (*(v198 + 8))(v82, v199);
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_20C13B534();

  v69 = v233;
  v70 = sub_20C13BB74();
  v71 = sub_20C13D1D4();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v234[0] = v74;
    *v72 = 138543618;
    *(v72 + 4) = v69;
    *v73 = v69;
    *(v72 + 12) = 2082;
    v234[3] = a1;
    v75 = sub_20B5F66D0();
    v76 = v69;
    v77 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v75);
    v79 = sub_20B51E694(v77, v78, v234);

    *(v72 + 14) = v79;
    _os_log_impl(&dword_20B517000, v70, v71, "Attempted to configure %{public}@ with item: %{public}s", v72, 0x16u);
    sub_20B520158(v73, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v73, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x20F2F6A40](v74, -1, -1);
    MEMORY[0x20F2F6A40](v72, -1, -1);
  }

  return (*(v224 + 8))(v4, v2);
}

void sub_20BE9951C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA43DE4(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BE995F4(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63610(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BE996B0(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2E6C(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

id sub_20BE99764()
{
  v1 = (*(v0 + 24) & 8uLL) >> 3;
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel);
  if ((*(v0 + 24) & 8) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  [v2 setSmu:v1 marqueeEnabled:?];

  return [v2 setLineBreakMode_];
}

void sub_20BE997D4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_layout);
  *v3 = xmmword_20C181640;
  v3[1] = xmmword_20C181650;
  v4 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView;
  v5 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27C79ACA0;
  v7 = [v5 config];
  [v7 setCornerRadius_];

  v8 = [v5 config];
  [v8 setScaleSizeIncrease_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v9 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = sub_20C13C914();
  [v10 setText_];

  [v10 setNumberOfLines_];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontForTextStyle_];
  [v10 setFont_];

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  [v10 setTextColor_];

  [v10 &selRef_count + 2];
  [v10 setAdjustsFontForContentSizeCategory_];
  *(v0 + v9) = v10;
  v16 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_subtitleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = sub_20C13C914();
  [v17 setText_];

  [v17 setNumberOfLines_];
  v19 = [v12 preferredFontForTextStyle_];
  [v17 setFont_];

  v20 = [v14 secondaryLabelColor];
  [v17 setTextColor_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  *(v0 + v16) = v17;
  v21 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_indexLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setAdjustsFontForContentSizeCategory_];
  v23 = [v12 preferredFontForTextStyle_];
  [v22 setFont_];

  v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v22 setBackgroundColor_];

  v25 = [v22 layer];
  [v25 setCornerRadius_];

  [v22 setClipsToBounds_];
  [v22 setTextAlignment_];
  v26 = [v14 blackColor];
  [v22 setTextColor_];

  *(v0 + v21) = v22;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BE99D2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FF40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_20C137514();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_item;
  swift_beginAccess();
  sub_20B5DF2D4(v9, v2 + v12, &qword_27C76FF40);
  swift_endAccess();
  sub_20C137504();
  v13 = sub_20C134284();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v14, &unk_27C7623C0);
  swift_endAccess();
  v15 = sub_20C1374E4();
  v16 = (v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
  *v16 = v15;
  v16[1] = v17;

  v18 = sub_20C1374F4();
  if (v19)
  {
    v20 = sub_20BE9A4E8(v18, v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title);
  *(v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title) = v20;
}

void sub_20BE99FA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_20C137F24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134204();
  sub_20C137F14();
  v9 = *(v6 + 8);
  v9(v8, v5);
  v10 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B5DF2D4(v4, v1 + v10, &unk_27C7623C0);
  swift_endAccess();
  sub_20C134204();
  v11 = sub_20C137EB4();
  v13 = v12;
  v9(v8, v5);
  v14 = (v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
  *v14 = v11;
  v14[1] = v13;

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer + 24));
  sub_20C138D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14F980;
  sub_20C134204();
  v16 = sub_20C137F04();
  v18 = v17;
  v9(v8, v5);
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_20B5D91B8();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v19 = sub_20C13C924();
  v21 = v20;

  v22 = sub_20BE9A4E8(v19, v21);

  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title) = v22;

  sub_20BE9A740(1);
}

void sub_20BE9A29C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_20C134734();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135CB4();
  sub_20C134714();
  v9 = *(v6 + 8);
  v9(v8, v5);
  v10 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B5DF2D4(v4, v1 + v10, &unk_27C7623C0);
  swift_endAccess();
  sub_20C135CB4();
  v11 = sub_20C1346C4();
  v13 = v12;
  v9(v8, v5);
  v14 = (v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
  *v14 = v11;
  v14[1] = v13;

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer + 24));
  v15 = sub_20C138D34();
  v17 = sub_20BE9A4E8(v15, v16);

  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title) = v17;

  sub_20BE9A740(1);
}

uint64_t sub_20BE9A4E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C138094();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - v13);
  *v14 = 0xD000000000000010;
  v14[1] = 0x800000020C1A5120;
  swift_storeEnumTagMultiPayload();
  *v11 = 3;
  swift_storeEnumTagMultiPayload();
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v15 = *(v6 + 72);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C1517D0;
  v18 = v17 + v16;
  sub_20B634348(v14, v18);
  sub_20B634348(v11, v18 + v15);
  sub_20B634348(v8, v18 + 2 * v15);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_mediaTagStringBuilder + 24));

  v19 = sub_20C138544();

  v20 = MEMORY[0x277D53BC8];
  sub_20BE9B9EC(v8, MEMORY[0x277D53BC8]);
  sub_20BE9B9EC(v11, v20);
  sub_20BE9B9EC(v14, v20);
  return v19;
}

void sub_20BE9A740(int a1)
{
  v45 = a1;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v12, v11, &unk_27C7623C0);
  v13 = sub_20C134284();
  LODWORD(v12) = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_20B520158(v11, &unk_27C7623C0);
  if (v12 == 1 || (v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title)) == 0)
  {
    sub_20C13B534();
    v40 = sub_20C13BB74();
    v41 = sub_20C13D1F4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20B517000, v40, v41, "No title or preview for this shelf provided. Not building row", v42, 2u);
      MEMORY[0x20F2F6A40](v42, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_20C14F980;
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v15 + 32) = v16 | 0x5000000000000007;
    v48 = 0uLL;
    LOBYTE(v49) = 1;
    *(&v49 + 1) = 0;
    *&v50 = 0;
    WORD4(v50) = 384;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    LOBYTE(v54) = 0;
    *(&v54 + 1) = v15;
    *&v55[0] = MEMORY[0x277D84F90];
    *(v55 + 8) = 0u;
    *(&v55[1] + 8) = 0u;
    *(&v55[2] + 1) = 0;
    v56 = 2;
    nullsub_1(&v48);
    v17 = v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row;
    v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 144);
    v57[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 128);
    v57[9] = v18;
    v58 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 160);
    v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 80);
    v57[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 64);
    v57[5] = v19;
    v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 112);
    v57[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 96);
    v57[7] = v20;
    v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 16);
    v57[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row);
    v57[1] = v21;
    v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 48);
    v57[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 32);
    v57[3] = v22;
    v23 = v55[2];
    *(v17 + 128) = v55[1];
    *(v17 + 144) = v23;
    *(v17 + 160) = v56;
    v24 = v53;
    *(v17 + 64) = v52;
    *(v17 + 80) = v24;
    v25 = v55[0];
    *(v17 + 96) = v54;
    *(v17 + 112) = v25;
    v26 = v49;
    *v17 = v48;
    *(v17 + 16) = v26;
    v27 = v51;
    *(v17 + 32) = v50;
    *(v17 + 48) = v27;
    v28 = v14;
    sub_20B520158(v57, &qword_27C762340);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v30 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v31 = sub_20B61CE98(v1, Strong);
      if (v32)
      {
        v34 = v31;
        v35 = v32;
        v36 = v33;
        v44 = v1;
        sub_20B5E2E18();
        *v8 = sub_20C13D374();
        v38 = v46;
        v37 = v47;
        (*(v46 + 104))(v8, *MEMORY[0x277D85200], v47);
        v39 = sub_20C13C584();
        (*(v38 + 8))(v8, v37);
        if ((v39 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B6203EC(v34, v35, v36, v44, v45 & 1, v30);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BE9AC44()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_mediaTagStringBuilder);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview, &unk_27C7623C0);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_item, &qword_27C76FF40);
  return v0;
}

uint64_t sub_20BE9ADB0()
{
  sub_20BE9AC44();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreviewVideoLinkShelf()
{
  result = qword_27C76FF28;
  if (!qword_27C76FF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE9AE5C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20BE9AFE4(319, &qword_27C76A130, MEMORY[0x277D50760]);
    if (v1 <= 0x3F)
    {
      sub_20BE9AFE4(319, &qword_27C76FF38, MEMORY[0x277D53478]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BE9AFE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BE9B038@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BE9B0B0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20BE9B16C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FF40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_item;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v4, v3, &qword_27C76FF40);
  v5 = sub_20C137514();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_20B520158(v3, &qword_27C76FF40);
  if (v4 != 1)
  {
    sub_20BE9A740(0);
  }
}

uint64_t sub_20BE9B28C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_canonicalIdentifier);

  return v1;
}

uint64_t sub_20BE9B2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_row;
  sub_20B5D8060(v20);
  v7 = v20[9];
  *(v6 + 128) = v20[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v21;
  v8 = v20[5];
  *(v6 + 64) = v20[4];
  *(v6 + 80) = v8;
  v9 = v20[7];
  *(v6 + 96) = v20[6];
  *(v6 + 112) = v9;
  v10 = v20[1];
  *v6 = v20[0];
  *(v6 + 16) = v10;
  v11 = v20[3];
  *(v6 + 32) = v20[2];
  *(v6 + 48) = v11;
  *(v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_titleTags) = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  v13 = sub_20C134284();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = (v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
  *v14 = 0;
  v14[1] = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_title) = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_item;
  v16 = sub_20C137514();
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = (v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_canonicalIdentifier);
  *v17 = a2;
  v17[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v19, v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v19, v3 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_mediaTagStringBuilder);
  return v3;
}

uint64_t sub_20BE9B4D8()
{
  v1 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v1);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_20C134284();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_preview;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v6, &unk_27C7623C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B520158(v6, &unk_27C7623C0);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier + 8);
  if (v13)
  {
    v44 = *(v0 + OBJC_IVAR____TtC9SeymourUI21PreviewVideoLinkShelf_contentIdentifier);
    v14 = sub_20C136664();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = v1[5];
    v16 = *MEMORY[0x277D513F8];
    v17 = sub_20C134F24();
    (*(*(v17 - 8) + 104))(&v3[v15], v16, v17);
    v18 = v1[6];
    v19 = sub_20C132C14();
    (*(*(v19 - 8) + 56))(&v3[v18], 1, 1, v19);
    v20 = v1[8];
    v21 = *MEMORY[0x277D52388];
    v22 = sub_20C135ED4();
    v23 = *(v22 - 8);
    v45 = v13;
    v24 = v23;
    (*(v23 + 104))(&v3[v20], v21, v22);
    v25 = &v3[v20];
    v26 = v44;
    (*(v24 + 56))(v25, 0, 1, v22);
    v27 = v1[10];
    v28 = *MEMORY[0x277D51768];
    v29 = sub_20C1352E4();
    (*(*(v29 - 8) + 104))(&v3[v27], v28, v29);
    v30 = v1[11];
    v31 = sub_20C136E94();
    v32 = &v3[v30];
    v33 = v45;
    (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
    swift_bridgeObjectRetain_n();
    v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v35 = &v3[v1[7]];
    *v35 = v26;
    *(v35 + 1) = v33;
    v36 = &v3[v1[9]];
    *v36 = 0;
    *(v36 + 1) = 0;
    *&v3[v1[12]] = v34;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BFA03E4(v0, v3, Strong);
      swift_unknownObjectRelease();
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      v40 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v40 + 8);
        ObjectType = swift_getObjectType();
        (*(v41 + 80))(v39, v10, v26, v33, ObjectType, v41);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_20BE9B9EC(v3, type metadata accessor for ShelfMetricAction);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20BE9B9EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MarketingPaletteBannerDisplaying<>.attachMarketingPaletteBanner(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_20C13BB84();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_20C13CDA4();
  v4[28] = sub_20C13CD94();
  v7 = sub_20C13CD24();
  v4[29] = v7;
  v4[30] = v6;

  return MEMORY[0x2822009F8](sub_20BE9BB78, v7, v6);
}

uint64_t sub_20BE9BB78()
{
  sub_20C13B424();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "[UM] Adding palette banner", v3, 2u);
    MEMORY[0x20F2F6A40](v3, -1, -1);
  }

  super_class = v0[13].super_class;
  receiver = v0[12].receiver;
  v5 = v0[12].super_class;
  v7 = v0[11].receiver;
  v9 = v0[10].receiver;
  v8 = v0[10].super_class;

  v10 = *(v5 + 1);
  v0[15].super_class = v10;
  (v10)(super_class, receiver);
  v11 = v7[5](v8, v7);
  v12 = type metadata accessor for SummaryBannerViewController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC9SeymourUI27SummaryBannerViewController_presenter] = v11;
  v0[9].receiver = v13;
  v0[9].super_class = v12;

  v14 = objc_msgSendSuper2(v0 + 9, sel_initWithRequest_, v9);
  v0[16].receiver = v14;
  v15 = v14;
  [v15 setDelegate_];

  v16 = [v15 loadPromise];
  v0[16].super_class = v16;

  v0[1].receiver = v0;
  v0[3].super_class = &v0[17].super_class;
  v0[1].super_class = sub_20BE9BE04;
  v17 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FF48);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_20BE9C60C;
  v0[6].super_class = &block_descriptor_146;
  v0[7].receiver = v17;
  [(objc_class *)v16 resultWithCompletion:?];

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_20BE9BE04()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_20BE9C57C;
  }

  else
  {
    v5 = sub_20BE9BF34;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_20BE9BF34()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  v5 = *(v3 + 24);
  v6 = v1;
  v5(v1, v4, v3);
  v7 = [v2 view];
  if (!v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v7 window];

  v10 = *(v0 + 256);
  if (!v9)
  {

    sub_20C13B424();
    v54 = sub_20C13BB74();
    v55 = sub_20C13D1D4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_20B517000, v54, v55, "[UM] Attempted to attach to the top palette when the view has not yet loaded.", v56, 2u);
      MEMORY[0x20F2F6A40](v56, -1, -1);
    }

    v58 = *(v0 + 248);
    v57 = *(v0 + 256);
    v59 = *(v0 + 208);
    v60 = *(v0 + 192);

    v58(v59, v60);
    v61 = sub_20C134894();
    sub_20BE9C6D8();
    swift_allocError();
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277D50B30], v61);
    swift_willThrow();

    v53 = *(v0 + 8);
    goto LABEL_9;
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 168);

  v13 = [objc_allocWithZone(MEMORY[0x277D76118]) init];
  v14 = (*(v11 + 8))(v12, v11);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v10 view];

  if (!v21)
  {
    goto LABEL_13;
  }

  v63 = *(v0 + 184);
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [v13 contentView];
  [v22 addSubview_];

  v23 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C150040;
  v25 = [v21 bottomAnchor];
  v26 = [v13 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-v18];
  *(v24 + 32) = v28;
  v29 = [v21 leadingAnchor];
  v30 = [v13 contentView];
  v31 = [v30 leadingAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:v16];
  *(v24 + 40) = v32;
  v33 = [v21 trailingAnchor];
  v34 = [v13 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-v20];
  *(v24 + 48) = v36;
  sub_20B5E29D0();
  v37 = sub_20C13CC54();

  [v23 activateConstraints_];

  [v21 layoutIfNeeded];
  v38 = [v13 contentView];
  [v38 layoutIfNeeded];

  v39 = [v63 view];
  if (!v39)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = *(v0 + 256);
  v42 = *(v0 + 184);

  [v40 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v65.origin.x = v44;
  v65.origin.y = v46;
  v65.size.width = v48;
  v65.size.height = v50;
  [v21 sizeThatFits_];
  [v13 setPreferredHeight_];
  [v13 setMinimumHeight_];
  v52 = [v42 navigationItem];
  [v52 _setTopPalette_];

  v53 = *(v0 + 8);
LABEL_9:

  v53();
}

uint64_t sub_20BE9C57C()
{
  v1 = v0[33];
  v2 = v0[32];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BE9C60C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_20BE9C6D8()
{
  result = qword_27C767820;
  if (!qword_27C767820)
  {
    sub_20C134894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767820);
  }

  return result;
}

uint64_t MarketingPaletteBannerDisplaying<>.removeMarketingPaletteBanner()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20B517000, v10, v11, "[UM] Removing palette banner", v12, 2u);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = [v3 navigationItem];
  [v13 _setTopPalette_];

  return (*(a2 + 24))(0, a1, a2);
}

uint64_t MarketingPaletteBannerDisplaying<>.showMarketingPaletteBanner(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v3;
  v4[3] = sub_20C13CDA4();
  v4[4] = sub_20C13CD94();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_20BE9C9AC;

  return MarketingPaletteBannerDisplaying<>.attachMarketingPaletteBanner(request:)(a1, a2, a3);
}

{
  v4[2] = v3;
  v4[3] = sub_20C13CDA4();
  v4[4] = sub_20C13CD94();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_20BE9CD78;

  return MarketingPaletteBannerDisplaying<>.attachMarketingPaletteBanner(request:)(a1, a2, a3);
}

uint64_t sub_20BE9C9AC()
{
  *(*v1 + 48) = v0;

  v3 = sub_20C13CD24();
  if (v0)
  {
    v4 = sub_20BE9CC3C;
  }

  else
  {
    v4 = sub_20BE9CB08;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

id sub_20BE9CB08()
{
  result = [*(v0 + 16) tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  v3 = *(v0 + 16);
  [result contentOffset];
  v5 = v4;

  result = [v3 tableView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [result adjustedContentInset];
  v8 = v7;

  if (v5 <= -v8)
  {
    result = [*(v0 + 16) tableView];
    if (result)
    {
      v9 = result;

      [v9 _scrollToTopIfPossible_];

      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return result;
  }

LABEL_7:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20BE9CC3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BE9CD78()
{
  *(*v1 + 48) = v0;

  v3 = sub_20C13CD24();
  if (v0)
  {
    v4 = sub_20BE9D1A8;
  }

  else
  {
    v4 = sub_20BE9CED4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

id sub_20BE9CED4()
{
  result = [*(v0 + 16) collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  v3 = *(v0 + 16);
  [result contentOffset];
  v5 = v4;

  result = [v3 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [result adjustedContentInset];
  v8 = v7;

  if (v5 <= -v8)
  {
    result = [*(v0 + 16) collectionView];
    if (result)
    {
      v9 = result;

      [v9 _scrollToTopIfPossible_];

      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return result;
  }

LABEL_7:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t dispatch thunk of MarketingPaletteBannerDisplaying.showMarketingPaletteBanner(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20B52A9D4;

  return v9(a1, a2, a3);
}

uint64_t TopShelfMarketingItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TopShelfMarketingItem.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TopShelfMarketingItem.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopShelfMarketingItem.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TopShelfMarketingItem.linkActions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t TopShelfMarketingItem.videoURLs.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t TopShelfMarketingItem.artworkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TopShelfMarketingItem(0) + 32);

  return sub_20B6A6860(v3, a1);
}

uint64_t TopShelfMarketingItem.artworkURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TopShelfMarketingItem(0) + 32);

  return sub_20B9E754C(a1, v3);
}

uint64_t TopShelfMarketingItem.LinkAction.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TopShelfMarketingItem.LinkAction.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TopShelfMarketingItem.LinkAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TopShelfMarketingItem.LinkAction(0) + 20);
  v4 = sub_20C132C14();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TopShelfMarketingItem.LinkAction.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TopShelfMarketingItem.LinkAction(0) + 20);
  v4 = sub_20C132C14();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void TopShelfMarketingItem.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v107 = sub_20C139054();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F278);
  MEMORY[0x28223BE20](v5 - 8);
  v109 = v101 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v101 - v10;
  MEMORY[0x28223BE20](v12);
  v129 = v101 - v13;
  v125 = sub_20C1388B4();
  v115 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v127 = v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C132C14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v128 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v122 = v101 - v19;
  v20 = type metadata accessor for TopShelfMarketingItem.LinkAction(0);
  v120 = *(v20 - 8);
  v121 = v20;
  MEMORY[0x28223BE20](v20);
  v119 = (v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = v101 - v23;
  v124 = sub_20C138B94();
  v25 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_20C139594();
  v133 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = (v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_20C138E94();
  v28 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v132 = v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_20C138894();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v111 = v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for TopShelfMarketingItem(0) + 32);
  v126 = v16;
  v32 = *(v16 + 56);
  v104 = v31;
  v138 = v15;
  v134 = v32;
  v135 = v16 + 56;
  v32(a2 + v31, 1, 1, v15);
  v33 = a1;
  v34 = [a1 title];
  if (v34)
  {
    v35 = v34;
    v36 = sub_20C13C954();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  *a2 = v36;
  a2[1] = v38;
  v39 = [v33 subtitle];
  v40 = v127;
  if (v39)
  {
    v41 = v39;
    v42 = sub_20C13C954();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  a2[2] = v42;
  a2[3] = v44;
  (*(v28 + 104))(v132, *MEMORY[0x277D541A8], v131);
  (*(v133 + 104))(v136, *MEMORY[0x277D54408], v137);
  v112 = v33;
  sub_20C138854();
  v45 = sub_20C138824();
  v46 = *(v45 + 16);
  v110 = a2;
  v137 = v11;
  if (v46)
  {
    v49 = *(v25 + 16);
    v47 = v25 + 16;
    v48 = v49;
    v50 = (*(v47 + 64) + 32) & ~*(v47 + 64);
    v101[1] = v45;
    v51 = v45 + v50;
    v133 = *(v47 + 56);
    v132 = (v115 + 11);
    LODWORD(v131) = *MEMORY[0x277D540D0];
    v130 = (v47 - 8);
    v116 = v115 + 1;
    v115 += 12;
    v114 = (v126 + 32);
    v136 = MEMORY[0x277D84F90];
    v52 = v124;
    v53 = v125;
    v54 = v123;
    v118 = v47;
    v117 = v49;
    v113 = v24;
    v49(v123, v45 + v50, v124);
    while (1)
    {
      sub_20C138B74();
      v55 = (*v132)(v40, v53);
      if (v55 == v131)
      {
        (*v115)(v40, v53);
        v56 = v40;
        v57 = *v114;
        v58 = v122;
        v59 = v138;
        (*v114)(v122, v56, v138);
        v60 = sub_20C138B64();
        v62 = v61;
        (*v130)(v54, v52);
        v63 = v119;
        v64 = v58;
        v65 = v113;
        v57(v119 + *(v121 + 20), v64, v59);
        *v63 = v60;
        v63[1] = v62;
        sub_20BE9E464(v63, v65);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v66 = v136;
        }

        else
        {
          v66 = sub_20BC08590(0, v136[2] + 1, 1, v136);
        }

        v68 = v66[2];
        v67 = v66[3];
        v52 = v124;
        v53 = v125;
        v40 = v127;
        v48 = v117;
        if (v68 >= v67 >> 1)
        {
          v66 = sub_20BC08590(v67 > 1, v68 + 1, 1, v66);
        }

        v66[2] = v68 + 1;
        v69 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v136 = v66;
        sub_20BE9E464(v65, v66 + v69 + *(v120 + 72) * v68);
        v11 = v137;
        v54 = v123;
      }

      else
      {
        (*v130)(v54, v52);
        (*v116)(v40, v53);
      }

      v51 += v133;
      if (!--v46)
      {
        break;
      }

      v48(v54, v51, v52);
    }

    a2 = v110;
    v70 = v136;
  }

  else
  {

    v70 = MEMORY[0x277D84F90];
  }

  a2[4] = v70;
  v71 = [v112 videos];
  v72 = v138;
  if (v71)
  {
    v73 = v71;
    sub_20BE9E418();
    v74 = sub_20C13CC74();

    if (!(v74 >> 62))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_23:
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
        goto LABEL_24;
      }

LABEL_43:
      v78 = MEMORY[0x277D84F90];
LABEL_44:

      v91 = v110;
      v110[5] = v78;
      v92 = v91;
      v93 = v106;
      v94 = v105;
      v95 = v107;
      (*(v106 + 104))(v105, *MEMORY[0x277D54260], v107);
      v96 = v109;
      v97 = v111;
      sub_20C138874();
      (*(v93 + 8))(v94, v95);
      v98 = sub_20C138954();
      v99 = *(v98 - 8);
      if ((*(v99 + 48))(v96, 1, v98) == 1)
      {
        (*(v102 + 8))(v97, v103);

        sub_20B520158(v96, &qword_27C76F278);
        v100 = v108;
        v134(v108, 1, 1, v72);
      }

      else
      {
        v100 = v108;
        sub_20C138944();

        (*(v102 + 8))(v97, v103);
        (*(v99 + 8))(v96, v98);
      }

      sub_20B9E754C(v100, v92 + v104);
      return;
    }
  }

  v75 = sub_20C13DB34();
  if (!v75)
  {
    goto LABEL_43;
  }

LABEL_24:
  v76 = 0;
  v136 = (v74 & 0xC000000000000001);
  v133 = v74 & 0xFFFFFFFFFFFFFF8;
  v77 = (v126 + 48);
  v78 = MEMORY[0x277D84F90];
  v79 = (v126 + 32);
  while (1)
  {
    if (v136)
    {
      v80 = MEMORY[0x20F2F5430](v76, v74);
    }

    else
    {
      if (v76 >= *(v133 + 16))
      {
        goto LABEL_49;
      }

      v80 = *(v74 + 8 * v76 + 32);
    }

    v81 = v80;
    v82 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    v83 = v74;
    v84 = [v80 URL];
    if (v84)
    {
      v85 = v84;
      sub_20C132B94();

      v11 = v137;
      v86 = 0;
    }

    else
    {
      v86 = 1;
    }

    v72 = v138;
    v134(v11, v86, 1, v138);
    v87 = v129;
    sub_20B6A69B4(v11, v129);
    if ((*v77)(v87, 1, v72) == 1)
    {
      sub_20B520158(v87, &unk_27C7617F0);
    }

    else
    {
      v88 = *v79;
      (*v79)(v128, v87, v72);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_20BC08108(0, *(v78 + 2) + 1, 1, v78);
      }

      v90 = *(v78 + 2);
      v89 = *(v78 + 3);
      if (v90 >= v89 >> 1)
      {
        v78 = sub_20BC08108(v89 > 1, v90 + 1, 1, v78);
      }

      *(v78 + 2) = v90 + 1;
      v72 = v138;
      v88(&v78[((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v90], v128, v138);
      v11 = v137;
    }

    ++v76;
    v74 = v83;
    if (v82 == v75)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

unint64_t sub_20BE9E418()
{
  result = qword_27C76FF50;
  if (!qword_27C76FF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C76FF50);
  }

  return result;
}

uint64_t sub_20BE9E464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopShelfMarketingItem.LinkAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20BE9E4F0()
{
  sub_20B52CA84();
  if (v0 <= 0x3F)
  {
    sub_20BE9E634(319, &qword_27C76FF68, type metadata accessor for TopShelfMarketingItem.LinkAction, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_20BE9E634(319, &qword_27C76FF70, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20BE9E634(319, &qword_281103E28, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20BE9E634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20BE9E6C0()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(sub_20C136D44() + 16);

  if (v10)
  {
    v44 = v7;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_mediaTagStringBuilder + 24));
    sub_20C136D44();
    v11 = sub_20C138544();

    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_storefrontLocalizer + 24));
    v12 = sub_20C138D34();
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v12;
    *(v15 + 32) = v14;
    v16 = v15 | 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C14F980;
    v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_displaysSeparatorBelow);
    *(v17 + 32) = v16;
    v45 = 0uLL;
    LOBYTE(v46) = 1;
    *(&v46 + 1) = 0;
    *&v47 = 0;
    BYTE8(v47) = 0x80;
    BYTE9(v47) = v18;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    LOBYTE(v51) = 0;
    *(&v51 + 1) = v17;
    *&v52[0] = MEMORY[0x277D84F90];
    *(v52 + 8) = 0u;
    *(&v52[1] + 8) = 0u;
    *(&v52[2] + 1) = 0;
    v53 = 2;
    nullsub_1(&v45);
    v19 = v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row;
    v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 144);
    v54[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 128);
    v54[9] = v20;
    v55 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 160);
    v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 80);
    v54[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 64);
    v54[5] = v21;
    v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 112);
    v54[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 96);
    v54[7] = v22;
    v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 16);
    v54[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row);
    v54[1] = v23;
    v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 48);
    v54[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 32);
    v54[3] = v24;
    v25 = v52[2];
    *(v19 + 128) = v52[1];
    *(v19 + 144) = v25;
    *(v19 + 160) = v53;
    v26 = v50;
    *(v19 + 64) = v49;
    *(v19 + 80) = v26;
    v27 = v52[0];
    *(v19 + 96) = v51;
    *(v19 + 112) = v27;
    v28 = v46;
    *v19 = v45;
    *(v19 + 16) = v28;
    v29 = v48;
    *(v19 + 32) = v47;
    *(v19 + 48) = v29;
    v30 = v11;

    sub_20B634408(v54);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v32 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v33 = sub_20B61D1B8(v1, Strong);
      if (v34)
      {
        v36 = v34;
        v42 = v33;
        v43 = v35;
        sub_20B5E2E18();
        *v9 = sub_20C13D374();
        v37 = v44;
        (*(v44 + 104))(v9, *MEMORY[0x277D85200], v6);
        v38 = sub_20C13C584();
        (*(v37 + 8))(v9, v6);
        if ((v38 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B62093C(v42, v36, v43, v1, 1, v32);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_20C13B534();
    v39 = sub_20C13BB74();
    v40 = sub_20C13D1F4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_20B517000, v39, v40, "[TVExpandingTextEditorialSectionShelf] Empty summary tags or title. Hiding shelf.", v41, 2u);
      MEMORY[0x20F2F6A40](v41, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_20BE9EB98()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 32);
  v11[3] = v7;
  sub_20B634408(v11);
  v8 = OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_item;
  v9 = sub_20C136D64();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVExpandingTextEditorialSectionShelf()
{
  result = qword_27C76FFA0;
  if (!qword_27C76FFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE9ED30()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = sub_20C136D64();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BE9EE20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BE9EE98@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BE9EF4C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v7);
  v9 = &v52[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 7)
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = sub_20C136664();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = v7[5];
    v13 = *MEMORY[0x277D513E8];
    v14 = sub_20C134F24();
    (*(*(v14 - 8) + 104))(&v9[v12], v13, v14);
    v15 = v7[6];
    v16 = sub_20C132C14();
    (*(*(v16 - 8) + 56))(&v9[v15], 1, 1, v16);
    v17 = v7[8];
    v18 = sub_20C135ED4();
    (*(*(v18 - 8) + 56))(&v9[v17], 1, 1, v18);
    v19 = v7[10];
    v20 = *MEMORY[0x277D51768];
    v21 = sub_20C1352E4();
    (*(*(v21 - 8) + 104))(&v9[v19], v20, v21);
    v22 = v7[11];
    v23 = sub_20C136E94();
    (*(*(v23 - 8) + 56))(&v9[v22], 1, 1, v23);
    v24 = MEMORY[0x277D84F90];
    v25 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    *&v9[v7[7]] = xmmword_20C16AC20;
    v26 = &v9[v7[9]];
    *v26 = 0;
    *(v26 + 1) = 0;
    *&v9[v7[12]] = v25;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FD48(v1, v9, Strong);
      swift_unknownObjectRelease();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
    v28 = (type metadata accessor for PageAlertAction() - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20C14F980;
    v31 = v30 + v29;
    sub_20C132ED4();
    v32 = (v31 + v28[8]);
    *v32 = 0;
    v32[1] = 0;
    *(v31 + v28[7]) = 2;
    v33 = (v31 + v28[9]);
    *v33 = 0;
    v33[1] = 0;
    v34 = [v10 string];
    v35 = sub_20C13C954();
    v37 = v36;

    v52[0] = v30;
    v52[1] = v24;
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v35;
    v52[5] = v37;
    v53 = 1;
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      v40 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v40 + 8);
        ObjectType = swift_getObjectType();
        (*(v41 + 232))(v39, v52, ObjectType, v41);
        sub_20B76328C(v52);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B76328C(v52);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_20B76328C(v52);
    }

    return sub_20B68D110(v9);
  }

  else
  {
    sub_20C13B534();

    v43 = sub_20C13BB74();
    v44 = sub_20C13D1D4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = a1;
      v52[0] = v46;
      *v45 = 136446210;

      v47 = sub_20C13C9D4();
      v49 = sub_20B51E694(v47, v48, v52);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_20B517000, v43, v44, "TV Expanding text shelf action triggered for item: %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x20F2F6A40](v46, -1, -1);
      MEMORY[0x20F2F6A40](v45, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20BE9F518(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row;
  sub_20B5D8060(v15);
  v5 = v15[9];
  *(v4 + 128) = v15[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v16;
  v6 = v15[5];
  *(v4 + 64) = v15[4];
  *(v4 + 80) = v6;
  v7 = v15[7];
  *(v4 + 96) = v15[6];
  *(v4 + 112) = v7;
  v8 = v15[1];
  *v4 = v15[0];
  *(v4 + 16) = v8;
  v9 = v15[3];
  *(v4 + 32) = v15[2];
  *(v4 + 48) = v9;
  *(v2 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_displaysSeparatorBelow) = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_item;
  v11 = sub_20C136D64();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v2 + v10, a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  (*(v12 + 8))(a2, v11);
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_storefrontLocalizer);
  return v2;
}

uint64_t sub_20BE9F71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 64))(v4, a1, a3);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_20C1392F4();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_20BE9F79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = sub_20C135ED4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C1352E4();
  v32 = *(v38 - 8);
  v6 = v32;
  MEMORY[0x28223BE20](v38);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134F24();
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C132E94();
  MEMORY[0x28223BE20](v12 - 8);
  v39 = sub_20C138034();
  v37 = *(v39 - 8);
  v13 = v37;
  MEMORY[0x28223BE20](v39);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C132E84();
  v15 = a1;
  v16 = a2;
  sub_20C138014();
  (*(v9 + 104))(v11, *MEMORY[0x277D513C0], v8);
  v17 = *(v6 + 104);
  v18 = v35;
  v19 = v38;
  v17(v35, *MEMORY[0x277D51768], v38);
  v20 = v40;
  v21 = v41;
  v22 = v43;
  (*(v41 + 104))(v40, *MEMORY[0x277D52408], v43);
  v23 = v16;
  v24 = v42;
  sub_20BEABA58(v11, v18, v15, v23, v20);
  (*(v21 + 8))(v20, v22);
  (*(v32 + 8))(v18, v19);
  (*(v34 + 8))(v11, v33);
  __swift_project_boxed_opaque_existential_1((v24 + 112), *(v24 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
  v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  v27 = v36;
  v28 = v39;
  (*(v13 + 16))(v26 + v25, v36, v39);
  sub_20BE8BBF4(v26);
  swift_setDeallocating();
  v29 = *(v13 + 8);
  v29(v26 + v25, v28);
  swift_deallocClassInstance();
  sub_20C13A1E4();

  return (v29)(v27, v28);
}

uint64_t sub_20BE9FC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = sub_20C135ED4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C1352E4();
  v32 = *(v38 - 8);
  v6 = v32;
  MEMORY[0x28223BE20](v38);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134F24();
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C132E94();
  MEMORY[0x28223BE20](v12 - 8);
  v39 = sub_20C138034();
  v37 = *(v39 - 8);
  v13 = v37;
  MEMORY[0x28223BE20](v39);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C132E84();
  v15 = a1;
  v16 = a2;
  sub_20C138014();
  (*(v9 + 104))(v11, *MEMORY[0x277D513C0], v8);
  v17 = *(v6 + 104);
  v18 = v35;
  v19 = v38;
  v17(v35, *MEMORY[0x277D51768], v38);
  v20 = v40;
  v21 = v41;
  v22 = v43;
  (*(v41 + 104))(v40, *MEMORY[0x277D52408], v43);
  v23 = v16;
  v24 = v42;
  sub_20BEAC790(v11, v18, v15, v23, v20);
  (*(v21 + 8))(v20, v22);
  (*(v32 + 8))(v18, v19);
  (*(v34 + 8))(v11, v33);
  __swift_project_boxed_opaque_existential_1((v24 + 264), *(v24 + 288));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
  v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  v27 = v36;
  v28 = v39;
  (*(v13 + 16))(v26 + v25, v36, v39);
  sub_20BE8BBF4(v26);
  swift_setDeallocating();
  v29 = *(v13 + 8);
  v29(v26 + v25, v28);
  swift_deallocClassInstance();
  sub_20C13A1E4();

  return (v29)(v27, v28);
}

uint64_t sub_20BEA00F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a4;
  v49 = a3;
  v50 = a5;
  v44 = a1;
  v52 = a6;
  v7 = sub_20C135ED4();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1352E4();
  v38 = *(v10 - 8);
  v11 = v38;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C134F24();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C132E94();
  MEMORY[0x28223BE20](v18 - 8);
  v48 = sub_20C138034();
  v42 = *(v48 - 8);
  v43 = v42;
  MEMORY[0x28223BE20](v48);
  v41 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C132E84();
  v20 = v44;
  sub_20C138014();
  (*(v15 + 104))(v17, *MEMORY[0x277D513C0], v14);
  v21 = *(v11 + 104);
  v22 = v13;
  v23 = v10;
  v21(v13, *MEMORY[0x277D51768], v10);
  v24 = v46;
  v25 = v47;
  v26 = v45;
  (*(v47 + 104))(v45, *MEMORY[0x277D52408], v46);
  v27 = v20;
  v28 = a2;
  v29 = v49;
  v30 = v50;
  sub_20BEAE24C(v17, v22, v27, v28, v26, v49, v51, v50);
  (*(v25 + 8))(v26, v24);
  (*(v38 + 8))(v22, v23);
  (*(v40 + 8))(v17, v39);
  (*(v30 + 24))(v53, v29, v30);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
  v31 = v43;
  v32 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20C14F980;
  v34 = v41;
  v35 = v48;
  (*(v31 + 16))(v33 + v32, v41, v48);
  sub_20BE8BBF4(v33);
  swift_setDeallocating();
  v36 = *(v31 + 8);
  v36(v33 + v32, v35);
  swift_deallocClassInstance();
  sub_20C13A1E4();

  v36(v34, v35);
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_20BEA05D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v72 = a3;
  v5 = sub_20C135ED4();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1352E4();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20C134F24();
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v60 - v11;
  v12 = sub_20C138034();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v70 = &v60 - v18;
  v19 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_bookmarks;
  swift_beginAccess();
  v68 = v3;
  v20 = *(v3 + v19);
  v21 = v12;
  v22 = v20 + 56;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 56);
  v26 = (v23 + 63) >> 6;
  v76 = v13 + 16;
  v77 = v13 + 32;
  v75 = (v13 + 8);
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v74 = v20;
  if (v25)
  {
    while (1)
    {
      v29 = v28;
LABEL_8:
      v30 = v73;
      (*(v13 + 16))(v73, *(v20 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v29 << 6)), v21);
      v31 = v13;
      v32 = *(v13 + 32);
      v32(v79, v30, v21);
      if (sub_20C138024() == a1 && v33 == v78)
      {

        goto LABEL_16;
      }

      v34 = a1;
      v35 = sub_20C13DFF4();

      if (v35)
      {
        break;
      }

      v25 &= v25 - 1;
      result = (*v75)(v79, v21);
      v28 = v29;
      a1 = v34;
      v13 = v31;
      v20 = v74;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    a1 = v34;
LABEL_16:
    v37 = v69;
    v32(v69, v79, v21);
    v36 = 0;
    v13 = v31;
LABEL_17:
    (*(v13 + 56))(v37, v36, 1, v21);

    if ((*(v13 + 48))(v37, 1, v21) == 1)
    {
      sub_20B520158(v37, &qword_27C763EF8);
      v38 = sub_20C133D94();
      sub_20BEB3F38(&qword_27C765B10, MEMORY[0x277D50470]);
      v39 = swift_allocError();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D50458], v38);
      *(swift_allocObject() + 16) = v39;
      return sub_20C137CA4();
    }

    else
    {
      (*(v13 + 32))(v70, v37, v21);
      v41 = v61;
      v42 = v60;
      (*(v61 + 104))(v60, *MEMORY[0x277D51430], v71);
      v43 = *MEMORY[0x277D51768];
      v45 = v62;
      v44 = v63;
      v46 = *(v63 + 104);
      v77 = v13;
      v47 = v64;
      v46(v62, v43, v64);
      v48 = *MEMORY[0x277D52408];
      v50 = v65;
      v49 = v66;
      v51 = *(v66 + 104);
      v79 = v21;
      v52 = v67;
      v51(v65, v48, v67);
      v53 = v68;
      sub_20BEABA58(v42, v45, a1, v78, v50);
      (*(v49 + 8))(v50, v52);
      (*(v44 + 8))(v45, v47);
      (*(v41 + 8))(v42, v71);
      __swift_project_boxed_opaque_existential_1((v53 + 112), *(v53 + 136));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
      v54 = v77;
      v55 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_20C14F980;
      v57 = v70;
      v58 = v79;
      (*(v54 + 16))(v56 + v55, v70, v79);
      sub_20BE8BBF4(v56);
      swift_setDeallocating();
      v59 = *(v54 + 8);
      v59(v56 + v55, v58);
      swift_deallocClassInstance();
      sub_20C13A1F4();

      return (v59)(v57, v58);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v36 = 1;
        v37 = v69;
        goto LABEL_17;
      }

      v25 = *(v22 + 8 * v29);
      ++v28;
      if (v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BEA0E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v72 = a3;
  v5 = sub_20C135ED4();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1352E4();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20C134F24();
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v60 - v11;
  v12 = sub_20C138034();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v70 = &v60 - v18;
  v19 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_bookmarks;
  swift_beginAccess();
  v68 = v3;
  v20 = *(v3 + v19);
  v21 = v12;
  v22 = v20 + 56;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 56);
  v26 = (v23 + 63) >> 6;
  v76 = v13 + 16;
  v77 = v13 + 32;
  v75 = (v13 + 8);
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v74 = v20;
  if (v25)
  {
    while (1)
    {
      v29 = v28;
LABEL_8:
      v30 = v73;
      (*(v13 + 16))(v73, *(v20 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v29 << 6)), v21);
      v31 = v13;
      v32 = *(v13 + 32);
      v32(v79, v30, v21);
      if (sub_20C138024() == a1 && v33 == v78)
      {

        goto LABEL_16;
      }

      v34 = a1;
      v35 = sub_20C13DFF4();

      if (v35)
      {
        break;
      }

      v25 &= v25 - 1;
      result = (*v75)(v79, v21);
      v28 = v29;
      a1 = v34;
      v13 = v31;
      v20 = v74;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    a1 = v34;
LABEL_16:
    v37 = v69;
    v32(v69, v79, v21);
    v36 = 0;
    v13 = v31;
LABEL_17:
    (*(v13 + 56))(v37, v36, 1, v21);

    if ((*(v13 + 48))(v37, 1, v21) == 1)
    {
      sub_20B520158(v37, &qword_27C763EF8);
      v38 = sub_20C133D94();
      sub_20BEB3F38(&qword_27C765B10, MEMORY[0x277D50470]);
      v39 = swift_allocError();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D50458], v38);
      *(swift_allocObject() + 16) = v39;
      return sub_20C137CA4();
    }

    else
    {
      (*(v13 + 32))(v70, v37, v21);
      v41 = v61;
      v42 = v60;
      (*(v61 + 104))(v60, *MEMORY[0x277D51430], v71);
      v43 = *MEMORY[0x277D51768];
      v45 = v62;
      v44 = v63;
      v46 = *(v63 + 104);
      v77 = v13;
      v47 = v64;
      v46(v62, v43, v64);
      v48 = *MEMORY[0x277D52408];
      v50 = v65;
      v49 = v66;
      v51 = *(v66 + 104);
      v79 = v21;
      v52 = v67;
      v51(v65, v48, v67);
      v53 = v68;
      sub_20BEAC790(v42, v45, a1, v78, v50);
      (*(v49 + 8))(v50, v52);
      (*(v44 + 8))(v45, v47);
      (*(v41 + 8))(v42, v71);
      __swift_project_boxed_opaque_existential_1((v53 + 264), *(v53 + 288));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
      v54 = v77;
      v55 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_20C14F980;
      v57 = v70;
      v58 = v79;
      (*(v54 + 16))(v56 + v55, v70, v79);
      sub_20BE8BBF4(v56);
      swift_setDeallocating();
      v59 = *(v54 + 8);
      v59(v56 + v55, v58);
      swift_deallocClassInstance();
      sub_20C13A1F4();

      return (v59)(v57, v58);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v36 = 1;
        v37 = v69;
        goto LABEL_17;
      }

      v25 = *(v22 + 8 * v29);
      ++v28;
      if (v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BEA1634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a4;
  v87 = a2;
  v81 = a6;
  v71 = sub_20C135ED4();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20C1352E4();
  v68 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_20C134F24();
  v66 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v65 - v14;
  v15 = sub_20C138034();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v65 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v79 = &v65 - v23;
  v24 = *(a5 + 112);
  v73 = a3;
  v74 = v6;
  v25 = a3;
  v27 = v26;
  v75 = a5;
  v28 = v24(v25, a5, v22);
  v29 = v28;
  v30 = v28 + 56;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 56);
  v34 = (v31 + 63) >> 6;
  v85 = v16 + 16;
  v86 = v16 + 32;
  v84 = (v16 + 8);

  v36 = 0;
  if (v33)
  {
    while (1)
    {
      v37 = v36;
LABEL_8:
      v38 = v83;
      (*(v16 + 16))(v83, *(v29 + 48) + *(v16 + 72) * (__clz(__rbit64(v33)) | (v37 << 6)), v27);
      v82 = *(v16 + 32);
      v82(v18, v38, v27);
      if (sub_20C138024() == a1 && v39 == v87)
      {

        goto LABEL_16;
      }

      LODWORD(v88) = sub_20C13DFF4();

      if (v88)
      {
        break;
      }

      v33 &= v33 - 1;
      result = (*v84)(v18, v27);
      v36 = v37;
      if (!v33)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v41 = v76;
    v82(v76, v18, v27);
    v40 = 0;
LABEL_17:
    (*(v16 + 56))(v41, v40, 1, v27);

    if ((*(v16 + 48))(v41, 1, v27) == 1)
    {
      sub_20B520158(v41, &qword_27C763EF8);
      v42 = sub_20C133D94();
      sub_20BEB3F38(&qword_27C765B10, MEMORY[0x277D50470]);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D50458], v42);
      *(swift_allocObject() + 16) = v43;
      return sub_20C137CA4();
    }

    else
    {
      (*(v16 + 32))(v79, v41, v27);
      v45 = v66;
      v46 = v77;
      (*(v66 + 104))(v77, *MEMORY[0x277D51430], v78);
      v47 = v68;
      v48 = v67;
      (*(v68 + 104))(v67, *MEMORY[0x277D51768], v80);
      v49 = *MEMORY[0x277D52408];
      v50 = v70;
      v51 = *(v70 + 104);
      v88 = v16;
      v52 = v69;
      v53 = v71;
      v51(v69, v49, v71);
      v54 = v46;
      v55 = a1;
      v56 = v27;
      v57 = v73;
      v58 = v75;
      sub_20BEAE24C(v54, v48, v55, v87, v52, v73, v72, v75);
      (*(v50 + 8))(v52, v53);
      (*(v47 + 8))(v48, v80);
      (*(v45 + 8))(v77, v78);
      (*(v58 + 24))(v89, v57, v58);
      __swift_project_boxed_opaque_existential_1(v89, v89[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
      v59 = v88;
      v60 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_20C14F980;
      v62 = v79;
      v63 = v56;
      (*(v59 + 16))(v61 + v60, v79, v56);
      sub_20BE8BBF4(v61);
      swift_setDeallocating();
      v64 = *(v59 + 8);
      v64(v61 + v60, v63);
      swift_deallocClassInstance();
      sub_20C13A1F4();

      v64(v62, v63);
      return __swift_destroy_boxed_opaque_existential_1(v89);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v34)
      {

        v40 = 1;
        v41 = v76;
        goto LABEL_17;
      }

      v33 = *(v30 + 8 * v37);
      ++v36;
      if (v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}