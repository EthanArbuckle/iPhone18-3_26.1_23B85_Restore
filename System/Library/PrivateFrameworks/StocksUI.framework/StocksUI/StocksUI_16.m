unint64_t sub_220627634()
{
  result = qword_27CF57B30;
  if (!qword_27CF57B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57B30);
  }

  return result;
}

void sub_220627718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_2204443BC(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_2204443BC(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22062782C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_220627864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206278C4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2205124A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220627930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220627998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220627A00(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2205124A4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220627A6C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong text];

      if (v4)
      {
        v5 = sub_22089136C();
        v7 = v6;

        Strong = v5;
LABEL_7:
        sub_220627B30(Strong, v7);
      }

      Strong = 0;
    }

    v7 = 0;
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_220627B30(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208854AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  v14 = *(v2 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintViewController);
  sub_22088C71C();
  v15 = sub_22088BFCC();

  v16 = [v15 indexPathsForSelectedItems];

  if (v16)
  {
    v17 = sub_2208916EC();

    v18 = *(v17 + 16);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_7:

    goto LABEL_8;
  }

  v17 = MEMORY[0x277D84F90];
  v18 = *(MEMORY[0x277D84F90] + 16);
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_3:
  v36 = v8;
  v37 = a1;
  v38 = a2;
  v20 = *(v10 + 16);
  v19 = v10 + 16;
  v40 = v20;
  v21 = *(v19 + 64);
  v35[1] = v17;
  v22 = v17 + ((v21 + 32) & ~v21);
  v23 = *(v19 + 56);
  v24 = (v19 - 8);
  do
  {
    v40(v13, v22, v9);
    sub_22088C71C();
    v25 = v14;
    v26 = v19;
    v27 = sub_22088BFCC();

    v28 = sub_22088544C();
    (*v24)(v13, v9);
    [v27 deselectItemAtIndexPath:v28 animated:0];

    v19 = v26;
    v14 = v25;

    v22 += v23;
    --v18;
  }

  while (v18);

  a1 = v37;
  a2 = v38;
  v8 = v36;
LABEL_8:
  v29 = v39;
  v30 = *(v39 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler);
  v31 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
  swift_beginAccess();
  sub_22062BE54(v29 + v31, v8);
  v32 = *(v30 + 40);
  ObjectType = swift_getObjectType();
  (*(v32 + 72))(a1, a2, v8, ObjectType, v32);
  return sub_22062C09C(v8, type metadata accessor for StockSearchMode);
}

id sub_220627F7C()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = [v1 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame_];
    sub_22088C71C();
    v16 = sub_22088BFCC();

    [v16 setSelectionFollowsFocus_];

    v17 = [v1 traitCollection];
    sub_2206281E8(v17);

    sub_22088C73C();
    sub_22088B70C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22088868C();

    __swift_destroy_boxed_opaque_existential_1(v18);
    return sub_2208883FC();
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_2206281E8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_styler;
  swift_beginAccess();
  sub_22046DA2C(v2 + v4, v20);
  v5 = v21;
  v6 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v18 = v5;
  v19 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v17);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + v4);
  sub_220457328(&v17, v2 + v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_22046DA2C(v2 + v4, v20);
  v9 = __swift_project_boxed_opaque_existential_1(v20, v21);
  result = [v2 view];
  if (result)
  {
    v11 = result;
    v12 = *v9;
    v14 = *(*v9 + 40);
    v13 = *(*v9 + 48);
    __swift_project_boxed_opaque_existential_1((v12 + 16), v14);
    v15 = (*(*(v13 + 16) + 56))(v14);
    [v11 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v20);
    sub_22046DA2C(v2 + v4, v20);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_22088C71C();
    v16 = sub_22088BFCC();

    sub_2206E2A48(v16);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206283D4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(*(result + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler) + 40);
    v2 = result;
    ObjectType = swift_getObjectType();
    v4 = *(v1 + 88);
    swift_unknownObjectRetain();
    v4(ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2206284CC()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      sub_2206285B8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2206285B8()
{
  v0 = sub_22088C32C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C76C();
  swift_getObjectType();
  sub_22088D92C();
  swift_unknownObjectRelease();
  v5 = sub_22088C28C();
  (*(v1 + 8))(v4, v0);
  if ((sub_22088F0DC() & 1) != 0 && [v5 horizontalSizeClass] == 1)
  {
    sub_22088C71C();
    v6 = sub_22088BFCC();

    sub_22088C71C();
    v7 = sub_22088BFCC();

    [v7 contentInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    MEMORY[0x223D89BD0](0.0, v9, v11, v13, v15);
    sub_220891A5C();
    [v6 setContentInset_];

    v5 = v6;
  }
}

uint64_t sub_22062887C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_220888B7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
  swift_beginAccess();
  sub_22062C3B8(a1, v2 + v9);
  swift_endAccess();
  sub_220888B5C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088840C();

  (*(v5 + 8))(v8, v4);
}

void sub_2206289E8()
{
  v0 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler);
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7 && (v8 = v7, v9 = [v7 text], v8, v9))
    {
      v10 = sub_22089136C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v13 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
    swift_beginAccess();
    sub_22062BE54(v5 + v13, v3);
    v14 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 72))(v10, v12, v3, ObjectType, v14);

    sub_22062C09C(v3, type metadata accessor for StockSearchMode);
  }
}

void sub_220628B74()
{
  v1 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v29 - v7;
  *(v0 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_isSearchResultsActive) = 1;
  v9 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
  swift_beginAccess();
  sub_22062BE54(v0 + v9, v8);
  v10 = sub_220886A4C();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) != 1)
  {
    v20 = *(v0 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v22 = Strong, v23 = [Strong text], v22, v23))
    {
      v24 = sub_22089136C();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    sub_22062BE54(v0 + v9, v4);
    v27 = *(v20 + 40);
    ObjectType = swift_getObjectType();
    (*(v27 + 72))(v24, v26, v4, ObjectType, v27);

    sub_22062C09C(v4, type metadata accessor for StockSearchMode);
    v4 = v8;
    goto LABEL_10;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 text];

    if (v13)
    {
      v14 = sub_22089136C();
      v16 = v15;

      v17 = *(v0 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler);
      sub_22062BE54(v0 + v9, v4);
      v18 = *(v17 + 40);
      v19 = swift_getObjectType();
      (*(v18 + 72))(v14, v16, v4, v19, v18);

LABEL_10:
      sub_22062C09C(v4, type metadata accessor for StockSearchMode);
    }
  }
}

id sub_220628E1C()
{
  v1 = v0;
  v2 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088E85C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088E86C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_isSearchResultsActive] = 0;
  sub_22088C6FC();
  v15 = sub_22088B52C();

  if (v15)
  {
    sub_22088C6FC();
    (*(v11 + 104))(v14, *MEMORY[0x277D6EC88], v10);
    (*(v6 + 104))(v9, *MEMORY[0x277D6ECB0], v5);
    *(swift_allocObject() + 16) = v0;
    *(swift_allocObject() + 16) = v0;
    v16 = v0;
    sub_22088B54C();

    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
LABEL_14:
    v26 = *&v1[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler];
    v27 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
    swift_beginAccess();
    v28 = v31;
    sub_22062BE54(&v1[v27], v31);
    v29 = *(v26 + 40);
    ObjectType = swift_getObjectType();
    (*(v29 + 72))(0, 0xE000000000000000, v28, ObjectType, v29);
    return sub_22062C09C(v28, type metadata accessor for StockSearchMode);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    result = [*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController) view];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v19 = result;
    [result setAlpha_];

    sub_220888C9C();
    v20 = v32;
    if (v32)
    {
      [v32 setAutomaticallyShowsSearchResultsController_];
    }

    swift_unknownObjectRelease();
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_13:
    sub_22088C71C();
    v24 = sub_22088BFCC();

    [v24 setAlpha_];

    sub_22088C71C();
    v25 = sub_22088BFCC();

    [v25 setHidden_];

    goto LABEL_14;
  }

  result = [*(v21 + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController) view];
  if (result)
  {
    v22 = result;
    [result setHidden_];

    sub_220888C9C();
    v23 = v32;
    if (v32)
    {
      [v32 setAutomaticallyShowsSearchResultsController_];
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_2206292F8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:
    sub_22088C71C();
    v3 = sub_22088BFCC();

    [v3 setAlpha_];

    return;
  }

  v1 = [*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController) view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];

    sub_220888C9C();
    if (v4)
    {
      [v4 setAutomaticallyShowsSearchResultsController_];
    }

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2206293F8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:
    sub_22088C71C();
    v3 = sub_22088BFCC();

    [v3 setHidden_];

    return;
  }

  v1 = [*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController) view];
  if (v1)
  {
    v2 = v1;
    [v1 setHidden_];

    sub_220888C9C();
    if (v4)
    {
      [v4 setAutomaticallyShowsSearchResultsController_];
    }

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2206294F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088E85C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22089030C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088E86C();
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_isSearchResultsActive) == 1)
    {
      v51 = Strong;
      v52 = v13;
      v49 = v4;
      v50 = v3;
      v47 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintViewController;
      v48 = sub_22088C6FC();
      (*(v9 + 16))(v12, a2, v8);
      v18 = _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
      v20 = v19;
      v21 = _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
      v23 = v22;
      if (qword_27CF558F8 != -1)
      {
        swift_once();
      }

      v46 = v7;
      v24 = qword_27CF57B40;
      v25 = qword_27CF57B40;
      MEMORY[0x223D83370](v18, v20, v21, v23, v24);
      (*(v9 + 8))(v12, v8);
      if (sub_22088F0DC())
      {
        v26 = [objc_opt_self() clearColor];
      }

      else
      {
        sub_22044D56C(0, &qword_28127E530);
        sub_22089202C();
      }

      v27 = v52;
      sub_22062C144();
      v29 = &v16[*(v28 + 48)];
      v30 = *(v28 + 64);
      v31 = objc_opt_self();
      v32 = [v31 labelColor];
      v33 = [v31 secondaryLabelColor];
      v34 = [v31 secondaryLabelColor];
      v35 = sub_22088B56C();
      v36 = MEMORY[0x277D6D7C0];
      v29[3] = v35;
      v29[4] = v36;
      __swift_allocate_boxed_opaque_existential_1(v29);
      sub_22088B55C();
      v37 = *MEMORY[0x277D6D9C8];
      v38 = sub_22088BA5C();
      (*(*(v38 - 8) + 104))(&v16[v30], v37, v38);
      v39 = v53;
      (*(v53 + 104))(v16, *MEMORY[0x277D6EC90], v27);
      v40 = v51;
      sub_22088C6FC();
      LOBYTE(v37) = sub_22088B52C();

      v42 = v49;
      v41 = v50;
      v43 = MEMORY[0x277D6ECB0];
      if ((v37 & 1) == 0)
      {
        v43 = MEMORY[0x277D6ECA8];
      }

      v44 = v46;
      (*(v49 + 104))(v46, *v43, v50);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_22088B54C();

      (*(v42 + 8))(v44, v41);
      (*(v39 + 8))(v16, v52);
    }

    else
    {
    }
  }
}

void sub_220629A7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088E85C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088AA4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088E86C();
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_isSearchResultsActive) == 1)
    {
      v51 = Strong;
      v52 = v13;
      v49 = v4;
      v50 = v3;
      v47 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintViewController;
      v48 = sub_22088C6FC();
      (*(v9 + 16))(v12, a2, v8);
      v18 = sub_22088AA3C();
      v20 = v19;
      v21 = sub_22088AA1C();
      v23 = v22;
      if (qword_27CF558F8 != -1)
      {
        swift_once();
      }

      v46 = v7;
      v24 = qword_27CF57B40;
      v25 = qword_27CF57B40;
      MEMORY[0x223D83360](v18, v20, v21, v23, v24);
      (*(v9 + 8))(v12, v8);
      if (sub_22088F0DC())
      {
        v26 = [objc_opt_self() clearColor];
      }

      else
      {
        sub_22044D56C(0, &qword_28127E530);
        sub_22089202C();
      }

      v27 = v52;
      sub_22062C144();
      v29 = &v16[*(v28 + 48)];
      v30 = *(v28 + 64);
      v31 = objc_opt_self();
      v32 = [v31 labelColor];
      v33 = [v31 secondaryLabelColor];
      v34 = [v31 secondaryLabelColor];
      v35 = sub_22088B56C();
      v36 = MEMORY[0x277D6D7C0];
      v29[3] = v35;
      v29[4] = v36;
      __swift_allocate_boxed_opaque_existential_1(v29);
      sub_22088B55C();
      v37 = *MEMORY[0x277D6D9C8];
      v38 = sub_22088BA5C();
      (*(*(v38 - 8) + 104))(&v16[v30], v37, v38);
      v39 = v53;
      (*(v53 + 104))(v16, *MEMORY[0x277D6EC90], v27);
      v40 = v51;
      sub_22088C6FC();
      LOBYTE(v37) = sub_22088B52C();

      v42 = v49;
      v41 = v50;
      v43 = MEMORY[0x277D6ECB0];
      if ((v37 & 1) == 0)
      {
        v43 = MEMORY[0x277D6ECA8];
      }

      v44 = v46;
      (*(v49 + 104))(v46, *v43, v50);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_22088B54C();

      (*(v42 + 8))(v44, v41);
      (*(v39 + 8))(v16, v52);
    }

    else
    {
    }
  }
}

void sub_22062A000()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = [*(v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController) view];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      [v3 setAlpha_];

      sub_220888C9C();
      if (v6)
      {
        [v6 setShowsSearchResultsController_];
      }

      swift_unknownObjectRelease();
    }

    sub_22088C71C();
    v5 = sub_22088BFCC();

    [v5 setAlpha_];
  }
}

void sub_22062A128()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = [*(v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController) view];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      [v3 setHidden_];

      sub_220888C9C();
      if (v6)
      {
        [v6 setShowsSearchResultsController_];
      }

      swift_unknownObjectRelease();
    }

    sub_22088C71C();
    v5 = sub_22088BFCC();

    [v5 setHidden_];
  }
}

uint64_t sub_22062A250(uint64_t a1)
{
  v2 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = [Strong text], v8, v9))
  {
    v10 = sub_22089136C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
  swift_beginAccess();
  sub_22062BE54(a1 + v13, v5);
  v14 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  (*(v14 + 72))(v10, v12, v5, ObjectType, v14);

  return sub_22062C09C(v5, type metadata accessor for StockSearchMode);
}

uint64_t sub_22062A3B0()
{
  v0 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_220886A4C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22062887C(v3);
  return sub_22062C09C(v3, type metadata accessor for StockSearchMode);
}

uint64_t sub_22062A47C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v2 = sub_22088F11C();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088F14C();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205AB764();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22062BF74(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22062BFA8(0, &qword_281296E78, MEMORY[0x277D6EC60]);
  sub_22088E77C();
  sub_220576D44();
  v21 = v20;
  v22 = *(v20 - 8);
  if ((*(v22 + 48))(v19, 1, v20) == 1)
  {
    sub_22062C09C(v19, sub_22062BF74);
    sub_2204D4CD0(0, &unk_27CF57C60, sub_2204D4A18, MEMORY[0x277D84560]);
    sub_2204D4A18();
    v24 = v23;
    v25 = *(v23 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_220899360;
    v28 = v35;
    (*(v25 + 16))(v27 + v26, v35, v24);
    v29 = v28;
  }

  else
  {
    sub_22088B2FC();
    (*(v22 + 8))(v19, v21);
    v27 = sub_22088888C();
    (*(v12 + 8))(v15, v11);
    v29 = v35;
  }

  sub_2207201D0(v29, v27);

  sub_22044D56C(0, &qword_28127E7C0);
  v30 = sub_220891D0C();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_22062C874;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_18;
  v32 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22062C0FC(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_22062C0FC(&qword_28127EA50, sub_22056D204);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v9, v5, v32);
  _Block_release(v32);

  (*(v38 + 8))(v5, v2);
  return (*(v36 + 8))(v9, v37);
}

void sub_22062AA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22088DA2C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = *(*(v3 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(ObjectType, v12);
    return;
  }

  if (v11 == *MEMORY[0x277D6E928])
  {
    v14 = *(*(v3 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler) + 40);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v15, v14);
  }

  else
  {
    if (v11 == *MEMORY[0x277D6E948] || v11 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v11 != *MEMORY[0x277D6E958])
    {
      if (v11 == *MEMORY[0x277D6E970])
      {
        sub_22088C71C();
        v17 = sub_22088BFCC();

        sub_22044D56C(0, &qword_28127E820);
        sub_22088B74C();
      }

      else
      {
        sub_22089267C();
        __break(1u);
      }
    }
  }
}

void sub_22062ACC8()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    sub_220891F8C();
  }
}

uint64_t sub_22062AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5880](a1, a2, a3, a4, ObjectType, a6);
}

uint64_t sub_22062ADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5810](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_22062AE48(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 80))(a2, ObjectType, v4);
}

uint64_t sub_22062AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5838](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_22062AF48(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t sub_22062AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5848](a1, a2, ObjectType, a4);
}

uint64_t sub_22062B000(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_22062B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5830](a1, a2, ObjectType, a4);
}

uint64_t sub_22062B0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5868](a1, a2, ObjectType, a4);
}

uint64_t sub_22062B114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5878](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_22062B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5820](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_22062B1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57E8](a1, ObjectType, a3);
}

uint64_t sub_22062B234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57D8](a1, ObjectType, a3);
}

uint64_t sub_22062B284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57F8](a1, ObjectType, a3);
}

uint64_t sub_22062B2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57D0](a1, ObjectType, a3);
}

uint64_t sub_22062B324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57C8](a1, ObjectType, a3);
}

uint64_t sub_22062B374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5860](a1, a2, ObjectType, a4);
}

uint64_t sub_22062B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57F0](a1, a2, ObjectType, a4);
}

uint64_t sub_22062B424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57E0](a1, a2, ObjectType, a4);
}

uint64_t sub_22062B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5840](a1, a2, ObjectType, a4);
}

uint64_t sub_22062B54C()
{
  v1 = *v0;
  result = sub_22088C78C();
  if (result)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v3 + 40))(ObjectType, v3);
  }

  return result;
}

