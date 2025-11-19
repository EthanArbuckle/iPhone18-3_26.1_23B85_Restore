uint64_t TransitionContainerViewController.init(rootViewController:identifier:)()
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = 0;
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = 0;
  v1 = objc_allocWithZone(type metadata accessor for Transition());
  Transition.init(presentationTransitionFactory:dismissalTransitionFactory:presentationControllerFactory:)();
  TransitionContainerViewController.__allocating_init(rootViewController:identifier:transition:)();
  OUTLINED_FUNCTION_3_1();
  swift_deallocPartialClassInstance();
  return ObjectType;
}

uint64_t sub_1D7E46A00()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

void sub_1D7E46A38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1D7E46A80(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*(*a1 + 40) + 8))(v2, *(*a1 + 32));
  free(v2);

  free(v1);
}

id Transition.init(presentationTransitionFactory:dismissalTransitionFactory:presentationControllerFactory:)()
{
  OUTLINED_FUNCTION_0_72();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI10Transition_interactiveTransition] = 0;
  v8 = &v1[OBJC_IVAR____TtC5TeaUI10Transition_presentationTransitionFactory];
  *v8 = v6;
  *(v8 + 1) = v5;
  v9 = &v1[OBJC_IVAR____TtC5TeaUI10Transition_dismissalTransitionFactory];
  *v9 = v4;
  *(v9 + 1) = v3;
  v10 = &v1[OBJC_IVAR____TtC5TeaUI10Transition_presentationControllerFactory];
  *v10 = v2;
  *(v10 + 1) = v0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

char *TransitionContainerViewController.init(rootViewController:containerIdentifier:transition:)()
{
  OUTLINED_FUNCTION_10_18();
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___TSTransitionContainerViewController_disableInstallBarButtonItems] = 0;
  v1[OBJC_IVAR___TSTransitionContainerViewController_doneButtonPlacement] = 1;
  v1[OBJC_IVAR___TSTransitionContainerViewController_doneButtonStyle] = 0;
  v1[OBJC_IVAR___TSTransitionContainerViewController_hideDoneButton] = 0;
  *&v1[OBJC_IVAR___TSTransitionContainerViewController_backBarButtonItem] = 0;
  v5 = *(v2 + 16);
  v6 = &v1[OBJC_IVAR___TSTransitionContainerViewController_nextDisplayMode];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR___TSTransitionContainerViewController____lazy_storage___doneBarButtonItem] = 0;
  *&v1[OBJC_IVAR___TSTransitionContainerViewController_rootViewController] = v3;
  v7 = &v1[OBJC_IVAR___TSTransitionContainerViewController_containerIdentifier];
  *v7 = *v2;
  v7[16] = v5;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v8 = v3;
  v9 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  v10 = sub_1D7E46E34();
  v11 = sub_1D8190EE4();
  [v10 setIdentifier_];

  v12 = &v10[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_barButtonItemIdentifier];
  swift_beginAccess();
  *v12 = 0x61622E6975616574;
  *(v12 + 1) = 0xEA00000000006B63;

  v13 = *&v9[OBJC_IVAR___TSTransitionContainerViewController_backBarButtonItem];
  *&v9[OBJC_IVAR___TSTransitionContainerViewController_backBarButtonItem] = v10;

  return v9;
}

void sub_1D7E46D9C()
{
  unk_1EDBAF440 = 0u;
  unk_1EDBAF430 = 0u;
  unk_1EDBAF420 = 0u;
  OUTLINED_FUNCTION_1_82(&unk_1EDBAF3D8);
}

uint64_t static BlueprintCompositionalLayoutOptions.compact.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (qword_1EDBAF3D0 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_4_45(a1, a2, a3, a4, a5, a6, a7, a8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15], v10[0]);
  OUTLINED_FUNCTION_3_65();
  return sub_1D7E22264(v10, v9);
}

uint64_t sub_1D7E46E34()
{
  if (sub_1D8190B24())
  {
    type metadata accessor for BlockBarButtonItem();
    if (qword_1EDBB3890 != -1)
    {
      swift_once();
    }

    v0 = qword_1EDBB3898;
    sub_1D7E0A1A8(0, &qword_1EDBB2F18);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v1 = v0;
    sub_1D8191CF4();
    return sub_1D81919F4();
  }

  else
  {
    sub_1D7E0A1A8(0, &qword_1EDBB2F10);
    v3 = static UIButton.backButton.getter();
    v4 = *&v3[OBJC_IVAR____TtC5TeaUI12ActionButton_onTap];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = v4;

    type metadata accessor for BlockBarButtonItem();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
    v8 = OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor;
    swift_beginAccess();
    v7[v8] = 1;
    sub_1D7E49240();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D81A5090;
    v10 = objc_opt_self();
    *(v9 + 32) = [v10 labelColor];
    *(v9 + 40) = [v10 secondarySystemFillColor];
    BlockBarButtonItem.recolor(with:)(v9);

    return v7;
  }
}

uint64_t sub_1D7E470B4()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E4710C(uint64_t a1)
{
  v1 = *(a1 + 121);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_1D7E47128()
{
  sub_1D7E471D0();
  result = sub_1D7E47238();
  if (result)
  {
    qword_1EDBB3898 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BlueprintLayoutOptions.compositionalLayoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 240), 0x7AuLL);
  memcpy(a1, (v1 + 240), 0x7AuLL);
  return sub_1D7E22264(__dst, v4);
}

unint64_t sub_1D7E471D0()
{
  result = qword_1EDBB2F60;
  if (!qword_1EDBB2F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2F60);
  }

  return result;
}

id sub_1D7E47238()
{
  v0 = sub_1D8190EE4();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

char *LabelBarButtonItem.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D818E794();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_barButtonItemIdentifier];
  sub_1D818E784();
  v8 = sub_1D818E764();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  *v7 = v8;
  v7[1] = v10;
  v11 = OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label;
  *&v1[v11] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label];
  v14 = v12;
  [v14 setCustomView_];
  v15 = [v14 customView];
  if (v15)
  {
    v16 = v15;
    [v15 setShowsLargeContentViewer_];
  }

  return v14;
}

id BlockBarButtonItem.init()()
{
  v1 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_3();
  v5 = &v0[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_barButtonItemIdentifier];
  sub_1D818E784();
  v6 = sub_1D818E764();
  v8 = v7;
  (*(v3 + 8))(v0, v1);
  *v5 = v6;
  v5[1] = v8;
  v0[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor] = 0;
  v9 = &v0[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_actionHandler];
  *v9 = 0;
  v9[1] = 0;
  *&v0[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_customContentView] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for BlockBarButtonItem();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t LazyViewController.loadedViewController.setter(void *a1)
{
  v1 = a1;

  sub_1D818F544();
}

void sub_1D7E476C0(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BlueprintViewController.viewWillAppear(_:)(a3);
}

Swift::Void __swiftcall BlueprintViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = OUTLINED_FUNCTION_75_8();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v8.receiver = v1;
  v8.super_class = v3;
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, v2 & 1);
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 304);
  OUTLINED_FUNCTION_56();
  *(v1 + v7) = 1;
  OUTLINED_FUNCTION_22_2();
  BlueprintImpressionManager.startSession(triggerSource:)();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(*(*((v5 & v4) + 0x70) + 8) + 16))(*((v5 & v4) + 0x58));
}

Swift::Void __swiftcall TransitionContainerViewController.viewDidLoad()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR___TSTransitionContainerViewController_rootViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    [v8 bounds];
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_18_7(v9, sel_setFrame_);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_75_0()
{
}

id OUTLINED_FUNCTION_75_1()
{
  v3 = *(v1 + 680);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_75_3()
{

  return sub_1D81913A4();
}

uint64_t OUTLINED_FUNCTION_75_4(uint64_t a1)
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  *(v4 - 88) = a1;

  return type metadata accessor for Blueprint();
}

uint64_t OUTLINED_FUNCTION_75_5()
{
  *(v0 + 16) = v1;

  return sub_1D818E8E4();
}

uint64_t OUTLINED_FUNCTION_75_6()
{
}

uint64_t OUTLINED_FUNCTION_75_7()
{
  *(v2 - 224) = v0;
  *(v2 - 216) = v1;
}

uint64_t OUTLINED_FUNCTION_75_8()
{

  return swift_getObjectType();
}

void BlueprintImpressionManager.startSession(triggerSource:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  sub_1D818E754();
  OUTLINED_FUNCTION_9();
  v73 = v6;
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_2();
  v71 = v7;
  v8 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v70 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for BlueprintImpressionActiveSession();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_2();
  v72 = v15;
  v16 = *(v4 + 80);
  v68 = *(v4 + 88);
  v69 = v16;
  v17 = type metadata accessor for BlueprintImpressionManager.Session();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_28_0();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  v27 = v4;
  v28 = *v3;
  if (v28 >= 0 != v1[*(v27 + 152)] && (sub_1D7E481B0() & 1) != 0)
  {
    OUTLINED_FUNCTION_39_5();
    v30 = *(v29 + 136);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_67_2();
    v67 = v30;
    v31(v26, &v1[v30], v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = *v26;
      sub_1D818E784();
      v66 = v19;
      v32 = sub_1D818E764();
      v34 = v33;
      v64 = v33;
      (*(v70 + 8))(v12, v8);
      v35 = v71;
      sub_1D818E744();
      LODWORD(v70) = v28 & 0x7F;
      v36 = v72;
      *v72 = v32;
      *(v36 + 8) = v34;
      v37 = active[5];
      v38 = v73;
      v39 = v74;
      (*(v73 + 32))(v36 + v37, v35, v74);
      v40 = active[6];
      *(v36 + v40) = v70;
      v41 = active[7];
      v42 = v65;
      *(v36 + v41) = v65;
      sub_1D7E0D158();
      v44 = v43[12];
      v70 = v43[16];
      v71 = v32;
      v63 = v43[20];
      *v23 = v32;
      v45 = v64;
      v23[1] = v64;
      (*(v38 + 16))(v23 + v44, v36 + v37, v39);
      v46 = *(v36 + v40);
      v47 = v45;
      *(v23 + v70) = v46;
      *(v23 + v63) = v42;
      swift_storeEnumTagMultiPayload();
      v48 = v67;
      OUTLINED_FUNCTION_15_2();
      v49 = *(v66 + 40);
      swift_bridgeObjectRetain_n();
      v49(&v1[v48], v23, v17);
      swift_endAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v51 = *(v1 + 4);
        ObjectType = swift_getObjectType();
        (*(v51 + 48))(v1, v36, v69, v68, ObjectType, v51);
        Strong = swift_unknownObjectRelease();
      }

      if (qword_1EDBBB328 != -1)
      {
        Strong = OUTLINED_FUNCTION_4_36();
      }

      OUTLINED_FUNCTION_10_17(Strong, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
      v53 = OUTLINED_FUNCTION_92_1();
      *(v53 + 16) = xmmword_1D819FAC0;
      OUTLINED_FUNCTION_39_5();
      v55 = &v1[*(v54 + 160)];
      v57 = *v55;
      v56 = v55[1];
      v58 = MEMORY[0x1E69E6158];
      *(v59 + 56) = MEMORY[0x1E69E6158];
      v60 = sub_1D7E13BF4();
      *(v53 + 32) = v57;
      *(v53 + 40) = v56;
      *(v53 + 96) = v58;
      *(v53 + 104) = v60;
      v61 = v71;
      *(v53 + 64) = v60;
      *(v53 + 72) = v61;
      *(v53 + 80) = v47;
      sub_1D8190DB4();
      sub_1D81919E4();
      sub_1D818FD44();

      sub_1D7E4939C(v36, type metadata accessor for BlueprintImpressionActiveSession);
    }

    else
    {

      sub_1D7E0D158();
      (*(v73 + 8))(&v26[*(v62 + 48)], v74);
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D7E48060()
{
  OUTLINED_FUNCTION_0_8();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for StatusBannerContainerView();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC5TeaUI25StatusBannerContainerView_isStatusBannerVisibleCheck];
  *v4 = sub_1D7F8585C;
  v4[1] = v1;
  v8 = v3;
  OUTLINED_FUNCTION_11();
  v7 = objc_msgSendSuper2(v5, v6, v8, v2);
  [v0 setView_];
}

uint64_t sub_1D7E48110()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E481B0()
{
  v1 = *v0;
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = v0[4];
      ObjectType = swift_getObjectType();
      v4 = (*(v2 + 8))(v0, *(v1 + 80), *(v1 + 88), ObjectType, v2);
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_1D7E48284()
{
  v1 = type metadata accessor for StatusBannerContainerController();
  v15.receiver = v0;
  v15.super_class = v1;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = *&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController];
  v6 = *&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController + 8];
  ObjectType = swift_getObjectType();
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  result = [v7 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [v9 addSubview_];

  [v7 didMoveToParentViewController_];
  v14[3] = v1;
  v14[0] = v0;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v0;
  v11 = sub_1D7E40E74(v14, sel_onStatusBannerTap);
  result = [v7 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  [result addGestureRecognizer_];

  result = [v7 view];
  if (result)
  {
    v13 = result;
    [result setHidden_];

    (*(v6 + 8))(ObjectType, v6);
    OUTLINED_FUNCTION_0_8();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D818F164();

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7E48548()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x130);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  result = 1;
  switch(*(v0 + v1))
  {
    case 1:
    case 3:
      return result;
    case 2:
      OUTLINED_FUNCTION_1();
      v4 = (v0 + *(v3 + 232));
      v5 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      v6 = OUTLINED_FUNCTION_6_1();
      v8 = [v7(v6 v5)];
      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_6;
      }

      v9 = [v0 view];
      if (!v9)
      {
        __break(1u);
        JUMPOUT(0x1D7E48684);
      }

      v10 = v9;
      v11 = [v9 window];

      if (!v11)
      {
        goto LABEL_6;
      }

      result = 1;
      break;
    default:
LABEL_6:
      result = 0;
      break;
  }

  return result;
}

void sub_1D7E486A0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_90_4();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_96_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_5();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_90_4();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_3_7();
    v3 = OUTLINED_FUNCTION_4_8();
    BlueprintProviderType.blueprint.getter(v3, v4);
    v5 = OUTLINED_FUNCTION_89_4();
    v6(v5);

    v7 = OUTLINED_FUNCTION_62_5();
    v8(v7);
  }

  OUTLINED_FUNCTION_100();
}

BOOL sub_1D7E488A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  sub_1D818F154();

  result = 0;
  if (v6 == 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController + 8);
    v4 = swift_getObjectType();
    if ((*(v3 + 16))(v4, v3))
    {
      return 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_89_0()
{
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_89_3()
{
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return sub_1D81927E4();
}

double OUTLINED_FUNCTION_85_3()
{
  *(v0 + 112) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

uint64_t BlueprintImpressionActiveSession.trigger.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BlueprintImpressionActiveSession();
  *a1 = *(v1 + *(result + 24));
  return result;
}

void UIViewController.findDescendant<A>(ofType:where:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v64 = v3;
  v65 = v4;
  v57[1] = v5;
  v71[9] = *MEMORY[0x1E69E9840];
  v63 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v57 - v9;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E49240();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A50A0;
  *(inited + 32) = v0;
  v66 = (v12 + 32);
  v61 = (v12 + 8);
  v62 = (v7 + 8);
  v17 = v0;
  v60 = v2;
  v59 = v10;
  v58 = v15;
  while (1)
  {
    v18 = inited >> 62;
    if (inited >> 62)
    {
      if (!sub_1D81920A4())
      {
        goto LABEL_89;
      }

      if (!sub_1D81920A4())
      {
        goto LABEL_90;
      }
    }

    else if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1DA714420](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v19 = *(inited + 32);
    }

    v20 = v19;
    if (v18)
    {
      if (!sub_1D81920A4())
      {
        goto LABEL_83;
      }

      if (sub_1D81920A4() < 1)
      {
        goto LABEL_84;
      }

      v21 = sub_1D81920A4();
    }

    else
    {
      v21 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_83;
      }
    }

    v22 = v21 - 1;
    if (__OFSUB__(v21, 1))
    {
      goto LABEL_78;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v18)
      {
        goto LABEL_21;
      }

LABEL_20:
      sub_1D81920A4();
      OUTLINED_FUNCTION_2_113();
      goto LABEL_21;
    }

    if (v18)
    {
      goto LABEL_20;
    }

    if (v22 <= *((inited & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = inited & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

LABEL_21:
    OUTLINED_FUNCTION_4_73();
    inited = sub_1D8192224();
    v23 = inited & 0xFFFFFFFFFFFFFF8;
LABEL_22:

    v24 = inited >> 62;
    if (inited >> 62)
    {
      v25 = sub_1D81920A4();
    }

    else
    {
      v25 = *(v23 + 16);
    }

    if (__OFSUB__(v25, 1))
    {
      goto LABEL_79;
    }

    memmove((v23 + 32), (v23 + 40), 8 * (v25 - 1));
    if (v24)
    {
      v26 = sub_1D81920A4();
    }

    else
    {
      v26 = *(v23 + 16);
    }

    if (__OFSUB__(v26, 1))
    {
      goto LABEL_80;
    }

    v70 = inited;
    v71[0] = v20;
    v27 = v23;
    *(v23 + 16) = v26 - 1;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v28 = v20;
    if (swift_dynamicCast())
    {
      break;
    }

    OUTLINED_FUNCTION_6_68(v10, 1);
    (*v62)(v10, v63);
LABEL_33:
    type metadata accessor for LazyViewController();
    if (swift_dynamicCastClass())
    {
      v31 = v28;
      LazyViewController.loadViewController()(v32);
      v34 = v33;
    }

    v35 = [v28 childViewControllers];
    v30 = sub_1D8191314();

    if (v30 >> 62)
    {
      v36 = sub_1D81920A4();
    }

    else
    {
      v36 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v28;
    if (v24)
    {
      v55 = v36;
      v37 = sub_1D81920A4();
      v36 = v55;
    }

    else
    {
      v37 = *(v27 + 16);
    }

    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_81;
    }

    v68 = v36;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v24)
      {
        if (v38 <= *(v27 + 24) >> 1)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

LABEL_45:
      sub_1D81920A4();
      OUTLINED_FUNCTION_2_113();
      goto LABEL_46;
    }

    if (v24)
    {
      goto LABEL_45;
    }

LABEL_46:
    v70 = sub_1D8192224();
    v27 = v70 & 0xFFFFFFFFFFFFFF8;
LABEL_47:
    v39 = *(v27 + 16);
    v40 = (*(v27 + 24) >> 1) - v39;
    v69 = v27;
    v41 = v27 + 8 * v39;
    if (v30 >> 62)
    {
      v43 = sub_1D81920A4();
      if (!v43)
      {
LABEL_61:

        v51 = v69;
        inited = v70;
        if (v68 > 0)
        {
          goto LABEL_82;
        }

        goto LABEL_62;
      }

      v44 = v43;
      v45 = sub_1D81920A4();
      if (v40 < v45)
      {
        goto LABEL_86;
      }

      if (v44 < 1)
      {
        goto LABEL_88;
      }

      v42 = v45;
      v46 = v41 + 32;
      sub_1D7E49448();
      sub_1D7E495F0();
      for (i = 0; i != v44; ++i)
      {
        v48 = sub_1D7E49648(v71, i, v30);
        v50 = *v49;
        v48(v71, 0);
        *(v46 + 8 * i) = v50;
      }

      v2 = v60;
      v10 = v59;
      v15 = v58;
    }

    else
    {
      v42 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        goto LABEL_61;
      }

      if (v40 < v42)
      {
        goto LABEL_87;
      }

      swift_arrayInitWithCopy();
    }

    v51 = v69;
    inited = v70;
    if (v42 < v68)
    {
      goto LABEL_82;
    }

    if (v42 > 0)
    {
      v52 = *(v69 + 16);
      v53 = __OFADD__(v52, v42);
      v54 = v52 + v42;
      if (v53)
      {
        goto LABEL_85;
      }

      *(v69 + 16) = v54;
    }

LABEL_62:

    if (inited >> 62)
    {
      if (!sub_1D81920A4())
      {
LABEL_73:

        OUTLINED_FUNCTION_8_44();
        goto LABEL_75;
      }
    }

    else if (!*(v51 + 16))
    {
      goto LABEL_73;
    }
  }

  OUTLINED_FUNCTION_6_68(v10, 0);
  v29 = *v66;
  (*v66)(v15, v10, v2);
  v30 = v65;
  if ((v64(v15) & 1) == 0)
  {
    (*v61)(v15, v2);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_8_44();
  v29(v30, v15, v2);
  v56 = 0;
LABEL_75:
  OUTLINED_FUNCTION_6_68(v30, v56);
  OUTLINED_FUNCTION_100();
}

void sub_1D7E49240()
{
  if (!qword_1EDBB2BF0)
  {
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2BF0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_63_1()
{
}

uint64_t OUTLINED_FUNCTION_63_4()
{
}

uint64_t sub_1D7E4934C()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1EDBC6080 = result;
  return result;
}

uint64_t sub_1D7E4939C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

void __swiftcall LazyViewController.loadViewController()(UIViewController *__return_ptr retstr)
{
  sub_1D818EF14();
  if (!LazyViewController.loadedViewController.getter())
  {
    __break(1u);
  }
}

void sub_1D7E49448()
{
  if (!qword_1EDBB3318)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB31B0);
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3318);
    }
  }
}

