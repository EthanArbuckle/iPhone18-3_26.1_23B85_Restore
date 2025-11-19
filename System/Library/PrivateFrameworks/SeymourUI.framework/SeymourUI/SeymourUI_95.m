uint64_t sub_20BFE0118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20BFE013C, 0, 0);
}

uint64_t sub_20BFE013C()
{
  v1 = **(v0 + 32);
  type metadata accessor for NavigationRequest();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_20B90C5E8;
  v3 = *(v0 + 16);

  return sub_20BD2C744(v3, v1);
}

uint64_t sub_20BFE01F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v7 = type metadata accessor for NavigationRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_20C1353F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_20BFE0734(a2, v20);
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  sub_20BDC6590(a3, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v13 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v14 = (v12 + *(v8 + 80) + v13) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = v20[1];
  *(v15 + 16) = v20[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v20[2];
  *(v15 + 64) = v21;
  (*(v11 + 32))(v15 + v13, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_20B75B150(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourUI/NavigationViewControllerFactory.swift";
  *(v17 + 24) = 47;
  *(v17 + 32) = 2;
  *(v17 + 40) = 107;
  *(v17 + 48) = &unk_20C189178;
  *(v17 + 56) = v15;
  sub_20B62BB28();
  return sub_20C137C94();
}

uint64_t sub_20BFE0470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_20C1353F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BFE0534, 0, 0);
}

uint64_t sub_20BFE0534()
{
  sub_20C13CDA4();
  *(v0 + 64) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BFE05C8, v2, v1);
}

uint64_t sub_20BFE05C8()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  (*(v3 + 16))(v1, v4, v2);
  v5 = objc_allocWithZone(type metadata accessor for WorkoutPlanCompletionViewController());

  v7 = sub_20C1058BC(v6, v1, 1, 1, 0, 0);
  v0[9] = v7;

  [v7 setModalPresentationStyle_];

  return MEMORY[0x2822009F8](sub_20BFE06C0, 0, 0);
}

uint64_t sub_20BFE06C0()
{
  **(v0 + 16) = *(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BFE076C(uint64_t a1)
{
  v4 = *(type metadata accessor for NavigationRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BFE0118(a1, v1 + v5, v1 + v6);
}

uint64_t sub_20BFE088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = v2 + ((*(v5 + 80) + 72) & ~*(v5 + 80));

  return sub_20BFE01F4(a1, v2 + 16, v6, a2);
}

uint64_t sub_20BFE0938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BFE09C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BFE0A88(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C1353F4() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  type metadata accessor for NavigationRequest();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20B52AC14;

  return sub_20BFE0470(a1, v1 + 16, v1 + v6);
}

void sub_20BFE0BFC(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  sub_20C13B564();
  sub_20C13BB64();
  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = *&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_onDismiss];
  if (v14)
  {
    v15 = *&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView];

    [v15 removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView] removeFromSuperview];
    [*&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView] removeFromSuperview];
    v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted] = 1;
    [v3 setNeedsUpdateOfHomeIndicatorAutoHidden];
    v16 = *&v3[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
    ObjectType = swift_getObjectType();
    v18 = (*(v16 + 248))(ObjectType, v16);
    v19 = v14(v18);
    if (a1)
    {
      a1(v19);
    }

    sub_20B583ECC(v14);
  }

  else
  {
    v20 = [v3 parentViewController];
    if (v20)
    {
      v21 = v20;
      do
      {
        v22 = [v21 parentViewController];

        v21 = v22;
      }

      while (v22);
    }

    v23 = [v3 presentedViewController];
    if (v23)
    {

      v24 = [v3 presentingViewController];
    }

    else
    {
      v24 = v3;
    }

    v25 = v24;
    sub_20C13B564();
    v26 = v25;
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1F4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v41 = a2;
      v30 = v29;
      v31 = swift_slowAlloc();
      v40 = a1;
      v32 = v31;
      *v30 = 138412290;
      *(v30 + 4) = v26;
      *v31 = v26;
      v33 = v26;
      _os_log_impl(&dword_20B517000, v27, v28, "Presenting View Controller: %@", v30, 0xCu);
      sub_20B520158(v32, &unk_27C762E30);
      v34 = v32;
      a1 = v40;
      MEMORY[0x20F2F6A40](v34, -1, -1);
      v35 = v30;
      a2 = v41;
      MEMORY[0x20F2F6A40](v35, -1, -1);
    }

    v13(v9, v6);
    if (v26)
    {
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = a1;
      v37[4] = a2;
      aBlock[4] = sub_20BFE90CC;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_30_1;
      v38 = _Block_copy(aBlock);
      v39 = v26;
      sub_20B584050(a1);

      [v39 dismissViewControllerAnimated:1 completion:v38];

      _Block_release(v38);
    }
  }
}

char *SessionViewController.__allocating_init(dependencies:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BDDD2B4(a2, v7);

  v9 = sub_20B9C04B4(v8, v7);
  v10 = objc_allocWithZone(v2);
  v11 = sub_20BFE1644(a1, v9, 0, 0, 0, 0);
  sub_20BDDD350(a2);
  return v11;
}

uint64_t SessionViewController.pictureInPictureSurrogate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SessionViewController.pictureInPictureSurrogate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20B8DD284;
}

void *SessionViewController.childForStatusBarStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);
  v2 = v1;
  return v1;
}

uint64_t SessionViewController.supportedInterfaceOrientations.getter()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform) == 1)
  {
    return 30;
  }

  if (*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform))
  {
    return 24;
  }

  v7 = v3;
  (*(v2 + 16))(v6, *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout, v3, v4);
  v8 = sub_20C1344B4();
  v10 = v9;
  v12 = v11;
  (*(v2 + 8))(v6, v7);
  if ((v12 & 1) == 0)
  {
    sub_20B583F4C(v8, v10, 0);
    return 24;
  }

  if ((v8 & 0xFE) != 0)
  {
    return 24;
  }

  else
  {
    return 2;
  }
}

char *sub_20BFE1644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v150 = a6;
  v149 = a5;
  v151 = a4;
  v153 = a1;
  ObjectType = swift_getObjectType();
  v145 = sub_20C13BB84();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_20C137254();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v148 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v158 = sub_20C1344C4();
  v12 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v14 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_miniPlayerHost + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted) = 0;
  v139 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView) = 0;
  v140 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView) = 0;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_menuGestureRecognizer) = 0;
  v15 = (v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_onDismiss);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_onPresentSummary);
  *v16 = 0;
  v16[1] = 0;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayConstraints) = 0;
  sub_20C133AA4();
  v157 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform;
  *(v6 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform) = v165;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer) = v17;
  v19 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter;
  *(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter) = a2;
  v20 = *v15;
  *v15 = a3;
  v15[1] = v151;
  v154 = a2;

  v143 = a3;
  sub_20B584050(a3);
  sub_20B583ECC(v20);
  v21 = *v16;
  v22 = v149;
  v23 = v150;
  *v16 = v149;
  v16[1] = v23;
  sub_20B584050(v22);
  sub_20B583ECC(v21);
  v24 = v158;
  (*(v12 + 16))(v14, *(v7 + v19) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_catalogWorkout, v158);
  v25 = sub_20C1344B4();
  v159 = v26;
  v160 = v25;
  LODWORD(v15) = v27;
  (*(v12 + 8))(v14, v24);
  v28 = *(v7 + v19);
  v29 = *(v155 + 16);
  *&v138 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_activityTypeBehavior;
  v147 = v155 + 16;
  v146 = v29;
  v29((v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_activityTypeBehavior), v28 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior, v156);
  v158 = *(v28 + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_eventHub);
  *&v137 = v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_eventHub;
  *v137 = v158;
  sub_20C0134C0(*(v7 + v157), &v165);
  v30 = v166;
  v31 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v32 = *(v31 + 88);
  swift_unknownObjectRetain();

  v34 = v32(v33, v30, v31);

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_continueOnWatchView) = v34;
  v35 = *(*(v7 + v19) + 80);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  v36 = objc_allocWithZone(type metadata accessor for SessionIntroSequenceView());
  v37 = sub_20BB98514(v35, v163);
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v7 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView) = v37;
  v38 = v166;
  v39 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v152 = v19;
  *&v158 = v7;
  v40 = *(v39 + 24);

  LODWORD(v157) = v15;
  v42 = v40(v41, v160, v159, v15 & 1, v38, v39);

  if (v42)
  {
    [v42 &selRef_count + 2];
  }

  v43 = v158;
  *(v158 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView) = v42;
  v44 = v166;
  v45 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v46 = v152;
  v47 = *(v45 + 96);

  v49 = v47(v48, v44, v45);

  [v49 &selRef_count + 2];
  *(v43 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_ongoingWorkoutDetectedView) = v49;
  v50 = v166;
  v51 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v52 = *(v51 + 8);

  v54 = v52(v53, v50, v51);

  [v54 &selRef_count + 2];
  *(v43 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView) = v54;
  v55 = v166;
  v56 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v57 = *(v56 + 16);

  v59 = v57(v58, v55, v56);

  [v59 &selRef_count + 2];
  *(v43 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView) = v59;
  v61 = v166;
  v60 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v62 = *(*(v43 + v46) + 144);
  v63 = v148;
  v64 = v156;
  v146(v148, v43 + v138, v156);
  v65 = *v137;
  v66 = *(v137 + 8);

  swift_unknownObjectRetain();
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  v67 = (*(v60 + 40))(v62, v63, v65, v66, v163, v162, v61, v60);
  v69 = v68;

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v162);
  __swift_destroy_boxed_opaque_existential_1(v163);
  v70 = *(v155 + 8);
  v155 += 8;
  v136 = v70;
  v70(v63, v64);
  v71 = (v43 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_summaryViewController);
  *v71 = v67;
  v71[1] = v69;
  type metadata accessor for TransportBarControlsCoordinator();
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = &unk_282287F80;
  v72[5] = sub_20B6B3124(MEMORY[0x277D84F90]);
  v73 = v166;
  v74 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v75 = v154;
  v76 = *(v154 + 104);
  v77 = *(v74 + 120);
  v78 = swift_unknownObjectRetain();
  v77(v163, v78, v76, v72, v160, v159, v157 & 1, v73, v74);
  v79 = v164;
  v138 = v163[0];
  v137 = v163[1];
  swift_unknownObjectRelease();
  v80 = v43 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay;
  v81 = v137;
  *v80 = v138;
  *(v80 + 16) = v81;
  *(v80 + 32) = v79;
  *(*(v75 + 120) + 24) = v81;
  swift_unknownObjectWeakAssign();
  v82 = *(v75 + 112);
  if (v82)
  {
    *(v82 + 24) = *(v80 + 8);
    swift_unknownObjectWeakAssign();
  }

  *(*(v154 + 128) + 24) = *(v80 + 24);
  swift_unknownObjectWeakAssign();
  v83 = v166;
  v84 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v85 = v158;
  v86 = *(v84 + 32);

  *&v138 = v72;
  v88 = v72;
  v89 = v159;
  v90 = v160;
  v91 = v86(v87, v88, v160, v159, v157 & 1, v83, v84);
  v93 = v92;

  v94 = (v85 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_displayPreferencesViewController);
  *v94 = v91;
  v94[1] = v93;
  v95 = v166;
  v96 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v97 = *(v96 + 80);
  *&v137 = v91;

  v99 = v97(v98, v90, v89, v157 & 1, v95, v96);

  if (v99)
  {
    [v99 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v100 = v158;
  *(v158 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView) = v99;
  v101 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v102 = v152;
  v103 = *(v101 + 104);
  v104 = *(*(v100 + v152) + 40);
  v105 = v103();

  if (v105)
  {
    [v105 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v106 = v158;
  v107 = *(v158 + v139);
  *(v158 + v139) = v105;

  v108 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v109 = *(v108 + 112);
  v110 = *(*(v106 + v102) + 48);
  v111 = v109();

  if (v111)
  {
    [v111 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v112 = v158;
  *(v158 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_castingView) = v111;
  v113 = v166;
  v114 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v115 = v148;
  v146(v148, *(v112 + v102) + OBJC_IVAR____TtC9SeymourUI16SessionPresenter_activityTypeBehavior, v156);
  v116 = *(v114 + 128);

  v118 = v157;
  v120 = v159;
  v119 = v160;
  v121 = v116(v117, v115, v160, v159, v157 & 1, v113, v114);

  sub_20B583F4C(v119, v120, v118 & 1);
  v136(v115, v156);
  if (v121)
  {
    [v121 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v122 = v158;
  v123 = *(v158 + v140);
  *(v158 + v140) = v121;

  v161.receiver = v122;
  v161.super_class = ObjectType;
  v124 = objc_msgSendSuper2(&v161, sel_initWithNibName_bundle_, 0, 0);
  *(*&v124[OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter] + 24) = &off_2822FE880;
  swift_unknownObjectWeakAssign();
  v125 = *&v124[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView];
  v126 = v142;
  v127 = v124;
  if (v125)
  {
    [v125 setAlpha_];
  }

  sub_20C13B564();
  v128 = v124;
  v129 = sub_20C13BB74();
  v130 = sub_20C13D1F4();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v131 = 138543362;
    *(v131 + 4) = v128;
    *v132 = v124;
    v133 = v128;
    _os_log_impl(&dword_20B517000, v129, v130, "New SessionViewController: %{public}@", v131, 0xCu);
    sub_20B520158(v132, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v132, -1, -1);
    MEMORY[0x20F2F6A40](v131, -1, -1);

    sub_20B583ECC(v149);
    sub_20B583ECC(v143);
  }

  else
  {

    sub_20B583ECC(v149);
    sub_20B583ECC(v143);
  }

  (*(v144 + 8))(v126, v145);
  __swift_destroy_boxed_opaque_existential_1(&v165);
  return v128;
}

id SessionViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  v7 = v1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_20B517000, v8, v9, "Cleaning up SessionViewController: %{public}@", v10, 0xCu);
    sub_20B520158(v11, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v13 = *&v7[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay];
  v14 = *&v7[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
  v15 = swift_getObjectType();
  v16 = *(v14 + 248);
  v17 = v13;
  v16(v15, v14);

  v19.receiver = v7;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

uint64_t SessionViewController.preferredFocusEnvironments.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView];
  if (v1)
  {
    v2 = v1;
    [v2 alpha];
    if (v3 > 0.0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      result = swift_allocObject();
      *(result + 16) = xmmword_20C14F580;
      *(result + 32) = v2;
      return result;
    }
  }

  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView];
  [v5 alpha];
  if (v6 > 0.0 || (v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView], [v5 alpha], v7 > 0.0) || (v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_summaryViewController], (v8 = objc_msgSend(v5, sel_parentViewController)) != 0) && (v9 = v8, sub_20B51C88C(0, &qword_281100550), v10 = v0, v11 = sub_20C13D5F4(), v10, v9, (v11 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20C14F580;
    *(v12 + 32) = v5;
    v13 = v5;
    return v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_20C14F580;
    v15 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay];
    *(v14 + 32) = v15;
    v16 = v15;
    return v14;
  }
}

Swift::Void __swiftcall SessionViewController.viewDidLoad()()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v3 = v2;
  v4 = sub_20C138104();
  v5 = sub_20C138104();
  v6 = objc_opt_self();
  v7 = &selRef_clearColor;
  if (v4 != v5)
  {
    v7 = &selRef_blackColor;
  }

  v8 = [v6 *v7];
  [v3 setBackgroundColor_];

  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = v9;
  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer];
  [v9 addSubview_];

  v12 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay];
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
  ObjectType = swift_getObjectType();
  [v1 addChildViewController_];
  v15 = [v12 view];
  if (!v15)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  v17 = [v12 view];
  if (!v17)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = v17;
  [v11 addSubview_];

  [v12 didMoveToParentViewController_];
  v19 = *(v13 + 32);
  v20 = swift_unknownObjectRetain();
  v19(v20, ObjectType, v13);
  v21 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView];
  if (v21)
  {
    type metadata accessor for SessionOverlayView();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v24 = *(v13 + 256);
      v25 = v21;
      v24(v23, ObjectType, v13);
    }
  }

  v26 = sub_20C138104();
  if (v26 == sub_20C138104())
  {
    if (*&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView])
    {
      [v11 addSubview_];
    }

    if (*&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView])
    {
      [v11 addSubview_];
    }
  }

  else
  {
    v27 = (*(v13 + 8))(ObjectType, v13);
    if (v27)
    {
      v28 = v27;
      v29 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView];
      if (v29)
      {
        v30 = v29;
        [v28 addSubview_];
      }
    }

    v31 = (*(v13 + 16))(ObjectType, v13);
    if (v31)
    {
      v32 = v31;
      v33 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView];
      if (v33)
      {
        v34 = v33;
        [v32 addSubview_];
      }
    }
  }

  [v11 addSubview_];
  [v11 addSubview_];
  [v11 addSubview_];
  [v11 addSubview_];
  if (*&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView])
  {
    [v11 addSubview_];
  }

  [v11 addSubview_];
  sub_20BFE31BC();
  v35 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_menuButtonTapped];
  sub_20C13DD64();
  sub_20C13D014();
  sub_20C13DD34();
  sub_20C13DD74();
  sub_20C13DD84();
  sub_20C13DD44();
  sub_20B51C88C(0, &qword_27C765490);
  v36 = sub_20C13CC54();

  [v35 setAllowedPressTypes_];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addGestureRecognizer_];

    v39 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_menuGestureRecognizer];
    *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_menuGestureRecognizer] = v35;

    sub_20BBE28F8();
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_20BFE31BC()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v1 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v5];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v1 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = -v6;
  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  LODWORD(v17) = 1148846080;
  [v16 setPriority_];
  v18 = v16;
  v19 = [v1 topAnchor];
  v20 = [v3 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v4];

  LODWORD(v22) = 1148846080;
  [v21 setPriority_];
  v23 = [v1 bottomAnchor];
  v24 = [v3 bottomAnchor];
  v25 = -v7;
  v26 = [v23 constraintEqualToAnchor:v24 constant:v25];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14FE90;
  *(v28 + 32) = v12;
  *(v28 + 40) = v18;
  *(v28 + 48) = v21;
  *(v28 + 56) = v26;
  v188 = v28;
  v29 = v21;

  v30 = [*(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay) view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = [v30 leadingAnchor];
  v33 = [v1 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v5];

  LODWORD(v35) = 1148846080;
  [v34 setPriority_];
  v36 = v34;
  v37 = [v31 trailingAnchor];
  v38 = [v1 trailingAnchor];
  v39 = [v37 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v31 topAnchor];
  v43 = [v1 topAnchor];
  v44 = [v42 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  v46 = [v31 bottomAnchor];
  v47 = [v1 bottomAnchor];
  v48 = [v46 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v49) = 1148846080;
  [v48 setPriority_];
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C14FE90;
  *(v50 + 32) = v36;
  *(v50 + 40) = v41;
  *(v50 + 48) = v44;
  *(v50 + 56) = v48;
  v187 = v50;
  v51 = v44;

  v52 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView);
  if (v52)
  {
    v53 = v52;
    v54 = [v53 leadingAnchor];
    v55 = [v1 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:v5];

    LODWORD(v57) = 1148846080;
    [v56 &selRef_meterUnit];
    v58 = v56;
    v59 = [v53 trailingAnchor];
    v60 = [v1 trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:v15];

    LODWORD(v62) = 1148846080;
    [v61 &selRef_meterUnit];
    v63 = v61;
    v64 = [v53 topAnchor];
    v65 = [v1 topAnchor];
    v66 = [v64 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v67) = 1148846080;
    [v66 &selRef_meterUnit];
    v68 = [v53 bottomAnchor];
    v69 = [v1 bottomAnchor];
    v70 = [v68 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v71) = 1148846080;
    [v70 &selRef_meterUnit];
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_20C14FE90;
    *(v72 + 32) = v58;
    *(v72 + 40) = v63;
    *(v72 + 48) = v66;
    *(v72 + 56) = v70;
    v186 = v72;
    v73 = v66;
  }

  else
  {
    v186 = MEMORY[0x277D84F90];
  }

  v74 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_heartRateDiscoveryView);
  v75 = [v74 superview];
  if (v75)
  {

    v76 = [v74 leadingAnchor];
    v77 = [v1 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:v5];

    LODWORD(v79) = 1148846080;
    [v78 setPriority_];
    v183 = v78;
    v80 = [v74 trailingAnchor];
    v81 = [v1 trailingAnchor];
    v82 = [v80 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v83) = 1148846080;
    [v82 &selRef_meterUnit];
    v84 = v82;
    v85 = [v74 topAnchor];
    v86 = [v1 topAnchor];
    v87 = [v85 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v88) = 1148846080;
    [v87 &selRef_meterUnit];
    v89 = [v74 bottomAnchor];
    v90 = [v1 bottomAnchor];
    v91 = [v89 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v92) = 1148846080;
    [v91 &selRef_meterUnit];
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_20C14FE90;
    *(v93 + 32) = v183;
    *(v93 + 40) = v84;
    *(v93 + 48) = v87;
    *(v93 + 56) = v91;
    v185 = v93;
  }

  else
  {
    v185 = MEMORY[0x277D84F90];
  }

  v94 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_watchDiscoveryView);
  v95 = [v94 superview];
  if (v95)
  {

    v96 = [v94 leadingAnchor];
    v97 = [v1 leadingAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 constant:v5];

    LODWORD(v99) = 1148846080;
    [v98 setPriority_];
    v100 = v98;
    v101 = [v94 trailingAnchor];
    v102 = [v1 trailingAnchor];
    v103 = [v101 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v104) = 1148846080;
    [v103 setPriority_];
    v105 = v103;
    v106 = [v94 topAnchor];
    v107 = [v1 topAnchor];
    v108 = [v106 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v109) = 1148846080;
    [v108 setPriority_];
    v110 = [v94 bottomAnchor];
    v111 = [v1 bottomAnchor];
    v112 = [v110 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v113) = 1148846080;
    [v112 setPriority_];
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_20C14FE90;
    *(v114 + 32) = v100;
    *(v114 + 40) = v105;
    *(v114 + 48) = v108;
    *(v114 + 56) = v112;
    v184 = v114;
  }

  else
  {
    v184 = MEMORY[0x277D84F90];
  }

  v115 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_continueOnWatchView);
  v116 = [v115 superview];
  if (v116)
  {

    v117 = [v115 leadingAnchor];
    v118 = [v1 leadingAnchor];
    v119 = [v117 constraintEqualToAnchor:v118 constant:v5];

    LODWORD(v120) = 1148846080;
    [v119 setPriority_];
    v121 = v119;
    v122 = [v115 trailingAnchor];
    v123 = [v1 trailingAnchor];
    v124 = [v122 constraintEqualToAnchor:v123 constant:v15];

    LODWORD(v125) = 1148846080;
    [v124 setPriority_];
    v126 = v124;
    v127 = [v115 topAnchor];
    v128 = [v1 topAnchor];
    v129 = [v127 constraintEqualToAnchor:v128 constant:v4];

    LODWORD(v130) = 1148846080;
    [v129 setPriority_];
    v131 = [v115 bottomAnchor];
    v132 = [v1 bottomAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:v25];

    LODWORD(v134) = 1148846080;
    [v133 &selRef_meterUnit];
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_20C14FE90;
    *(v135 + 32) = v121;
    *(v135 + 40) = v126;
    *(v135 + 48) = v129;
    *(v135 + 56) = v133;
    v182 = v135;
  }

  else
  {
    v182 = MEMORY[0x277D84F90];
  }

  v136 = [v115 superview];
  if (v136)
  {

    v137 = v189;
    v138 = *(v189 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_ongoingWorkoutDetectedView);
    v139 = [v138 leadingAnchor];
    v140 = [v1 leadingAnchor];
    v141 = [v139 constraintEqualToAnchor:v140 constant:v5];

    LODWORD(v142) = 1148846080;
    [v141 setPriority_];
    v143 = v141;
    v144 = [v138 trailingAnchor];
    v145 = [v1 trailingAnchor];
    v146 = [v144 constraintEqualToAnchor:v145 constant:v15];

    LODWORD(v147) = 1148846080;
    [v146 setPriority_];
    v148 = v146;
    v149 = [v138 topAnchor];
    v150 = [v1 topAnchor];
    v151 = [v149 constraintEqualToAnchor:v150 constant:v4];

    LODWORD(v152) = 1148846080;
    [v151 setPriority_];
    v153 = [v138 bottomAnchor];
    v154 = [v1 bottomAnchor];
    v155 = [v153 constraintEqualToAnchor:v154 constant:v25];

    LODWORD(v156) = 1148846080;
    [v155 setPriority_];
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_20C14FE90;
    *(v157 + 32) = v143;
    *(v157 + 40) = v148;
    *(v157 + 48) = v151;
    *(v157 + 56) = v155;
  }

  else
  {
    v157 = MEMORY[0x277D84F90];
    v137 = v189;
  }

  v158 = *(v137 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceView);
  v159 = [v158 superview];
  if (v159)
  {

    v160 = [v158 leadingAnchor];
    v161 = [v1 leadingAnchor];
    v162 = [v160 constraintEqualToAnchor:v161 constant:v5];

    LODWORD(v163) = 1148846080;
    [v162 setPriority_];
    v164 = v162;
    v165 = [v158 trailingAnchor];
    v166 = [v1 trailingAnchor];
    v167 = [v165 constraintEqualToAnchor:v166 constant:v15];

    LODWORD(v168) = 1148846080;
    [v167 setPriority_];
    v169 = v167;
    v170 = [v158 topAnchor];
    v171 = [v1 topAnchor];
    v172 = [v170 constraintEqualToAnchor:v171 constant:v4];

    LODWORD(v173) = 1148846080;
    [v172 setPriority_];
    v174 = [v158 bottomAnchor];
    v175 = [v1 bottomAnchor];
    v176 = [v174 constraintEqualToAnchor:v175 constant:v25];

    LODWORD(v177) = 1148846080;
    [v176 setPriority_];
    v178 = swift_allocObject();
    *(v178 + 16) = xmmword_20C14FE90;
    *(v178 + 32) = v164;
    *(v178 + 40) = v169;
    *(v178 + 48) = v172;
    *(v178 + 56) = v176;
  }

  else
  {
    v178 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C15C310;
  *(inited + 32) = v188;
  *(inited + 40) = v187;
  *(inited + 48) = v185;
  *(inited + 56) = v184;
  *(inited + 64) = v182;
  *(inited + 72) = v157;
  *(inited + 80) = v186;
  *(inited + 88) = sub_20BFE45B4();
  *(inited + 96) = sub_20BFE4888();
  *(inited + 104) = v178;
  v180 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v181 = sub_20C13CC54();

  [v180 activateConstraints_];
}

