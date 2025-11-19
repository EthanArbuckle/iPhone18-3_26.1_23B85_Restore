uint64_t WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a5;
  v50 = a1;
  v14 = type metadata accessor for WorkoutPlan();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = (MEMORY[0x28223BE20])();
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  outlined copy of Data._Representation(a2, a3);
  WorkoutPlan.init(from:)();
  v47 = a6;
  v48 = a7;
  v45 = OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_lastPresenter;
  swift_unknownObjectWeakAssign();
  v46 = v8;
  v22 = (v8 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v23 = *(v8 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v24 = *(v8 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion + 8);
  v43 = a4;
  v25 = v49;
  *v22 = a4;
  v22[1] = v25;
  swift_retain_n();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v23);
  v26 = v15;
  v27 = *(v15 + 16);
  v44 = v21;
  v27(v19, v21, v14);
  v28 = type metadata accessor for WorkoutHostingRemoteViewController();
  v29 = objc_allocWithZone(v28);
  v30 = v14;
  v31 = &v29[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion];
  *v31 = 0;
  *(v31 + 1) = 0;
  *&v29[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController] = 0;
  v27(&v29[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_workout], v19, v30);
  *v31 = v43;
  *(v31 + 1) = v25;
  v32 = v30;
  v52.receiver = v29;
  v52.super_class = v28;
  v33 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);
  v34 = *(v26 + 8);
  v34(v19, v32);
  v35 = v50;
  v36 = [v35 presentedViewController];
  if (v36)
  {
    do
    {
      v37 = v36;

      v36 = [v37 presentedViewController];
      v35 = v37;
    }

    while (v36);
  }

  else
  {
    v37 = v35;
  }

  swift_unknownObjectWeakAssign();
  v38 = swift_allocObject();
  v39 = v48;
  *(v38 + 16) = v47;
  *(v38 + 24) = v39;
  aBlock[4] = partial apply for closure #1 in WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:);
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v40 = _Block_copy(aBlock);

  [v37 presentViewController:v33 animated:1 completion:v40];
  _Block_release(v40);

  return (v34)(v44, v32);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v31 = a1;
  v10 = type metadata accessor for WorkoutPlan();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_lastPresenter;
  swift_unknownObjectWeakAssign();
  v33 = v6;
  v15 = (v6 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v17 = *(v6 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v16 = *(v6 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion + 8);
  *v15 = a3;
  v15[1] = a4;
  v18 = a3;
  swift_retain_n();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);
  v19 = *(v11 + 16);
  v19(v14, a2, v10);
  v20 = type metadata accessor for WorkoutHostingRemoteViewController();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v21[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController] = 0;
  v19(&v21[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_workout], v14, v10);
  *v22 = v18;
  *(v22 + 1) = a4;
  v37.receiver = v21;
  v37.super_class = v20;
  v23 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);
  (*(v11 + 8))(v14, v10);
  v24 = v31;
  v25 = [v24 presentedViewController];
  if (v25)
  {
    do
    {
      v26 = v25;

      v25 = [v26 presentedViewController];
      v24 = v26;
    }

    while (v25);
  }

  else
  {
    v26 = v24;
  }

  swift_unknownObjectWeakAssign();
  v27 = swift_allocObject();
  v28 = v35;
  *(v27 + 16) = v34;
  *(v27 + 24) = v28;
  aBlock[4] = closure #1 in WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)partial apply;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_7;
  v29 = _Block_copy(aBlock);

  [v26 presentViewController:v23 animated:1 completion:v29];
  _Block_release(v29);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for WorkoutHostingRemoteViewController()
{
  result = type metadata singleton initialization cache for WorkoutHostingRemoteViewController;
  if (!type metadata singleton initialization cache for WorkoutHostingRemoteViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274C93EE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1, 0);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall WorkoutRemoteViewServiceAdaptor.dismissRemoteViewController(on:)(UIViewController *on)
{
  v2 = [(UIViewController *)on presentedViewController];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for WorkoutHostingRemoteViewController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }

  swift_unknownObjectWeakAssign();
  v5 = (v1 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v6 = *(v1 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v7 = *(v1 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion + 8);
  *v5 = 0;
  v5[1] = 0;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

uint64_t WorkoutRemoteViewServiceAdaptor.closeButtonTapped()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentedViewController];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for WorkoutHostingRemoteViewController();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        [v5 dismissViewControllerAnimated:1 completion:0];
        v6 = v4;
      }

      else
      {
        v6 = v2;
        v2 = v4;
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v7 = (v0 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v8 = *(v0 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  if (v8)
  {
    v9 = v7[1];

    v8(v10);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
    v11 = *v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7[1];
  *v7 = 0;
  v7[1] = 0;

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
}

id WorkoutRemoteViewServiceAdaptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutRemoteViewServiceAdaptor.init()()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion];
  v2 = type metadata accessor for WorkoutRemoteViewServiceAdaptor();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t dispatch thunk of WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

Swift::Void __swiftcall WorkoutHostingRemoteViewController.viewDidLoad()()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for WorkoutHostingRemoteViewController();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [objc_opt_self() systemBackgroundColor];
  [v5 setBackgroundColor_];

  [v1 startAnimating];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274C96870;
  v8 = [v1 centerXAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 centerXAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [v1 centerYAnchor];

  v14 = [v0 view];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v15 centerYAnchor];

    v18 = [v13 constraintEqualToAnchor_];
    *(v7 + 40) = v18;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints_];

    type metadata accessor for WorkoutRemoteViewController();
    v20 = OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_workout;
    v21 = swift_allocObject();
    *(v21 + 16) = v0;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v1;
    v24 = v1;
    v25 = v0;

    static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(v0 + v20, partial apply for closure #1 in WorkoutHostingRemoteViewController.viewDidLoad(), v21, partial apply for closure #2 in WorkoutHostingRemoteViewController.viewDidLoad(), v23);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t closure #1 in WorkoutHostingRemoteViewController.viewDidLoad()(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion + 8);

    v1(v3);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
  }

  return result;
}

void closure #2 in WorkoutHostingRemoteViewController.viewDidLoad()(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2 || !a1)
    {
      v9 = *(Strong + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion);
      if (!v9)
      {
LABEL_6:

        return;
      }

      v10 = *(Strong + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion + 8);

      v9(v11);
    }

    else
    {
      v15 = a1;
      v16 = [v15 view];
      if (v16)
      {
        v17 = v16;
        v18 = [objc_opt_self() currentDevice];
        v19 = [v18 userInterfaceIdiom];

        if (v19 == 1)
        {
          [v15 setModalPresentationStyle_];
          [v15 setPreferredContentSize_];
        }

        v20 = v8;
        [v20 addChildViewController_];
        [v17 setAlpha_];
        [v17 setTranslatesAutoresizingMaskIntoConstraints_];
        v21 = [v20 view];
        if (v21)
        {
          v22 = v21;
          [v21 addSubview_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_274C96880;
          v24 = [v17 leadingAnchor];
          v25 = [v20 view];

          if (v25)
          {
            v26 = [v25 leadingAnchor];

            v27 = [v24 constraintEqualToAnchor_];
            *(v23 + 32) = v27;
            v28 = [v17 trailingAnchor];
            v29 = [v20 view];

            if (v29)
            {
              v30 = [v29 trailingAnchor];

              v31 = [v28 constraintEqualToAnchor_];
              *(v23 + 40) = v31;
              v32 = [v17 topAnchor];
              v33 = [v20 view];

              if (v33)
              {
                v34 = [v33 topAnchor];

                v35 = [v32 constraintEqualToAnchor_];
                *(v23 + 48) = v35;
                v36 = [v17 bottomAnchor];
                v37 = [v20 0x279EF8AF8];

                if (v37)
                {
                  v38 = objc_opt_self();
                  v39 = [v37 bottomAnchor];

                  v40 = [v36 constraintEqualToAnchor_];
                  *(v23 + 56) = v40;
                  type metadata accessor for NSLayoutConstraint();
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v38 activateConstraints_];

                  [v15 didMoveToParentViewController_];
                  v42 = objc_opt_self();
                  v43 = swift_allocObject();
                  *(v43 + 16) = v17;
                  *(v43 + 24) = a4;
                  v57 = partial apply for closure #1 in closure #2 in WorkoutHostingRemoteViewController.viewDidLoad();
                  v58 = v43;
                  aBlock = MEMORY[0x277D85DD0];
                  v54 = 1107296256;
                  v55 = thunk for @escaping @callee_guaranteed () -> ();
                  v56 = &block_descriptor_40;
                  v44 = _Block_copy(&aBlock);
                  v45 = v17;
                  v46 = a4;

                  v47 = swift_allocObject();
                  *(v47 + 16) = v46;
                  v57 = partial apply for closure #2 in closure #2 in WorkoutHostingRemoteViewController.viewDidLoad();
                  v58 = v47;
                  aBlock = MEMORY[0x277D85DD0];
                  v54 = 1107296256;
                  v55 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
                  v56 = &block_descriptor_46;
                  v48 = _Block_copy(&aBlock);
                  v49 = v46;

                  [v42 animateWithDuration:v44 animations:v48 completion:0.2];

                  _Block_release(v48);
                  _Block_release(v44);
                  v50 = *&v20[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController];
                  *&v20[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController] = a1;

                  return;
                }

LABEL_28:
                __break(1u);
                return;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_26;
      }

      v9 = *&v8[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion];
      if (!v9)
      {

        return;
      }

      v51 = *&v8[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion + 8];

      v9(v52);
    }

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion);
    v14 = v12;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v13);

    if (v13)
    {
      v13();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id WorkoutRemoteViewServiceAdaptor.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata completion function for WorkoutHostingRemoteViewController()
{
  result = type metadata accessor for WorkoutPlan();
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

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t sub_274C95228()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274C95268()
{
  MEMORY[0x277C67CD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274C952A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274C952F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id partial apply for closure #1 in closure #2 in WorkoutHostingRemoteViewController.viewDidLoad()()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t sub_274C95394()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a2;
  v8 = type metadata accessor for WorkoutPlan();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = MEMORY[0x277C67900](0xD000000000000035, 0x8000000274C96E60);
  v12 = MEMORY[0x277C67900](0xD000000000000022, 0x8000000274C96EA0);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v19;
  *(v14 + 24) = a5;
  (*(v9 + 32))(v14 + v13, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v20;
  v15[1] = a3;
  aBlock[4] = partial apply for closure #1 in static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIRemoteViewController?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  v17 = [ObjCClassFromMetadata requestViewController:v11 fromServiceWithBundleIdentifier:v12 connectionHandler:v16];
  _Block_release(v16);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutRemoteViewError()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C67990](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutRemoteViewError()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C67990](0);
  return Hasher._finalize()();
}

id @objc static WorkoutRemoteViewController.serviceViewControllerInterface()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

void closure #1 in static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(void *a1, void *a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = a2;
    a3(0, a2);
    v18 = a2;
LABEL_7:

    return;
  }

  if (!a1 || (type metadata accessor for WorkoutRemoteViewController(), (v19 = swift_dynamicCastClass()) == 0))
  {
    lazy protocol witness table accessor for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError();
    v22 = swift_allocError();
    a3(0, v22);
    v18 = v22;
    goto LABEL_7;
  }

  v20 = v19;
  (*(v13 + 104))(v16, *MEMORY[0x277CE3FA0], v12);
  v34 = a1;
  v21 = WorkoutPlan.dataRepresentation(as:)();
  v24 = v23;
  v35 = v21;
  (*(v13 + 8))(v16, v12);
  v25 = WorkoutRemoteViewServiceInterfaceFunc([v20 serviceViewControllerProxy]);
  swift_unknownObjectRelease();
  v26 = v35;
  v27 = v24;
  if (v25)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v25 presentWorkoutDataRepresentation_];

    swift_unknownObjectRelease();
  }

  v29 = &v20[OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler];
  v30 = *&v20[OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler];
  v31 = *&v20[OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler + 8];
  *v29 = a6;
  *(v29 + 1) = a7;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v30);
  v32 = v34;
  a3(v20, 0);

  outlined consume of Data._Representation(v26, v27);
}

void thunk for @escaping @callee_guaranteed (@guaranteed _UIRemoteViewController?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id WorkoutRemoteViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutRemoteViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274C95DF4()
{
  v1 = type metadata accessor for WorkoutPlan();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void partial apply for closure #1 in static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for WorkoutPlan() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  closure #1 in static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError()
{
  result = lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError;
  if (!lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError;
  if (!lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutRemoteViewError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutRemoteViewError(_WORD *result, int a2, int a3)
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