Swift::Void __swiftcall BlueprintViewProvider.viewWillAppear()()
{
  OUTLINED_FUNCTION_4_94();
  v2 = *(v1 + 48);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_5_82();
  v3 = OUTLINED_FUNCTION_11_54();
  v5 = v4(v3);
  if (v5)
  {
    v6 = v5;
    BlueprintViewportMonitor.startUpdates(view:)(*(v0 + 16));
  }

  OUTLINED_FUNCTION_9_51();
  v7 = OUTLINED_FUNCTION_17_38();
  v8(v7);
  OUTLINED_FUNCTION_7_76();
  v9 = v2;
  if (OUTLINED_FUNCTION_9_9())
  {
    sub_1D7E05450(v14, v15);
    OUTLINED_FUNCTION_27_0(v15);
    v10 = OUTLINED_FUNCTION_3_1();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_0_225();
    sub_1D7E4091C(v14, v12, v13);
  }
}

unint64_t sub_1D7E495F0()
{
  result = qword_1EDBB3310;
  if (!qword_1EDBB3310)
  {
    sub_1D7E49448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3310);
  }

  return result;
}

uint64_t sub_1D7E49648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_12(a1, a2, a3);
  sub_1D7E33DD8(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_9_6();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_159();
    v8 = MEMORY[0x1DA714420](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_3();
}

void *BlueprintCollectionViewDelegate.viewportMonitor.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 224);
  OUTLINED_FUNCTION_1_0();
  v3 = *(v0 + v2);
  v4 = v3;
  return v3;
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.viewWillAppear()()
{
  OUTLINED_FUNCTION_3_7();
  *(v0 + *(v1 + 304)) = 1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong childViewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v5 = sub_1D8191314();

    v6 = sub_1D7E36AB8(v5);
    if (v6)
    {
      v7 = v6;
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      v8 = 0;
      OUTLINED_FUNCTION_10_19();
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA714420](v8, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        ViewControllerTransitionManager.state(viewController:)(v9);
        if (v13 == 3)
        {
          v13 = 0;
          ViewControllerTransitionManager.beginTransition(viewController:transition:animated:)(v10, &v13, 0);
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }

  OUTLINED_FUNCTION_10_19();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_1D7E499B0(v11, 4u);
  }
}

Swift::Void __swiftcall LazyViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  sub_1D818EF14();
}

void sub_1D7E499B0(void *a1, unsigned int a2)
{
  v3 = v2;
  v73 = a1;
  v5 = (*MEMORY[0x1E69E7D40] & *v2);
  v6 = v5[13];
  v7 = v5[10];
  v74[0] = swift_getAssociatedTypeWitness();
  v74[1] = swift_getAssociatedTypeWitness();
  v74[2] = swift_getAssociatedConformanceWitness();
  v74[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Blueprint();
  v72 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  v71 = a2;
  if (sub_1D7EB48B4(a2) == 0xD00000000000001ALL && 0x80000001D81C5D30 == v11)
  {
  }

  else
  {
    v13 = sub_1D8192634();

    if ((v13 & 1) == 0)
    {
      v14 = [v73 window];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 windowScene];

        if (v16)
        {
          v17 = [v16 activationState];

          if (v17 == 2)
          {
            sub_1D7E2569C(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_1D819FAB0;
            v19 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x138));
            v21 = *v19;
            v20 = v19[1];
            *(v18 + 56) = MEMORY[0x1E69E6158];
            *(v18 + 64) = sub_1D7E13BF4();
            *(v18 + 32) = v21;
            *(v18 + 40) = v20;
            sub_1D7E0A1A8(0, &qword_1EDBBE110);
            sub_1D8190DB4();
            v22 = sub_1D8191E44();
            sub_1D81919E4();
LABEL_23:
            sub_1D818FD44();
            goto LABEL_24;
          }
        }
      }
    }
  }

  v23 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_1D8043398(Strong);
    v27 = v26;

    if (v27)
    {
      if (*(v27 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing) == 1)
      {
        sub_1D7E2569C(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1D819FAB0;
        v29 = (v3 + *((*v23 & *v3) + 0x138));
        v31 = *v29;
        v30 = v29[1];
        *(v28 + 56) = MEMORY[0x1E69E6158];
        *(v28 + 64) = sub_1D7E13BF4();
        *(v28 + 32) = v31;
        *(v28 + 40) = v30;
        sub_1D7E0A1A8(0, &qword_1EDBBE110);
        sub_1D8190DB4();
        v22 = sub_1D8191E44();
        sub_1D81919E4();
        sub_1D818FD44();

LABEL_24:

        return;
      }
    }
  }

  v32 = *v23 & *v3;
  v33 = *(v3 + *(v32 + 0x130));
  if (v33 >= 3)
  {
    sub_1D7E2569C(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D819FAC0;
    v40 = (v3 + *(v32 + 312));
    v42 = *v40;
    v41 = v40[1];
    v43 = MEMORY[0x1E69E6158];
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1D7E13BF4();
    *(v39 + 32) = v42;
    *(v39 + 40) = v41;
    v45 = 0xEC000000676E6972;
    if (v33 == 4)
    {
      v45 = 0xEB00000000646572;
    }

    *(v39 + 96) = v43;
    *(v39 + 104) = v44;
    *(v39 + 64) = v44;
    *(v39 + 72) = 0x6165707061736964;
    *(v39 + 80) = v45;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    sub_1D8190DB4();
    v22 = sub_1D8191E44();
    sub_1D81919E4();
    goto LABEL_23;
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34)
  {
    sub_1D81919C4();
    sub_1D7E2569C(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D819FAB0;
    v47 = (v3 + *((*v23 & *v3) + 0x138));
    v49 = *v47;
    v48 = v47[1];
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1D7E13BF4();
    *(v46 + 32) = v49;
    *(v46 + 40) = v48;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    sub_1D8190DB4();
    v22 = sub_1D8191E44();
    sub_1D818FD44();
    goto LABEL_24;
  }

  v35 = v34;
  objc_opt_self();
  v36 = v73;
  v37 = swift_dynamicCastObjCClass();
  if (v37)
  {
    v38 = [v37 collectionViewLayout];
    [v38 collectionViewContentSize];
  }

  else
  {
    [v36 contentSize];
  }

  BlueprintProviderType.blueprint.getter(v7, v6);
  v50 = *((*v23 & *v3) + 0xD8);
  swift_beginAccess();
  if (*(v3 + v50))
  {

    v51 = v73;
    [v73 contentOffset];
    v53 = v52;
    v55 = v54;
    [v51 bounds];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = [v51 window];
    if (v64)
    {

      LODWORD(v64) = [v51 ts_isScrolling] ^ 1;
    }

    v65 = sub_1D7E67664(v64, v71, v53, v55, v57, v59, v61, v63);

    if (v65)
    {
      v73 = v8;
      v66 = *(v65 + 16);
      if (v66)
      {
        v67 = v5[15];
        v68 = *(v67 + 160);
        v69 = v65 + 32;
        do
        {
          sub_1D7E25380(v69, v74);
          v68(v10, v74, v5[12], v67);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          v69 += 40;
          --v66;
        }

        while (v66);
      }

      (*(v72 + 8))(v10, v73);
    }

    else
    {
      (*(v72 + 8))(v10, v8);
    }
  }

  else
  {

    (*(v72 + 8))(v10, v8);
  }
}

Swift::Void __swiftcall TransitionContainerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  TransitionContainerViewController.installBarButtonItems()();
}

void sub_1D7E4A440(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_willMoveToWindow_, a1);
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];
}

uint64_t sub_1D7E4A4C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, &v1[v3], 0x99uLL);
  memcpy(v18, &v1[v3], 0x99uLL);
  if (sub_1D7E4AFF8(v18) == 1)
  {
    v4 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
    swift_beginAccess();
    memcpy(v16, &v1[v4], 0x49uLL);
    memcpy(a1, &v1[v4], 0x49uLL);
    return sub_1D7E4B208(v16, v15, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
  }

  else
  {
    memcpy(v16, __dst, 0x99uLL);
    sub_1D7E4B208(v16, v15, qword_1EDBBBB40, type metadata accessor for DynamicValue);
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (v7 == 2)
    {
      sub_1D7FCE2A8(&v18[10], v15);
      result = sub_1D7FD8730(__dst, sub_1D7FD8518);
      v8 = *&v18[17];
      v9 = v18[19];
      v10 = *&v18[13];
      v11 = v18[16];
      v12 = *&v18[11];
      v13 = v18[15];
      v14 = v18[10];
    }

    else
    {
      sub_1D7FCE2A8(v18, v15);
      result = sub_1D7FD8730(__dst, sub_1D7FD8518);
      v8 = *&v18[7];
      v9 = v18[9];
      v10 = *&v18[3];
      v11 = v18[6];
      v12 = *&v18[1];
      v13 = v18[5];
      v14 = v18[0];
    }

    *a1 = v14;
    *(a1 + 1) = v12;
    *(a1 + 3) = v10;
    a1[5] = v13;
    *(a1 + 48) = v11;
    *(a1 + 7) = v8;
    *(a1 + 72) = v9;
  }

  return result;
}

id sub_1D7E4A6D8()
{
  v1 = v0;
  sub_1D7E4A4C0(__src);
  v2 = [v0 layer];
  objc_opt_self();
  OUTLINED_FUNCTION_1_73();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = __src[0];
  if (__src[0])
  {
    v31[0] = __src[0];
    memcpy(&v31[1], &__src[1], 0x41uLL);
    memcpy(__dst, __src, 0x49uLL);
    sub_1D7FCE2A8(__dst, v33);
    v5 = [v0 traitCollection];
    v6 = GradientDescriptor.resolvedCGColors(with:)(v5);

    memcpy(v33, v31, 0x49uLL);
    sub_1D7FD8CE4(v33);
    sub_1D7FF6B18(v6);

    v7 = sub_1D8191304();
  }

  else
  {
    v7 = 0;
  }

  [v3 setColors_];

  v8 = [v1 layer];
  objc_opt_self();
  OUTLINED_FUNCTION_1_73();
  v9 = swift_dynamicCastObjCClassUnconditional();
  if (v4)
  {
    v33[0] = v4;
    memcpy(&v33[1], &__src[1], 0x41uLL);
    v10 = GradientDescriptor.nsLocations.getter();
    v11 = v10;
    if (v10)
    {
      sub_1D7E0A1A8(0, &qword_1EDBAE430);
      v12 = sub_1D8191304();

      v11 = __src[0] == 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  [v9 setLocations_];

  if (!v11)
  {
    v13 = __src[2];
    v14 = __src[3];
    v16 = __src[4];
    v15 = __src[5];
    v17 = __src[6];
    sub_1D7FD7D80(__src);
    v18 = [v1 layer];
    objc_opt_self();
    OUTLINED_FUNCTION_1_73();
    v19 = swift_dynamicCastObjCClassUnconditional();
    if (v17)
    {
      v20 = 0.5;
      if (v16 | v14 | v13 | v15)
      {
        v21 = v16 | v14 | v15;
        if (v13 != 1 || v21)
        {
          if (v13 != 2 || v21)
          {
            if (v13 != 3 || (v22 = 0.0, v21))
            {
              v22 = 1.0;
              if (v13 != 4 || v21)
              {
                v20 = 0.0;
                if (v13 != 5 || v21)
                {
                  if (v13 != 6 || v21)
                  {
                    v23 = !v21 && v13 == 7;
                    v20 = 1.0;
                    v22 = 0.0;
                    if (!v23)
                    {
                      v22 = 1.0;
                    }
                  }
                }

                else
                {
                  v22 = 0.0;
                }
              }
            }
          }

          else
          {
            v22 = 0.5;
            v20 = 1.0;
          }
        }

        else
        {
          v22 = 0.5;
          v20 = 0.0;
        }
      }

      else
      {
        v22 = 0.5;
      }
    }

    else
    {
      v22 = *&v13;
      v20 = *&v14;
    }

    [v19 setStartPoint_];

    v24 = [v1 layer];
    objc_opt_self();
    OUTLINED_FUNCTION_1_73();
    v25 = swift_dynamicCastObjCClassUnconditional();
    if (v17)
    {
      v26 = 1.0;
      v27 = 0.5;
      if (v16 | v14 | v13 | v15)
      {
        v28 = v16 | v14 | v15;
        if (v13 != 1 || v28)
        {
          if (v13 != 2 || (v26 = 0.0, v28))
          {
            v26 = 0.5;
            if (v13 != 3 || (v27 = 1.0, v28))
            {
              v27 = 0.0;
              if (v13 != 4 || v28)
              {
                v26 = 1.0;
                if (v13 != 5 || v28)
                {
                  if (v13 != 6 || v28)
                  {
                    if (v28)
                    {
                      v30 = 0;
                    }

                    else
                    {
                      v30 = v13 == 7;
                    }

                    v26 = 0.0;
                    v27 = 1.0;
                    if (!v30)
                    {
                      v27 = 0.0;
                    }
                  }
                }

                else
                {
                  v27 = 1.0;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v27 = *&v16;
      v26 = *&v15;
    }

    [v25 setEndPoint_];
  }

  return [v1 setNeedsDisplay];
}

Swift::Void __swiftcall TransitionContainerViewController.installBarButtonItems()()
{
  v1 = v0;
  v2 = OBJC_IVAR___TSTransitionContainerViewController_disableInstallBarButtonItems;
  swift_beginAccess();
  if (v0[v2] & 1) != 0 || (UIViewController.isPreviewing.getter())
  {
    return;
  }

  v3 = sub_1D7E4B010(v0);
  v4 = [v0 presentingViewController];
  if (!v4)
  {
    v4 = [v0 parentViewController];
    if (!v4)
    {
LABEL_40:

      return;
    }
  }

  v5 = OUTLINED_FUNCTION_22_7();
  v6 = sub_1D7E38C88(v5, &selRef_leftBarButtonItems);
  v7 = MEMORY[0x1E69E7CC0];
  v34 = v3;
  if (!v6)
  {
LABEL_21:
    v16 = TransitionContainerViewController.leftBarButtonItems.getter();
    v17 = OUTLINED_FUNCTION_22_7();
    sub_1D8190DB4();
    sub_1D7E45B68(v7);
    sub_1D7E4B98C(v16, v17, &selRef_setLeftBarButtonItems_);

    v18 = OUTLINED_FUNCTION_22_7();
    v19 = sub_1D7E38C88(v18, &selRef_rightBarButtonItems);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v21 = v19;
      v36 = MEMORY[0x1E69E7CC0];
      v22 = sub_1D7E36AB8(v19);
      v23 = 0;
      v24 = OBJC_IVAR___TSTransitionContainerViewController_backBarButtonItem;
      while (v22 != v23)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1DA714420](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v25 = *(v21 + 8 * v23 + 32);
        }

        if (__OFADD__(v23, 1))
        {
          goto LABEL_44;
        }

        v26 = *&v1[v24];
        if (v26 && v25 == v26)
        {
        }

        else
        {
          v27 = v25;
          v28 = sub_1D7F2D4F8();

          if (v27 == v28)
          {
          }

          else
          {
            sub_1D8192274();
            sub_1D81922B4();
            sub_1D81922C4();
            sub_1D8192284();
          }
        }

        ++v23;
      }

      v3 = v34;
      v20 = v36;
    }

    v29 = TransitionContainerViewController.rightBarButtonItems.getter();
    v30 = OUTLINED_FUNCTION_22_7();
    v31 = sub_1D8190DB4();
    sub_1D7E45B68(v31);
    sub_1D7E4B98C(v20, v30, &selRef_setRightBarButtonItems_);

    v32 = OUTLINED_FUNCTION_22_7();
    v33 = [v32 navigationBar];

    if (v33)
    {
      sub_1D7E45B68(v29);
      sub_1D7E4B98C(v16, v33, &selRef_syncBarButtonItems_);
    }

    else
    {
    }

    goto LABEL_40;
  }

  v8 = v6;
  v35 = MEMORY[0x1E69E7CC0];
  v9 = sub_1D7E36AB8(v6);
  v10 = 0;
  v11 = OBJC_IVAR___TSTransitionContainerViewController_backBarButtonItem;
  while (1)
  {
    if (v9 == v10)
    {

      v3 = v34;
      v7 = v35;
      goto LABEL_21;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA714420](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    v13 = *&v1[v11];
    if (v13 && v12 == v13)
    {
    }

    else
    {
      v14 = v12;
      v15 = sub_1D7F2D4F8();

      if (v14 == v15)
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    ++v10;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t UIViewController.isPreviewing.getter()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for PreviewViewController();
    v3 = swift_dynamicCastClass();

    if (v3)
    {
      return 1;
    }
  }

  result = [v0 parentViewController];
  if (result)
  {
    v5 = result;
    v6 = UIViewController.isPreviewing.getter();

    return v6 & 1;
  }

  return result;
}

uint64_t sub_1D7E4AFF8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1D7E4B010(uint64_t a1)
{
  v2 = sub_1D7E4B110();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 viewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v5 = sub_1D8191314();

    if (sub_1D7E36AB8(v5))
    {
      sub_1D7E33DD8(0, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](0, v5);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v7 = v6;

      return v7;
    }
  }

  v9 = *(a1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);

  return v9;
}

uint64_t sub_1D7E4B110()
{
  v1 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    type metadata accessor for StatusBannerContainerController();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
      return 0;
    }

    v1 = *(v6 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController);
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      return v3;
    }
  }

  v4 = v1;
  return v3;
}

void sub_1D7E4B1B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for GradientDescriptor);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7E4B208(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, ValueMetadata *))
{
  sub_1D7E4B1B4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7E4B274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TransitionContainerViewController.leftBarButtonItems.getter()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {

    if (sub_1D7F2E240())
    {
      v2 = OBJC_IVAR___TSTransitionContainerViewController_doneButtonPlacement;
      OUTLINED_FUNCTION_10();
      if ((v0[v2] & 1) == 0)
      {
        sub_1D7E49240();
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D81A50A0;
        *(v3 + 32) = sub_1D7F2D4F8();
        return v3;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (sub_1D8190B24() & 1) != 0 && (sub_1D7E4B544(), (v4) && (v5 = *&v0[OBJC_IVAR___TSTransitionContainerViewController_backBarButtonItem]) != 0)
  {
    v6 = v5;
    MEMORY[0x1DA713500]();
    OUTLINED_FUNCTION_25_5();
    if (v7)
    {
      OUTLINED_FUNCTION_19_6();
    }

    sub_1D8191404();
    v8 = [objc_opt_self() fixedSpaceItem];
    sub_1D7F2F804(0xD000000000000012, 0x80000001D81C8770, v8);
    MEMORY[0x1DA713500]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D81913B4();
    }

    sub_1D8191404();
    v3 = v17;
  }

  else
  {
    sub_1D7E4B544();
    if ((v9 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v10 = *&v0[OBJC_IVAR___TSTransitionContainerViewController_backBarButtonItem];
    if (!v10)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v11 = sub_1D7E4B110();
    if (v11)
    {
      v12 = v11;
      type metadata accessor for NavigationController();
      v13 = swift_dynamicCastClass();
      v14 = v10;
      if (v13)
      {
        sub_1D7F346A4(v14);
      }
    }

    else
    {
      v15 = v10;
    }

    MEMORY[0x1DA713500](v15);
    OUTLINED_FUNCTION_25_5();
    if (v7)
    {
      OUTLINED_FUNCTION_19_6();
    }

    sub_1D8191404();
    return v17;
  }

  return v3;
}

uint64_t sub_1D7E4B504(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1D7E4B544()
{
  v1 = sub_1D7E4B700();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v4 = sub_1D8191314();

    v5 = sub_1D7E36AB8(v4);
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA714420](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (sub_1D7E3A084(v0, v8))
        {
          v11 = v9;
          v12 = [v2 ts_bottomViewController];
          if (v12)
          {
            v13 = v12;

            if (v11 == v13)
            {

              goto LABEL_19;
            }
          }

          else
          {
          }

          v14 = [v11 navigationItem];
          v15 = [v14 hidesBackButton];

          if (v15)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        ++v7;
        if (v10 == v6)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
LABEL_19:
    }
  }
}

void sub_1D7E4B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v15 = *(a8 + 56);
    swift_unknownObjectRetain();
    v16 = v15(a5, a8);
    v17 = [v16 traitCollection];

    (*(*(a8 + 24) + 8))(a2, v17, a5);
    swift_unknownObjectRelease();

    LOBYTE(v18) = a10;
    sub_1D80E9C84(&v18, 0);
  }
}

uint64_t sub_1D7E4B87C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    v4 = v0;
    while (1)
    {
      v5 = v4;
      v4 = [v5 parentViewController];

      if (!v4)
      {
        break;
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        return v6;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t CachedFont.__deallocating_deinit()
{
  CachedFont.deinit();

  return swift_deallocClassInstance();
}

uint64_t CachedFont.deinit()
{

  return v0;
}

void sub_1D7E4B98C(uint64_t a1, void *a2, SEL *a3)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31D0);
  v5 = sub_1D8191304();

  [a2 *a3];
}

uint64_t TransitionContainerViewController.rightBarButtonItems.getter()
{
  v1 = [v0 presentingViewController];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if ((sub_1D7F2E240() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = OBJC_IVAR___TSTransitionContainerViewController_doneButtonPlacement;
  OUTLINED_FUNCTION_10();
  if (*(v0 + v2) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7E49240();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D81A50A0;
  *(v3 + 32) = sub_1D7F2D4F8();
  return v3;
}

Swift::Void __swiftcall CoverViewManager.layoutIfNeeded()()
{
  if (*(v0 + 56))
  {
    v20 = *(v0 + 56);
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v20))
    {
      v2 = v1;
      ObjectType = swift_getObjectType();
      v4 = *(v0 + 64);
      v6 = *(v4 + 144);
      v5 = *(v4 + 152);
      v7 = *(v4 + 128);
      v22[0] = *(v4 + 112);
      v22[1] = v7;
      v23 = v6;
      v24 = v5;
      v8 = *(v2 + 16);
      swift_unknownObjectRetain();
      v9 = v20;
      v8(v22, ObjectType, v2);
    }

    else
    {
      v10 = v20;
    }

    sub_1D8028770(v20);
    [v20 setNeedsLayout];
    [v20 layoutIfNeeded];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [Strong view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;

        v19 = [v12 traitCollection];
        CoverViewManager.cover.getter();
        v21[0] = v16;
        v21[1] = v18;
        v21[2] = v19;
        v26.traitCollection.super.isa = v21;
        CoverView.layout(with:)(v26);

        sub_1D7E298F0(v22);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_1D7E4BCD8()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 windowScene];

    if (v3)
    {
      v4 = OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing;
      v5 = v0[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing];
      v6 = [v3 effectiveGeometry];
      v7 = [v6 isInteractivelyResizing];

      if (v5 != v7)
      {
        sub_1D80CF5EC((v0[v4] & 1) == 0);
      }

      v8 = objc_opt_self();
      v9 = [v8 defaultCenter];
      [v9 addObserver:v0 selector:sel_didBeginLiveResizing name:*MEMORY[0x1E69DEB20] object:v3];

      v10 = [v8 defaultCenter];
      [v10 addObserver:v0 selector:sel_didEndLiveResizing name:*MEMORY[0x1E69DEB28] object:v3];
    }
  }
}

void sub_1D7E4BE54(void *a1)
{
  v1 = a1;
  BlueprintViewController.viewLayoutMarginsDidChange()();
}

Swift::Void __swiftcall BlueprintViewController.viewLayoutMarginsDidChange()()
{
  OUTLINED_FUNCTION_109_3();
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewLayoutMarginsDidChange);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_77_6();
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  [v2 bounds];
  OUTLINED_FUNCTION_9_0();

  if (!OUTLINED_FUNCTION_77_6())
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_6_1();
  swift_getObjectType();
  sub_1D802FE04();
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_55_11();
  v4();
  swift_unknownObjectRelease();
  memcpy(__dst, __src, 0x235uLL);
  OUTLINED_FUNCTION_1_71();
  v6 = &v1[*(v5 + 248)];
  if ((v6[4] & 1) != 0 || (v6[1] == __dst[21] ? (v7 = v6[3] == __dst[23]) : (v7 = 0), v7))
  {
    sub_1D7E4C1A0(__dst);
    goto LABEL_11;
  }

  v8 = OUTLINED_FUNCTION_77_6();
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];
    sub_1D7E4C1A0(__dst);

LABEL_11:
    OUTLINED_FUNCTION_8_48();
    return;
  }

LABEL_14:
  __break(1u);
}

void OUTLINED_FUNCTION_95_0()
{

  Blueprint.subscript.getter();
}

void OUTLINED_FUNCTION_95_1()
{

  JUMPOUT(0x1DA713260);
}

id sub_1D7E4C0E8()
{
  if (sub_1D8190B24())
  {
    v3.receiver = v0;
    v3.super_class = type metadata accessor for StatusBannerContainerController();
    v1 = objc_msgSendSuper2(&v3, sel__hostingNavigationBar);
  }

  else
  {
    v1 = [*&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController] _hostingNavigationBar];
  }

  return v1;
}