uint64_t sub_22062B5B8(uint64_t a1, char a2)
{
  v3 = sub_22088E85C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088E86C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v20 = sub_22088C6FC();
    (*(v9 + 104))(v12, *MEMORY[0x277D6EC88], v8);
    sub_22088C6FC();
    v15 = sub_22088B52C();

    v16 = MEMORY[0x277D6ECB0];
    if ((v15 & 1) == 0)
    {
      v16 = MEMORY[0x277D6ECA8];
    }

    (*(v4 + 104))(v7, *v16, v3);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = a2 & 1;
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = a2 & 1;
    v19 = v14;
    sub_22088B54C();

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

void sub_22062B884(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22076A60C(a2 & 1);
    swift_unknownObjectRelease();
  }

  sub_22088C71C();
  v4 = sub_22088BFCC();

  v3 = 0.0;
  if (a2)
  {
    v3 = 1.0;
  }

  [v4 setAlpha_];
}

void sub_22062B938(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22076A6CC(a2 & 1);
    swift_unknownObjectRelease();
  }

  sub_22088C71C();
  v3 = sub_22088BFCC();

  [v3 setHidden_];
}

void sub_22062BB60(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  if (sub_22088F0DC())
  {
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      [v7 setShowsCancelButton:a4 & 1 animated:1];
    }
  }
}

void sub_22062BC0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 resignFirstResponder];
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintViewController);

    sub_22088C75C();
  }
}

unint64_t sub_22062BD70()
{
  result = qword_27CF57C50;
  if (!qword_27CF57C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57C50);
  }

  return result;
}

uint64_t sub_22062BE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22062BEB8()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:46.0];
  v1 = sub_22089132C();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  qword_27CF57B40 = v2;
}

void sub_22062BFA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockSearchSectionDescriptor();
    v8[1] = type metadata accessor for StockSearchModel();
    v8[2] = sub_22062C0FC(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
    v8[3] = sub_22062C0FC(&qword_281291EB0, type metadata accessor for StockSearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22062C09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22062C0FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22062C144()
{
  if (!qword_27CF57C70)
  {
    sub_22088B1DC();
    sub_22062C1D0();
    sub_22088BA5C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF57C70);
    }
  }
}

unint64_t sub_22062C1D0()
{
  result = qword_27CF57C78;
  if (!qword_27CF57C78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF57C78);
  }

  return result;
}

void sub_22062C284()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_searchAction;
  sub_22049D9F4();
  *(v1 + v2) = [objc_allocWithZone(v3) init];
  v4 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
  v5 = sub_220886A4C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_isSearchResultsActive) = 0;
  v6 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventManager;
  sub_22062C80C();
  swift_allocObject();
  *(v1 + v6) = sub_22088841C();
  sub_22089267C();
  __break(1u);
}

uint64_t sub_22062C3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchMode(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_22062C434()
{
  MEMORY[0x223D86300]();
  sub_22088C71C();
  v1 = sub_22088BFCC();

  v3 = v1;
  [v3 adjustedContentInset];
  [v3 setContentOffset:0 animated:{0.0, -v2}];
  [v0 setContentScrollView:v3 forEdge:15];
}

uint64_t sub_22062C4FC()
{
  v0 = sub_22088F11C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088F14C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D56C(0, &qword_28127E7C0);
  v10 = sub_220891D0C();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_22062C7E8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_39;
  v12 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22062C0FC(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_22062C0FC(&qword_28127EA50, sub_22056D204);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void sub_22062C80C()
{
  if (!qword_27CF56DC8)
  {
    sub_220584D2C();
    v0 = sub_22088842C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56DC8);
    }
  }
}

uint64_t sub_22062C87C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v17[3] = sub_2208852DC();
  v17[4] = sub_22062CB20();
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_22088528C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281294338);
  result = sub_2208884DC();
  v5 = v15;
  if (v15)
  {
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v6 + 72))(v11, v5, v6);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v8 + 128))(v7, v8);
    v9 = sub_22088742C();
    v10 = MEMORY[0x277D2F938];
    a2[3] = v9;
    a2[4] = v10;
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_22088741C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22062C9C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281294338);
  result = sub_2208884DC();
  v4 = v14;
  if (v14)
  {
    v5 = type metadata accessor for WebViewControllerStyler();
    v6 = v15;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x28223BE20](v7, v7);
    v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v10 + 16))(v9);
    v11 = sub_220476DF0(v9, v5, v4, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    a2[3] = v5;
    a2[4] = &off_283415E08;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22062CB20()
{
  result = qword_281299430;
  if (!qword_281299430)
  {
    sub_2208852DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299430);
  }

  return result;
}

uint64_t sub_22062CB78(uint64_t a1)
{
  v80 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_22062D788(0, &qword_27CF57D50, MEMORY[0x277D6EC00], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v65 = v64 - v5;
  sub_22062D788(0, &qword_27CF5A2F0, sub_2206230B4, v2);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v68 = v64 - v8;
  v9 = sub_22089022C();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v67 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22089041C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v66 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208906CC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v64[1] = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4();
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v70 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088D1DC();
  v22 = *(v21 - 8);
  v77 = v21;
  v78 = v22;
  MEMORY[0x28223BE20](v21, v23);
  v79 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220887C9C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x277CC9260];
  sub_22062D788(0, &qword_2812994E0, MEMORY[0x277CC9260], v2);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = v64 - v32;
  v74 = sub_22088822C();
  v34 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v35);
  v37 = v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v1;
  v75 = *(v1 + 16);
  sub_2204481D8();
  v73 = *(v42 + 48);
  v43 = &v41[*(v42 + 64)];
  sub_220887F8C();
  sub_2208881FC();
  v44 = sub_220884E9C();
  (*(*(v44 - 8) + 56))(v33, 1, 1, v44);
  (*(v26 + 104))(v29, *MEMORY[0x277D2FF08], v25);
  sub_22088767C();
  (*(v26 + 8))(v29, v25);
  v45 = v77;
  sub_22062D7EC(v33, &qword_2812994E0, v76);
  (*(v34 + 8))(v37, v74);
  *(v43 + 4) = 0;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  v46 = v78;
  *&v41[v73] = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  v47 = v79;
  swift_storeEnumTagMultiPayload();
  (*(v46 + 104))(v47, *MEMORY[0x277D6E598], v45);
  sub_22088B01C();
  v48 = v65;
  (*(v46 + 8))(v47, v45);
  sub_2205BA954(v41);
  v49 = v69;
  LODWORD(v79) = sub_22062D5E0();
  v83 = sub_220887F8C();
  sub_220887F6C();
  sub_220887F4C();
  sub_220887F5C();
  sub_22044826C();
  v81 = 0u;
  v82 = 0u;
  v50 = v70;
  sub_2208905CC();
  v51 = *(v49 + 40);
  swift_getObjectType();
  sub_22088E3DC();
  v52 = v71;
  v53 = v68;
  v54 = v50;
  v55 = v72;
  (*(v71 + 16))(v68, v54, v72);
  (*(v52 + 56))(v53, 0, 1, v55);
  v78 = v51;
  sub_22088B81C();
  sub_22062D7EC(v53, &qword_27CF5A2F0, sub_2206230B4);

  if (sub_220887F3C())
  {
    sub_22088E25C();
  }

  else
  {
    sub_22088E24C();
  }

  v56 = *MEMORY[0x277D6EBF8];
  v57 = sub_22088E26C();
  v58 = *(v57 - 8);
  (*(v58 + 104))(v48, v56, v57);
  (*(v58 + 56))(v48, 0, 1, v57);
  sub_22088B81C();
  sub_22062D7EC(v48, &qword_27CF57D50, MEMORY[0x277D6EC00]);
  v59 = v71;
  if (v79)
  {
    v60 = sub_220887F7C();
    v61 = v72;
    v62 = v70;
    if ((v60 & 1) == 0)
    {
      sub_220887C1C();

      (*(v59 + 8))(v62, v61);
      return 1;
    }

    (*(v59 + 8))(v70, v72);
  }

  else
  {
    (*(v71 + 8))(v70, v72);
  }

  return 1;
}

uint64_t sub_22062D5E0()
{
  v0 = sub_220887BCC();
  v1 = [v0 value];

  if (v1 && (v2 = sub_22088790C(), v4 = v3, v1, v4))
  {
    v5 = [sub_220887F8C() articleID];
    swift_unknownObjectRelease();
    v6 = sub_22089136C();
    v8 = v7;

    if (v2 == v6 && v4 == v8)
    {

      v9 = 0;
    }

    else
    {
      v10 = sub_2208928BC();

      v9 = v10 ^ 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_22062D6F4()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22062D788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22062D7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22062D788(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22062D85C(uint64_t a1, void *a2)
{
  v35 = a1;
  v36 = sub_22089065C();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22089024C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22088CA0C();
  v15 = MEMORY[0x28223BE20](v13, v14);
  (*(v17 + 104))(&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E0D8], v15);
  v34 = v2;
  v18 = *(v2 + 32);
  v38 = sub_22088731C();
  v39 = sub_22049368C();
  v37 = v18;
  v40 = 0u;
  v41 = 0u;
  v42 = 1;
  sub_22088C4DC();
  swift_allocObject();

  v19 = a2;
  sub_22088C4BC();
  sub_22062DD2C(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22089EF70;
  v21 = sub_22088B17C();
  *v12 = v35;
  (*(v9 + 104))(v12, *MEMORY[0x277D33370], v8);
  swift_unknownObjectRetain();
  v22 = MEMORY[0x223D832F0](v12, 1);
  (*(v9 + 8))(v12, v8);
  v23 = MEMORY[0x277D6D630];
  *(v20 + 56) = v21;
  *(v20 + 64) = v23;
  *(v20 + 32) = v22;
  v24 = v36;
  (*(v4 + 104))(v7, *MEMORY[0x277D33968], v36);
  v25 = sub_22088B16C();
  (*(v4 + 8))(v7, v24);
  if (v25)
  {
    v26 = MEMORY[0x277D6D630];
    v27 = v21;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    *(v20 + 80) = 0;
    *(v20 + 88) = 0;
  }

  *(v20 + 72) = v25;
  *(v20 + 96) = v27;
  *(v20 + 104) = v26;
  v28 = sub_22062DDF4();
  if (v28)
  {
    v29 = MEMORY[0x277D6D630];
    v30 = v21;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    *(v20 + 120) = 0;
    *(v20 + 128) = 0;
  }

  *(v20 + 112) = v28;
  *(v20 + 136) = v30;
  *(v20 + 144) = v29;
  sub_22088AB2C();
  v31 = sub_2206229A8();
  *(v20 + 176) = v21;
  *(v20 + 184) = v23;
  *(v20 + 152) = v31;
  result = sub_22088AAEC();
  if (result)
  {
    sub_22062DFB4();
    sub_22088AA9C();
    v33 = sub_220891F5C();

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22062DCA4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22062DD2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22062DD90()
{
  result = qword_281297AA8;
  if (!qword_281297AA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281297AA8);
  }

  return result;
}

uint64_t sub_22062DDF4()
{
  v0 = sub_22088BA1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088E44C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  sub_220890BFC();
  sub_220890BEC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6D9A8], v0);
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B0FC();
}

unint64_t sub_22062DFB4()
{
  result = qword_28127E560;
  if (!qword_28127E560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E560);
  }

  return result;
}

uint64_t sub_22062E000(uint64_t a1)
{
  if (*(v1 + *(a1 + 28)))
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return sub_2208916FC();
  }
}

unint64_t sub_22062E020(uint64_t a1)
{
  if (*(v1 + *(a1 + 28)))
  {
    return sub_2205CEB84(MEMORY[0x277D84F90]);
  }

  else
  {
    return sub_22089170C();
  }
}

uint64_t sub_22062E040(uint64_t a1)
{
  sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  sub_22051E1E0(v1 + *(a1 + 32), &v10 - v5);
  v7 = sub_22088F39C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2205DCAD4(v6);
  }

  sub_22088F30C();
  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_22062E1B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  sub_22051E1E0(v3 + *(a1 + 32), &v13 - v8);
  v10 = sub_22088F39C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2205DCAD4(v9);
  }

  a3();
  return (*(v11 + 8))(v9, v10);
}