uint64_t sub_20BFE45B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_backgroundView);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    v6 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
    v9 = [v2 leadingAnchor];
    v10 = [v4 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:v5];

    LODWORD(v12) = 1148846080;
    [v11 setPriority_];
    v13 = v11;
    v14 = [v2 trailingAnchor];
    v15 = [v4 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:-v8];

    LODWORD(v17) = 1148846080;
    [v16 setPriority_];
    v18 = v16;
    v19 = [v2 topAnchor];
    v20 = [v4 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:v6];

    LODWORD(v22) = 1148846080;
    [v21 setPriority_];
    v23 = [v2 bottomAnchor];
    v24 = [v4 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-v7];

    LODWORD(v26) = 1148846080;
    [v25 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C14FE90;
    *(v27 + 32) = v13;
    *(v27 + 40) = v18;
    *(v27 + 48) = v21;
    *(v27 + 56) = v25;
    v28 = v21;

    v2 = v18;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  return v27;
}

uint64_t sub_20BFE4888()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_instructionsView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 superview];
    if (v3)
    {

      v4 = sub_20C138104();
      if (v4 == sub_20C138104())
      {
        v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer);
        v7 = *MEMORY[0x277D768C8];
        v6 = *(MEMORY[0x277D768C8] + 8);
        v8 = *(MEMORY[0x277D768C8] + 16);
        v9 = *(MEMORY[0x277D768C8] + 24);
        v10 = [v2 leadingAnchor];
        v11 = [v5 leadingAnchor];
        v12 = [v10 constraintEqualToAnchor:v11 constant:v6];

        LODWORD(v13) = 1148846080;
        [v12 setPriority_];
        v14 = v12;
        v15 = [v2 trailingAnchor];
        v16 = [v5 trailingAnchor];
        v17 = [v15 constraintEqualToAnchor:v16 constant:-v9];

        LODWORD(v18) = 1148846080;
        [v17 setPriority_];
        v19 = v17;
        v20 = [v2 topAnchor];
        v21 = [v5 topAnchor];
        v22 = [v20 constraintEqualToAnchor:v21 constant:v7];

        LODWORD(v23) = 1148846080;
        [v22 setPriority_];
        v24 = [v2 bottomAnchor];
        v25 = [v5 bottomAnchor];
        v26 = [v24 constraintEqualToAnchor:v25 constant:-v8];

        LODWORD(v27) = 1148846080;
        [v26 setPriority_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_20C14FE90;
        *(v28 + 32) = v14;
        *(v28 + 40) = v19;
        *(v28 + 48) = v22;
        *(v28 + 56) = v26;
        v29 = v22;

        v2 = v14;
LABEL_9:

        v2 = v19;
LABEL_11:

        return v28;
      }

      v30 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
      ObjectType = swift_getObjectType();
      v32 = (*(v30 + 16))(ObjectType, v30);
      if (v32)
      {
        v33 = v32;
        v19 = [v32 transportControlsAreaLayoutGuide];

        if (v19)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_20C151490;
          v34 = [v2 bottomAnchor];
          v35 = [v19 topAnchor];
          v36 = [v34 constraintEqualToAnchor_];

          *(v28 + 32) = v36;
          v37 = [v2 leadingAnchor];
          v38 = [v19 leadingAnchor];
          v39 = [v37 constraintEqualToAnchor_];

          *(v28 + 40) = v39;
          goto LABEL_9;
        }
      }
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  return MEMORY[0x277D84F90];
}

void sub_20BFE4CDC()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_castingView];
  if (v1)
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    v5 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
    v8 = [v1 leadingAnchor];
    v9 = [v3 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:v4];

    LODWORD(v11) = 1148846080;
    [v10 setPriority_];
    v12 = v10;
    v13 = [v1 trailingAnchor];
    v14 = [v3 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-v7];

    LODWORD(v16) = 1148846080;
    [v15 setPriority_];
    v17 = v15;
    v18 = [v1 topAnchor];
    v19 = [v3 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v5];

    LODWORD(v21) = 1148846080;
    [v20 setPriority_];
    v22 = [v1 bottomAnchor];
    v23 = [v3 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-v6];

    LODWORD(v25) = 1148846080;
    [v24 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C14FE90;
    *(v26 + 32) = v12;
    *(v26 + 40) = v17;
    *(v26 + 48) = v20;
    *(v26 + 56) = v24;
    v27 = v20;
  }

  v28 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);
  v29 = sub_20C13CC54();

  [v28 activateConstraints_];
}

Swift::Void __swiftcall SessionViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v13 - v6;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewDidDisappear_, a1, v5);
  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter];
  v9 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_workoutSessionConfiguration;
  v10 = type metadata accessor for WorkoutSessionConfiguration();
  sub_20B52F9E8(v8 + v9 + *(v10 + 40), v7, &qword_27C76BBB0);
  v11 = sub_20C134A44();
  LODWORD(v9) = (*(*(v11 - 8) + 48))(v7, 1, v11);
  sub_20B520158(v7, &qword_27C76BBB0);
  if (v9 == 1)
  {
    v12 = [objc_opt_self() sharedApplication];
    [v12 setIdleTimerDisabled_];

    sub_20B97F5B4();
    sub_20BDE3794();
  }
}

Swift::Void __swiftcall SessionViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewWillLayoutSubviews);
  v2 = OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayConstraints;
  if (!*&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayConstraints])
  {
    v3 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    if (v5)
    {
      v6 = v5;
      v7 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView];
      if (v7)
      {
        v9 = *MEMORY[0x277D768C8];
        v8 = *(MEMORY[0x277D768C8] + 8);
        v10 = *(MEMORY[0x277D768C8] + 16);
        v11 = *(MEMORY[0x277D768C8] + 24);
        v12 = v7;
        v13 = [v12 leadingAnchor];
        v14 = [v6 leadingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14 constant:v8];

        LODWORD(v16) = 1148846080;
        [v15 setPriority_];
        v34 = v15;
        v17 = [v12 trailingAnchor];
        v18 = [v6 trailingAnchor];
        v19 = [v17 &selRef_passwordEntryCancelledHandler + 6];

        LODWORD(v20) = 1148846080;
        [v19 setPriority_];
        v21 = v19;
        v22 = [v12 topAnchor];
        v23 = [v6 topAnchor];
        v24 = [v22 &selRef_passwordEntryCancelledHandler + 6];

        LODWORD(v25) = 1148846080;
        [v24 setPriority_];
        v26 = [v12 bottomAnchor];
        v27 = [v6 bottomAnchor];
        v28 = [v26 &selRef_passwordEntryCancelledHandler + 6];

        LODWORD(v29) = 1148846080;
        [v28 setPriority_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_20C14FE90;
        *(v30 + 32) = v34;
        *(v30 + 40) = v21;
        *(v30 + 48) = v24;
        *(v30 + 56) = v28;
        v31 = v24;
      }

      else
      {
        v30 = MEMORY[0x277D84F90];
      }

      v32 = objc_opt_self();
      sub_20B51C88C(0, &qword_281100500);
      v33 = sub_20C13CC54();
      [v32 activateConstraints_];

      *&v1[v2] = v30;
    }
  }
}

void SessionViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_20BFE85F8;
  v16 = v7;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_20B863940;
  v14 = &block_descriptor_174;
  v8 = _Block_copy(&v11);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_20BFE8600;
  v16 = v9;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_20B863940;
  v14 = &block_descriptor_4_0;
  v10 = _Block_copy(&v11);

  [a1 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
}

uint64_t sub_20BFE575C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter);
    v2 = result;

    v3 = *(v1 + 88);

    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BFE5820()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter);
    v2 = result;

    v3 = *(v1 + 88);

    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id SessionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t sub_20BFE5A8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = sub_20C13C4B4();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13C514();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = sub_20B84E75C(a1, a2);
  v19 = sub_20C138104();
  if (v19 == sub_20C138104() || (v20 = sub_20C138104(), v20 == sub_20C138104()))
  {
    [v18 setModalInPresentation_];
  }

  sub_20B51C88C(0, &qword_281100530);
  v21 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13C574();
  v22 = *(v12 + 8);
  v30 = v11;
  v31 = v22;
  v22(v14, v11);
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v18;
  aBlock[4] = sub_20BFE90E8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_50;
  v24 = _Block_copy(aBlock);
  v25 = v3;
  v26 = v18;

  v27 = v10;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BFE9100(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v28 = v32;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v17, v27, v7, v24);
  _Block_release(v24);

  (*(v35 + 8))(v7, v28);
  (*(v33 + 8))(v27, v34);
  return v31(v17, v30);
}

void sub_20BFE5ED0()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = &v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    sub_20C13B574();
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20B517000, v11, v12, "PIP Surrogate provided to self", v13, 2u);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(v1, &protocol witness table for SessionViewController, ObjectType, v10);
    swift_unknownObjectRelease();
    return;
  }

  v15 = [v1 parentViewController];
  if (!v15)
  {
LABEL_12:
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v16 = v15;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    goto LABEL_12;
  }

  v17 = PictureInPictureSupportProxying.rootProxy.getter();
  v19 = v18;
  sub_20C13B574();
  v20 = v17;
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1F4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_20B517000, v21, v22, "Parent is a PIP Supporting Proxying. Using root %@", v23, 0xCu);
    sub_20B520158(v24, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v24, -1, -1);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v26 = swift_getObjectType();
  (*(v19 + 16))(v26, v19);
}

void sub_20BFE6278()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_displayPreferencesViewController];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_displayPreferencesViewController];
  if (v3)
  {
    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v6 = objc_allocWithZone(MEMORY[0x277D757A0]);
    v7 = v3;
    v23 = [v6 initWithRootViewController_];
    v8 = [v23 view];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor_];

      v11 = sub_20C138104();
      if (v11 == sub_20C138104())
      {
        [v23 setModalPresentationStyle_];
        v12 = [v23 popoverPresentationController];
        if (v12)
        {
          v13 = v12;
          [v12 setPermittedArrowDirections_];
        }

        v22 = ObjectType;
        v14 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
        v15 = swift_getObjectType();
        v16 = (*(v14 + 64))(v15, v14);
        v17 = v23;
        if (v16)
        {
          v18 = v16;
          v19 = [v23 popoverPresentationController];

          if (v19)
          {
            [v19 setSourceView_];
          }

          v17 = v18;
        }

        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = *(v4 + 16);

        v21(sub_20BFE9148, v20, v22, v4);

        (*(v14 + 184))(1, v15, v14);
      }

      else
      {
      }

      [v1 presentViewController:v23 animated:1 completion:{0, v22}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BFE6568()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    ObjectType = swift_getObjectType();
    (*(v1 + 184))(0, ObjectType, v1);
  }
}

void sub_20BFE6608(uint64_t a1, void (*a2)(void))
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    ObjectType = swift_getObjectType();
    (*(v8 + 248))(ObjectType, v8);
  }

  if (a2)
  {
    a2();
  }
}

void sub_20BFE6790()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
  ObjectType = swift_getObjectType();
  (*(v1 + 128))(ObjectType, v1);
  [*&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_sessionContainer] removeFromSuperview];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI21SessionViewController_castingView];
    if (v5)
    {
      v6 = v5;
      [v4 addSubview_];
    }

    sub_20BFE4CDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_20BFE6870()
{
  v1 = v0;
  v2 = sub_20C13C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C4F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  v14 = v1;
  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_onPresentSummary];
  v16 = *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_summaryViewController];
  if (v15)
  {

    v15(v16);
    sub_20B583ECC(v15);
LABEL_11:
    v60 = *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView];
    *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView] = 0;

    v61 = *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView];
    *&v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView] = 0;

    return;
  }

  v68 = v9;
  v69 = v7;
  v17 = v14[OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform];
  if (v17 == 1)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v18 setModalPresentationStyle_];
    [v18 setTransitioningDelegate_];
    [v18 setModalInPresentation_];
    [v14 presentViewController:v18 animated:1 completion:0];

    goto LABEL_11;
  }

  [v14 addChildViewController_];
  [v16 didMoveToParentViewController_];
  v70 = v14;
  v19 = [v14 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v16 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  v65 = v6;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 addSubview_];

  v23 = [v16 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  v62 = v5;
  v63 = v2;
  v67 = v17;
  v64 = v3;
  v25 = [v70 view];
  if (v25)
  {
    v26 = v25;
    v66 = objc_opt_self();
    v28 = *MEMORY[0x277D768C8];
    v27 = *(MEMORY[0x277D768C8] + 8);
    v29 = *(MEMORY[0x277D768C8] + 16);
    v30 = *(MEMORY[0x277D768C8] + 24);
    v31 = [v24 leadingAnchor];
    v32 = [v26 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:v27];

    LODWORD(v34) = 1148846080;
    [v33 setPriority_];
    v35 = v33;
    v36 = [v24 trailingAnchor];
    v37 = [v26 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-v30];

    LODWORD(v39) = 1148846080;
    [v38 setPriority_];
    v40 = v38;
    v41 = [v24 topAnchor];
    v42 = [v26 topAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:v28];

    LODWORD(v44) = 1148846080;
    [v43 setPriority_];
    v45 = [v24 bottomAnchor];
    v46 = [v26 bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:-v29];

    LODWORD(v48) = 1148846080;
    [v47 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_20C14FE90;
    *(v49 + 32) = v35;
    *(v49 + 40) = v40;
    *(v49 + 48) = v43;
    *(v49 + 56) = v47;
    v50 = v43;

    sub_20B51C88C(0, &qword_281100500);
    v51 = sub_20C13CC54();

    [v66 activateConstraints_];

    v52 = sub_20C138104();
    v53 = sub_20C138104();
    v14 = v70;
    if (v52 == v53)
    {
      sub_20B51C88C(0, &qword_281100530);
      v54 = sub_20C13D374();
      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_20BFE90D8;
      aBlock[5] = v55;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_34_3;
      v56 = _Block_copy(aBlock);

      v57 = v68;
      sub_20C13C4D4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_20BFE9100(&qword_281103AB0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
      sub_20B682EA8();
      v59 = v62;
      v58 = v63;
      v14 = v70;
      sub_20C13DA94();
      MEMORY[0x20F2F4AF0](0, v57, v59, v56);
      _Block_release(v56);

      (*(v64 + 8))(v59, v58);
      (*(v69 + 8))(v57, v65);
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_20BFE70D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsFocusUpdate];
    [v1 updateFocusIfNeeded];
  }
}

void sub_20BFE713C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_20BFE90E0;
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B7B548C;
  v16 = &block_descriptor_38_1;
  v10 = _Block_copy(&v13);

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v17 = sub_20B5E4150;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B5E3874;
  v16 = &block_descriptor_44_1;
  v12 = _Block_copy(&v13);

  [v8 animateWithDuration:0 delay:v10 usingSpringWithDamping:v12 initialSpringVelocity:a3 options:a4 animations:1.0 completion:0.0];
  _Block_release(v12);
  _Block_release(v10);
}

void sub_20BFE72F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      goto LABEL_12;
    }

    [v3 setUserInteractionEnabled_];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

  v7 = [v6 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
    v10 = v8;
    v11 = *(v8 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);

    ObjectType = swift_getObjectType();
    v13 = (*(v9 + 56))(ObjectType, v9);
  }

  else
  {
    v13 = 0.0;
  }

  [v7 setAlpha_];
}