id sub_1D7E4C15C(void *a1)
{
  v1 = a1;
  MastheadViewController.contentScrollView()(v2);
  v4 = v3;

  return v4;
}

void __swiftcall MastheadViewController.contentScrollView()(UIScrollView_optional *__return_ptr retstr)
{
  OUTLINED_FUNCTION_26_15();
  v2(&v3, *(v1 + 80));
  if (v4 == 1)
  {
    if (!ScrollViewProxyManager.currentScrollView.getter())
    {
      sub_1D805BC98();
    }

    OUTLINED_FUNCTION_35_13();
  }
}

void sub_1D7E4C2B8(void *a1)
{
  v1 = a1;
  BlueprintViewController.viewSafeAreaInsetsDidChange()();
}

Swift::Void __swiftcall BlueprintViewController.viewSafeAreaInsetsDidChange()()
{
  OUTLINED_FUNCTION_109_3();
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewSafeAreaInsetsDidChange);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_77_6();
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 bounds];
  OUTLINED_FUNCTION_9_0();

  if (!OUTLINED_FUNCTION_77_6())
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_1();
  swift_getObjectType();
  sub_1D802FE04();
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_55_11();
  v4();
  swift_unknownObjectRelease();
  memcpy(__dst, __src, 0x235uLL);
  if (sub_1D8190B24() & 1) == 0 || (OUTLINED_FUNCTION_1_71(), v6 = &v1[*(v5 + 256)], (v6[4]) || (v6[1] == __dst[47] ? (v7 = v6[3] == __dst[49]) : (v7 = 0), v7))
  {
    sub_1D7E4C1A0(__dst);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_77_6();
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];
    sub_1D7E4C1A0(__dst);

LABEL_12:
    OUTLINED_FUNCTION_8_48();
    return;
  }

LABEL_15:
  __break(1u);
}

id SwipeActionCollectionView.contentOffset.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_contentOffset);
}