uint64_t sub_22062E310(uint64_t a1)
{
  v2 = sub_22062E488(&qword_27CF57D70);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t type metadata accessor for NewsStockFeedGroup()
{
  result = qword_2812908E0;
  if (!qword_2812908E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22062E488(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewsStockFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22062E4F4()
{
  sub_220453C08(319, &qword_28127EB30, MEMORY[0x277D69858], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22088685C();
    if (v1 <= 0x3F)
    {
      sub_220453C08(319, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

char *sub_22062E608(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI18StockFeedPriceView_quoteSummaryView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for QuoteSummaryView()) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI18StockFeedPriceView_exchangeLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC8StocksUI18StockFeedPriceView_quoteSummaryView];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

void sub_22062E888()
{
  sub_22062E914(&qword_281290628);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22062E914(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockFeedPriceView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OnboardingViewController.cardSplitViewPresentation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = MEMORY[0x277D6E208];
LABEL_5:
    v12 = *v11;
    v13 = sub_22088CC1C();
    (*(*(v13 - 8) + 104))(a2, v12, v13);
    v14 = *MEMORY[0x277D6E200];
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = MEMORY[0x277D6E210];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_22062EB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = MEMORY[0x277D6E208];
LABEL_5:
    v12 = *v11;
    v13 = sub_22088CC1C();
    (*(*(v13 - 8) + 104))(a2, v12, v13);
    v14 = *MEMORY[0x277D6E200];
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = MEMORY[0x277D6E210];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22062ED70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22062EDCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22062EE54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_22044CF38(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CuratedForYouFeedGroupKnobs();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058445C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v55 = &v44 - v15;
  sub_22062F978(0, &qword_28127E210, MEMORY[0x277D844C8]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22062F864();
  v22 = v57;
  sub_220892A4C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v18;
  v49 = a1;
  v57 = v9;
  LOBYTE(v60) = 0;
  sub_22044DC80(&qword_281296B28, sub_22044CF38);
  v24 = v55;
  v25 = v52;
  sub_22089271C();
  sub_22044D0C0();
  LOBYTE(v59) = 1;
  sub_22044DC80(&qword_281296A48, sub_22044D0C0);
  sub_22089271C();
  v45 = v60;
  LOBYTE(v58) = 2;
  v26 = v17;
  v50 = v21;
  sub_22089271C();
  v46 = v59;
  v27 = v24;
  v28 = v56;
  sub_22062F8B8(v27, v56);
  v29 = v51;
  v30 = *(v51 + 48);
  v31 = v30(v28, 1, v25);
  v32 = v25;
  if (v31 == 1)
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_22044DC80(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v33 = v53;
    sub_22088F7EC();
    v34 = v30(v56, 1, v25);
    v35 = v33;
    v36 = v48;
    v37 = v49;
    if (v34 != 1)
    {
      sub_22062F91C(v56);
    }
  }

  else
  {
    v35 = v53;
    (*(v29 + 32))(v53, v56, v25);
    v36 = v48;
    v37 = v49;
  }

  v38 = v57;
  (*(v29 + 32))(v57, v35, v32);
  v39 = v45;
  if (!v45)
  {
    v58 = 1;
    swift_allocObject();
    v39 = sub_22088FB7C();
  }

  v40 = v50;
  *(v38 + *(v6 + 20)) = v39;
  v41 = v54;
  v42 = v46;
  if (v46)
  {
    sub_22062F91C(v55);
    (*(v36 + 8))(v40, v26);
  }

  else
  {
    v58 = 0x7FFFFFFFFFFFFFFFLL;
    v43 = v55;
    swift_allocObject();
    v42 = sub_22088FB7C();
    sub_22062F91C(v43);
    (*(v36 + 8))(v50, v26);
  }

  *(v38 + *(v6 + 24)) = v42;
  sub_2205CF888(v38, v41);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_22062F3EC(void *a1)
{
  v3 = v1;
  sub_22062F978(0, &qword_27CF57D88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22062F864();
  sub_220892A5C();
  LOBYTE(v15) = 0;
  sub_22044CF38(0);
  sub_22044DC80(&qword_27CF57D90, sub_22044CF38);
  sub_22089283C();
  if (!v2)
  {
    v11 = type metadata accessor for CuratedForYouFeedGroupKnobs();
    v15 = *(v3 + *(v11 + 20));
    v14 = 1;
    sub_22044D0C0();
    sub_22044DC80(&qword_27CF57D98, sub_22044D0C0);
    sub_22089283C();
    v15 = *(v3 + *(v11 + 24));
    v14 = 2;
    sub_22089283C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22062F650()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_22062F6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22062FAF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22062F6D8(uint64_t a1)
{
  v2 = sub_22062F864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22062F714(uint64_t a1)
{
  v2 = sub_22062F864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22062F780()
{
  type metadata accessor for ForYouFeedServiceConfig();
  sub_22044DC80(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
  if (sub_22088F82C() & 1) != 0 && (sub_22044D0C0(), (sub_22088FB5C()))
  {
    return sub_22088FB5C() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22062F864()
{
  result = qword_281288630;
  if (!qword_281288630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281288630);
  }

  return result;
}

uint64_t sub_22062F8B8(uint64_t a1, uint64_t a2)
{
  sub_22058445C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22062F91C(uint64_t a1)
{
  sub_22058445C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22062F978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22062F864();
    v7 = a3(a1, &type metadata for CuratedForYouFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22062F9F0()
{
  result = qword_27CF57DA0;
  if (!qword_27CF57DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57DA0);
  }

  return result;
}

unint64_t sub_22062FA48()
{
  result = qword_281288620;
  if (!qword_281288620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281288620);
  }

  return result;
}

unint64_t sub_22062FAA0()
{
  result = qword_281288628;
  if (!qword_281288628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281288628);
  }

  return result;
}

uint64_t sub_22062FAF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002208C7620 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002208C7640 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22062FC18(void *a1)
{
  if (a1 && [a1 horizontalSizeClass] >= 3)
  {
    result = sub_22089267C();
    __break(1u);
  }

  else
  {
    sub_22044D56C(0, &qword_28127E570);
    v1 = sub_220891F2C();
    v2 = sub_220891F4C();

    return v2;
  }

  return result;
}

uint64_t sub_22062FD30(void *a1)
{
  if (!a1 || ((v1 = [a1 horizontalSizeClass]) != 0 ? (v2 = v1 == 2) : (v2 = 1), v2 || v1 == 1))
  {
    sub_22044D56C(0, &qword_28127E570);
    v3 = sub_220891F2C();
    v4 = sub_220891F4C();

    return v4;
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

id sub_22062FE78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 32);
  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 32) = v4;

  return a1;
}

StocksUI::Theme_optional __swiftcall Theme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22089270C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Theme.rawValue.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 1802658148;
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

uint64_t sub_22062FF98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

unint64_t sub_220630084()
{
  result = qword_27CF57DA8;
  if (!qword_27CF57DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57DA8);
  }

  return result;
}

uint64_t sub_2206300D8()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220630170()
{
  sub_22089146C();
}

uint64_t sub_2206301F4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_220630294(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2206302E8(uint64_t a1)
{
  v2 = sub_2206303FC();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_22063033C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2206303FC();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_220630398(uint64_t a1)
{
  v2 = sub_2206303FC();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

unint64_t sub_2206303FC()
{
  result = qword_27CF57DB0;
  if (!qword_27CF57DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57DB0);
  }

  return result;
}

uint64_t sub_220630454(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StocksAudioPlaybackQueue();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281298A90);
  result = sub_2208884DC();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128E290);
  result = sub_2208884DC();
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A5C0);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E830);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    type metadata accessor for AudioQueueCommandHandler();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    sub_220457328(&v10, v5 + 24);
    sub_220457328(&v8, v5 + 64);
    sub_220457328(&v6, v5 + 104);
    *(v5 + 144) = v4;
    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220630640(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E830);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A5C0);
  result = sub_2208884DC();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StocksAudioPlaybackQueue();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    type metadata accessor for AudioPlaybackCommandHandler();
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v4;
    sub_220457328(&v7, (v6 + 4));
    v6[9] = v5;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2206307AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E830);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128A5C8);
  result = sub_2208884DC();
  if (v14)
  {
    v6 = type metadata accessor for FeedHeadlinePlaybackCommandHandler();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_commandCenter + 8] = 0;
    v8 = swift_unknownObjectWeakInit();
    *&v7[OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_playbackConductor] = v3;
    *&v7[OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_readingHistory] = v4;
    *(v8 + 8) = v5;
    swift_unknownObjectWeakAssign();
    sub_22046DA2C(v13, &v7[OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_audioPlaybackContext]);
    v12.receiver = v7;
    v12.super_class = v6;

    v9 = v4;
    swift_unknownObjectRetain();
    v10 = objc_msgSendSuper2(&v12, sel_init);
    [v9 addObserver_];
    sub_220887BBC();
    *(swift_allocObject() + 24) = v5;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    sub_22088869C();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v11);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220630A58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E830);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (v9)
  {
    v5 = v10;
    type metadata accessor for FeedAudioTrackProgressCommandHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;

    v7 = v4;
    sub_220887BBC();
    *(swift_allocObject() + 24) = v5;
    swift_unknownObjectWeakInit();
    sub_22088869C();

    __swift_destroy_boxed_opaque_existential_1(v8);

    swift_unknownObjectRelease();
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220630C18(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281298A90);
  result = sub_2208884DC();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28128A5C0);
    result = sub_2208884DC();
    if (v5)
    {
      type metadata accessor for AudioSeekCommandHandler();
      v3 = swift_allocObject();
      sub_220457328(&v6, v3 + 16);
      sub_220457328(&v4, v3 + 56);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220630D44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v23;
  v5 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v5);
  v19 = *(v6 + 16);
  v20 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  v16 = v6;
  v17 = v4;
  v18 = &v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5E0);
  sub_22088F1BC();
  v10 = sub_22088848C();

  if (v10)
  {
    v11 = type metadata accessor for ClearRecommendationsDataCommandHandler();
    MEMORY[0x28223BE20](v11, v12);
    v13 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = v20;
    (v19)(v13, v20, v3);
    v15 = sub_2207F02E0(v13, v8, v9, v10, v11, v3, v17);
    (*(v16 + 8))(v14, v3);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220631008(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ProvideFeedbackCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281297020 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_2812863F8, type metadata accessor for ProvideFeedbackCommandHandler);
    sub_22088B7CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206311AC()
{
  type metadata accessor for DebugMenuCommandHandler();

  return swift_allocObject();
}

uint64_t sub_2206311E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    sub_220465030(0);
    swift_allocObject();
    return sub_22088D35C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220631270(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297C30);
    result = sub_2208884DC();
    if (v3)
    {
      sub_22046507C(0);
      swift_allocObject();
      return sub_22088CF4C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220631394(void *a1)
{
  v2 = sub_22088AFDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281297ED0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281297ED8);
  (*(v3 + 16))(v6, v7, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297600);
  result = sub_2208884DC();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297C30);
    result = sub_2208884DC();
    if (v10)
    {
      sub_22088BD3C();
      swift_allocObject();
      return sub_22088BD2C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220631568(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088BD3C();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    sub_220631E00(0, &unk_281297098, MEMORY[0x277D6EB98], MEMORY[0x277D6EBE8]);
    sub_22088E21C();
    sub_22088E0DC();
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206316B4()
{
  type metadata accessor for StocksSharingCompleteCommandHandler();

  return swift_allocObject();
}

uint64_t sub_2206316E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2204549FC();
    result = sub_2208884CC();
    if (result)
    {
      v3 = result;
      type metadata accessor for EarningsShownCommandHandler();
      v4 = swift_allocObject();
      sub_220457328(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2206317C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  v3 = v15;
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100);
  result = sub_2208884DC();
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E6D0);
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x28223BE20](v7, v7);
    v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v10 + 16))(v9);
    v11 = sub_2204678E4(v3, v4, v5, *v9, v6);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220631A48(uint64_t a1, void (*a2)(void))
{
  v3 = sub_220888D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_220888BDC();
  (*(v4 + 104))(v7, *MEMORY[0x277D6CF00], v3);
  sub_2208882DC();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_220631B94(void *a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297C30);
    result = sub_2208884DC();
    if (v8)
    {
      sub_220457328(&v7, v9);
      a2(0);
      result = swift_allocObject();
      *(result + 16) = v5;
      v6 = v9[1];
      *(result + 24) = v9[0];
      *(result + 40) = v6;
      *(result + 56) = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_220631C94(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 supportsMultipleScenes];

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for HeadlineOpenInNewTabCommandHandler();
    if (sub_2208884CC())
    {
      swift_getObjectType();
      sub_22088E4CC();
      sub_22088E2EC();
      sub_22089057C();
      sub_220453640(qword_281282908, type metadata accessor for HeadlineOpenInNewTabCommandHandler);
      sub_22088B7BC();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_220631E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220631EA8(uint64_t a1)
{
  v2 = sub_220631F7C();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_220631EE4()
{
  sub_220484CDC();

  return sub_22088D90C();
}

unint64_t sub_220631F28()
{
  result = qword_27CF57DC8;
  if (!qword_27CF57DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57DC8);
  }

  return result;
}

unint64_t sub_220631F7C()
{
  result = qword_27CF57DD0;
  if (!qword_27CF57DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57DD0);
  }

  return result;
}

uint64_t sub_220631FD0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_220632084()
{
  sub_220886BCC();
  sub_220886BAC();
  sub_220886B0C();
  v0 = sub_220886BBC();

  return v0 & 1;
}

uint64_t sub_2206320F8(uint64_t a1)
{
  v43 = a1;
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_220885DFC();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v7);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_220885D4C();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220886A4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v37 - v18;
  v47 = type metadata accessor for TickerWatchlistChangeBlueprintModifier();
  MEMORY[0x28223BE20](v47, v20);
  v45 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v37 - v24;
  sub_22046DA2C(v1 + 56, v53);
  sub_22046DA2C(v1 + 96, v52);
  sub_22046DA2C(v1 + 136, v51);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2208863EC();
  v44 = v11;
  sub_2208869CC();
  v26 = *(v13 + 8);
  v27 = v19;
  v28 = v41;
  v40 = v12;
  v38 = v26;
  v26(v27, v12);
  v50 = sub_22088574C();
  sub_2204B5F54(0, &qword_281298610, sub_22048E0A4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v42 = sub_220888ECC();
  sub_22088577C();
  v29 = *(v6 + 48);
  if (v29(v5, 1, v28) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v30 = v39;
    sub_2208863EC();
    sub_220886A3C();
    v38(v30, v40);
    if (v29(v5, 1, v28) != 1)
    {
      sub_2204E6D80(v5, sub_2204B5FB8);
    }
  }

  else
  {
    (*(v6 + 32))(v49, v5, v28);
  }

  *v25 = 0x73696C6863746157;
  *(v25 + 1) = 0xEF65676E61684374;
  v31 = v47;
  v32 = &v25[*(v47 + 44)];
  v33 = [objc_opt_self() sharedApplication];
  v34 = [v33 isRunningPerformanceTest];

  *v32 = 0x4008000000000000;
  *(v32 + 1) = 4;
  v32[16] = v34;
  sub_220457328(v53, (v25 + 16));
  sub_220457328(v52, (v25 + 56));
  sub_220457328(v51, (v25 + 96));
  (*(v46 + 32))(&v25[v31[8]], v44, v48);
  *&v25[v31[9]] = v42;
  (*(v6 + 32))(&v25[v31[10]], v49, v28);
  sub_2204E6E5C(v25, v45, type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  sub_2204E57D0();
  swift_allocObject();
  sub_220483C24(&qword_281280C98, type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  v35 = sub_22088B66C();
  sub_2204E6D80(v25, type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  return v35;
}

uint64_t sub_220632728()
{
  v1 = v0;
  v2 = sub_220886A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TickerWatchlistChangeBlueprintModifier();
  MEMORY[0x28223BE20](v11, v12);
  v25 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v24 - v16);
  sub_22046DA2C(v0 + 56, &v24 - v16 + 16);
  sub_22046DA2C(v0 + 96, (v17 + 7));
  sub_22046DA2C(v0 + 136, (v17 + 12));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2208863EC();
  sub_2208869CC();
  v18 = *(v3 + 8);
  v18(v10, v2);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v19 = sub_220885EFC();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2208863EC();
  sub_220886A3C();
  v18(v6, v2);
  *v17 = 0x73696C6863746157;
  v17[1] = 0xEF65676E61684374;
  v20 = v17 + *(v11 + 44);
  v21 = [objc_opt_self() sharedApplication];
  LOBYTE(v2) = [v21 isRunningPerformanceTest];

  *v20 = 0x4008000000000000;
  *(v20 + 1) = 4;
  v20[16] = v2;
  *(v17 + *(v11 + 36)) = v19;
  sub_2204E6E5C(v17, v25, type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  sub_2204E57D0();
  swift_allocObject();
  sub_220483C24(&qword_281280C98, type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  v22 = sub_22088B66C();
  sub_2204E6D80(v17, type metadata accessor for TickerWatchlistChangeBlueprintModifier);
  return v22;
}

uint64_t sub_220632A74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  v1 = OBJC_IVAR____TtC8StocksUI30TickerBlueprintModifierFactory_appConfiguration;
  v2 = sub_220885ACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_220632B38()
{
  sub_2204E57D0();
  swift_allocObject();
  sub_220632F8C();
  return sub_22088B66C();
}

uint64_t sub_220632BA4(uint64_t a1)
{
  v2 = type metadata accessor for TickerPriceChangeDisplayBlueprintModifier();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v15 - v8;
  v11 = *(v10 + 20);
  v12 = sub_220885D4C();
  (*(*(v12 - 8) + 16))(&v9[v11], a1, v12);
  strcpy(v9, "ChangeDisplay");
  *(v9 + 7) = -4864;
  sub_2204E6E5C(v9, v5, type metadata accessor for TickerPriceChangeDisplayBlueprintModifier);
  sub_2204E57D0();
  swift_allocObject();
  sub_220483C24(&qword_281280020, type metadata accessor for TickerPriceChangeDisplayBlueprintModifier);
  v13 = sub_22088B66C();
  sub_2204E6D80(v9, type metadata accessor for TickerPriceChangeDisplayBlueprintModifier);
  return v13;
}

uint64_t sub_220632D94(uint64_t a1)
{
  refreshed = type metadata accessor for TickerRefreshPriceDataBlueprintModifier();
  MEMORY[0x28223BE20](refreshed, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v17 - v9;
  v11 = *v1;
  v13 = *(v12 + 20);
  v14 = sub_22088582C();
  (*(*(v14 - 8) + 16))(&v10[v13], a1, v14);
  sub_22046DA2C(v11 + 96, &v10[*(refreshed + 24)]);
  *v10 = 0xD000000000000010;
  *(v10 + 1) = 0x80000002208C77C0;
  sub_2204E6E5C(v10, v6, type metadata accessor for TickerRefreshPriceDataBlueprintModifier);
  sub_2204E57D0();
  swift_allocObject();
  sub_220483C24(qword_2812809E0, type metadata accessor for TickerRefreshPriceDataBlueprintModifier);
  v15 = sub_22088B66C();
  sub_2204E6D80(v10, type metadata accessor for TickerRefreshPriceDataBlueprintModifier);
  return v15;
}

unint64_t sub_220632F8C()
{
  result = qword_2812848D8[0];
  if (!qword_2812848D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812848D8);
  }

  return result;
}

char *sub_220632FE0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI13EmptyListView_onTap;
  sub_22049D9F4();
  *&v4[v10] = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC8StocksUI13EmptyListView_titleLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI13EmptyListView_descriptionLabel;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8StocksUI13EmptyListView_button;
  *&v4[v14] = [objc_opt_self() buttonWithType_];
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC8StocksUI13EmptyListView_titleLabel];
  v17 = v15;
  [v17 addSubview_];
  [v17 addSubview_];
  v18 = OBJC_IVAR____TtC8StocksUI13EmptyListView_button;
  [v17 addSubview_];
  v19 = *&v17[v18];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = v19;
  v23 = [v21 bundleForClass_];
  sub_220884CAC();

  v24 = sub_22089132C();

  [v22 setAccessibilityHint_];

  v25 = *&v17[v18];
  v26 = *&v17[OBJC_IVAR____TtC8StocksUI13EmptyListView_onTap];
  v27 = v25;
  sub_22088E18C();

  return v17;
}

void sub_22063332C()
{
  v0 = sub_22088E14C();
}

void sub_22063336C()
{
  sub_22049F808(&qword_2812946F8);

  JUMPOUT(0x223D86790);
}

void sub_2206333C4()
{
  v1 = OBJC_IVAR____TtC8StocksUI13EmptyListView_onTap;
  sub_22049D9F4();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC8StocksUI13EmptyListView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI13EmptyListView_descriptionLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI13EmptyListView_button;
  *(v0 + v5) = [objc_opt_self() buttonWithType_];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2206334DC(uint64_t a1)
{
  v2 = sub_22088A13C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22088786C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v23[-v14];
  *&result = COERCE_DOUBLE(sub_22088784C());
  if (v17)
  {
LABEL_5:
    sub_22088783C();
    (*(v8 + 32))(v11, v15, v7);
    v18 = (*(v8 + 88))(v11, v7);
    if (v18 == *MEMORY[0x277D2FC30])
    {
      v19 = MEMORY[0x277D69070];
    }

    else if (v18 == *MEMORY[0x277D2FC20])
    {
      v19 = MEMORY[0x277D69060];
    }

    else if (v18 == *MEMORY[0x277D2FC18])
    {
      v19 = MEMORY[0x277D69058];
    }

    else if (v18 == *MEMORY[0x277D2FC28])
    {
      v19 = MEMORY[0x277D69068];
    }

    else
    {
      if (v18 != *MEMORY[0x277D2FC10])
      {
        v21 = *(v3 + 104);
        if (v18 != *MEMORY[0x277D2FC08])
        {
          v21(v6, *MEMORY[0x277D69070], v2);
          (*(v8 + 8))(v11, v7);
          goto LABEL_17;
        }

        v20 = *MEMORY[0x277D69048];
LABEL_16:
        v21(v6, v20, v2);
LABEL_17:
        sub_22088782C();
        v23[12] = 0;
        sub_22088A11C();
        v22 = sub_22088785C();
        *&result = COERCE_DOUBLE((*(*(v22 - 8) + 8))(a1, v22));
        return result;
      }

      v19 = MEMORY[0x277D69050];
    }

    v20 = *v19;
    v21 = *(v3 + 104);
    goto LABEL_16;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*&result <= -2147483650.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*&result < 2147483650.0)
  {
    goto LABEL_5;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_220633918()
{
  v1 = *v0;
  v2 = sub_2205842F8();
  (*(*(*(v1 + 176) - 8) + 8))(v2 + *(*v2 + 192));
  return v2;
}

uint64_t sub_2206339A0()
{
  sub_220633918();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_220633A30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220633A50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 168) = v3;
  return result;
}

id sub_220633AB4()
{
  v0 = [objc_opt_self() buttonWithType_];
  [v0 setShowsMenuAsPrimaryAction_];
  sub_22062DFB4();
  v1 = sub_220891F5C();
  [v0 setMenu_];

  v2 = v0;
  [v2 setShowsLargeContentViewer_];
  v3 = sub_22089132C();
  v4 = [objc_opt_self() systemImageNamed_];

  [v2 setLargeContentImage_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v7 = sub_22089132C();

  [v2 setLargeContentTitle_];

  v8 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v2 addInteraction_];

  return v2;
}

char *sub_220633CB4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_symbolLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_nameLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_moreOptionsButton;
  *&v4[v12] = sub_220633AB4();
  v13 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_shareButton;
  v14 = type metadata accessor for StockFeedMastheadView.CloseStyleButton();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_watchStockButton;
  *&v4[v15] = [objc_allocWithZone(v14) init];
  v16 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_quoteSummaryView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for QuoteSummaryView()) initWithFrame_];
  v17 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_separatorView;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_exchangeLabel;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_symbolLabel;
  v21 = *&v19[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_symbolLabel];
  v22 = v19;
  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  [v22 addSubview_];
  v23 = *&v19[v20];
  v24 = [v23 accessibilityTraits];
  v25 = v24;
  v26 = *MEMORY[0x277D76558];
  if (v24)
  {
    if ((v26 & ~v24) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v26)
  {
    v25 = 0;
    goto LABEL_7;
  }

  v25 = v26 | v24;
LABEL_7:
  [v23 setAccessibilityTraits_];

  return v22;
}

char *sub_220633FF0()
{
  v0 = [swift_getObjCClassFromObject() buttonWithType_];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v1 = *&v0[qword_28128D5D8];
  v2 = v0;
  v3 = v1;
  sub_22088E18C();

  [v2 setShowsLargeContentViewer_];
  v4 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v2 addInteraction_];

  return v2;
}

id sub_2206340EC(char *a1, double a2, double a3, double a4, double a5)
{
  v10 = qword_28128D5D8;
  sub_22049D9F4();
  *&a1[v10] = [objc_allocWithZone(v11) init];
  v13.receiver = a1;
  v13.super_class = type metadata accessor for StockFeedMastheadView.CloseStyleButton();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_220634184(char *a1, uint64_t a2, void *a3)
{
  v5 = qword_28128D5D8;
  sub_22049D9F4();
  v7 = objc_allocWithZone(v6);
  v8 = a3;
  *&a1[v5] = [v7 init];
  v11.receiver = a1;
  v11.super_class = type metadata accessor for StockFeedMastheadView.CloseStyleButton();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_220634240()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StockFeedMastheadView.CloseStyleButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StockFeedMastheadView.CloseStyleButton()
{
  result = qword_28128D5C8;
  if (!qword_28128D5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206343FC()
{
  v1 = *v0;
  v2 = *(*(*v0 + OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_shareButton) + qword_28128D5D8);

  v3 = *(*(v1 + OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_watchStockButton) + qword_28128D5D8);
}

void sub_220634494()
{
  sub_220634528(&qword_28128D5B8);

  JUMPOUT(0x223D86790);
}

uint64_t sub_220634528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockFeedMastheadView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220634568()
{
  v1 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_symbolLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_nameLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_moreOptionsButton;
  *(v0 + v3) = sub_220633AB4();
  v4 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_shareButton;
  v5 = type metadata accessor for StockFeedMastheadView.CloseStyleButton();
  *(v0 + v4) = [objc_allocWithZone(v5) init];
  v6 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_watchStockButton;
  *(v0 + v6) = [objc_allocWithZone(v5) init];
  v7 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_quoteSummaryView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for QuoteSummaryView()) initWithFrame_];
  v8 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_separatorView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_exchangeLabel;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

char *sub_220634710(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_messageLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_enableBilingualFeedButton;
  v12 = type metadata accessor for BilingualFeedPromptView.FeedPreferenceButton();
  *&v4[v11] = [objc_allocWithZone(v12) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_neverShowBilingualFeedPromptsButton;
  *&v4[v13] = [objc_allocWithZone(v12) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_messageLabel];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

char *sub_2206348C8(char *a1, double a2, double a3, double a4, double a5)
{
  v10 = qword_27CF57ED0;
  sub_22049D9F4();
  *&a1[v10] = [objc_allocWithZone(v11) init];
  v17.receiver = a1;
  v17.super_class = type metadata accessor for BilingualFeedPromptView.FeedPreferenceButton();
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a2, a3, a4, a5);
  v13 = *&v12[qword_27CF57ED0];
  v14 = v12;
  v15 = v13;
  sub_22088E18C();

  return v14;
}

void sub_220634998(uint64_t a1)
{
  v2 = qword_27CF57ED0;
  sub_22049D9F4();
  *(a1 + v2) = [objc_allocWithZone(v3) init];
  sub_22089267C();
  __break(1u);
}

id sub_220634A30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BilingualFeedPromptView.FeedPreferenceButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BilingualFeedPromptView.FeedPreferenceButton()
{
  result = qword_27CF57ED8;
  if (!qword_27CF57ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220634B9C()
{
  v1 = *v0;
  v2 = *(*(*v0 + OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_enableBilingualFeedButton) + qword_27CF57ED0);

  v3 = *(*(v1 + OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_neverShowBilingualFeedPromptsButton) + qword_27CF57ED0);
}

void sub_220634C34()
{
  sub_220634CC0(&qword_28128BEF8);

  JUMPOUT(0x223D86790);
}

uint64_t sub_220634CC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BilingualFeedPromptView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220634D00()
{
  v1 = OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_messageLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_enableBilingualFeedButton;
  v3 = type metadata accessor for BilingualFeedPromptView.FeedPreferenceButton();
  *(v0 + v2) = [objc_allocWithZone(v3) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_neverShowBilingualFeedPromptsButton;
  *(v0 + v4) = [objc_allocWithZone(v3) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_220634DF8()
{
  sub_2206350A0();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_2206350F8();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206351B8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  if (qword_281297070 != -1)
  {
    swift_once();
  }

  sub_22088E1FC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_220884CAC();
  v12 = v11;

  v15[0] = v10;
  v15[1] = v12;
  sub_22088CB5C();
  sub_220635150();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_22088BD7C();
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B0AC();
}

void sub_2206350A0()
{
  if (!qword_27CF57408)
  {
    v0 = sub_22088BD9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57408);
    }
  }
}

void sub_2206350F8()
{
  if (!qword_27CF57EE8)
  {
    sub_220635150();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57EE8);
    }
  }
}

void sub_220635150()
{
  if (!qword_27CF57EF0)
  {
    sub_22047A590();
    v0 = sub_22088B8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57EF0);
    }
  }
}

void sub_2206351B8()
{
  if (!qword_27CF57EF8)
  {
    v0 = sub_22088CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57EF8);
    }
  }
}

uint64_t type metadata accessor for QuoteDetailViewModel()
{
  result = qword_28128EE88;
  if (!qword_28128EE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206352AC()
{
  sub_22045401C(319, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v0 <= 0x3F)
  {
    sub_22045401C(319, &qword_281299370, MEMORY[0x277D69178]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PriceFormatter();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnitNumberFormatter();
        if (v3 <= 0x3F)
        {
          sub_2206353B8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2206353B8()
{
  result = qword_28127E7E0;
  if (!qword_28127E7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E7E0);
  }

  return result;
}

uint64_t sub_220635404(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v25 = objc_opt_self();
        v26 = [v25 bundleForClass_];
        v4 = sub_220884CAC();

        v5 = [v25 bundleForClass_];
      }

      else if (a1 == 10)
      {
        _s6MarkerCMa();
        v12 = swift_getObjCClassFromMetadata();
        v13 = objc_opt_self();
        v14 = [v13 bundleForClass_];
        v4 = sub_220884CAC();

        v5 = [v13 bundleForClass_];
      }

      else
      {
        type metadata accessor for Localized();
        v36 = swift_getObjCClassFromMetadata();
        v37 = objc_opt_self();
        v38 = [v37 bundleForClass_];
        v4 = sub_220884CAC();

        v5 = [v37 bundleForClass_];
      }
    }

    else if (a1 == 6)
    {
      type metadata accessor for Localized();
      v18 = swift_getObjCClassFromMetadata();
      v19 = objc_opt_self();
      v20 = [v19 bundleForClass_];
      v4 = sub_220884CAC();

      v5 = [v19 bundleForClass_];
    }

    else if (a1 == 7)
    {
      type metadata accessor for Localized();
      v6 = swift_getObjCClassFromMetadata();
      v7 = objc_opt_self();
      v8 = [v7 bundleForClass_];
      v4 = sub_220884CAC();

      v5 = [v7 bundleForClass_];
    }

    else
    {
      type metadata accessor for Localized();
      v30 = swift_getObjCClassFromMetadata();
      v31 = objc_opt_self();
      v32 = [v31 bundleForClass_];
      v4 = sub_220884CAC();

      v5 = [v31 bundleForClass_];
    }
  }

  else if (a1 > 2u)
  {
    if (a1 == 3)
    {
      type metadata accessor for Localized();
      v21 = swift_getObjCClassFromMetadata();
      v22 = objc_opt_self();
      v23 = [v22 bundleForClass_];
      v4 = sub_220884CAC();

      v5 = [v22 bundleForClass_];
    }

    else if (a1 == 4)
    {
      type metadata accessor for Localized();
      v9 = swift_getObjCClassFromMetadata();
      v10 = objc_opt_self();
      v11 = [v10 bundleForClass_];
      v4 = sub_220884CAC();

      v5 = [v10 bundleForClass_];
    }

    else
    {
      _s6MarkerCMa();
      v33 = swift_getObjCClassFromMetadata();
      v34 = objc_opt_self();
      v35 = [v34 bundleForClass_];
      v4 = sub_220884CAC();

      v5 = [v34 bundleForClass_];
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      type metadata accessor for Localized();
      v1 = swift_getObjCClassFromMetadata();
      v2 = objc_opt_self();
      v3 = [v2 bundleForClass_];
      v4 = sub_220884CAC();

      v5 = [v2 bundleForClass_];
    }

    else
    {
      type metadata accessor for Localized();
      v27 = swift_getObjCClassFromMetadata();
      v28 = objc_opt_self();
      v29 = [v28 bundleForClass_];
      v4 = sub_220884CAC();

      v5 = [v28 bundleForClass_];
    }
  }

  else
  {
    type metadata accessor for Localized();
    v15 = swift_getObjCClassFromMetadata();
    v16 = objc_opt_self();
    v17 = [v16 bundleForClass_];
    v4 = sub_220884CAC();

    v5 = [v16 bundleForClass_];
  }

  sub_220884CAC();

  return v4;
}

uint64_t sub_220635F94(unsigned __int8 a1, char a2)
{
  sub_22045401C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v138 - v7;
  sub_22045401C(0, &qword_281299370, MEMORY[0x277D69178]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v145 = &v138 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v144 = &v138 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v143 = &v138 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v142 = &v138 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v141 = &v138 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v138 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v140 = &v138 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v139 = &v138 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v138 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v138 - v44;
  if (a2)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    v138 = v45;
    v48 = v41;
    v49 = v31;
    v50 = a1;
    v51 = v12;
    v52 = v8;
    v53 = a2;
    v54 = v47;
    v55 = sub_220884CAC();
    v57 = v56;

    a2 = v53;
    v8 = v52;
    v12 = v51;
    a1 = v50;
    v31 = v49;
    v41 = v48;
    v45 = v138;
  }

  else
  {
    v57 = 0xA300000000000000;
    v55 = 9666786;
  }

  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 == 6)
      {
        sub_2206372DC(v2, v8, &qword_2812990C0, MEMORY[0x277D697F8]);
        v86 = sub_22088676C();
        v87 = *(v86 - 8);
        if ((*(v87 + 48))(v8, 1, v86) == 1)
        {
          v61 = &qword_2812990C0;
          v88 = MEMORY[0x277D697F8];
          goto LABEL_40;
        }

        v113 = v8;
        v67 = v2;
        v114 = sub_22088671C();
        v116 = v115;
        (*(v87 + 8))(v113, v86);
        if (v116)
        {
          return v55;
        }

        v117 = *&v114;
      }

      else
      {
        if (a1 == 7)
        {
          v64 = type metadata accessor for QuoteDetailViewModel();
          v31 = v142;
          sub_2206372DC(v2 + *(v64 + 20), v142, &qword_281299370, MEMORY[0x277D69178]);
          v65 = sub_2208855EC();
          v66 = *(v65 - 8);
          if ((*(v66 + 48))(v31, 1, v65) == 1)
          {
            goto LABEL_37;
          }

          v67 = v2;
          v68 = sub_2208855DC();
        }

        else
        {
          v100 = type metadata accessor for QuoteDetailViewModel();
          v31 = v143;
          sub_2206372DC(v2 + *(v100 + 20), v143, &qword_281299370, MEMORY[0x277D69178]);
          v65 = sub_2208855EC();
          v66 = *(v65 - 8);
          if ((*(v66 + 48))(v31, 1, v65) == 1)
          {
            goto LABEL_37;
          }

          v67 = v2;
          v68 = sub_22088555C();
        }

        v125 = v68;
        v126 = v69;
        (*(v66 + 8))(v31, v65);
        if (v126)
        {
          return v55;
        }

        v117 = v125;
      }

      sub_220637110(v117, v55, v57, v67, a2 & 1);
      v55 = v127;

      return v55;
    }

    if (a1 == 9)
    {
      v76 = type metadata accessor for QuoteDetailViewModel();
      v77 = v144;
      sub_2206372DC(v2 + *(v76 + 20), v144, &qword_281299370, MEMORY[0x277D69178]);
      v95 = sub_2208855EC();
      v96 = *(v95 - 8);
      if ((*(v96 + 48))(v77, 1, v95) == 1)
      {
        goto LABEL_33;
      }

      v80 = v2;
      sub_2208855BC();
      v119 = v118;
      (*(v96 + 8))(v77, v95);
      if (v119)
      {
        return v55;
      }
    }

    else
    {
      if (a1 == 10)
      {
        v76 = type metadata accessor for QuoteDetailViewModel();
        v77 = v145;
        sub_2206372DC(v2 + *(v76 + 20), v145, &qword_281299370, MEMORY[0x277D69178]);
        v78 = sub_2208855EC();
        v79 = *(v78 - 8);
        if ((*(v79 + 48))(v77, 1, v78) != 1)
        {
          v80 = v2;
          sub_2208855CC();
          v82 = v81;
          (*(v79 + 8))(v77, v78);
          if (v82)
          {
            return v55;
          }

          goto LABEL_66;
        }

LABEL_33:
        v61 = &qword_281299370;
        v62 = MEMORY[0x277D69178];
        v63 = v77;
        goto LABEL_43;
      }

      v76 = type metadata accessor for QuoteDetailViewModel();
      sub_2206372DC(v2 + *(v76 + 20), v12, &qword_281299370, MEMORY[0x277D69178]);
      v104 = sub_2208855EC();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v12, 1, v104) == 1)
      {
        v61 = &qword_281299370;
        v62 = MEMORY[0x277D69178];
        v63 = v12;
        goto LABEL_43;
      }

      v80 = v2;
      sub_22088559C();
      v132 = v12;
      v134 = v133;
      (*(v105 + 8))(v132, v104);
      if (v134)
      {
        return v55;
      }
    }

LABEL_66:
    v135 = *(v80 + *(v76 + 40));
    v136 = sub_22089184C();
    v137 = [v135 stringForObjectValue_];

    if (v137)
    {
      v55 = sub_22089136C();
    }

    return v55;
  }

  if (a1 <= 2u)
  {
    if (!a1)
    {
      v83 = type metadata accessor for QuoteDetailViewModel();
      sub_2206372DC(v2 + *(v83 + 20), v45, &qword_281299370, MEMORY[0x277D69178]);
      v84 = sub_2208855EC();
      v85 = *(v84 - 8);
      if ((*(v85 + 48))(v45, 1, v84) == 1)
      {
        v61 = &qword_281299370;
        v62 = MEMORY[0x277D69178];
        v63 = v45;
        goto LABEL_43;
      }

      v107 = sub_22088553C();
      v109 = v108;
      (*(v85 + 8))(v45, v84);
      if (v109)
      {
        return v55;
      }

      v110 = sub_2204BE298(0, 5, 1, *&v107);
      [v110 setNumberStyle_];
      v111 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v112 = [v110 stringFromNumber_];
      goto LABEL_55;
    }

    if (a1 == 1)
    {
      v58 = type metadata accessor for QuoteDetailViewModel();
      sub_2206372DC(v2 + *(v58 + 20), v41, &qword_281299370, MEMORY[0x277D69178]);
      v59 = sub_2208855EC();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v41, 1, v59) == 1)
      {
        v61 = &qword_281299370;
        v62 = MEMORY[0x277D69178];
        v63 = v41;
LABEL_43:
        sub_220637348(v63, v61, v62);
        return v55;
      }

      v73 = sub_22088551C();
      v121 = v120;
      (*(v60 + 8))(v41, v59);
      if (v121)
      {
        return v55;
      }

      goto LABEL_54;
    }

    v97 = type metadata accessor for QuoteDetailViewModel();
    v90 = v139;
    sub_2206372DC(v2 + *(v97 + 20), v139, &qword_281299370, MEMORY[0x277D69178]);
    v98 = sub_2208855EC();
    v99 = *(v98 - 8);
    if ((*(v99 + 48))(v90, 1, v98) == 1)
    {
LABEL_35:
      v61 = &qword_281299370;
      v62 = MEMORY[0x277D69178];
      v63 = v90;
      goto LABEL_43;
    }

    v73 = sub_22088552C();
    v123 = v122;
    (*(v99 + 8))(v90, v98);
    if (v123)
    {
      return v55;
    }

LABEL_54:
    v110 = sub_2204BE298(0, 5, 1, *&v73);
    [v110 setNumberStyle_];
    v111 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v112 = [v110 stringFromNumber_];
LABEL_55:
    v124 = v112;

    if (v124)
    {
      v55 = sub_22089136C();

      return v55;
    }

LABEL_64:

    return v55;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v70 = type metadata accessor for QuoteDetailViewModel();
      sub_2206372DC(v2 + *(v70 + 20), v31, &qword_281299370, MEMORY[0x277D69178]);
      v71 = sub_2208855EC();
      v72 = *(v71 - 8);
      if ((*(v72 + 48))(v31, 1, v71) != 1)
      {
        v73 = sub_22088557C();
        v75 = v74;
        (*(v72 + 8))(v31, v71);
        if ((v75 & 1) == 0)
        {
          goto LABEL_54;
        }

        return v55;
      }

LABEL_37:
      v61 = &qword_281299370;
      v62 = MEMORY[0x277D69178];
      v63 = v31;
      goto LABEL_43;
    }

    v101 = type metadata accessor for QuoteDetailViewModel();
    v8 = v141;
    sub_2206372DC(v2 + *(v101 + 20), v141, &qword_281299370, MEMORY[0x277D69178]);
    v102 = sub_2208855EC();
    v103 = *(v102 - 8);
    if ((*(v103 + 48))(v8, 1, v102) != 1)
    {
      sub_22088556C();
      v129 = v128;
      (*(v103 + 8))(v8, v102);
      if ((v129 & 1) == 0)
      {
        v130 = *(v2 + *(v101 + 36));
        v131 = sub_22089184C();
        v110 = [v130 stringForObjectValue_];

        if (v110)
        {
          v55 = sub_22089136C();

          goto LABEL_64;
        }
      }

      return v55;
    }

    v61 = &qword_281299370;
    v88 = MEMORY[0x277D69178];
LABEL_40:
    v62 = v88;
    v63 = v8;
    goto LABEL_43;
  }

  v89 = type metadata accessor for QuoteDetailViewModel();
  v90 = v140;
  sub_2206372DC(v2 + *(v89 + 20), v140, &qword_281299370, MEMORY[0x277D69178]);
  v91 = sub_2208855EC();
  v92 = *(v91 - 8);
  if ((*(v92 + 48))(v90, 1, v91) == 1)
  {
    goto LABEL_35;
  }

  v73 = sub_22088554C();
  v94 = v93;
  (*(v92 + 8))(v90, v91);
  if ((v94 & 1) == 0)
  {
    goto LABEL_54;
  }

  return v55;
}

void sub_220637110(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_2208852DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (fabs(a1) >= 9.22337204e18)
  {
  }

  else if (a1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else
  {
    v13 = type metadata accessor for QuoteDetailViewModel();
    if (a1 >= 1 && (v14 = *(*(a4 + *(v13 + 32)) + 16), sub_22088528C(), v15 = sub_22088523C(), (*(v9 + 8))(v12, v8), v16 = [v14 formattedCount:a1 withLocale:v15 longform:a5 & 1 compactDisplay:0], v15, v16))
    {
      sub_22089136C();
    }

    else
    {
      v17[1] = a1;
      sub_22089287C();
    }
  }
}

uint64_t sub_2206372DC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22045401C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220637348(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22045401C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for TickerPriceChangeDisplayBlueprintModifier()
{
  result = qword_281280008;
  if (!qword_281280008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220637418()
{
  result = sub_220885D4C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220637494(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v26[1] = a1;
  v28 = sub_22088B64C();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204EE9C0(0, &qword_281297858, MEMORY[0x277D6DF88]);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v26 - v10;
  sub_2204EF684();
  MEMORY[0x28223BE20](v12 - 8, v13);
  sub_2204EE9C0(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v27 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v26 - v17;
  v34 = v3;
  v19 = sub_220572AE4(sub_2206388A0, v33);
  sub_2204EF5C8();
  v21 = v20;
  v22 = sub_2206388C0(&qword_281297E20, sub_2204EF5C8);
  v23 = sub_2206388C0(&qword_281297E28, sub_2204EF5C8);
  MEMORY[0x223D80A20](v19, v21, v22, v23);
  type metadata accessor for TickerModel();
  sub_220483B88();
  sub_2206388C0(&qword_281294CA0, type metadata accessor for TickerModel);
  sub_22088E7CC();
  v24 = v28;
  (*(v4 + 104))(v7, *MEMORY[0x277D6D868], v28);
  sub_2205A3E7C();
  sub_22088C67C();
  (*(v4 + 8))(v7, v24);
  v32(v11);
  (*(v29 + 8))(v11, v30);
  return (*(v15 + 8))(v18, v27);
}

uint64_t sub_22063789C(uint64_t a1, uint64_t a2)
{
  sub_2204EEED4();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_2204EF5C8();
  sub_22088B2AC();
  v12 = a2;
  v13 = v14;
  v5 = sub_220572E24(sub_220638908, v11);
  sub_2204EECD0();
  v7 = v6;
  v8 = sub_2206388C0(&qword_281297FD8, sub_2204EECD0);
  v9 = sub_2206388C0(&qword_281297FE0, sub_2204EECD0);
  MEMORY[0x223D80A20](v5, v7, v8, v9);
  type metadata accessor for TickerModel();
  sub_220483B88();
  sub_2206388C0(&qword_281294CA0, type metadata accessor for TickerModel);
  return sub_22088B29C();
}

uint64_t sub_220637A60@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v105 = a1;
  v118 = a2;
  v2 = sub_2208852DC();
  v116 = *(v2 - 8);
  v117 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v130 = &v97[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = sub_2208857EC();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v5);
  v113 = &v97[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = sub_22088699C();
  v129 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v7);
  v125 = &v97[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v132 = &v97[-v11];
  v128 = sub_220885D4C();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v12);
  v124 = &v97[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = type metadata accessor for StockSparklineViewModel;
  sub_22045443C(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v131 = &v97[-v16];
  v17 = MEMORY[0x277D697F8];
  v102 = MEMORY[0x277D697F8];
  sub_22045443C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v106 = &v97[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v22);
  v104 = &v97[-v23];
  MEMORY[0x28223BE20](v24, v25);
  v103 = &v97[-v26];
  MEMORY[0x28223BE20](v27, v28);
  v100 = &v97[-v29];
  MEMORY[0x28223BE20](v30, v31);
  v120 = &v97[-v32];
  MEMORY[0x28223BE20](v33, v34);
  v121 = &v97[-v35];
  v36 = sub_22088685C();
  v122 = v36;
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v97[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v97[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v97[-v47];
  v111 = type metadata accessor for TickerModel();
  MEMORY[0x28223BE20](v111, v49);
  v109 = &v97[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v97[-v53];
  sub_2204EECD0();
  sub_22088AD8C();
  v108 = *v54;
  sub_220483A44();
  v107 = v55;
  sub_22050381C(v54 + *(v55 + 48), v48);
  v110 = v37;
  v101 = *(v37 + 16);
  v101(v40, v48, v36);
  v56 = v121;
  sub_2204B2690(&v48[v41[5]], v121, &qword_2812990C0, v17);
  v57 = v41[6];
  v112 = v48;
  sub_2204B2690(&v48[v57], v131, qword_28128AAE8, v119);
  v58 = *(type metadata accessor for TickerPriceChangeDisplayBlueprintModifier() + 20);
  v99 = *(v126 + 16);
  v59 = v124;
  v60 = v128;
  v99(v124, v105 + v58, v128);
  v101(v44, v40, v122);
  v61 = v102;
  sub_2204B2690(v56, v44 + v41[5], &qword_2812990C0, v102);
  sub_2204B2690(v131, v44 + v41[6], qword_28128AAE8, v119);
  v99(v44 + v41[8], v59, v60);
  v105 = v41;
  v62 = v41[9];
  v63 = v100;
  v123 = v44;
  *(v44 + v62) = 0;
  v64 = v120;
  sub_2204B2690(v56, v120, &qword_2812990C0, v61);
  v119 = v40;
  sub_2208867CC();
  sub_2204B2690(v64, v63, &qword_2812990C0, v61);
  v65 = sub_22088676C();
  v66 = *(v65 - 8);
  v67 = *(v66 + 48);
  if (v67(v63, 1, v65) == 1)
  {
    sub_2204B37D0(v63, &qword_2812990C0, MEMORY[0x277D697F8]);
    v102 = 0;
    LODWORD(v101) = 1;
  }

  else
  {
    v102 = sub_22088675C();
    LODWORD(v101) = v68;
    (*(v66 + 8))(v63, v65);
  }

  v69 = v103;
  sub_2204B2690(v64, v103, &qword_2812990C0, MEMORY[0x277D697F8]);
  v70 = v67(v69, 1, v65);
  v71 = v106;
  v72 = v104;
  if (v70 == 1)
  {
    sub_2204B37D0(v69, &qword_2812990C0, MEMORY[0x277D697F8]);
    v100 = 0;
    LODWORD(v99) = 1;
  }

  else
  {
    v100 = sub_22088666C();
    LODWORD(v99) = v73;
    (*(v66 + 8))(v69, v65);
  }

  sub_2204B2690(v64, v72, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v67(v72, 1, v65) == 1)
  {
    sub_2204B37D0(v72, &qword_2812990C0, MEMORY[0x277D697F8]);
    v103 = 0;
    v98 = 1;
  }

  else
  {
    v103 = sub_22088671C();
    v98 = v74;
    (*(v66 + 8))(v72, v65);
  }

  sub_2204B2690(v64, v71, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v67(v71, 1, v65) == 1)
  {
    sub_2204B37D0(v71, &qword_2812990C0, MEMORY[0x277D697F8]);
    v104 = 0;
    v75 = 0;
  }

  else
  {
    v104 = sub_22088668C();
    v75 = v76;
    (*(v66 + 8))(v71, v65);
  }

  v77 = v127;
  v78 = v125;
  v79 = v123 + v105[7];
  v106 = *(v129 + 16);
  (v106)(v125, v132, v127);
  v80 = v114;
  v81 = v113;
  v82 = v78;
  v83 = v115;
  (*(v114 + 104))(v113, *MEMORY[0x277D69288], v115);
  v84 = v130;
  sub_22088524C();
  *v79 = v102;
  v79[8] = v101 & 1;
  *(v79 + 2) = v100;
  v79[24] = v99 & 1;
  *(v79 + 4) = v103;
  v79[40] = v98 & 1;
  *(v79 + 6) = v104;
  *(v79 + 7) = v75;
  v85 = type metadata accessor for PriceViewModel();
  (v106)(&v79[v85[10]], v82, v77);
  *(v79 + 8) = 9666786;
  *(v79 + 9) = 0xA300000000000000;
  (*(v80 + 16))(&v79[v85[9]], v81, v83);
  v87 = v116;
  v86 = v117;
  (*(v116 + 16))(&v79[v85[11]], v84, v117);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v88 = qword_2812B6B48;
  (*(v80 + 8))(v81, v83);
  v89 = *(v129 + 8);
  v90 = v127;
  v89(v125, v127);
  v89(v132, v90);
  v91 = MEMORY[0x277D697F8];
  sub_2204B37D0(v120, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v126 + 8))(v124, v128);
  sub_2204B37D0(v131, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B37D0(v121, &qword_2812990C0, v91);
  (*(v110 + 8))(v119, v122);
  v92 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v87 + 40))(v88 + v92, v130, v86);
  swift_endAccess();
  v93 = *(v107 + 48);
  v94 = v109;
  *v109 = v108;
  v95 = v123;
  sub_220527BCC(v123, v94 + v93);
  sub_2206388C0(&qword_281294CA0, type metadata accessor for TickerModel);
  sub_22088AD7C();
  sub_2204EFAD0(v95);
  return sub_2204EFAD0(v112);
}

uint64_t sub_2206388C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2206389D0()
{
  v1 = *v0;
  v2 = sub_2208851BC();
  v3 = (v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (v2)
  {
    return (*(v5 + 248))(v4, v5);
  }

  else
  {
    return (*(v5 + 240))(v4, v5);
  }
}

uint64_t sub_220638A68()
{
  v1 = *v0;
  v2 = sub_2208851BC();
  v3 = (v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v4 = *(v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  if (v2)
  {
    return (*(v5 + 240))(v4, v5);
  }

  else
  {
    return (*(v5 + 248))(v4, v5);
  }
}

void sub_220638B00(void *a1)
{
  v2 = *v1;
  v3 = [a1 customView];
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 24);
    v6 = *(v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme), v5);
    v7 = (*(v6 + 128))(v5, v6);
    [v4 setTintColor_];
  }
}

uint64_t sub_220638BC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 64))(v2, v3);
}

uint64_t sub_220638C28()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 88))(v2, v3);
}

uint64_t sub_220638C88()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 120))(v2, v3);
}

uint64_t sub_220638CE8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 136))(v2, v3);
}

uint64_t sub_220638D48()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 144))(v2, v3);
}