void sub_20BFE7490(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 alpha];
  v7 = v6;

  v8 = [v3 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 setUserInteractionEnabled_];

  v10 = [v3 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 setAlpha_];

  v12 = [v3 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 layer];

  v15 = sub_20BFE75F4(v7, 1.0, a1);
  [v14 addAnimation:v15 forKey:0];
}

id sub_20BFE75F4(double a1, double a2, double a3)
{
  v4 = sub_20C13C914();
  v5 = [objc_opt_self() animationWithKeyPath_];

  v6 = sub_20C138374();
  [v5 setFromValue_];

  v7 = sub_20C138374();
  [v5 setToValue_];

  v8 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  v9 = v5;
  LODWORD(v10) = 1051260355;
  LODWORD(v11) = 1.0;
  LODWORD(v12) = 1051260355;
  v13 = [v8 initWithControlPoints__:v10 :{0.0, v12, v11}];
  [v9 setTimingFunction_];

  [v9 setDuration_];
  return v9;
}

uint64_t sub_20BFE7734()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_platform);
  if (v1 < 2)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay) view];
    if (v2)
    {
      v3 = v2;
      [v2 alpha];
      v5 = v4;

      v6 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter) + 72) + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v8 = result;
      v9 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 16);

      v11(v5 == 1.0, 0, ObjectType, v9);
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if (v1 != 3)
  {
    goto LABEL_13;
  }

  v12 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter) + 72) + OBJC_IVAR____TtC9SeymourUI28SessionInstructionsPresenter_display;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v13 = *(v12 + 8);
  v14 = swift_getObjectType();
  v15 = *(v13 + 16);

  v15(1, 0, v14, v13);
LABEL_8:
}

void *SessionViewController.childForHomeIndicatorAutoHidden.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);
  v2 = v1;
  return v1;
}

uint64_t SessionViewController.attachPictureInPictureSurrogate(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t SessionViewController.updatePictureInPictureDelegate(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  return v3(v4, ObjectType, v1);
}

Swift::Void __swiftcall SessionViewController.cleanupPlayback()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - v2;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter);
  *(v8 + 24) = 0;
  swift_unknownObjectWeakAssign();
  sub_20C13B574();

  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = OBJC_IVAR____TtC9SeymourUI16SessionPresenter_termination;
    swift_beginAccess();
    v20 = v4;
    sub_20B52F9E8(v8 + v14, v3, &unk_27C765090);
    v15 = sub_20C13D8F4();
    v17 = v16;
    sub_20B520158(v3, &unk_27C765090);
    v18 = sub_20B51E694(v15, v17, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_20B517000, v9, v10, "Final termination on presenter is %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F2F6A40](v13, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);

    (*(v5 + 8))(v7, v20);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall SessionViewController.restorePictureInPictureDelegate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  v3(v4, ObjectType, v1);
}

Swift::Void __swiftcall SessionViewController.removePictureInPictureDelegate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(0, ObjectType, v1);
}

Swift::Bool __swiftcall SessionViewController.containsPictureInPicturePlayerViewController(_:)(AVPlayerViewController *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 272))(a1, ObjectType, v3) & 1;
}

uint64_t sub_20BFE80DC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20BFE81CC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 272))(a1, ObjectType, v3) & 1;
}

uint64_t sub_20BFE8234()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  return v3(v4, ObjectType, v1);
}

uint64_t sub_20BFE82A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 32);
  v4 = swift_unknownObjectRetain();
  return v3(v4, ObjectType, v1);
}

uint64_t sub_20BFE831C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(0, ObjectType, v1);
}

void __swiftcall SessionViewController.presentationController(forPresented:presenting:source:)(UIPresentationController_optional *__return_ptr retstr, UIViewController *forPresented, UIViewController_optional *presenting, UIViewController *source)
{
  v4 = [objc_opt_self() sheetPresentationControllerForPresentedController:forPresented presentingController:presenting];
  [v4 setPrefersPageSizing_];
  v5 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  [v4 setBackgroundBlurEffect_];
}

uint64_t _s9SeymourUI21SessionViewControllerC11keyCommandsSaySo12UIKeyCommandCGSgvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C151490;
  v1 = sub_20C13C914();
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0 action:sel_handleSpacebarCommand];

  v4 = [v3 smu_nonRepeatableCopy];
  *(v0 + 32) = v4;
  *(v0 + 40) = [v2 keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_handleEscapeKeyCommand];
  return v0;
}