void sub_1D7E4C5C0(uint64_t a1, void *a2, SEL *a3)
{
  v6 = sub_1D818E584();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = [*(a1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (v13)
  {
    v14 = v13;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v17)
      {
        break;
      }

      v15 = OUTLINED_FUNCTION_9_41();
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      if ([v15 respondsToSelector_])
      {
        [v15 *a3];
      }

      swift_unknownObjectRelease();
    }

    (*(v8 + 8))(v12, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7E4C750(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintCollectionViewDelegate.scrollViewDidScroll(_:)(v4);
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_7();
  v7 = *((v6 & v5) + 0xD8);
  OUTLINED_FUNCTION_8_4();
  if (*(v2 + v7))
  {

    [(UIScrollView *)a1 contentOffset];
    OUTLINED_FUNCTION_13_25();
    sub_1D7E6DA44(*(v2 + *(v8 + 256)), *(v2 + *(v8 + 256) + 8), *(v2 + *(v8 + 256) + 16), v9, v10);
  }

  [(UIScrollView *)a1 contentOffset];
  OUTLINED_FUNCTION_13_25();
  v12 = v2 + *(v11 + 256);
  *v12 = v13;
  *(v12 + 1) = v14;
  v12[16] = 0;
  v15 = [(UIScrollView *)a1 superview];
  if (v15)
  {
    v16 = v15;
    OUTLINED_FUNCTION_13_25();
    v18 = *(v2 + *(v17 + 152));
    v20 = [v19 coordinateSpace];
    [(UIScrollView *)a1 bounds];
    OUTLINED_FUNCTION_9_0();
    sub_1D7E45D98();
    v21 = OUTLINED_FUNCTION_8_0();
    UIEdgeInsetsInsetRect(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_9_0();
    v27 = [v16 coordinateSpace];
    v28 = OUTLINED_FUNCTION_8_0();
    [v29 v30];
    OUTLINED_FUNCTION_9_0();
    swift_unknownObjectRelease();

    v31 = OUTLINED_FUNCTION_8_0();
    sub_1D7E4CC00(v32, v33, v31, v34, v35, v36);
    v37 = v18 + *(*v18 + 184);
    *v37 = v57;
    *(v37 + 8) = v58;
    *(v37 + 24) = v59;
    swift_unknownObjectRelease();
  }

  [(UIScrollView *)a1 contentOffset];
  v40 = v38;
  v41 = v39;
  v42 = (v2 + *((*v4 & *v2) + 0xF8));
  if (v42[2])
  {
    goto LABEL_18;
  }

  v44 = *v42;
  v43 = v42[1];
  v45 = vabdd_f64(*v42, v38);
  v46 = vabdd_f64(v43, v39);
  v47 = *((*v4 & *v2) + 0xF0);
  OUTLINED_FUNCTION_8_4();
  v48 = *(v2 + v47);
  if (v48 < v45 || v48 < v46)
  {
    OUTLINED_FUNCTION_13_25();
    sub_1D7E25620(v2 + *(v50 + 288), &v57, &qword_1EDBB8200, qword_1EDBB8208, &protocol descriptor for BlueprintPrefetcherType);
    v51 = v59;
    if (v59)
    {
      v52 = *(&v59 + 1);
      __swift_project_boxed_opaque_existential_1(&v57, v59);
      v53 = 2 * (v40 >= v44);
      if (v44 < v40)
      {
        v53 = 1;
      }

      v54 = 2 * (v41 >= v43);
      if (v43 < v41)
      {
        v54 = 1;
      }

      v56[0] = v53;
      v56[1] = v54;
      OUTLINED_FUNCTION_82_2();
      v55(v56, v51, v52);
      __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    }

    else
    {
      sub_1D7E25DBC(&v57, &qword_1EDBB8200, qword_1EDBB8208, &protocol descriptor for BlueprintPrefetcherType);
    }

LABEL_18:
    *v42 = v40;
    v42[1] = v41;
    *(v42 + 16) = 0;
    sub_1D7E499B0(a1, 2u);
    OUTLINED_FUNCTION_13_25();
    LOBYTE(v57) = 3;
    BlueprintImpressionManager.updateImpressions(triggerSource:)();
  }
}

void *TransitionContainerViewController.childForStatusBarStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1D7E4CC00@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void BlueprintImpressionManager.updateImpressions(triggerSource:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  OUTLINED_FUNCTION_36_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36_6();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_47();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_1_47();
  v43 = AssociatedTypeWitness;
  v44 = v8;
  v42 = AssociatedConformanceWitness;
  v45 = AssociatedConformanceWitness;
  v46 = swift_getAssociatedConformanceWitness();
  v10 = v46;
  v11 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v41 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v40 = v14;
  v15 = *v3;
  if (v15 >= 0 != *(v1 + *(v4 + 152)) && (sub_1D7E481B0() & 1) != 0)
  {
    v16 = OUTLINED_FUNCTION_42_0();
    v35 = &v31;
    MEMORY[0x1EEE9AC00](v16);
    v38 = v11;
    OUTLINED_FUNCTION_60_4(&v31);
    *(v17 - 16) = sub_1D7EB58DC;
    *(v17 - 8) = v1;
    v39 = sub_1D818E994();
    sub_1D8190DB4();
    v43 = v6;
    v44 = AssociatedTypeWitness;
    v45 = v8;
    v46 = v5;
    v47 = v42;
    v48 = v10;
    v37 = v10;
    WitnessTable = type metadata accessor for BlueprintImpressionManager.Context();
    OUTLINED_FUNCTION_0_87();
    v33 = sub_1D7E2491C(v18, v19);
    v36 = sub_1D8190DC4();
    v32 = &v31;
    v43 = v36;
    v20 = MEMORY[0x1EEE9AC00](v36);
    *(&v31 - 2) = v1;
    *(&v31 - 8) = v15;
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_60_4(&v31);
    *(v21 - 16) = sub_1D7FBC478;
    *(v21 - 8) = v22;
    v35 = sub_1D8190E14();
    WitnessTable = swift_getWitnessTable();
    sub_1D8191224();
    OUTLINED_FUNCTION_53_4();
    v23 = v40;
    BlueprintProviderType.blueprint.getter(v6, v5);
    v24 = swift_beginAccess();
    v32 = &v31;
    v25 = MEMORY[0x1EEE9AC00](v24);
    *(&v31 - 4) = v1;
    *(&v31 - 24) = v15;
    *(&v31 - 2) = v23;
    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_60_4(&v31);
    *(v26 - 16) = sub_1D7EB6C30;
    *(v26 - 8) = v27;
    sub_1D8190DB4();
    v43 = v6;
    v44 = AssociatedTypeWitness;
    v45 = v8;
    v46 = v5;
    v47 = v42;
    v48 = v37;
    type metadata accessor for BlueprintImpressionManager.StagedContext();
    v1[7] = sub_1D8190DC4();

    v43 = v36;
    v29 = MEMORY[0x1EEE9AC00](v28);
    *(&v31 - 2) = v23;
    *(&v31 - 1) = v1;
    MEMORY[0x1EEE9AC00](v29);
    *(&v31 - 4) = v6;
    *(&v31 - 3) = v5;
    *(&v31 - 2) = sub_1D7FBC4A4;
    *(&v31 - 1) = v30;
    sub_1D8191224();

    (*(v41 + 8))(v23, v38);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t OUTLINED_FUNCTION_96_0(uint64_t a1)
{

  return BlueprintLayout.subscript.getter(v1, a1);
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_1D818F784();
}

id sub_1D7E4D1B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController + 8);
  v7 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  sub_1D818F154();

  if (v8 == 1 && (v3 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController + 8), v4 = swift_getObjectType(), ((*(v3 + 16))(v4, v3) & 1) != 0))
  {
    v5 = v7;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController);
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_mutable_project_boxed_opaque_existential_1(&a10, v14);
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return sub_1D8191A54();
}

uint64_t OUTLINED_FUNCTION_60_3()
{

  return sub_1D8191314();
}

uint64_t OUTLINED_FUNCTION_60_7()
{

  return type metadata accessor for BlueprintItem();
}

uint64_t OUTLINED_FUNCTION_60_8()
{
}

Swift::Void __swiftcall LazyViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = LazyViewController.loadedViewController.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_1D818EF44();
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t OUTLINED_FUNCTION_53_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1D7E1C3D8(a1, v2, va);
}

uint64_t OUTLINED_FUNCTION_53_7()
{

  return swift_unknownObjectWeakInit();
}

Swift::Void __swiftcall TransitionContainerViewController.viewWillLayoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillLayoutSubviews);
  TransitionContainerViewController.installBarButtonItems()();
  v1 = [*&v0[OBJC_IVAR___TSTransitionContainerViewController_rootViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      [v3 bounds];
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_18_7(v4, sel_setFrame_);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id NSAttributedString.font.getter()
{
  if ([v0 length] >= 1)
  {
    v1 = [v0 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key();
    sub_1D7E4DB28();
    sub_1D8190D54();

    sub_1D7E4E660();

    if (v7)
    {
      sub_1D7E4E810();
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_1D7E7BAAC(v6);
    }
  }

  v3 = objc_opt_self();
  [v3 systemFontSize];
  v4 = [v3 systemFontOfSize_];

  return v4;
}

id sub_1D7E4D7B4()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for StatusBannerContainerController();
  objc_msgSendSuper2(&v40, sel_viewWillLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController];
  v3 = *&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController + 8];
  ObjectType = swift_getObjectType();
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  result = OUTLINED_FUNCTION_18_13();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  [result bounds];
  OUTLINED_FUNCTION_9_0();

  v8 = OUTLINED_FUNCTION_8_0();
  [v9 v10];

  v11 = *&v1[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController];
  v12 = *&v1[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController + 8];
  v13 = swift_getObjectType();
  sub_1D7E4DBC8();
  OUTLINED_FUNCTION_11();
  [v11 v14];
  (*(v12 + 8))(v13, v12);
  sub_1D818F154();

  if (v39 != 1 || ((*(v3 + 16))(ObjectType, v3) & 1) == 0)
  {
    result = [v11 view];
    if (result)
    {
      v25 = result;
      sub_1D7E4DCF4();
      v27 = v26;
      result = OUTLINED_FUNCTION_18_13();
      if (result)
      {
        v28 = result;
        [result bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v42.origin.x = v30;
        v42.origin.y = v32;
        v42.size.width = v34;
        v42.size.height = v36;
        Width = CGRectGetWidth(v42);
        sub_1D7E4DCF4();
        [v25 setFrame_];

        v21 = *MEMORY[0x1E69DDCE0];
        v22 = *(MEMORY[0x1E69DDCE0] + 8);
        v23 = *(MEMORY[0x1E69DDCE0] + 16);
        v24 = *(MEMORY[0x1E69DDCE0] + 24);
        v20 = sel_setAdditionalSafeAreaInsets_;
        return [v2 v20];
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = [v11 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  result = OUTLINED_FUNCTION_18_13();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
  [result bounds];
  OUTLINED_FUNCTION_9_0();

  v41.origin.x = OUTLINED_FUNCTION_8_0();
  v17 = CGRectGetWidth(v41);
  sub_1D7E4DCF4();
  [v15 setFrame_];

  sub_1D7E4DCF4();
  result = OUTLINED_FUNCTION_18_13();
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    OUTLINED_FUNCTION_11();
    return [v2 v20];
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1D7E4DB28()
{
  result = qword_1EDBB30F0;
  if (!qword_1EDBB30F0)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB30F0);
  }

  return result;
}

double sub_1D7E4DBC8()
{
  v1 = [v0 tabBarController];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  Height = 0.0;
  if (v4 == 2)
  {
    v6 = [v2 sidebar];
    v7 = [v6 isHidden];

    if (v7)
    {
      v8 = [v0 _hostingNavigationBar];
      if (v8)
      {
        v9 = v8;
        if ([v0 _shouldOverlayTabBar])
        {
          [v9 frame];
          Height = CGRectGetHeight(v12);
          v10 = v2;
          v2 = v9;
        }

        else
        {
          v10 = v9;
        }
      }
    }
  }

  return Height;
}

void sub_1D7E4DCF4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 safeAreaInsets];

    sub_1D7E4DBC8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7E4DD64(void *a1)
{
  v1 = a1;
  MastheadViewController.viewDidLoad()();
}

uint64_t sub_1D7E4DDCC()
{
  sub_1D8190F14();
  sub_1D81927E4();
  sub_1D8190FF4();
  v0 = sub_1D8192824();

  return v0;
}

Swift::Void __swiftcall MastheadViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v68.receiver = v0;
  v68.super_class = ObjectType;
  objc_msgSendSuper2(&v68, sel_viewDidLoad);
  v5 = [v0 traitCollection];
  v6 = sub_1D7E4E53C(v5);

  v7 = MastheadViewController.navigationItem.getter();
  [v7 setTitleView_];

  v8 = *&v1[qword_1EDBB88B8];
  v9 = *((v4 & v3) + 0x58);
  v10 = *((v4 & v3) + 0x50);
  v60 = *(v9 + 16);
  v60(&v65, v10, v9);
  v11 = v65;
  if (BYTE8(v65) == 1)
  {
    OUTLINED_FUNCTION_56();
    v11[3] = &protocol witness table for MastheadViewController<A>;
    swift_unknownObjectWeakAssign();
    OUTLINED_FUNCTION_7();
    swift_beginAccess();

    sub_1D818F154();

    v12 = v65;
    if (v65)
    {
LABEL_5:
      sub_1D7E4E678(v11, 1);

      goto LABEL_8;
    }

    if (v6)
    {
      v12 = v6;
      [v12 setContentAlpha_];
      goto LABEL_5;
    }

    v13 = v11;
    v14 = 1;
  }

  else
  {
    v13 = v65;
    v14 = 0;
  }

  sub_1D7E4E678(v13, v14);
LABEL_8:
  v15 = [v1 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_37;
  }

  v16 = v15;
  [v15 addSubview_];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = v17;
  v19 = [v8 view];
  if (!v19)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = v19;
  v58 = v6;
  v59 = v10;
  [v18 addSubview_];

  [v8 didMoveToParentViewController_];
  v21 = [v1 &selRef_verticalOffset];
  if (!v21)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = *&v1[qword_1EDBB88A0];
  [v21 addSubview_];

  v24 = &v1[qword_1EDBB8880];
  v26 = *&v1[qword_1EDBB8880 + 24];
  v25 = *&v1[qword_1EDBB8880 + 32];
  __swift_project_boxed_opaque_existential_1(&v1[qword_1EDBB8880], v26);
  v27 = (*(v25 + 8))(v26, v25);
  [v23 addSubview_];

  v28 = *&v1[qword_1EDBB88A8];
  [v23 addSubview_];
  [v28 setHidden_];
  sub_1D8095754(v8, &v63);
  if (v64)
  {
    sub_1D7E05450(&v63, &v65);
    v29 = *(&v66 + 1);
    v30 = v67;
    __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
    (*(v30 + 8))(v29, v30);
    CoverViewManager.$isCovering.getter();

    sub_1D818F4E4();

    __swift_destroy_boxed_opaque_existential_1Tm(&v65);
  }

  else
  {
    OUTLINED_FUNCTION_0_152();
    sub_1D805F144(&v63, v31, v32, v33, v34);
  }

  v60(&v65, v59, v9);
  v35 = v65;
  if (BYTE8(v65))
  {
    sub_1D7E4E678(v65, 1);
  }

  else
  {
    sub_1D7E5C4B0(v65, &v65);
    sub_1D7E4E678(v35, 0);
    v36 = qword_1EDBB8848;
    OUTLINED_FUNCTION_15_2();
    sub_1D7E5C8DC(&v65, &v1[v36]);
    swift_endAccess();
  }

  v37 = [v1 view];
  if (!v37)
  {
    goto LABEL_40;
  }

  v38 = v37;
  v61 = v24;
  sub_1D7E5C970();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAC0;
  v40 = type metadata accessor for PassthroughView();
  *(inited + 32) = v23;
  *(inited + 56) = v40;
  v41 = v23;
  v42 = [v8 view];
  v43 = v42;
  if (v42)
  {
    v42 = sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  }

  else
  {
    *(inited + 72) = 0;
    *(inited + 80) = 0;
  }

  v44 = 0;
  v45 = 0;
  *(inited + 64) = v43;
  *(inited + 88) = v42;
  v46 = MEMORY[0x1E69E7CC0];
  do
  {
    v47 = v44;
    sub_1D7E5C9DC(inited + 32 + 32 * v45, &v65, &qword_1EDBBC780);
    v62[0] = v65;
    v62[1] = v66;
    if (*(&v66 + 1))
    {
      sub_1D7E1C664(v62, &v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7E5CAAC();
        v46 = v49;
      }

      v48 = *(v46 + 16);
      if (v48 >= *(v46 + 24) >> 1)
      {
        sub_1D7E5CAAC();
        v46 = v50;
      }

      *(v46 + 16) = v48 + 1;
      sub_1D7E1C664(&v63, (v46 + 32 * v48 + 32));
    }

    else
    {
      sub_1D7E74104(v62, &qword_1EDBBC780);
    }

    v44 = 1;
    v45 = 1;
  }

  while ((v47 & 1) == 0);
  swift_setDeallocating();
  sub_1D7E5CB98();
  v51 = sub_1D8191304();

  [v38 setAccessibilityElements_];

  __swift_project_boxed_opaque_existential_1(v61, *(v61 + 3));
  v52 = OUTLINED_FUNCTION_11_0();
  v53(v52);
  if (*&v1[qword_1EDBB8868 + 8])
  {
    sub_1D8190DB4();
    sub_1D7E5AC2C();
    v54 = OUTLINED_FUNCTION_11_0();
    v56 = sub_1D7E88284(v54, v55);

    if (v56)
    {

      MastheadViewController.plugin.setter(v57);
    }
  }
}

uint64_t sub_1D7E4E53C(uint64_t a1)
{
  sub_1D7E41C50(v1 + qword_1EDBB88C8, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 32))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1D805F144(v7, &qword_1EDBB64D0, &unk_1EDBB64D8, &protocol descriptor for MiniMastheadViewProviderType, sub_1D7E0631C);
    return 0;
  }

  return v5;
}

double sub_1D7E4E608()
{
  OUTLINED_FUNCTION_10_9();
  if (!v1)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v2 = v0();
  if ((v3 & 1) == 0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v4 = OUTLINED_FUNCTION_4_9(v2);

  sub_1D7E1B288(v4, v5);
  return result;
}

void sub_1D7E4E678(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1D7E4E68C()
{
  sub_1D8190F14();
  sub_1D81927E4();
  sub_1D8190FF4();
  sub_1D8192824();

  v0 = OUTLINED_FUNCTION_159();
  return sub_1D7E4E718(v0, v1);
}

unint64_t sub_1D7E4E718(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1D8190F14();
    v7 = v6;
    if (v5 == sub_1D8190F14() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1D8192634();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1D7E4E810()
{
  result = qword_1EDBB2FE0;
  if (!qword_1EDBB2FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2FE0);
  }

  return result;
}

uint64_t adjustLayoutDirection<A>(inSize:block:)(void (*a1)(uint64_t *))
{
  v2 = sub_1D818E7D4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  sub_1D818E7C4();
  type metadata accessor for RTLAdjuster();
  v4 = swift_allocObject();
  v4[5] = v2;
  v4[6] = sub_1D7E4E9A0();
  __swift_allocate_boxed_opaque_existential_0(v4 + 2);
  OUTLINED_FUNCTION_4_92();
  v5();
  v4[7] = 0;
  v4[8] = 0;
  v6 = OUTLINED_FUNCTION_6_88();
  v7(v6);
  a1(v4);
}

unint64_t sub_1D7E4E9A0()
{
  result = qword_1EDBBD070;
  if (!qword_1EDBBD070)
  {
    sub_1D818E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBD070);
  }

  return result;
}

__C::CGRect __swiftcall RTLAdjuster.frame(_:alignment:)(__C::CGRect _, TeaUI::RTLAdjuster::Alignment alignment)
{
  OUTLINED_FUNCTION_155();
  v4 = *v3;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if (sub_1D818EDA4())
  {
    CGRectGetMaxX(*(v2 + 56));
    v9.origin.x = OUTLINED_FUNCTION_80();
    CGRectGetMaxX(v9);
    v10.origin.x = OUTLINED_FUNCTION_80();
    CGRectGetMinY(v10);
    v11.origin.x = OUTLINED_FUNCTION_80();
    CGRectGetWidth(v11);
    v12.origin.x = OUTLINED_FUNCTION_80();
    CGRectGetHeight(v12);
  }

  if ((v4 & 1) == 0)
  {
    v13.origin.x = OUTLINED_FUNCTION_80();
    CGRectIntegral(v13);
  }

  v5 = OUTLINED_FUNCTION_80();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

uint64_t RTLAdjuster.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

void DebouncedSet.remove(_:after:wasRemoved:)(uint64_t a1, void (*a2)(void), uint64_t a3, double a4)
{
  v9 = *(*v4 + 80);
  v10 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18[-v14];
  v16 = v4[2];
  v19 = a1;
  v20 = a4;
  v21 = v4;
  v22 = a2;
  v23 = a3;
  v17 = type metadata accessor for DebouncedSet.State();
  sub_1D7E4ECC8(sub_1D7E4ED54, v18, v16, v17, MEMORY[0x1E69E6370]);
  if (v24 == 1)
  {
    if (a2)
    {
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v9);
      a2(v15);
      (*(v12 + 8))(v15, v10);
    }
  }
}

void sub_1D7E4ED7C(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1D7E4EE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v44 = a5;
  v14 = *(*a3 + 80);
  v43 = *(v14 - 8);
  v45 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v34 - v15;
  v18 = *(v17 + 88);
  result = sub_1D81916B4();
  if (result)
  {
    v38 = a4;
    v39 = a6;
    v40 = v7;
    v37 = a1 + 8;
    sub_1D7E34C50();
    v36 = v20;
    v42 = v18;
    sub_1D8190E24();
    if (v46)
    {
      v21 = *(v46 + 40);
      if (v21)
      {
        [v21 invalidate];
      }
    }

    v22 = v43;
    v35 = *(v43 + 16);
    v35(v16, a2, v14);
    v23 = *(v22 + 80);
    v41 = a2;
    v24 = swift_allocObject();
    v25 = v42;
    v24[2] = v14;
    v24[3] = v25;
    v24[4] = a3;
    v43 = *(v22 + 32);
    (v43)(v24 + ((v23 + 40) & ~v23), v16, v14);
    swift_allocObject();
    v26 = sub_1D7FA917C(sub_1D803D3A8, v24, a7);
    v27 = v35;
    v35(v16, v41, v14);
    v46 = v26;
    v34[1] = v26;
    v28 = v42;
    sub_1D8190E14();

    sub_1D8190E34();
    v27(v16, v41, v14);
    v29 = swift_allocObject();
    *(v29 + 2) = v14;
    *(v29 + 3) = v28;
    v30 = v38;
    v31 = v43;
    v32 = v44;
    *(v29 + 4) = v38;
    *(v29 + 5) = v32;
    v31(&v29[(v23 + 48) & ~v23], v16, v14);
    sub_1D7E19F24(v30);
    sub_1D7FA81D8(sub_1D803D3E4, v29);

    v33 = 0;
    a6 = v39;
  }

  else
  {
    v33 = 1;
  }

  *a6 = v33;
  return result;
}

uint64_t sub_1D7E4F15C()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7E4F210()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  if (*(v0 + 32))
  {
  }

  (*(v3 + 8))(v0 + ((v4 + 48) & ~v4), v1);

  return swift_deallocObject();
}

void sub_1D7E4F2CC(void *a1)
{
  v1 = a1;
  BlueprintViewController.viewWillLayoutSubviews()();
}

Swift::Void __swiftcall BlueprintViewController.viewWillLayoutSubviews()()
{
  v3 = v0;
  ObjectType = swift_getObjectType();
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v165 = *MEMORY[0x1E69E7D40] & v5;
  v178.receiver = v3;
  v178.super_class = ObjectType;
  objc_msgSendSuper2(&v178, sel_viewWillLayoutSubviews);
  OUTLINED_FUNCTION_6_81();
  v8 = v3 + *(v7 + 240);
  v179.origin.x = OUTLINED_FUNCTION_64_8();
  v188.origin.x = 0.0;
  v188.origin.y = 0.0;
  v188.size.width = 0.0;
  v188.size.height = 0.0;
  v167 = CGRectEqualToRect(v179, v188);
  OUTLINED_FUNCTION_6_81();
  v10 = *(v9 + 168);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v169 = v10;
  v11 = *(v3 + v10);
  v12 = *((v6 & v5) + 0x70);
  v13 = *(v12 + 56);
  v14 = *((v6 & v5) + 0x58);
  swift_unknownObjectRetain();
  v15 = v11;
  v170 = v14;
  v171 = v12;
  v168 = v13;
  v13(v14, v12);
  OUTLINED_FUNCTION_6_1();
  swift_unknownObjectRelease();
  v16 = [v3 view];
  if (!v16)
  {
    goto LABEL_96;
  }

  v17 = v16;
  [v16 bounds];
  OUTLINED_FUNCTION_9_0();

  v18 = OUTLINED_FUNCTION_8_0();
  [v19 v20];

  OUTLINED_FUNCTION_6_81();
  CoverViewManager.layoutIfNeeded()();
  v163 = *(v8 + 2);
  v164 = *(v8 + 3);
  OUTLINED_FUNCTION_6_81();
  v22 = (v3 + *(v21 + 176));
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v23 = v22[1];
  swift_unknownObjectRetain();
  v24 = [v3 view];
  if (!v24)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v25 = v24;
  [v24 bounds];
  Height = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (![v3 view])
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  OUTLINED_FUNCTION_6_1();
  v34 = swift_getObjectType();
  sub_1D802FE04();
  v36 = v35;
  v38 = v37;
  OUTLINED_FUNCTION_83_4();

  LOBYTE(v176[0]) = 1;
  (*(v23 + 64))(__src, v176, v34, v23, Height, v29, v31, v33, v36, v38);
  swift_unknownObjectRelease();
  memcpy(__dst, __src, sizeof(__dst));
  v39 = v22[1];
  swift_getObjectType();
  v40 = *(v39 + 16);
  swift_unknownObjectRetain();
  v41 = OUTLINED_FUNCTION_41_12();
  v40(v41);
  OUTLINED_FUNCTION_79_5();
  sub_1D818F154();

  memcpy(v176, v174, 0x245uLL);
  if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(v176) == 1)
  {
    HIDWORD(v162) = 0;
  }

  else
  {
    memcpy(v172, &v176[2], 0x235uLL);
    memcpy(v173, __dst, 0x235uLL);
    sub_1D7E222B8(&v176[2], v174);
    BlueprintLayoutOptions.validate(layoutOptions:)(v173);
    sub_1D7E4C1A0(&v176[2]);
    HIDWORD(v162) = 0;
    memcpy(v172, v176, 0x245uLL);
    nullsub_1(v172);
    OUTLINED_FUNCTION_6_81();
    v43 = *(v42 + 272);
    memcpy(v174, v3 + v43, 0x245uLL);
    memcpy(v3 + v43, v172, 0x245uLL);
    OUTLINED_FUNCTION_39_16();
    sub_1D7E92620(v174, v44, v45, v46, sub_1D7E2A1A0);
  }

  v47 = v22[1];
  swift_getObjectType();
  v48 = *(v47 + 32);
  swift_unknownObjectRetain();
  v49 = OUTLINED_FUNCTION_41_12();
  v48(v49);
  swift_unknownObjectRelease();
  v50 = v174[0];
  v51 = v22[1];
  swift_getObjectType();
  v52 = v51[3];
  swift_unknownObjectRetain();
  v53 = OUTLINED_FUNCTION_41_12();
  v52(v53);
  swift_unknownObjectRelease();
  if (v173[647] == 1)
  {
    v54 = MEMORY[0x1E69E7D40];
    v55 = v169;
    if (v50)
    {
      v180.origin.x = OUTLINED_FUNCTION_64_8();
      Width = CGRectGetWidth(v180);
      OUTLINED_FUNCTION_80_4();
      v168(v170, v171);
      OUTLINED_FUNCTION_79_5();
      v56 = [v51 readableContentGuide];

      [v56 layoutFrame];
      OUTLINED_FUNCTION_106_2();
      OUTLINED_FUNCTION_94_3();
      if (Width != CGRectGetWidth(v181))
      {
        goto LABEL_38;
      }

      v2 = *v8;
      OUTLINED_FUNCTION_80_4();
      v168(v170, v171);
      OUTLINED_FUNCTION_79_5();
      v57 = [v51 readableContentGuide];

      [v57 layoutFrame];
      Width = v58;

      if (v2 != Width)
      {
        goto LABEL_38;
      }
    }

    if ((v50 & 2) != 0)
    {
      v184.origin.x = OUTLINED_FUNCTION_64_8();
      Width = CGRectGetHeight(v184);
      OUTLINED_FUNCTION_80_4();
      v168(v170, v171);
      OUTLINED_FUNCTION_79_5();
      v69 = [v51 readableContentGuide];

      [v69 layoutFrame];
      OUTLINED_FUNCTION_106_2();
      OUTLINED_FUNCTION_94_3();
      if (Width != CGRectGetHeight(v185))
      {
        goto LABEL_38;
      }

      v2 = *(v8 + 1);
      OUTLINED_FUNCTION_80_4();
      v168(v170, v171);
      OUTLINED_FUNCTION_79_5();
      v70 = [v51 readableContentGuide];

      [v70 layoutFrame];
      Width = v71;

      if (v2 != Width)
      {
        goto LABEL_38;
      }
    }

    v59 = (v3 + *((*v54 & *v3) + 0xF8));
    if (v59[4])
    {
      v60 = 0;
    }

    else
    {
      v72 = v59[3];
      v60 = v59[1] != *&__dst[168];
      if (v72 != *&__dst[184])
      {
        v60 = 1;
      }
    }

    if (v167 || v60 || (v73 = *((*v54 & *v3) + 0xE0), OUTLINED_FUNCTION_7(), swift_beginAccess(), v74 = *(v3 + v73), v75 = v168, (v74 & 1) == 0))
    {
LABEL_38:
      OUTLINED_FUNCTION_3_116();
      v77 = *(v76 + 224);
      OUTLINED_FUNCTION_56();
      v61 = *(v3 + v77) == 0;
      *(v3 + v77) = 1;
      if (v61)
      {
        v78 = 5;
      }

      else
      {
        v78 = 6;
      }

      HIDWORD(v162) = v78;
      OUTLINED_FUNCTION_3_116();
      v80 = v3 + *(v79 + 128);
      OUTLINED_FUNCTION_7();
      swift_beginAccess();
      if (*(v80 + 24))
      {
        sub_1D7E0E768(v80, v172);
        v81 = v172[3];
        v51 = v172[4];
        __swift_project_boxed_opaque_existential_1(v172, v172[3]);
        swift_unknownObjectRetain();
        v82 = (v168)(v170, v171);
        swift_unknownObjectRelease();
        v83 = [v82 readableContentGuide];

        [v83 layoutFrame];
        OUTLINED_FUNCTION_83_4();

        v92 = OUTLINED_FUNCTION_66_7(v84, v85, v86, v87, v88, v89, v90, v91, *&v161, *&v162, *&v163);
        v93 = v81;
        v55 = v169;
        v94(v93, v51, v92);
        sub_1D7E770EC(v174);
        __swift_destroy_boxed_opaque_existential_1Tm(v172);
      }

      OUTLINED_FUNCTION_3_116();
      v96 = *(v95 + 144);
      OUTLINED_FUNCTION_7();
      swift_beginAccess();
      if (*(v3 + v96))
      {
        v51 = *(v3 + v55);
        v97 = *v22;
        v98 = v22[1];

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1D7F81CBC(v51, v97, v98, v170, v171);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_3_116();
      OUTLINED_FUNCTION_7();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v75 = v168;
      if (Strong)
      {
        v51 = Strong;
        OUTLINED_FUNCTION_80_4();
        v100 = (v168)(v170, v171);
        swift_unknownObjectRelease();
        v101 = [v100 readableContentGuide];

        (*(*(v165 + 120) + 40))(v101, *(v165 + 96));
      }

      OUTLINED_FUNCTION_103_3(SBYTE4(v162), v161, v162, v163, v164, v165, v166, v167);
    }

    OUTLINED_FUNCTION_80_4();
    v75(v170, v171);
    OUTLINED_FUNCTION_79_5();
    v102 = [v51 readableContentGuide];

    [v102 layoutFrame];
    OUTLINED_FUNCTION_9_0();

    *v8 = Width;
    *(v8 + 1) = v2;
    *(v8 + 2) = Height;
    *(v8 + 3) = v29;
    OUTLINED_FUNCTION_3_116();
    v104 = v3 + *(v103 + 256);
    v105 = *&__dst[384];
    *v104 = *&__dst[368];
    *(v104 + 1) = v105;
    v104[32] = 0;
    OUTLINED_FUNCTION_3_116();
    OUTLINED_FUNCTION_70_7(*(v106 + 248));
    goto LABEL_82;
  }

  if (v50)
  {
    v182.origin.x = OUTLINED_FUNCTION_64_8();
    Height = CGRectGetWidth(v182);
    OUTLINED_FUNCTION_44_11();
    if (!(v62 ^ v63 | v61))
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_85;
    }

    if (Height >= 9.22337204e18)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v64 = [v3 view];
    if (!v64)
    {
LABEL_103:
      __break(1u);
      __break(1u);
      goto LABEL_104;
    }

    [v64 bounds];
    OUTLINED_FUNCTION_107_3();
    OUTLINED_FUNCTION_94_3();
    CGRectGetWidth(v183);
    OUTLINED_FUNCTION_44_11();
    if (!(v62 ^ v63 | v61))
    {
      goto LABEL_87;
    }

    if (v65 <= -9.22337204e18)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v65 >= 9.22337204e18)
    {
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (*&Height != *&v65)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_3_116();
    v67 = (v3 + *(v66 + 248));
    if (v67[4])
    {
      v68 = 0;
      goto LABEL_52;
    }

    if (v67[1] == *&__dst[168])
    {
      v68 = v67[3] != *&__dst[184];
    }

    else
    {
LABEL_51:
      v68 = 1;
    }

LABEL_52:
    if (sub_1D8190B24())
    {
      if (v68)
      {
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_3_116();
      v108 = (v3 + *(v107 + 256));
      if ((v108[4] & 1) == 0 && (v108[1] != *&__dst[376] || v108[3] != *&__dst[392]))
      {
        goto LABEL_73;
      }
    }

    else if (v68)
    {
      goto LABEL_73;
    }

    if ((v50 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

  if ((v50 & 2) == 0)
  {
LABEL_16:
    if (v167)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

LABEL_60:
  v186.origin.x = OUTLINED_FUNCTION_64_8();
  Height = CGRectGetHeight(v186);
  OUTLINED_FUNCTION_44_11();
  if (!(v62 ^ v63 | v61))
  {
    goto LABEL_90;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v109 = [v3 view];
  if (v109)
  {
    [v109 bounds];
    OUTLINED_FUNCTION_107_3();
    OUTLINED_FUNCTION_94_3();
    CGRectGetHeight(v187);
    OUTLINED_FUNCTION_44_11();
    if (v62 ^ v63 | v61)
    {
      if (v110 > -9.22337204e18)
      {
        if (v110 < 9.22337204e18)
        {
          if (v167 || *&Height != *&v110)
          {
            goto LABEL_73;
          }

LABEL_71:
          OUTLINED_FUNCTION_3_116();
          v112 = *(v3 + *(v111 + 264));
          if (v112 == (UIViewController.isPreviewing.getter() & 1))
          {
            OUTLINED_FUNCTION_3_116();
            v114 = *(v113 + 224);
            OUTLINED_FUNCTION_7();
            swift_beginAccess();
            if (*(v3 + v114))
            {
LABEL_80:
              UIViewController.isPreviewing.getter();
              OUTLINED_FUNCTION_3_116();
              *(v3 + *(v134 + 264)) = v135 & 1;
              v136 = [v3 view];
              if (!v136)
              {
LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

              v137 = v136;
              [v136 bounds];
              OUTLINED_FUNCTION_9_0();

              *v8 = Width;
              *(v8 + 1) = v2;
              *(v8 + 2) = Height;
              *(v8 + 3) = v29;
              OUTLINED_FUNCTION_3_116();
              v139 = v3 + *(v138 + 256);
              v140 = *&__dst[384];
              *v139 = *&__dst[368];
              *(v139 + 1) = v140;
              v139[32] = 0;
              OUTLINED_FUNCTION_3_116();
              OUTLINED_FUNCTION_70_7(*(v141 + 248));
              v75 = v168;
LABEL_82:
              OUTLINED_FUNCTION_3_116();
              v143 = *(v3 + *(v142 + 208));
              v144 = [v3 view];
              if (v144)
              {
                v145 = v144;
                v146 = [v144 coordinateSpace];

                swift_unknownObjectRetain();
                v147 = (v75)(v170, v171);
                swift_unknownObjectRelease();
                v148 = [v3 view];
                if (v148)
                {
                  v149 = v148;
                  v150 = [v148 coordinateSpace];

                  v151 = OUTLINED_FUNCTION_8_0();
                  [v152 v153];
                  OUTLINED_FUNCTION_9_0();

                  swift_unknownObjectRelease();
                  v154 = OUTLINED_FUNCTION_8_0();
                  sub_1D7E4CC00(v155, v156, v154, v157, v158, v159);
                  v160 = v143 + *(*v143 + 184);
                  *v160 = v174[0];
                  *(v160 + 8) = *&v174[1];
                  *(v160 + 24) = *&v174[3];
                  swift_unknownObjectRelease();
                  LOBYTE(v174[0]) = 5;
                  BlueprintImpressionManager.updateImpressions(triggerSource:)();
                  sub_1D7E4C1A0(__dst);
                  return;
                }

                goto LABEL_100;
              }

LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }
          }

LABEL_73:
          OUTLINED_FUNCTION_3_116();
          v116 = v3 + *(v115 + 128);
          OUTLINED_FUNCTION_7();
          swift_beginAccess();
          if (*(v116 + 24))
          {
            sub_1D7E0E768(v116, v172);
            v118 = v172[3];
            v117 = v172[4];
            __swift_project_boxed_opaque_existential_1(v172, v172[3]);
            v119 = [v3 view];
            if (!v119)
            {
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }

            v120 = v119;
            [v119 bounds];
            OUTLINED_FUNCTION_83_4();

            v129 = OUTLINED_FUNCTION_66_7(v121, v122, v123, v124, v125, v126, v127, v128, *&v161, COERCE_DOUBLE(v162), *&v163);
            v130(v118, v117, v129);
            sub_1D7E770EC(v174);
            __swift_destroy_boxed_opaque_existential_1Tm(v172);
          }

          OUTLINED_FUNCTION_3_116();
          v132 = *(v131 + 224);
          OUTLINED_FUNCTION_56();
          if (*(v3 + v132))
          {
            v133 = 6;
          }

          else
          {
            v133 = 5;
          }

          *(v3 + v132) = 1;
          OUTLINED_FUNCTION_103_3(v133, v161, v162, v163, v164, v165, v166, v167);
          goto LABEL_80;
        }

        goto LABEL_95;
      }

LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_104:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_94_1()
{
  v2 = v0[9];
  v0[17] = v0[8];
  v0[18] = v2;
  v3 = v0[6];
  v0[19] = v0[7];
  v0[20] = v3;

  return type metadata accessor for BlueprintLayout();
}

uint64_t BlueprintLayoutOptionsProvider.layoutViewportDimensionChecks.getter@<X0>(void *a1@<X8>)
{
  result = OUTLINED_FUNCTION_10();
  *a1 = *(v1 + 48);
  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t BlueprintLayoutOptionsProvider.layoutViewportConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_10();
  *a1 = *(v1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_100_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_88_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  result = *(v6 + 8 * v5);
  *(v6 + 8 * v5) = v4;
  return result;
}

id sub_1D7E5051C()
{
  result = [v0 view];
  if (result)
  {
    type metadata accessor for BlueprintLiveResizingView();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7E505A0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

void BlueprintPrewarmState.state.setter(void *a1)
{

  sub_1D7E50694(a1);
  sub_1D818F544();

  sub_1D7E50878(a1);
}

id sub_1D7E50694(id result)
{
  if (!(result >> 62))
  {
    return result;
  }

  return result;
}

uint64_t sub_1D7E506CC@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = MEMORY[0x1E69D6968];
  }

  else
  {
    a2();
    v4 = MEMORY[0x1E69D6960];
  }

  v5 = *v4;
  v6 = sub_1D818F7A4();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

uint64_t UICollectionView.transition.getter()
{
  v1 = [v0 collectionViewLayout];
  swift_getObjectType();
  v3 = dynamic_cast_existential_1_conditional(v1);
  if (v3)
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    v3 = (*(v4 + 8))(ObjectType, v4);
  }

  return v3;
}

void sub_1D7E50878(id a1)
{
  if (!(a1 >> 62))
  {
  }
}

uint64_t *BlueprintModifier.init<A>(modifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  sub_1D7E50CD4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[6] = (*(a3 + 48))(a2, a3, v15);
  (*(v12 + 16))(v16, a1, a2);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = *(v8 + 80);
  *(v18 + 3) = *(v8 + 88);
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  v34 = v12;
  (*(v12 + 32))(&v18[v17], v16, a2);
  v4[2] = sub_1D7E54DD4;
  v4[3] = v18;
  v35 = a1;
  v19 = sub_1D81925B4();
  v21 = v20;
  v38 = v19;
  v39 = v20;
  v36 = 0xD000000000000011;
  v37 = 0x80000001D81C0B00;
  sub_1D818E7D4();
  OUTLINED_FUNCTION_0_232();
  sub_1D7E50D2C();
  sub_1D8190DB4();
  sub_1D8191F04();
  LOBYTE(a1) = v22;
  sub_1D7E50D80(v11);

  if ((a1 & 1) == 0 || (v38 = v19, v39 = v21, v36 = 0x7265696669646F4DLL, v37 = 0xE800000000000000, OUTLINED_FUNCTION_0_232(), sub_1D8190DB4(), sub_1D8191F04(), v24 = v23, sub_1D7E50D80(v11), , (v24 & 1) == 0))
  {
    v25 = sub_1D8191124();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v19 = MEMORY[0x1DA7131E0](v25, v27, v29, v31);
    v21 = v32;
  }

  (*(v34 + 8))(v35, a2);
  v4[4] = v19;
  v4[5] = v21;
  return v4;
}

uint64_t sub_1D7E50C54()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

void sub_1D7E50CD4()
{
  if (!qword_1EDBBC6F8)
  {
    sub_1D818E7D4();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC6F8);
    }
  }
}

unint64_t sub_1D7E50D2C()
{
  result = qword_1EDBB34A0;
  if (!qword_1EDBB34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB34A0);
  }

  return result;
}

uint64_t sub_1D7E50D80(uint64_t a1)
{
  sub_1D7E50CD4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7E50DDC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void BlueprintPipeline.modify<A>(with:completion:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v55 = v6;
  v56 = v7;
  v9 = v8;
  v10 = *v1;
  v52 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v53 = v12;
  v54 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  v16 = v14(v15, v13, v11);
  v17 = sub_1D7E3A3F4(0, v16);

  if ((v17 & 1) != 0 && [objc_opt_self() isMainThread] && (v18 = *(v1 + *(*v1 + 136)), !objc_msgSend(*(v18 + 16), sel_operationCount)))
  {
    v19 = [*(v18 + 16) isSuspended] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v51 = v19;
  sub_1D7E512F0(v19, v1, v5, v3, v60);
  memcpy(v59, v60, 0x235uLL);
  v20 = *(*(v1 + *(*v1 + 136)) + 24);
  sub_1D7E513F4(v60, &v58);
  v21 = v20;
  v22 = OUTLINED_FUNCTION_102_1();
  v23 = (v14)(v22);
  v24 = (v1 + *(*v1 + 144));
  v50 = v1;
  v25 = v5;
  v27 = *v24;
  v26 = v24[1];
  v57 = v3;
  sub_1D8190DB4();
  v28 = v9;
  v29 = sub_1D81925B4();
  v31 = v30;
  type metadata accessor for BlueprintPipelineRecorder();
  OUTLINED_FUNCTION_8_5();
  v32 = sub_1D7E5159C(v27, v26, v29, v31);
  type metadata accessor for BlueprintPipelineRunOptions();
  swift_allocObject();
  v49 = sub_1D7E517F4(v59, v21, v23, v32);
  v34 = v10[11];
  v36 = v10[12];
  v35 = v10[13];
  v59[0] = v10[10];
  v33 = v59[0];
  v59[1] = v34;
  v59[2] = v36;
  v59[3] = v35;
  v48[1] = type metadata accessor for BlueprintPipelineRunner();
  v37 = v52;
  v38 = v54;
  (*(v52 + 16))(v54, v28, v25);
  v39 = (*(v37 + 80) + 64) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = v33;
  *(v40 + 3) = v34;
  v41 = v57;
  *(v40 + 4) = v25;
  *(v40 + 5) = v36;
  *(v40 + 6) = v35;
  *(v40 + 7) = v41;
  (*(v37 + 32))(&v40[v39], v38, v25);
  v42 = sub_1D7E51F48(&unk_1D81AF480, v40);
  v43 = v42;
  if (v51)
  {
    v44 = sub_1D8191534();
    MEMORY[0x1EEE9AC00](v44);
    v48[-8] = v25;
    v48[-7] = v41;
    v45 = v49;
    v48[-6] = v50;
    v48[-5] = v43;
    v47 = v55;
    v46 = v56;
    v48[-4] = v45;
    v48[-3] = v47;
    v48[-2] = v46;
    sub_1D801FAAC(sub_1D80229E8, &v48[-10]);
  }

  else
  {
    sub_1D7E51F88(v42, v49, v55, v56);
  }

  sub_1D7E52BA8(v60);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E51250()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_94_2();

  return swift_deallocObject();
}

void *sub_1D7E512F0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1)
  {
    v9 = sub_1D8191534();
    MEMORY[0x1EEE9AC00](v9);
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a2;
    sub_1D801F920(sub_1D8023240, v11);
    memcpy(v13, v12, 0x235uLL);
    nullsub_1(v13);
  }

  else
  {
    sub_1D7E513EC(v13);
  }

  return memcpy(a5, v13, 0x235uLL);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI27BlueprintPipelineRunOptionsC7ProcessO(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t BlueprintModifier.description.getter()
{
  v1 = *(v0 + 32);
  sub_1D8190DB4();
  return v1;
}

uint64_t type metadata accessor for BlueprintPipelineRecorder()
{
  result = qword_1EDBB7788;
  if (!qword_1EDBB7788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7E514E4()
{
  result = sub_1D818FDB4();
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

uint64_t sub_1D7E5159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = CACurrentMediaTime();
  sub_1D7E5167C();
  v9 = sub_1D8190D94();
  sub_1D7E51728();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(v4 + 24) = v10;
  sub_1D818FDA4();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  return v4;
}

unint64_t sub_1D7E5167C()
{
  result = qword_1EDBB77A8;
  if (!qword_1EDBB77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB77A8);
  }

  return result;
}

unint64_t sub_1D7E516D4()
{
  result = qword_1EDBB7798;
  if (!qword_1EDBB7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB7798);
  }

  return result;
}

void sub_1D7E51728()
{
  if (!qword_1EDBB2EB0)
  {
    sub_1D7E51790();
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_1D8192244();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2EB0);
    }
  }
}

void sub_1D7E51790()
{
  if (!qword_1EDBB3468)
  {
    sub_1D7E5167C();
    v0 = sub_1D8190E14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3468);
    }
  }
}

void *sub_1D7E517F4(void *__src, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  memcpy(v5 + 2, __src, 0x235uLL);
  v5[75] = a2;
  v5[74] = a3;
  v5[73] = a4;
  v9 = a2;

  sub_1D7E5186C();

  return v5;
}

uint64_t sub_1D7E5186C()
{
  v0 = BlueprintPipelineRunOptions.description.getter();
  v2 = v1;
  v3 = sub_1D81919E4();
  sub_1D7E51B50(0, v3, v0, v2);
}

uint64_t BlueprintPipelineRunOptions.description.getter()
{
  sub_1D7E519B0();
  v0 = sub_1D8191624();
  MEMORY[0x1DA713260](v0);

  return 0x3D737469617274;
}

uint64_t sub_1D7E5195C(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(v3 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionManager) + *a3 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1D7E519B0()
{
  result = qword_1EDBB8CB0[0];
  if (!qword_1EDBB8CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBB8CB0);
  }

  return result;
}

unint64_t sub_1D7E51A08()
{
  result = qword_1EDBB8CA8;
  if (!qword_1EDBB8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB8CA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintModifierTrait(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1D7E51B28);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D7E51B50(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    MEMORY[0x1DA713260](a3, a4);
    v6 = 8236;
    v7 = 0xE200000000000000;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  if (qword_1EDBB9408 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  sub_1D7E1A4D0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D81A3FA0;
  v10 = v4[4];
  v9 = v4[5];
  v11 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D7E13BF4();
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  v13 = MEMORY[0x1E69E6870];
  *(v8 + 96) = MEMORY[0x1E69E6810];
  *(v8 + 104) = v13;
  *(v8 + 64) = v12;
  *(v8 + 72) = v4;
  v14 = v4[6];
  v15 = v4[7];
  *(v8 + 136) = v11;
  *(v8 + 144) = v12;
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  v16 = sub_1D7E51D20(a1);
  *(v8 + 176) = v11;
  *(v8 + 184) = v12;
  *(v8 + 152) = v16;
  *(v8 + 160) = v17;
  *(v8 + 216) = v11;
  *(v8 + 224) = v12;
  *(v8 + 192) = v6;
  *(v8 + 200) = v7;
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D818FD44();
}

uint64_t sub_1D7E51CC0()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_1_59();
  result = sub_1D8191E54();
  qword_1EDBC6070 = result;
  return result;
}

uint64_t sub_1D7E51D20(char a1)
{
  result = 1953066601;
  switch(a1)
  {
    case 1:
      v3 = 0x796669646F6DLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x732E000000000000;
    case 2:
      v4 = 0x796669646F6DLL;
      goto LABEL_12;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x69737365636F7270;
    case 5:
      v3 = 0x74756F79616CLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x732E000000000000;
    case 6:
      v4 = 0x74756F79616CLL;
LABEL_12:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x652E000000000000;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x7461726765746E69;
      break;
    case 11:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

double BlueprintCollectionViewDataSource.diffableReorderDataSource.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D7E51F48(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_1D7E51F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1D7E52438(0, &qword_1EDBBC4A8, &type metadata for BlueprintPipelineResult, MEMORY[0x1E69D6720]);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;

  v11 = sub_1D818F4C4();
  sub_1D8190DB4();
  v12 = sub_1D8190EE4();

  [v11 setName_];

  [v11 setQueuePriority_];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a1;
  v14[5] = a3;
  v14[6] = a4;
  sub_1D7E52718();

  v36 = v11;
  sub_1D7E19F24(a3);

  sub_1D818F094();

  if (sub_1D7E3A3F4(6, *(a2 + 592)))
  {
    BlueprintPipeline.cancel()();
  }

  sub_1D81921A4();

  v35 = *(v5 + *(*v5 + 136));
  v15 = [*(v35 + 16) operations];
  sub_1D7E52894();
  v16 = sub_1D8191314();

  v17 = sub_1D7E36AB8(v16);
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (v17 != v18)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1DA714420](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v20 = *(v16 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v23 = sub_1D7E64574(v20);
    v25 = v24;

    ++v18;
    if (v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7E2D320();
        v19 = v28;
      }

      v26 = *(v19 + 16);
      if (v26 >= *(v19 + 24) >> 1)
      {
        sub_1D7E2D320();
        v19 = v29;
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v25;
      v18 = v22;
    }
  }

  v30 = MEMORY[0x1DA713540](v19, MEMORY[0x1E69E6158]);
  v32 = v31;

  MEMORY[0x1DA713260](v30, v32);

  v33 = sub_1D81919E4();
  v34._countAndFlagsBits = 0xD000000000000014;
  v34._object = 0x80000001D81CF460;
  BlueprintPipelineRecorder.log(_:type:)(v34, v33);

  [*(v35 + 16) addOperation_];
}

uint64_t sub_1D7E523F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1D7E52438(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7E52488()
{
  if (sub_1D7E524B8(&unk_1F52E4220, *(v0 + 592)))
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_1D7E524B8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = a2 + 56;
    do
    {
      if (*(a2 + 16))
      {
        v7 = *(v5 + v4);
        sub_1D81927E4();
        MEMORY[0x1DA714A00](v7);
        v8 = sub_1D8192824();
        v9 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v10 = v8 & v9;
          if (((*(v6 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
          {
            break;
          }

          v8 = v10 + 1;
          if (*(*(a2 + 48) + v10) == v7)
          {
            return 0;
          }
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return 1;
}

void sub_1D7E52718()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *v0;
  v12 = *v0;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = *(v11 + 80);
  *(v14 + 24) = *(v12 + 88);
  *(v14 + 40) = *(v11 + 104);
  *(v14 + 48) = v10;
  *(v14 + 56) = v13;
  *(v14 + 64) = v8;
  *(v14 + 72) = v6;
  *(v14 + 80) = v4;
  *(v14 + 88) = v2;

  sub_1D7E19F24(v8);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E5283C()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D7E52894()
{
  result = qword_1EDBB3270;
  if (!qword_1EDBB3270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3270);
  }

  return result;
}

Swift::Void __swiftcall BlueprintPipelineRecorder.log(_:type:)(Swift::String _, os_log_type_t type)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (qword_1EDBB9408 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  sub_1D7E1A4D0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D81A3F90;
  v7 = v2[4];
  v6 = v2[5];
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D7E13BF4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v10 = MEMORY[0x1E69E6870];
  *(v5 + 96) = MEMORY[0x1E69E6810];
  *(v5 + 104) = v10;
  *(v5 + 64) = v9;
  *(v5 + 72) = v2;
  v11 = v2[6];
  v12 = v2[7];
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = v11;
  *(v5 + 120) = v12;
  *(v5 + 176) = v8;
  *(v5 + 184) = v9;
  *(v5 + 152) = countAndFlagsBits;
  *(v5 + 160) = object;
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D818FD44();
}

Swift::Void __swiftcall SwipeActionCollectionView.reloadData()()
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v3, v4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v5);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_43();
  sub_1D7E52BD8(0x614464616F6C6572, 0xEC00000029286174, v0);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_reloadData);
  v7 = type metadata accessor for SwipeActionRestoreState();
  OUTLINED_FUNCTION_9_31(v7);
  if (!v8)
  {
    OUTLINED_FUNCTION_0_8();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = v1;
    v11 = OUTLINED_FUNCTION_30_19();
    SwipeActionCollectionView.performBatchUpdates(_:completion:)(v11, v12, v13, v9);
  }

  OUTLINED_FUNCTION_0_163();
  sub_1D7E53770(v0, v14, v15);
}

uint64_t sub_1D7E52B74()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E52BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v71 = a1;
  v72 = a2;
  v74 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1D7E1D3F8(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v62 - v7;
  v9 = sub_1D818E994();
  v68 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E1D3F8(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, v5);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v62 - v12;
  v14 = type metadata accessor for SwipeActionState(0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E1D3F8(0, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState, v5);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v62 - v19;
  v21 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionRestoreState;
  swift_beginAccess();
  sub_1D7E535B8(&v4[v21], v20, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState);
  v73 = type metadata accessor for SwipeActionRestoreState();
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v20, 1, v73);
  sub_1D7E53770(v20, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState);
  if (v5 != 1)
  {
    if (qword_1EDBB17D8 == -1)
    {
LABEL_6:
      sub_1D7E136FC(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D819FAB0;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1D7E13BF4();
      v25 = v72;
      *(v24 + 32) = v71;
      *(v24 + 40) = v25;
      sub_1D8190DB4();
      sub_1D81919E4();
      sub_1D818FD44();

      return __swift_storeEnumTagSinglePayload(v74, 1, 1, v73);
    }

LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  v22 = *&v4[OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionManager];
  v23 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  swift_beginAccess();
  sub_1D7E535B8(v22 + v23, v13, qword_1EDBB1158, type metadata accessor for SwipeActionState);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1D7E53770(v13, qword_1EDBB1158, type metadata accessor for SwipeActionState);
    if (qword_1EDBB17D8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v27 = v70;
  sub_1D8085EA4(v13, v70, type metadata accessor for SwipeActionState);
  sub_1D80F83EC(v8);
  v28 = v9;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1D8085F04(v27, type metadata accessor for SwipeActionState);
    sub_1D7E53770(v8, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
    return __swift_storeEnumTagSinglePayload(v74, 1, 1, v73);
  }

  v29 = v68;
  v30 = v69;
  (*(v68 + 32))(v69, v8, v28);
  v31 = sub_1D8082CD4();
  if (!v31)
  {
LABEL_18:
    (*(v29 + 8))(v30, v28);
    sub_1D8085F04(v27, type metadata accessor for SwipeActionState);
    return __swift_storeEnumTagSinglePayload(v74, 1, 1, v73);
  }

  v33 = v31;
  v34 = v32;
  ObjectType = swift_getObjectType();
  v36 = (*(v34 + 16))(v4, v27, ObjectType, v34);
  if (!v37)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v38 = v37;
  v65 = v36;
  v66 = v33;
  v39 = sub_1D818E8E4();
  v40 = [v4 cellForItemAtIndexPath_];

  if (!v40)
  {
    swift_unknownObjectRelease();

    goto LABEL_18;
  }

  v64 = v38;
  v63 = v40;
  v41 = [v40 contentView];
  v42 = [v41 layer];

  [v42 position];
  v44 = v43;
  v46 = v45;

  if (qword_1EDBB17D8 != -1)
  {
    swift_once();
  }

  v62[1] = qword_1EDBC6030;
  sub_1D7E136FC(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D81A1B70;
  v48 = MEMORY[0x1E69E6158];
  *(v47 + 56) = MEMORY[0x1E69E6158];
  v49 = sub_1D7E13BF4();
  *(v47 + 64) = v49;
  v50 = v72;
  *(v47 + 32) = v71;
  *(v47 + 40) = v50;
  v75 = 0;
  v76 = 0xE000000000000000;
  v77 = v44;
  v78 = v46;
  type metadata accessor for CGPoint();
  sub_1D8190DB4();
  sub_1D8192334();
  v51 = v75;
  v52 = v76;
  *(v47 + 96) = v48;
  *(v47 + 104) = v49;
  *(v47 + 72) = v51;
  *(v47 + 80) = v52;
  sub_1D7E287CC(&unk_1EDBBC6A0, MEMORY[0x1E6969C28]);
  v53 = v69;
  v54 = sub_1D81925B4();
  *(v47 + 136) = v48;
  *(v47 + 144) = v49;
  *(v47 + 112) = v54;
  *(v47 + 120) = v55;
  sub_1D81919E4();
  sub_1D818FD44();
  swift_unknownObjectRelease();

  (*(v29 + 8))(v53, v28);
  v56 = v73;
  v57 = v67;
  v58 = v70;
  (*(v29 + 16))(&v67[*(v73 + 20)], v70, v28);
  v59 = *(v58 + *(v14 + 60));
  sub_1D8085F04(v58, type metadata accessor for SwipeActionState);
  v60 = v64;
  *v57 = v65;
  v57[1] = v60;
  *(v57 + *(v56 + 24)) = v59;
  v61 = (v57 + *(v56 + 28));
  *v61 = v44;
  v61[1] = v46;
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v56);
  swift_beginAccess();
  sub_1D8085F5C(v57, &v4[v21]);
  swift_endAccess();
  return sub_1D7E535B8(&v4[v21], v74, qword_1EDBB7EC8, type metadata accessor for SwipeActionRestoreState);
}

uint64_t sub_1D7E535B8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7E1D3F8(0, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7E53644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D818E994();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_1D81918F4();
}

void OUTLINED_FUNCTION_57_3()
{
  v2 = *(v0 - 456);
}

uint64_t OUTLINED_FUNCTION_57_5()
{
  *(v1 - 224) = v0;
}

uint64_t sub_1D7E53770(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7E1D3F8(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E537D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7E1D458(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E53840()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_66_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  v1[1] = sub_1D7E5B0D4;
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_64();

  return sub_1D7E538D8(v3, v4, v5, v6);
}

uint64_t sub_1D7E538D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v4[2] = AssociatedTypeWitness;
  v4[3] = v6;
  v4[4] = AssociatedConformanceWitness;
  v4[5] = v8;
  v9 = type metadata accessor for BlueprintPipelineProcessingResult();
  v4[14] = v9;
  v4[15] = *(v9 - 8);
  v4[16] = swift_task_alloc();
  v4[6] = AssociatedTypeWitness;
  v4[7] = v6;
  v4[8] = AssociatedConformanceWitness;
  v4[9] = v8;
  v10 = type metadata accessor for BlueprintModifierResult();
  v4[17] = v10;
  v4[18] = *(v10 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7E54F1C, 0, 0);
}

uint64_t sub_1D7E53AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D818E994();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D7E53B9C()
{
  type metadata accessor for Blueprint();
  type metadata accessor for BlueprintBookmark();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (v3 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    sub_1D7E0631C(255, &qword_1EDBBA670);
    v4 = swift_getTupleTypeMetadata3();
    TupleTypeMetadata2 = v4;
    if (v5 > 0x3F)
    {
      return TupleTypeMetadata2;
    }

    MEMORY[0x1EEE9AC00](v4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata();
    if (v6 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    type metadata accessor for BlueprintViewActionResponse();
    v7 = swift_getTupleTypeMetadata3();
    TupleTypeMetadata2 = v7;
    if (v8 > 0x3F)
    {
      return TupleTypeMetadata2;
    }

    MEMORY[0x1EEE9AC00](v7);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata();
    if (v9 > 0x3F)
    {
      return TupleTypeMetadata2;
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v10 > 0x3F)
    {
      return TupleTypeMetadata2;
    }

    sub_1D7E53FAC();
    if (v11 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    sub_1D7E5405C();
    if (v12 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
    sub_1D7E546F8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata();
    if (v13 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v14 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

void sub_1D7E53FAC()
{
  if (!qword_1EDBBA758)
  {
    v0 = type metadata accessor for BlueprintBookmark();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBA758);
    }
  }
}

uint64_t sub_1D7E53FF4()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1EDBC6030 = result;
  return result;
}

void sub_1D7E5405C()
{
  if (!qword_1EDBB2BC8)
  {
    v0 = sub_1D7E0631C(0, &qword_1EDBB2BC0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2BC8);
    }
  }
}

void sub_1D7E540B4()
{
  type metadata accessor for BlueprintModifierResult();
  if (v0 <= 0x3F)
  {
    sub_1D7E549F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D7E54144()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_0_141();
  sub_1D7E1AE04(0, v6, v7, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_23();
  v58 = v9;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_1();
  v55 = v11;
  OUTLINED_FUNCTION_77();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - v16;
  v18 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23();
  v56 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_24_1();
  v57 = v24;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  v28 = *((v5 & v4) + 0x50);
  v29 = *((v5 & v4) + 0x58);
  v54 = v28;
  v30 = type metadata accessor for BlueprintCollectionViewLayout();
  v63.receiver = v2;
  v63.super_class = v30;
  objc_msgSendSuper2(&v63, sel_invalidateLayoutWithContext_, v3);
  sub_1D7E547DC();
  OUTLINED_FUNCTION_21(v17);
  if (v31)
  {
    OUTLINED_FUNCTION_0_141();
    v34 = v17;
LABEL_10:
    sub_1D7E54AFC(v34, v32, v33);
    goto LABEL_11;
  }

  v52 = v29;
  v53 = v20;
  v35 = *(v20 + 32);
  v35(v27, v17, v18);
  v36 = [v3 targetIndexPathsForInteractivelyMovingItems];
  if (!v36)
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v18);
    goto LABEL_9;
  }

  v37 = v36;
  sub_1D8191314();

  sub_1D7E9D980();

  OUTLINED_FUNCTION_21(v15);
  if (v31)
  {
LABEL_9:
    (*(v53 + 8))(v27, v18);
    OUTLINED_FUNCTION_0_141();
    v34 = v15;
    goto LABEL_10;
  }

  v38 = v57;
  v35(v57, v15, v18);
  sub_1D7E2DB48(&qword_1EDBBC6B0, MEMORY[0x1E6969C28]);
  if (sub_1D8190ED4())
  {
    v39 = *(v53 + 8);
    v39(v38, v18);
    v40 = OUTLINED_FUNCTION_4_8();
    (v39)(v40);
LABEL_11:
    sub_1D7E2DB90(v62);
    memcpy(v61, v62, sizeof(v61));
    sub_1D7E54D6C();
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v18);
    sub_1D7E55454();
    goto LABEL_12;
  }

  v41 = v35;
  v42 = v27;
  v43 = v55;
  sub_1D803E310();
  OUTLINED_FUNCTION_21(v43);
  if (v31)
  {
    v48 = v53;
    v49 = *(v53 + 16);
    v47 = v56;
    v49(v56, v42, v18);
    OUTLINED_FUNCTION_21(v43);
    if (!v31)
    {
      OUTLINED_FUNCTION_0_141();
      sub_1D7E54AFC(v43, v44, v45);
    }
  }

  else
  {
    v46 = v56;
    v41(v56, v43, v18);
    v47 = v46;
    v48 = v53;
    v49 = *(v53 + 16);
  }

  v50 = v58;
  v49(v58, v47, v18);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v18);
  sub_1D7E55454();
  (*(v52 + 32))(v62, v54);
  sub_1D812618C(v47);
  memcpy(v60, v62, sizeof(v60));
  sub_1D7E598FC(v60);
  memcpy(v62, v61, sizeof(v62));
  nullsub_1(v62);
  memcpy(v59, v62, sizeof(v59));
  sub_1D7E54D6C();
  v51 = *(v48 + 8);
  v51(v47, v18);
  v51(v38, v18);
  v51(v42, v18);
LABEL_12:
  OUTLINED_FUNCTION_100();
}

void sub_1D7E546F8()
{
  if (!qword_1EDBB68A8[0])
  {
    type metadata accessor for BlueprintViewActionResponse();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBB68A8);
    }
  }
}

void sub_1D7E54750(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7E54144();
}

uint64_t sub_1D7E547DC()
{
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_4();
  v0 = OUTLINED_FUNCTION_29_12();
  return sub_1D7E54838(v0, v1);
}

uint64_t sub_1D7E54838(uint64_t a1, uint64_t a2)
{
  sub_1D7E54930(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7E548CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E54930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E54994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7E549F8()
{
  if (!qword_1EDBB3360)
  {
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3360);
    }
  }
}

uint64_t sub_1D7E54A48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7E1ACA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7E54AA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E54AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7E1AE04(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7E54B6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7E5951C(0, a2, a3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E54BC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E54C18()
{
  v1 = OUTLINED_FUNCTION_76_0();
  v2(v1);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1D7E54C6C()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  sub_1D7E55F74(v1);
  OUTLINED_FUNCTION_4_10();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = OUTLINED_FUNCTION_96();
  sub_1D7E400C8(v10, v11, v12);
  if (OUTLINED_FUNCTION_70_0())
  {
    sub_1D7E55F74(v2);
    OUTLINED_FUNCTION_74_0();
    if (!v14)
    {
      goto LABEL_12;
    }

    v8 = v13;
  }

  v15 = *v0;
  if (v9)
  {
    *(*(v15 + 56) + 8 * v8) = v4;
  }

  else
  {

    sub_1D7E56C38(v8, v2, v15);
  }
}

uint64_t sub_1D7E54D6C()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_51_7(v3);
  v0 = OUTLINED_FUNCTION_29_12();
  memcpy(v0, v1, 0x4E8uLL);
  return sub_1D7E54E3C(v3);
}

uint64_t sub_1D7E54E3C(uint64_t a1)
{
  sub_1D7E54FF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D7E54E98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = BlueprintCollectionViewDataSource.indexTitles(for:)(v5);

  if (v6)
  {
    v7 = sub_1D8191304();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1D7E54F1C()
{
  OUTLINED_FUNCTION_9_14();
  v1 = v0[13];
  v2 = v0[11];
  v0[20] = *(v0[12] + 584);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  v0[22] = v4;
  *v4 = v5;
  v4[1] = sub_1D7E5CBB0;
  OUTLINED_FUNCTION_101_2();

  return sub_1D7E554B8(v6, 1, 2, v7, v3, v8);
}

void sub_1D7E54FF4()
{
  if (!qword_1EDBB78C0[0])
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBB78C0);
    }
  }
}

Swift::OpaquePointer_optional __swiftcall BlueprintCollectionViewDataSource.indexTitles(for:)(UICollectionView *a1)
{
  OUTLINED_FUNCTION_120();
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_20();
  v21[0] = AssociatedTypeWitness;
  v21[1] = swift_getAssociatedTypeWitness();
  v21[2] = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = BlueprintProviderType.blueprint.getter(v3, v2);
  OUTLINED_FUNCTION_91(v13, &qword_1EDBB8570);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v19, v21);
    BlueprintProviderType.blueprint.getter(v3, v2);
    OUTLINED_FUNCTION_6_2();
    swift_getWitnessTable();
    v14 = sub_1D8191874();
    (*(v7 + 8))(v11, v5);
    if ((v14 & 1) == 0)
    {
      v15 = AssociatedConformanceWitness;
      v16 = v23;
      __swift_project_boxed_opaque_existential_1(v21, AssociatedConformanceWitness);
      (*(v16 + 8))(v15, v16);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1D7E553A4(v19, &qword_1EDBB8568, &qword_1EDBB8570);
  }

  OUTLINED_FUNCTION_100();
  result.value._rawValue = v17;
  result.is_nil = v18;
  return result;
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_1D8192634();
}

uint64_t OUTLINED_FUNCTION_101_1(uint64_t a1)
{
  v1[20] = v2;
  v1[21] = v3;
  v1[22] = v4;
  v1[23] = a1;

  return type metadata accessor for Blueprint();
}

uint64_t OUTLINED_FUNCTION_101_3()
{

  return sub_1D818FD44();
}

uint64_t sub_1D7E55364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7E553A4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D7E553F8(0, a2, a3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D7E553F8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D7E069F0(255, a3);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7E55454()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_2();
  v0 = OUTLINED_FUNCTION_42_9();
  sub_1D7E55614(v0, v1);
  return swift_endAccess();
}

uint64_t sub_1D7E554B8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 225) = a3;
  *(v7 + 224) = a2;
  *(v7 + 40) = a1;
  v8 = sub_1D818FDC4();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v9 = sub_1D818FD84();
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7E55678, 0, 0);
}

uint64_t sub_1D7E55614(uint64_t a1, uint64_t a2)
{
  sub_1D7E3D564();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7E55678()
{
  *(v0 + 160) = OBJC_IVAR____TtC5TeaUI25BlueprintPipelineRecorder_signposter;
  v1 = sub_1D7E55B54(*(v0 + 224));
  *(v0 + 168) = v1;
  sub_1D818FD94();
  sub_1D818FD64();
  v2 = sub_1D818FD94();
  v3 = sub_1D8191B34();
  result = sub_1D8191E34();
  if (result)
  {
    if (!v1)
    {
      __break(1u);
      return result;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D818FD74();
    _os_signpost_emit_with_name_impl(&dword_1D7DFF000, v2, v3, v6, v1, "", v5, 2u);
    MEMORY[0x1DA715D00](v5, -1, -1);
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 48);
  v12 = *(v0 + 224);

  (*(v10 + 16))(v7, v8, v9);
  sub_1D818FDF4();
  swift_allocObject();
  *(v0 + 176) = sub_1D818FDE4();
  v13 = *(v10 + 8);
  *(v0 + 184) = v13;
  *(v0 + 192) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  v14 = CACurrentMediaTime();
  *(v0 + 200) = sub_1D7E55D2C(v12, 0, 0, v14);
  v17 = (v11 + *v11);
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  *v15 = v0;
  v15[1] = sub_1D7E5B1FC;
  v16 = *(v0 + 40);

  return v17(v16);
}

Swift::Int sub_1D7E558DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = BlueprintCollectionViewDataSource.numberOfSections(in:)(v5);

  return v6;
}

uint64_t sub_1D7E55928()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_27_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_14(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_27(v2);

  return sub_1D7E55C6C(v4, v5, v0);
}

Swift::Int __swiftcall BlueprintCollectionViewDataSource.numberOfSections(in:)(UICollectionView *in)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_35_10();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_14_0();
  BlueprintProviderType.blueprint.getter(v2, v3);
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  sub_1D8191834();
  v4 = OUTLINED_FUNCTION_4_8();
  v5(v4);
  OUTLINED_FUNCTION_100();
  return result;
}

const char *sub_1D7E55B54(char a1)
{
  result = "Initialize";
  switch(a1)
  {
    case 1:
    case 2:
      result = "Modify";
      break;
    case 3:
    case 4:
      result = "Processing";
      break;
    case 5:
    case 6:
      result = "Layout";
      break;
    case 7:
    case 8:
      result = "SidecarLayout";
      break;
    case 9:
    case 10:
      result = "Integrating";
      break;
    case 11:
      result = "Completed";
      break;
    default:
      return result;
  }

  return result;
}

void OUTLINED_FUNCTION_106_2()
{
}

uint64_t sub_1D7E55C6C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D7E55E08, 0, 0);
}

Swift::Int __swiftcall Blueprint.index(after:)(Swift::Int after)
{
  OUTLINED_FUNCTION_45_15();
  OUTLINED_FUNCTION_16_50();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_43_14();
  sub_1D818F2F4();
  OUTLINED_FUNCTION_46_15();
  return result;
}

double sub_1D7E55D2C(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(v4 + 24);
  os_unfair_lock_lock((v9 + 24));
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + 16);
  sub_1D7E54C6C();
  *(v9 + 16) = v12;
  os_unfair_lock_unlock((v9 + 24));
  v10 = sub_1D81919E4();
  sub_1D7E51B50(a1, v10, a2, a3);
  return a4;
}

Swift::Int sub_1D7E55DDC(Swift::Int *a1)
{
  result = Blueprint.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1D7E55E08()
{
  OUTLINED_FUNCTION_64_6();
  v1 = v0[8];
  v2 = v0[7];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[11] = v4;
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_83_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_83_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_87_0();
  v5 = OUTLINED_FUNCTION_139_2();
  v6 = OUTLINED_FUNCTION_110_1(v5);
  *v4 = v0;
  v4[1] = sub_1D7E5AAD0;
  v7 = v0[6];

  return MEMORY[0x1EEE44AD8](v7, &unk_1D81AF6E8, v3, v6);
}

unint64_t sub_1D7E55F74(char a1)
{
  OUTLINED_FUNCTION_10_13();
  sub_1D7E51D20(a1);
  sub_1D8190FF4();

  v2 = sub_1D8192824();

  return sub_1D7E564DC(a1, v2);
}

uint64_t OUTLINED_FUNCTION_83@<X0>(char a1@<W8>)
{
  *(v1 - 87) = a1;

  return sub_1D81924E4();
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return sub_1D81917A4();
}

Swift::Int __swiftcall BlueprintCollectionViewDataSource.collectionView(_:numberOfItemsInSection:)(UICollectionView *_, Swift::Int numberOfItemsInSection)
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v32 = v4;
  v29 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = OUTLINED_FUNCTION_34_9();
  v7 = OUTLINED_FUNCTION_34_9();
  OUTLINED_FUNCTION_15_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_5();
  v9 = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v30 = v11;
  v31 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v34 = v6;
  v35 = v7;
  v36 = AssociatedConformanceWitness;
  v37 = v9;
  v15 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12_24();
  v19 = *((v5 & v29) + 0xC8);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (!*(v3 + v19) || (OUTLINED_FUNCTION_66(), , v20 = OUTLINED_FUNCTION_4_8(), BlueprintProviderType.blueprint.getter(v20, v21), OUTLINED_FUNCTION_37_0(), (*(v17 + 8))(AssociatedConformanceWitness, v15), BlueprintSectionCollapsibleStateManager.state(for:)(&v33), , (*(v30 + 8))(v14, v31), v33))
  {
    OUTLINED_FUNCTION_66();
    v22 = OUTLINED_FUNCTION_4_8();
    BlueprintProviderType.blueprint.getter(v22, v23);
    OUTLINED_FUNCTION_37_0();
    (*(v17 + 8))(AssociatedConformanceWitness, v15);
    OUTLINED_FUNCTION_7_5();
    v24 = v31;
    swift_getWitnessTable();
    sub_1D8191834();
    v25 = OUTLINED_FUNCTION_30_14();
    v26(v25, v24);
  }

  OUTLINED_FUNCTION_100();
  return result;
}

uint64_t OUTLINED_FUNCTION_139_0()
{

  return type metadata accessor for BlueprintViewAction.Action(0);
}

uint64_t OUTLINED_FUNCTION_139_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_139_2()
{

  return swift_getAssociatedConformanceWitness();
}

Swift::Int sub_1D7E563D0(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  v8 = BlueprintCollectionViewDataSource.collectionView(_:numberOfItemsInSection:)(v7, a4);

  return v8;
}

uint64_t sub_1D7E56424()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_27_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_14(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_27(v2);

  return sub_1D7E56C88(v4, v5, v0);
}

uint64_t sub_1D7E564B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BlueprintSection.startIndex.getter(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D7E564DC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1953066601;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v9 = 0x796669646F6DLL;
          goto LABEL_12;
        case 2:
          v10 = 0x796669646F6DLL;
          goto LABEL_14;
        case 3:
          v8 = 0xD000000000000010;
          v7 = 0x80000001D81C5760;
          break;
        case 4:
          v8 = 0x69737365636F7270;
          v7 = 0xEE00646E652E676ELL;
          break;
        case 5:
          v9 = 0x74756F79616CLL;
LABEL_12:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x732E000000000000;
          v7 = 0xEC00000074726174;
          break;
        case 6:
          v10 = 0x74756F79616CLL;
LABEL_14:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x652E000000000000;
          v7 = 0xEA0000000000646ELL;
          break;
        case 7:
          v8 = 0xD000000000000014;
          v7 = 0x80000001D81C57A0;
          break;
        case 8:
          v8 = 0xD000000000000012;
          v7 = 0x80000001D81C57C0;
          break;
        case 9:
          v8 = 0xD000000000000011;
          v7 = 0x80000001D81C57E0;
          break;
        case 0xA:
          v8 = 0x7461726765746E69;
          v7 = 0xEF646E652E676E69;
          break;
        case 0xB:
          v8 = 0x6574656C706D6F63;
          v7 = 0xE900000000000064;
          break;
        default:
          break;
      }

      v11 = 0xE400000000000000;
      v12 = 1953066601;
      switch(a1)
      {
        case 1:
          v13 = 0x796669646F6DLL;
          goto LABEL_26;
        case 2:
          v14 = 0x796669646F6DLL;
          goto LABEL_28;
        case 3:
          v12 = 0xD000000000000010;
          v11 = 0x80000001D81C5760;
          break;
        case 4:
          v12 = 0x69737365636F7270;
          v11 = 0xEE00646E652E676ELL;
          break;
        case 5:
          v13 = 0x74756F79616CLL;
LABEL_26:
          v12 = v13 & 0xFFFFFFFFFFFFLL | 0x732E000000000000;
          v11 = 0xEC00000074726174;
          break;
        case 6:
          v14 = 0x74756F79616CLL;
LABEL_28:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0x652E000000000000;
          v11 = 0xEA0000000000646ELL;
          break;
        case 7:
          v12 = 0xD000000000000014;
          v11 = 0x80000001D81C57A0;
          break;
        case 8:
          v12 = 0xD000000000000012;
          v11 = 0x80000001D81C57C0;
          break;
        case 9:
          v12 = 0xD000000000000011;
          v11 = 0x80000001D81C57E0;
          break;
        case 10:
          v12 = 0x7461726765746E69;
          v11 = 0xEF646E652E676E69;
          break;
        case 11:
          v12 = 0x6574656C706D6F63;
          v11 = 0xE900000000000064;
          break;
        default:
          break;
      }

      if (v8 == v12 && v7 == v11)
      {
        break;
      }

      v16 = sub_1D8192634();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_73_2()
{

  sub_1D7EB8AF4();
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t a1)
{
  v1[4] = v4;
  v1[5] = v3;
  v1[6] = a1;
  v1[7] = v2;

  return type metadata accessor for BlueprintLayout();
}

uint64_t OUTLINED_FUNCTION_73_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t sub_1D7E56990()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_38_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_103_2(v1);

  return v4(v3);
}

uint64_t sub_1D7E56A40()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  *v4 = v5;
  v4[1] = sub_1D7E5B0D4;
  v6 = OUTLINED_FUNCTION_60_6();

  return sub_1D7E57474(v6, v7, v8, v1, v2);
}

id sub_1D7E56B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_destroy_boxed_opaque_existential_1Tm(va);
}

uint64_t OUTLINED_FUNCTION_77_4()
{

  return swift_unknownObjectRelease();
}

id OUTLINED_FUNCTION_77_6()
{

  return [v0 (v1 + 2808)];
}

void sub_1D7E56C38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_3_37(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + v3) = v5;
  *(v4[7] + 8 * v3) = v6;
  v7 = v4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_15(v4, v9);
  }
}

uint64_t sub_1D7E56C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D7E56990, 0, 0);
}

void *sub_1D7E56CAC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v69 = a2;
  v70 = a4;
  v71 = a1;
  v4 = sub_1D81901F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v57 - v9;
  v10 = sub_1D8190214();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v57 - v13;
  v14 = sub_1D8190294();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v22 = Strong;
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {

    return 0;
  }

  v24 = v23;
  v58 = v8;
  v59 = v5;
  v60 = v4;
  v25 = *(v22 + 40);
  ObjectType = swift_getObjectType();
  v27 = *(v25 + 8);
  v61 = v24;
  v27(v77, ObjectType, v25);
  v28 = qword_1EDBB4090;
  swift_beginAccess();
  v29 = v14;
  v30 = *(v15 + 16);
  v31 = v29;
  v30(v20, v22 + v28);
  v63 = v78;
  if (v78[16] == 1)
  {
    sub_1D8190254();
  }

  swift_beginAccess();
  (*(v15 + 24))(v22 + v28, v20, v31);
  swift_endAccess();
  sub_1D7E0A1A8(0, &unk_1EDBB3068);
  (v30)(v18, v22 + v28, v31);
  v32 = sub_1D8191BC4();
  v33 = *(v15 + 8);
  v33(v18, v31);
  v62 = v20;
  if (v70)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3010);
    v34 = sub_1D8191304();
    [v32 setBoundarySupplementaryItems_];
  }

  else
  {
    v57 = v33;
    v69 = v15 + 8;
    v76 = MEMORY[0x1E69E7CC0];
    v72 = v79;
    v73 = v80;
    v74 = v81;
    v75 = 0;
    sub_1D7E57460();
    v70 = sub_1D7E57624(v71, &v72, &v75);
    sub_1D7E57C3C(v72, v73, v74);
    v35 = v64;
    sub_1D8190234();
    v37 = v65;
    v36 = v66;
    v38 = v67;
    (*(v66 + 104))(v65, *MEMORY[0x1E69DC280], v67);
    v39 = sub_1D8190204();
    v40 = *(v36 + 8);
    v40(v37, v38);
    v40(v35, v38);
    if ((v39 & 1) != 0 && v70)
    {
      v41 = v70;
      MEMORY[0x1DA713500]();
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
    }

    v67 = v31;
    v72 = v82;
    v73 = v83;
    v74 = v84;
    v75 = 1;
    sub_1D7E57460();
    v71 = sub_1D7E57624(v71, &v72, &v75);
    sub_1D7E57C3C(v72, v73, v74);
    v42 = v68;
    sub_1D8190224();
    v43 = v58;
    v44 = v59;
    v45 = v60;
    (*(v59 + 104))(v58, *MEMORY[0x1E69DC270], v60);
    v46 = sub_1D81901E4();
    v47 = *(v44 + 8);
    v47(v43, v45);
    v47(v42, v45);
    if (v46)
    {
      v31 = v67;
      v33 = v57;
      v48 = v71;
      if (v71)
      {
        v49 = v71;
        MEMORY[0x1DA713500]();
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D81913B4();
        }

        sub_1D8191404();
      }
    }

    else
    {
      v31 = v67;
      v33 = v57;
      v48 = v71;
    }

    sub_1D7E0A1A8(0, &qword_1EDBB3010);
    v50 = sub_1D8191304();

    [v32 setBoundarySupplementaryItems_];
  }

  v51 = v85;
  v52 = v86;
  v53 = v87;
  v54 = v88;
  v55 = v63;
  sub_1D7E22264(v63, &v72);
  [v32 setContentInsets_];
  [v32 setInterGroupSpacing_];
  [v32 setSupplementariesFollowContentInsets_];
  sub_1D7E57C5C(v55);
  sub_1D7E4C1A0(v77);

  swift_unknownObjectRelease();
  v33(v62, v31);
  return v32;
}