uint64_t sub_220638DA8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 152))(v2, v3);
}

uint64_t sub_220638E08()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 184))(v2, v3);
}

uint64_t sub_220638E68()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 192))(v2, v3);
}

uint64_t sub_220638EC8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 200))(v2, v3);
}

uint64_t sub_220638F28()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 208))(v2, v3);
}

uint64_t sub_220638F88()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 224))(v2, v3);
}

uint64_t sub_220638FE8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 232))(v2, v3);
}

uint64_t sub_220639048()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 272))(v2, v3);
}

uint64_t sub_2206390A8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 280))(v2, v3);
}

uint64_t sub_220639108()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 288))(v2, v3);
}

uint64_t sub_220639168()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 296))(v2, v3);
}

uint64_t sub_2206391C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 304))(v2, v3);
}

uint64_t sub_220639228()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 312))(v2, v3);
}

uint64_t sub_220639288()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 320))(v2, v3);
}

uint64_t sub_2206392E8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 328))(v2, v3);
}

uint64_t sub_220639348()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 336))(v2, v3);
}

uint64_t sub_2206393A8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 344))(v2, v3);
}

uint64_t sub_220639408()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 352))(v2, v3);
}

uint64_t sub_220639468()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 360))(v2, v3);
}

uint64_t sub_2206394C8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 368))(v2, v3);
}