void sub_20BFE8608()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_miniPlayerHost + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_bufferView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_menuGestureRecognizer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_onDismiss);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_onPresentSummary);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_overlayConstraints) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t _s9SeymourUI21SessionViewControllerC06playerde18WillStartPictureInI0yySo08AVPlayerdE0CF_0()
{
  v0 = sub_20C138454();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  swift_getObjectType();
  sub_20C138444();
  sub_20BFE9100(&qword_27C768948, MEMORY[0x277D53FE0]);
  sub_20C13A764();
  (*(v1 + 8))(v3, v0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_20BFE5ED0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BFE8928(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v15[2], v15[3]);
    v13 = sub_20B51E694(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "Unable to start Picture In Picture: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id _s9SeymourUI21SessionViewControllerC06playerde17WillStopPictureInI0yySo08AVPlayerdE0CF_0()
{
  v1 = v0;
  v2 = sub_20C138474();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  swift_getObjectType();
  sub_20C138464();
  sub_20BFE9100(&unk_27C76F050, MEMORY[0x277D53FF0]);
  sub_20C13A764();
  (*(v3 + 8))(v5, v2);
  [v1 setNeedsFocusUpdate];
  return [v1 updateFocusIfNeeded];
}

uint64_t _s9SeymourUI21SessionViewControllerC06playerde16DidStopPictureInI0yySo08AVPlayerdE0CF_0()
{
  v0 = sub_20C138434();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  swift_getObjectType();
  sub_20C138424();
  sub_20BFE9100(&qword_27C768828, MEMORY[0x277D53FD0]);
  sub_20C13A764();
  return (*(v1 + 8))(v3, v0);
}

uint64_t type metadata accessor for SessionViewController()
{
  result = qword_281102868;
  if (!qword_281102868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFE8FA0()
{
  result = sub_20C137254();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_20BFE9100(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20BFE91B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BFE91F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BFE9258()
{
  v1 = v0;
  MEMORY[0x20F2F58E0](*v0);
  sub_20C13CA64();
  v2 = *(v0 + 3);
  sub_20C13E184();
  if (v2)
  {
    v3 = v2;
    sub_20C13D604();
  }

  sub_20C13CA64();
  MEMORY[0x20F2F58E0](v1[48]);
  return sub_20C13E184();
}

uint64_t sub_20BFE92F8()
{
  sub_20C13E164();
  sub_20BFE9258();
  return sub_20C13E1B4();
}

uint64_t sub_20BFE933C()
{
  sub_20C13E164();
  sub_20BFE9258();
  return sub_20C13E1B4();
}

uint64_t sub_20BFE9378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_20BFE942C(v5, v7) & 1;
}

unint64_t sub_20BFE93D8()
{
  result = qword_27C771A78;
  if (!qword_27C771A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771A78);
  }

  return result;
}

uint64_t sub_20BFE942C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(a1 + 3);
  v6 = *(a2 + 3);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    sub_20B71D438();
    v7 = v6;
    v8 = v5;
    v9 = sub_20C13D5F4();

    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v6)
  {
LABEL_18:
    v11 = 0;
    return v11 & 1;
  }

  if ((*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5)) && (sub_20C13DFF4() & 1) == 0 || a1[48] != a2[48])
  {
    goto LABEL_18;
  }

  v11 = a1[49] ^ a2[49] ^ 1;
  return v11 & 1;
}

uint64_t sub_20BFE953C()
{
  v1 = sub_20C13C554();
  v47 = *(v1 - 8);
  v48 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for AccountSetting();
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_settings);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = *(v4 + 24);
    v51 = *(v4 + 20);
    v12 = &v7[v11];
    v13 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v50 = *(v5 + 72);
    do
    {
      sub_20B64DC5C(v13, v7);
      v14 = v7[v51] > 1u;
      v15 = swift_allocObject();
      v16 = *v12;
      v17 = *(v12 + 1);

      sub_20B64DEC0(v7);
      *(v15 + 16) = v16;
      *(v15 + 24) = v17;
      *(v15 + 32) = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_20BC05D3C(0, *(v10 + 2) + 1, 1, v10);
      }

      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v10 = sub_20BC05D3C((v18 > 1), v19 + 1, 1, v10);
      }

      *(v10 + 2) = v19 + 1;
      *&v10[8 * v19 + 32] = v15 | 1;
      v13 += v50;
      --v9;
    }

    while (v9);
  }

  v52 = 0uLL;
  LOBYTE(v53) = 1;
  *(&v53 + 1) = 0;
  *&v54 = 0;
  WORD4(v54) = 128;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  LOBYTE(v58) = 0;
  *(&v58 + 1) = v10;
  *&v59[0] = MEMORY[0x277D84F90];
  *(v59 + 8) = 0u;
  *(&v59[1] + 8) = 0u;
  *(&v59[2] + 1) = 0;
  v60 = 2;
  nullsub_1(&v52);
  v20 = v49;
  v21 = v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row;
  v22 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 144);
  v61[8] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 128);
  v61[9] = v22;
  v62 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 160);
  v23 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 80);
  v61[4] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 64);
  v61[5] = v23;
  v24 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 112);
  v61[6] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 96);
  v61[7] = v24;
  v25 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 16);
  v61[0] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row);
  v61[1] = v25;
  v26 = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 48);
  v61[2] = *(v49 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 32);
  v61[3] = v26;
  v27 = v59[2];
  *(v21 + 128) = v59[1];
  *(v21 + 144) = v27;
  *(v21 + 160) = v60;
  v28 = v57;
  *(v21 + 64) = v56;
  *(v21 + 80) = v28;
  v29 = v59[0];
  *(v21 + 96) = v58;
  *(v21 + 112) = v29;
  v30 = v53;
  *v21 = v52;
  *(v21 + 16) = v30;
  v31 = v55;
  *(v21 + 32) = v54;
  *(v21 + 48) = v31;
  sub_20B634408(v61);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v34 = sub_20B61D118(v20, result);
      if (v35)
      {
        v37 = v34;
        v38 = v35;
        v39 = v36;
        sub_20B5E2E18();
        v40 = sub_20C13D374();
        v42 = v46;
        v41 = v47;
        *v46 = v40;
        v43 = v48;
        (*(v41 + 104))(v42, *MEMORY[0x277D85200], v48);
        v44 = sub_20C13C584();
        result = (*(v41 + 8))(v42, v43);
        if ((v44 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B62082C(v37, v38, v39, v20, 0, v33);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BFE9954()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountSettingNotificationsShelf()
{
  result = qword_27C771A88;
  if (!qword_27C771A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BFE9A9C()
{
  result = sub_20C132EE4();
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

void sub_20BFE9B50(unint64_t a1, unint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountSetting();
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 1)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_settings);
      if (*(v13 + 16) > a2)
      {
        sub_20B64DC5C(v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_20B64E88C(v12, v12[*(v9 + 20)], Strong);
          swift_unknownObjectRelease();
        }

        sub_20B64DEC0(v12);
        return;
      }
    }

    __break(1u);
    return;
  }

  sub_20C13B534();

  v15 = sub_20C13BB74();
  v16 = sub_20C13D1D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = a1;
    v23 = v18;
    *v17 = 136446210;

    v19 = sub_20C13C9D4();
    v21 = sub_20B51E694(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_20B517000, v15, v16, "Shelf lockup navigation triggered for item: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x20F2F6A40](v18, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_20BFE9E24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BFE9E9C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row + 32);
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

uint64_t sub_20BFE9F50()
{
  v1 = type metadata accessor for AccountSettingLink();
  MEMORY[0x28223BE20](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_row;
  sub_20B5D8060(v21);
  v5 = v21[9];
  *(v4 + 128) = v21[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v22;
  v6 = v21[5];
  *(v4 + 64) = v21[4];
  *(v4 + 80) = v6;
  v7 = v21[7];
  *(v4 + 96) = v21[6];
  *(v4 + 112) = v7;
  v8 = v21[1];
  *v4 = v21[0];
  *(v4 + 16) = v8;
  v9 = v21[3];
  *(v4 + 32) = v21[2];
  *(v4 + 48) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768528);
  v10 = (type metadata accessor for AccountSetting() - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C14F980;
  v13 = v12 + v11;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_20C132964();
  v18 = v17;

  sub_20BEC4990(v3, v13);
  *(v13 + v10[7]) = 2;
  v19 = (v13 + v10[8]);
  *v19 = v16;
  v19[1] = v18;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32AccountSettingNotificationsShelf_settings) = v12;
  return v0;
}

uint64_t type metadata accessor for WorkoutPlanCatalogThemePickerOption()
{
  result = qword_27C771A98;
  if (!qword_27C771A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFEA220()
{
  sub_20C133A74();
  if (v0 <= 0x3F)
  {
    sub_20BFEA2BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20BFEA2BC()
{
  if (!qword_27C771AA8)
  {
    v0 = sub_20C13CD04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C771AA8);
    }
  }
}

uint64_t sub_20BFEA30C()
{
  sub_20C13CA64();
  v1 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  sub_20C133A74();
  sub_20BFEA4E0(&qword_27C76B788, MEMORY[0x277D50278]);
  sub_20C13C7C4();
  MEMORY[0x20F2F58E0](*(v0 + *(v1 + 24)));
  v2 = *(v0 + *(v1 + 28));
  result = MEMORY[0x20F2F58E0](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x20F2F58E0](v6);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_20BFEA414()
{
  sub_20C13E164();
  sub_20BFEA30C();
  return sub_20C13E1B4();
}

uint64_t sub_20BFEA458()
{
  sub_20C13E164();
  sub_20BFEA30C();
  return sub_20C13E1B4();
}

uint64_t sub_20BFEA4E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BFEA528(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  if ((sub_20C133A44() & 1) == 0 || *(a1 + *(v5 + 24)) != *(a2 + *(v5 + 24)))
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_20BB80344(v7, v8);
}

uint64_t sub_20BFEA5DC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20C13B224();
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C13AB54();
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C13A854();
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13AD54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v22 = *(v11 + 16);
  v22(&v32 - v23, v2, a1, v21);
  if (swift_dynamicCast())
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (v22)(v19, v2, a1);
    v25 = v40;
    v24 = v41;
    if (swift_dynamicCast())
    {
      (*(v37 + 8))(v25, v24);
    }

    else
    {
      (v22)(v16, v2, a1);
      v26 = v38;
      v27 = v39;
      if (swift_dynamicCast())
      {
        v28 = *(v34 + 8);
        v29 = v26;
      }

      else
      {
        (v22)(v33, v2, a1);
        v30 = v35;
        v27 = v36;
        result = swift_dynamicCast();
        if (!result)
        {
          return result;
        }

        v28 = *(v32 + 8);
        v29 = v30;
      }

      v28(v29, v27);
    }
  }

  return 1;
}

uint64_t sub_20BFEAA30(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  v10 = MEMORY[0x28223BE20](v9);
  v11 = *(v3 + 16);
  v11(&v14[-v12], v1, a1, v10);
  if (swift_dynamicCast())
  {
    return 1;
  }

  (v11)(v8, v1, a1);
  if (swift_dynamicCast())
  {
    return 1;
  }

  (v11)(v5, v1, a1);
  return swift_dynamicCast();
}

unint64_t sub_20BFEABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a3;
  v51 = sub_20C13AC54();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20C13A874();
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v55 = sub_20C133D14();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  v65 = a4;
  v66 = a6;
  v56 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v62 = a5;
  v63 = a7;
  v58 = a7;
  v24 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(a5 - 8) + 16))(v24, a2, a5);
  sub_20B51CC64(v64, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0);
  v25 = sub_20C13AB74();
  v26 = swift_dynamicCast();
  v27 = *(*(v25 - 8) + 56);
  if (v26)
  {
    v28 = *(v25 - 8);
    v27(v17, 0, 1, v25);
    sub_20C13AB64();
    (*(v28 + 8))(v17, v25);
    v29 = v54;
    v30 = v55;
    (*(v54 + 32))(v22, v19, v55);
    v31 = sub_20BFEB2A8(v22, v24, v57, a5, v58);
    (*(v29 + 8))(v22, v30);
  }

  else
  {
    v32 = v24;
    v34 = v57;
    v33 = v58;
    v27(v17, 1, 1, v25);
    sub_20BFEB240(v17);
    v35 = v56;
    if (sub_20BFEA5DC(a4))
    {
      v31 = sub_20BFEB898(boxed_opaque_existential_1, v32, v34, a4, a5, v35, v33);
    }

    else if (sub_20BFEAA30(a4))
    {
      v31 = sub_20BFEBE7C(boxed_opaque_existential_1, v32, v34, a4, a5, v35, v33);
    }

    else
    {
      sub_20B51CC64(v64, v60);
      v36 = v52;
      v37 = v53;
      if (swift_dynamicCast())
      {
        (*(v49 + 8))(v36, v37);
        v31 = sub_20BFEC678(v32, a4, a5, v35, v33);
      }

      else
      {
        sub_20B51CC64(v64, v60);
        v38 = v50;
        v39 = v51;
        if (swift_dynamicCast())
        {
          (*(v48 + 8))(v38, v39);
          v31 = sub_20BFECA2C(v32, a4, a5, v35, v33);
        }

        else
        {
          v40 = v65;
          v41 = __swift_project_boxed_opaque_existential_1(v64, v65);
          v60[3] = v40;
          v42 = __swift_allocate_boxed_opaque_existential_1(v60);
          (*(*(v40 - 8) + 16))(v42, v41, v40);
          v43 = v62;
          v44 = __swift_project_boxed_opaque_existential_1(v61, v62);
          v59[3] = v43;
          v45 = __swift_allocate_boxed_opaque_existential_1(v59);
          (*(*(v43 - 8) + 16))(v45, v44, v43);
          v31 = sub_20BFEC448(v60, v59);
          __swift_destroy_boxed_opaque_existential_1(v59);
          __swift_destroy_boxed_opaque_existential_1(v60);
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return v31;
}

uint64_t sub_20BFEB240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BFEB2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a1;
  v50 = sub_20C13AC54();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20C13A874();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_20C133D14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v62 = a4;
  v63 = a5;
  v54 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  sub_20B51CC64(v61, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0);
  v21 = sub_20C13AB74();
  v22 = swift_dynamicCast();
  v23 = *(*(v21 - 8) + 56);
  if (v22)
  {
    v24 = *(v21 - 8);
    v23(v12, 0, 1, v21);
    sub_20C13AB64();
    (*(v24 + 8))(v12, v21);
    (*(v14 + 32))(v19, v16, v13);
    v25 = sub_20C133CE4();
    if (v27)
    {
      if (v25 == 1)
      {
        v28 = sub_20C133CE4();
        v30 = v29;
        v58[0] = v28;
        v58[1] = v29;
        v32 = v31 & 1;
        v59 = v31 & 1;
        v55 = xmmword_20C152300;
        v56 = 1;
        sub_20B8C38A0();
        sub_20B8C38F4();
        v33 = sub_20C133BF4();
        (*(v14 + 8))(v19, v13);
        sub_20B583F4C(v28, v30, v32);
        v34 = v33 & 1;
        goto LABEL_10;
      }
    }

    else
    {
      sub_20B583F4C(v25, v26, 0);
    }

    (*(v14 + 8))(v19, v13);
    v34 = 1;
    goto LABEL_10;
  }

  v23(v12, 1, 1, v21);
  sub_20BFEB240(v12);
  if (sub_20BFEAA30(a4) & 1) != 0 || (sub_20BFEA5DC(a4))
  {
LABEL_7:
    v34 = 2;
    goto LABEL_10;
  }

  sub_20B51CC64(v61, v58);
  v37 = v51;
  v36 = v52;
  if (swift_dynamicCast())
  {
    (*(v48 + 8))(v37, v36);
    v38 = sub_20C133CE4();
    if (v40)
    {
      if (v38 == 4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_20B583F4C(v38, v39, 0);
    }

    v34 = 0;
    goto LABEL_10;
  }

  sub_20B51CC64(v61, v58);
  v41 = v49;
  v42 = v50;
  if (swift_dynamicCast())
  {
    (*(v47 + 8))(v41, v42);
    v34 = 0;
  }

  else
  {
    v60 = v13;
    v43 = __swift_allocate_boxed_opaque_existential_1(v58);
    (*(v14 + 16))(v43, v53, v13);
    v44 = v62;
    v45 = __swift_project_boxed_opaque_existential_1(v61, v62);
    v57 = v44;
    v46 = __swift_allocate_boxed_opaque_existential_1(&v55);
    (*(*(v44 - 8) + 16))(v46, v45, v44);
    v34 = sub_20BFEC448(v58, &v55);
    __swift_destroy_boxed_opaque_existential_1(&v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v61);
  return v34;
}

uint64_t sub_20BFEB898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a2;
  v50 = sub_20C13AC54();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20C13A874();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - v15;
  v17 = sub_20C133D14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v61 = a4;
  v62 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v58 = a5;
  v59 = a7;
  v53 = a7;
  v25 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(a5 - 8) + 16))(v25, v54, a5);
  sub_20B51CC64(v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0);
  v26 = sub_20C13AB74();
  v27 = swift_dynamicCast();
  v28 = *(*(v26 - 8) + 56);
  if (v27)
  {
    v29 = *(v26 - 8);
    v28(v16, 0, 1, v26);
    sub_20C13AB64();
    (*(v29 + 8))(v16, v26);
    (*(v18 + 32))(v23, v20, v17);
    v30 = sub_20C133CE4();
    v32 = v31;
    v34 = v33;
    (*(v18 + 8))(v23, v17);
    if (v34)
    {
      v35 = 0x2010200020002uLL >> (8 * v30);
      goto LABEL_10;
    }

    sub_20B583F4C(v30, v32, 0);
LABEL_9:
    v35 = 2;
    goto LABEL_10;
  }

  v28(v16, 1, 1, v26);
  sub_20BFEB240(v16);
  if (sub_20BFEA5DC(a5) & 1) != 0 || (sub_20BFEAA30(a5))
  {
    goto LABEL_9;
  }

  sub_20B51CC64(v57, v56);
  v36 = v51;
  v37 = v52;
  if (swift_dynamicCast())
  {
    (*(v48 + 8))(v36, v37);
    goto LABEL_9;
  }

  sub_20B51CC64(v57, v56);
  v39 = v49;
  v40 = v50;
  if (swift_dynamicCast())
  {
    (*(v47 + 8))(v39, v40);
    v35 = 0;
  }

  else
  {
    v41 = v61;
    v42 = __swift_project_boxed_opaque_existential_1(v60, v61);
    v56[3] = v41;
    v43 = __swift_allocate_boxed_opaque_existential_1(v56);
    (*(*(v41 - 8) + 16))(v43, v42, v41);
    v44 = v58;
    v45 = __swift_project_boxed_opaque_existential_1(v57, v58);
    v55[3] = v44;
    v46 = __swift_allocate_boxed_opaque_existential_1(v55);
    (*(*(v44 - 8) + 16))(v46, v45, v44);
    v35 = sub_20BFEC448(v56, v55);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v35;
}

uint64_t sub_20BFEBE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a2;
  v48 = sub_20C13AC54();
  v46[0] = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20C13A874();
  v46[1] = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v46 - v15;
  v17 = sub_20C133D14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v46 - v22;
  v59 = a4;
  v60 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v56 = a5;
  v57 = a7;
  v51 = a7;
  v25 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a5 - 8) + 16))(v25, v52, a5);
  sub_20B51CC64(v55, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0);
  v26 = sub_20C13AB74();
  v27 = swift_dynamicCast();
  v28 = *(*(v26 - 8) + 56);
  if (v27)
  {
    v29 = *(v26 - 8);
    v28(v16, 0, 1, v26);
    sub_20C13AB64();
    (*(v29 + 8))(v16, v26);
    (*(v18 + 32))(v23, v20, v17);
    v30 = sub_20C133CE4();
    v32 = v31;
    v34 = v33;
    (*(v18 + 8))(v23, v17);
    if (v34)
    {
      v35 = 0x2010001020002uLL >> (8 * v30);
      goto LABEL_10;
    }

    sub_20B583F4C(v30, v32, 0);
LABEL_9:
    v35 = 2;
    goto LABEL_10;
  }

  v28(v16, 1, 1, v26);
  sub_20BFEB240(v16);
  if (sub_20BFEA5DC(a5) & 1) != 0 || (sub_20BFEAA30(a5))
  {
    goto LABEL_9;
  }

  sub_20B51CC64(v55, v54);
  v36 = v49;
  v37 = v50;
  if (swift_dynamicCast())
  {
    v38 = &v62;
  }

  else
  {
    sub_20B51CC64(v55, v54);
    v36 = v47;
    v37 = v48;
    if (!swift_dynamicCast())
    {
      v40 = v59;
      v41 = __swift_project_boxed_opaque_existential_1(v58, v59);
      v54[3] = v40;
      v42 = __swift_allocate_boxed_opaque_existential_1(v54);
      (*(*(v40 - 8) + 16))(v42, v41, v40);
      v43 = v56;
      v44 = __swift_project_boxed_opaque_existential_1(v55, v56);
      v53[3] = v43;
      v45 = __swift_allocate_boxed_opaque_existential_1(v53);
      (*(*(v43 - 8) + 16))(v45, v44, v43);
      v35 = sub_20BFEC448(v54, v53);
      __swift_destroy_boxed_opaque_existential_1(v53);
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_10;
    }

    v38 = &v61;
  }

  (*(*(v38 - 32) + 8))(v36, v37);
  v35 = 0;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v35;
}

uint64_t sub_20BFEC448(void *a1, void *a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  sub_20C13B4A4();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446466;
    v12 = sub_20C13E234();
    v14 = sub_20B51E694(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = sub_20C13E234();
    v17 = sub_20B51E694(v15, v16, &v20);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_20B517000, v8, v9, "Unexpected collision. currentEvent: %{public}s incomingEvent: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_20BFEC678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_20C133D14();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = sub_20C13A874();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = a3;
  v38[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_20B51CC64(v38, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0);
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v20, v17);
  }

  else if ((sub_20BFEA5DC(a3) & 1) == 0)
  {
    sub_20B51CC64(v38, v37);
    v24 = sub_20C13AB74();
    v25 = swift_dynamicCast();
    v26 = *(*(v24 - 8) + 56);
    if (!v25)
    {
      v26(v10, 1, 1, v24);
      sub_20BFEB240(v10);
      v22 = 0;
      goto LABEL_5;
    }

    v27 = *(v24 - 8);
    v26(v10, 0, 1, v24);
    sub_20C13AB64();
    (*(v27 + 8))(v10, v24);
    v29 = v35;
    v28 = v36;
    (*(v35 + 32))(v16, v13, v36);
    v30 = sub_20C133CE4();
    v32 = v31;
    v34 = v33;
    (*(v29 + 8))(v16, v28);
    if (v34)
    {
      if (v30 == 4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_20B583F4C(v30, v32, 0);
    }

    v22 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v22 = 2;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v22;
}

unint64_t sub_20BFECA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30[-v9];
  v11 = sub_20C133D14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v30[-v16];
  v31[3] = a3;
  v31[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_20B51CC64(v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AC0);
  v19 = sub_20C13AB74();
  v20 = swift_dynamicCast();
  v21 = *(*(v19 - 8) + 56);
  if (v20)
  {
    v22 = *(v19 - 8);
    v21(v10, 0, 1, v19);
    sub_20C13AB64();
    (*(v22 + 8))(v10, v19);
    (*(v12 + 32))(v17, v14, v11);
    v23 = sub_20C133CE4();
    v25 = v24;
    v27 = v26;
    (*(v12 + 8))(v17, v11);
    if (v27)
    {
      v28 = 0x2010200020002uLL >> (8 * v23);
    }

    else
    {
      sub_20B583F4C(v23, v25, 0);
      v28 = 2;
    }
  }

  else
  {
    v21(v10, 1, 1, v19);
    sub_20BFEB240(v10);
    v28 = 2;
    if ((sub_20BFEAA30(a3) & 1) == 0)
    {
      if (sub_20BFEA5DC(a3))
      {
        v28 = 2;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v28;
}

char *sub_20BFECD34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo;
  v12 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout];
  v14 = sub_20C1380F4();
  *v13 = xmmword_20C189480;
  v13[16] = v14;
  *&v5[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_activatedConstraints] = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
  sub_20C13C354();
  v32 = sub_20C13C3E4();
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AF8));
  v17 = sub_20C13C224();
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v15] = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];
  if (v20)
  {
    v21 = v20;

    v19 = v21;
  }

  v22 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_titleLabel;
  v23 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];

  [v18 setFont_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v24 = [objc_opt_self() whiteColor];
  [v18 setTextColor_];

  [v18 setLineBreakMode_];
  *&v5[v22] = v18;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = [v25 contentView];
  v27 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
  [v26 addSubview_];

  v28 = [v25 contentView];
  [v28 addSubview_];

  v29 = *&v25[v27];
  sub_20C13C214();

  sub_20BFED0E8();
  return v25;
}

void sub_20BFED0E8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v42 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_activatedConstraints;
  sub_20B5E29D0();

  v3 = sub_20C13CC54();

  v43 = v2;
  [v2 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C151DF0;
  v5 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
  v6 = [*&v0[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView] topAnchor];
  v7 = [v1 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [*&v1[v5] leadingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 leadingAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v4 + 40) = v13;
  v14 = [*&v1[v5] trailingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v4 + 48) = v17;
  v18 = [*&v1[v5] heightAnchor];
  v19 = [*&v1[v5] widthAnchor];
  v20 = &v1[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout];
  v21 = [v18 constraintEqualToAnchor:v19 multiplier:*&v1[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout + 8]];

  *(v4 + 56) = v21;
  v22 = *&v1[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_titleLabel];
  v23 = [v22 topAnchor];
  v24 = [*&v1[v5] bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:*v20];

  *(v4 + 64) = v25;
  v26 = [v22 leadingAnchor];
  v27 = [v1 contentView];
  v28 = [v27 leadingAnchor];

  v29 = 20.0;
  v30 = 20.0;
  if (*(v20 + 16))
  {
    if (*(v20 + 16) != 1)
    {
      goto LABEL_9;
    }

    v30 = 45.0;
  }

  v31 = [v26 &selRef_passwordEntryCancelledHandler + 6];

  *(v4 + 72) = v31;
  v32 = [v22 trailingAnchor];
  v33 = [v1 &selRef_setMaximumFractionDigits_];
  v34 = [v33 trailingAnchor];

  if (*(v20 + 16))
  {
    if (*(v20 + 16) != 1)
    {
      goto LABEL_9;
    }

    v29 = 45.0;
  }

  v35 = [v32 &selRef_passwordEntryCancelledHandler + 6];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v36) = v44;
  [v35 setPriority_];
  *(v4 + 80) = v35;
  v37 = [v22 bottomAnchor];
  v38 = [v1 &selRef_setMaximumFractionDigits_];
  v39 = [v38 bottomAnchor];

  if (*(v20 + 16) < 2u)
  {
    v40 = [v37 &selRef_passwordEntryCancelledHandler + 6];

    *(v4 + 88) = v40;
    *&v1[v42] = v4;

    v41 = sub_20C13CC54();

    [v43 activateConstraints_];

    return;
  }

LABEL_9:
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for WorkoutPlanDetailHeaderCell()
{
  result = qword_281100EE8;
  if (!qword_281100EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFED8FC()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPlanDetailHeaderCell.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanDetailHeaderCell.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_20BFEDA58(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BFEDAA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BFEDB0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BFEDB70(unint64_t a1)
{
  v2 = v1;
  v87 = sub_20C13BB84();
  v4 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1357B4();
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v76 - v10;
  MEMORY[0x28223BE20](v11);
  v83 = &v76 - v12;
  v86 = sub_20C132EE4();
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v17);
  v89 = &v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768180);
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v76 - v29;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x49)
  {
    v31 = swift_projectBox();
    sub_20B52F9E8(v31, v21, &qword_27C768180);
    v32 = *&v21[*(v19 + 48)];

    sub_20B64EFD4(v21, v30);
    sub_20B52F9E8(v30, v27, &unk_27C762300);
    v33 = sub_20C135814();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    v36 = v35(v27, 1, v33);
    v79 = v30;
    if (v36 == 1)
    {
      sub_20B520158(v27, &unk_27C762300);
    }

    else
    {
      v78 = v32;
      v87 = v2;
      sub_20C1357D4();
      v49 = *(v34 + 8);
      v49(v27, v33);
      v50 = v86;
      v77 = *(v88 + 32);
      v77(v89, v16, v86);
      sub_20B52F9E8(v30, v24, &unk_27C762300);
      if (v35(v24, 1, v33) == 1)
      {
        (*(v88 + 8))(v89, v50);
        sub_20B520158(v24, &unk_27C762300);
        v2 = v87;
      }

      else
      {
        v51 = v80;
        sub_20C135804();
        v49(v24, v33);
        v53 = v83;
        v52 = v84;
        v76 = *(v84 + 32);
        v76(v83, v51, v85);
        v54 = objc_opt_self();
        v55 = v87;
        sub_20B5E29D0();

        v56 = sub_20C13CC54();

        [v54 deactivateConstraints_];

        v80 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
        [*(v55 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView) removeFromSuperview];
        v57 = v88;
        v58 = v81;
        v59 = v86;
        (*(v88 + 16))(v81, v89, v86);
        v60 = *(v52 + 16);
        v61 = v82;
        v62 = v85;
        v60(v82, v53, v85);
        type metadata accessor for WorkoutPlanArtworkV2(0);
        v63 = swift_allocObject();
        *(v63 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) = 0;
        *(v63 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset) = 0;
        v77((v63 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_identifier), v58, v59);
        v76((v63 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_schedule), v61, v62);

        v64 = sub_20BD0E158();

        v90[0] = v63;
        v90[1] = v64;
        v91 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AD0);
        sub_20BFEE570();
        v90[0] = sub_20C13C3E4();
        v65 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AF8));
        v66 = sub_20C13C224();
        [v66 setTranslatesAutoresizingMaskIntoConstraints_];
        v67 = *&v80[v55];
        *&v80[v55] = v66;
        v68 = v66;

        sub_20C13C214();
        v2 = v55;

        (*(v84 + 8))(v53, v62);
        (*(v57 + 8))(v89, v59);
      }

      v32 = v78;
    }

    v69 = *&v2[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_titleLabel];
    [v69 setAttributedText_];
    v70 = [v2 contentView];
    [v70 addSubview_];

    v71 = [v2 contentView];
    [v71 addSubview_];

    v72 = &v2[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo];
    swift_beginAccess();
    v73 = type metadata accessor for ShelfCellItemInfo();
    if ((*(*(v73 - 8) + 48))(v72, 1, v73))
    {
      v74 = 0;
    }

    else
    {
      v74 = v72[16];
    }

    v75 = &v2[OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout];
    *v75 = xmmword_20C189480;
    v75[16] = v74;
    sub_20BFED0E8();

    return sub_20B520158(v79, &unk_27C762300);
  }

  else
  {
    sub_20C13B454();

    v37 = v2;
    v38 = sub_20C13BB74();
    v39 = sub_20C13D1D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v90[0] = v42;
      *v40 = 138543618;
      *(v40 + 4) = v37;
      *v41 = v37;
      *(v40 + 12) = 2082;
      v92 = a1;
      v43 = sub_20B5F66D0();
      v44 = v37;
      v45 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v43);
      v47 = sub_20B51E694(v45, v46, v90);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_20B517000, v38, v39, "Attempted to configure %{public}@ with item: %{public}s", v40, 0x16u);
      sub_20B520158(v41, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x20F2F6A40](v42, -1, -1);
      MEMORY[0x20F2F6A40](v40, -1, -1);
    }

    return (*(v4 + 8))(v6, v87);
  }
}

unint64_t sub_20BFEE570()
{
  result = qword_27C771AD8;
  if (!qword_27C771AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771AD0);
    sub_20BFEE5FC();
    sub_20BFEE650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771AD8);
  }

  return result;
}

unint64_t sub_20BFEE5FC()
{
  result = qword_27C771AE0;
  if (!qword_27C771AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771AE0);
  }

  return result;
}

unint64_t sub_20BFEE650()
{
  result = qword_27C771AE8;
  if (!qword_27C771AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C771AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771AE8);
  }

  return result;
}

void sub_20BFEE6B4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_layout;
  v5 = sub_20C1380F4();
  *v4 = xmmword_20C189480;
  *(v4 + 16) = v5;
  *(v1 + OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_activatedConstraints) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_artworkView;
  sub_20C13C354();
  sub_20C13C3E4();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771AF8));
  v8 = sub_20C13C224();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v6) = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI27WorkoutPlanDetailHeaderCell_titleLabel;
  v14 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];

  [v9 setFont_];
  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  v15 = [objc_opt_self() whiteColor];
  [v9 setTextColor_];

  [v9 setLineBreakMode_];
  *(v1 + v13) = v9;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BFEE9C8()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = objc_allocWithZone(type metadata accessor for PhoneSessionHeartRateDiscoveryView());

  v6 = sub_20B965698(v5);

  return v6;
}

char *sub_20BFEEAF8()
{
  v0 = objc_allocWithZone(type metadata accessor for PhoneSessionWatchDiscoveryView());

  v2 = sub_20B5E4178(v1);

  return v2;
}

uint64_t sub_20BFEEB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C137254();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v14 + 16))(v13, a2, v11);
  sub_20B51CC64(a5, v19);
  objc_allocWithZone(type metadata accessor for TabletSessionSummaryViewController());

  swift_unknownObjectRetain();
  sub_20B7A0BD4(a1, v13, a3, a4, v19);
  v16 = v15;

  swift_unknownObjectRelease();
  return v16;
}

void sub_20BFEEC94(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(type metadata accessor for SessionVideoPlayerViewController());
  swift_unknownObjectRetain();

  v9 = sub_20BE8FB54(a1, a2, a3);
  v10 = sub_20BE95A84(*MEMORY[0x277CE5DD0]);

  *a4 = v10;
  a4[1] = &off_2822F15A0;
  a4[2] = &off_2822F1590;
  a4[3] = &off_2822F1578;
  a4[4] = &off_2822F15B0;
}

char *sub_20BFEED50(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C137254();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C133B84();
  result = 0;
  if ((v7 & 1) == 0)
  {
    (*(v4 + 16))(v6, a2, v3);
    v9 = objc_allocWithZone(type metadata accessor for SessionOverlayView());

    v11 = sub_20C130A00(v10, v6);

    return v11;
  }

  return result;
}