uint64_t sub_1D7E57464(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return sub_1D8190DB4();
  }

  return result;
}

uint64_t sub_1D7E57474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v5[11] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D7E574C4, 0, 0);
}

uint64_t sub_1D7E574C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_16_20();
  OUTLINED_FUNCTION_100_2();
  v13 = swift_task_alloc();
  *(v12 + 96) = v13;
  v14 = vextq_s8(*(v12 + 56), *(v12 + 56), 8uLL);
  *(v13 + 16) = *(v12 + 72);
  *(v13 + 32) = v14;
  v15 = swift_task_alloc();
  *(v12 + 104) = v15;
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_83_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_83_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_87_0();
  v16 = OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_110_1(v16);
  *v15 = v12;
  v15[1] = sub_1D7E5F2C0;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DDE0](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

id sub_1D7E57624(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  if (!*(a2 + 16) && sub_1D7E9ADEC(a1, *a2))
  {
    return 0;
  }

  v5 = objc_opt_self();
  v6 = [v5 fractionalWidthDimension_];
  v7 = [v5 estimatedDimension_];
  v8 = [objc_opt_self() sizeWithWidthDimension:v6 heightDimension:v7];

  if (v3)
  {
    v9 = 5;
  }

  else
  {
    v9 = 1;
  }

  if (v3)
  {
    v10 = "entKindSectionHeader";
  }

  else
  {
    v10 = "eneConnect";
  }

  sub_1D7E0A1A8(0, &qword_1EDBB3010);
  return sub_1D7E57BB4(v8, 0xD000000000000024, v10 | 0x8000000000000000, v9);
}

uint64_t sub_1D7E57748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v27 = a2;
  v23 = *a3;
  v24 = a1;
  v5 = *(v23 + 96);
  v6 = *(v23 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintModifierResult();
  v20 = sub_1D8191504();
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Blueprint();
  v21 = *(v10 - 8);
  v22 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = v23;
  BlueprintProviderType.blueprint.getter(v6, v5);
  v14 = v20;
  (*(v7 + 16))(v9, v24, v20);
  v15 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v6;
  v17 = v25;
  *(v16 + 3) = *(v13 + 88);
  *(v16 + 4) = v17;
  *(v16 + 5) = v5;
  v18 = v26;
  *(v16 + 6) = *(v13 + 104);
  *(v16 + 7) = v18;
  (*(v7 + 32))(&v16[v15], v9, v14);
  (*(v18 + 56))(v12, sub_1D7E5A984, v16, v17, v18);

  return (*(v21 + 8))(v12, v22);
}

uint64_t sub_1D7E57A98()
{
  OUTLINED_FUNCTION_27_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_14_0();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintModifierResult();
  sub_1D8191504();
  OUTLINED_FUNCTION_4_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_94_2();
  return swift_deallocObject();
}

id sub_1D7E57BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D8190EE4();

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

uint64_t sub_1D7E57C40(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

id sub_1D7E57CB0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8190F14();
  v11 = v10;
  sub_1D818E924();
  v12 = a3;
  v13 = a1;
  v14 = BlueprintCollectionViewDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(v12, v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v14;
}

unint64_t BlueprintCollectionViewDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_9();
  v81 = v8;
  v82 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v80 = v10;
  v11 = *((v6 & v5) + 0x70);
  v83 = v4;
  v12 = *((v6 & v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v78 = v16;
  v79 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  v77 = v18;
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v87 = v20;
  v88 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v89 = v22 - v21;
  v85 = type metadata accessor for BlueprintViewSupplementaryData();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v86 = v25 - v24;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_94();
  v76 = v28;
  v29 = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v84 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  v96[0] = v29;
  v96[1] = AssociatedTypeWitness;
  v96[2] = v30;
  v96[3] = AssociatedConformanceWitness;
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_94();
  v75 = v34;
  sub_1D7E1ADB0(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_12_24();
  result = sub_1D81924B4();
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v37 = sub_1D7E58B80(a1, a2, a3, a4);
    if (!v37)
    {
      OUTLINED_FUNCTION_7();
      return sub_1D7E599F8(v51, v52, v53, v54);
    }

    v38 = v37;
    v39 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_1D7EA851C(v38 + v39, v11);
    v40 = type metadata accessor for CollectionViewSupplementaryKind.Source();
    result = __swift_getEnumTagSinglePayload(v11, 1, v40);
    if (result != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D7E58AEC();
        (*(v87 + 32))(v89, v11 + *(v41 + 48), v88);
        v42 = v83;
        OUTLINED_FUNCTION_66();
        BlueprintProviderType.blueprint.getter(v12, v11);
        Blueprint.subscript.getter();
        v43 = OUTLINED_FUNCTION_30_14();
        v44(v43, v84);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_45_10();
        v45 = OUTLINED_FUNCTION_21_19();
        BlueprintLayout.subscript.getter(v89, v45);
        (*(*(v45 - 8) + 8))(v96, v45);
        OUTLINED_FUNCTION_66();
        v96[0] = a1;
        (*(v87 + 16))(v86 + *(v85 + 20), a4, v88);
        OUTLINED_FUNCTION_20_20();
        v48 = (*(v46 + 96))(v77, v80, v96, v86, *(v47 + 104));
        sub_1D7EA8910(v86);
        v95 = v48;
        v49 = sub_1D7E0A1A8(0, &qword_1EDBB3078);
        OUTLINED_FUNCTION_91(v49, &qword_1EDBB7758);
        v50 = v48;
        if (OUTLINED_FUNCTION_28_13())
        {
          OUTLINED_FUNCTION_42_8();
          [v38 frame];
          CGRectGetHeight(v97);

          (*(v81 + 8))(v80, v82);
          (*(v78 + 8))(v77, v79);
          (*(v87 + 8))(v89, v88);
LABEL_10:
          v69 = OUTLINED_FUNCTION_15_5();
          v70(v69);
          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          return v42;
        }

        (*(v81 + 8))(v80, v82);
        (*(v78 + 8))(v77, v79);
        (*(v87 + 8))(v89, v88);
      }

      else
      {
        v42 = v83;
        OUTLINED_FUNCTION_66();
        BlueprintProviderType.blueprint.getter(v12, v11);
        sub_1D818E974();
        Blueprint.subscript.getter();
        v55 = OUTLINED_FUNCTION_30_14();
        v56(v55, v84);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_45_10();
        sub_1D818E974();
        v57 = OUTLINED_FUNCTION_21_19();
        v58 = OUTLINED_FUNCTION_15_5();
        BlueprintLayout.subscript.getter(v58, v59);
        (*(*(v57 - 8) + 8))(v96, v57);
        OUTLINED_FUNCTION_66();
        v96[0] = a1;
        (*(v87 + 16))(v86 + *(v85 + 20), a4, v88);
        OUTLINED_FUNCTION_20_20();
        v62 = (*(v60 + 88))(v75, v76, v96, v86, *(v61 + 104));
        sub_1D7EA8910(v86);
        v95 = v62;
        v63 = sub_1D7E0A1A8(0, &qword_1EDBB3078);
        OUTLINED_FUNCTION_91(v63, &qword_1EDBB7758);
        v64 = v62;
        if (OUTLINED_FUNCTION_28_13())
        {
          OUTLINED_FUNCTION_42_8();
          [v38 frame];
          CGRectGetHeight(v98);

          v65 = OUTLINED_FUNCTION_30_14();
          v66(v65, v26);
          v67 = OUTLINED_FUNCTION_39_10();
          v68(v67);
          goto LABEL_10;
        }

        v71 = OUTLINED_FUNCTION_30_14();
        v72(v71, v26);
        v73 = OUTLINED_FUNCTION_39_10();
        v74(v73);
      }

      OUTLINED_FUNCTION_15_24();
      sub_1D7E553A4(&v94, &qword_1EDBB7750, &qword_1EDBB7758);
      return v42;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for BlueprintViewSupplementaryData()
{
  result = qword_1EDBB5CF8;
  if (!qword_1EDBB5CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7E589A8()
{
  result = sub_1D818E994();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for CollectionViewSupplementaryKind.Source()
{
  result = qword_1EDBB5B28;
  if (!qword_1EDBB5B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7E58A78()
{
  sub_1D7E58B58();
  if (v0 <= 0x3F)
  {
    sub_1D7E58AEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7E58AEC()
{
  if (!qword_1EDBB32A0)
  {
    sub_1D818E994();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB32A0);
    }
  }
}

uint64_t sub_1D7E58B58()
{
  result = qword_1EDBB3290;
  if (!qword_1EDBB3290)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EDBB3290);
  }

  return result;
}

uint64_t sub_1D7E58B80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 collectionViewLayout];
  v9 = sub_1D8190EE4();
  v10 = sub_1D818E8E4();
  v11 = [v8 layoutAttributesForSupplementaryViewOfKind:v9 atIndexPath:v10];

  if (!v11)
  {
LABEL_5:
    v19 = [a1 collectionViewLayout];
    sub_1D7E0A1A8(0, &qword_1EDBB3098);
    sub_1D7E069F0(0, &qword_1EDBBC2B0);
    if (swift_dynamicCast())
    {
      sub_1D7E05450(v17, v20);
      v14 = v21;
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v13 = (*(v15 + 8))(a2, a3, a4, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      if (v13)
      {
        return v13;
      }
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_1D7E553A4(v17, &unk_1ECA0F938, &qword_1EDBBC2B0);
    }

    return 0;
  }

  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_5;
  }

  return v12;
}

void UIView.setup<A>(automation:)()
{
  OUTLINED_FUNCTION_1_17();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_14();
  if (qword_1EDBBAED8 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  if (byte_1EDBC6078 == 1)
  {
    v4();
    v8 = sub_1D7F06698();
    OUTLINED_FUNCTION_6_10(v8);

    if (v1)
    {
      sub_1D81919C4();
      sub_1D7E1A4D0();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D819FAC0;
      v10 = [v3 description];
      sub_1D8190F14();

      *(v9 + 56) = MEMORY[0x1E69E6158];
      v11 = sub_1D7E13BF4();
      OUTLINED_FUNCTION_2_20(v11);
      OUTLINED_FUNCTION_5_7();
      v12 = sub_1D8191E44();
      OUTLINED_FUNCTION_4_14();
    }

    else
    {
      v1 = sub_1D8190EE4();

      [v3 setAccessibilityIdentifier_];
    }

    (*(v6 + 8))(v2, v0);
  }
}

uint64_t type metadata accessor for BlueprintLayoutCollectionLayoutAttributes()
{
  result = qword_1EDBBC2B8;
  if (!qword_1EDBBC2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1D7E58F9C()
{
  result = sub_1D7E59110();
  byte_1EDBC6078 = result;
  return result;
}

void sub_1D7E58FC0()
{
  sub_1D7E5951C(319, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  if (v0 <= 0x3F)
  {
    sub_1D7E5951C(319, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

BOOL sub_1D7E59110()
{
  sub_1D818EAF4();
  sub_1D818EAE4();
  if (qword_1EDBBC610 != -1)
  {
    swift_once();
  }

  sub_1D818EAD4();

  if (v4)
  {
    return v4 == 1;
  }

  else
  {
    v1 = [objc_opt_self() processInfo];
    sub_1D8191994();

    return v3;
  }
}

uint64_t sub_1D7E59208()
{
  v0 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7E59570();
  v13[15] = 0;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D6E90], v6);
  sub_1D7E59950();
  sub_1D7E599A8();
  *(swift_allocObject() + 16) = xmmword_1D81A1B70;
  v13[14] = 0;
  OUTLINED_FUNCTION_0_191();
  v13[13] = 1;
  OUTLINED_FUNCTION_0_191();
  v13[12] = 2;
  OUTLINED_FUNCTION_0_191();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D6EA0], v0);
  sub_1D7E59B30();
  result = sub_1D818EC34();
  qword_1EDBBC618 = result;
  return result;
}

void sub_1D7E594C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D8191E84();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7E5951C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E59570()
{
  if (!qword_1EDBBC590)
  {
    sub_1D7E595F0();
    v0 = sub_1D818EC54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC590);
    }
  }
}

unint64_t sub_1D7E595F0()
{
  result = qword_1EDBBC620;
  if (!qword_1EDBBC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC620);
  }

  return result;
}

void *sub_1D7E59644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  (*(*((*MEMORY[0x1E69E7D40] & *v3) + 0x68) + 32))(&v22, *((*MEMORY[0x1E69E7D40] & *v3) + 0x50));
  v8 = [v3 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 contentOffset];
  }

  v10 = [v4 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 adjustedContentInset];
  }

  v12 = v24;
  if (*(v24 + 16) && (v13 = sub_1D7E11428(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    sub_1D8190DB4();
    v16 = sub_1D7EA83F4(a3, v15);

    if (v16 && BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter())
    {
      memcpy(__dst, v23, sizeof(__dst));
      sub_1D7EAF9D8(v23, v21);
      BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();
      v18 = v17;

      memcpy(v21, __dst, sizeof(v21));
      sub_1D7EAFC0C(v21);
      sub_1D7E598FC(&v22);
      return v18;
    }

    else
    {
      sub_1D7E598FC(&v22);
    }
  }

  else
  {
    sub_1D7E598FC(&v22);
    return 0;
  }

  return v16;
}

unint64_t sub_1D7E598A8()
{
  result = qword_1EDBBC638;
  if (!qword_1EDBBC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC638);
  }

  return result;
}

void sub_1D7E59950()
{
  if (!qword_1EDBB2CE0)
  {
    sub_1D7E599A8();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2CE0);
    }
  }
}

void sub_1D7E599A8()
{
  if (!qword_1EDBBC5A8)
  {
    v0 = sub_1D818EC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC5A8);
    }
  }
}