uint64_t sub_220639528()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 376))(v2, v3);
}

uint64_t sub_220639588()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 384))(v2, v3);
}

uint64_t sub_2206395F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 392))(v2, v3);
}

uint64_t sub_220639650()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 400))(v2, v3);
}

uint64_t sub_2206396B0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 408))(v2, v3);
}

uint64_t sub_220639710()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 416))(v2, v3);
}

uint64_t sub_220639770()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 424))(v2, v3);
}

uint64_t sub_2206397D0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 432))(v2, v3);
}

uint64_t sub_220639830()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 440))(v2, v3);
}

uint64_t sub_220639890()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 448))(v2, v3);
}

uint64_t sub_2206398F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 456))(v2, v3);
}

uint64_t sub_220639950()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 480))(v2, v3);
}

uint64_t sub_2206399B0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 488))(v2, v3);
}

uint64_t sub_220639A10()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 496))(v2, v3);
}

uint64_t sub_220639A70()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 504))(v2, v3);
}

uint64_t sub_220639AD0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 48))(v2, v3);
}

uint64_t sub_220639B30()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 520))(v2, v3);
}

uint64_t sub_220639B90()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 528))(v2, v3);
}

uint64_t sub_220639BF0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

unint64_t sub_220639C48()
{
  result = qword_27CF57F00;
  if (!qword_27CF57F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF57F00);
  }

  return result;
}