uint64_t sub_20BFEEE88()
{
  v0 = sub_20C1344B4();
  v2 = v1;
  v4 = v3 & 1;
  sub_20B590B28();
  sub_20B590B7C();
  v5 = sub_20C133BF4();
  sub_20B583F4C(v0, v2, v4);
  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for MeditationCountdownView());
    v7 = sub_20B9DBECC(160.0, 8.0, 54.0, 54.0);
    v8 = &unk_27C762FD8;
    v9 = type metadata accessor for MeditationCountdownView;
  }

  else
  {
    v10 = sub_20C1344B4();
    v12 = v11;
    v14 = v13;
    sub_20C133B84();
    sub_20B583F4C(v10, v12, v14 & 1);
    v15 = objc_allocWithZone(type metadata accessor for WorkoutCountdownView());
    sub_20B78B908(255.0);
    v7 = v16;
    v8 = &unk_27C762FD0;
    v9 = type metadata accessor for WorkoutCountdownView;
  }

  sub_20B6618A4(v8, v9);
  return v7;
}

id sub_20BFEF030(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_20C1343D4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC8);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    v10 = &qword_27C762FB8;
    v11 = v5;
LABEL_5:
    sub_20B520158(v11, v10);
    return 0;
  }

  sub_20C133BD4();
  sub_20B520158(v5, &qword_27C762FC8);
  v12 = sub_20C135544();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    v10 = &qword_27C762FC0;
    v11 = v8;
    goto LABEL_5;
  }

  v15 = sub_20BF81694(a2);
  (*(v13 + 8))(v8, v12);
  return v15;
}

id sub_20BFEF244()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = sub_20BFEFCEC();
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_20BFEF29C(void *a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = *(v2 + 104);
  if (v12)
  {
    v13 = *(v2 + 152);
    if (v13)
    {
      v14 = *(v2 + 48);
      if (v14)
      {
        v31 = *(v2 + 120);
        if (v31)
        {
          if (*(v2 + 136) == 1 && (v15 = *(v2 + 16)) != 0 && (v30 = *(v2 + 144)) != 0)
          {
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v16 = [a1 blitCommandEncoder];
            if (v16)
            {
              v29 = v16;
              [v16 copyFromTexture:v15 toTexture:v30];
              *(v2 + 136) = 0;
              [v29 endEncoding];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v21 = v31;
            if (!*(v2 + 160))
            {
              goto LABEL_19;
            }
          }

          else
          {
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v21 = v31;
            swift_unknownObjectRetain();
            if (!*(v2 + 160))
            {
              goto LABEL_19;
            }
          }

          v22 = [a1 renderCommandEncoderWithDescriptor_];
          if (v22)
          {
            v23 = v22;
            v24 = sub_20C13C914();
            [v23 setLabel_];

            [v23 setRenderPipelineState_];
            [v23 setVertexBuffer:v21 offset:0 atIndex:0];
            [v23 setVertexBytes:a2 length:384 atIndex:1];
            [v23 setFragmentTexture:v14 atIndex:0];
            [v23 setFragmentTexture:*(v2 + 144) atIndex:1];
            [v23 setFragmentBytes:a2 length:384 atIndex:1];
            [v23 drawIndexedPrimitives:3 indexCount:*(*(v2 + 112) + 16) indexType:0 indexBuffer:v12 indexBufferOffset:0 instanceCount:1];
            [v23 endEncoding];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return swift_unknownObjectRelease();
          }

LABEL_19:
          sub_20C13B4F4();
          v25 = sub_20C13BB74();
          v26 = sub_20C13D1D4();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_20B517000, v25, v26, "[TextureBlender] Failed to create command encoder", v27, 2u);
            MEMORY[0x20F2F6A40](v27, -1, -1);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return (*(v6 + 8))(v11, v5);
        }
      }
    }
  }

  sub_20C13B4F4();
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20B517000, v17, v18, "[TextureBlender] Failed to encode rotating artwork. Required value missing", v19, 2u);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_20BFEF76C(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 40);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 24) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode_];
  [v5 setUsage_];
  *(v1 + 16) = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  *(v1 + 144) = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  v6 = sub_20BFEFBA8();

  v7 = *(v1 + 160);
  *(v1 + 160) = v6;
}

id sub_20BFEF904()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  v6 = sub_20BFEF244();
  v24 = 0;
  v7 = [v5 newRenderPipelineStateWithDescriptor:v6 error:&v24];

  v8 = v24;
  if (!v7)
  {
    v9 = v8;
    v10 = sub_20C132A44();

    swift_willThrow();
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v11 = sub_20B78B2B4();
    swift_dynamicCast();
    v12 = v23[1];
    sub_20C13B4F4();
    v13 = v12;
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315138;
      v23[0] = v13;
      v18 = sub_20B78B300();
      v19 = MEMORY[0x20F2F5860](v11, v18);
      v21 = sub_20B51E694(v19, v20, v25);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_20B517000, v14, v15, "[TextureBlender] Failed to create pipeline state with error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);

    return 0;
  }

  return v7;
}

uint64_t sub_20BFEFBA8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = v3;
    [v5 setTexture_];
    [v5 setLoadAction_];
    [v5 setStoreAction_];

    [v5 setClearColor_];
    return v1;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BFEFCEC()
{
  v1 = sub_20B633A38(0x797469746E656469, 0xEF7865747265765FLL, 0xD000000000000010, 0x800000020C1BA480, 0x2065727574786554, 0xEF7265646E656C42, *(v0 + 96));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    [v3 setPixelFormat_];
    if (qword_27C760A40 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor_];

    return v1;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BFEFE74()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 88);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_20BFEFF0C()
{
  sub_20BFEFE74();

  return swift_deallocClassInstance();
}

void *sub_20BFEFF64(void *result)
{
  *(v1 + 16) = xmmword_20C189580;
  *(v1 + 32) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v2 = &unk_28228DEB0;
  *(v1 + 112) = &unk_28228DEB0;
  if (qword_27C760A68 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
    v2 = *(v1 + 112);
  }

  *(v1 + 128) = qword_27C79BEF0;
  *(v1 + 136) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 144) = 0;
  v3 = result[1];
  v5 = result[3];
  v4 = result[4];
  v6 = *(result + 1);
  *(v1 + 64) = *result;
  *(v1 + 80) = v6;
  *(v1 + 96) = v4;
  v7 = v2[2];
  if (v7 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = 2 * v7;
    swift_unknownObjectRetain_n();

    swift_unknownObjectRetain();
    v9 = v5;
    swift_unknownObjectRetain();
    result = [v3 newBufferWithBytes:v2 + 4 length:v8 options:0];
    *(v1 + 104) = result;
    v10 = *(v1 + 128);
    v11 = *(v10 + 16);
    if (!(v11 >> 57))
    {
      *(v1 + 120) = [v3 newBufferWithBytes:v10 + 32 length:v11 << 6 options:0];
      *(v1 + 152) = sub_20BFEF904();
      swift_unknownObjectRelease();
      sub_20BFEF76C(v3);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

id sub_20BFF00E0(uint64_t a1)
{
  if (a1 <= 56)
  {
    if (a1 > 36)
    {
      if (a1 != 37 && a1 != 52)
      {
        goto LABEL_22;
      }
    }

    else if (a1 != 13 && a1 != 35)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a1 > 64)
    {
      if (a1 == 65 || a1 == 66 || a1 == 72)
      {
        goto LABEL_23;
      }

LABEL_22:
      a1 = 37;
      goto LABEL_23;
    }

    if (a1 != 57 && a1 != 63)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v1 = sub_20B9C7D00(a1);
  v2 = [v1 imageWithRenderingMode_];

  return v2;
}

uint64_t sub_20BFF01E8(uint64_t a1)
{
  v3 = sub_20C13C554();
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = (&v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B10);
  v5 = MEMORY[0x28223BE20](v107);
  v106 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v105 = &v86 - v7;
  v8 = sub_20C1344C4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v86 - v15;
  v17 = sub_20C135AE4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail;
  swift_beginAccess();
  v95 = v1;
  sub_20BFF37F8(v16, v1 + v19);
  swift_endAccess();
  v94 = a1;
  sub_20C135AA4();
  v20 = sub_20C134364();
  v21 = *(v9 + 8);
  v92 = v9 + 8;
  v93 = v8;
  v90 = v21;
  v21(v13, v8);
  v22 = *(v20 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v23 = sub_20BEDE9C4(*(v20 + 16), 0);
    v24 = *(sub_20C133474() - 8);
    v109 = sub_20BEE2160(v123, (v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80))), v22, v20);
    v25 = v124;

    sub_20B583EDC();
    if (v109 != v22)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  *&v123[0] = v23;
  sub_20BC092A0(v123);

  v25 = *&v123[0];
  v26 = sub_20C138104();
  v104 = v26 == sub_20C138104();
  v27 = v25[2];
  if (v27)
  {
    *&v123[0] = MEMORY[0x277D84F90];
    sub_20BB5D8EC(0, v27, 0);
    v28 = *&v123[0];
    v103 = v25[2];
    v29 = sub_20C133474();
    v30 = 0;
    v31 = *(v29 - 8);
    v98 = v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v99 = v31;
    v100 = v29;
    v96 = v31 + 32;
    v97 = v31 + 16;
    v101 = v27;
    v102 = v25;
    v32 = v106;
    while (v103 != v30)
    {
      if (v30 >= v25[2])
      {
        goto LABEL_22;
      }

      v33 = v30 + 1;
      v109 = v28;
      v34 = v107;
      v35 = *(v107 + 48);
      v36 = v99;
      v37 = v105;
      v38 = v100;
      (*(v99 + 16))(&v105[v35], &v98[*(v99 + 72) * v30], v100);
      *v32 = v30;
      (*(v36 + 32))(&v32[*(v34 + 48)], &v37[v35], v38);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A80);
      v108 = swift_allocBox();
      v41 = v40;
      v42 = v40 + v39[20];
      v43 = v39[24];
      v44 = v39[28];
      *v40 = sub_20C133424();
      v41[1] = v45;
      v41[2] = sub_20C133434();
      v41[3] = v46;
      sub_20C133444();
      *v42 = sub_20C133404();
      *(v42 + 1) = v47;
      v42[16] = v48 & 1;
      *(v41 + v43) = v33;
      v28 = v109;
      *(v41 + v44) = v104;
      sub_20B520158(v32, &qword_27C771B10);
      *&v123[0] = v28;
      v50 = *(v28 + 16);
      v49 = *(v28 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_20BB5D8EC((v49 > 1), v50 + 1, 1);
        v28 = *&v123[0];
      }

      v51 = v108 | 0x5000000000000001;
      *(v28 + 16) = v50 + 1;
      *(v28 + 8 * v50 + 32) = v51;
      v30 = v33;
      v52 = v101 == v33;
      v25 = v102;
      if (v52)
      {

        v109 = v28;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v109 = MEMORY[0x277D84F90];
LABEL_13:
  v53 = v95;
  __swift_project_boxed_opaque_existential_1((v95 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_networkEvaluator), *(v95 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_networkEvaluator + 24));
  sub_20C13A884();
  v108 = sub_20BFF0BC8(v94);
  v55 = v54;
  __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer), *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer + 24));
  v56 = sub_20C138D34();
  v58 = v57;
  *&v123[0] = 0;
  *(&v123[0] + 1) = 0xE000000000000000;
  sub_20C13DC94();

  *&v123[0] = 0x5F74756F6B726F77;
  *(&v123[0] + 1) = 0xE800000000000000;
  v59 = v91;
  sub_20C135AA4();
  v60 = sub_20C134324();
  v62 = v61;
  v90(v59, v93);
  MEMORY[0x20F2F4230](v60, v62);

  MEMORY[0x20F2F4230](0x7254636973756D5FLL, 0xEC000000736B6361);
  *&v113 = v108;
  *(&v113 + 1) = v55;
  LOBYTE(v114) = 1;
  *(&v114 + 1) = *v112;
  DWORD1(v114) = *&v112[3];
  *(&v114 + 1) = 0;
  *&v115 = 0;
  WORD4(v115) = 128;
  *(&v115 + 10) = *&v110[7];
  HIWORD(v115) = v111;
  v116 = 0uLL;
  v117 = v123[0];
  *&v118 = v56;
  *(&v118 + 1) = v58;
  LOBYTE(v119) = 1;
  DWORD1(v119) = *&v110[3];
  *(&v119 + 1) = *v110;
  *(&v119 + 1) = v109;
  v120 = MEMORY[0x277D84F90];
  *&v121 = 0;
  *(&v121 + 1) = v56;
  *v122 = v58;
  *&v122[8] = xmmword_20C150190;
  nullsub_1(&v113);
  v63 = v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row;
  v64 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v130 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v131 = v64;
  v132 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 160);
  v65 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v126 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v127 = v65;
  v66 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v128 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v129 = v66;
  v67 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v123[0] = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v123[1] = v67;
  v68 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v124 = *(v53 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v125 = v68;
  v69 = v120;
  v70 = *v122;
  *(v63 + 128) = v121;
  *(v63 + 144) = v70;
  *(v63 + 160) = *&v122[16];
  v71 = v118;
  *(v63 + 64) = v117;
  *(v63 + 80) = v71;
  *(v63 + 96) = v119;
  *(v63 + 112) = v69;
  v72 = v114;
  *v63 = v113;
  *(v63 + 16) = v72;
  v73 = v116;
  *(v63 + 32) = v115;
  *(v63 + 48) = v73;

  sub_20B520158(v123, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v75 = sub_20B61D950(v95, result);
      if (v76)
      {
        v78 = v75;
        v79 = v76;
        v80 = v77;
        sub_20B5E2E18();
        v81 = sub_20C13D374();
        v83 = v87;
        v82 = v88;
        *v87 = v81;
        v84 = v89;
        (*(v82 + 104))(v83, *MEMORY[0x277D85200], v89);
        v85 = sub_20C13C584();
        (*(v82 + 8))(v83, v84);
        if ((v85 & 1) == 0)
        {
LABEL_24:
          __break(1u);

          __break(1u);
          return result;
        }

        sub_20B620DC0(v78, v79, v80, v95, 1, v25);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BFF0BC8(uint64_t a1)
{
  v52 = sub_20C135AE4();
  v55 = *(v52 - 8);
  v2 = MEMORY[0x28223BE20](v52);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v49 = &v49 - v5;
  v6 = sub_20C13BB84();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C1350A4();
  v20 = v19;
  if (v18 == sub_20C1350A4() && v20 == v21)
  {

LABEL_5:
    sub_20C13B534();
    v23 = v55;
    v24 = v52;
    (*(v55 + 16))(v4, a1, v52);
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v56 = v28;
      *v27 = 136446210;
      sub_20BFF37B0(&qword_27C766F20, MEMORY[0x277D51E68]);
      v29 = sub_20C13DFA4();
      v31 = v30;
      (*(v23 + 8))(v4, v24);
      v32 = sub_20B51E694(v29, v31, &v56);

      *(v27 + 4) = v32;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v4, v24);
    }

    (*(v53 + 8))(v9, v54);
    return 0;
  }

  v22 = sub_20C13DFF4();

  if (v22)
  {
    goto LABEL_5;
  }

  v34 = v51;
  sub_20C135AA4();
  sub_20C1343C4();
  (*(v15 + 8))(v17, v14);
  v35 = sub_20C132C14();
  v36 = (*(*(v35 - 8) + 48))(v13, 1, v35);
  sub_20B520158(v13, &unk_27C7617F0);
  v37 = v55;
  if (v36 != 1)
  {
    __swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer), *(v34 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer + 24));
    return sub_20C138D34();
  }

  v38 = v50;
  sub_20C13B534();
  v39 = v49;
  v40 = v52;
  (*(v37 + 16))(v49, a1, v52);
  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v56 = v44;
    *v43 = 136446210;
    sub_20BFF37B0(&qword_27C766F20, MEMORY[0x277D51E68]);
    v45 = sub_20C13DFA4();
    v47 = v46;
    (*(v37 + 8))(v39, v40);
    v48 = sub_20B51E694(v45, v47, &v56);

    *(v43 + 4) = v48;
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    MEMORY[0x20F2F6A40](v43, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v39, v40);
  }

  (*(v53 + 8))(v38, v54);
  return 0;
}

uint64_t sub_20BFF1290()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail, &qword_27C7620C8);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_networkEvaluator);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MusicTracksShelf()
{
  result = qword_27C771B00;
  if (!qword_27C771B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BFF1418()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B9B577C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BFF1508()
{
  v1 = sub_20C13BB84();
  v84 = *(v1 - 8);
  v85 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v78 = &v74 - v4;
  MEMORY[0x28223BE20](v5);
  v74 = &v74 - v6;
  v75 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v75);
  v76 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v74 - v9;
  v10 = sub_20C1344C4();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = sub_20C132C14();
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v74 - v18;
  v20 = sub_20C135AE4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail;
  swift_beginAccess();
  sub_20B52F9E8(&v0[v24], v19, &qword_27C7620C8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &qword_27C7620C8);
    v25 = v81;
    sub_20C13B534();
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20B517000, v26, v27, "Catalog workout missing when trying to play music", v28, 2u);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    return (*(v84 + 8))(v25, v85);
  }

  v81 = v0;
  (*(v21 + 32))(v23, v19, v20);
  sub_20C135AA4();
  v30 = v86;
  sub_20C1343C4();
  v31 = v80;
  v32 = *(v79 + 8);
  v32(v14, v80);
  v33 = v83;
  v34 = (*(v83 + 48))(v30, 1, v15);
  v35 = v23;
  if (v34 == 1)
  {
    sub_20B520158(v86, &unk_27C7617F0);
    v36 = v78;
    sub_20C13B534();
    v37 = sub_20C13BB74();
    v38 = sub_20C13D1D4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_20B517000, v37, v38, "Catalog item was missing playlist URL", v39, 2u);
      MEMORY[0x20F2F6A40](v39, -1, -1);
    }

    (*(v84 + 8))(v36, v85);
    return (*(v21 + 8))(v35, v20);
  }

  (*(v33 + 32))(v82, v86, v15);
  v40 = v77;
  sub_20C135AA4();
  v86 = sub_20C1343E4();
  v42 = v41;
  v32(v40, v31);
  v43 = v33;
  if (!v42)
  {
    v70 = v74;
    sub_20C13B534();
    v71 = sub_20C13BB74();
    v72 = sub_20C13D1D4();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_20B517000, v71, v72, "Catalog item was missing playlist identifier", v73, 2u);
      MEMORY[0x20F2F6A40](v73, -1, -1);
    }

    (*(v84 + 8))(v70, v85);
    (*(v43 + 8))(v82, v15);
    return (*(v21 + 8))(v35, v20);
  }

  v84 = v21;
  v85 = v23;
  v44 = sub_20C136664();
  v45 = v76;
  (*(*(v44 - 8) + 56))(v76, 1, 1, v44);
  v46 = v75;
  v47 = *(v75 + 20);
  v48 = *MEMORY[0x277D513F0];
  v49 = sub_20C134F24();
  (*(*(v49 - 8) + 104))(v45 + v47, v48, v49);
  v50 = *(v43 + 56);
  v51 = v15;
  v50(v45 + v46[6], 1, 1, v15);
  v52 = v46[8];
  v53 = *MEMORY[0x277D52428];
  v54 = sub_20C135ED4();
  v55 = *(v54 - 8);
  (*(v55 + 104))(v45 + v52, v53, v54);
  (*(v55 + 56))(v45 + v52, 0, 1, v54);
  v56 = v46[10];
  v57 = *MEMORY[0x277D51768];
  v58 = sub_20C1352E4();
  (*(*(v58 - 8) + 104))(v45 + v56, v57, v58);
  v59 = v46[11];
  v60 = sub_20C136E94();
  (*(*(v60 - 8) + 56))(v45 + v59, 1, 1, v60);
  v61 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v62 = (v45 + v46[7]);
  *v62 = v86;
  v62[1] = v42;
  v63 = (v45 + v46[9]);
  *v63 = 0;
  v63[1] = 0;
  *(v45 + v46[12]) = v61;
  v64 = v81;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA0104(v64, v45, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B68D110(v45);

  v66 = [objc_opt_self() sharedApplication];
  v67 = v82;
  v68 = sub_20C132B64();
  sub_20B6B3B84(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_20BFF37B0(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey);
  v69 = sub_20C13C744();

  [v66 openURL:v68 options:v69 completionHandler:0];

  (*(v83 + 8))(v67, v51);
  return (*(v84 + 8))(v85, v20);
}

uint64_t sub_20BFF1F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BFF1FC4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
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

uint64_t sub_20BFF2094()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row;
  sub_20B5D8060(v11);
  v2 = v11[9];
  *(v1 + 128) = v11[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v12;
  v3 = v11[5];
  *(v1 + 64) = v11[4];
  *(v1 + 80) = v3;
  v4 = v11[7];
  *(v1 + 96) = v11[6];
  *(v1 + 112) = v4;
  v5 = v11[1];
  *v1 = v11[0];
  *(v1 + 16) = v5;
  v6 = v11[3];
  *(v1 + 32) = v11[2];
  *(v1 + 48) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail;
  v8 = sub_20C135AE4();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40);
  sub_20C133AA4();
  sub_20B51C710(v10, v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_networkEvaluator);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_platform) = v10[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v10, v0 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_storefrontLocalizer);
  return v0;
}