uint64_t sub_1D7E599F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1D8190EE4();

  sub_1D7E3F564(a3, a4, qword_1EDBB8BF0, type metadata accessor for CollectionReusableView);
  v9 = sub_1D8190EE4();

  v10 = sub_1D818E8E4();
  v11 = [v5 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:v10];

  sub_1D7E3F0B8(0, qword_1EDBB8BF0, type metadata accessor for CollectionReusableView);

  return swift_dynamicCastClassUnconditional();
}

unint64_t sub_1D7E59B30()
{
  result = qword_1EDBBC628;
  if (!qword_1EDBBC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC628);
  }

  return result;
}

uint64_t sub_1D7E59BA8(uint64_t a1)
{
  v2 = sub_1D7E59DE0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

char *CollectionReusableView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0 + qword_1EDBB8C78;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  *(v1 + 24) = 0;
  v2 = qword_1EDBB8C80;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v3 = (v0 + qword_1EDBB8C90);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + qword_1EDBB8C88) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v14 = type metadata accessor for CollectionReusableView();
  v4 = OUTLINED_FUNCTION_80();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, v14);
  v8 = qword_1EDBB8C88;
  v9 = *&v7[qword_1EDBB8C88];
  v10 = v7;
  [v10 addSubview_];
  v11 = *&v7[v8];
  [v10 bounds];
  [v11 setFrame_];

  v12 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor_];

  return v10;
}