Swift::Double __swiftcall Double.percentChange(with:)(Swift::Double with)
{
  v2 = v1 - with;
  result = with / v2;
  if (v2 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_220639CD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_220639D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220639D84(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v101 = a3;
  v102 = a2;
  v103 = a1;
  v4 = sub_22088B64C();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22063AC94(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v104 = (&v78 - v9);
  v10 = sub_22089030C();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v93 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22063AC94(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v14 = v13;
  v92 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v91 = &v78 - v16;
  sub_2204D4D34(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v89 = &v78 - v19;
  v20 = sub_2208854AC();
  v95 = *(v20 - 8);
  v96 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v90 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4D34(0, &unk_281297FA0, sub_22055D328);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v78 - v25;
  sub_22055D328();
  v28 = *(v27 - 8);
  v97 = v27;
  v98 = v28;
  MEMORY[0x28223BE20](v27, v29);
  v94 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055E01C(0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22063AC94(0, &qword_281297DE0, MEMORY[0x277D6D710]);
  v36 = v35;
  v37 = *(v35 - 1);
  MEMORY[0x28223BE20](v35, v38);
  v82 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v78 - v42;
  v83 = v3;
  v44 = v14;
  v45 = v103;
  sub_22088E76C();
  v46 = v37;
  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {
    sub_22063AD88(v34);
    sub_22063ADE4();
    v47 = swift_allocError();
    v48 = v104;
    *v104 = v47;
    v50 = v99;
    v49 = v100;
    (*(v99 + 104))(v48, *MEMORY[0x277D6DF68], v100);
    v102(v48);
    return (*(v50 + 8))(v48, v49);
  }

  else
  {
    v52 = v104;
    (*(v46 + 32))(v43, v34, v36);
    v53 = v44;
    sub_22088E70C();
    v54 = v97;
    v55 = v36;
    if ((*(v98 + 48))(v26, 1, v97) == 1)
    {
      sub_220516A1C(v26, &unk_281297FA0, sub_22055D328);
      sub_22063ADE4();
      v56 = v52;
      *v52 = swift_allocError();
      v57 = v99;
      v58 = v100;
      (*(v99 + 104))(v56, *MEMORY[0x277D6DF68], v100);
      v102(v56);
      (*(v57 + 8))(v56, v58);
      return (*(v46 + 8))(v43, v55);
    }

    else
    {
      v80 = v43;
      v81 = v46;
      v59 = v94;
      (*(v98 + 32))();
      v60 = v89;
      sub_22088E7EC();
      v62 = v95;
      v61 = v96;
      if ((*(v95 + 48))(v60, 1, v96) == 1)
      {
        v63 = v52;
        sub_220516A1C(v60, &qword_2812993D0, MEMORY[0x277CC9AF8]);
        sub_22063ADE4();
        *v52 = swift_allocError();
        v64 = v99;
        v65 = v100;
        (*(v99 + 104))(v63, *MEMORY[0x277D6DF68], v100);
        v102(v63);
        (*(v64 + 8))(v63, v65);
        (*(v98 + 8))(v59, v54);
        return (*(v81 + 8))(v80, v55);
      }

      else
      {
        (*(v62 + 32))(v90, v60, v61);
        (*(v92 + 16))(v91, v45, v44);
        v66 = v93;
        v67 = v83;
        sub_22063A8EC(v93);
        __swift_project_boxed_opaque_existential_1(v67 + 5, v67[8]);
        v68 = v67[4];
        v79 = v53;
        v83 = v55;
        v69 = off_28341EFC8;
        type metadata accessor for StockFeedSectionFactory();
        v70 = v82;
        v69(v66, v68, v82);
        v71 = v91;
        sub_22088E75C();
        v72 = *(v81 + 8);
        v81 += 8;
        v89 = v72;
        v73 = v83;
        (v72)(v70, v83);
        v74 = v86;
        v75 = v87;
        v76 = v88;
        (*(v87 + 104))(v86, *MEMORY[0x277D6D868], v88);
        type metadata accessor for StockFeedSectionDescriptor();
        type metadata accessor for StockFeedModel();
        sub_220444404(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
        sub_220444404(&qword_281293DD0, type metadata accessor for StockFeedModel);
        sub_220444404(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor);
        v77 = v104;
        sub_22088C67C();
        (*(v75 + 8))(v74, v76);
        v102(v77);
        (*(v99 + 8))(v77, v100);
        (*(v84 + 8))(v93, v85);
        (*(v92 + 8))(v71, v79);
        (*(v95 + 8))(v90, v96);
        (*(v98 + 8))(v94, v97);
        return (v89)(v80, v73);
      }
    }
  }
}

uint64_t sub_22063A8EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22089030C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v26 - v9;
  sub_2205E9D08();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220713FFC(v14);
  sub_2205E9E2C();
  v16 = v15;
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    if (sub_22088548C())
    {
      if (qword_27CF55B68 != -1)
      {
        swift_once();
      }

      v17 = qword_27CF6D0F0;
    }

    else
    {
      if (qword_28128D5A8 != -1)
      {
        swift_once();
      }

      v17 = qword_2812B6AE0;
    }

    v24 = __swift_project_value_buffer(v2, v17);
    return (*(v3 + 16))(a1, v24, v2);
  }

  else
  {
    v18 = *(v16 + 48);
    v19 = *(v3 + 32);
    v19(v10, v14, v2);
    v19(v6, &v14[v18], v2);
    v20 = sub_22088548C();
    v21 = *(v3 + 8);
    if (v20)
    {
      v21(v10, v2);
      v22 = a1;
      v23 = v6;
    }

    else
    {
      v21(v6, v2);
      v22 = a1;
      v23 = v10;
    }

    return (v19)(v22, v23, v2);
  }
}

unint64_t sub_22063ABB0()
{
  result = qword_2812818A8;
  if (!qword_2812818A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812818A8);
  }

  return result;
}

void sub_22063AC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_220444404(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_220444404(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22063AD88(uint64_t a1)
{
  sub_22055E01C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22063ADE4()
{
  result = qword_27CF57F08;
  if (!qword_27CF57F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57F08);
  }

  return result;
}

unint64_t sub_22063AE4C()
{
  result = qword_27CF57F10;
  if (!qword_27CF57F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57F10);
  }

  return result;
}

uint64_t sub_22063AEA0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22063AEFC()
{
  sub_22063AF54();
  swift_allocObject();

  return sub_220888ECC();
}

void sub_22063AF54()
{
  if (!qword_27CF57F18)
  {
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57F18);
    }
  }
}

uint64_t ForYouSection.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ForYouSection()
{
  result = qword_27CF57F80;
  if (!qword_27CF57F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ForYouSection.init(identifier:headlines:descriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v7 = type metadata accessor for ForYouSection();
  return sub_22063C648(a4, a5 + *(v7 + 24), type metadata accessor for ForYouSectionDescriptor);
}

uint64_t static ForYouSection.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2208928BC() & 1) == 0 || (sub_22063B1F4(a1[2], a2[2], MEMORY[0x277D69858], &unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ForYouSection() + 24);

  return _s8StocksUI23ForYouSectionDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_22063B1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v31 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    v28 = 0;
    return v28 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v23 = *(v9 + 16);
  v22 = v9 + 16;
  v24 = (v22 - 8);
  v32 = *(v22 + 56);
  v33 = v23;
  while (1)
  {
    v25 = v33;
    result = (v33)(v17, v20, v8, v15);
    if (!v18)
    {
      break;
    }

    v27 = v22;
    v25(v12, v21, v8);
    sub_2204587B0(v34, v35);
    v28 = sub_2208912FC();
    v29 = *v24;
    (*v24)(v12, v8);
    v29(v17, v8);
    if (v28)
    {
      v21 += v32;
      v20 += v32;
      v30 = v18-- == 1;
      v22 = v27;
      if (!v30)
      {
        continue;
      }
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22063B3EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedPage();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - v10;
  sub_22063C5E4();
  v33 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockFeedViewerPage() - 8;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v24 = &v32 - v23;
  v25 = *(a1 + 16);
  if (v25 == *(a2 + 16))
  {
    if (!v25 || a1 == a2)
    {
      v30 = 1;
    }

    else
    {
      v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v27 = a1 + v26;
      v28 = a2 + v26;
      v32 = *(v22 + 72);
      do
      {
        sub_22063C710(v27, v24, type metadata accessor for StockFeedViewerPage);
        sub_22063C710(v28, v19, type metadata accessor for StockFeedViewerPage);
        v29 = *(v33 + 48);
        sub_22063C710(v24, v15, type metadata accessor for StockFeedViewerPage);
        sub_22063C710(v19, &v15[v29], type metadata accessor for StockFeedViewerPage);
        sub_22063C648(v15, v11, type metadata accessor for StockFeedPage);
        sub_22063C648(&v15[v29], v7, type metadata accessor for StockFeedPage);
        v30 = MEMORY[0x223D7E940](v11, v7);
        sub_22063C6B0(v7, type metadata accessor for StockFeedPage);
        sub_22063C6B0(v11, type metadata accessor for StockFeedPage);
        sub_22063C6B0(v19, type metadata accessor for StockFeedViewerPage);
        sub_22063C6B0(v24, type metadata accessor for StockFeedViewerPage);
        if ((v30 & 1) == 0)
        {
          break;
        }

        v28 += v32;
        v27 += v32;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_22063B6F4(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_2208928BC() & 1) == 0 || (sub_22063B1F4(a1[2], a2[2], MEMORY[0x277D69858], &unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return _s8StocksUI23ForYouSectionDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

unint64_t ForYouSection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = sub_22088698C();
    v7 = *(v6 - 8);
    v8 = *(v7 + 16);
    v9 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5;

    return v8(a2, v9, v6);
  }

  return result;
}

Swift::Int __swiftcall ForYouSection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ForYouSection.makeIterator()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 24) = 0;
  sub_22063C15C();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_22063C154;
  *(v2 + 24) = v1;

  return v2;
}

uint64_t sub_22063B908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(v6 + 16);
  if (v5 == v7)
  {
    v8 = sub_22088698C();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  else if (v5 >= v7)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_22088698C();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a2, v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5, v9);
    *(a1 + 24) = v5 + 1;
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

void (*sub_22063BA7C(uint64_t *a1, void *a2))(void *a1)
{
  v5 = sub_22088698C();
  *a1 = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  a1[1] = v6;
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v6 + 64));
  }

  a1[2] = result;
  v9 = *(v2 + 16);
  if (*a2 >= *(v9 + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 16))(result, v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * *a2, v5);
    return sub_22063BB90;
  }

  return result;
}

void sub_22063BB90(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t *sub_22063BBDC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v5 = result[1], *(*(v2 + 16) + 16) < v5))
  {
    __break(1u);
  }

  else
  {
    sub_22063C3F8(0);
    result = sub_22063C710(v2, a2 + *(v6 + 40), type metadata accessor for ForYouSection);
    *a2 = v3;
    a2[1] = v5;
  }

  return result;
}

void sub_22063BC54(uint64_t a1@<X8>)
{
  sub_22063C710(v1, a1, type metadata accessor for ForYouSection);
  sub_22063C2F4(0);
  *(a1 + *(v3 + 36)) = 0;
  *(a1 + *(v3 + 40)) = *(*(v1 + 16) + 16);
}

uint64_t *sub_22063BCC8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22063BCF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_22063BD30(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_22063BD30(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_22063BE00(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_22063BE40(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_22063BE5C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_22063BE78(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_22063BE94@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_22063BEAC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_22063BEC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 16);

  sub_22063C6B0(v1, type metadata accessor for ForYouSection);
  *(v3 + 16) = v4;
  *(v3 + 24) = 0;
  sub_22063C15C();
  result = swift_allocObject();
  *(result + 16) = sub_22063C77C;
  *(result + 24) = v3;
  *a1 = result;
  return result;
}

size_t sub_22063BF64()
{
  v1 = sub_2206CE2E8(v0);
  sub_22063C6B0(v0, type metadata accessor for ForYouSection);
  return v1;
}

uint64_t ForYouSection.description.getter()
{
  sub_22089254C();
  type metadata accessor for ForYouSection();
  sub_22063C210();
  v1 = sub_2208913DC();
  MEMORY[0x223D89680](v1);

  MEMORY[0x223D89680](0x6669746E65646928, 0xED0000203A726569);
  MEMORY[0x223D89680](*v0, v0[1]);
  MEMORY[0x223D89680](0xD000000000000011, 0x80000002208C8410);
  v2 = sub_22089287C();
  MEMORY[0x223D89680](v2);

  MEMORY[0x223D89680](0xD00000000000001CLL, 0x80000002208C8430);
  type metadata accessor for ForYouSectionDescriptor();
  sub_22089264C();
  MEMORY[0x223D89680](41, 0xE100000000000000);
  return 0;
}

void sub_22063C15C()
{
  if (!qword_27CF57F20)
  {
    v0 = MEMORY[0x277D844A8];
    sub_22063C584(255, &qword_27CF57F28, MEMORY[0x277D844A8]);
    sub_22063C468(&qword_27CF57F30, &qword_27CF57F28, v0);
    v1 = sub_22089257C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF57F20);
    }
  }
}

unint64_t sub_22063C210()
{
  result = qword_27CF57F38;
  if (!qword_27CF57F38)
  {
    type metadata accessor for ForYouSection();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27CF57F38);
  }

  return result;
}

void sub_22063C314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ForYouSection();
    v7 = sub_2204587B0(&qword_27CF57F58, type metadata accessor for ForYouSection);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_22063C468(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22063C584(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22063C4D4()
{
  sub_22063C584(319, &qword_28127EB30, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ForYouSectionDescriptor();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22063C584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22088698C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22063C5E4()
{
  if (!qword_28128F918[0])
  {
    type metadata accessor for StockFeedViewerPage();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_28128F918);
    }
  }
}

uint64_t sub_22063C648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22063C6B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22063C710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22063C784@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281296D20);
    result = sub_2208884DC();
    if (v9)
    {
      v6 = type metadata accessor for StockFeedViewerModule();
      v7 = swift_allocObject();
      sub_220457328(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_220457328(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_2834129C0;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22063C898()
{
  type metadata accessor for StockFeedViewerViewController();
  sub_220888BDC();

  sub_220446A58(0, &qword_281289478);
  sub_220888BEC();

  sub_220446A58(0, &qword_281287DA8);
  sub_220888BEC();

  sub_220446A58(0, &qword_281289480);
  sub_220888BEC();
  type metadata accessor for StockFeedViewerRouter();
  sub_2208882BC();

  sub_220446A58(0, qword_281284B18);
  sub_220888BEC();

  sub_220446A58(0, qword_281285E38);
  sub_220888BEC();

  sub_220446A58(0, &qword_281285580);
  sub_220888BEC();

  type metadata accessor for StockFeedViewerPageViewControllerProvider();
  sub_220888BDC();
}

uint64_t sub_22063CB18(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281289478);
  result = sub_2208884DC();
  if (!v92)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281284B18);
  result = sub_2208884DC();
  if (!v89)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22056DF38();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297B48);
  result = sub_2208884DC();
  if (!v87)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297760);
  result = sub_2208884DC();
  if (!v86)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v66 = v88;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v83)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v65 = v84;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  v62 = v90;
  v63 = v3;
  v64 = v89;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v82)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0);
  sub_22088611C();
  sub_22088849C();

  if (!v80[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281287DA8);
  result = sub_2208884DC();
  if (!v79)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v59 = v4;
  v60 = v83;
  v61 = v87;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288640);
  result = sub_2208884DC();
  v58 = v76;
  if (v76)
  {
    v54 = v77;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
    v57 = &v53;
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    v56 = &v53;
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v8;
    v16 = *v13;
    v17 = type metadata accessor for StockFeedViewerStyler();
    v74 = v17;
    v75 = &off_28341F8E8;
    v73[0] = v15;
    v18 = type metadata accessor for StockFeedViewerRenderer();
    v71 = v18;
    v72 = &off_28341E3D8;
    v70[0] = v16;
    v19 = type metadata accessor for StockFeedViewerViewController();
    v20 = objc_allocWithZone(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v55 = &v53;
    v22 = MEMORY[0x28223BE20](v21, v21);
    v24 = (&v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v53 = &v53;
    v27 = MEMORY[0x28223BE20](v26, v26);
    v29 = (&v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = *v24;
    v32 = *v29;
    v69[3] = v17;
    v69[4] = &off_28341F8E8;
    v68[4] = &off_28341E3D8;
    v69[0] = v31;
    v68[3] = v18;
    v68[0] = v32;
    *&v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___closeBarButtonItem] = 0;
    *&v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___moreOptionsBarButtonItem] = 0;
    *&v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_watchStockBarButtonItem] = 0;
    *&v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___shareBarButtonItem] = 0;
    v33 = OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_currentPage;
    v34 = type metadata accessor for StockFeedViewerPage();
    (*(*(v34 - 8) + 56))(&v20[v33], 1, 1, v34);
    v35 = &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_cardToolbarViewModel];
    *v35 = 0u;
    v35[1] = 0u;
    v36 = &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_lastSafeAreaInsets];
    *v36 = 0u;
    *(v36 + 1) = 0u;
    v36[32] = 1;
    v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_isYahooToolbarVisible] = 0;
    sub_22046DA2C(v69, &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_styler]);
    v37 = &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_eventHandler];
    v38 = v63;
    v40 = v61;
    v39 = v62;
    *v37 = v64;
    v37[1] = v39;
    *&v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController] = v38;
    v41 = &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_toolbarManager];
    v42 = v66;
    *v41 = v40;
    v41[1] = v42;
    sub_22046DA2C(v85, &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_shareMenuItemManager]);
    v43 = &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_commandCenter];
    v44 = v59;
    v45 = v65;
    *v43 = v60;
    v43[1] = v45;
    *&v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_tracker] = v44;
    sub_22046DA2C(v81, &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_appConfigurationManager]);
    sub_22046DA2C(v80, &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_quoteAttributionProvider]);
    sub_22046DA2C(v68, &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_renderer]);
    v46 = &v20[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_cardToolbarViewProvider];
    v47 = v54;
    *v46 = v58;
    v46[1] = v47;
    v67.receiver = v20;
    v67.super_class = v19;
    swift_unknownObjectRetain();
    v48 = v38;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v49 = objc_msgSendSuper2(&v67, sel_initWithNibName_bundle_, 0, 0, v53);
    *(*&v49[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_eventHandler] + 24) = &off_283414EB8;
    swift_unknownObjectWeakAssign();
    v50 = *&v49[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController];
    v51 = v49;
    v52 = v50;
    sub_22088BB0C();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v81);
    __swift_destroy_boxed_opaque_existential_1(v85);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v91);
    return v51;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22063D4A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  v4 = v15;
  if (v15)
  {
    v5 = type metadata accessor for StockFeedViewerStyler();
    v6 = v16;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v11 + 16))(v10, v8);
    v12 = sub_220476DF0(v10, v5, v4, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    a2[3] = v5;
    a2[4] = &off_28341F8E8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22063D608@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281289478);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for StockFeedViewerStyler();
    v19[3] = v10;
    v19[4] = &off_28341F8E8;
    v19[0] = v9;
    v11 = type metadata accessor for StockFeedViewerRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_28341F8E8;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_28341E3D8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22063D834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v6);
  v3 = type metadata accessor for StockFeedViewerRouter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_220457328(v6, v4 + 24);
  a2[3] = v3;
  a2[4] = &off_283426F78;
  *a2 = v4;
  return result;
}

void sub_22063D8B0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockFeedViewerViewController();
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_22063D930@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285E38);
  result = sub_2208884DC();
  v5 = v28;
  if (v28)
  {
    v6 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281289480);
    result = sub_2208884DC();
    if (v27)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v8 = MEMORY[0x28223BE20](v7, v7);
      v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for StockFeedViewerRouter();
      v25[3] = v13;
      v25[4] = &off_283426F78;
      v25[0] = v12;
      type metadata accessor for StockFeedViewerEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v13);
      v16 = MEMORY[0x28223BE20](v15, v15);
      v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v23 = v13;
      v24 = &off_283426F78;
      *&v22 = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_220457328(&v22, (v14 + 6));
      *(v5 + 24) = &off_283412368;
      swift_unknownObjectWeakAssign();
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      *a2 = v14;
      a2[1] = &off_283412380;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22063DBEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285580);
  result = sub_2208884DC();
  v5 = v11;
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22048C0A8();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0);
  sub_22088611C();
  sub_22088849C();

  if (v10)
  {
    type metadata accessor for StockFeedViewerInteractor();
    v8 = swift_allocObject();
    v8[3] = 0;
    swift_unknownObjectWeakInit();
    v8[4] = v5;
    v8[5] = v6;
    v8[6] = v7;
    sub_220457328(&v9, (v8 + 7));
    *(v5 + 24) = &off_28341B460;
    result = swift_unknownObjectWeakAssign();
    *a2 = v8;
    a2[1] = &off_28341B470;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22063DD94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088F12C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22056DDE8(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0);
  result = sub_2208884DC();
  if (!v22)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22048C0A8();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299178);
  result = sub_2208884DC();
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299228);
  result = sub_2208884DC();
  if (v16)
  {
    type metadata accessor for StockFeedViewerDataManager();
    v12 = swift_allocObject();
    v12[3] = 0;
    swift_unknownObjectWeakInit();
    sub_22046D5B4();
    (*(v5 + 104))(v8, *MEMORY[0x277D851B8], v4);
    v13 = sub_220891D3C();
    (*(v5 + 8))(v8, v4);
    v12[26] = v13;
    v12[4] = v10;
    sub_22046DA2C(v21, (v12 + 5));
    v12[10] = v11;
    sub_22046DA2C(v19, (v12 + 11));
    sub_22046DA2C(v17, (v12 + 16));
    sub_22046DA2C(v15, (v12 + 21));
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_22063E3EC(&qword_281288B48, type metadata accessor for StockFeedViewerDataManager);

    sub_220885FAC();

    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_22063E3EC(&qword_281288B40, type metadata accessor for StockFeedViewerDataManager);

    sub_22088630C();

    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    *a2 = v12;
    a2[1] = &off_2834195C0;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22063E1DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128FA00);
  result = sub_2208884DC();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2, v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for StockFeedModule();
    v16[3] = v8;
    v16[4] = &off_283415E78;
    v16[0] = v7;
    type metadata accessor for StockFeedViewerPageViewControllerProvider();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_283415E78;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22063E3EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22063E434()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_2208862BC();
    swift_allocObject();
    swift_weakInit();

    sub_220886DDC();

    sub_22088727C();
  }

  return result;
}

void sub_22063E560()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  sub_22088618C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v3 = objc_opt_self();
  v4 = [v3 &off_27844B438 + 3];
  sub_220884CAC();

  v5 = sub_22089132C();

  v6 = sub_22089132C();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:{1, 0x80000002208C85F0}];

  v8 = [v3 bundleForClass_];
  sub_220884CAC();

  v9 = sub_22089132C();

  v10 = objc_opt_self();
  v11 = [v10 actionWithTitle:v9 style:1 handler:{0, 0x80000002208C8620}];

  [v7 addAction_];
  v12 = [v3 bundleForClass_];
  sub_220884CAC();

  v13 = swift_allocObject();
  swift_weakInit();

  v14 = sub_22089132C();

  aBlock[4] = sub_22063EA30;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2205659F0;
  aBlock[3] = &block_descriptor_19;
  v15 = _Block_copy(aBlock);

  v16 = [v10 actionWithTitle:v14 style:0 handler:{v15, 0x80000002208C8660}];
  _Block_release(v15);

  [v7 addAction_];
  v17 = [objc_opt_self() sharedApplication];
  v18 = [v17 key_window];

  if (v18)
  {
    v19 = [v18 rootViewController];

    if (v19)
    {
      [v19 presentViewController:v7 animated:1 completion:0];
    }
  }
}

uint64_t sub_22063EA40(_BYTE *a1, id a2)
{
  if (a1[8] != 1)
  {
    return *a1;
  }

  v3 = [a2 viewControllers];
  sub_220482E6C();
  sub_2208916EC();

  v4 = sub_22089171C();

  swift_beginAccess();
  result = v4;
  *a1 = v4;
  a1[8] = 0;
  return result;
}

BOOL sub_22063EB14(void **a1)
{
  v1 = *a1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 viewControllers];
  sub_220482E6C();
  v6 = sub_2208916EC();

  if (v6 >> 62)
  {
    v7 = sub_2208926AC();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7 != 0;
}