uint64_t sub_20BFF2230(unint64_t a1)
{
  v160 = a1;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  v166 = v2;
  v167 = v3;
  MEMORY[0x28223BE20](v2);
  v161 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v158 = &v134 - v6;
  MEMORY[0x28223BE20](v7);
  v152 = &v134 - v8;
  MEMORY[0x28223BE20](v9);
  v146 = &v134 - v10;
  MEMORY[0x28223BE20](v11);
  v143 = &v134 - v12;
  v139 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v139);
  v140 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_20C132654();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_20C133474();
  v159 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v16 - 8);
  v156 = &v134 - v17;
  v155 = sub_20C132704();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v19 - 8);
  v144 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v169 = &v134 - v22;
  v162 = sub_20C1344C4();
  v165 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v142 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v157 = &v134 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v134 - v27;
  v29 = sub_20C132C14();
  v164 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v145 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v163 = &v134 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v134 - v34;
  v36 = sub_20C135AE4();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_detail;
  swift_beginAccess();
  v141 = v1;
  sub_20B52F9E8(v1 + v40, v35, &qword_27C7620C8);
  v41 = *(v37 + 48);
  v168 = v36;
  if (v41(v35, 1, v36) == 1)
  {
    sub_20B520158(v35, &qword_27C7620C8);
    v42 = v161;
    sub_20C13B534();
    v43 = sub_20C13BB74();
    v44 = sub_20C13D1D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_20B517000, v43, v44, "Catalog workout missing when trying to play music", v45, 2u);
      MEMORY[0x20F2F6A40](v45, -1, -1);
    }

    return (*(v167 + 8))(v42, v166);
  }

  (*(v37 + 32))(v39, v35, v168);
  sub_20C135AA4();
  v47 = v169;
  sub_20C1343C4();
  v49 = v165 + 8;
  v48 = *(v165 + 8);
  v50 = v162;
  v48(v28, v162);
  v51 = v164;
  v52 = *(v164 + 48);
  if (v52(v47, 1, v29) == 1)
  {
    sub_20B520158(v169, &unk_27C7617F0);
    v53 = v158;
    sub_20C13B534();
    v54 = sub_20C13BB74();
    v55 = sub_20C13D1D4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_20B517000, v54, v55, "Catalog workout was missing playlist URL", v56, 2u);
      MEMORY[0x20F2F6A40](v56, -1, -1);
    }

    (*(v167 + 8))(v53, v166);
    return (*(v37 + 8))(v39, v168);
  }

  v57 = v29;
  v58 = v49;
  v161 = v52;
  v59 = *(v51 + 32);
  v60 = v169;
  v138 = v57;
  v169 = v51 + 32;
  v158 = v59;
  (v59)(v163, v60);
  v61 = v157;
  v137 = v39;
  sub_20C135AA4();
  v62 = sub_20C134364();
  v48(v61, v50);
  v63 = *(v62 + 16);
  v64 = MEMORY[0x277D84F90];
  v165 = v58;
  v135 = v48;
  if (v63)
  {
    v136 = v37;
    v64 = sub_20BEDE9C4(v63, 0);
    v65 = sub_20BEE2160(&v170, (v64 + ((*(v159 + 80) + 32) & ~*(v159 + 80))), v63, v62);

    sub_20B583EDC();
    if (v65 != v63)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v37 = v136;
  }

  v170 = v64;
  sub_20BC092A0(&v170);

  v66 = v170;
  v67 = v160;
  v68 = v137;
  v69 = v138;
  v70 = v164;
  v71 = v156;
  if (*(v170 + 16) <= v160)
  {

    v73 = v152;
    sub_20C13B534();
    v74 = sub_20C13BB74();
    v82 = sub_20C13D1D4();
    if (os_log_type_enabled(v74, v82))
    {
      v83 = swift_slowAlloc();
      v84 = v67;
      v76 = v83;
      *v83 = 134349056;
      *(v83 + 4) = v84;
      v77 = "No track at index %{public}ld";
      v78 = v82;
      v79 = v74;
      v80 = v83;
      v81 = 12;
      goto LABEL_18;
    }

LABEL_19:

    (*(v167 + 8))(v73, v166);
    (*(v70 + 8))(v163, v69);
    return (*(v37 + 8))(v68, v168);
  }

  sub_20C132684();
  v63 = v154;
  v72 = v155;
  if ((*(v154 + 48))(v71, 1, v155) == 1)
  {

    sub_20B520158(v71, &qword_27C7665D8);
    v73 = v146;
    sub_20C13B534();
    v74 = sub_20C13BB74();
    v75 = sub_20C13D1D4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = "Failed to build components from playlist URL";
      v78 = v75;
      v79 = v74;
      v80 = v76;
      v81 = 2;
LABEL_18:
      _os_log_impl(&dword_20B517000, v79, v78, v77, v80, v81);
      MEMORY[0x20F2F6A40](v76, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  (v63)[4](v153, v71, v72);
  if ((v160 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v136 = v37;
  if (*(v66 + 16) <= v160)
  {
LABEL_37:
    __break(1u);

    __break(1u);
    return result;
  }

  v85 = v70;
  (*(v159 + 16))(v147, v66 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v160, v149);

  sub_20C1333F4();
  v86 = v148;
  sub_20C132624();

  v87 = sub_20C132664();
  if (v87)
  {
    v88 = v87;
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EB0);
  v89 = v150;
  v90 = (*(v150 + 80) + 32) & ~*(v150 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_20C14F980;
  (*(v89 + 16))(v91 + v90, v86, v151);
  v170 = v88;
  sub_20B8D9414(v91);
  sub_20C132674();
  v92 = v144;
  sub_20C132694();
  v93 = v138;
  v94 = (v161)(v92, 1, v138);
  v95 = v163;
  if (v94 == 1)
  {
    sub_20B520158(v92, &unk_27C7617F0);
    v96 = v143;
    sub_20C13B534();
    v97 = sub_20C13BB74();
    v98 = sub_20C13D1D4();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v136;
    if (v99)
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_20B517000, v97, v98, "Failed to build track URL from components", v101, 2u);
      MEMORY[0x20F2F6A40](v101, -1, -1);
    }

    (*(v167 + 8))(v96, v166);
    (*(v150 + 8))(v148, v151);
    (*(v159 + 8))(v147, v149);
    (*(v154 + 8))(v153, v155);
    (*(v85 + 8))(v95, v93);
    return (*(v100 + 8))(v137, v168);
  }

  else
  {
    (v158)(v145, v92, v93);
    v102 = v142;
    v103 = v137;
    sub_20C135AA4();
    v104 = sub_20C1343E4();
    v106 = v105;
    v135(v102, v162);
    v107 = v136;
    if (v106)
    {
      v108 = sub_20C136664();
      v109 = v140;
      (*(*(v108 - 8) + 56))(v140, 1, 1, v108);
      v110 = v139;
      v111 = *(v139 + 20);
      v112 = *MEMORY[0x277D513F0];
      v113 = sub_20C134F24();
      (*(*(v113 - 8) + 104))(v109 + v111, v112, v113);
      (*(v85 + 56))(v109 + v110[6], 1, 1, v93);
      v114 = v110[8];
      v115 = *MEMORY[0x277D52428];
      v116 = sub_20C135ED4();
      v117 = *(v116 - 8);
      (*(v117 + 104))(v109 + v114, v115, v116);
      (*(v117 + 56))(v109 + v114, 0, 1, v116);
      v118 = v110[10];
      v119 = *MEMORY[0x277D51768];
      v120 = sub_20C1352E4();
      (*(*(v120 - 8) + 104))(v109 + v118, v119, v120);
      v121 = v110[11];
      v122 = sub_20C136E94();
      (*(*(v122 - 8) + 56))(v109 + v121, 1, 1, v122);
      v123 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v124 = (v109 + v110[7]);
      *v124 = v104;
      v124[1] = v106;
      v125 = (v109 + v110[9]);
      *v125 = 0;
      v125[1] = 0;
      *(v109 + v110[12]) = v123;
      v126 = v141;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_20BFA0104(v126, v109, Strong);
        swift_unknownObjectRelease();
      }

      sub_20B68D110(v109);

      v107 = v136;
      v103 = v137;
      v95 = v163;
      v93 = v138;
    }

    v128 = [objc_opt_self() sharedApplication];
    v129 = v145;
    v130 = sub_20C132B64();
    sub_20B6B3B84(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    v131 = v103;
    sub_20BFF37B0(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey);
    v132 = sub_20C13C744();

    [v128 openURL:v130 options:v132 completionHandler:0];

    v133 = *(v85 + 8);
    v133(v129, v93);
    (*(v150 + 8))(v148, v151);
    (*(v159 + 8))(v147, v149);
    (*(v154 + 8))(v153, v155);
    v133(v95, v93);
    return (*(v107 + 8))(v131, v168);
  }
}

uint64_t sub_20BFF3578(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v56 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v57 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v53 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v54 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v55 = v4;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v49[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v49[1] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v51 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 48);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 80);
  v46 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 64);
  v47 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 16);
  v42 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row);
  v43 = v14;
  v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 32);
  v45 = v12;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 144);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 112);
  v39 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 128);
  v40 = v15;
  v38 = v16;
  v59[0] = v49[0];
  v59[1] = v10;
  v59[4] = v52;
  v59[5] = v9;
  v58 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 160);
  v48 = *(v1 + OBJC_IVAR____TtC9SeymourUI16MusicTracksShelf_row + 96);
  v17 = *(&v54 + 1);
  v41 = *(v3 + 160);
  v18 = *(v3 + 96);
  v59[2] = v50;
  v59[3] = v8;
  v19 = *(v3 + 144);
  v65 = *(v3 + 160);
  v63 = v56;
  v64 = v19;
  v62 = v5;
  v60 = v18;
  v61 = *(&v54 + 1);
  if (sub_20B5EAF8C(v59) == 1)
  {
    v30 = v46;
    v31 = v47;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v32 = v48;
    v33 = *(&v54 + 1);
    v37 = v41;
    v35 = v39;
    v36 = v40;
    v34 = v38;
    sub_20B52F9E8(v49, v25, &qword_27C762340);
    sub_20B520158(&v26, &qword_27C762340);
LABEL_6:
    v23 = 1;
    return v23 & 1;
  }

  v30 = v46;
  v31 = v47;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v32 = v48;
  v33 = *(&v54 + 1);
  v37 = v41;
  v35 = v39;
  v36 = v40;
  v34 = v38;
  sub_20B52F9E8(v49, v25, &qword_27C762340);

  sub_20B520158(&v26, &qword_27C762340);
  v20 = *(v17 + 16);
  if (!v20)
  {

    goto LABEL_6;
  }

  v21 = *(v17 + 8 * v20 + 24);

  v22 = sub_20B969AA8(a1, v21);

  v23 = v22 ^ 1;
  return v23 & 1;
}

uint64_t sub_20BFF37B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BFF37F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BFF386C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x277D84F90];
  sub_20B526D44(0, v2, 0);
  v3 = v28;
  v27 = a1 + 56;
  result = sub_20C13DAA4();
  v6 = result;
  v7 = 0;
  v25 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = a2(*(*(a1 + 48) + v6));
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_20B526D44((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v28 + 16) = v14 + 1;
    v15 = v28 + 16 * v14;
    *(v15 + 32) = result;
    *(v15 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v27 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_20B526EA4(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20BFF3A9C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v30 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v30[1] = v3;
    v43 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v7, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = sub_20C13DAA4();
    v9 = result;
    v10 = 0;
    v34 = v5 + 8;
    v35 = v5 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      v16 = (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v9, v37);
      v40 = v38(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v42;
      v43 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_20B526D44((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v23 = *(v41 + 8 * v13);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v32;
        v5 = v33;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v12 = v32;
        v27 = (v31 + 8 * v13);
        v5 = v33;
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_20B526EA4(v9, v39, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v9, v39, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BFF3DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v116 = v5;
  v117 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v95 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v95 - v10;
  v12 = sub_20C136C64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v113 = v14;
  v114 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v95 - v16;
  v18 = *(v2 + 80);
  v115 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 56), v18);
  sub_20C13B174();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &qword_27C768690);
    v19 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D51B88], v19);
    *(swift_allocObject() + 16) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    return sub_20C137CA4();
  }

  else
  {
    v112 = v8;
    v98 = v4;
    v99 = v3;
    v97 = v13;
    v23 = *(v13 + 32);
    v110 = v17;
    v111 = v12;
    v95[1] = v13 + 32;
    v95[0] = v23;
    v23(v17, v11, v12);
    v24 = MEMORY[0x277D84FA0];
    v121 = MEMORY[0x277D84FA0];
    v122 = MEMORY[0x277D84FA0];
    v25 = swift_allocObject();
    v96 = v25;
    *(v25 + 16) = v24;
    v104 = v25 + 16;
    v26 = swift_allocObject();
    v109 = v26;
    *(v26 + 16) = v24;
    v102 = v26 + 16;
    v27 = swift_allocObject();
    v108 = v27;
    *(v27 + 16) = v24;
    v103 = v27 + 16;
    v28 = swift_allocObject();
    v107 = v28;
    *(v28 + 16) = v24;
    v101 = v28 + 16;
    v106 = swift_allocObject();
    *(v106 + 16) = v24;
    v29 = swift_allocObject();
    v105 = v29;
    *(v29 + 16) = v24;
    v100 = v29 + 16;
    v30 = v118;
    result = sub_20C134244();
    v31 = result;
    v32 = 0;
    v33 = result + 56;
    v34 = 1 << *(result + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(result + 56);
    v37 = (v34 + 63) >> 6;
    while (v36)
    {
      v43 = v32;
LABEL_13:
      v44 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v45 = *(v31 + 48) + 24 * (v44 | (v43 << 6));
      v46 = *v45;
      if (*(v45 + 16) > 1u)
      {
        if (*(v45 + 16) == 2)
        {
          v38 = sub_20C135984();
          v40 = v39;
          v41 = v38;
          v42 = v40;
        }

        else
        {
          v50 = v30;
          v51 = *(v45 + 8);

          v41 = v46;
          v42 = v51;
          v30 = v50;
        }
      }

      else
      {
        if (*(v45 + 16))
        {
          v48 = sub_20C134B94();
        }

        else
        {
          v48 = sub_20C134124();
        }

        v49 = v47;
        v41 = v48;
        v42 = v49;
      }

      sub_20B527618(&v120, v41, v42);

      v32 = v43;
    }

    while (1)
    {
      v43 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v43 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v43);
      ++v32;
      if (v36)
      {
        goto LABEL_13;
      }
    }

    result = sub_20C134234();
    v52 = result;
    v53 = 0;
    v54 = 1 << *(result + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = result + 56;
    v57 = v55 & *(result + 56);
    v58 = (v54 + 63) >> 6;
    while (v57)
    {
      v61 = v53;
LABEL_30:
      v62 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v63 = *(v52 + 48) + 24 * (v62 | (v61 << 6));
      v64 = *v63;
      if (*(v63 + 16) > 1u)
      {
        if (*(v63 + 16) == 2)
        {
          v68 = sub_20C135984();
          v70 = v69;
          v66 = v68;
          v67 = v70;
        }

        else
        {
          v71 = *(v63 + 8);

          v66 = v64;
          v67 = v71;
        }
      }

      else
      {
        if (*(v63 + 16))
        {
          v60 = sub_20C134B94();
        }

        else
        {
          v60 = sub_20C134124();
        }

        v65 = v59;
        v66 = v60;
        v67 = v65;
      }

      sub_20B527618(&v120, v66, v67);

      v53 = v61;
    }

    while (1)
    {
      v61 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v61 >= v58)
      {

        v72 = v122;
        v73 = *(v122 + 16);
        if (v73)
        {
          v74 = v98;
          v75 = v112;
          v76 = v110;
        }

        else
        {
          v76 = v110;
          v77 = sub_20C136C44();
          v78 = sub_20BFF3A9C(v77, MEMORY[0x277D53BA0], MEMORY[0x277D53B80]);

          v72 = sub_20B527580(v78);

          v73 = *(v72 + 16);
          v74 = v98;
          v75 = v112;
        }

        if (*(v121 + 16) <= v73 >> 3)
        {
          v120 = v72;
          sub_20B6CEEBC(v121);
        }

        else
        {
          sub_20B6D3388(v121, v72);
        }

        __swift_project_boxed_opaque_existential_1((v115 + 96), *(v115 + 120));
        sub_20C139F64();

        v79 = v97;
        v80 = v114;
        v81 = v111;
        (*(v97 + 16))(v114, v76, v111);
        v82 = (*(v79 + 80) + 48) & ~*(v79 + 80);
        v83 = (v113 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        v85 = v107;
        v84[2] = v108;
        v84[3] = v85;
        v86 = v109;
        v84[4] = v96;
        v84[5] = v86;
        (v95[0])(v84 + v82, v80, v81);
        v87 = v105;
        *(v84 + v83) = v106;
        *(v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8)) = v87;
        v88 = swift_allocObject();
        *(v88 + 16) = sub_20C000E1C;
        *(v88 + 24) = v84;
        v89 = v117;
        v90 = v99;
        (*(v74 + 16))(v117, v75, v99);
        v91 = (*(v74 + 80) + 16) & ~*(v74 + 80);
        v92 = (v116 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
        v93 = swift_allocObject();
        (*(v74 + 32))(v93 + v91, v89, v90);
        v94 = (v93 + v92);
        *v94 = sub_20C000ED8;
        v94[1] = v88;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
        sub_20C137C94();
        (*(v74 + 8))(v112, v90);
        (*(v79 + 8))(v110, v111);
      }

      v57 = *(v56 + 8 * v61);
      ++v53;
      if (v57)
      {
        goto LABEL_30;
      }
    }

LABEL_45:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BFF482C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v14 = *a1;
  swift_beginAccess();
  v15 = *(*(a2 + 16) + 16);

  if (v15)
  {
    v14 = sub_20BFF9AEC(v14, (a2 + 16));
  }

  swift_beginAccess();
  if (*(*(a3 + 16) + 16))
  {
    v14 = sub_20BFFA028(v14, (a3 + 16));
  }

  swift_beginAccess();
  if (*(*(a4 + 16) + 16))
  {
    v14 = sub_20BFFA55C(v14, (a4 + 16));
  }

  swift_beginAccess();
  if (*(*(a5 + 16) + 16))
  {
    v14 = sub_20BFFAA98(v14, (a5 + 16));
  }

  v16 = sub_20BFF3A9C(v14, MEMORY[0x277D52828], MEMORY[0x277D527A8]);

  v17 = sub_20B527580(v16);

  v18 = sub_20C136C44();
  v19 = sub_20BFFEC64(v18, v17);

  swift_beginAccess();
  if (*(*(a6 + 16) + 16))
  {
    v19 = sub_20BFF907C(v19, (a6 + 16));
  }

  result = swift_beginAccess();
  if (*(*(a7 + 16) + 16))
  {
    result = sub_20BFF95B8(v19, (a7 + 16));
    v19 = result;
  }

  *a8 = v19;
  return result;
}

uint64_t sub_20BFF4A74@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643D0);
  v77 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v69 - v10;
  v12 = sub_20C136C64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 80);
  v75 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 56), v16);
  sub_20C13B174();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &qword_27C768690);
    v17 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D51B88], v17);
    *(swift_allocObject() + 16) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
    return sub_20C137CA4();
  }

  else
  {
    v70 = v13;
    v71 = v5;
    v73 = v8;
    v74 = v3;
    v21 = *(v13 + 32);
    v72 = v12;
    v21(v15, v11, v12);
    v83 = MEMORY[0x277D84FA0];
    v84 = MEMORY[0x277D84FA0];
    v81 = MEMORY[0x277D84FA0];
    v82 = MEMORY[0x277D84FA0];
    v22 = v78;
    result = sub_20C1345B4();
    v23 = result;
    v24 = 0;
    v25 = 1 << *(result + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = result + 56;
    v28 = v26 & *(result + 56);
    v29 = (v25 + 63) >> 6;
    if (v28)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_9:
      v30 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v30 >= v29)
      {
        break;
      }

      v28 = *(v27 + 8 * v30);
      ++v24;
      if (v28)
      {
        while (1)
        {
          v31 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v32 = *(v23 + 48) + 24 * (v31 | (v30 << 6));
          v33 = *v32;
          if (*(v32 + 16))
          {
            v34 = v22;
            v35 = *(v32 + 8);

            v36 = v35;
            v22 = v34;
            sub_20B527618(&v80, v33, v36);

            v24 = v30;
            if (!v28)
            {
              goto LABEL_9;
            }
          }

          else
          {
            result = sub_20B6FFB80(&v80, *v32);
            v24 = v30;
            if (!v28)
            {
              goto LABEL_9;
            }
          }

LABEL_8:
          v30 = v24;
        }
      }
    }

    v78 = v15;

    result = sub_20C1345A4();
    v37 = result;
    v38 = 0;
    v39 = 1 << *(result + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = result + 56;
    v42 = v40 & *(result + 56);
    v43 = (v39 + 63) >> 6;
    if (v42)
    {
      goto LABEL_20;
    }

LABEL_21:
    while (1)
    {
      v44 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v44 >= v43)
      {

        v49 = v84;
        v50 = *(v84 + 16);
        if (v50)
        {

          v51 = v49;
        }

        else
        {
          v52 = sub_20C136C54();
          v53 = sub_20BFF3A9C(v52, MEMORY[0x277D53C88], MEMORY[0x277D53C68]);

          v51 = sub_20B527580(v53);

          v50 = *(v51 + 16);
        }

        v55 = v73;
        v54 = v74;
        v56 = v77;
        v57 = v71;
        if (*(v83 + 16) <= v50 >> 3)
        {
          v80 = v51;
          sub_20B6CEEBC(v83);
          v58 = v80;
        }

        else
        {
          v58 = sub_20B6D3388(v83, v51);
        }

        v59 = v78;
        v60 = sub_20C136C54();
        v61 = sub_20BFFE0E8(v60, v58);

        v62 = v75;

        v63 = sub_20BFFCC34(v61, &v82, &v81, v62);

        v80 = v63;
        sub_20B5E2E18();
        v64 = sub_20C13D374();
        sub_20C13A7C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B40);
        sub_20BFFFB7C();
        sub_20C137C64();

        (*(v56 + 16))(v57, v55, v54);
        v65 = (*(v56 + 80) + 16) & ~*(v56 + 80);
        v66 = (v76 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        v67 = swift_allocObject();
        (*(v56 + 32))(v67 + v65, v57, v54);
        v68 = (v67 + v66);
        *v68 = sub_20BFF6E14;
        v68[1] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
        sub_20C137C94();
        (*(v56 + 8))(v55, v54);
        (*(v70 + 8))(v59, v72);
      }

      v42 = *(v41 + 8 * v44);
      ++v38;
      if (v42)
      {
        while (1)
        {
          v45 = __clz(__rbit64(v42));
          v42 &= v42 - 1;
          v46 = *(v37 + 48) + 24 * (v45 | (v44 << 6));
          v47 = *v46;
          if (*(v46 + 16))
          {
            v48 = *(v46 + 8);

            sub_20B527618(&v80, v47, v48);

            v38 = v44;
            if (!v42)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_20B6FFB80(&v80, *v46);
            v38 = v44;
            if (!v42)
            {
              goto LABEL_21;
            }
          }

LABEL_20:
          v44 = v38;
        }
      }
    }