unint64_t sub_1D7E59DE0()
{
  result = qword_1EDBBC630;
  if (!qword_1EDBBC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC630);
  }

  return result;
}

id HiddenView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

uint64_t sub_1D7E59E84@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Automation.RunnerState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D7E59EAC(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_14();
  objc_msgSendSuper2(&v8, sel_applyLayoutAttributes_, a1);
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D7EA8884();
    if (v5)
    {
      v6 = v5;
      v7 = a1;
      v6(v1, v4);
      sub_1D7E0E10C(v6);
    }
  }
}

uint64_t Settings.Automation.RunnerState.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

_BYTE *_s10AutomationV11RunnerStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1D7E5A0ACLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1D7E5A0D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7E59EAC(v4);
}

uint64_t getEnumTagSinglePayload for BarViewSeparator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_1D7E5A1DC()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = sub_1D8190F14();
  v17 = v16;
  sub_1D818E924();
  v18 = v5;
  v19 = v3;
  v20 = v7;
  v1(v18, v19, v15, v17, v14);

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_100();
}

id sub_1D7E5A338(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_layoutOptionsCommit;
  sub_1D7E268D8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D7E5A594();
  swift_allocObject();
  *&a2[v8] = sub_1D818F144();
  v9 = &a2[OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_blueprintLayoutOptionsProvider];
  *v9 = a1;
  v9[1] = a4;
  a2[OBJC_IVAR____TtC5TeaUI27PluginLayoutOptionsProvider_useWindowSizeViewportAdjustment] = 0;
  v11.receiver = a2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id PluginLayoutOptionsProvider.init(blueprintLayoutOptionsProvider:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_14_4();

  return sub_1D7E5A338(v0, v1, v2, v3);
}

id sub_1D7E5A45C(void (*a1)(uint64_t))
{
  v3 = sub_1D818E584();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  result = [*(v1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (result)
  {
    v11 = result;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v14)
      {
        break;
      }

      v12 = OUTLINED_FUNCTION_9_41();
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      a1(v12);
      swift_unknownObjectRelease();
    }

    return (*(v5 + 8))(v9, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7E5A594()
{
  if (!qword_1EDBBC4F8)
  {
    sub_1D7E269A0();
    v0 = sub_1D818F194();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC4F8);
    }
  }
}

void sub_1D7E5A624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v11 = sub_1D8190EE4();
    v12 = sub_1D818E8E4();
    [a1 *a7];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7E5A708(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190F14();
  sub_1D818E924();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  BlueprintCollectionViewDelegate.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(v11, v12);

  return (*(v8 + 8))(v10, v7);
}

void BlueprintCollectionViewDelegate.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v5 = *(v4 + 224);
  OUTLINED_FUNCTION_10();
  v6 = *(v2 + v5);
  if (v6)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2))
    {
      v8 = v7;
      v9 = v6;
      v10 = a2;
      OUTLINED_FUNCTION_85();
      BlueprintViewportMonitor.add(observer:scrollView:)();
      ObjectType = swift_getObjectType();
      (*(v8 + 64))(v9, ObjectType, v8);
    }
  }
}