void sub_22063EBE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 viewControllers];
    sub_220482E6C();
    v3 = sub_2208916EC();

    if (v3 >> 62)
    {
      v4 = sub_2208926AC();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4 < 2)
    {
    }

    else
    {
      v5 = [v1 viewControllers];

      v6 = sub_2208916EC();
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D8A700](1, v6);
        goto LABEL_8;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v7 = *(v6 + 40);
LABEL_8:

        return;
      }

      __break(1u);
    }
  }
}

void sub_22063ED38(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_viewWillTransitionToSize_withTransitionCoordinator_, a5, a2, a3);
  sub_22048F320(a2, a3);
  if (*&v8[qword_28128B610])
  {

    sub_22088D71C();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22063EE34()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_28128B608);
  __swift_destroy_boxed_opaque_existential_1(v0 + qword_28128B618);

  v1 = v0 + qword_28128B620;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_22063EE94(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_28128B608);
  __swift_destroy_boxed_opaque_existential_1(a1 + qword_28128B618);

  v2 = a1 + qword_28128B620;

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

__n128 sub_22063EF10@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22088C20C();
  v6 = v5;
  v8 = v7;
  sub_22088C31C();
  v10 = v9;
  sub_22088C22C();
  sub_220891A6C();
  v12 = v10 - v11;
  sub_22088C31C();
  v13 = v12 - v6 - v8;
  v58 = sub_22063F454(a1, v2);
  [v58 boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  sub_22063F7DC(a1, v2, v14, v15, v16, v17);
  v19 = v18;
  v60 = v20;
  type metadata accessor for StockFeedEarningsViewModel();
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v22 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v23 = sub_22044D56C(0, &qword_28127E570);
  v24 = v22;
  v25 = sub_220891F2C();
  *(inited + 64) = v23;
  *(inited + 40) = v25;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v28 = sub_22089125C();

  v29 = [v26 initWithString:v27 attributes:v28];

  [v29 boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  v59 = v19;
  if (v19 + CGRectGetWidth(v69) >= v13)
  {
    [v29 boundingRectWithSize:1 options:0 context:{v13, 1.79769313e308}];
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;
    v57 = v60 + CGRectGetHeight(v72) + 12.5 + 5.0 + 12.0;
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    v43 = CGRectGetHeight(v73) + 12.5 + 5.0;
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    v36 = v43 - CGRectGetHeight(v74);
    v56 = v43 + 5.0;
    sub_22088C20C();
    v42 = v44;
  }

  else
  {
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    v34 = CGRectGetHeight(v70);
    if (v60 > v34)
    {
      v34 = v60;
    }

    v35 = v34 + 12.5 + 12.0;
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    v36 = v35 - CGRectGetHeight(v71);
    v56 = (v35 - v60) * 0.5;
    v57 = v35;
    sub_22088C31C();
    v38 = v37;
    sub_22088C22C();
    sub_220891A6C();
    v40 = v38 - v39;
    sub_22088C31C();
    sub_22088C20C();
    v42 = v40 - v41 - v59;
  }

  v45 = v36 * 0.5;
  sub_22088C20C();
  sub_22088C31C();
  sub_22088C22C();
  sub_220891A6C();
  sub_22088C31C();
  sub_22088C20C();
  sub_220891A6C();
  sub_22088C20C();
  v47 = v46;
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  v48 = CGRectGetWidth(v75);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  v77.size.height = CGRectGetHeight(v76);
  v77.origin.x = v47;
  v77.origin.y = v45;
  v77.size.width = v48;
  CGRectIntegral(v77);
  v78.origin.x = v42;
  v78.origin.y = v56;
  v78.size.width = v59;
  v78.size.height = v60;
  CGRectIntegral(v78);
  sub_22088C31C();
  v50 = v49;
  sub_22088C22C();
  sub_220891A6C();
  v52 = v50 - v51;
  sub_22088C31C();
  v79.origin.x = 0.0;
  v79.origin.y = 0.0;
  v79.size.width = v52;
  v79.size.height = v57;
  CGRectIntegral(v79);
  MEMORY[0x28223BE20](v53, v54);
  sub_22088C19C();

  a2[4] = v65;
  a2[5] = v66;
  a2[6] = v67;
  a2[7] = v68;
  *a2 = v61;
  a2[1] = v62;
  result = v64;
  a2[2] = v63;
  a2[3] = v64;
  return result;
}

id sub_22063F454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedEarningsViewModel();
  if (*(a1 + *(v4 + 32) + 8))
  {
    v5 = *(a1 + *(v4 + 36));
    v6 = *__swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
    type metadata accessor for Localized();
    if (v5 == 1)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      v28 = 0x80000002208BF8C0;
    }

    else
    {
      v10 = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      v28 = 0x80000002208C8930;
    }

    sub_220884CAC();

    sub_2204A5DF0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v12 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v13 = sub_22044D56C(0, &qword_28127E570);
    v14 = v12;
    v15 = sub_220891F2C();
    v16 = MEMORY[0x277D740C0];
    *(inited + 40) = v15;
    v17 = *v16;
    *(inited + 64) = v13;
    *(inited + 72) = v17;
    v18 = v6[5];
    v19 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v18);
    v20 = *(v19 + 16);
    v21 = *(v20 + 128);
    v22 = v17;
    v23 = v21(v18, v20);
    *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
    *(inited + 80) = v23;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v25 = sub_22089132C();

    type metadata accessor for Key(0);
    sub_2204A63B8();
    v26 = sub_22089125C();

    v27 = [v24 initWithString:v25 attributes:{v26, v28}];

    return v27;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
    return sub_220564920();
  }
}

void sub_22063F7DC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = type metadata accessor for StockFeedEarningsViewModel();
  if (*(a1 + v12[9]) == 1)
  {
    v30.origin.x = a3;
    v30.origin.y = a4;
    v30.size.width = a5;
    v30.size.height = a6;
    CGRectGetWidth(v30);
    v13 = *__swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
    if (qword_27CF55850 != -1)
    {
      swift_once();
    }

    v14 = qword_27CF6CE88;
    sub_22044D56C(0, &qword_28127E570);
    v15 = sub_220891F2C();
    v16 = [objc_opt_self() configurationWithFont:v15 scale:1];

    v17 = [v14 imageWithConfiguration_];
    v19 = v13[5];
    v18 = v13[6];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v19);
    v20 = (*(*(v18 + 16) + 128))(v19);
    v21 = [v17 imageWithTintColor:v20 renderingMode:1];

LABEL_8:
    [v21 size];

LABEL_9:
    v32.origin.x = a3;
    v32.origin.y = a4;
    v32.size.width = a5;
    v32.size.height = a6;
    CGRectGetHeight(v32);
    return;
  }

  if (*(a1 + v12[8] + 8))
  {
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    CGRectGetWidth(v31);
    v22 = *__swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
    v23 = sub_22089132C();
    v24 = [objc_opt_self() systemImageNamed_];

    if (!v24)
    {
      __break(1u);
      return;
    }

    sub_22044D56C(0, &qword_28127E570);
    v25 = sub_220891F2C();
    v26 = [objc_opt_self() configurationWithFont:v25 scale:1];

    v27 = [v24 imageWithConfiguration_];
    v29 = v22[5];
    v28 = v22[6];
    __swift_project_boxed_opaque_existential_1(v22 + 2, v29);
    v20 = (*(*(v28 + 16) + 128))(v29);
    v21 = [v27 imageWithTintColor:v20 renderingMode:1];

    goto LABEL_8;
  }

  if ((*(a1 + v12[11]) & 1) == 0)
  {
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    CGRectGetWidth(v33);
    goto LABEL_9;
  }
}

double sub_22063FBE4@<D0>(double *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a6;
  v58 = a7;
  v57 = a8;
  v56 = a9;
  v55 = a2;
  v54 = a3;
  v53 = a4;
  v52 = a5;
  v10 = sub_22088ABEC();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D6D320];
  v17 = *(v11 + 104);
  v17(v15, v16, v10, v13);
  sub_22088ABDC();
  v50 = v19;
  v51 = v18;
  v48 = v21;
  v49 = v20;
  v22 = *(v11 + 8);
  v22(v15, v10);
  (v17)(v15, v16, v10);
  sub_22088ABDC();
  v46 = v24;
  v47 = v23;
  v45 = v25;
  v44 = v26;
  v22(v15, v10);
  (v17)(v15, v16, v10);
  sub_22088ABDC();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v22(v15, v10);
  (v17)(v15, v16, v10);
  sub_22088ABDC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v22(v15, v10);
  *a1 = v51;
  *(a1 + 1) = v50;
  *(a1 + 2) = v49;
  *(a1 + 3) = v48;
  *(a1 + 4) = v47;
  *(a1 + 5) = v46;
  *(a1 + 6) = v45;
  result = v44;
  a1[7] = v44;
  *(a1 + 8) = v28;
  *(a1 + 9) = v30;
  *(a1 + 10) = v32;
  *(a1 + 11) = v34;
  *(a1 + 12) = v36;
  *(a1 + 13) = v38;
  *(a1 + 14) = v40;
  *(a1 + 15) = v42;
  return result;
}