LABEL_35:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BFF525C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690);
    v8 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B88], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_20C136C44();
    *(swift_allocObject() + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20BFF5544(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690);
    v10 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D51B88], v10);
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    return sub_20C137CA4();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = sub_20C136C44();

    v15 = sub_20BFFC758(v14, a1);

    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    sub_20C137CA4();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BFF5860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120);
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = v4;
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_20C136C64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  sub_20C13B174();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &qword_27C768690);
    v17 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D51B88], v17);
    *(swift_allocObject() + 16) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    return sub_20C137CA4();
  }

  else
  {
    v35 = v3;
    v34 = *(v11 + 32);
    v37 = v16;
    v34(v16, v9, v10);
    v21 = sub_20C136C44();
    v22 = sub_20BFF3A9C(v21, MEMORY[0x277D53BA0], MEMORY[0x277D53B80]);

    v36 = sub_20BFF386C(v36, MEMORY[0x277D50DF8]);
    __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
    sub_20B527580(v22);

    v23 = v40;
    sub_20C139F64();

    (*(v11 + 16))(v13, v37, v10);
    v24 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v36;
    v34((v25 + v24), v13, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20C000F48;
    *(v26 + 24) = v25;
    v27 = v41;
    v28 = v39;
    v29 = v35;
    (*(v41 + 16))(v39, v23, v35);
    v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v31 = (v38 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v30, v28, v29);
    v33 = (v32 + v31);
    *v33 = sub_20C001098;
    v33[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    sub_20C137C94();
    (*(v27 + 8))(v23, v29);
    return (*(v11 + 8))(v37, v10);
  }
}

uint64_t sub_20BFF5E04@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{

  v5 = sub_20BFFE844(v4, a1);

  v6 = sub_20BFF3A9C(v5, MEMORY[0x277D52828], MEMORY[0x277D527A8]);

  v7 = sub_20B527580(v6);

  v8 = sub_20C136C44();
  v9 = sub_20BFFEC64(v8, v7);

  *a2 = v9;
  return result;
}

uint64_t sub_20BFF5EE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690);
    v10 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D51B88], v10);
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    return sub_20C137CA4();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = sub_20C136C44();

    v15 = sub_20BFFDBBC(v14, a1);

    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    sub_20C137CA4();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BFF6204@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v44 = a3;
  v45 = a6;
  v39 = a2;
  v40 = a1;
  v43 = sub_20C13B0C4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B20);
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_20C135174();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
  sub_20C13B184();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &unk_27C76BC00);
    v21 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D51B88], v21);
    *(swift_allocObject() + 16) = v22;
    return sub_20C137CA4();
  }

  else
  {
    v25 = *(v15 + 32);
    v35 = v20;
    v25(v20, v13, v14);
    (*(v15 + 16))(v17, v20, v14);
    v38 = v9;
    v26 = v40;
    v46 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
    sub_20BFF8F44();
    sub_20BFF8FC8();
    v27 = v36;
    sub_20C137844();
    v28 = v6[10];
    v37 = v6[11];
    __swift_project_boxed_opaque_existential_1(v6 + 7, v28);
    *v8 = v26;
    v29 = *MEMORY[0x277D4F6D8];
    v30 = sub_20C13B254();
    (*(*(v30 - 8) + 104))(v8, v29, v30);
    v31 = v41;
    v32 = v43;
    (*(v41 + 104))(v8, *v39, v43);

    sub_20C13B2A4();
    (*(v31 + 8))(v8, v32);
    v33 = v6[5];
    v34 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v33);
    v44(v27, v33, v34);
    (*(v38 + 8))(v27, v42);
    return (*(v15 + 8))(v35, v14);
  }
}

uint64_t sub_20BFF6724()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690);
    v8 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B88], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_20C136C54();
    *(swift_allocObject() + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20BFF6A0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_20C138204();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    v18 = sub_20BFF3A9C(*a1, MEMORY[0x277D52828], MEMORY[0x277D527A8]);
    v27 = a2;
    v19 = v18;
    v20 = sub_20C1381E4();
    sub_20BFFF380(v20, v19);

    v21 = sub_20C132E94();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    sub_20C1381F4();

    sub_20B520158(v12, &qword_27C762AC0);
    (*(v14 + 16))(v9, v17, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    sub_20BF28D00(v9, v6);
    v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v23 = swift_allocObject();
    sub_20BFFFC08(v6, v23 + v22);
    sub_20C137CA4();
    sub_20B520158(v9, &qword_27C7643F0);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v14 + 56))(v9, 1, 1, v13, v15);
    sub_20BF28D00(v9, v6);
    v25 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v26 = swift_allocObject();
    sub_20BFFFC08(v6, v26 + v25);
    sub_20C137CA4();
    return sub_20B520158(v9, &qword_27C7643F0);
  }
}

uint64_t sub_20BFF6E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_20C138204();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0) - 8;
  MEMORY[0x28223BE20](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = *a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v16 = (v4 + 48);
    v27 = v4;
    v17 = (v4 + 32);
    v18 = MEMORY[0x277D84F90];
    v28 = v3;
    v26 = v17;
    do
    {
      sub_20BF28D00(v14, v12);
      sub_20BFFFC08(v12, v8);
      if ((*v16)(v8, 1, v3) == 1)
      {
        sub_20B520158(v8, &qword_27C7643F0);
      }

      else
      {
        v19 = *v17;
        (*v17)(v29, v8, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_20BC08B98(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_20BC08B98(v20 > 1, v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v3 = v28;
        v22 = v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
        v17 = v26;
        v19(v22, v29, v28);
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v23 = sub_20B718BBC(v18);

  *(swift_allocObject() + 16) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
  return sub_20C137CA4();
}

void sub_20BFF713C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v73 = a3;
  v5 = sub_20C138204();
  v72 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v63 - v8;
  MEMORY[0x28223BE20](v9);
  v80 = &v63 - v10;
  v68 = v11;
  MEMORY[0x28223BE20](v12);
  v78 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v63 - v20;
  v22 = sub_20C136C64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  sub_20C13B174();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_20B520158(v21, &qword_27C768690);
    v26 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v27 = swift_allocError();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D51B88], v26);
    *(swift_allocObject() + 16) = v27;
    sub_20C137CA4();
  }

  else
  {
    v65 = v22;
    v66 = v18;
    v64 = v23;
    (*(v23 + 32))(v25, v21, v22);
    v67 = v25;
    v29 = sub_20C136C54();
    v30 = v29;
    v31 = v29 + 56;
    v32 = 1 << *(v29 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v29 + 56);
    v35 = (v32 + 63) >> 6;
    v36 = v72;
    v76 = v72 + 16;
    v77 = v72 + 32;
    v75 = (v72 + 8);

    v38 = 0;
    v74 = v37;
    if (v34)
    {
      while (1)
      {
        v39 = v38;
LABEL_10:
        v40 = *(v30 + 48) + *(v36 + 72) * (__clz(__rbit64(v34)) | (v39 << 6));
        v41 = v78;
        (*(v36 + 16))(v78, v40, v5);
        v42 = v5;
        v43 = *(v36 + 32);
        v44 = v42;
        v43(v80, v41);
        if (sub_20C1381A4() == a1 && v45 == v79)
        {

          goto LABEL_18;
        }

        v46 = a1;
        v47 = sub_20C13DFF4();

        if (v47)
        {
          break;
        }

        v34 &= v34 - 1;
        v5 = v44;
        (*v75)(v80, v44);
        v38 = v39;
        a1 = v46;
        v30 = v74;
        if (!v34)
        {
          goto LABEL_7;
        }
      }

LABEL_18:
      v49 = v66;
      (v43)(v66, v80, v44);
      v5 = v44;
      v48 = 0;
LABEL_19:
      v50 = v64;
      v51 = v67;
      (*(v36 + 56))(v49, v48, 1, v5);

      v52 = v71;
      sub_20BF28D00(v49, v71);
      if ((*(v36 + 48))(v52, 1, v5) == 1)
      {
        sub_20B520158(v52, &qword_27C7643F0);
        v53 = sub_20C133D94();
        sub_20BFFFAC8(&qword_27C765B10, MEMORY[0x277D50470]);
        v54 = swift_allocError();
        (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D50468], v53);
        *(swift_allocObject() + 16) = v54;
        v56 = v54;
        sub_20C137CA4();
        sub_20B520158(v49, &qword_27C7643F0);
        (*(v50 + 8))(v51, v65);
      }

      else
      {
        v57 = *(v36 + 32);
        v58 = v70;
        v57(v70, v52, v5);
        v59 = v69;
        (*(v36 + 16))(v69, v58, v5);
        v60 = v36;
        v61 = (*(v36 + 80) + 16) & ~*(v36 + 80);
        v62 = swift_allocObject();
        v57((v62 + v61), v59, v5);
        sub_20C137CA4();
        (*(v60 + 8))(v58, v5);
        sub_20B520158(v49, &qword_27C7643F0);
        (*(v50 + 8))(v67, v65);
      }
    }

    else
    {
LABEL_7:
      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v35)
        {

          v48 = 1;
          v49 = v66;
          goto LABEL_19;
        }

        v34 = *(v31 + 8 * v39);
        ++v38;
        if (v34)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_20BFF7974(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690);
    v10 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D51B88], v10);
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
    return sub_20C137CA4();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = sub_20C136C54();

    v15 = sub_20BFFE0E8(v14, a1);

    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
    sub_20C137CA4();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BFF7C90@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v50 = a2;
  v45 = a1;
  v46 = a4;
  v53 = a3;
  v54 = a6;
  v7 = v6;
  v8 = sub_20C13B0C4();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20C138204();
  v10 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771B18);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_20C135174();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
  sub_20C13B184();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_20B520158(v17, &unk_27C76BC00);
    v25 = sub_20C1356F4();
    sub_20BFFFAC8(&qword_27C769680, MEMORY[0x277D51BF0]);
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D51B88], v25);
    *(swift_allocObject() + 16) = v26;
    return sub_20C137CA4();
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    (*(v19 + 16))(v21, v24, v18);
    v29 = *(v10 + 16);
    v30 = v45;
    v49 = v24;
    v31 = v43;
    v29(v42, v45, v43);
    v41 = v14;
    sub_20C137844();
    v32 = v7[10];
    v46 = v7[11];
    v42 = __swift_project_boxed_opaque_existential_1(v7 + 7, v32);
    v33 = v44;
    v29(v44, v30, v31);
    v34 = *MEMORY[0x277D4F6D0];
    v35 = sub_20C13B254();
    (*(*(v35 - 8) + 104))(v33, v34, v35);
    v36 = v51;
    v37 = v52;
    (*(v51 + 104))(v33, *v50, v52);
    sub_20C13B2A4();
    (*(v36 + 8))(v33, v37);
    v38 = v7[5];
    v39 = v7[6];
    __swift_project_boxed_opaque_existential_1(v7 + 2, v38);
    v40 = v41;
    v53(v41, v38, v39);
    (*(v47 + 8))(v40, v48);
    return (*(v19 + 8))(v49, v18);
  }
}