uint64_t MastheadViewController.plugin.setter(uint64_t a1)
{
  v3 = qword_1EDBB8810;
  OUTLINED_FUNCTION_56();
  *(v1 + v3) = a1;

  sub_1D7E5ACAC();
}

uint64_t sub_1D7E5A984()
{
  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_128_2();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintModifierResult();
  v0 = sub_1D8191504();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_47_7();

  return sub_1D7E5F04C(v1);
}

uint64_t sub_1D7E5AAD0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_62();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_6();

    return v10();
  }
}

uint64_t objectdestroy_84Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E5AC2C()
{
  v1 = qword_1EDBB8818;
  if (*(v0 + qword_1EDBB8818))
  {
    v2 = *(v0 + qword_1EDBB8818);
  }

  else
  {
    v3 = v0;
    type metadata accessor for PluginManager();
    swift_allocObject();
    v2 = PluginManager.init(enableReuseLayoutSuppression:)(0);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D7E5ACAC()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = sub_1D7E5AC2C();
  v4 = (*(*v3 + 112))();

  if (v4)
  {
  }

  else
  {
    v5 = *(**&v1[qword_1EDBB8818] + 120);

    v6 = v1;
    v5(v1, &protocol witness table for MastheadViewController<A>);
  }

  sub_1D7E5B310();

  v7 = qword_1EDBB8810;
  swift_beginAccess();
  v8 = *&v1[v7];
  if (!v8)
  {
    return sub_1D7E5B508(0);
  }

  sub_1D7F13318(v8);

  swift_beginAccess();
  v8[6] = &protocol witness table for MastheadViewController<A>;
  swift_unknownObjectWeakAssign();
  sub_1D7E74344();
  sub_1D805BDE8(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = *(v2 + 80);
  v11[3] = *(v2 + 88);
  v11[4] = v10;

  sub_1D7FB7714(sub_1D805F198, v11);
}

uint64_t sub_1D7E5B064()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7E5B09C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E5B0D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  OUTLINED_FUNCTION_10_6();

  return v3();
}

uint64_t PluginManager.init(enableReuseLayoutSuppression:)(char a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 32) = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = v3;
  *(v1 + 48) = a1;
  return v1;
}

uint64_t sub_1D7E5B1FC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D7F21CC8;
  }

  else
  {
    v2 = sub_1D7E5B564;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7E5B310()
{
  v2 = v0;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = (v5 - v4);
  v7 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v6 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_16_3();
  v9(v8);
  sub_1D8190CA4();
  v10 = OUTLINED_FUNCTION_13_4();
  result = v11(v10);
  if (v7)
  {
    OUTLINED_FUNCTION_6_13();
    swift_beginAccess();
    v13 = *(v2 + 32) + 64;
    OUTLINED_FUNCTION_24();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v19 = 0;
    if (!v16)
    {
      goto LABEL_4;
    }

    do
    {
      v20 = v19;
LABEL_7:

      sub_1D7F13808(v21);
      if (v1)
      {
      }

      v16 &= v16 - 1;

      v19 = v20;
    }

    while (v16);
LABEL_4:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7E5B508(uint64_t a1)
{
  *(v1 + qword_1EDBB8890) = a1;

  sub_1D7E5B7F8();
}

uint64_t sub_1D7E5B564()
{
  v1 = v0[25];
  v2 = CACurrentMediaTime();
  sub_1D81921A4();
  MEMORY[0x1DA713260](0x3D656D6974, 0xE500000000000000);
  countAndFlagsBits = BlueprintPipelineRecorder.format(start:end:)(v1, v2)._countAndFlagsBits;
  MEMORY[0x1DA713260](countAndFlagsBits);

  MEMORY[0x1DA713260](0x746C75736572202CLL, 0xE90000000000003DLL);
  v4 = sub_1D81925F4();
  OUTLINED_FUNCTION_2_28(v4, 0);

  v5 = sub_1D818FD94();
  sub_1D818FDD4();
  v6 = sub_1D8191B24();
  result = sub_1D8191E34();
  if (result)
  {
    if (!*(v0 + 21))
    {
      __break(1u);
      return result;
    }

    v8 = *(v0 + 13);
    v9 = *(v0 + 10);
    v10 = *(v0 + 11);

    sub_1D818FE04();

    if ((*(v10 + 88))(v8, v9) != *MEMORY[0x1E69E93E8])
    {
      (*(*(v0 + 11) + 8))(*(v0 + 13), *(v0 + 10));
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1D818FD74();
    OUTLINED_FUNCTION_1_27(&dword_1D7DFF000, v5, v6, v12);
    MEMORY[0x1DA715D00](v11, -1, -1);
  }

  v13 = *(v0 + 23);
  v14 = *(v0 + 17);
  v15 = *(v0 + 14);

  v13(v14, v15);

  v16 = *(v0 + 1);

  return v16();
}

id sub_1D7E5B7F8()
{
  v1 = qword_1EDBB8890;
  v2 = *(v0 + qword_1EDBB8890);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = sub_1D8190DB4();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = (v0 + qword_1EDBB8868);
  *v5 = v3;
  v5[1] = v4;

  v6 = *(v0 + qword_1EDBB88A8);
  v7 = *(v0 + v1);
  if (v7)
  {
    v8 = *(v7 + 96) == 0.0;
  }

  else
  {
    v8 = 0;
  }

  return [v6 setHidden_];
}

Swift::String __swiftcall BlueprintPipelineRecorder.format(start:end:)(Swift::Double start, Swift::Double end)
{
  sub_1D7E1A4D0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D819FAB0;
  v5 = MEMORY[0x1E69E6438];
  *(v4 + 56) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = v5;
  *(v4 + 32) = (end - start) * 1000.0;

  v6 = sub_1D8190F54();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t BlueprintModifierResult.description.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v62[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0x65676E6168436F6ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v6 = 0xD000000000000013;
      v26 = OUTLINED_FUNCTION_10_37();
      type metadata accessor for BlueprintBookmark();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v28 = *(TupleTypeMetadata3 + 48);
      v29 = OUTLINED_FUNCTION_11_32(*(TupleTypeMetadata3 + 64));
      sub_1D8022FD0(v29);
      sub_1D7E2BBA0(v3 + v28);
      goto LABEL_13;
    case 2:
      v30 = OUTLINED_FUNCTION_10_37();
      type metadata accessor for BlueprintBookmark();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v32 = OUTLINED_FUNCTION_11_32(*(TupleTypeMetadata2 + 48));
      sub_1D7E2BBA0(v32);
      OUTLINED_FUNCTION_3_0();
      (*(v33 + 8))(v3, v30);
      OUTLINED_FUNCTION_24_14();
      v6 = v34 - 2;
      break;
    case 3:
      OUTLINED_FUNCTION_10_37();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_17_20();
      v14 = swift_getTupleTypeMetadata3();
      v15 = *(v14 + 48);
      sub_1D7E2BBA0(v3 + *(v14 + 64));
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + v15);
      OUTLINED_FUNCTION_4_54();
      v16 = OUTLINED_FUNCTION_109();
      v17(v16);
      v6 = 0x7365676E616863;
      break;
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      OUTLINED_FUNCTION_6_52();
      *(v38 - 40) = v39;
      OUTLINED_FUNCTION_5_1(v38);
      OUTLINED_FUNCTION_12_29();
      *&v64 = type metadata accessor for Blueprint();
      *(&v64 + 1) = sub_1D7E0631C(255, &qword_1EDBBA670);
      *&v65 = type metadata accessor for BlueprintBookmark();
      *(&v65 + 1) = &type metadata for BlueprintAnimation;
      v40 = OUTLINED_FUNCTION_14_22();
      v41 = v40[12];
      v42 = v40[16];
      v43 = OUTLINED_FUNCTION_11_32(v40[20]);
      sub_1D8022FD0(v43);
      sub_1D7E2BBA0(v3 + v42);
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + v41);
      OUTLINED_FUNCTION_12_29();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_8();
      (*(v44 + 8))(v3);
      OUTLINED_FUNCTION_24_14();
      v6 = v45 + 1;
      break;
    case 5:
      v49 = OUTLINED_FUNCTION_10_37();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      v50 = swift_getTupleTypeMetadata3();
      v51 = *(v50 + 48);
      v52 = OUTLINED_FUNCTION_11_32(*(v50 + 64));
      sub_1D7E2BBA0(v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + v51);
      OUTLINED_FUNCTION_3_0();
      (*(v53 + 8))(v3, v49);
      OUTLINED_FUNCTION_24_14();
      v6 = v54 - 1;
      break;
    case 6:
      OUTLINED_FUNCTION_10_37();
      v35 = sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_17_20();
      swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_25_12();
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + v35);
      OUTLINED_FUNCTION_4_54();
      v36 = OUTLINED_FUNCTION_109();
      v37(v36);
      v6 = 0x6974634177656976;
      break;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      OUTLINED_FUNCTION_6_52();
      *(v55 - 40) = v56;
      OUTLINED_FUNCTION_5_1(v55);
      OUTLINED_FUNCTION_12_29();
      *&v64 = type metadata accessor for Blueprint();
      *(&v64 + 1) = sub_1D7E0631C(255, &qword_1EDBBA670);
      *&v65 = type metadata accessor for BlueprintViewActionResponse();
      *(&v65 + 1) = &type metadata for BlueprintAnimation;
      v57 = OUTLINED_FUNCTION_14_22();
      OUTLINED_FUNCTION_25_12();
      v58 = OUTLINED_FUNCTION_11_32(*(v57 + 80));
      sub_1D8022FD0(v58);
      __swift_destroy_boxed_opaque_existential_1Tm(&v62[v3]);
      OUTLINED_FUNCTION_12_29();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_8();
      (*(v59 + 8))(v3);
      OUTLINED_FUNCTION_24_14();
      v6 = v60 | 4;
      break;
    case 8:
      OUTLINED_FUNCTION_10_37();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_17_20();
      v23 = swift_getTupleTypeMetadata2();
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + *(v23 + 48));
      OUTLINED_FUNCTION_4_54();
      v24 = OUTLINED_FUNCTION_109();
      v25(v24);
      v6 = 0x6465766F6DLL;
      break;
    case 9:
      sub_1D7E2BBA0(v3);
      v6 = 0x6B72616D6B6F6F62;
      break;
    case 10:
      v13 = *v3;
      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      MEMORY[0x1DA713260](0x2864656C696166, 0xE700000000000000);
      v63 = v13;
      sub_1D7E0631C(0, &qword_1EDBB2BC0);
      sub_1D8192334();
      MEMORY[0x1DA713260](41, 0xE100000000000000);

      v6 = v64;
      break;
    case 11:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      OUTLINED_FUNCTION_6_52();
      *(v18 - 40) = v19;
      *(v18 - 48) = *"blueprint diff response animated bookmark ";
      strcpy((v18 - 38), "diff response animated bookmark ");
      OUTLINED_FUNCTION_12_29();
      *&v64 = type metadata accessor for Blueprint();
      *(&v64 + 1) = sub_1D7E0631C(255, &qword_1EDBBA670);
      sub_1D7E546F8();
      *&v65 = v20;
      *(&v65 + 1) = MEMORY[0x1E69E6370];
      v66 = type metadata accessor for BlueprintBookmark();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_25_12();
      sub_1D7E2BBA0(v3 + *(TupleTypeMetadata + 96));
      __swift_destroy_boxed_opaque_existential_1Tm(&v62[v3]);
      OUTLINED_FUNCTION_12_29();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_8();
      (*(v22 + 8))(v3);
      v6 = 0x616E53796C707061;
      break;
    case 12:
      v6 = 0xD000000000000013;
      v26 = OUTLINED_FUNCTION_10_37();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      v46 = swift_getTupleTypeMetadata2();
      v47 = OUTLINED_FUNCTION_11_32(*(v46 + 48));
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
LABEL_13:
      OUTLINED_FUNCTION_3_0();
      (*(v48 + 8))(v3, v26);
      break;
    case 13:
      v10 = *(a1 + 32);
      v64 = *(a1 + 16);
      v65 = v10;
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_8();
      (*(v11 + 8))(v3);
      OUTLINED_FUNCTION_24_14();
      v6 = v12 - 3;
      break;
    case 14:
      return v6;
    default:
      OUTLINED_FUNCTION_10_37();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_17_20();
      v7 = swift_getTupleTypeMetadata2();
      sub_1D7E2BBA0(v3 + *(v7 + 48));
      OUTLINED_FUNCTION_4_54();
      v8 = OUTLINED_FUNCTION_109();
      v9(v8);
      v6 = 0x64616F6C6572;
      break;
  }

  return v6;
}

void SwipeActionCollectionView.contentOffset.setter(double a1, double a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_setContentOffset_, a1, a2);
  sub_1D7E5C3B8();
}

void sub_1D7E5C3B8()
{
  ObjectType = swift_getObjectType();
  [v0 bounds];
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 0.0;
  v6.size.height = 0.0;
  if (CGRectEqualToRect(v5, v6))
  {
    if (*(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_isBottomRubberBanding) == 1)
    {
      *(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_isBottomRubberBanding) = 0;

      sub_1D808368C();
    }
  }

  else
  {
    v3.receiver = v0;
    v3.super_class = ObjectType;
    objc_msgSendSuper2(&v3, sel_contentOffset);
    if (v2 > 0.0 && ([v0 ts_isVerticalBouncing] & 1) != 0)
    {
      if (*(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_isBottomRubberBanding))
      {
        return;
      }

      *(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_isBottomRubberBanding) = 1;
    }

    else
    {
      if (*(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_isBottomRubberBanding) != 1)
      {
        return;
      }

      *(v0 + OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_isBottomRubberBanding) = 0;
    }

    sub_1D808368C();
  }
}

double sub_1D7E5C4B0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D805C56C();
  v8 = a1;
  sub_1D813C6B4(a1);

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    if ([v10 delegate])
    {
      v12 = a2;
      v13 = type metadata accessor for MultiCollectionViewDelegate();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = [objc_allocWithZone(v13) init];
        sub_1D7E33140(v15, &OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates, &OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_respondsToSelectorCache);
        MultiCollectionViewDelegate.addDelegate<A>(_:)(v3);
        [v10 setDelegate_];
        v12[3] = v13;
        swift_unknownObjectRelease();

        *v12 = v16;
        return result;
      }

      swift_unknownObjectRelease();
      a2 = v12;
    }

    else
    {
    }
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = v8;
    v21 = [v19 delegate];
    if (v21)
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E69D6CE8]) initWithDelegate:v21 delegateProtocol:&unk_1F535EED0];
      [v22 addDelegate_];
      [v19 setDelegate_];
      swift_unknownObjectRelease();
      a2[3] = sub_1D7E0A1A8(0, &qword_1EDBAE538);
      swift_unknownObjectRelease();

      *a2 = v22;
      return result;
    }
  }

  v23 = [v8 delegate];
  if (v23)
  {
    v24 = v23;
    swift_getObjectType();
    v25 = dynamic_cast_existential_1_conditional(v24);
    if (v25)
    {
      v27 = v25;
      v28 = v26;
      v29 = swift_getObjectType();
      (*(v28 + 8))(v3, ObjectType, v29, v28);
      a2[3] = v29;
      *a2 = v27;
      return result;
    }

    swift_unknownObjectRelease();
  }

  if ([v8 delegate])
  {
    v30 = type metadata accessor for MultiScrollViewDelegate();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      MultiScrollViewDelegate.addDelegate<A>(_:)(v3);
      a2[3] = v30;
      *a2 = v32;
      return result;
    }

    swift_unknownObjectRelease();
  }

  if ([v8 delegate])
  {
    v33 = swift_dynamicCastObjCProtocolConditional();
    if (v33)
    {
      v34 = v33;
      swift_getObjectType();
      sub_1D7E0A1A8(0, &qword_1EDBB2F40);
      v35 = dynamic_cast_existential_0_superclass_conditional(v34);
      if (v35)
      {
        v36 = v35;
        v37 = type metadata accessor for MultiScrollViewDelegate();
        v38 = [objc_allocWithZone(v37) init];
        sub_1D7E33140(v36, &OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_delegates, &OBJC_IVAR____TtC5TeaUI23MultiScrollViewDelegate_respondsToSelectorCache);
        MultiScrollViewDelegate.addDelegate<A>(_:)(v3);
        [v8 setDelegate_];
        a2[3] = v37;
        swift_unknownObjectRelease();
        *a2 = v38;
        return result;
      }
    }

    swift_unknownObjectRelease();
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t sub_1D7E5C8DC(uint64_t a1, uint64_t a2)
{
  sub_1D7E32104(0, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7E5C970()
{
  if (!qword_1EDBB2BE0)
  {
    sub_1D7E09D14(255, &qword_1EDBBC780);
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2BE0);
    }
  }
}

uint64_t sub_1D7E5C9DC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D7E09D14(0, a3);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7E5CA58(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1D81927E4();
  a3(a2);
  OUTLINED_FUNCTION_5_86();

  return sub_1D8192824();
}

void sub_1D7E5CAAC()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    v6 = MEMORY[0x1E69E7CA0];
    if (v2)
    {
      OUTLINED_FUNCTION_0_1();
      sub_1D7E1B5C8(0, v7, v6 + 8, v8);
      v9 = OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_8_10(v9);
      OUTLINED_FUNCTION_5_2(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_3_13();
        sub_1D7E5CB78(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_3();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1D7E5CB78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}