uint64_t sub_22063FED4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockFeedViewController()
{
  result = qword_28128AF00;
  if (!qword_28128AF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220640238()
{
  sub_22088685C();
  if (v0 <= 0x3F)
  {
    sub_220454070(319, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_220454070(319, qword_2812906B8, type metadata accessor for StockEarningsModel, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

id sub_220640420()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_blueprintViewController];
  sub_22088C71C();
  v3 = sub_22088BFCC();

  sub_2208867BC();
  v4 = sub_22089132C();

  [v3 setAccessibilityLabel_];

  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  [v6 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  [result bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v8 setFrame_];
  result = [v2 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = result;
  [result setPreservesSuperviewLayoutMargins_];

  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  [result addSubview_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22044444C(&qword_28128AF28, type metadata accessor for StockFeedViewController);
  sub_22044444C(&qword_28128AF20, type metadata accessor for StockFeedViewController);

  sub_22088F85C();

  v20 = [v1 traitCollection];
  sub_220640910(v20);

  result = [v1 view];
  if (result)
  {
    v21 = result;
    v22 = *&v1[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView];
    [result addSubview_];

    v23 = *(v22 + OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onTap);
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v24 = v23;

    v25 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v26 = (v22 + OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onHitTest);
    v27 = *(v22 + OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onHitTest);
    *v26 = sub_22064A7BC;
    v26[1] = v25;

    sub_2204DA45C(v27);

    return sub_220641780();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_220640878()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_blueprintViewController);

    sub_22088C71C();
    v3 = sub_22088BFCC();

    [v3 reloadData];
  }
}

void sub_220640910(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_styler];
  swift_beginAccess();
  sub_22046DA2C(v4, v39);
  v5 = v40;
  v6 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v37 = v5;
  v38 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v36);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_220457328(&v36, v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_22046DA2C(v4, v39);
  v9 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    v12 = *v9;
    v14 = *(*v9 + 40);
    v13 = *(*v9 + 48);
    __swift_project_boxed_opaque_existential_1((v12 + 16), v14);
    v15 = (*(*(v13 + 16) + 80))(v14);
    [v11 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_22046DA2C(v4, v39);
    v16 = __swift_project_boxed_opaque_existential_1(v39, v40);
    sub_22088C71C();
    v17 = sub_22088BFCC();

    v18 = *v16;
    v20 = *(*v16 + 40);
    v19 = *(v18 + 48);
    __swift_project_boxed_opaque_existential_1((v18 + 16), v20);
    v21 = (*(*(v19 + 16) + 80))(v20);
    [v17 setBackgroundColor_];

    [v17 setAlwaysBounceVertical_];
    [v17 layoutMargins];
    v23 = v22;
    [v17 layoutMargins];
    if (v24 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    [v17 setContentInset_];

    __swift_destroy_boxed_opaque_existential_1(v39);
    v26 = *__swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    v27 = sub_22088A8CC();
    v29 = v26[5];
    v28 = v26[6];
    __swift_project_boxed_opaque_existential_1(v26 + 2, v29);
    v30 = (*(*(v28 + 16) + 80))(v29);
    sub_220570424(v30);

    v31 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    v32 = *&v2[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_statusBarView];
    v34 = *(*v31 + 40);
    v33 = *(*v31 + 48);
    __swift_project_boxed_opaque_existential_1((*v31 + 16), v34);
    v35 = (*(*(v33 + 16) + 96))(v34);
    [v32 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_220640C6C()
{
  v0 = sub_22088CC6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_220891C4C();
  if (v5)
  {
    v6 = v5;
    swift_getObjectType();
    v7 = sub_22088D05C();
    if (v7 >> 62)
    {
      v8 = sub_2208926AC();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v1 + 104))(v4, *MEMORY[0x277D6E258], v0);
      sub_22088D08C();

      (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
    v9 = Strong;
  }
}

uint64_t sub_220640E34(uint64_t a1, double a2, double a3)
{
  v50 = a1;
  v53 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v53, v6);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220648D00(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v9 = v8;
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v50 - v11;
  sub_22055D328();
  v54 = v13;
  v51 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v58 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2208854AC();
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v55 = &v50 - v21;
  v22 = sub_22088CC6C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_220891C4C();
  if (result)
  {
    v28 = result;
    swift_getObjectType();
    sub_22088D02C();
    v29 = (*(v23 + 88))(v26, v22);
    if (v29 == *MEMORY[0x277D6E230] || v29 == *MEMORY[0x277D6E258] || v29 == *MEMORY[0x277D6E260])
    {
      goto LABEL_5;
    }

    if (v29 == *MEMORY[0x277D6E250])
    {
      v30 = *(v3 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView);
      sub_22088C71C();
      v31 = sub_22088BFCC();

      [v30 convertPoint:v31 toCoordinateSpace:{a2, a3}];
      v33 = v32;
      v35 = v34;

      sub_22088C71C();
      v36 = sub_22088BFCC();

      v37 = [v36 indexPathForItemAtPoint_];

      if (v37)
      {
        sub_22088545C();

        v39 = v55;
        v38 = v56;
        (*(v56 + 32))(v55, v18, v59);
        sub_22088C73C();
        v60 = v61;
        sub_220648D00(0, &unk_281297CA0, MEMORY[0x277D6D8B8]);
        sub_220648DC4();
        sub_22088BF9C();

        sub_22088E82C();
        (*(v52 + 8))(v12, v9);
        v40 = v57;
        v41 = v54;
        sub_22088AD8C();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 5)
        {
          if (EnumCaseMultiPayload <= 2)
          {
            if (EnumCaseMultiPayload < 2)
            {
              sub_22064A74C(v40, type metadata accessor for StockFeedMastheadModel);
              sub_22088C71C();
              v43 = sub_22088BFCC();

              v44 = [v43 hitTest:v50 withEvent:{a2, a3}];

              (*(v51 + 8))(v58, v41);
              (*(v38 + 8))(v39, v59);
              if (v44)
              {
                objc_opt_self();
                v45 = swift_dynamicCastObjCClass() == 0;

                return v45;
              }

              return 1;
            }

            (*(v51 + 8))(v58, v41);
            (*(v38 + 8))(v39, v59);
            goto LABEL_35;
          }

          if (EnumCaseMultiPayload == 3)
          {

            (*(v51 + 8))(v58, v41);
            (*(v38 + 8))(v39, v59);
            sub_2204597F0();
            v49 = *(v48 + 48);
            sub_2204B3A24(v40 + *(v48 + 64), &qword_281299370, MEMORY[0x277D69178]);
            sub_2204B3A24(v40 + v49, &qword_2812990C0, MEMORY[0x277D697F8]);
LABEL_35:
            v47 = sub_22088685C();
            goto LABEL_36;
          }

          if (EnumCaseMultiPayload == 4)
          {

            (*(v51 + 8))(v58, v41);
            (*(v38 + 8))(v39, v59);
            v46 = type metadata accessor for StockEarningsModel;
LABEL_31:
            sub_22064A74C(v40, v46);
            return 1;
          }

LABEL_30:

          (*(v51 + 8))(v58, v41);
          (*(v38 + 8))(v39, v59);
          v46 = type metadata accessor for StockFeedModel;
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload <= 7)
        {
          if (EnumCaseMultiPayload == 6)
          {

            (*(v51 + 8))(v58, v41);
            (*(v38 + 8))(v39, v59);
            sub_22064A74C(v40, type metadata accessor for StockFeedModel);
            return 0;
          }

          goto LABEL_30;
        }

        if (EnumCaseMultiPayload == 8)
        {

          (*(v51 + 8))(v58, v41);
          (*(v38 + 8))(v39, v59);
          sub_220459914();

          v47 = sub_22089030C();
LABEL_36:
          (*(*(v47 - 8) + 8))(v40, v47);
          return 1;
        }

        if (EnumCaseMultiPayload == 9)
        {
          goto LABEL_30;
        }

        (*(v51 + 8))(v58, v41);
        (*(v38 + 8))(v39, v59);
        return 1;
      }
    }

    else
    {
      if (v29 == *MEMORY[0x277D6E268] || v29 == *MEMORY[0x277D6E248] || v29 == *MEMORY[0x277D6E240] || v29 == *MEMORY[0x277D6E238])
      {
LABEL_5:

        return 0;
      }

      sub_22089267C();
      __break(1u);
    }

    return 1;
  }

  return result;
}

id sub_220641780()
{
  v1 = sub_2208848BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088564C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v22 - v16;
  (*(v4 + 16))(v7, v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock, v3, v15);
  sub_22088563C();
  result = [v0 view];
  if (result)
  {
    v19 = result;
    (*(v9 + 16))(v12, v17, v8);
    sub_22088489C();
    v20 = objc_allocWithZone(sub_22088A63C());
    sub_22044444C(&qword_281299358, MEMORY[0x277D69248]);
    v21 = sub_22088A62C();
    sub_220891F7C();

    return (*(v9 + 8))(v17, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220641A7C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StockListSelectionModel();
  *&v7 = MEMORY[0x28223BE20](v5 - 8, v6).n128_u64[0];
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewWillAppear_, a1 & 1, v7);
  sub_22088C72C();
  sub_22088867C();

  if ((v15[15] & 1) == 0)
  {
    sub_22088C71C();
    v10 = sub_22088BFCC();

    [v10 selectItemAtIndexPath:0 animated:1 scrollPosition:0];
  }

  result = sub_220891C8C();
  if ((result & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock;
    v13 = sub_22088685C();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v9, &v2[v12], v13);
    (*(v14 + 56))(v9, 0, 2, v13);
    sub_22044444C(&qword_28128AD90, type metadata accessor for StockListSelectionModel);
    sub_2208886AC();
    return sub_22064A74C(v9, type metadata accessor for StockListSelectionModel);
  }

  return result;
}

void sub_220641CD4(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        v7 = [v1 title];
        [v6 setTitle_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_220641E18()
{
  v1 = sub_220891C5C();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();

  if (v2 || (v3 = sub_220891C5C(), sub_2208877DC(), v4 = swift_dynamicCastClass(), v3, v4))
  {
    v5 = sub_220891C5C();
    [v5 dismissViewControllerAnimated:0 completion:0];
  }

  v6 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_delayedTipPresentation;
  if (*(v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_delayedTipPresentation))
  {

    sub_22089181C();
  }

  *(v0 + v6) = 0;
}

id sub_220641F74()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_viewWillLayoutSubviews);
  result = [*&v0[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_blueprintViewController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame_];
  v12 = *&v0[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_overlayView];
  result = [v0 view];
  if (result)
  {
    v13 = result;
    [result bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    return [v12 setFrame_];
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_220642110(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  sub_220640910(v3);

  sub_220642470();
  v4 = sub_220891C4C();
  if (v4)
  {

    if (qword_2812948A0 != -1)
    {
      swift_once();
    }

    sub_220891AFC();
    sub_22088A7EC();
    [*&v1[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_statusBarView] setHidden_];
    sub_22044444C(&unk_28128AF38, type metadata accessor for StockFeedViewController);
    sub_22088D0BC();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      sub_220648690(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_220899360;
      v10 = sub_22088684C();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_22048D860();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      sub_22089133C();

      v13 = sub_22089132C();

      [v8 setAccessibilityLabel_];

LABEL_8:
      return;
    }

    __break(1u);
  }

  else
  {
    v14 = *&v1[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_statusBarView];
    [v14 setHidden_];
    [v14 setNeedsLayout];
    [v14 layoutIfNeeded];
    v15 = [v1 view];
    if (v15)
    {
      v13 = v15;
      [v15 setAccessibilityLabel_];
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_220642470()
{
  v1 = sub_2208854AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088D61C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  sub_22088C71C();
  v11 = sub_22088BFCC();

  [v11 contentOffset];
  v13 = v12;

  sub_22088C71C();
  v14 = sub_22088BFCC();

  [v14 adjustedContentInset];
  v16 = v15;

  if (v13 + v16 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v13 + v16;
  }

  sub_22088C71C();
  v18 = sub_22088BFCC();

  v19 = [v18 collectionViewLayout];
  (*(v7 + 104))(v10, *MEMORY[0x277D6E758], v6);
  sub_22088D60C();
  (*(v7 + 8))(v10, v6);
  v20 = sub_22089132C();

  MEMORY[0x223D7D610](0, 0);
  v21 = sub_22088544C();
  (*(v2 + 8))(v5, v1);
  v22 = [v19 layoutAttributesForSupplementaryViewOfKind:v20 atIndexPath:v21];

  if (v22)
  {
    v23 = v28;
    if (swift_unknownObjectWeakLoadStrong())
    {
      [v22 frame];
      Height = CGRectGetHeight(v29);
      v25 = [v23 traitCollection];
      v26 = [v25 horizontalSizeClass];

      sub_2205CC790(v26, v17, Height);
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

void sub_2206429F8()
{
  v1 = v0;
  v71 = sub_22088CA0C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v2);
  v72 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v80, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  v84 = v7;
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v82 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220648D00(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v83 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v56 - v13;
  sub_220454070(0, &unk_281297FA0, sub_22055D328, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v56 - v21;
  v81 = sub_2208854AC();
  v23 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_220891C8C())
  {
    return;
  }

  v27 = sub_220891C5C();
  sub_2208877DC();
  v28 = swift_dynamicCastClass();

  if (v28)
  {
    return;
  }

  swift_getObjectType();
  sub_22088654C();
  if (!v29)
  {
    v79 = *(v1 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_blueprintViewController);
    sub_22088C71C();
    v30 = sub_22088BFCC();

    v66 = v30;
    v31 = [v30 indexPathsForVisibleItems];
    v32 = sub_2208916EC();

    v33 = v1;
    v34 = *(v32 + 16);
    if (!v34)
    {

      goto LABEL_5;
    }

    v65 = 0;
    v60 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_commandTracker;
    v61 = v33;
    v59 = v33 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_commandCenter;
    v36 = *(v23 + 16);
    v35 = v23 + 16;
    v77 = v36;
    v37 = (*(v35 + 64) + 32) & ~*(v35 + 64);
    v56 = v32;
    v38 = v32 + v37;
    v76 = *(v35 + 56);
    v75 = (v11 + 8);
    v74 = (v78 + 48);
    v68 = (v78 + 32);
    v67 = (v78 + 8);
    v78 = v35;
    v73 = (v35 - 8);
    v58 = *MEMORY[0x277D6E108];
    v57 = v70 + 104;
    v39 = v81;
    v69 = v6;
    v36(v26, v38, v81);
    while (1)
    {
      sub_22088C73C();
      v88 = v85;
      sub_220648D00(0, &unk_281297CA0, MEMORY[0x277D6D8B8]);
      sub_220648DC4();
      sub_22088BF9C();

      v40 = v83;
      sub_22088E71C();
      (*v75)(v14, v40);
      sub_2204B2868(v22, v18, &unk_281297FA0, sub_22055D328);
      v41 = v84;
      if ((*v74)(v18, 1, v84) == 1)
      {
        sub_2204B3A24(v22, &unk_281297FA0, sub_22055D328);
        (*v73)(v26, v39);
        sub_2204B3A24(v18, &unk_281297FA0, sub_22055D328);
        goto LABEL_11;
      }

      v42 = v82;
      (*v68)(v82, v18, v41);
      v43 = v69;
      sub_22088AD8C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*v67)(v42, v41);
        sub_2204B3A24(v22, &unk_281297FA0, sub_22055D328);
        v39 = v81;
        (*v73)(v26, v81);
        sub_22064A74C(v43, type metadata accessor for StockFeedModel);
        goto LABEL_11;
      }

      sub_22064A74C(v43, type metadata accessor for StockEarningsModel);
      v44 = sub_22088544C();
      v45 = [v66 cellForItemAtIndexPath_];

      if (v45)
      {
        sub_220648E38(0, &qword_281297B80, type metadata accessor for StockFeedEarningsView, sub_220648EB8, MEMORY[0x277D6D990]);
        if (swift_dynamicCastClass())
        {
          v46 = sub_22088B9EC();
          v47 = OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton;
          if ([*&v46[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton] isHidden])
          {

            (*v67)(v82, v84);
          }

          else
          {
            (*v57)(v72, v58, v71);
            v48 = v46;
            v49 = *(v61 + v60);
            v86 = sub_22088731C();
            v87 = sub_22044444C(&qword_281298BF0, MEMORY[0x277CEAEA8]);
            v85 = v49;
            v70 = v48;
            v50 = *&v48[v47];
            v89 = 0u;
            v90 = 0u;
            v91 = 1;
            sub_22088C4DC();
            swift_allocObject();

            v51 = v50;
            v52 = sub_22088C4BC();
            v63 = *(v59 + 8);
            ObjectType = swift_getObjectType();
            if (qword_281296FE8 != -1)
            {
              swift_once();
            }

            LOBYTE(v85) = 0;

            v64 = v52;
            v53 = v65;
            sub_22088B7AC();
            if (v53)
            {
            }

            v65 = 0;
            v54 = v84;
            v55 = v82;

            (*v67)(v55, v54);
          }

          goto LABEL_27;
        }
      }

      (*v67)(v82, v41);
LABEL_27:
      sub_2204B3A24(v22, &unk_281297FA0, sub_22055D328);
      v39 = v81;
      (*v73)(v26, v81);
LABEL_11:
      v38 += v76;
      if (!--v34)
      {

        return;
      }

      v77(v26, v38, v39);
    }
  }

LABEL_5:
}

uint64_t sub_2206434EC()
{
  swift_getObjectType();
  sub_22088AC1C();
  sub_22088ABFC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22088DD5C();
  swift_allocObject();
  sub_22088DD6C();
  sub_22088B61C();
  sub_22044444C(&qword_281297D70, MEMORY[0x277D6D808]);
  sub_22088BBAC();
}

uint64_t sub_220643638()
{
  sub_220454070(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = *(v5 + 16);
  v11 = Strong;
  v10(v8, Strong + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock, v4);
  v12 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_latestQuote;
  swift_beginAccess();
  v13 = MEMORY[0x277D697F8];
  sub_2204B2868(v11 + v12, v3, &qword_2812990C0, MEMORY[0x277D697F8]);
  v14 = type metadata accessor for StockShareActivityItemSource();
  v15 = objc_allocWithZone(v14);
  v10(&v15[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v8, v4);
  sub_2204B2868(v3, &v15[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], &qword_2812990C0, v13);
  v20.receiver = v15;
  v20.super_class = v14;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  sub_2204B3A24(v3, &qword_2812990C0, v13);
  (*(v5 + 8))(v8, v4);
  v17 = sub_2205F7134();
  sub_22088C8CC();
  v18 = sub_22088D16C();

  return v18;
}

uint64_t sub_2206438CC()
{
  sub_220454070(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v19 - v3;
  v5 = sub_22088685C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  v10 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock;
  v11 = *(v0 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_commandTracker);
  v21 = sub_22088731C();
  v26 = v21;
  v20 = sub_22044444C(&qword_281298BF0, MEMORY[0x277CEAEA8]);
  v27 = v20;
  v25[0] = v11;
  swift_retain_n();
  sub_22088B43C();
  sub_22064A09C(v25, &unk_281297F00, &qword_281297F10, MEMORY[0x277D6D540]);
  if (qword_281297080 != -1)
  {
    swift_once();
  }

  v19 = qword_2812B6CA8;
  v12 = *(v6 + 16);
  v12(v9, v0 + v10, v5);
  v13 = sub_22088676C();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = type metadata accessor for StockShareActivityItemSource();
  v15 = objc_allocWithZone(v14);
  v12(&v15[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v9, v5);
  v16 = MEMORY[0x277D697F8];
  sub_2204B2868(v4, &v15[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], &qword_2812990C0, MEMORY[0x277D697F8]);
  v24.receiver = v15;
  v24.super_class = v14;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  sub_2204B3A24(v4, &qword_2812990C0, v16);
  (*(v6 + 8))(v9, v5);
  v22 = v17;
  v23 = 3;
  v26 = v21;
  v27 = v20;
  v25[0] = v11;
  sub_22088B43C();

  return sub_22064A09C(v25, &unk_281297F00, &qword_281297F10, MEMORY[0x277D6D540]);
}

uint64_t sub_220643C90(uint64_t a1)
{
  v25 = sub_22088E85C();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088E86C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[1] = sub_22088C6FC();
  v11 = (a1 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_styler);
  swift_beginAccess();
  v12 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v10[3] = sub_22088FE9C();
  v10[4] = sub_22044444C(&qword_27CF58020, MEMORY[0x277D32BC8]);
  __swift_allocate_boxed_opaque_existential_1(v10);
  v13 = *v12;
  v14 = [objc_opt_self() labelColor];
  v16 = v13[5];
  v15 = v13[6];
  __swift_project_boxed_opaque_existential_1(v13 + 2, v16);
  (*(*(v15 + 16) + 80))(v16);
  sub_22088FE8C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v19 = sub_22089141C();
  v21 = v20;

  v10[5] = v19;
  v10[6] = v21;
  (*(v7 + 104))(v10, *MEMORY[0x277D6EC80], v6);
  v22 = v25;
  (*(v2 + 104))(v5, *MEMORY[0x277D6ECA8], v25);
  sub_22088B53C();

  (*(v2 + 8))(v5, v22);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22064401C()
{
  v0 = sub_22088E85C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088E86C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C6FC();
  (*(v6 + 104))(v9, *MEMORY[0x277D6EC88], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6ECA8], v0);
  sub_22088B53C();

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

id sub_2206441F8()
{
  v0 = objc_opt_self();

  return [v0 openStocksSettings];
}

void sub_220644230(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088B96C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_keyboardInputMonitor), *(v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_keyboardInputMonitor + 24));
  v9 = sub_22088CA3C();
  v11 = v10;
  sub_220891CAC();
  if (v20)
  {
    sub_220457328(&v19, v21);
    v18 = v9;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    (*(v5 + 104))(v8, *MEMORY[0x277D6D970], v4);
    v9 = v18;
    sub_22088C39C();
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_22064A09C(&v19, &qword_27CF59760, &unk_2812979A0, MEMORY[0x277D6DE88]);
  }

  sub_22088C71C();
  v12 = sub_22088BFCC();

  v13 = sub_220891BEC();

  v14 = *(v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler);
  v15 = v14[5];
  ObjectType = swift_getObjectType();
  LOBYTE(v21[0]) = (v9 == 1703936) & ~v11;
  (*(v15 + 80))(a2, 0, v21, ObjectType, v15);
  __swift_project_boxed_opaque_existential_1(v14 + 11, v14[14]);
  sub_22081C0C8(a2);
}

void sub_22064449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22088F11C();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088F14C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088DA2C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a3, v14, v17);
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == *MEMORY[0x277D6E950])
  {
    (*(v15 + 8))(v19, v14);
LABEL_3:
    v21 = *(*&v3[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler] + 40);
    ObjectType = swift_getObjectType();
    (*(v21 + 48))(ObjectType, v21);
    return;
  }

  if (v20 == *MEMORY[0x277D6E928])
  {
    v23 = *(*&v3[OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler] + 40);
    v24 = swift_getObjectType();
    (*(v23 + 40))(v24, v23);
  }

  else if (v20 == *MEMORY[0x277D6E948])
  {
    *(swift_allocObject() + 16) = v3;
    v25 = v3;
    sub_220888FEC();

    sub_22044D56C(0, &qword_28127E7C0);
    v26 = sub_220891D0C();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    aBlock[4] = sub_22064A04C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_20;
    v28 = _Block_copy(aBlock);
    v29 = v25;

    sub_22088F13C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22044444C(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_220454070(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2204B6C74();
    sub_2208923FC();
    MEMORY[0x223D89EC0](0, v13, v8, v28);
    _Block_release(v28);

    (*(v32 + 8))(v8, v5);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    if (v20 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v20 != *MEMORY[0x277D6E958])
    {
      if (v20 == *MEMORY[0x277D6E970])
      {
        sub_22088C71C();
        v30 = sub_22088BFCC();

        sub_22044D56C(0, &qword_28127E820);
        sub_22088B74C();
      }

      else
      {
        sub_22089267C();
        __break(1u);
      }
    }
  }
}

uint64_t sub_220644A40()
{
  v0 = sub_22088698C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v21 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v21 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0();
      v19 = *(v18 + 48);
      sub_2204B3A24(&v14[*(v18 + 64)], &qword_281299370, MEMORY[0x277D69178]);
      sub_2204B3A24(&v14[v19], &qword_2812990C0, MEMORY[0x277D697F8]);
    }

    v20 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      v17 = 0;
      if (EnumCaseMultiPayload != 9)
      {
        return v17;
      }

      goto LABEL_12;
    }

    sub_220459914();

    v20 = sub_22089030C();
LABEL_15:
    (*(*(v20 - 8) + 8))(v14, v20);
    return 0;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_12:
    v21 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_22064A74C(v14, v21);
    return 0;
  }

  (*(v7 + 32))(v10, v14, v6);
  sub_22088FF6C();
  sub_2208868DC();
  (*(v1 + 8))(v4, v0);
  v16 = sub_220890B8C();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v10, v6);
  return v16;
}

void sub_220644DDC(uint64_t a1, char a2)
{
  v4 = sub_22088E85C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088E86C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v27 = v4;
    v28 = sub_22088C6FC();
    v14 = (v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_styler);
    swift_beginAccess();
    v15 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v13[3] = sub_22088FE9C();
    v13[4] = sub_22044444C(&qword_27CF58020, MEMORY[0x277D32BC8]);
    __swift_allocate_boxed_opaque_existential_1(v13);
    v16 = *v15;
    v17 = [objc_opt_self() labelColor];
    v19 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v19);
    (*(*(v18 + 16) + 80))(v19);
    sub_22088FE8C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    v22 = sub_22089141C();
    v24 = v23;

    v13[5] = v22;
    v13[6] = v24;
    (*(v10 + 104))(v13, *MEMORY[0x277D6EC80], v9);
    v25 = v27;
    (*(v5 + 104))(v8, *MEMORY[0x277D6ECB0], v27);
    sub_22088B53C();

    (*(v5 + 8))(v8, v25);
    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_220645178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5800](a1, a2, ObjectType, a4);
}

uint64_t sub_220645218(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler);
  v5 = v4[5];
  ObjectType = swift_getObjectType();
  (*(v5 + 72))(a2, ObjectType, v5);
  __swift_project_boxed_opaque_existential_1(v4 + 11, v4[14]);
  return sub_220817B78(a2);
}

uint64_t sub_220645290(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler);
  v5 = v4[5];
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(a2, ObjectType, v5);
  __swift_project_boxed_opaque_existential_1(v4 + 11, v4[14]);
  return sub_220817410(a2);
}

uint64_t sub_220645378(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t sub_2206453DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5870](a1, a2, a3, ObjectType, a5);
}

void sub_220645448(void *a1)
{
  v2 = v1;
  sub_22088A96C();
  sub_220645660();
  if (sub_22088F0DC())
  {

    sub_220642470();
  }

  else
  {
    [a1 contentOffset];
    v5 = v4;
    v6 = sub_22088A8BC();
    [v6 alpha];
    v8 = v7;

    if (v5 <= 0.0)
    {
      if (v8 == 0.0)
      {
        return;
      }

      v9 = objc_opt_self();
      v12 = swift_allocObject();
      *(v12 + 16) = v2;
      v19 = sub_22064A6D0;
      v20 = v12;
      v15 = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v11 = &block_descriptor_50;
    }

    else
    {
      if (v8 == 1.0)
      {
        return;
      }

      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      v19 = sub_22064A6D8;
      v20 = v10;
      v15 = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v11 = &block_descriptor_56;
    }

    v17 = sub_2204C35E8;
    v18 = v11;
    v13 = _Block_copy(&v15);
    v14 = v2;

    [v9 animateWithDuration:v13 animations:{0.25, v15, v16}];
    _Block_release(v13);
  }
}