uint64_t sub_20BFF822C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  if (!*(a2 + 16))
  {

    if (!*(a3 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_20C0002AC(v8, a2);

  if (*(a3 + 16))
  {
LABEL_3:

    v6 = sub_20C00099C(v6, a3);
  }

LABEL_4:
  *a4 = v6;
  return result;
}

uint64_t sub_20BFF8378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_20BFF5860(a1, &v15 - v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20C00109C;
  *(v9 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v5, v2);
  v13 = (v12 + v11);
  *v13 = sub_20C001094;
  v13[1] = v9;
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20BFF858C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_20BFF5EE8(a1);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20C00109C;
  *(v9 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v5, v2);
  v13 = (v12 + v11);
  *v13 = sub_20C001094;
  v13[1] = v9;
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20BFF87A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_20BFF3DD0(a1, &v15 - v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20C00109C;
  *(v9 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v5, v2);
  v13 = (v12 + v11);
  *v13 = sub_20C000DBC;
  v13[1] = v9;
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20BFF89B4(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_20BFF4A74(a1, &v15 - v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20C00109C;
  *(v9 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v10, v5, v2);
  v13 = (v12 + v11);
  *v13 = sub_20C001090;
  v13[1] = v9;
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20BFF8BC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  sub_20BFF6724();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_20C00109C;
  *(v7 + 24) = 0;
  (*(v1 + 16))(v3, v6, v0);
  v8 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v8, v3, v0);
  v11 = (v10 + v9);
  *v11 = sub_20BFFFA68;
  v11[1] = v7;
  sub_20C137C94();
  return (*(v1 + 8))(v6, v0);
}

unint64_t sub_20BFF8F44()
{
  result = qword_27C771B28;
  if (!qword_27C771B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C765D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771B28);
  }

  return result;
}

unint64_t sub_20BFF8FC8()
{
  result = qword_27C771B30;
  if (!qword_27C771B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C765D60);
    sub_20BFFFAC8(&qword_27C771B38, MEMORY[0x277D53BA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771B30);
  }

  return result;
}

uint64_t sub_20BFF907C(uint64_t a1, void *a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v40 = v10;
    v41 = v3;
    v39[1] = v39;
    MEMORY[0x28223BE20](v8);
    v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v11);
    v10 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v3 = v13 & *(a1 + 56);
    swift_beginAccess();
    v14 = 0;
    v15 = 0;
    v49 = v7 + 16;
    v44 = (v7 + 8);
    v48 = a1;
    v47 = a2;
    v46 = v6;
    v45 = v7;
LABEL_7:
    v43 = v14;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v51 = (v3 - 1) & v3;
LABEL_16:
      v19 = v16 | (v15 << 6);
      v20 = *(a1 + 48);
      v21 = *(v7 + 72);
      v50 = v19;
      (*(v7 + 16))(v52, v20 + v21 * v19, v6);
      v22 = *a2;

      v23 = sub_20C137FF4();
      v25 = v24;
      v55 = v23;
      v56 = v24;
      v27 = v26 & 1;
      v57 = v26 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0);
      sub_20C133BB4();
      sub_20B583F4C(v23, v25, v27);
      v28 = v54;
      if (*(v22 + 16))
      {
        v29 = v53;
        sub_20C13E164();
        sub_20C13CA64();
        v30 = sub_20C13E1B4();
        v31 = -1 << *(v22 + 32);
        v32 = v30 & ~v31;
        if ((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          v33 = ~v31;
          while (1)
          {
            v34 = (*(v22 + 48) + 16 * v32);
            v35 = *v34 == v29 && v34[1] == v28;
            if (v35 || (sub_20C13DFF4() & 1) != 0)
            {
              break;
            }

            v32 = (v32 + 1) & v33;
            if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v6 = v46;
          (*v44)(v52, v46);
          v3 = v51;
          *&v42[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
          v14 = v43 + 1;
          a1 = v48;
          a2 = v47;
          v7 = v45;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_29;
          }

          goto LABEL_7;
        }
      }

LABEL_8:

      v6 = v46;
      (*v44)(v52, v46);
      a1 = v48;
      a2 = v47;
      v7 = v45;
      v3 = v51;
    }

    v17 = v15;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= ((v12 + 63) >> 6))
      {
        return sub_20BC0D95C(v42, v40, v43, a1);
      }

      v18 = *(v10 + 8 * v15);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v51 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v38 = sub_20BFFC080(v37, v10, a1, a2, sub_20BFFB3B8);

  result = MEMORY[0x20F2F6A40](v37, -1, -1);
  if (!v3)
  {
    return v38;
  }

  return result;
}

uint64_t sub_20BFF95B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v37 = swift_slowAlloc();
      v38 = sub_20BFFC080(v37, v10, a1, a2, sub_20BFFAFCC);

      result = MEMORY[0x20F2F6A40](v37, -1, -1);
      if (!v3)
      {
        return v38;
      }

      return result;
    }
  }

  v40 = v10;
  v41 = v3;
  v39[1] = v39;
  MEMORY[0x28223BE20](v8);
  v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v11);
  v10 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v3 = v13 & *(a1 + 56);
  swift_beginAccess();
  v14 = 0;
  v15 = 0;
  v45 = v7 + 16;
  v44 = (v7 + 8);
  v49 = a1;
  v48 = a2;
  v47 = v6;
  v46 = v7;
  while (2)
  {
    v43 = v14;
    while (1)
    {
      if (!v3)
      {
        v17 = v15;
        while (1)
        {
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v15 >= ((v12 + 63) >> 6))
          {
            return sub_20BC0D95C(v42, v40, v43, a1);
          }

          v18 = *(v10 + 8 * v15);
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v51 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

      v16 = __clz(__rbit64(v3));
      v51 = (v3 - 1) & v3;
LABEL_15:
      v19 = v16 | (v15 << 6);
      v20 = *(a1 + 48);
      v21 = *(v7 + 72);
      v50 = v19;
      (*(v7 + 16))(v52, v20 + v21 * v19, v6);
      v22 = *a2;

      v23 = sub_20C137FF4();
      v25 = v24;
      v55 = v23;
      v56 = v24;
      v27 = v26 & 1;
      v57 = v26 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0);
      sub_20C133BB4();
      sub_20B583F4C(v23, v25, v27);
      v28 = v54;
      if (!*(v22 + 16))
      {
        break;
      }

      v29 = v53;
      sub_20C13E164();
      sub_20C13CA64();
      v30 = sub_20C13E1B4();
      v31 = -1 << *(v22 + 32);
      v32 = v30 & ~v31;
      if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        break;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = (*(v22 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v6 = v47;
      (*v44)(v52, v47);
      a1 = v49;
      a2 = v48;
      v7 = v46;
      v3 = v51;
    }

LABEL_24:

    v6 = v47;
    (*v44)(v52, v47);
    v3 = v51;
    *&v42[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
    v14 = v43 + 1;
    a1 = v49;
    a2 = v48;
    v7 = v46;
    if (!__OFADD__(v43, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_20BC0D95C(v42, v40, v43, a1);
}

uint64_t sub_20BFF9AEC(uint64_t a1, void *a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v6 = sub_20C1361E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v40 = v10;
    v41 = v3;
    v39[1] = v39;
    MEMORY[0x28223BE20](v8);
    v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v11);
    v10 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v3 = v13 & *(a1 + 56);
    swift_beginAccess();
    v14 = 0;
    v15 = 0;
    v49 = v7 + 16;
    v44 = (v7 + 8);
    v48 = a1;
    v47 = a2;
    v46 = v6;
    v45 = v7;
LABEL_7:
    v43 = v14;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v51 = (v3 - 1) & v3;
LABEL_16:
      v19 = v16 | (v15 << 6);
      v20 = *(a1 + 48);
      v21 = *(v7 + 72);
      v50 = v19;
      (*(v7 + 16))(v52, v20 + v21 * v19, v6);
      v22 = *a2;

      v23 = sub_20C1361D4();
      v25 = v24;
      v55 = v23;
      v56 = v24;
      v27 = v26 & 1;
      v57 = v26 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00);
      sub_20C133BB4();
      sub_20B583F4C(v23, v25, v27);
      v28 = v54;
      if (*(v22 + 16))
      {
        v29 = v53;
        sub_20C13E164();
        sub_20C13CA64();
        v30 = sub_20C13E1B4();
        v31 = -1 << *(v22 + 32);
        v32 = v30 & ~v31;
        if ((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          v33 = ~v31;
          while (1)
          {
            v34 = (*(v22 + 48) + 16 * v32);
            v35 = *v34 == v29 && v34[1] == v28;
            if (v35 || (sub_20C13DFF4() & 1) != 0)
            {
              break;
            }

            v32 = (v32 + 1) & v33;
            if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v6 = v46;
          (*v44)(v52, v46);
          v3 = v51;
          *&v42[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
          v14 = v43 + 1;
          a1 = v48;
          a2 = v47;
          v7 = v45;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_29;
          }

          goto LABEL_7;
        }
      }

LABEL_8:

      v6 = v46;
      (*v44)(v52, v46);
      a1 = v48;
      a2 = v47;
      v7 = v45;
      v3 = v51;
    }

    v17 = v15;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= ((v12 + 63) >> 6))
      {
        return sub_20BC12950(v42, v40, v43, a1);
      }

      v18 = *(v10 + 8 * v15);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v51 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v38 = sub_20BFFC294(v37, v10, a1, a2, sub_20BFFBBC0);

  result = MEMORY[0x20F2F6A40](v37, -1, -1);
  if (!v3)
  {
    return v38;
  }

  return result;
}

uint64_t sub_20BFFA028(uint64_t a1, void *a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v6 = sub_20C1361E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v37 = swift_slowAlloc();
      v38 = sub_20BFFC294(v37, v10, a1, a2, sub_20BFFB79C);

      result = MEMORY[0x20F2F6A40](v37, -1, -1);
      if (!v3)
      {
        return v38;
      }

      return result;
    }
  }

  v40 = v10;
  v41 = v3;
  v39[1] = v39;
  MEMORY[0x28223BE20](v8);
  v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v11);
  v10 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v3 = v13 & *(a1 + 56);
  swift_beginAccess();
  v14 = 0;
  v15 = 0;
  v45 = v7 + 16;
  v44 = (v7 + 8);
  v49 = a1;
  v48 = a2;
  v47 = v6;
  v46 = v7;
  while (2)
  {
    v43 = v14;
    while (1)
    {
      if (!v3)
      {
        v17 = v15;
        while (1)
        {
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v15 >= ((v12 + 63) >> 6))
          {
            return sub_20BC12950(v42, v40, v43, a1);
          }

          v18 = *(v10 + 8 * v15);
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v51 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

      v16 = __clz(__rbit64(v3));
      v51 = (v3 - 1) & v3;
LABEL_15:
      v19 = v16 | (v15 << 6);
      v20 = *(a1 + 48);
      v21 = *(v7 + 72);
      v50 = v19;
      (*(v7 + 16))(v52, v20 + v21 * v19, v6);
      v22 = *a2;

      v23 = sub_20C1361D4();
      v25 = v24;
      v55 = v23;
      v56 = v24;
      v27 = v26 & 1;
      v57 = v26 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00);
      sub_20C133BB4();
      sub_20B583F4C(v23, v25, v27);
      v28 = v54;
      if (!*(v22 + 16))
      {
        break;
      }

      v29 = v53;
      sub_20C13E164();
      sub_20C13CA64();
      v30 = sub_20C13E1B4();
      v31 = -1 << *(v22 + 32);
      v32 = v30 & ~v31;
      if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        break;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = (*(v22 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v6 = v47;
      (*v44)(v52, v47);
      a1 = v49;
      a2 = v48;
      v7 = v46;
      v3 = v51;
    }

LABEL_24:

    v6 = v47;
    (*v44)(v52, v47);
    v3 = v51;
    *&v42[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
    v14 = v43 + 1;
    a1 = v49;
    a2 = v48;
    v7 = v46;
    if (!__OFADD__(v43, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_20BC12950(v42, v40, v43, a1);
}

uint64_t sub_20BFFA55C(uint64_t a1, void *a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v6 = sub_20C1361E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v40 = v10;
    v41 = v3;
    v39[1] = v39;
    MEMORY[0x28223BE20](v8);
    v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v11);
    v10 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v3 = v13 & *(a1 + 56);
    swift_beginAccess();
    v14 = 0;
    v15 = 0;
    v49 = v7 + 16;
    v44 = (v7 + 8);
    v48 = a1;
    v47 = a2;
    v46 = v6;
    v45 = v7;
LABEL_7:
    v43 = v14;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v51 = (v3 - 1) & v3;
LABEL_16:
      v19 = v16 | (v15 << 6);
      v20 = *(a1 + 48);
      v21 = *(v7 + 72);
      v50 = v19;
      (*(v7 + 16))(v52, v20 + v21 * v19, v6);
      v22 = *a2;

      v23 = sub_20C1361B4();
      v25 = v24;
      v55 = v23;
      v56 = v24;
      v27 = v26 & 1;
      v57 = v26 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
      sub_20C133BB4();
      sub_20B583F4C(v23, v25, v27);
      v28 = v54;
      if (*(v22 + 16))
      {
        v29 = v53;
        sub_20C13E164();
        sub_20C13CA64();
        v30 = sub_20C13E1B4();
        v31 = -1 << *(v22 + 32);
        v32 = v30 & ~v31;
        if ((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          v33 = ~v31;
          while (1)
          {
            v34 = (*(v22 + 48) + 16 * v32);
            v35 = *v34 == v29 && v34[1] == v28;
            if (v35 || (sub_20C13DFF4() & 1) != 0)
            {
              break;
            }

            v32 = (v32 + 1) & v33;
            if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v6 = v46;
          (*v44)(v52, v46);
          v3 = v51;
          *&v42[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
          v14 = v43 + 1;
          a1 = v48;
          a2 = v47;
          v7 = v45;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_29;
          }

          goto LABEL_7;
        }
      }

LABEL_8:

      v6 = v46;
      (*v44)(v52, v46);
      a1 = v48;
      a2 = v47;
      v7 = v45;
      v3 = v51;
    }

    v17 = v15;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= ((v12 + 63) >> 6))
      {
        return sub_20BC12950(v42, v40, v43, a1);
      }

      v18 = *(v10 + 8 * v15);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v51 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v38 = sub_20BFFC1CC(v37, v10, a1, a2, sub_20BFFBBC0);

  result = MEMORY[0x20F2F6A40](v37, -1, -1);
  if (!v3)
  {
    return v38;
  }

  return result;
}

uint64_t sub_20BFFAA98(uint64_t a1, void *a2)
{
  v3 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v6 = sub_20C1361E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v37 = swift_slowAlloc();
      v38 = sub_20BFFC1CC(v37, v10, a1, a2, sub_20BFFB79C);

      result = MEMORY[0x20F2F6A40](v37, -1, -1);
      if (!v3)
      {
        return v38;
      }

      return result;
    }
  }

  v40 = v10;
  v41 = v3;
  v39[1] = v39;
  MEMORY[0x28223BE20](v8);
  v42 = v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v42, v11);
  v10 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v3 = v13 & *(a1 + 56);
  swift_beginAccess();
  v14 = 0;
  v15 = 0;
  v45 = v7 + 16;
  v44 = (v7 + 8);
  v49 = a1;
  v48 = a2;
  v47 = v6;
  v46 = v7;
  while (2)
  {
    v43 = v14;
    while (1)
    {
      if (!v3)
      {
        v17 = v15;
        while (1)
        {
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v15 >= ((v12 + 63) >> 6))
          {
            return sub_20BC12950(v42, v40, v43, a1);
          }

          v18 = *(v10 + 8 * v15);
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v51 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

      v16 = __clz(__rbit64(v3));
      v51 = (v3 - 1) & v3;
LABEL_15:
      v19 = v16 | (v15 << 6);
      v20 = *(a1 + 48);
      v21 = *(v7 + 72);
      v50 = v19;
      (*(v7 + 16))(v52, v20 + v21 * v19, v6);
      v22 = *a2;

      v23 = sub_20C1361B4();
      v25 = v24;
      v55 = v23;
      v56 = v24;
      v27 = v26 & 1;
      v57 = v26 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
      sub_20C133BB4();
      sub_20B583F4C(v23, v25, v27);
      v28 = v54;
      if (!*(v22 + 16))
      {
        break;
      }

      v29 = v53;
      sub_20C13E164();
      sub_20C13CA64();
      v30 = sub_20C13E1B4();
      v31 = -1 << *(v22 + 32);
      v32 = v30 & ~v31;
      if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        break;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = (*(v22 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v22 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v6 = v47;
      (*v44)(v52, v47);
      a1 = v49;
      a2 = v48;
      v7 = v46;
      v3 = v51;
    }

LABEL_24:

    v6 = v47;
    (*v44)(v52, v47);
    v3 = v51;
    *&v42[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
    v14 = v43 + 1;
    a1 = v49;
    a2 = v48;
    v7 = v46;
    if (!__OFADD__(v43, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_20BC12950(v42, v40, v43, a1);
}

uint64_t sub_20BFFAFCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v10;
  v48 = a4;
  result = swift_beginAccess();
  v17 = 0;
  v18 = 0;
  v44 = v7 + 16;
  v46 = v7;
  v43 = (v7 + 8);
  v47 = v6;
  v45 = v9;
  while (2)
  {
    v42 = v17;
    while (1)
    {
      if (!v15)
      {
        v20 = v18;
        while (1)
        {
          v18 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v18 >= ((v13 + 63) >> 6))
          {
            goto LABEL_26;
          }

          v21 = *(v11 + 8 * v18);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v56 = (v21 - 1) & v21;
            goto LABEL_14;
          }
        }

        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64(v15));
      v56 = (v15 - 1) & v15;
LABEL_14:
      v22 = v19 | (v18 << 6);
      v23 = *(v50 + 48);
      v24 = *(v46 + 72);
      v49 = v22;
      (*(v46 + 16))(v9, v23 + v24 * v22, v6);
      v25 = *v48;

      v26 = sub_20C137FF4();
      v28 = v27;
      v53 = v26;
      v54 = v27;
      v30 = v29 & 1;
      v55 = v29 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0);
      sub_20C133BB4();
      sub_20B583F4C(v26, v28, v30);
      v31 = v52;
      if (!*(v25 + 16))
      {
        break;
      }

      v32 = v51;
      sub_20C13E164();
      sub_20C13CA64();
      v33 = sub_20C13E1B4();
      v34 = -1 << *(v25 + 32);
      v35 = v33 & ~v34;
      if (((*(v25 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        break;
      }

      v36 = ~v34;
      while (1)
      {
        v37 = (*(v25 + 48) + 16 * v35);
        v38 = *v37 == v32 && v37[1] == v31;
        if (v38 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v25 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v9 = v45;
      v6 = v47;
      result = (*v43)(v45, v47);
      v15 = v56;
    }

LABEL_23:

    v9 = v45;
    v6 = v47;
    result = (*v43)(v45, v47);
    *(v41 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v17 = v42 + 1;
    v15 = v56;
    if (!__OFADD__(v42, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:
  v39 = v50;

  return sub_20BC0D95C(v41, v40, v42, v39);
}

uint64_t sub_20BFFB3B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v10;
  v45 = a4;
  result = swift_beginAccess();
  v17 = 0;
  v18 = 0;
  v43 = v7 + 16;
  v44 = v7;
  v46 = (v7 + 8);
  v47 = v9;
  v48 = v6;
LABEL_6:
  v42 = v17;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v56 = (v15 - 1) & v15;
LABEL_15:
    v22 = v19 | (v18 << 6);
    v23 = *(v50 + 48);
    v24 = *(v44 + 72);
    v49 = v22;
    (*(v44 + 16))(v9, v23 + v24 * v22, v6);
    v25 = *v45;

    v26 = sub_20C137FF4();
    v28 = v27;
    v53 = v26;
    v54 = v27;
    v30 = v29 & 1;
    v55 = v29 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0);
    sub_20C133BB4();
    sub_20B583F4C(v26, v28, v30);
    v31 = v52;
    if (*(v25 + 16))
    {
      v32 = v51;
      sub_20C13E164();
      sub_20C13CA64();
      v33 = sub_20C13E1B4();
      v34 = -1 << *(v25 + 32);
      v35 = v33 & ~v34;
      if ((*(v25 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(v25 + 48) + 16 * v35);
          v38 = *v37 == v32 && v37[1] == v31;
          if (v38 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v25 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v9 = v47;
        v6 = v48;
        result = (*v46)(v47, v48);
        *(v41 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        v17 = v42 + 1;
        v15 = v56;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_6;
      }
    }

LABEL_7:

    v9 = v47;
    v6 = v48;
    result = (*v46)(v47, v48);
    v15 = v56;
  }

  v20 = v18;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= ((v13 + 63) >> 6))
    {
      v39 = v50;

      return sub_20BC0D95C(v41, v40, v42, v39);
    }

    v21 = *(v11 + 8 * v18);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v56 = (v21 - 1) & v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20BFFB79C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v57 = a7;
  v58 = a8;
  v56 = a6;
  v55 = a5;
  v46 = a2;
  v47 = a1;
  v10 = sub_20C1361E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  v54 = a4;
  result = swift_beginAccess();
  v21 = 0;
  v22 = 0;
  v23 = (v17 + 63) >> 6;
  v50 = v11 + 16;
  v52 = v11;
  v49 = (v11 + 8);
  v53 = v10;
  v51 = v13;
  while (2)
  {
    v48 = v21;
    while (1)
    {
      if (!v19)
      {
        v25 = v22;
        while (1)
        {
          v22 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v22 >= v23)
          {
            goto LABEL_26;
          }

          v26 = *(v15 + 8 * v22);
          ++v25;
          if (v26)
          {
            v24 = __clz(__rbit64(v26));
            v66 = (v26 - 1) & v26;
            goto LABEL_14;
          }
        }

        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64(v19));
      v66 = (v19 - 1) & v19;
LABEL_14:
      v27 = v24 | (v22 << 6);
      v28 = *(v60 + 48);
      v29 = *(v52 + 72);
      v59 = v27;
      (*(v52 + 16))(v13, v28 + v29 * v27, v10);
      v30 = *v54;

      v32 = v55(v31);
      v34 = v33;
      v63 = v32;
      v64 = v33;
      v36 = v35 & 1;
      v65 = v35 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(v56);
      sub_20C133BB4();
      v58(v32, v34, v36);
      v37 = v62;
      if (!*(v30 + 16))
      {
        break;
      }

      v38 = v61;
      sub_20C13E164();
      sub_20C13CA64();
      v39 = sub_20C13E1B4();
      v40 = -1 << *(v30 + 32);
      v41 = v39 & ~v40;
      if (((*(v30 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        break;
      }

      v42 = ~v40;
      while (1)
      {
        v43 = (*(v30 + 48) + 16 * v41);
        v44 = *v43 == v38 && v43[1] == v37;
        if (v44 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v41 = (v41 + 1) & v42;
        if (((*(v30 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v13 = v51;
      v10 = v53;
      result = (*v49)(v51, v53);
      v19 = v66;
    }

LABEL_23:

    v13 = v51;
    v10 = v53;
    result = (*v49)(v51, v53);
    *(v47 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
    v21 = v48 + 1;
    v19 = v66;
    if (!__OFADD__(v48, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:
  v45 = v60;

  return sub_20BC12950(v47, v46, v48, v45);
}

uint64_t sub_20BFFBBC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v55 = a8;
  v54 = a7;
  v53 = a6;
  v52 = a5;
  v46 = a2;
  v47 = a1;
  v10 = sub_20C1361E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  v51 = a4;
  result = swift_beginAccess();
  v21 = 0;
  v22 = 0;
  v23 = (v17 + 63) >> 6;
  v49 = v11 + 16;
  v50 = v11;
  v56 = (v11 + 8);
  v57 = v13;
  v58 = v10;
LABEL_6:
  v48 = v21;
  while (v19)
  {
    v24 = __clz(__rbit64(v19));
    v66 = (v19 - 1) & v19;
LABEL_15:
    v27 = v24 | (v22 << 6);
    v28 = *(v60 + 48);
    v29 = *(v50 + 72);
    v59 = v27;
    (*(v50 + 16))(v13, v28 + v29 * v27, v10);
    v30 = *v51;

    v32 = v52(v31);
    v34 = v33;
    v63 = v32;
    v64 = v33;
    v36 = v35 & 1;
    v65 = v35 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v53);
    sub_20C133BB4();
    v55(v32, v34, v36);
    v37 = v62;
    if (*(v30 + 16))
    {
      v38 = v61;
      sub_20C13E164();
      sub_20C13CA64();
      v39 = sub_20C13E1B4();
      v40 = -1 << *(v30 + 32);
      v41 = v39 & ~v40;
      if ((*(v30 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (1)
        {
          v43 = (*(v30 + 48) + 16 * v41);
          v44 = *v43 == v38 && v43[1] == v37;
          if (v44 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v41 = (v41 + 1) & v42;
          if (((*(v30 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v13 = v57;
        v10 = v58;
        result = (*v56)(v57, v58);
        *(v47 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        v21 = v48 + 1;
        v19 = v66;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_6;
      }
    }

LABEL_7:

    v13 = v57;
    v10 = v58;
    result = (*v56)(v57, v58);
    v19 = v66;
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= v23)
    {
      v45 = v60;

      return sub_20BC12950(v47, v46, v48, v45);
    }

    v26 = *(v15 + 8 * v22);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v66 = (v26 - 1) & v26;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}