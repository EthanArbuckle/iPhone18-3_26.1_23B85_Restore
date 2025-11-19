id sub_2745942EC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500);
  sub_27463B4BC();
  OUTLINED_FUNCTION_29_11();

  v4 = [a2 copyWithSerializedParameters_];

  return v4;
}

uint64_t sub_274594370(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2745943B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v5 <= 0 && v5 > a2)
    {
      return 0;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && v5 < a2)
  {
    return 0;
  }

  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_19;
  }

  if (result < a4 || result > a5)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_274594410(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FE90);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v48 - v8;
  v10 = sub_274594370(&unk_280952570, 255, type metadata accessor for WFEditorActionItem);
  v11 = OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_progressLayer;
  *&a2[v11] = [objc_allocWithZone(type metadata accessor for ProgressLayer()) init];
  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___actionHeaderView] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___auxiliaryContentView] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___dimmingOverlayView] = 0;
  if (sub_274453594(MEMORY[0x277D84F90]))
  {
    sub_274573FD0(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_cancellables] = v12;
  v13 = &a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item];
  *v13 = a1;
  *(v13 + 1) = v10;
  v14 = type metadata accessor for ActionCellContentView();
  v53.receiver = a2;
  v53.super_class = v14;

  v15 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = sub_27463BEEC();
  [v16 setMasksToBounds_];

  v17 = sub_27463BEEC();
  [v17 addSublayer_];

  sub_274538B90();
  sub_274538CC8();
  v18 = sub_274537C9C();
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor_];

  [v15 addSubview_];
  v20 = sub_274537D40();
  [v15 addSubview_];

  v21 = sub_274537D74();
  [v15 addSubview_];

  v22 = sub_274537E4C();
  [v15 addSubview_];

  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v48[0] = a1;
    v48[1] = v10;
    v26 = v6;
    v27 = AssociatedConformanceWitness;
    v28 = v7;
    v29 = *(AssociatedConformanceWitness + 24);
    v30 = swift_checkMetadataState();
    v31 = v29(v30, v27);

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE58);
    sub_274638F7C();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_274458A14(&qword_2809525A0, &qword_28094AE60);
    sub_274638FFC();

    (*(v28 + 8))(v9, v26);
    swift_beginAccess();
    sub_274638EAC();
    swift_endAccess();
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = v32;
    swift_getAssociatedTypeWitness();
    v34 = swift_getAssociatedConformanceWitness();
    v35 = *(v34 + 16);
    v36 = swift_checkMetadataState();
    v37 = v35(v36, v34);

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEB0);
    v38 = v49;
    sub_274638F7C();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_274458A14(&unk_280952590, &unk_28094FE90);
    v39 = v51;
    sub_274638FFC();

    (*(v50 + 8))(v38, v39);
    swift_beginAccess();
    sub_274638EAC();
    swift_endAccess();
  }

  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    swift_getAssociatedTypeWitness();
    v42 = swift_getAssociatedConformanceWitness();
    v43 = *(v42 + 16);
    v44 = swift_checkMetadataState();
    v45 = v43(v44, v42);

    v46 = *&v45[OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_onLifecycleEvent];

    v52 = v46;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEC0);
    sub_274458A14(&unk_280952580, &qword_28094FEC0);
    sub_274638FFC();

    swift_beginAccess();
    sub_274638EAC();
    swift_endAccess();
  }

  return v15;
}

uint64_t sub_274594E5C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_274412734(255, a2);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_295Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

char *sub_274594F20(void *a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = &a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_dataSource];
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession] = 0;
  v6 = MEMORY[0x277D84F90];
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions] = MEMORY[0x277D84F90];
  *(OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems + a2) = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems] = v6;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer] = 0;
  v7 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView;
  *&a2[v7] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView;
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  *&a2[v8] = [objc_allocWithZone(type metadata accessor for WFEditorVariableBlurView()) initWithFrame_];
  v13 = &a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_cachedSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_windowTouchObserver] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_indicesForVisibleRows] = v6;
  type metadata accessor for WFEditorCell();
  sub_27463832C();
  v14 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
  type metadata accessor for WFEditorItem();
  sub_274594370(&qword_28094BDF8, 255, type metadata accessor for WFEditorItem);
  *&a2[v14] = sub_27463B4DC();
  v15 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_queuedCells;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952670);
  *&a2[v15] = sub_27463B4DC();
  if (sub_274453594(v6))
  {
    sub_2745737B0();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells] = v16;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession] = 0;
  v17 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_rowHeightCache;
  *&a2[v17] = sub_27463B4DC();
  a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___debugDropTargetView] = 0;
  *(v5 + 1) = &off_28836F8B8;
  v47 = a1;
  swift_unknownObjectWeakAssign();
  v49.receiver = a2;
  v49.super_class = ObjectType;
  v18 = &selRef_dropTargetUpdated;
  v19 = objc_msgSendSuper2(&v49, sel_initWithFrame_, v9, v10, v11, v12);
  [v19 setDelegate_];
  [v19 setAlwaysBounceVertical_];
  [v19 setKeyboardDismissMode_];
  v20 = sub_27459F2A0();
  [v20 setDelegate_];

  [*&v19[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer] setMinimumPressDuration_];
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = sub_27463B66C();
  v23 = [v21 BOOLForKey_];

  if (v23)
  {
    v24 = objc_opt_self();
    v48 = *MEMORY[0x277D74420];
    v25 = objc_opt_self();
    v26 = v25;
    v27 = 0;
    while (1)
    {
      v28 = v27 * 50.0;
      v29 = CGSizeMake(v25);
      result = [objc_allocWithZone(MEMORY[0x277D756B8]) v18[143]];
      if (v28 == INFINITY)
      {
        break;
      }

      if (v28 <= -9.22337204e18)
      {
        goto LABEL_12;
      }

      if (v28 >= 9.22337204e18)
      {
        goto LABEL_13;
      }

      v34 = result;
      v35 = sub_27463C66C();
      sub_27455AA28(v35, v36, v34);
      v37 = [v24 systemFontOfSize:6.0 weight:v48];
      [v34 setFont_];

      v38 = [v26 systemIndigoColor];
      [v34 setTextColor_];

      v39 = v34;
      [v19 addSubview_];
      [v39 intrinsicContentSize];

      v41 = CGSizeMake(v40);
      v45 = [objc_allocWithZone(MEMORY[0x277D75D18]) v18[143]];
      v46 = [v26 systemIndigoColor];
      [v45 setBackgroundColor_];

      v18 = &selRef_dropTargetUpdated;
      [v19 addSubview_];

      if (++v27 == 201)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:
    [v19 addSubview_];

    return v19;
  }

  return result;
}

void sub_2745955E0()
{
  v1 = *(sub_274637C3C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_274588C90(v3, v0 + v2, v4);
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t result)
{
  *(v2 - 168) = v1;
  *(v2 - 160) = result;
  *(v2 - 200) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return sub_274638FAC();
}

uint64_t OUTLINED_FUNCTION_24_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return sub_27463C56C();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_27463C56C();
}

uint64_t OUTLINED_FUNCTION_37_6()
{

  return sub_27463C38C();
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t a1)
{

  return sub_2744535A4(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_40_6()
{

  return swift_allocObject();
}

id sub_274595918()
{
  OUTLINED_FUNCTION_29_11();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_13_5();
  v1 = sub_27463B66C();

  v2 = OUTLINED_FUNCTION_92_0();
  v4 = [v2 v3];

  return v4;
}

uint64_t sub_2745959AC(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

uint64_t sub_274595A60(uint64_t a1, void (*a2)(void))
{
  MEMORY[0x277C57F30]();
  a2(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_27463B8AC();
}

uint64_t sub_274595AC0(uint64_t a1, uint64_t a2)
{
  result = sub_274453594(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x277C58B20](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_274595B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0);
  sub_27440CA78(&qword_280952A90, &unk_2809525E0);
  sub_27463BACC();
  sub_27463BB0C();
  return sub_27463BAFC();
}

void (*sub_274595C44(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_2745A806C(v6, a2, a3);
  return sub_27444F5C4;
}

void sub_274595CB8()
{
  OUTLINED_FUNCTION_71_0();
  v610 = v1;
  v611 = v3;
  v4 = v0;
  v568 = v5;
  v7 = v6;
  v572 = v8;
  v583 = v9;
  v10 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v559 = v14 - v15;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v16);
  v558 = &v546 - v17;
  OUTLINED_FUNCTION_51_3();
  v18 = sub_27463B1EC();
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_3_0();
  v557 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952A80);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v571 = &v546 - v23;
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0);
  OUTLINED_FUNCTION_1();
  v595 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v560 = v26 - v27;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_50_3();
  v586 = v29;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_50_3();
  v587 = v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_50_3();
  v577 = v33;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_50_3();
  v576 = v35;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_50_3();
  v589 = v37;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v38);
  v570 = &v546 - v39;
  OUTLINED_FUNCTION_51_3();
  v40 = sub_27463B27C();
  OUTLINED_FUNCTION_1();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_0();
  v46 = (v45 - v44);
  v556 = sub_274412734(0, &qword_28094AF90);
  *v46 = sub_27463BCEC();
  (*(v42 + 104))(v46, *MEMORY[0x277D85200], v40);
  v47 = sub_27463B29C();
  (*(v42 + 8))(v46, v40);
  if ((v47 & 1) == 0)
  {
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
    goto LABEL_327;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_314:
    OUTLINED_FUNCTION_25_16();
    return;
  }

  v553 = v12;
  v554 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates) = 1;
  v552 = v10;
  v565 = v21;
  if (v7)
  {
    v48 = sub_2745904B0();
    v572 = sub_27459FC30(v48, v572);
  }

  else
  {
  }

  v49 = v590;
  v50 = v595;
  v51 = sub_27459AD34();
  v52 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells;
  OUTLINED_FUNCTION_29_3();
  v596 = *(v50 + 16);
  (v596)(v570, v4 + v52, v49);
  v53 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
  OUTLINED_FUNCTION_35_6();
  swift_beginAccess();
  v54 = *(v4 + v53);
  v55 = type metadata accessor for WFEditorCell();

  v56 = v589;
  sub_27463832C();
  OUTLINED_FUNCTION_19_15();
  v57 = *(v50 + 40);
  v592 = v52;
  v57(v4 + v52, v56, v49);
  swift_endAccess();
  type metadata accessor for WFEditorItem();
  OUTLINED_FUNCTION_10_28();
  sub_2745A8678(v58, v59, v60);
  v61 = MEMORY[0x277D84F90];
  v62 = sub_27463B4DC();
  v584 = v53;
  *(v4 + v53) = v62;

  [v4 contentOffset];
  if (v63 + -500.0 < 0.0)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v63 + -500.0;
  }

  [v4 bounds];
  v66 = v65;
  [v4 contentOffset];
  LODWORD(v578) = v67 > 0.0;
  OUTLINED_FUNCTION_5();
  v68 = swift_allocObject();
  v555 = v68;
  *(v68 + 16) = 0;
  v69 = (v68 + 16);
  v604 = v61;
  v71 = sub_2745A8678(&qword_280952A88, v70, type metadata accessor for WFEditorCell);
  v580 = v55;
  v563 = v71;
  v603 = sub_27463B4DC();
  v594 = v4;
  v591 = v50 + 16;
  v582 = v54;
  v567 = v69;
  if (v568)
  {

    v73 = sub_27452F0D0(v72, v54);
    v74 = v592;
    v75 = v54;
    if (v73)
    {
      v573 = v73;

      v597 = 0;
    }

    else
    {
      v76 = sub_27463831C();
      v593 = sub_274453594(v76);
      v77 = 0;
      v597 = 0;
      v49 = (v76 & 0xC000000000000001);
      while (1)
      {
        if (v593 == v77)
        {

          v573 = 0;
          OUTLINED_FUNCTION_65_2();
          goto LABEL_23;
        }

        sub_2744535A4(v77, v49 == 0);
        if (v49)
        {
          v78 = MEMORY[0x277C58B20](v77, v76);
        }

        else
        {
          v78 = *(v76 + 8 * v77 + 32);
        }

        if (__OFADD__(v77, 1))
        {
          goto LABEL_324;
        }

        v74 = v78;
        v79 = sub_274599B58();
        v600.a = *&v74[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item];
        MEMORY[0x28223BE20](v79);
        OUTLINED_FUNCTION_58_3();
        *(v80 - 16) = &v600;

        OUTLINED_FUNCTION_45_5();
        v82 = v81;
        OUTLINED_FUNCTION_98_0();

        if (v82)
        {
          break;
        }

        ++v77;
        v4 = v594;
        v75 = v582;
      }

      v573 = v74;

      v4 = v594;
      OUTLINED_FUNCTION_65_2();
      v75 = v582;
LABEL_23:
      v69 = v567;
    }
  }

  else
  {
    v573 = 0;
    v597 = 0;
    v74 = v592;
    v75 = v54;
  }

  v83 = sub_274599B58();
  v84 = sub_274453594(v83);

  if (v84 < 0)
  {
    goto LABEL_326;
  }

  v579 = v51 + 0.45;
  v85 = &selRef_dropTargetUpdated;
  v86 = MEMORY[0x277CDA4F0];
  v87 = v66 + v64 + 1000.0;
  if (v84)
  {
    v588 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_rowHeightCache;
    v564 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems;
    OUTLINED_FUNCTION_35_6();
    v89 = v88;
    v91 = v90;
    v593 = v84;
    v93 = v92;
    swift_beginAccess();
    v94 = 0;
    v585 = (v75 & 0xC000000000000001);
    v95 = v75 & 0xFFFFFFFFFFFFFF8;
    if (v75 < 0)
    {
      v95 = v75;
    }

    v574 = v95;
    p_c = &v600.c;
    v96 = *v93;
    v97 = &v600;
    v561 = *v86;
    *&v562 = v96;
    v581 = MEMORY[0x277D84F90];
    v98 = *v91;
    v550 = *v89;
    v551 = v98;
    v549 = *MEMORY[0x277CDA4E8];
    v548 = *MEMORY[0x277CDA4B8];
    v99 = 6.0;
    v100 = 0.0;
    while (1)
    {
      v101 = sub_274599B58();
      if ((v101 & 0xC000000000000001) != 0)
      {
        v102 = COERCE_DOUBLE(MEMORY[0x277C58B20](v94, v101));
      }

      else
      {
        if (v94 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_317;
        }

        v102 = *(v101 + 8 * v94 + 32);
      }

      if ((*(*&v102 + 25) & 1) == 0)
      {
        break;
      }

LABEL_117:
      if (v593 == ++v94)
      {
        if (v583)
        {
          v85 = &selRef_dropTargetUpdated;
          v69 = v567;
          goto LABEL_123;
        }

        v583 = 0;
LABEL_149:
        v303 = v100 == 0.0;
        goto LABEL_150;
      }
    }

    if (v585)
    {

      v103 = sub_27463C53C();

      if (!v103)
      {
        goto LABEL_43;
      }

      v605 = v103;
      swift_dynamicCast();
      v104 = *&v600.a;
      if (!*&v600.a)
      {
        goto LABEL_43;
      }
    }

    else if (!*(v75 + 16) || (v105 = sub_274534D60(), (v106 & 1) == 0) || (v104 = *(*(v75 + 56) + 8 * v105)) == 0)
    {
LABEL_43:
      if (v64 < v99 + sub_27459FCC0(v94) && v99 < v87)
      {
        v569 = v64;
        v112 = sub_274590094(v4);
        MEMORY[0x277C57F30]();
        v113 = *((v604 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v604 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v113 >> 1)
        {
          OUTLINED_FUNCTION_0_8(v113);
          sub_27463B85C();
        }

        v114 = v87;
        sub_27463B8AC();
        v581 = v604;
        [v4 frame];
        [v112 setFrame_];
        v115 = sub_274599D28();
        v116 = v588;
        OUTLINED_FUNCTION_20_16();
        sub_27452F200(v115, *(v4 + v116));
        LOBYTE(v115) = v117;
        swift_endAccess();
        v87 = v100;
        if ((v115 & 1) == 0)
        {
          OUTLINED_FUNCTION_57_3();
          MEMORY[0x28223BE20](v118);
          OUTLINED_FUNCTION_16_19();
          *(v119 - 16) = &v600;
          sub_27446ECD4(sub_2745A8D58, v120, v572);
          OUTLINED_FUNCTION_87_0();
        }

        [v112 setNeedsLayout];
        [v112 layoutIfNeeded];
        [v4 bounds];
        CGRectGetWidth(v612);
        [v112 sizeThatFits_];
        v123 = v122;
        [v4 contentSize];
        v125 = v124;
        [v4 adjustedContentInset];
        OUTLINED_FUNCTION_73_2();
        v127 = v573;
        if (v573)
        {
          v100 = v126;
          v128 = v112;
          v129 = v127;
          v130 = sub_27463BF7C();

          if ((v130 & 1) != 0 && ([v4 bounds], CGRectGetHeight(v613) <= v125 + v2 + v100))
          {
            [v128 frame];
            v100 = v87;
            v193 = v99 - (v87 + v192);
            *v567 = v193;
            v569 = v569 + v193;
            v87 = v114 + v193;
          }

          else
          {
            OUTLINED_FUNCTION_63_3();
          }

          v97 = &v600;
        }

        else
        {
          OUTLINED_FUNCTION_63_3();
        }

        v194 = OUTLINED_FUNCTION_60_3();
        [v194 v195];
        v196 = COERCE_DOUBLE(sub_274599D28());
        v197 = v588;
        OUTLINED_FUNCTION_20_16();
        sub_27452F200(*&v196, *(v4 + v197));
        OUTLINED_FUNCTION_39_8();
        v64 = v569;
        if ((v197 & 1) != 0 || v123 != v196)
        {
          if (v578)
          {
            v198 = sub_274599D28();
            v199 = v588;
            OUTLINED_FUNCTION_20_16();
            sub_27452F200(v198, *(v4 + v199));
            OUTLINED_FUNCTION_39_8();
            v200 = OUTLINED_FUNCTION_54_3();
            if (!v302)
            {
              v200 = v201;
            }

            OUTLINED_FUNCTION_78(v200);
          }

          v202 = sub_274599D28();
          OUTLINED_FUNCTION_19_15();
          sub_2745FB78C(v202, v123);
          swift_endAccess();
          v97 = &v600;
        }

        OUTLINED_FUNCTION_20_16();
        v602 = v94 - 1;
        sub_27463837C();
        v203 = v605;
        swift_endAccess();
        if (v203)
        {
          [*&v203[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView] setAlpha_];
        }

        v104 = v112;
        [v4 addSubview_];
        v204 = swift_unknownObjectWeakAssign();
        if (v583)
        {
          v600.a = v102;
          MEMORY[0x28223BE20](v204);
          OUTLINED_FUNCTION_58_3();
          *(v205 - 16) = &v600;

          OUTLINED_FUNCTION_45_5();
          v207 = v206;
          OUTLINED_FUNCTION_98_0();
          if (v207)
          {
          }

          else
          {
            v208 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView;
            [*(v104 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView) setAlpha_];
            v209 = *(v104 + v208);
            CGAffineTransformMakeScale(&v600, 0.96, 0.95);
            [v209 setTransform_];
            v569 = COERCE_DOUBLE(sub_274412734(0, &qword_2809525F0));
            sub_27463B6AC();
            v210 = sub_274595918();
            v211 = sub_2746386DC();
            [v210 setValue:v211 forKey:v561];

            sub_27463B95C();
            v212 = OUTLINED_FUNCTION_17_15();
            [v212 v213];

            sub_27463B95C();
            v214 = OUTLINED_FUNCTION_17_15();
            [v214 v215];

            sub_27463B66C();
            v216 = OUTLINED_FUNCTION_17_15();
            [v216 v217];

            sub_27463B66C();
            v218 = OUTLINED_FUNCTION_17_15();
            [v218 v219];

            v220 = [v104 layer];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40);
            OUTLINED_FUNCTION_8_4();
            v221 = swift_allocObject();
            *(v221 + 16) = xmmword_274648570;
            *(v221 + 56) = v569;
            *(v221 + 32) = v210;
            v569 = COERCE_DOUBLE(v210);
            sub_2745A85DC(v221, v220, &selRef_setFilters_);

            v547 = objc_opt_self();
            OUTLINED_FUNCTION_5();
            v222 = swift_allocObject();
            *(v222 + 16) = v104;
            *&v600.tx = sub_2745A8A68;
            *&v600.ty = v222;
            *&v600.a = MEMORY[0x277D85DD0];
            OUTLINED_FUNCTION_29_12();
            v600.c = v223;
            *&v600.d = &block_descriptor_300_0;
            v224 = _Block_copy(&v600);
            v225 = v104;

            OUTLINED_FUNCTION_5();
            v226 = swift_allocObject();
            *(v226 + 16) = v225;
            *&v600.tx = sub_2745A8A70;
            *&v600.ty = v226;
            *&v600.a = MEMORY[0x277D85DD0];
            OUTLINED_FUNCTION_31_11();
            v600.c = v227;
            *&v600.d = &block_descriptor_306;
            v228 = _Block_copy(&v600);
            v229 = v225;

            OUTLINED_FUNCTION_0_39();
            [v547 v230];
            _Block_release(v228);
            _Block_release(v224);
            OUTLINED_FUNCTION_5();
            *(swift_allocObject() + 16) = v229;
            v231 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v232 = v229;
            OUTLINED_FUNCTION_26_12();
            v237 = sub_2745FB6C4(v233, v234, v235, v236);
            [v237 startAnimationAfterDelay_];

            OUTLINED_FUNCTION_5();
            *(swift_allocObject() + 16) = v232;
            v238 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v104 = v232;
            OUTLINED_FUNCTION_26_12();
            v243 = sub_2745FB6C4(v239, v240, v241, v242);
            [v243 startAnimationAfterDelay_];
          }

          v49 = v590;
          v97 = &v600;
        }

        else
        {
        }

        goto LABEL_113;
      }

      v131 = sub_27459FCC0(v94);
      v132 = sub_274599D28();
      v133 = v588;
      OUTLINED_FUNCTION_20_16();
      v134 = *(v4 + v133);
      if (*(v134 + 16) && (v135 = sub_274534DD8(v132), (v136 & 1) != 0))
      {
        v137 = *(*(v134 + 56) + 8 * v135);
        swift_endAccess();
        if (v137 == v131)
        {
LABEL_64:

          v99 = v99 + v131;
LABEL_116:
          v75 = v582;
          goto LABEL_117;
        }
      }

      else
      {
        swift_endAccess();
      }

      if (v578)
      {
        v138 = sub_274599D28();
        v139 = v588;
        OUTLINED_FUNCTION_20_16();
        sub_27452F200(v138, *(v4 + v139));
        OUTLINED_FUNCTION_39_8();
        v140 = OUTLINED_FUNCTION_54_3();
        if (!v302)
        {
          v140 = v141;
        }

        OUTLINED_FUNCTION_78(v140);
      }

      else
      {
        v139 = v588;
      }

      v142 = sub_274599D28();
      OUTLINED_FUNCTION_19_15();
      swift_isUniquelyReferenced_nonNull_native();
      v605 = *(v4 + v139);
      *(v4 + v139) = 0x8000000000000000;
      sub_2745FC098(v142, v131);
      *(v4 + v139) = v605;
      swift_endAccess();
      v97 = &v600;
      goto LABEL_64;
    }

    v107 = sub_274599D28();
    v108 = v588;
    OUTLINED_FUNCTION_20_16();
    *&v109 = COERCE_DOUBLE(sub_27452F200(v107, *&v108[v4]));
    if (v110)
    {
      *&v578 = v99;
      v111 = v64;
      swift_endAccess();
    }

    else
    {
      v143 = *&v109;
      swift_endAccess();
      OUTLINED_FUNCTION_57_3();
      MEMORY[0x28223BE20](v144);
      OUTLINED_FUNCTION_16_19();
      *(v145 - 16) = &v600;
      v108 = v597;
      sub_27446ECD4(sub_2745A8D58, v146, v572);
      OUTLINED_FUNCTION_87_0();
      if ((v147 & 1) == 0)
      {
        v178 = v64;
        v179 = v87;
        v87 = v100;
        [v104 bounds];
        v181 = v180;
        v578 = v182;
        [v4 contentSize];
        v184 = v183;
        [v4 adjustedContentInset];
        OUTLINED_FUNCTION_73_2();
        if (v573)
        {
          v100 = v185;
          v186 = v573;
          v187 = v104;
          v188 = OUTLINED_FUNCTION_46_6();

          if (v188)
          {
            v189 = v184 + v2 + v100;
            [v4 bounds];
            v100 = v87;
            v87 = v179;
            v64 = v178;
            v97 = &v600;
            if (CGRectGetHeight(v616) <= v189)
            {
              [v108 frame];
              OUTLINED_FUNCTION_51_4(v190, v191);
            }
          }

          else
          {
            OUTLINED_FUNCTION_63_3();
            v64 = v178;
            v97 = &v600;
          }
        }

        else
        {
          OUTLINED_FUNCTION_63_3();
          v64 = v178;
        }

        v123 = v143;
        if (v583)
        {
          OUTLINED_FUNCTION_100();
          v2 = v99 - (v100 + v244);
          OUTLINED_FUNCTION_19_15();
          sub_2745FB774(v104, v2);
          swift_endAccess();
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_96_0(v245, v246);
          v247 = *(v104 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView);
          [v247 frame];
          v97 = &v600;
          [v247 &STACK[0xB48]];
          OUTLINED_FUNCTION_12_1();
          v248 = swift_allocObject();
          *(v248 + 16) = v104;
          *(v248 + 24) = 0;
          *(v248 + 32) = v99;
          *(v248 + 40) = v181;
          *(v248 + 48) = *&v578;
          v249 = objc_allocWithZone(MEMORY[0x277D75D40]);
          v250 = v104;
          v251 = OUTLINED_FUNCTION_9_22();
          [v251 startAnimation];
        }

        else
        {
          v252 = OUTLINED_FUNCTION_60_3();
          [v252 v253];
        }

        goto LABEL_108;
      }

      *&v578 = v99;
      v111 = v64;
    }

    v148 = v87;
    v149 = v588;
    v87 = v100;
    if (v583)
    {
      OUTLINED_FUNCTION_5();
      *(swift_allocObject() + 16) = v104;
      v108 = objc_allocWithZone(MEMORY[0x277D75D40]);
      v150 = v104;
      v151 = OUTLINED_FUNCTION_9_22();
      [v151 startAnimation];
    }

    else
    {
      [v104 setNeedsLayout];
      [v104 layoutIfNeeded];
    }

    [v4 bounds];
    CGRectGetWidth(v614);
    [v104 sizeThatFits_];
    v154 = v153;
    v123 = v155;
    [v4 contentSize];
    v157 = v156;
    [v4 adjustedContentInset];
    OUTLINED_FUNCTION_73_2();
    if (v573 && (v100 = v158, v97 = v573, v159 = v104, v160 = OUTLINED_FUNCTION_46_6(), v97, v108, (v160 & 1) != 0))
    {
      v161 = v157 + v2 + v100;
      [v4 bounds];
      Height = CGRectGetHeight(v615);
      v100 = v87;
      v87 = v148;
      v64 = v111;
      v99 = *&v578;
      if (Height <= v161)
      {
        [v108 frame];
        OUTLINED_FUNCTION_51_4(v163, v164);
      }
    }

    else
    {
      OUTLINED_FUNCTION_63_3();
      v64 = v111;
      v99 = *&v578;
    }

    if (v583)
    {
      OUTLINED_FUNCTION_100();
      v166 = v99 - (v100 + v165);
      OUTLINED_FUNCTION_19_15();
      sub_2745FB774(v104, v166);
      swift_endAccess();
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_96_0(v167, v168);
      v169 = *(v104 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView);
      [v169 frame];
      [v169 v97 + 2424];
      OUTLINED_FUNCTION_12_1();
      v170 = swift_allocObject();
      *(v170 + 16) = v104;
      *(v170 + 24) = 0;
      *(v170 + 32) = v99;
      *(v170 + 40) = v154;
      *(v170 + 48) = v123;
      v171 = objc_allocWithZone(MEMORY[0x277D75D40]);
      LOBYTE(v108) = v171;
      v172 = v104;
      v173 = OUTLINED_FUNCTION_9_22();
      [v173 startAnimation];
    }

    else
    {
      v174 = OUTLINED_FUNCTION_60_3();
      [v174 v175];
    }

    v97 = &v600;
    v176 = COERCE_DOUBLE(sub_274599D28());
    OUTLINED_FUNCTION_20_16();
    sub_27452F200(*&v176, *(v4 + v149));
    OUTLINED_FUNCTION_39_8();
    if ((v108 & 1) != 0 || v123 != v176)
    {
      v177 = sub_274599D28();
      OUTLINED_FUNCTION_19_15();
      sub_2745FB78C(v177, v123);
      swift_endAccess();
    }

LABEL_108:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      LODWORD(v578) = 0;
      goto LABEL_115;
    }

    v203 = Strong;
    [v104 frame];
    v255 = &v203[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_dropTargetReferenceSize];
    *v255 = v256;
    *(v255 + 1) = v257;
    sub_27459C170();
    if (*(v104 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) == 2 && (v258 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v259 = v258;
      *&v578 = COERCE_DOUBLE(objc_opt_self());
      OUTLINED_FUNCTION_39();
      v260 = swift_allocObject();
      *(v260 + 16) = v259;
      *(v260 + 24) = v104;
      *&v600.tx = sub_2745A8A9C;
      *&v600.ty = v260;
      *&v600.a = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_29_12();
      v600.c = v261;
      *&v600.d = &block_descriptor_319;
      v569 = COERCE_DOUBLE(_Block_copy(&v600));
      v104 = v104;
      v262 = v259;

      *&v600.tx = CGSizeMake;
      v600.ty = 0.0;
      OUTLINED_FUNCTION_2_31();
      OUTLINED_FUNCTION_31_11();
      v600.c = v263;
      *&v600.d = &block_descriptor_322;
      v264 = _Block_copy(&v600);
      OUTLINED_FUNCTION_0_39();
      v265 = v569;
      [v578 v266];
      v267 = v264;
      v97 = &v600;
      _Block_release(v267);
      _Block_release(*&v265);
      sub_27459A504();

      LODWORD(v578) = 0;
      v203 = v262;
    }

    else
    {
      LODWORD(v578) = 0;
    }

LABEL_113:

LABEL_115:
    v99 = v99 + v123;
    v605 = v104;
    v602 = v94;
    v74 = v592;
    OUTLINED_FUNCTION_19_15();
    v268 = v104;
    sub_27463838C();
    swift_endAccess();
    OUTLINED_FUNCTION_19_15();

    sub_2745FB818();
    swift_endAccess();

    goto LABEL_116;
  }

  v100 = 0.0;
  v581 = MEMORY[0x277D84F90];
  if ((v583 & 1) == 0)
  {
    v583 = 0;
    goto LABEL_152;
  }

LABEL_123:
  v269 = v589;
  OUTLINED_FUNCTION_64_2();
  v270();
  v271 = sub_27463831C();
  v272 = v595 + 8;
  v585 = *(v595 + 8);
  (v585)(v269, v49);
  sub_274453594(v271);
  OUTLINED_FUNCTION_29_11();

  if (v75 < 1)
  {
    OUTLINED_FUNCTION_82();
    if (v100 != 0.0)
    {
LABEL_146:
      [v4 contentOffset];
      [v4 setContentOffset_];
      v304 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells;
      OUTLINED_FUNCTION_29_3();
      v305 = *(v4 + v304);
      if ((v305 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_27463C23C();
        sub_27463BA7C();
        v306 = v605;
        v75 = v606;
        v307 = v607;
        v74 = v608;
        v308 = v609;
      }

      else
      {
        v309 = -1 << *(v305 + 32);
        v75 = v305 + 56;
        v307 = ~v309;
        v310 = -v309;
        if (v310 < 64)
        {
          v311 = ~(-1 << v310);
        }

        else
        {
          v311 = -1;
        }

        v308 = v311 & *(v305 + 56);
        swift_bridgeObjectRetain_n();
        v74 = 0;
        v306 = v305;
      }

      v593 = v307;
      v49 = ((v307 + 64) >> 6);
      if ((v306 & 0x8000000000000000) == 0)
      {
        goto LABEL_162;
      }

LABEL_159:
      v312 = sub_27463C2BC();
      if (v312)
      {
        v601 = v312;
        swift_dynamicCast();
        a = v600.a;
        v314 = v74;
        v315 = v308;
        if (*&v600.a)
        {
          while (1)
          {
            [*&a frame];
            [*&a setFrame_];

            v74 = v314;
            v308 = v315;
            if ((v306 & 0x8000000000000000) != 0)
            {
              goto LABEL_159;
            }

LABEL_162:
            v316 = v74;
            v317 = v308;
            v314 = v74;
            if (!v308)
            {
              break;
            }

LABEL_166:
            v315 = (v317 - 1) & v317;
            a = COERCE_DOUBLE(*(*(v306 + 48) + ((v314 << 9) | (8 * __clz(__rbit64(v317))))));
            if (a == 0.0)
            {
              goto LABEL_169;
            }
          }

          while (1)
          {
            v314 = (v316 + 1);
            if (__OFADD__(v316, 1))
            {
              break;
            }

            if (v314 >= v49)
            {
              goto LABEL_169;
            }

            v317 = *(v75 + 8 * v314);
            ++v316;
            if (v317)
            {
              goto LABEL_166;
            }
          }

LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
          goto LABEL_325;
        }
      }

LABEL_169:
      sub_274406A24();

      v4 = v594;
      v318 = *(v594 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView);
      v85 = &selRef_dropTargetUpdated;
      [v318 frame];
      [v318 setFrame_];
      OUTLINED_FUNCTION_65_2();
      v69 = v567;
      goto LABEL_170;
    }

LABEL_152:
    OUTLINED_FUNCTION_29_3();
    if (*v69 == 0.0)
    {
LABEL_174:
      v324 = sub_274599B58();
      sub_274453594(v324);
      OUTLINED_FUNCTION_29_11();

      if (v75 < 0)
      {
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
        goto LABEL_330;
      }

      if (v75)
      {
        v325 = 0;
        v326 = 0.0;
        do
        {
          v327 = v325 + 1;
          v326 = v326 + sub_27459FCC0(v325);
          v325 = v327;
        }

        while (v75 != v327);
        v328 = v326 + 20.0;
        v49 = v590;
      }

      else
      {
        v328 = 20.0;
      }

      [v4 contentSize];
      if (v329 != v328)
      {
        [v4 contentSize];
        if (v328 >= v330)
        {
          [v4 contentSize];
          [v4 setContentSize_];
        }

        else
        {
          OUTLINED_FUNCTION_39();
          v331 = swift_allocObject();
          *(v331 + 16) = v4;
          *(v331 + 24) = v328;
          v332 = objc_allocWithZone(MEMORY[0x277D75D40]);
          v333 = v4;
          v334 = OUTLINED_FUNCTION_9_22();
          [v334 startAnimation];
        }
      }

      v335 = v589;
      v336 = v596;
      (v596)(v589, &v74[v4], v49);
      v337 = sub_274595B98();
      v338 = v595 + 8;
      v339 = *(v595 + 8);
      (v339)(v335, v49);
      if (v337 < 1)
      {
        v340 = 1;
      }

      else
      {
        v340 = v583;
      }

      v593 = v339;
      v595 = v338;
      if ((v340 & 1) == 0)
      {
        (v336)(v335, &v74[v4], v49);
        v341 = v571;
        v336();
        v342 = *(v565 + 36);
        sub_27440CA78(&qword_280952A90, &unk_2809525E0);
        sub_27463BACC();
        v343 = v335;
        v344 = v341;
        (v593)(v343, v49);
        v588 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_queuedCells;
        while (1)
        {
          sub_27463BB0C();
          if (*(v344 + v342) == *&v600.a)
          {
            break;
          }

          v345 = sub_27463BB3C();
          v49 = *v346;
          v347 = *(v346 + 8);
          v348 = OUTLINED_FUNCTION_55_2();
          v345(v348);
          sub_27463BB1C();
          v349 = v347;
          [v349 v85[52]];
          if (CGRectGetMaxY(v617) >= v64 && ([v349 v85[52]], v87 >= CGRectGetMinY(v618)) || v349[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState])
          {
          }

          else
          {
            v350 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem;
            if (*&v349[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem])
            {

              sub_27463B25C();
            }

            *&v349[v350] = 0;

            [*&v349[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView] removeFromSuperview];
            [v349 removeFromSuperview];
            swift_unknownObjectWeakAssign();
            v352 = *&v349[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_reuseIdentifier];
            v351 = *&v349[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_reuseIdentifier + 8];
            OUTLINED_FUNCTION_30_1();

            v354 = sub_274595C44(&v600, v352, v351);
            if (*v353)
            {
              v355 = v353;
              v356 = v349;
              MEMORY[0x277C57F30]();
              v357 = *((*v355 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((*v355 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v357 >> 1)
              {
                OUTLINED_FUNCTION_0_8(v357);
                sub_27463B85C();
              }

              sub_27463B8AC();
              v358 = OUTLINED_FUNCTION_55_2();
              v354(v358);
              swift_endAccess();
              v344 = v571;
            }

            else
            {
              v359 = OUTLINED_FUNCTION_55_2();
              v354(v359);
              swift_endAccess();
            }

            v598 = v49;
            v49 = v594;
            OUTLINED_FUNCTION_19_15();
            sub_27463830C();
            swift_endAccess();

            OUTLINED_FUNCTION_19_15();

            v360 = sub_2745A7E4C();
            swift_endAccess();

            v349 = v360;
            v85 = &selRef_dropTargetUpdated;
          }

          OUTLINED_FUNCTION_65_2();
        }

        sub_27440CB1C(v344, &qword_280952A80);
      }

      v361 = v570;
      v584 = sub_27463831C();
      v362 = sub_274453594(v584);
      if (v362 < 0)
      {
        goto LABEL_328;
      }

      if (v362)
      {
        v363 = 0;
        v588 = v584 & 0xC000000000000001;
        v364 = (v584 + 32);
        v571 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells;
        v577 = &v600.c;
        v578 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems;
        v569 = *MEMORY[0x277CDA328];
        v567 = *MEMORY[0x277CDA4F0];
        p_c = *MEMORY[0x277CDA4C8];
        v565 = *MEMORY[0x277CDA4A0];
        v564 = *MEMORY[0x277CDA4E8];
        v563 = *MEMORY[0x277CDA4B8];
        v562 = xmmword_274648570;
        v561 = 0x3FD3333333333333;
        v585 = v362;
        do
        {
          if (v588)
          {
            v365 = MEMORY[0x277C58B20](v363, v584);
          }

          else
          {
            v365 = *v364;
          }

          v366 = v365;
          v367 = OUTLINED_FUNCTION_36_7();
          v368(v367);
          OUTLINED_FUNCTION_68_3();
          sub_27463831C();
          v369 = OUTLINED_FUNCTION_23_14();
          v370 = (v593)(v369);
          *&v600.a = v366;
          MEMORY[0x28223BE20](v370);
          OUTLINED_FUNCTION_16_19();
          *(v371 - 16) = &v600;
          v373 = sub_27446ECA4(sub_2745A894C, v372, v361);
          OUTLINED_FUNCTION_98_0();
          if (v373)
          {
            v49 = v590;
          }

          else
          {
            v374 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem;
            if (*&v366[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem])
            {

              sub_27463B25C();
            }

            *&v366[v374] = 0;

            v375 = [*&v366[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView] removeFromSuperview];
            if (!v583)
            {
              v49 = v590;
LABEL_222:
              v361 = v585;
              [v366 removeFromSuperview];
              goto LABEL_223;
            }

            v49 = &v546;
            v600.a = *&v366[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item];
            MEMORY[0x28223BE20](v375);
            OUTLINED_FUNCTION_58_3();
            *(v376 - 16) = &v600;

            OUTLINED_FUNCTION_45_5();
            v378 = v377;
            OUTLINED_FUNCTION_98_0();

            if ((v378 & 1) == 0)
            {
              OUTLINED_FUNCTION_65_2();
              goto LABEL_222;
            }

            v49 = v590;
            if (v363)
            {
              v379 = v588;
              v380 = v584;
              sub_2744535A4(v363 - 1, v588 == 0);
              if (v379)
              {
                v381 = MEMORY[0x277C58B20](v363 - 1, v380);
              }

              else
              {
                v381 = *(v364 - 1);
              }

              v382 = v381;
            }

            else
            {
              v382 = 0;
              v380 = v584;
            }

            v383 = sub_27455C158(v380);
            if (v383)
            {
              v384 = v383;
              v385 = v366;
              LODWORD(v576) = OUTLINED_FUNCTION_46_6();
            }

            else
            {
              LODWORD(v576) = 0;
            }

            OUTLINED_FUNCTION_19_15();
            v386 = v366;
            sub_274521DE8(v599, v386);
            swift_endAccess();

            v387 = v386;
            v388 = [v387 superview];
            [v388 sendSubviewToBack_];

            v387[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_suppressLayout] = 1;
            v574 = v382;
            if (v382)
            {
              v389 = v382;
              v390 = [v389 layer];
              v391 = [v390 presentationLayer];

              v392 = 0.0;
              if (v391)
              {
                [v391 frame];
                v394 = v393;
                v396 = v395;
                v398 = v397;
                v400 = v399;

                v619.origin.x = v394;
                v619.origin.y = v396;
                v619.size.width = v398;
                v619.size.height = v400;
                CGRectGetMaxY(v619);
              }

              [v387 frame];
              [v387 setFrame_];
              [v389 frame];
              MinY = CGRectGetMinY(v620);
              v402 = [v389 layer];

              v403 = [v402 presentationLayer];
              if (v403)
              {
                [v403 frame];
                v405 = v404;
                v407 = v406;
                v409 = v408;
                v411 = v410;

                v621.origin.x = v405;
                v621.origin.y = v407;
                v621.size.width = v409;
                v621.size.height = v411;
                v392 = CGRectGetMinY(v621);
              }

              v412 = swift_allocObject();
              v413 = OUTLINED_FUNCTION_90_0(v412);
              *(v413 + 24) = MinY - v392;
              *(v413 + 32) = v576 & 1;
              v414 = objc_allocWithZone(MEMORY[0x277D75D40]);
              v415 = v387;
              v416 = OUTLINED_FUNCTION_9_22();
              [v416 startAnimation];
            }

            v417 = sub_274412734(0, &qword_2809525F0);
            sub_27463B6AC();
            v418 = sub_274595918();
            v419 = sub_27463BAAC();
            [v418 setValue:v419 forKey:v567];

            sub_27463B95C();
            v420 = OUTLINED_FUNCTION_18_13();
            [v420 v421];

            sub_27463B95C();
            v422 = OUTLINED_FUNCTION_18_13();
            [v422 v423];

            sub_27463B66C();
            v424 = OUTLINED_FUNCTION_18_13();
            [v424 v425];

            sub_27463B66C();
            v426 = OUTLINED_FUNCTION_18_13();
            [v426 v427];

            v428 = [v387 layer];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40);
            OUTLINED_FUNCTION_8_4();
            v429 = swift_allocObject();
            *(v429 + 16) = v562;
            *(v429 + 56) = v417;
            *(v429 + 32) = v418;
            v576 = v418;
            sub_2745A85DC(v429, v428, &selRef_setFilters_);

            v430 = objc_opt_self();
            sub_27459AD34();
            OUTLINED_FUNCTION_5();
            v431 = swift_allocObject();
            *(v431 + 16) = v387;
            *&v600.tx = sub_2745A89C8;
            *&v600.ty = v431;
            OUTLINED_FUNCTION_2_31();
            *&v600.b = 1107296256;
            *&v600.c = sub_27443E0E8;
            *&v600.d = &block_descriptor_265;
            v432 = _Block_copy(&v600);
            v433 = v387;

            *&v600.tx = CGSizeMake;
            v600.ty = 0.0;
            OUTLINED_FUNCTION_2_31();
            *&v600.b = 1107296256;
            *&v600.c = sub_27456009C;
            *&v600.d = &block_descriptor_268;
            v434 = _Block_copy(&v600);
            OUTLINED_FUNCTION_0_39();
            [v430 v435];
            _Block_release(v434);
            _Block_release(v432);
            v436 = sub_27459AD34() + 0.25;
            OUTLINED_FUNCTION_5();
            v437 = swift_allocObject();
            *(v437 + 16) = v433;
            v438 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v439 = v433;
            v440 = OUTLINED_FUNCTION_32_10();
            v442 = sub_2745FB6C4(v440, v437, v436, v441);
            [v442 startAnimation];

            v443 = sub_27459AD34() + 0.15;
            OUTLINED_FUNCTION_5();
            v444 = swift_allocObject();
            *(v444 + 16) = v439;
            v445 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v446 = v439;
            v447 = OUTLINED_FUNCTION_32_10();
            v449 = sub_2745FB6C4(v447, v444, v443, v448);
            OUTLINED_FUNCTION_39();
            v450 = swift_allocObject();
            v451 = v594;
            *(v450 + 16) = v446;
            *(v450 + 24) = v451;
            *&v600.tx = sub_2745A89F4;
            *&v600.ty = v450;
            OUTLINED_FUNCTION_2_31();
            *&v600.b = 1107296256;
            *&v600.c = sub_2745F3724;
            *&v600.d = &block_descriptor_280;
            v452 = _Block_copy(&v600);
            v453 = v451;
            v366 = v446;

            [v449 addCompletion_];
            _Block_release(v452);
            [v449 startAnimationAfterDelay_];
            v454 = v574;
            if (v574)
            {
              v455 = *&v574[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView];
              [v455 setAlpha_];

              v366 = v455;
            }

            else
            {
            }
          }

          v361 = v585;
LABEL_223:
          ++v363;

          ++v364;
        }

        while (v361 != v363);
      }

      v456 = v594;
      v457 = v589;
      v458 = OUTLINED_FUNCTION_42_7();
      (v596)(v458);
      OUTLINED_FUNCTION_68_3();
      sub_27463831C();
      v459 = OUTLINED_FUNCTION_23_14();
      v460 = v593;
      (v593)(v459);
      sub_274453594(v361);
      OUTLINED_FUNCTION_29_11();

      v461 = v457 - 1;
      if (__OFSUB__(v457, 1))
      {
        goto LABEL_329;
      }

      if (v461 >= 1)
      {
        v462 = 0;
        v589 = v461 & ~(v461 >> 63);
        v585 = &v600.c;
        v580 = (v553 + 8);
        *&v578 = 0.22;
        v588 = v461;
        while (1)
        {
          if (v589 == v462)
          {
            goto LABEL_318;
          }

          v463 = v587;
          OUTLINED_FUNCTION_64_2();
          v464();
          sub_27463831C();
          v465 = OUTLINED_FUNCTION_69_2();
          (v460)(v465, v49);
          if ((v463 & 0xC000000000000001) != 0)
          {
            v466 = MEMORY[0x277C58B20](v462, v463);
          }

          else
          {
            if (v462 >= *((v463 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_319;
            }

            v466 = *(v463 + 8 * v462 + 32);
          }

          v467 = v466;
          v468 = v462 + 1;

          v469 = v586;
          OUTLINED_FUNCTION_64_2();
          v470();
          sub_27463831C();
          v471 = OUTLINED_FUNCTION_69_2();
          (v593)(v471, v49);
          if ((v469 & 0xC000000000000001) != 0)
          {
            v472 = MEMORY[0x277C58B20](v462 + 1, v469);
          }

          else
          {
            if (v468 >= *((v469 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_320;
            }

            v472 = *(v469 + 8 * v462 + 40);
          }

          v473 = v472;

          if (*(*&v467[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item] + 24) != 1 || v467[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] == 1 || v473[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] == 1)
          {
            v474 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem;
            if (*&v467[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem])
            {

              sub_27463B25C();
            }

            *&v467[v474] = 0;

            OUTLINED_FUNCTION_5();
            v475 = swift_allocObject();
            OUTLINED_FUNCTION_90_0(v475);
            v476 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v477 = v467;
            OUTLINED_FUNCTION_32_10();
            OUTLINED_FUNCTION_26_12();
            v361 = sub_2745FB6C4(v478, v479, v480, v481);
            OUTLINED_FUNCTION_5();
            v482 = swift_allocObject();
            *(v482 + 16) = v477;
            *&v600.tx = sub_2745A8988;
            *&v600.ty = v482;
            *&v600.a = MEMORY[0x277D85DD0];
            *&v600.b = 1107296256;
            *&v600.c = sub_2745F3724;
            *&v600.d = &block_descriptor_245;
            v483 = _Block_copy(&v600);
            v484 = v477;

            v485 = OUTLINED_FUNCTION_92_0();
            [v485 v486];
            _Block_release(v483);
            [v361 startAnimation];

            goto LABEL_256;
          }

          v488 = sub_274442C1C(v487);

          if (v488)
          {
            v489 = sub_274599D28();
            sub_274599D28();
            OUTLINED_FUNCTION_69_2();

            if (v489 == v488)
            {
              [v467 frame];
              v491 = v490 == 0.0;
            }

            else
            {
              v491 = 0;
            }
          }

          else
          {

            v491 = 0;
          }

          [v456 bounds];
          CGRectGetWidth(v622);
          [*&v473[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView] frame];
          CGRectGetMinX(v623);
          v492 = [v456 traitCollection];
          [v492 displayScale];

          BSFloatRoundForScale();
          v494 = v493;
          [v467 frame];
          v495 = CGRectGetMaxY(v624) + -2.0;
          v496 = v491 ? v495 + -4.0 : v495;
          v497 = v491 ? 18.0 : 14.0;
          v498 = v456;
          v499 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView;
          v500 = [*&v467[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView] superview];
          if (v500)
          {
          }

          else
          {
            [v498 insertSubview:*&v467[v499] atIndex:0];
          }

          v501 = *&v467[v499];
          v502 = v491;
          v361 = v501;
          sub_27459D734(v502);

          v503 = *&v467[v499];
          if (v583)
          {
            [v503 alpha];
            if (v504 == 1.0)
            {
              OUTLINED_FUNCTION_12_1();
              v505 = swift_allocObject();
              v506 = OUTLINED_FUNCTION_90_0(v505);
              *(v506 + 24) = v494;
              *(v506 + 32) = v496;
              *(v506 + 40) = 0x4000000000000000;
              *(v506 + 48) = v497;
              v507 = objc_allocWithZone(MEMORY[0x277D75D40]);
              v508 = v467;
            }

            else
            {
              OUTLINED_FUNCTION_94(*&v467[v499], sel_setFrame_);
              OUTLINED_FUNCTION_20_16();
              sub_27452F218(v467, v603);
              OUTLINED_FUNCTION_39_8();
              v509 = OUTLINED_FUNCTION_54_3();
              v511 = v302 ? v509 : v510;
              v512 = *&v467[v499];
              [v512 frame];
              [v512 setFrame_];

              OUTLINED_FUNCTION_39();
              v513 = swift_allocObject();
              *(OUTLINED_FUNCTION_90_0(v513) + 24) = v511;
              v514 = objc_allocWithZone(MEMORY[0x277D75D40]);
              v515 = v467;
            }

            OUTLINED_FUNCTION_26_12();
            v361 = sub_2745FB6C4(v516, v517, v518, v519);
            [v361 startAnimation];
          }

          else
          {
            OUTLINED_FUNCTION_94(v503, sel_setFrame_);
          }

          [*&v467[v499] alpha];
          if (v520 == 1.0)
          {
            break;
          }

          OUTLINED_FUNCTION_57_3();
          MEMORY[0x28223BE20](v521);
          OUTLINED_FUNCTION_16_19();
          *(v522 - 16) = &v600;
          sub_27446ECA4(sub_2745A8D3C, v523, v581);
          OUTLINED_FUNCTION_87_0();
          if (!(v583 & 1 | ((v524 & 1) == 0)))
          {
            v361 = *&v467[v499];
            [v361 setAlpha_];

            goto LABEL_287;
          }

          OUTLINED_FUNCTION_5();
          v525 = swift_allocObject();
          *(v525 + 16) = v467;
          *&v600.tx = sub_2745A8990;
          *&v600.ty = v525;
          *&v600.a = MEMORY[0x277D85DD0];
          *&v600.b = 1107296256;
          *&v600.c = sub_27443E0E8;
          *&v600.d = &block_descriptor_252;
          _Block_copy(&v600);
          v526 = v467;
          sub_27459EF48();
          sub_27463B26C();
          swift_allocObject();
          v527 = sub_27463B24C();

          v528 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem;
          v577 = v526;
          *(v526 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem) = v527;

          v361 = sub_27463BCEC();
          v529 = v559;
          sub_27463B22C();
          v530 = v558;
          sub_27463B28C();
          v531 = *v580;
          v532 = v552;
          (*v580)(v529, v552);
          if (!*(v577 + v528))
          {
            goto LABEL_332;
          }

          v533 = v577;

          sub_27463BCCC();

          v531(v530, v532);
          v456 = v594;
          v49 = v590;
LABEL_256:
          v462 = v468;
          v460 = v593;
          if (v588 == v468)
          {
            goto LABEL_290;
          }
        }

LABEL_287:
        v456 = v594;
        goto LABEL_256;
      }

LABEL_290:

      if (sub_27459ACB0())
      {
        v534 = OUTLINED_FUNCTION_42_7();
        (v596)(v534);
        OUTLINED_FUNCTION_68_3();
        sub_27463831C();
        v535 = OUTLINED_FUNCTION_23_14();
        (v460)(v535);
        v536 = sub_274453594(v361);
        for (i = 0; v536 != i; ++i)
        {
          if ((v361 & 0xC000000000000001) != 0)
          {
            v538 = MEMORY[0x277C58B20](i, v361);
          }

          else
          {
            if (i >= *((v361 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_322;
            }

            v538 = *(v361 + 8 * i + 32);
          }

          v539 = v538;
          if (__OFADD__(i, 1))
          {
            goto LABEL_321;
          }

          [v538 setAlpha_];
        }
      }

      if (v568)
      {

        sub_2745995F0(v540);
      }

      v541 = sub_274599B58();
      *&v600.a = MEMORY[0x277D84F90];
      v542 = sub_274453594(v541);
      for (j = 0; ; ++j)
      {
        if (v542 == j)
        {

          v545 = v594;
          *(v594 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems) = *&v600.a;

          sub_27459C880();
          swift_unknownObjectRelease();

          (v460)(v570, v590);

          *(v545 + v554) = 0;
          goto LABEL_314;
        }

        if ((v541 & 0xC000000000000001) != 0)
        {
          v544 = MEMORY[0x277C58B20](j, v541);
        }

        else
        {
          if (j >= *((v541 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_316;
          }

          v544 = *(v541 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          break;
        }

        if (*(v544 + 25))
        {
        }

        else
        {
          sub_27463C41C();
          sub_27463C46C();
          sub_27463C47C();
          sub_27463C42C();
        }
      }

      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
      goto LABEL_323;
    }

LABEL_170:
    OUTLINED_FUNCTION_29_3();
    if (*v69 != 0.0)
    {
      if (v583)
      {
        OUTLINED_FUNCTION_39();
        v319 = swift_allocObject();
        v320 = v555;
        *(v319 + 16) = v4;
        *(v319 + 24) = v320;
        v75 = objc_allocWithZone(MEMORY[0x277D75D40]);
        v321 = v4;

        v322 = OUTLINED_FUNCTION_9_22();
        [v322 startAnimation];

        OUTLINED_FUNCTION_82();
      }

      else
      {
        [v4 contentOffset];
        [v4 setContentOffset_];
        v323 = *(v4 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView);
        [v323 v85[52]];
        [v323 setFrame_];
        v583 = 0;
      }
    }

    goto LABEL_174;
  }

  OUTLINED_FUNCTION_64_2();
  v273();
  v274 = v269;
  v75 = sub_27463831C();
  v275 = v585;
  (v585)(v269, v49);
  sub_274453594(v75);
  OUTLINED_FUNCTION_13_5();

  if (!__OFSUB__(v269, 1))
  {
    if (((v269 - 1) & 0x8000000000000000) != 0)
    {
      goto LABEL_331;
    }

    if (v269 == 1)
    {
      OUTLINED_FUNCTION_82();
      goto LABEL_149;
    }

    v276 = 0;
    v593 = v269 - 2;
    v588 = v272;
    do
    {
      v277 = OUTLINED_FUNCTION_36_7();
      v278(v277);
      OUTLINED_FUNCTION_68_3();
      sub_27463831C();
      v279 = OUTLINED_FUNCTION_23_14();
      v275(v279);
      sub_2744535A4(v276, (v274 & 0xC000000000000001) == 0);
      if ((v274 & 0xC000000000000001) != 0)
      {
        v280 = MEMORY[0x277C58B20](v276, v274);
      }

      else
      {
        v280 = *(v274 + 8 * v276 + 32);
      }

      v281 = v280;

      v282 = OUTLINED_FUNCTION_36_7();
      v283(v282);
      OUTLINED_FUNCTION_68_3();
      sub_27463831C();
      v284 = OUTLINED_FUNCTION_23_14();
      v275(v284);
      sub_2744535A4(v276 + 1, (v274 & 0xC000000000000001) == 0);
      if ((v274 & 0xC000000000000001) != 0)
      {
        v285 = MEMORY[0x277C58B20](v276 + 1, v274);
      }

      else
      {
        v285 = *(v274 + 8 * v276 + 40);
      }

      v286 = v285;

      v274 = &v546;
      *&v600.a = v286;
      MEMORY[0x28223BE20](v287);
      OUTLINED_FUNCTION_16_19();
      *(v288 - 16) = &v600;
      v75 = v597;
      sub_27446ECA4(sub_2745A8D3C, v289, v581);
      OUTLINED_FUNCTION_87_0();
      if (v290)
      {
        OUTLINED_FUNCTION_20_16();
        v291 = v603;
        v292 = 0.0;
        if (*(v603 + 16))
        {
          v293 = sub_274534E1C();
          if (v294)
          {
            v292 = *(*(v291 + 56) + 8 * v293);
          }
        }

        swift_endAccess();
        v295 = v286;
        [v295 frame];
        [v295 setFrame_];

        OUTLINED_FUNCTION_39();
        v296 = swift_allocObject();
        *(v296 + 16) = v295;
        *(v296 + 24) = v292;
        v297 = objc_allocWithZone(MEMORY[0x277D75D40]);
        v298 = v295;
        v299 = OUTLINED_FUNCTION_32_10();
        v301 = sub_2745FB6C4(v299, v296, v579, v300);
        [v301 startAnimation];

        OUTLINED_FUNCTION_19_15();
        v75 = v298;
        v274 = &v603;
        sub_2745FB774(v75, v292);
        swift_endAccess();

        v74 = v592;
        v302 = v593 == v276++;
      }

      else
      {

        v74 = v592;
        v302 = v593 == v276++;
      }
    }

    while (!v302);
    OUTLINED_FUNCTION_82();
    v303 = v100 == 0.0;
    v4 = v594;
LABEL_150:
    v85 = &selRef_dropTargetUpdated;
    v69 = v567;
    if (!v303)
    {
      goto LABEL_146;
    }

    goto LABEL_152;
  }

LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
}

void sub_2745995F0(uint64_t a1)
{
  v2 = v1;
  [v1 adjustedContentInset];
  v5 = v4 + 6.0;
  [v1 adjustedContentInset];
  v7 = v6 + 14.0;
  [v1 contentOffset];
  v9 = v5 + v8;
  [v1 contentOffset];
  v11 = v10;
  [v1 bounds];
  v13 = v11 + v12 - v7;
  v14 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
  OUTLINED_FUNCTION_44_5();
  v15 = sub_27452F0D0(a1, *&v1[v14]);
  if (v15)
  {
    v16 = v15;
    swift_endAccess();
    OUTLINED_FUNCTION_42_5();
    if (v9 < CGRectGetMinY(v76))
    {
      OUTLINED_FUNCTION_42_5();
      if (CGRectGetMaxY(v77) < v13)
      {
        v17 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession;
        v18 = *&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession];
        if (v18)
        {
          v19 = v18;
          v20 = sub_27459C45C();
          [v20 invalidate];

          v16 = v20;
        }

        v21 = *&v2[v17];
        *&v2[v17] = 0;

        return;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_274599B58();
  OUTLINED_FUNCTION_13_5();
  sub_2744B2A84();
  v23 = v22;
  v25 = v24;

  if (v25)
  {
    return;
  }

  OUTLINED_FUNCTION_44_5();
  v26 = sub_27452F0D0(a1, *&v1[v14]);
  if (v26)
  {
    v27 = v26;
    swift_endAccess();
    OUTLINED_FUNCTION_42_5();
    v29 = v28;
    OUTLINED_FUNCTION_42_5();
    MinY = CGRectGetMinY(v78);
    v31 = MinY;
    if (v13 - v9 >= v29)
    {
      OUTLINED_FUNCTION_42_5();
      if (v31 >= v9)
      {
        if (v13 >= CGRectGetMaxY(*&v61))
        {
LABEL_36:

          return;
        }

        OUTLINED_FUNCTION_42_5();
        MaxY = CGRectGetMaxY(v79);
        [v1 bounds];
        v32 = MaxY - (CGRectGetHeight(v80) - v7);
      }

      else
      {
        v32 = CGRectGetMinY(*&v61) - v5;
      }
    }

    else
    {
      v32 = MinY - v5;
    }

    OUTLINED_FUNCTION_39();
    v66 = swift_allocObject();
    *(v66 + 16) = v1;
    *(v66 + 24) = v32;
    v67 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v68 = v1;
    OUTLINED_FUNCTION_26_12();
    v73 = sub_2745FB6C4(v69, v70, v71, v72);
    [v73 startAnimation];

    goto LABEL_36;
  }

  swift_endAccess();
  if (v23 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v74 = a1;
  v75 = MEMORY[0x277D84F90];
  sub_2744512CC(0, v33 & ~(v33 >> 63), 0);
  if (v33 < 0)
  {
    goto LABEL_42;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  do
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v36)
    {
      goto LABEL_43;
    }

    v38 = sub_27459FCC0(v35);
    v40 = *(v75 + 16);
    v39 = *(v75 + 24);
    if (v40 >= v39 >> 1)
    {
      v42 = OUTLINED_FUNCTION_0_8(v39);
      sub_2744512CC(v42, v40 + 1, 1);
    }

    *(v75 + 16) = v40 + 1;
    *(v75 + 8 * v40 + 32) = v38;
    v36 = v35 == v23;
    if (v35 == v23)
    {
      v35 = 0;
    }

    else if (__OFADD__(v35++, 1))
    {
      goto LABEL_39;
    }

    ++v34;
  }

  while (v37 != v33);
  v43 = v40 + 1;
  v44 = 0.0;
  v45 = 32;
  do
  {
    v44 = v44 + *(v75 + v45);
    v45 += 8;
    --v43;
  }

  while (v43);

  [v1 contentOffset];
  v47 = dbl_27465C1C0[v44 < v46];
  v48 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession;
  v49 = *&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession];
  if (v49)
  {
    v50 = v49;
    v51 = sub_27459C45C();
    [v51 invalidate];

    v49 = *&v2[v48];
  }

  *&v2[v48] = 0;

  v52 = objc_allocWithZone(type metadata accessor for WFEditorDragAutoscrollSession());
  v53 = sub_27459C584(v2, v47);
  v54 = *&v2[v48];
  *&v2[v48] = v53;

  v55 = *&v2[v48];
  if (v55)
  {
    OUTLINED_FUNCTION_5();
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_8_4();
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v74;
    *(v57 + 32) = v13;
    *(v57 + 40) = v9;
    *(v57 + 48) = v5;
    *(v57 + 56) = v7;
    v58 = &v55[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler];
    v59 = *&v55[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler];
    *v58 = sub_2745A8B2C;
    v58[1] = v57;
    v60 = v55;

    sub_274406A94(v59);
  }
}

uint64_t sub_274599AE0()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274599B58()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
  OUTLINED_FUNCTION_29_3();
  v2 = *&v1[v0];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_274599BF8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_1();
  v4 = sub_274595C44(v9, a1, a2);
  if (*v5)
  {
    v6 = sub_2745A0C64();
    (v4)(v9, 0);
    v7 = swift_endAccess();
    (*((*MEMORY[0x277D85000] & *v6) + 0x160))(v7);
  }

  else
  {
    (v4)(v9, 0);
    swift_endAccess();
    return 0;
  }

  return v6;
}

uint64_t WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(char a1, char a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 25) = 0;
  *(v3 + 26) = a1;
  *(v3 + 27) = a2;
  *(v3 + 24) = a3;
  return v3;
}

uint64_t sub_274599D28()
{
  sub_27463C74C();
  (*(*v0 + 200))(v2);
  return sub_27463C7AC();
}

void *sub_274599D88()
{
  OUTLINED_FUNCTION_71_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView) = 0;
  OUTLINED_FUNCTION_4_6();
  v9 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView;
  type metadata accessor for WFEditorConnectorView();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_suppressLayout) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) = 0;
  OUTLINED_FUNCTION_4_6();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_converterViewRemovalWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item) = v6;
  v10 = (v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_reuseIdentifier);
  *v10 = v4;
  v10[1] = v2;
  type metadata accessor for WFEditorCell();

  v11 = OUTLINED_FUNCTION_7_16();
  v14 = objc_msgSendSuper2(v12, v13, v11);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor_];

  v18 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView;
  [v16 addSubview_];
  v19 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView;
  [*(v16 + v18) addSubview_];
  v20 = *(v16 + v19);
  v21 = objc_allocWithZone(MEMORY[0x277D75348]);
  v22 = v20;
  v23 = sub_27451A6B0(sub_2745A8D34, 0);
  [v22 setBackgroundColor_];

  v24 = [*(v16 + v19) layer];
  [v24 setMasksToBounds_];

  if (*(v6 + 26) == 1)
  {
    v25 = OUTLINED_FUNCTION_56_1();
    LODWORD(v26) = 1032805417;
    [v25 setShadowOpacity_];

    v27 = OUTLINED_FUNCTION_56_1();
    [v27 setShadowRadius_];

    v28 = OUTLINED_FUNCTION_56_1();
    [v28 setShadowOffset_];

    v29 = OUTLINED_FUNCTION_56_1();
    [v29 setShadowPathIsBounds_];

    v30 = OUTLINED_FUNCTION_56_1();
    [v30 setPunchoutShadow_];
  }

  if (*(v6 + 27) == 1)
  {
    v31 = OUTLINED_FUNCTION_56_1();
    [v31 setRimWidth_];

    v32 = OUTLINED_FUNCTION_56_1();
    LODWORD(v33) = 1036831949;
    [v32 setRimOpacity_];

    v34 = OUTLINED_FUNCTION_56_1();
    v35 = [v15 labelColor];
    v36 = [v35 CGColor];

    [v34 setRimColor_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809512E0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_274648570;
    v38 = sub_274638DBC();
    v39 = MEMORY[0x277D74BF0];
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = ObjectType;
    sub_27463BF0C();
    swift_unknownObjectRelease();
  }

  v40 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_40_7();
  v41 = sub_27463B66C();
  v42 = [v40 BOOLForKey_];

  if (v42)
  {
    sub_274638B2C();
    v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v44 = [v43 layer];
    v45 = [*(v16 + v19) layer];
    [v45 cornerRadius];
    v47 = v46;

    [v44 setCornerRadius_];
    [v43 setAlpha_];
    [v43 setUserInteractionEnabled_];

    [*(v16 + v19) addSubview_];
    v48 = *(v16 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView);
    *(v16 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView) = v43;
  }

  v49 = [*(v16 + v19) layer];
  v50 = *MEMORY[0x277CDA138];
  [v49 setCornerCurve_];

  v51 = OUTLINED_FUNCTION_56_1();
  [v51 setCornerCurve_];

  v52 = [*(v16 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView) setAlpha_];
  (*((*MEMORY[0x277D85000] & *v16) + 0x168))(v52);

  return v16;
}

id sub_27459A414()
{
  [*&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView] setAlpha_];

  return [v0 _removeAllRetargetableAnimations_];
}

uint64_t sub_27459A464(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item) = a1;

  (*((*MEMORY[0x277D85000] & *v1) + 0x168))(v2);
}

uint64_t sub_27459A504()
{
  v1 = v0;
  v2 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  sub_27463B1EC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v33 = v4;
    v34 = v2;
    v32 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_converterViewRemovalWorkItem;
    if (*&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_converterViewRemovalWorkItem])
    {

      sub_27463B25C();
    }

    OUTLINED_FUNCTION_39();
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    *(v18 + 24) = v17;
    aBlock[4] = sub_2745A8C70;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_7_19();
    aBlock[2] = v19;
    aBlock[3] = &block_descriptor_499;
    v30 = _Block_copy(aBlock);
    v35 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_33();
    sub_2745A8678(v20, 255, v21);
    v22 = v1;
    v31 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    OUTLINED_FUNCTION_19_5();
    sub_27440CA78(v23, v24);
    sub_27463C1EC();
    sub_27463B26C();
    swift_allocObject();
    v25 = sub_27463B24C();

    sub_274412734(0, &qword_28094AF90);
    v26 = sub_27463BCEC();
    sub_27463B22C();
    sub_27463B28C();
    v27 = *(v33 + 8);
    v28 = v8;
    v29 = v34;
    v27(v28, v34);
    sub_27459AD34();
    sub_27463B28C();
    v27(v11, v29);
    sub_27463BCCC();

    v27(v14, v29);
    *&v1[v32] = v25;
  }

  return result;
}

id sub_27459A888(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_6();
  swift_unknownObjectWeakAssign();
  v19 = &v9[OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_floatingViewOutsets];
  *v19 = a6;
  v19[1] = a7;
  v19[2] = a8;
  v19[3] = a9;
  v20 = &v9[OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_itemProvider];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = &v9[OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_dragDidBeginHandler];
  *v21 = a4;
  *(v21 + 1) = a5;
  v24.receiver = v9;
  v24.super_class = type metadata accessor for WFEditorDragInteraction();
  v22 = objc_msgSendSuper2(&v24, sel_init);

  return v22;
}

void sub_27459A9BC(void *a1)
{
  OUTLINED_FUNCTION_35_6();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_27459AA14(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_view;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_30_1();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_27459AA90;
}

void sub_27459AA90(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_27459AB0C()
{
  OUTLINED_FUNCTION_35_6();
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t WFEditorItem.__allocating_init(drawsShadow:drawsRim:showsConnector:)(char a1, char a2, char a3)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 25) = 0;
  *(result + 26) = a1;
  *(result + 27) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t sub_27459AC2C()
{
  sub_27463C74C();
  (*(**v0 + 200))(v2);
  return sub_27463C7AC();
}

id sub_27459ACB0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_40_7();
  v1 = sub_27463B66C();
  v2 = OUTLINED_FUNCTION_4_28();
  v4 = [v2 v3];

  return v4;
}

double sub_27459AD34()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_40_7();
  v1 = sub_27463B66C();
  v2 = OUTLINED_FUNCTION_4_28();
  v4 = [v2 v3];

  result = 0.0;
  if (v4)
  {
    return 2.0;
  }

  return result;
}

id sub_27459ADC4()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = OUTLINED_FUNCTION_75_1();
  v3 = OUTLINED_FUNCTION_42_7();
  v5 = [v3 v4];

  if (v5)
  {
    sub_27463C13C();
    swift_unknownObjectRelease();
    sub_27440CB1C(v14, &unk_28094A230);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    sub_27440CB1C(v14, &unk_28094A230);
    v6 = [v0 standardUserDefaults];
    v7 = OUTLINED_FUNCTION_75_1();
    [v6 setBool:1 forKey:v7];
  }

  v8 = [v0 standardUserDefaults];
  v9 = OUTLINED_FUNCTION_75_1();
  v10 = OUTLINED_FUNCTION_4_28();
  v12 = [v10 v11];

  return v12;
}

uint64_t sub_27459AF2C(void *a1, void *a2, void (*a3)(void, void))
{
  v47 = a2;
  v48 = a3;
  v51 = sub_27463B1EC();
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_27463B21C();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v46 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_27463B23C();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v13 = *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView];
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView] = a1;
  v50 = v3;
  v14 = a1;
  [v3 addSubview_];
  [v14 setAlpha_];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v61 = sub_2745A8BDC;
  v62 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27443E0E8;
  v60 = &block_descriptor_449;
  v17 = _Block_copy(&aBlock);
  v18 = v13;

  v61 = CGSizeMake;
  v62 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27456009C;
  v60 = &block_descriptor_452;
  v19 = _Block_copy(&aBlock);
  [v15 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v19);
  _Block_release(v17);
  v45 = sub_274412734(0, &qword_28094AF90);
  v20 = sub_27463BCEC();
  sub_27463B22C();
  sub_27463B28C();
  v21 = *(v7 + 8);
  v44 = v7 + 8;
  v52 = v21;
  v21(v9, v54);
  v22 = swift_allocObject();
  v23 = v47;
  v24 = v48;
  v22[2] = v18;
  v22[3] = v23;
  v22[4] = v24;
  v61 = sub_2745A8BE4;
  v62 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27443E0E8;
  v60 = &block_descriptor_458;
  v25 = _Block_copy(&aBlock);
  v47 = v18;

  v26 = v46;
  sub_27463B20C();
  aBlock = MEMORY[0x277D84F90];
  v41[1] = sub_2745A8678(&qword_28094E100, 255, MEMORY[0x277D85198]);
  v41[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  v43 = sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
  v27 = v49;
  v28 = v51;
  sub_27463C1EC();
  v29 = v27;
  MEMORY[0x277C58400](v12, v26, v27, v25);
  _Block_release(v25);

  v30 = *(v56 + 8);
  v56 += 8;
  v48 = v30;
  v30(v27, v28);
  v31 = *(v55 + 8);
  v55 += 8;
  v42 = v31;
  v31(v26, v53);
  v32 = v12;
  v33 = v54;
  v34 = v52;
  v52(v12, v54);
  v35 = sub_27463BCEC();
  sub_27463B22C();
  sub_27463B28C();
  v34(v9, v33);
  v36 = swift_allocObject();
  v37 = v50;
  *(v36 + 16) = v50;
  v61 = sub_2745A8C2C;
  v62 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27443E0E8;
  v60 = &block_descriptor_464;
  v38 = _Block_copy(&aBlock);
  v39 = v37;

  sub_27463B20C();
  aBlock = MEMORY[0x277D84F90];
  sub_27463C1EC();
  MEMORY[0x277C58400](v32, v26, v29, v38);
  _Block_release(v38);

  v48(v29, v28);
  v42(v26, v53);
  return (v52)(v32, v54);
}

uint64_t sub_27459B684(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8C58;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_490;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_27459B834(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_2745A8C34;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_27443E0E8;
  v6[3] = &block_descriptor_470;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v4);
}

uint64_t sub_27459B93C(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8C3C;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_480;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

char *sub_27459BAEC(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel] = 0;
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_trackedConversionTranslation] = *MEMORY[0x277CBF348];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView] = a1;
  v7 = &v5[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_dropTargetReferenceSize];
  *v7 = a4;
  v7[1] = a5;
  v8 = CGSizeMake(a1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v37.receiver = v5;
  v37.super_class = type metadata accessor for WFConverterView();
  v15 = a1;
  v16 = objc_msgSendSuper2(&v37, sel_initWithFrame_, v8, v10, v12, v14);
  [v16 addSubview_];
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = sub_27463B66C();
  v19 = [v17 BOOLForKey_];

  if (v19)
  {
    v20 = objc_opt_self();
    v21 = [v20 systemPurpleColor];
    v22 = [v21 colorWithAlphaComponent_];

    [v16 setBackgroundColor_];
    v23 = [v16 layer];
    v24 = [v20 systemPurpleColor];
    v25 = [v24 colorWithAlphaComponent_];

    v26 = [v25 CGColor];
    [v23 setBorderColor_];

    v27 = [v16 layer];
    [v27 setBorderWidth_];

    v29 = CGSizeMake(v28);
    v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v34 = [objc_opt_self() monospacedSystemFontOfSize:7.0 weight:*MEMORY[0x277D74420]];
    [v33 setFont_];

    v35 = [v20 systemPurpleColor];
    [v33 setTextColor_];

    [v16 addSubview_];
    v15 = *&v16[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel];
    *&v16[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel] = v33;
  }

  return v16;
}

void sub_27459BE70()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_trackedConversionTranslation) = *MEMORY[0x277CBF348];
  sub_27463C56C();
  __break(1u);
}

id sub_27459BF28(void *a1)
{
  result = [v1 superview];
  if (result)
  {
    v4 = result;
    [v1 frame];
    [v4 convertPoint:a1 toCoordinateSpace:?];
    v6 = v5;
    v8 = v7;

    [a1 addSubview_];
    v9 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_trackedConversionTranslation];
    v10 = v6 + *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_trackedConversionTranslation];
    [v1 frame];
    v12 = v10 - v11;
    v13 = v8 + v9[1];
    [v1 frame];
    v15 = v13 - v14;
    *v9 = v12;
    v9[1] = v15;
    CGAffineTransformMakeTranslation(&v16, v12, v15);
    return [v1 setTransform_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_27459C038(CGFloat a1, CGFloat a2)
{
  [*(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView) frame];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

void sub_27459C0EC()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for WFConverterView();
  objc_msgSendSuper2(&v1, sel_didMoveToSuperview);
  sub_27459C170();
}

void sub_27459C170()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_27463B66C();
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    v5 = [v1 superview];
    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel];
      if (v6)
      {
        v11 = v5;
        v7 = v6;
        sub_27463C38C();

        [v11 classForCoder];
        swift_getObjCClassMetadata();
        v8 = sub_27463C7EC();
        MEMORY[0x277C57EA0](v8);

        MEMORY[0x277C57EA0](0xD00000000000001CLL, 0x800000027468EDC0);
        v9 = sub_27463BA1C();
        MEMORY[0x277C57EA0](v9);

        MEMORY[0x277C57EA0](8236, 0xE200000000000000);
        v10 = sub_27463BA1C();
        MEMORY[0x277C57EA0](v10);

        MEMORY[0x277C57EA0](41, 0xE100000000000000);
        sub_27455AA28(0x6569762074736F68, 0xEB00000000203A77, v7);

        v5 = v11;
      }
    }
  }
}

id sub_27459C45C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink];
  }

  else
  {
    v4 = v0;
    sub_274412734(0, &qword_280952AB8);
    v10[3] = type metadata accessor for WFEditorDragAutoscrollSession();
    v10[0] = v0;
    v5 = v0;
    v6 = sub_27459C504(v10, sel_autoscroll);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_27459C504(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_27463C69C();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

char *sub_27459C584(void *a1, double a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink] = 0;
  v4 = &v2[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_editorView] = a1;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse] = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for WFEditorDragAutoscrollSession();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = sub_27459C45C();
  sub_27463BC8C();
  [v7 setPreferredFrameRateRange_];

  v8 = *&v6[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 mainRunLoop];
  [v10 addToRunLoop:v11 forMode:*MEMORY[0x277CBE738]];

  return v6;
}

void sub_27459C6C0()
{
  v0 = sub_27459C45C();
  [v0 invalidate];
}

void sub_27459C74C(double a1)
{
  OUTLINED_FUNCTION_39();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v5 = v1;
  v6 = sub_2745FB6C4(sub_2745A8BD0, v3, 0.4, 1.0);
  [v6 startAnimation];

  v7 = sub_27459C45C();
  [v7 invalidate];
}

void sub_27459C824(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_editorView);
  [v1 contentOffset];
  [v1 setContentOffset_];
  sub_27459C880();
}

void sub_27459C880()
{
  v1 = v0;
  [v0 contentOffset];
  v3 = v2;
  [v0 bounds];
  v5 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView];
  v6 = v3 + v4 + -150.0 + 10.0;
  [v1 bounds];
  [v5 setFrame_];
  v7 = [v1 subviews];
  sub_274412734(0, &qword_28094A4D8);
  v8 = sub_27463B81C();

  sub_2744535A4(0, (v8 & 0xC000000000000001) == 0);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x277C58B20](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = v5;
  v12 = sub_27463BF7C();

  if ((v12 & 1) == 0)
  {

    [v1 bringSubviewToFront_];
  }
}

void sub_27459CA1C()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_editorView];
  [v1 adjustedContentInset];
  v3 = -v2;
  [v1 contentSize];
  v5 = v4;
  [v1 bounds];
  v6 = v5 - CGRectGetHeight(v17);
  [v1 adjustedContentInset];
  v8 = v6 + v7;
  [v1 contentOffset];
  if (v9 >= v3 && *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse] < 0.0 || ([v1 contentOffset], v10 <= v8) && *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse] > 0.0)
  {
    OUTLINED_FUNCTION_68_0();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = v3;
    *(v11 + 32) = v8;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v12 = v0;
    v13 = sub_2745FB6C4(sub_2745A8BC4, v11, 0.4, 1.0);
    [v13 startAnimation];

    v14 = *&v12[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler];
    if (v14)
    {

      v14(v15);

      sub_274406A94(v14);
    }
  }
}

id sub_27459CBBC(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_editorView);
  [v4 contentOffset];
  v5 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse);
  v7 = v6 + v5 / 3.0;
  [v4 contentOffset];
  if (v5 >= 0.0 || v7 >= a2)
  {
    [v4 contentOffset];
  }

  return [v4 setContentOffset_];
}

id *sub_27459CDA0()
{

  return v0;
}

uint64_t sub_27459CDE0()
{
  v0 = sub_27459CDA0();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

void sub_27459CEA0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27459A9BC(v1);
}

id WFEditorDragInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_27459D2A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2746486A0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  v3 = [v2 CGColor];

  type metadata accessor for CGColor(0);
  v5 = v4;
  *(v1 + 56) = v4;
  *(v1 + 32) = v3;
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  v7 = [v6 CGColor];

  *(v1 + 88) = v5;
  *(v1 + 64) = v7;
  sub_2745A85DC(v1, v0, &selRef_setColors_);
  [v0 setStartPoint_];
  [v0 setEndPoint_];
  return v0;
}

id sub_27459D400(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView____lazy_storage___gradientMaskLayer] = 0;
  v4[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for WFEditorConnectorView();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemGray2Color];
  [v11 setBackgroundColor_];

  v13 = [v11 layer];
  [v13 setCornerRadius_];

  v14 = [v11 layer];
  [v14 setCornerCurve_];

  return v11;
}

void sub_27459D57C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFEditorConnectorView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled) == 1)
  {
    v1 = sub_27459D288();
    [v0 bounds];
    [v1 setFrame_];
  }
}

void sub_27459D644(char a1)
{
  if (v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled])
    {
      v2 = sub_27459D288();
      [v1 bounds];
      [v2 setFrame_];

      v3 = [v1 layer];
      [v3 setMask_];
    }

    else
    {
      v3 = [v1 layer];
      [v3 setMask_];
    }
  }
}

void sub_27459D734(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled) = a1;
  sub_27459D644(v2);
}

void sub_27459D74C()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView____lazy_storage___gradientMaskLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_27459D848()
{
  ObjectType = swift_getObjectType();
  v2 = sub_27463B1EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27463B21C();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_27463B66C();
  v11 = [v9 BOOLForKey_];

  if (v11)
  {
    if (v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] != 1 || (v12 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView, (v13 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView]) != 0) && ([v13 alpha], v14 == 1.0))
    {
      v15 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView];
      if (v15)
      {
        [v15 alpha];
        if (v16 == 1.0)
        {
          v33 = objc_opt_self();
          v17 = swift_allocObject();
          *(v17 + 16) = v0;
          *(v17 + 24) = ObjectType;
          v40 = sub_2745A8B48;
          v41 = v17;
          aBlock = MEMORY[0x277D85DD0];
          v37 = 1107296256;
          v38 = sub_27443E0E8;
          v39 = &block_descriptor_382;
          v18 = _Block_copy(&aBlock);
          v34 = v3;
          v19 = v0;

          [v33 _performWithoutRetargetingAnimations_];
          _Block_release(v18);
          sub_274412734(0, &qword_28094AF90);
          v33 = sub_27463BCEC();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = ObjectType;
          v40 = sub_2745A8B50;
          v41 = v20;
          aBlock = MEMORY[0x277D85DD0];
          v37 = 1107296256;
          v38 = sub_27443E0E8;
          v39 = &block_descriptor_388;
          v21 = _Block_copy(&aBlock);
          v22 = v19;

          sub_27463B20C();
          aBlock = MEMORY[0x277D84F90];
          sub_2745A8678(&qword_28094E100, 255, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
          sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
          sub_27463C1EC();
          v23 = v33;
          MEMORY[0x277C58440](0, v8, v5, v21);
          _Block_release(v21);

          (*(v34 + 8))(v5, v2);
          (*(v35 + 8))(v8, v6);
        }
      }
    }

    else
    {
      v24 = objc_opt_self();
      v25 = swift_allocObject();
      *(v25 + 16) = v0;
      v40 = sub_2745A8B58;
      v41 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_27443E0E8;
      v39 = &block_descriptor_394;
      v26 = _Block_copy(&aBlock);
      v27 = v0;

      v40 = CGSizeMake;
      v41 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_27456009C;
      v39 = &block_descriptor_397;
      v28 = _Block_copy(&aBlock);
      [v24 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
      _Block_release(v28);
      _Block_release(v26);
      v29 = *&v0[v12];
      if (v29)
      {
        v30 = *&v27[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView];
        v31 = v29;
        [v30 bounds];
        [v31 setFrame_];
      }
    }
  }
}

uint64_t sub_27459DE48(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8B60;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_407;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_27459DFF8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView);
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];
}

id sub_27459E098(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView;
  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView);
  v4 = 0.0;
  if (v3)
  {
    v5 = [v3 layer];
    v6 = [v5 presentationLayer];

    if (v6)
    {
      [v6 opacity];
      v4 = v7;
    }
  }

  v8 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v9 = [v8 layer];
  [v9 setShadowRadius_];

  v10 = [v8 layer];
  *&v11 = (v4 * 0.14) + 0.07;
  [v10 setShadowOpacity_];

  v12 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v13 = objc_allocWithZone(MEMORY[0x277D75348]);
  v14 = sub_27451A6B0(sub_2745A8D34, 0);
  [v12 setBackgroundColor_];

  result = *(a1 + v2);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_27459E24C(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v13 = sub_2745A8B68;
  v14 = v5;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_27443E0E8;
  v12 = &block_descriptor_413;
  v6 = _Block_copy(&v9);
  v7 = a1;

  v13 = CGSizeMake;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_27456009C;
  v12 = &block_descriptor_416;
  v8 = _Block_copy(&v9);
  [v4 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v8);
  _Block_release(v6);
}

uint64_t sub_27459E3C8(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745A8B70;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_426;
  v13 = _Block_copy(v19);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_27459E57C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v2 = [v1 layer];
  [v2 setShadowRadius_];

  v4 = [v1 layer];
  LODWORD(v3) = 1032805417;
  [v4 setShadowOpacity_];
}

void sub_27459E624(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView) layer];
  v2 = [objc_opt_self() labelColor];
  v3 = [v2 CGColor];

  [v1 setRimColor_];
}

void sub_27459E6D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v2 = [v1 layer];
  [v1 frame];
  [v2 setCornerRadius_];

  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v4 = [v3 layer];
  [v1 frame];
  [v4 setCornerRadius_];

  v5 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView);
  if (v5)
  {
    v6 = [v5 layer];
    v7 = [v1 layer];
    [v7 cornerRadius];
    v9 = v8;

    [v6 setCornerRadius_];
  }

  v10 = *(*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item) + 16);
  [v0 bounds];
  Width = CGRectGetWidth(v48);
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v0) + 0x170);
  v14 = v13();
  v16 = Width - v15;
  (v13)(v14);
  v18 = v16 - v17;
  v19 = [v0 traitCollection];
  [v19 displayScale];

  sub_274446590(v10, v18);
  v21 = v20;
  [v0 bounds];
  v22 = CGRectGetWidth(v49);
  v23 = v13();
  v25 = v22 - v24;
  v26 = (v13)(v23);
  v28 = (*((*v12 & *v0) + 0x178))(v26, v25 - v27 - v21, 1.79769313e308);
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) != 1 && (*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_suppressLayout) & 1) == 0)
  {
    v29 = (v13)(v28);
    v30 = (v13)(v29);
    [v3 setFrame_];
    [v3 bounds];
    [v1 setFrame_];
    if (sub_27459ADC4())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v32 = Strong;
        v33 = *(Strong + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
        [v3 frame];
        [v33 setFrame_];
      }
    }
  }

  v34 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_40_7();
  v35 = sub_27463B66C();
  v36 = [v34 BOOLForKey_];

  if (v36)
  {
    v37 = objc_opt_self();
    v38 = [v37 systemRedColor];
    v39 = [v38 colorWithAlphaComponent_];

    [v0 setBackgroundColor_];
    v40 = [v0 layer];
    v41 = [v37 systemRedColor];
    v42 = [v41 colorWithAlphaComponent_];

    v43 = [v42 CGColor];
    [v40 setBorderColor_];

    [objc_msgSend(v0 layer)];
    OUTLINED_FUNCTION_101();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }
}

double sub_27459EC40(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item;
  v6 = *(*(v2 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item) + 16);
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x170);
  v9 = v8();
  v11 = a1 - v10;
  (v8)(v9);
  v13 = v11 - v12;
  v14 = [v2 traitCollection];
  [v14 displayScale];

  v15 = sub_274446590(v6, v13);
  v17 = v16;
  v18 = (v8)(v15);
  v20 = v17 + v19;
  v21 = (v8)(v18);
  v23.n128_f64[0] = a1 - (v20 + v22);
  v24 = (*((*v7 & *v2) + 0x178))(v21, v23, a2);
  (v8)(v24);
  if ((*(*(v2 + v5) + 24) & 1) == 0)
  {
    v8();
  }

  return a1;
}

void sub_27459EE24(_BYTE *a1, void *a2)
{
  if (a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] == 2)
  {
    a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] = 0;
    sub_27459D848();
    [a2 removeFromSuperview];
    v4 = *&a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView];
    [a1 addSubview_];
    swift_unknownObjectWeakAssign();
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = sub_27463B66C();
    v7 = [v5 BOOLForKey_];

    if (v7)
    {

      [v4 setAlpha_];
    }
  }
}

uint64_t sub_27459EF48()
{
  sub_27463B1EC();
  sub_2745A8678(&qword_28094E100, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
  sub_27440CA78(&qword_28094E110, &unk_28094AFA0);
  return sub_27463C1EC();
}

void sub_27459F038()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView) = 0;
  OUTLINED_FUNCTION_4_6();
  v3 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView;
  type metadata accessor for WFEditorConnectorView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_suppressLayout) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) = 0;
  OUTLINED_FUNCTION_4_6();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_converterViewRemovalWorkItem) = 0;
  OUTLINED_FUNCTION_49_4();
  __break(1u);
}

id sub_27459F2A0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer];
  }

  else
  {
    v4 = v0;
    swift_getObjectType();
    v5 = objc_allocWithZone(MEMORY[0x277D75708]);
    v6 = v0;
    OUTLINED_FUNCTION_26_12();
    v9 = sub_2745A7BFC(v7, v8);
    v10 = *&v0[v1];
    *&v4[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_27459F340()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView];
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  [v1 setHidden_];
  v4 = &v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_cachedSize];
  if (v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_cachedSize + 16] == 1)
  {
    result = [v0 bounds];
    *v4 = v6;
    *(v4 + 1) = v7;
    v4[16] = 0;
  }

  else
  {
    v9 = *v4;
    v8 = *(v4 + 1);
    result = [v0 bounds];
    if (v9 != v11 || v8 != v10)
    {
      [v0 bounds];
      *v4 = v13;
      *(v4 + 1) = v14;
      v4[16] = 0;
      sub_274599B58();
      sub_274595CB8();
    }
  }

  return result;
}

id sub_27459F4B8()
{
  v2 = v0;
  OUTLINED_FUNCTION_29_11();
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_willMoveToWindow_, v1);
  v3 = [v0 window];
  if (v3)
  {
    v4 = v3;
    v5 = sub_27459F2A0();
    [v4 removeGestureRecognizer_];
  }

  if (v1)
  {
    v6 = v1;
    v7 = sub_27459F2A0();
    [v6 addGestureRecognizer_];

    OUTLINED_FUNCTION_5();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = objc_allocWithZone(type metadata accessor for WFTouchObserver());
    v10 = sub_2745A7748(v6, sub_2745A8BBC, v8);
    v11 = *&v2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_windowTouchObserver];
    *&v2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_windowTouchObserver] = v10;
  }

  return [v2 becomeFirstResponder];
}

void sub_27459F5F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = sub_274453594(v3);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    v37 = MEMORY[0x277D84F90];

    sub_27463C44C();
    if (v6 < 0)
    {
      goto LABEL_34;
    }

    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C58B20](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      ++v7;
      v9 = *(v8 + 40);

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    while (v6 != v7);

    v5 = v37;
  }

  v10 = sub_274453594(v5);
  if (!v10)
  {
LABEL_30:

    return;
  }

  v11 = v10;
  v12 = 0;
  v35 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession;
  v36 = v5 & 0xC000000000000001;
  v33 = v5 + 32;
  v34 = v5 & 0xFFFFFFFFFFFFFF8;
  v32 = v10;
  while (1)
  {
    if (v36)
    {
      v13 = MEMORY[0x277C58B20](v12, v5);
    }

    else
    {
      if (v12 >= *(v34 + 16))
      {
        goto LABEL_33;
      }

      v13 = *(v33 + 8 * v12);
    }

    v14 = v13;
    if (__OFADD__(v12++, 1))
    {
      break;
    }

    v16 = *&v1[v35];
    if (v16)
    {
      v17 = *(v16 + 40);
      type metadata accessor for WFConverterView();
      v18 = v17;
      v19 = v14;
      v20 = sub_27463BF7C();

      if (v20)
      {
        goto LABEL_29;
      }
    }

    v21 = [v14 superview];
    if (v21)
    {
      v19 = v21;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_28;
      }

      v22 = *&v14[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView];
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        v19 = v22;
        v25 = [v24 sourceView];
        if (v25)
        {
          while (1)
          {
            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              break;
            }

            v27 = [v25 superview];

            v25 = v27;
            if (!v27)
            {
              goto LABEL_28;
            }
          }

          v28 = v26;
          v29 = v5;
          v30 = v1;
          v31 = v25;
          sub_27459BF28(v28);

          v14 = v31;
          v19 = v31;
          v1 = v30;
          v5 = v29;
          v11 = v32;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    v19 = v14;
LABEL_29:

    if (v12 == v11)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_27459F9B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_27459F2A0();
  v3 = [v2 view];

  if (v3)
  {
    [v3 removeGestureRecognizer_];
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for WFEditorView()
{
  result = qword_2809529F0;
  if (!qword_2809529F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27459FC30(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x277D84F90];
  v3 = sub_274453594(a2);
  v4 = sub_2745A874C(a1);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_274547EA4(result, 0);

    sub_27445BD8C(v7);

    sub_27445BD4C(v8);
    return v9;
  }

  return result;
}

double sub_27459FCC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_274599B58();
  sub_2744535A4(a1, (v4 & 0xC000000000000001) == 0);
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x277C58B20](a1, v4);
  }

  else
  {
  }

  v5 = sub_274599D28();
  v6 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_rowHeightCache;
  swift_beginAccess();
  *&v7 = COERCE_DOUBLE(sub_27452F200(v5, *(v2 + v6)));
  LOBYTE(v6) = v8;
  swift_endAccess();
  if (v6)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2745903B0();
      v10 = v9;
      swift_unknownObjectRelease();
    }

    else
    {

      return 0.0;
    }
  }

  else
  {

    return *&v7;
  }

  return v10;
}

id sub_27459FDEC(void *a1)
{
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

uint64_t sub_27459FE34(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8AD0;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_354;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_27459FFE8(int a1, int a2, id a3)
{
  v3 = [a3 layer];
  [v3 setFilters_];
}

id sub_2745A0044(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform_];
}

uint64_t sub_2745A0094(void *a1, void *a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745A8AC8;
  *(v12 + 24) = v11;
  v20[4] = sub_27440D744;
  v20[5] = v12;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_2745F36FC;
  v20[3] = &block_descriptor_344;
  v13 = _Block_copy(v20);
  v14 = a1;
  v15 = a2;

  LODWORD(v16) = v6;
  LODWORD(v17) = v8;
  LODWORD(v18) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2745A0258(void *a1, id a2)
{
  result = [a2 superview];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [a2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = [a1 superview];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = result;
  [v5 convertRect:result toCoordinateSpace:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;

  [a1 frame];

  return [a1 setFrame_];
}

id sub_2745A0364(void *a1)
{
  [a1 frame];

  return [a1 setFrame_];
}

id sub_2745A03BC(char *a1)
{
  swift_beginAccess();
  [a1 contentOffset];
  [a1 setContentOffset_];
  v2 = *&a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView];
  swift_beginAccess();
  [v2 frame];
  return [v2 setFrame_];
}

id sub_2745A0474(void *a1)
{
  [a1 contentSize];

  return [a1 setContentSize_];
}

id sub_2745A04CC(void *a1)
{
  [a1 frame];

  return [a1 setFrame_];
}

uint64_t sub_2745A0534(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8AF0;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_364;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_2745A06E8(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_2746386DC();
  OUTLINED_FUNCTION_40_7();
  v5 = sub_27463B66C();
  v3 = OUTLINED_FUNCTION_4_28();
  [v3 v4];
}

id sub_2745A0788(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  CGAffineTransformMakeScale(&v3, 0.95, 0.94);
  return [v1 setTransform_];
}

void sub_2745A07F4(int a1, id a2)
{
  [a2 removeFromSuperview];
  swift_beginAccess();
  v3 = sub_2745FEDF8(a2);
  swift_endAccess();
}

id sub_2745A0870(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView);
  [v1 frame];

  return [v1 setFrame_];
}

void sub_2745A08D4(char *a1)
{
  *&a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem] = 0;

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v4 = a1;
  v5 = sub_2745FB6C4(sub_2745A8B10, v2, 0.65, 1.0);
  [v5 startAnimation];
}

id sub_2745A0998(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView);
  result = [v3 alpha];
  if (v5 == 0.0 && !*(a2 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem))
  {

    return [v3 removeFromSuperview];
  }

  return result;
}

void sub_2745A0A14(void *a1)
{
  [a1 contentOffset];
  [a1 setContentOffset_];
  sub_27459C880();
}

void sub_2745A0A64(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
    swift_beginAccess();
    v14 = sub_27452F0D0(a6, *&v12[v13]);
    swift_endAccess();

    if (v14)
    {
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (!v15)
      {
LABEL_12:

        return;
      }

      v16 = v15;
      v39 = a4;
      v17 = v14;
      [v17 frame];
      v19 = v18;
      v20 = a1 - a2;
      [v17 frame];
      v25 = v21;
      v26 = v22;
      v27 = v23;
      v28 = v24;
      if (v20 >= v19)
      {
        MinY = CGRectGetMinY(*&v21);
        [v17 frame];
        v25 = v30;
        v26 = v31;
        v27 = v32;
        v28 = v33;

        if (MinY >= a2)
        {
          v41.origin.x = v25;
          v41.origin.y = v26;
          v41.size.width = v27;
          v41.size.height = v28;
          MaxY = CGRectGetMaxY(v41);
          [v16 bounds];
          v34 = MaxY - (CGRectGetHeight(v42) - v39);
          goto LABEL_9;
        }
      }

      else
      {
      }

      v40.origin.x = v25;
      v40.origin.y = v26;
      v40.size.width = v27;
      v40.size.height = v28;
      v34 = CGRectGetMinY(v40) - a3;
LABEL_9:
      v36 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession;
      v37 = *&v16[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession];
      if (v37)
      {
        v38 = v37;
        sub_27459C74C(v34);
      }

      v14 = *&v16[v36];
      *&v16[v36] = 0;

      goto LABEL_12;
    }
  }
}

unint64_t sub_2745A0C64()
{
  result = sub_274453594(*v0);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2745A87F4(sub_27453BA6C);
  if (result)
  {
    return result;
  }

  v2 = sub_274453594(*v0);
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return sub_2745959AC(result, sub_27453BA6C, sub_274453590);
}

id sub_2745A0CE4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D76180]) initWithSourceView_];
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_27463B66C();
  v6 = [v4 BOOLForKey_];

  [v2 setHidesSourceView_];
  [v2 setAllowsHitTesting_];
  [v2 setMatchesAlpha_];
  [v2 setMatchesTransform_];
  [v2 setForwardsClientHitTestingToSourceView_];
  v7 = v2;
  [a1 frame];
  v9 = v8;
  v11 = v10;
  [v7 frame];
  [v7 setFrame_];
  v12 = [v3 standardUserDefaults];
  v13 = sub_27463B66C();
  LODWORD(v5) = [v12 BOOLForKey_];

  v14 = v7;
  if (v5)
  {
    [a1 setAlpha_];
    v15 = [v7 layer];
    v16 = [objc_opt_self() systemGreenColor];
    v17 = [v16 CGColor];

    [v15 setBorderColor_];
    v14 = [v7 layer];

    [v14 setBorderWidth_];
  }

  return v7;
}

void sub_2745A0F70()
{
  if ((v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates] & 1) == 0)
  {
    v1 = v0;
    v2 = [v0 panGestureRecognizer];
    v3 = [v2 numberOfTouches];

    if (v3 >= 1)
    {
      v4 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession;
      v5 = *&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession];
      if (v5)
      {
        v6 = v5;
        v7 = sub_27459C45C();
        [v7 invalidate];

        v5 = *&v1[v4];
      }

      *&v1[v4] = 0;
    }

    v8 = objc_opt_self();
    [v8 begin];
    [v8 setDisableActions_];
    sub_274595CB8();
    [v8 commit];
    if (*&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession])
    {
      v9 = sub_27459F2A0();
      [v9 setState_];

      v10 = *&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer];
      sub_2745A110C();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_274591854();

      swift_unknownObjectRelease();
    }
  }
}

void sub_2745A110C()
{
  OUTLINED_FUNCTION_71_0();
  v494 = v1;
  v495 = v2;
  v3 = v0;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v474 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v479 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v473 = v10 - v9;
  OUTLINED_FUNCTION_51_3();
  v476 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v478 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v475 = v14 - v13;
  OUTLINED_FUNCTION_51_3();
  v481 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v477 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v454 - v21;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0);
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v28 = v26 - v27;
  v30 = [v3 window];
  if (!v30)
  {
    goto LABEL_221;
  }

  v483 = v30;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_28_15();
    OUTLINED_FUNCTION_25_16();

    return;
  }

  v465 = ObjectType;
  v467 = v28;
  v480 = Strong;
  [v5 locationInView_];
  v33 = v32;
  v35 = v34;
  v36 = OUTLINED_FUNCTION_74_1();
  v37 = &unk_280952000;
  v489 = v3;
  v469 = v19;
  if (v36 == 1)
  {
    v470 = v5;
    v471 = v22;
    OUTLINED_FUNCTION_28_15();
    v40 = sub_2745A463C(v38, v39);
    if (v40)
    {
      v22 = v40;
      v41 = swift_unknownObjectWeakLoadStrong();
      if (v41)
      {
        v42 = v41;
        v43 = (*(v22 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_itemProvider))();
        if (v43)
        {
          v44 = v43;
          v468 = v24;
          OUTLINED_FUNCTION_80_0();
          v45 = *(v22 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_floatingViewOutsets);
          v46 = *(v22 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_floatingViewOutsets + 8);
          v47 = v22;

          v48 = v42;
          [v48 bounds];
          OUTLINED_FUNCTION_93_0();
          v50 = v49;
          [v48 bounds];
          v52 = v50 / v51;
          [v48 bounds];
          OUTLINED_FUNCTION_93_0();
          v498 = CGRectInset(v497, (1.0 - 1.0 / v52) * v497.size.width * 0.5, (1.0 - 1.0 / v52) * v497.size.height * 0.5);
          v53 = UIEdgeInsetsInsetRect(v498.origin.x, v498.origin.y, v498.size.width, v498.size.height, -v45, -v46);
          v55 = v54;
          v487 = v35;
          v56 = v33;
          v58 = v57;
          v60 = v59;
          v61 = [objc_allocWithZone(MEMORY[0x277D76180]) initWithSourceView_];

          v62 = CGSizeMake([v61 setHidesSourceView_]);
          v64 = v63;
          v65 = v61;
          [v65 &selRef_pasteAttributedString_];
          [v65 setFrame_];
          v66 = objc_allocWithZone(type metadata accessor for WFConverterView());
          v67 = v58;
          v33 = v56;
          v35 = v487;
          v68 = sub_27459BAEC(v65, v53, v55, v67, v60);
          v69 = *&v68[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView];
          CGAffineTransformMakeScale(&v492, v52, v52);
          v486 = *&v492.a;
          v485 = *&v492.c;
          v484 = *&v492.tx;
          v70 = v68;
          *&v492.a = v486;
          *&v492.c = v485;
          *&v492.tx = v484;
          [v69 setTransform_];
          v71 = OUTLINED_FUNCTION_28_15();
          [v71 v72];

          *&v485 = v22;
          v73 = v44;
          goto LABEL_30;
        }
      }

      else
      {
        v42 = v22;
      }
    }

    v76 = v24;
    OUTLINED_FUNCTION_28_15();
    v79 = sub_2745A42C4(v77, v78);
    if (!v79)
    {

      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_25_16();

      swift_unknownObjectRelease();
      return;
    }

    v80 = v79;
    OUTLINED_FUNCTION_80_0();
    v48 = *(v81 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
    *&v485 = v81 | 0x8000000000000000;
    v73 = *(v81 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item);
    v82 = swift_unknownObjectWeakLoadStrong();
    v83 = v80;
    v84 = v83;
    if (v82)
    {
      swift_retain_n();
      v85 = v84;
      v86 = v48;
      v70 = v82;
      v87 = OUTLINED_FUNCTION_28_15();
      sub_27459BF28(v87);
LABEL_29:
      *(v84 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) = 1;
      sub_27459D848();

      v22 = 0;
      v3 = v489;
      v468 = v76;
LABEL_30:
      v115 = v48;
      [v70 frame];
      v117 = v116;
      v119 = v118;
      type metadata accessor for WFEditorDragSession();
      v120 = swift_allocObject();
      *(v120 + 80) = 0;
      *(v120 + 88) = 1;
      *(v120 + 96) = 0;
      *(v120 + 104) = 1;
      *(v120 + 112) = 0;
      *(v120 + 16) = v73;
      *(v120 + 24) = v22;
      *&v484 = v115;
      *(v120 + 32) = v115;
      *(v120 + 40) = v70;
      *(v120 + 64) = v117;
      *(v120 + 72) = v119;
      *(v120 + 48) = v33;
      *(v120 + 56) = *&v35;
      v487 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession;
      *&v3[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession] = v120;
      *&v121 = COERCE_DOUBLE(v70);

      OUTLINED_FUNCTION_5();
      v122 = swift_allocObject();
      v482 = *&v121;
      *(v122 + 16) = *&v121;
      v123 = objc_allocWithZone(MEMORY[0x277D75D40]);
      v124 = sub_2745FB6C4(sub_2745A88B8, v122, 0.6, 1.0);
      [v124 startAnimation];

      *&v486 = v73;
      OUTLINED_FUNCTION_38_7();
      v125 = sub_274591184();
      sub_274453594(v125);
      OUTLINED_FUNCTION_83_0();
      v24 = v468;
      if (v126)
      {
        v127 = v126;
        if (v126 < 1)
        {
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        for (i = 0; i != v127; ++i)
        {
          if ((v125 & 0xC000000000000001) != 0)
          {
            v129 = MEMORY[0x277C58B20](i, v125);
          }

          else
          {
          }

          *(v129 + 25) = 1;
        }
      }

      OUTLINED_FUNCTION_62_4();
      OUTLINED_FUNCTION_38_7();
      sub_2745914A8();

      v130 = v485;
      sub_2745A88C0(v485);
      if (v130 < 0)
      {
        v131 = *&v3[v487];
        if (v131)
        {
          v132 = v24;
          v22 = *(v125 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);
          v133 = sub_274453594(v22);
          if (v133)
          {
            v134 = v133;
            OUTLINED_FUNCTION_80_0();
            v466 = v22 & 0xFFFFFFFFFFFFFF8;
            v464 = v131;

            v135 = 0;
            while (1)
            {
              if ((v22 & 0xC000000000000001) != 0)
              {
                MEMORY[0x277C58B20](v135, v22);
              }

              else
              {
                if (v135 >= *(v466 + 16))
                {
                  goto LABEL_232;
                }
              }

              v136 = *&v489[v487];
              if (v136)
              {
                v137 = *(v136 + 16);
                v138 = sub_274599D28();
                v125 = v137;
                sub_274599D28();
                OUTLINED_FUNCTION_69_2();

                if (v138 == v137)
                {

                  v141 = 0;
LABEL_53:
                  v140 = v464;
                  goto LABEL_54;
                }
              }

              else
              {
              }

              v139 = v135 + 1;
              if (__OFADD__(v135, 1))
              {
                break;
              }

              ++v135;
              if (v139 == v134)
              {

                v135 = 0;
                v141 = 1;
                goto LABEL_53;
              }
            }

LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
            goto LABEL_233;
          }

          v135 = 0;
          v141 = 1;
LABEL_54:
          *(v140 + 96) = v135;
          *(v140 + 104) = v141;

          v3 = v489;
          OUTLINED_FUNCTION_38_7();
          OUTLINED_FUNCTION_83_0();
          v24 = v132;
        }
      }

      v142 = *(v125 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);
      v143 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
      OUTLINED_FUNCTION_35_6();
      swift_beginAccess();
      *&v143[v3] = v142;

      v144 = sub_27459ADC4();
      v145 = v484;
      if ((v144 & 1) == 0)
      {
        v146 = *&v3[v487];
        if (!v146)
        {
LABEL_59:
          v147 = [v3 panGestureRecognizer];
          [v147 setEnabled_];

          v148 = [v3 panGestureRecognizer];
          [v148 setEnabled_];

          [v3 setShowsVerticalScrollIndicator_];
          OUTLINED_FUNCTION_59_4();
          sub_274595CB8();
          v149 = *&v3[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView];
          [v149 setAlpha_];
          v150 = [objc_opt_self() blackColor];
          v151 = OUTLINED_FUNCTION_92_0();
          [v151 v152];

          v19 = &selRef_tagPickerDidCancel_;
          v153 = [v3 traitCollection];
          [v153 displayScale];
          v155 = v154;

          v156 = [v3 traitCollection];
          [v156 displayScale];
          v158 = v157;

          [v149 setFrame_];
          v159 = [v3 window];
          if (v159)
          {
            v160 = v159;
            [v159 addSubview_];
          }

          v161 = objc_opt_self();
          OUTLINED_FUNCTION_5();
          v162 = swift_allocObject();
          *(v162 + 16) = v3;
          *&v492.tx = sub_2745A88C8;
          *&v492.ty = v162;
          OUTLINED_FUNCTION_1_36();
          *&v492.b = 1107296256;
          OUTLINED_FUNCTION_7_19();
          v492.c = v163;
          *&v492.d = &block_descriptor_185;
          v164 = _Block_copy(&v492);
          v165 = v3;

          [v161 animateWithDuration:196616 delay:v164 options:0 animations:0.2 completion:0.0];
          sub_2745A88C0(v485);

          _Block_release(v164);

          v5 = v470;
          v37 = &unk_280952000;
          goto LABEL_62;
        }

        v145 = *(v146 + 40);
      }

      [v145 setUserInteractionEnabled_];
      goto LABEL_59;
    }

    v89 = v83;
    swift_retain_n();
    v90 = v89;
    v91 = COERCE_DOUBLE(v48);
    v92 = [v90 superview];
    if (v92)
    {
      v93 = v92;
      *&v487 = v91;
      v94 = v73;
      v95 = [v90 layer];
      v96 = [v95 presentationLayer];

      if (v96)
      {
        [v96 frame];
        OUTLINED_FUNCTION_7_29();

        v97 = [v90 window];
        v98 = OUTLINED_FUNCTION_6_23();
        [v99 v100];
        OUTLINED_FUNCTION_61_4();

        v73 = v94;
        v91 = *&v487;
LABEL_25:

        if (sub_27459ADC4())
        {
          v104 = sub_2745A0CE4(*&v91);
          v105 = objc_allocWithZone(type metadata accessor for WFConverterView());
          OUTLINED_FUNCTION_53_4();
          v110 = v104;
        }

        else
        {
          v111 = objc_allocWithZone(type metadata accessor for WFConverterView());
          v112 = *&v91;
          OUTLINED_FUNCTION_53_4();
        }

        v70 = sub_27459BAEC(v110, v106, v107, v108, v109);
        v113 = OUTLINED_FUNCTION_28_15();
        [v113 v114];
        swift_unknownObjectWeakAssign();

        goto LABEL_29;
      }

      v73 = v94;
      v91 = *&v487;
    }

    [v90 bounds];
    OUTLINED_FUNCTION_7_29();
    v93 = [v90 window];

    v101 = OUTLINED_FUNCTION_6_23();
    [v102 v103];
    OUTLINED_FUNCTION_61_4();
    goto LABEL_25;
  }

LABEL_62:
  v166 = v37[289];
  v167 = *&v3[v166];
  if (!v167)
  {

    OUTLINED_FUNCTION_84_0();
    swift_unknownObjectRelease();
LABEL_221:
    OUTLINED_FUNCTION_25_16();
    return;
  }

  v464 = v166;

  if (OUTLINED_FUNCTION_74_1() == 2)
  {
    v168 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
    v169 = v489;
    OUTLINED_FUNCTION_29_3();
    if (!*&v168[v169])
    {
      goto LABEL_185;
    }

    v170 = v33 - *(v167 + 48);
    v171 = *&v35 - *(v167 + 56);
    v172 = objc_opt_self();
    v470 = v5;
    v173 = v172;
    OUTLINED_FUNCTION_68_0();
    v174 = swift_allocObject();
    *(v174 + 16) = v167;
    *(v174 + 24) = v170;
    *(v174 + 32) = v171;
    *&v492.tx = sub_2745A88AC;
    *&v492.ty = v174;
    v19 = &v492;
    *&v492.a = MEMORY[0x277D85DD0];
    *&v492.b = 1107296256;
    *&v492.c = sub_27443E0E8;
    *&v492.d = &block_descriptor_173_0;
    v175 = _Block_copy(&v492);
    v468 = v24;

    *&v492.tx = CGSizeMake;
    v492.ty = 0.0;
    *&v492.a = MEMORY[0x277D85DD0];
    *&v492.b = 1107296256;
    *&v492.c = sub_27456009C;
    *&v492.d = &block_descriptor_176;
    v176 = _Block_copy(&v492);
    OUTLINED_FUNCTION_0_39();
    v177 = v173;
    v5 = v470;
    [v177 v178];
    v24 = v468;
    _Block_release(v176);
    _Block_release(v175);
  }

  v179 = OUTLINED_FUNCTION_74_1();
  *&v486 = v167;
  if (v179 != 1 && OUTLINED_FUNCTION_74_1() != 2)
  {
    v466 = 0;
LABEL_174:
    if (OUTLINED_FUNCTION_74_1() == 3 || OUTLINED_FUNCTION_74_1() == 4)
    {
      v357 = sub_274599B58();
      v358 = sub_274453594(v357);
      v359 = 0;
      do
      {
        v360 = v359;
        if (v358 == v359)
        {
          break;
        }

        if ((v357 & 0xC000000000000001) != 0)
        {
          MEMORY[0x277C58B20](v359, v357);
        }

        else
        {
          if (v359 >= *((v357 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_226;
          }
        }

        if (__OFADD__(v360, 1))
        {
          goto LABEL_225;
        }

        v361 = sub_274599D28();
        v362 = sub_274599D28();

        v359 = v360 + 1;
      }

      while (v361 != v362);
      v467 = v358;

      v363 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
      v364 = v489;
      OUTLINED_FUNCTION_35_6();
      swift_beginAccess();
      *(v363 + v364) = 0;

      OUTLINED_FUNCTION_62_4();
      v365 = v363[14];
      if (v365)
      {
        v366 = v365;
        v367 = sub_27459C45C();
        [v367 invalidate];

        v365 = v363[14];
      }

      v363[14] = 0;

      OUTLINED_FUNCTION_50_5();
      [v363 v368];
      *&v484 = sub_274412734(0, &qword_28094AF90);
      *&v485 = sub_27463BCEC();
      v369 = v469;
      sub_27463B22C();
      sub_27463B28C();
      v370 = v22;
      v371 = v477 + 8;
      v488 = *(v477 + 8);
      (v488)(v369, v481);
      OUTLINED_FUNCTION_5();
      v372 = swift_allocObject();
      *(v372 + 16) = v363;
      *&v492.tx = sub_2745A876C;
      *&v492.ty = v372;
      OUTLINED_FUNCTION_1_36();
      *&v492.b = 1107296256;
      OUTLINED_FUNCTION_7_19();
      v492.c = v373;
      *&v492.d = &block_descriptor_33;
      v374 = _Block_copy(&v492);
      *&v487 = COERCE_DOUBLE(v363);

      v375 = v475;
      sub_27463B20C();
      *&v492.a = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_33();
      v378 = COERCE_DOUBLE(sub_2745A8678(v376, 255, v377));
      v379 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0));
      OUTLINED_FUNCTION_19_5();
      v382 = sub_27440CA78(v380, v381);
      v383 = v473;
      v472 = v379;
      v470 = v382;
      OUTLINED_FUNCTION_35_7();
      v482 = v378;
      sub_27463C1EC();
      v384 = v485;
      MEMORY[0x277C58400](v370, v375, v383, v374);
      _Block_release(v374);

      v385 = *(v479 + 8);
      v479 += 8;
      *&v485 = v385;
      v385(v383, *&v379);
      v386 = *(v478 + 8);
      v478 += 8;
      v468 = v386;
      v386(v375, v476);
      v471 = v370;
      OUTLINED_FUNCTION_62_4();
      v477 = v371;
      v488();
      if ((*(*&v379 + 88) & 1) == 0)
      {
        v466 = *(*&v379 + 80);
        v387 = *(v480 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);
        v388 = sub_274453594(v387);
        *&v379 = v387 & 0xFFFFFFFFFFFFFF8;

        v389 = 0;
        while (1)
        {
          if (v388 == v389)
          {

            OUTLINED_FUNCTION_62_4();

            OUTLINED_FUNCTION_38_7();
            sub_274590F98(v392, v393, v394);

            goto LABEL_205;
          }

          if ((v387 & 0xC000000000000001) != 0)
          {
            MEMORY[0x277C58B20](v389, v387);
          }

          else
          {
            if (v389 >= *((v387 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_229;
            }
          }

          v390 = *(v486 + 16);
          v391 = sub_274599D28();
          sub_274599D28();
          OUTLINED_FUNCTION_13_5();

          if (v391 == v390)
          {
            break;
          }

          v234 = __OFADD__(v389++, 1);
          if (v234)
          {
            goto LABEL_230;
          }
        }

        OUTLINED_FUNCTION_62_4();
        if (*((v387 & 0xFFFFFFFFFFFFFF8) + 0x68))
        {
          v395 = 0;
          v396 = v466;
        }

        else
        {
          v396 = v466;
          v395 = *((v387 & 0xFFFFFFFFFFFFFF8) + 0x60) < v466;
        }

        if (__OFADD__(v396, v395))
        {
          goto LABEL_234;
        }

        OUTLINED_FUNCTION_38_7();
        sub_274590E08(v397, v398, v399);
      }

LABEL_205:
      v400 = sub_27459ADC4();
      v401 = 40;
      if (v400)
      {
        v401 = 32;
      }

      [*(*&v379 + v401) setUserInteractionEnabled_];
      if (v467 == v360)
      {
        v402 = objc_allocWithZone(MEMORY[0x277D75D40]);

        v403 = sub_2745FB6C4(sub_2745A878C, *&v379, 0.7, 1.0);
        *&v492.tx = sub_2745A8794;
        v492.ty = v379;
        *&v492.a = MEMORY[0x277D85DD0];
        *&v492.b = 1107296256;
        *&v492.c = sub_2745F3724;
        *&v492.d = &block_descriptor_131;
        v404 = _Block_copy(&v492);

        v405 = OUTLINED_FUNCTION_92_0();
        [v405 v406];
        _Block_release(v404);
        [v403 startAnimation];
        v407 = objc_opt_self();
        OUTLINED_FUNCTION_39();
        v408 = swift_allocObject();
        v409 = v483;
        *(v408 + 16) = v379;
        *(v408 + 24) = v409;
        *&v492.tx = sub_2745A87A4;
        *&v492.ty = v408;
        *&v492.a = MEMORY[0x277D85DD0];
        *&v492.b = 1107296256;
        *&v492.c = sub_27443E0E8;
        *&v492.d = &block_descriptor_137;
        v410 = _Block_copy(&v492);

        v411 = OUTLINED_FUNCTION_28_15();

        *&v492.tx = CGSizeMake;
        v492.ty = 0.0;
        *&v492.a = MEMORY[0x277D85DD0];
        *&v492.b = 1107296256;
        *&v492.c = sub_27456009C;
        *&v492.d = &block_descriptor_140;
        v412 = _Block_copy(&v492);
        OUTLINED_FUNCTION_0_39();
        [v407 v413];
        _Block_release(v412);
        _Block_release(v410);

        v414 = *&v379;
        v415 = v471;
      }

      else
      {
        v416 = v487;
        v417 = [v487 panGestureRecognizer];
        v418 = [v417 numberOfTouches];

        v415 = v471;
        if (v418 > 0 || ([v416 isDecelerating] & 1) != 0 || (v419 = objc_msgSend(v416, sel_traitCollection), v420 = objc_msgSend(v419, sel_horizontalSizeClass), v419, v420 == 1))
        {
          v421 = *(v486 + 40);
          sub_27459BF28(v416);
        }

        v414 = v486;
        v422 = *(v486 + 16);
        v423 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
        OUTLINED_FUNCTION_44_5();
        v424 = sub_27452F0D0(v422, *&v416[v423]);
        if (v424)
        {
          v425 = v424;
          swift_endAccess();
          v425[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] = 2;
          sub_27459D848();
          sub_27459A504();
          v426 = objc_allocWithZone(MEMORY[0x277D75D40]);

          v427 = sub_2745FB6C4(sub_2745A87B4, v414, 0.7, 1.0);
          [v427 startAnimation];

          OUTLINED_FUNCTION_59_4();
          sub_274595CB8();
          OUTLINED_FUNCTION_39();
          v428 = swift_allocObject();
          *(v428 + 16) = v414;
          *(v428 + 24) = v425;
          v429 = objc_allocWithZone(MEMORY[0x277D75D40]);

          v430 = v425;
          v431 = sub_2745FB6C4(sub_2745A87BC, v428, 0.4, 1.0);
          [v431 startAnimation];

          v432 = objc_opt_self();
          OUTLINED_FUNCTION_39();
          v433 = swift_allocObject();
          *(v433 + 16) = v414;
          *(v433 + 24) = v430;
          *&v492.tx = sub_2745A87C4;
          *&v492.ty = v433;
          *&v492.a = MEMORY[0x277D85DD0];
          *&v492.b = 1107296256;
          *&v492.c = sub_27443E0E8;
          *&v492.d = &block_descriptor_155;
          v434 = _Block_copy(&v492);

          v435 = v430;

          *&v492.tx = CGSizeMake;
          v492.ty = 0.0;
          *&v492.a = MEMORY[0x277D85DD0];
          *&v492.b = 1107296256;
          *&v492.c = sub_27456009C;
          *&v492.d = &block_descriptor_158;
          v436 = _Block_copy(&v492);
          OUTLINED_FUNCTION_0_39();
          [v432 v437];
          _Block_release(v436);
          _Block_release(v434);
        }

        else
        {
          swift_endAccess();
        }
      }

      v438 = v487;
      OUTLINED_FUNCTION_30_1();

      sub_274595A60(v439, sub_2745C4440);
      swift_endAccess();
      *&v484 = sub_27463BCEC();
      v440 = v469;
      sub_27463B22C();
      sub_27463B28C();
      v441 = v440;
      v442 = v415;
      v443 = v414;
      v444 = v481;
      v445 = v488;
      (v488)(v441, v481);
      OUTLINED_FUNCTION_39();
      v446 = swift_allocObject();
      *(v446 + 16) = v438;
      *(v446 + 24) = v443;
      *&v492.tx = sub_2745A87AC;
      *&v492.ty = v446;
      *&v492.a = MEMORY[0x277D85DD0];
      *&v492.b = 1107296256;
      *&v492.c = sub_27443E0E8;
      *&v492.d = &block_descriptor_146;
      v447 = _Block_copy(&v492);
      v438;

      v448 = v475;
      sub_27463B20C();
      *&v492.a = MEMORY[0x277D84F90];
      v449 = v473;
      OUTLINED_FUNCTION_35_7();
      sub_27463C1EC();
      v450 = v484;
      MEMORY[0x277C58400](v442, v448, v449, v447);
      _Block_release(v447);

      (v485)(v449, v443);
      v468(v448, v476);
      (v445)(v442, v444);
      *&v489[v464] = 0;

      sub_27459173C();
      if (sub_27459ACB0())
      {
        OUTLINED_FUNCTION_30_11();
        v453 = sub_2745A4C04(v451, v452);
        [v453 setHidden_];
      }

LABEL_219:
      swift_unknownObjectRelease();
      goto LABEL_220;
    }

LABEL_185:

    OUTLINED_FUNCTION_84_0();
    swift_unknownObjectRelease();
LABEL_220:

    goto LABEL_221;
  }

  v180 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
  OUTLINED_FUNCTION_50_5();
  OUTLINED_FUNCTION_29_3();
  v463 = v180;
  if (!*&v180[v19])
  {
    goto LABEL_185;
  }

  v470 = v5;
  v181 = [*(v167 + 40) superview];
  if (!v181)
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  v182 = v181;
  [*(v167 + 40) frame];
  v184 = v183;
  v186 = v185;
  v187 = [*(v167 + 40) window];
  [v182 convertPoint:v187 toView:{v184, v186}];
  *&v485 = v188;
  v190 = v189;

  v191 = *(v167 + 40) + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_dropTargetReferenceSize;
  v192 = *(v191 + 8);
  *&v484 = *v191;
  v194 = OUTLINED_FUNCTION_99(v193, sel_window);
  if (!v194)
  {
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v195 = v194;
  v196 = fmax(v190, 40.0);
  [v194 bounds];
  OUTLINED_FUNCTION_7_29();

  v499.origin.x = OUTLINED_FUNCTION_6_23();
  Height = CGRectGetHeight(v499);
  v482 = v192;
  v199 = Height - v192 + -40.0;
  if (v196 < v199)
  {
    v199 = v196;
  }

  *&v487 = v199;
  v200 = 0.0;
  if (*&v35 < 80.0)
  {
    *&v487 = 80.0;
    v201 = OUTLINED_FUNCTION_99(v197, sel_traitCollection);
    [v201 displayScale];

    v197 = BSFloatRoundForScale();
    v200 = v202;
  }

  v203 = OUTLINED_FUNCTION_99(v197, sel_window);
  if (!v203)
  {
    goto LABEL_243;
  }

  v204 = v203;
  [v203 bounds];
  OUTLINED_FUNCTION_7_29();

  v500.origin.x = OUTLINED_FUNCTION_6_23();
  v206 = CGRectGetHeight(v500) + -150.0;
  if (v206 >= *&v35)
  {
    if (*&v35 >= 80.0)
    {
      v209 = *(v167 + 112);
      if (v209)
      {
        v210 = v209;
        v211 = sub_27459C45C();
        [v211 invalidate];

        v209 = *(v167 + 112);
      }

      v212 = v482;
      *(v167 + 112) = 0;

      goto LABEL_89;
    }

    v206 = *&v487;
  }

  else
  {
    v207 = OUTLINED_FUNCTION_99(v205, sel_traitCollection);
    [v207 displayScale];

    BSFloatRoundForScale();
    v200 = v208;
  }

  v213 = *(v167 + 112);
  if (v213)
  {
    *(v213 + OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse) = v200;
  }

  else
  {
    v214 = objc_allocWithZone(type metadata accessor for WFEditorDragAutoscrollSession());
    v215 = sub_27459C584(v489, v200);
    v216 = *(v167 + 112);
    *(v167 + 112) = v215;
  }

  *&v487 = v206;
  v212 = v482;
LABEL_89:
  OUTLINED_FUNCTION_80_0();
  v471 = v22;
  v217 = sub_27459ACB0();
  v218 = v489;
  if (v217)
  {
    OUTLINED_FUNCTION_30_11();
    v220 = sub_2745A4C04(&OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___debugDropTargetView, v219);
    [v220 setHidden_];

    v221 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___debugDropTargetView;
    v222 = OUTLINED_FUNCTION_14_16();
    [v223 v224];
    v225 = *&v218[v221];
    [v225 frame];
    [v225 setFrame_];

    v226 = *&v218[v221];
    [v226 frame];
    [v226 setFrame_];

    v227 = [v218 window];
    if (v227)
    {
      v228 = v227;
      [v227 addSubview_];
    }
  }

  v229 = sub_274599B58();
  v230 = sub_274453594(v229);
  v231 = 0.0;
  while (1)
  {
    if (v230 == *&v231)
    {
      v235 = 0.0;
      goto LABEL_104;
    }

    if ((v229 & 0xC000000000000001) != 0)
    {
      MEMORY[0x277C58B20](*&v231, v229);
    }

    else
    {
      if (*&v231 >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
        goto LABEL_228;
      }
    }

    v232 = *(v167 + 16);
    v233 = sub_274599D28();
    sub_274599D28();
    OUTLINED_FUNCTION_69_2();

    if (v233 == v232)
    {
      break;
    }

    v234 = __OFADD__((*&v231)++, 1);
    v167 = v486;
    if (v234)
    {
      goto LABEL_224;
    }
  }

  v235 = v231;
LABEL_104:

  OUTLINED_FUNCTION_50_5();
  [v229 & 0xC000000000000001 v236];
  OUTLINED_FUNCTION_7_29();
  v237 = [v229 & 0xC000000000000001 window];
  v238 = OUTLINED_FUNCTION_6_23();
  [v239 v240];
  OUTLINED_FUNCTION_7_29();

  v241 = &unk_280965000;
  if (v230 != *&v231)
  {
    v260 = v24;
    v466 = 0;
    v261 = v467;
    goto LABEL_125;
  }

  v501.origin.x = OUTLINED_FUNCTION_6_23();
  v496.x = v33;
  *&v496.y = v35;
  if (!CGRectContainsPoint(v501, v496))
  {
    goto LABEL_185;
  }

  OUTLINED_FUNCTION_29_3();
  v242 = v472;
  v243 = OUTLINED_FUNCTION_91_0();
  v244(v243);
  v245 = sub_2746382FC();
  v468 = v24;
  (*(v24 + 1))(COERCE_CGFLOAT(*&v242), &unk_280965000);
  v472 = 0.0;
  v246 = 0;
  v466 = 0;
  v247 = *(v245 + 16);
  v248 = 0.0;
  v249 = 1;
LABEL_107:
  v250 = v249;
  while (1)
  {
    v251 = v489;
    if (v247 == v246)
    {
      break;
    }

    if (v246 >= *(v245 + 16))
    {
      goto LABEL_227;
    }

    v252 = *(v245 + 8 * v246 + 32);
    OUTLINED_FUNCTION_44_5();
    v491 = *&v252;
    sub_27463837C();
    v253 = v493;
    swift_endAccess();
    if (!v253)
    {
      goto LABEL_240;
    }

    [v253 bounds];
    OUTLINED_FUNCTION_6_6();
    v254 = [v253 window];
    v255 = OUTLINED_FUNCTION_7_16();
    [v256 v257];
    OUTLINED_FUNCTION_6_6();

    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_15_18();
    v508.size.height = v212;
    if (CGRectIntersectsRect(v502, v508))
    {
      OUTLINED_FUNCTION_7_16();
      OUTLINED_FUNCTION_15_18();
      v509.size.height = v212;
      v504 = CGRectIntersection(v503, v509);
      v258 = CGRectGetHeight(v504);

      v259 = v250 | (v248 < v258);
      ++v246;
      v250 = 0;
      if (v259)
      {
        v249 = 0;
        v472 = v252;
        v248 = v258;
        goto LABEL_107;
      }
    }

    else
    {

      ++v246;
    }
  }

  *&v262 = v472;
  if (v249)
  {
    v263 = sub_274599B58();
    *&v262 = COERCE_DOUBLE(sub_274453594(v263));
  }

  v264 = v463;
  OUTLINED_FUNCTION_30_1();
  v265 = *&v264[v251];
  v266 = v486;
  if (v265)
  {
    sub_274547EA0(v262, v265);

    sub_2745C373C(v262, v262);
  }

  swift_endAccess();
  *(v266 + 80) = *&v262;
  *(v266 + 88) = 0;
  v267 = MEMORY[0x277D84F90];
  sub_274595CB8();
  OUTLINED_FUNCTION_44_5();
  v491 = v262;
  sub_27463837C();
  v268 = v493;
  swift_endAccess();
  if (v268)
  {
    v268[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] = 1;
    sub_27459D848();
    swift_unknownObjectWeakAssign();
    v269 = sub_27459ADC4();
    v270 = *&v268[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView];
    v271 = *(v266 + 40);
    v272 = v270;
    v273 = v272;
    v472 = *&v262;
    v274 = v267;
    if (v269)
    {
      v275 = sub_2745A0CE4(v272);

      sub_27459AF2C(v275, sub_2745A4C64, 0);
      v273 = v275;
    }

    else
    {
      sub_27459AF2C(v272, CGSizeMake, 0);
    }

    v276 = *(v266 + 40);
    [v268 bounds];
    v277 = &v276[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_dropTargetReferenceSize];
    *v277 = v278;
    *(v277 + 1) = v279;
    sub_27459C170();

    v462 = sub_274412734(0, &qword_28094AF90);
    v280 = sub_27463BCEC();
    v281 = v469;
    sub_27463B22C();
    sub_27463B28C();
    v460 = *(v477 + 8);
    v461 = v477 + 8;
    v282 = v481;
    v460(v281, v481);
    OUTLINED_FUNCTION_39();
    v283 = swift_allocObject();
    *(v283 + 16) = v268;
    *(v283 + 24) = v266;
    *&v492.tx = sub_2745A87CC;
    *&v492.ty = v283;
    OUTLINED_FUNCTION_1_36();
    *&v492.b = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v492.c = v284;
    *&v492.d = &block_descriptor_164;
    v285 = _Block_copy(&v492);

    v465 = v268;

    v286 = v475;
    sub_27463B20C();
    v492.a = v274;
    OUTLINED_FUNCTION_5_33();
    v457 = sub_2745A8678(v287, 255, v288);
    v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0);
    v456 = v289;
    OUTLINED_FUNCTION_19_5();
    v458 = sub_27440CA78(v290, v291);
    v292 = v473;
    OUTLINED_FUNCTION_35_7();
    sub_27463C1EC();
    v293 = OUTLINED_FUNCTION_66_1();
    MEMORY[0x277C58400](v293);
    _Block_release(v285);

    v459 = *(v479 + 8);
    v459(v292, v289);
    v455 = *(v478 + 8);
    v455(v286, v476);
    v294 = v460;
    v460(&unk_27464D1A0, v282);
    v462 = sub_27463BCEC();
    sub_27463B22C();
    sub_27463B28C();
    v294(v281, v282);
    *&v492.tx = sub_2745A87D4;
    *&v492.ty = v486;
    OUTLINED_FUNCTION_1_36();
    *&v492.b = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v492.c = v295;
    *&v492.d = &block_descriptor_167_0;
    v296 = _Block_copy(&v492);

    v297 = v475;
    sub_27463B20C();
    *&v492.a = MEMORY[0x277D84F90];
    sub_27463C1EC();
    v298 = OUTLINED_FUNCTION_66_1();
    v299 = v462;
    MEMORY[0x277C58400](v298);
    _Block_release(v296);

    v459(v292, v289);
    v455(v297, v476);
    v294(v294, v481);
    v260 = v468;
    v261 = v467;
    v235 = v472;
    v241 = &unk_280965000;
LABEL_125:
    OUTLINED_FUNCTION_29_3();
    v300 = OUTLINED_FUNCTION_91_0();
    v301(v300);
    v302 = sub_2746382FC();
    v260[1](v261, &unk_280965000);
    v303 = *(v302 + 16);
    a = MEMORY[0x277D84F90];
    v472 = v235;
    if (v303)
    {
      v305 = (v302 + 32);
      do
      {
        v306 = *v305++;
        v241 = v306;
        if (v306 != *&v235)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v492.a = a;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_27445126C(0, *(*&a + 16) + 1, 1);
            a = v492.a;
          }

          v309 = *(*&a + 16);
          v308 = *(*&a + 24);
          if (v309 >= v308 >> 1)
          {
            v310 = OUTLINED_FUNCTION_0_8(v308);
            sub_27445126C(v310, v309 + 1, 1);
            a = v492.a;
          }

          *(*&a + 16) = v309 + 1;
          *(*&a + 8 * v309 + 32) = v241;
          v235 = v472;
        }

        --v303;
      }

      while (v303);
    }

    v311 = 0;
    v312 = 0;
    v22 = *(*&a + 16);
    LODWORD(v468) = 1;
    while (1)
    {
      v467 = v311;
      while (1)
      {
        if (v22 == v312)
        {
          goto LABEL_148;
        }

        if (v312 >= *(*&a + 16))
        {
          __break(1u);
          goto LABEL_223;
        }

        v313 = *(*&a + 8 * v312 + 32);
        OUTLINED_FUNCTION_50_5();
        OUTLINED_FUNCTION_44_5();
        v490 = v313;
        sub_27463837C();
        v314 = v493;
        swift_endAccess();
        if (!v314)
        {
          goto LABEL_239;
        }

        v315 = v314;
        [v315 bounds];
        OUTLINED_FUNCTION_6_6();
        v241 = &selRef_tagPickerDidCancel_;
        v316 = [v315 window];
        v317 = OUTLINED_FUNCTION_7_16();
        [v318 v319];

        v320 = *&v315[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView];
        [v320 bounds];
        OUTLINED_FUNCTION_61_4();
        v321 = [v315 window];

        OUTLINED_FUNCTION_53_4();
        [v322 v323];

        OUTLINED_FUNCTION_15_18();
        v324 = v482;
        v510.size.height = v482;
        if (CGRectIntersectsRect(v505, v510))
        {
          break;
        }

        ++v312;
      }

      ++v312;
      if (*&v472 < v313)
      {
        v506.origin.x = OUTLINED_FUNCTION_14_16();
        v506.size.height = v324;
        CGRectGetMaxY(v506);
        v325 = OUTLINED_FUNCTION_72_2();

        OUTLINED_FUNCTION_81_0();
        v311 = v313;
        if (v325 + 6.0 > v324)
        {
          OUTLINED_FUNCTION_81_0();
          v311 = v313 - 1;
        }

        continue;
      }

      v507.origin.x = OUTLINED_FUNCTION_14_16();
      v507.size.height = v324;
      CGRectGetMinY(v507);
      v326 = OUTLINED_FUNCTION_72_2();

      OUTLINED_FUNCTION_81_0();
      v311 = v313;
      if (v324 >= v326 + -6.0)
      {
        OUTLINED_FUNCTION_81_0();
        v311 = v313 + 1;
        if (__OFADD__(v313, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_148:

    if (v468)
    {

      OUTLINED_FUNCTION_84_0();
      goto LABEL_219;
    }

    v327 = *&v472;
    v328 = v486;
    if (v467 == *&v472)
    {
      goto LABEL_185;
    }

    OUTLINED_FUNCTION_50_5();
    v329 = v463;
    OUTLINED_FUNCTION_30_1();
    if (!*&v329[v241])
    {
      swift_endAccess();
      OUTLINED_FUNCTION_83_0();
      goto LABEL_173;
    }

    v330 = sub_2745959AC(v327, sub_27453BA6C, sub_274453590);
    swift_endAccess();
    OUTLINED_FUNCTION_38_7();
    v335 = sub_274590C28(v331, v332, v333, v334);
    OUTLINED_FUNCTION_30_1();
    v336 = *&v329[v241];
    if (v336)
    {
      sub_274547EA0(v335, v336);

      sub_2745C373C(v335, v335);
    }

    swift_endAccess();
    *(v328 + 80) = v335;
    *(v328 + 88) = 0;
    v337 = *&v329[v241];
    if (!v337)
    {

      OUTLINED_FUNCTION_83_0();
      goto LABEL_173;
    }

    v488 = v330;
    OUTLINED_FUNCTION_38_7();
    v338 = sub_274591184();
    *&v492.a = MEMORY[0x277D84F90];
    v339 = sub_274453594(v337);
    v340 = 0;
    v341 = v337 & 0xC000000000000001;
    while (v339 != v340)
    {
      sub_2744535A4(v340, v341 == 0);
      if (v341)
      {
        v343 = MEMORY[0x277C58B20](v340, v337);
        v342 = v343;
      }

      else
      {
        v342 = *(v337 + 8 * v340 + 32);
      }

      if (__OFADD__(v340, 1))
      {
        goto LABEL_231;
      }

      v493 = v342;
      MEMORY[0x28223BE20](v343);
      OUTLINED_FUNCTION_16_19();
      *(v344 - 16) = &v493;
      v345 = v466;
      sub_27446ECD4(sub_2745A888C, v346, v338);
      v466 = v345;
      if (v347)
      {
      }

      else
      {
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }

      ++v340;
    }

    v348 = v492.a;

    sub_2744B2A84();
    v350 = v349;
    v352 = v351;

    if (v352)
    {
      goto LABEL_245;
    }

    v234 = __OFADD__(v350, 1);
    v353 = v350 + 1;
    v22 = v471;
    if (v234)
    {
      goto LABEL_235;
    }

    if (v353 < 0)
    {
      goto LABEL_236;
    }

    if (sub_274453594(*&v348) < v353)
    {
      goto LABEL_237;
    }

    v354 = sub_274453594(v338);
    v355 = sub_274453594(*&v348);
    v234 = __OFADD__(v355, v354);
    v356 = v355 + v354;
    if (!v234)
    {
      sub_274547EA4(v356, 1);
      sub_2745470D0();
      OUTLINED_FUNCTION_50_5();
      OUTLINED_FUNCTION_38_7();
      sub_2745914E0();

LABEL_173:
      OUTLINED_FUNCTION_59_4();
      sub_274595CB8();
      goto LABEL_174;
    }

    goto LABEL_238;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
}

uint64_t sub_2745A42C4(double a1, double a2)
{
  v5 = [v2 window];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 hitTest:0 withEvent:{a1, a2}];

  v8 = v7;
  v9 = v8;
  if (!v8)
  {
LABEL_5:

    return 0;
  }

  while (1)
  {
    type metadata accessor for WFEditorCell();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      break;
    }

    v11 = [v9 superview];

    v9 = v11;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v12 = v10;

  return v12;
}

uint64_t sub_2745A442C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  OUTLINED_FUNCTION_68_0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274648560;
  sub_274412734(0, &unk_280952AA8);
  v1 = sub_27463B6AC();
  *(v0 + 32) = sub_2745A44B8(v1, v2, 0, sel_escapeKeyPressed);
  return v0;
}

id sub_2745A44B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_27463B66C();

  v7 = [swift_getObjCClassFromMetadata() keyCommandWithInput:v6 modifierFlags:a3 action:a4];

  return v7;
}

void sub_2745A4534()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
  swift_beginAccess();
  *&v1[v0] = 0;

  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession);
  if (v2)
  {
    v3 = *(v2 + 104);
    *(v2 + 80) = *(v2 + 96);
    *(v2 + 88) = v3;
  }

  v4 = sub_27459F2A0();
  [v4 setEnabled_];

  [*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer) setEnabled_];
  sub_274595CB8();
}

uint64_t sub_2745A463C(double a1, double a2)
{
  v5 = [v2 window];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 hitTest:0 withEvent:{a1, a2}];

  v8 = v7;
  v9 = v8;
  if (!v8)
  {
LABEL_15:

    return v9;
  }

  while (1)
  {
    v10 = v9;
    v11 = [v10 interactions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A70);
    v12 = sub_27463B81C();

    if (v12 >> 62)
    {
      result = sub_27463C27C();
      if (!result)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_11;
      }
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x277C58B20](0, v12);
      goto LABEL_8;
    }

    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    swift_unknownObjectRetain();
LABEL_8:

    type metadata accessor for WFEditorDragInteraction();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v9 = v14;

      return v9;
    }

    swift_unknownObjectRelease();
LABEL_12:
    v9 = [v10 superview];

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_2745A4808(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView;
  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  CGAffineTransformMakeScale(&v10, 1.05, 1.05);
  [v3 setTransform_];
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_27463B66C();
  v6 = [v4 BOOLForKey_];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + v2) layer];
    [v7 setShadowRadius_];

    v8 = [*(a1 + v2) layer];
    LODWORD(v9) = 1046562734;
    [v8 setShadowOpacity_];
  }
}

id sub_2745A494C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView);
  [v1 frame];
  if (v2 == 100.0)
  {
    v3 = 200.0;
  }

  else
  {
    v3 = 100.0;
  }

  [v1 frame];

  return [v1 setFrame_];
}

uint64_t sub_2745A49D0(uint64_t a1, double a2, double a3)
{
  v6 = objc_opt_self();
  sub_27463BC8C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2745A88EC;
  *(v14 + 24) = v13;
  v20[4] = sub_27440CBD0;
  v20[5] = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_2745F36FC;
  v20[3] = &block_descriptor_194;
  v15 = _Block_copy(v20);

  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  LODWORD(v18) = v12;
  [v6 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v15);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id sub_2745A4B9C(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 64) + a2;
  v5 = *(a1 + 72) + a3;
  [v3 frame];

  return [v3 setFrame_];
}

id sub_2745A4C04(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_2745A4C64(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 sourceView];
    if (v5)
    {
      v6 = v5;
      [v5 setAlpha_];
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    v11[4] = sub_2745A88F8;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_27443E0E8;
    v11[3] = &block_descriptor_200;
    v9 = _Block_copy(v11);
    v10 = v4;

    [v7 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v9);
  }
}

uint64_t sub_2745A4DD4(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8900;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_210;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_2745A4F84(void *a1)
{
  v1 = [a1 sourceView];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }
}

void sub_2745A4FEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) == 1)
  {
    v15 = v5;
    v16 = v4;
    v17 = v2;
    v18 = v3;
    v7 = *(*(a2 + 40) + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
    CGAffineTransformMakeScale(&v14, 0.7, 0.7);
    [v7 setTransform_];
    v8 = sub_27459AD34() + 0.25;
    v9 = objc_allocWithZone(MEMORY[0x277D75D40]);

    v10 = sub_2745FB6C4(sub_2745A8908, a2, v8, 1.0);
    [v10 startAnimation];

    v11 = objc_opt_self();
    *&v14.tx = sub_2745A8910;
    *&v14.ty = a2;
    *&v14.a = MEMORY[0x277D85DD0];
    *&v14.b = 1107296256;
    *&v14.c = sub_27443E0E8;
    *&v14.d = &block_descriptor_213;
    v12 = _Block_copy(&v14);

    *&v14.tx = CGSizeMake;
    v14.ty = 0.0;
    *&v14.a = MEMORY[0x277D85DD0];
    *&v14.b = 1107296256;
    *&v14.c = sub_27456009C;
    *&v14.d = &block_descriptor_216;
    v13 = _Block_copy(&v14);
    [v11 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v13);
    _Block_release(v12);
  }
}

id sub_2745A520C(uint64_t a1)
{
  v1 = *(*(a1 + 40) + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  CGAffineTransformMakeScale(&v3, 1.05, 1.05);
  return [v1 setTransform_];
}

uint64_t sub_2745A5278(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2745A8918;
  *(v9 + 24) = a1;
  v15[4] = sub_27440D744;
  v15[5] = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2745F36FC;
  v15[3] = &block_descriptor_223_0;
  v10 = _Block_copy(v15);

  LODWORD(v11) = v4;
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v10);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_2745A5414(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_27463B66C();
  v4 = [v2 BOOLForKey_];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView;
    v7 = [*(v5 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView) layer];
    [v7 setShadowRadius_];

    v9 = [*(v5 + v6) layer];
    LODWORD(v8) = 1046562734;
    [v9 setShadowOpacity_];
  }
}

uint64_t sub_2745A553C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_dragDidBeginHandler);

    v2(v3);
  }

  return result;
}

void sub_2745A5598(uint64_t a1)
{
  v2 = sub_27459F2A0();
  v3 = [v2 numberOfTouches];

  if (!v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView);

    [v4 removeFromSuperview];
  }
}

void sub_2745A5614(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView;
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v12[0] = *MEMORY[0x277CBF2C0];
  v12[1] = v4;
  v12[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform_];
  v5 = 0;
  if ((sub_27459ADC4() & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_27463B66C();
    v8 = [v6 BOOLForKey_];

    if (v8)
    {
      return;
    }

    v9 = [*(v1 + v2) layer];
    [v9 setShadowRadius_];

    v5 = 1032805417;
  }

  v10 = [*(v1 + v2) layer];
  LODWORD(v11) = v5;
  [v10 setShadowOpacity_];
}

id sub_2745A5760(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  [v3 frame];
  [v4 setFrame_];

  [a2 setNeedsLayout];

  return [a2 layoutIfNeeded];
}

uint64_t sub_2745A57F0(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745A8920;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_233;
  v13 = _Block_copy(v19);

  v14 = a2;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2745A59B8(uint64_t a1, id a2)
{
  v2 = *(a1 + 40);
  [a2 frame];
  v4 = v3;
  v6 = v5;
  [v2 frame];

  return [v2 setFrame_];
}

void sub_2745A5A2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView;
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v10[0] = *MEMORY[0x277CBF2C0];
  v10[1] = v4;
  v10[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform_];
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_27463B66C();
  v7 = [v5 BOOLForKey_];

  if ((v7 & 1) == 0)
  {
    v8 = [*(v1 + v2) layer];
    [v8 setShadowRadius_];

    v9 = [*(v1 + v2) layer];
    [v9 setShadowOpacity_];
  }
}

uint64_t sub_2745A5B5C(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745A8BB4;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_436;
  v13 = _Block_copy(v19);

  v14 = a2;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2745A5D24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = (v4 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_floatingViewOutsets);
  if (!v4)
  {
    v6 = MEMORY[0x277D768C8];
  }

  v8 = *v6;
  v7 = v6[1];
  [*(a1 + 32) bounds];
  [v5 convertRect:a2 toCoordinateSpace:?];
  v10 = v9;
  [v5 bounds];
  v11 = *(a1 + 40);
  v12 = *&v11[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView];
  v14 = v10 / v13;
  CGAffineTransformMakeScale(&v28, v14, v14);
  [v12 setTransform_];
  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);
  v17 = [v11 superview];
  [v5 convertPoint:v17 toView:{v15, v16}];
  v19 = v18;
  v21 = v20;

  CGAffineTransformMakeTranslation(&v28, -v7, -v8);
  v29.x = v19;
  v29.y = v21;
  v22 = CGPointApplyAffineTransform(v29, &v28);
  [v5 bounds];
  v23 = 1.0 - 1.0 / v14;
  v24 = v23 * CGRectGetWidth(v30) * 0.5;
  [v5 bounds];
  Height = CGRectGetHeight(v31);
  CGAffineTransformMakeTranslation(&v28, v24, v23 * Height * 0.5);
  v26 = CGPointApplyAffineTransform(v22, &v28);
  [v11 frame];
  return [v11 setFrame_];
}

uint64_t sub_2745A5F34(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions;
  swift_beginAccess();

  v5 = sub_2745A83B4((a1 + v4), a2);
  v6 = sub_274453594(*(a1 + v4));
  if (v6 < v5)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_2745C37E8(v5, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2745A604C()
{
  OUTLINED_FUNCTION_40_7();
  v0 = sub_27463B66C();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_42_7();
  if (![v2 v3])
  {
    return 0;
  }

  sub_274412734(0, &qword_28094C5E0);
  sub_27459F2A0();
  v4 = OUTLINED_FUNCTION_95_0();

  return v4 & 1;
}

uint64_t sub_2745A615C(uint64_t a1, void *a2)
{
  v3 = sub_2745A86E8(a2);
  if (v4)
  {
    if (v3 == 0xD00000000000002FLL && v4 == 0x800000027468EC70)
    {
    }

    else
    {
      v6 = sub_27463C6BC();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    [a2 setEnabled_];
  }

  return 0;
}

BOOL sub_2745A625C(void *a1, id a2)
{
  v4 = [a2 view];
  result = 0;
  if (!v4 || (v5 = v4, objc_opt_self(), v2 = swift_dynamicCastObjCClass(), v5, !v2))
  {
    sub_274412734(0, &qword_28094C5E0);
    sub_27459F2A0();
    v6 = OUTLINED_FUNCTION_95_0();

    if ((v6 & 1) == 0 || [a1 state] != 1)
    {
      return 1;
    }
  }

  return result;
}

void sub_2745A6384(int a1, id a2)
{
  v3 = v2;
  v5 = [a2 view];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2745A6EA4();
    if (v7)
    {
      v8 = v7;

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_40_7();
    v9 = sub_27463B66C();
    v10 = NSClassFromString(v9);

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = [v6 isKindOfClass_];

    if (v11)
    {
      return;
    }
  }

  v12 = [v3 window];
  if (v12)
  {
    v8 = v12;
    sub_274412734(0, &qword_28094C5E0);
    v13 = sub_27459F2A0();
    v14 = sub_27463BF7C();

    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

    [a2 locationInView_];
    v17 = sub_2745A42C4(v15, v16);
    if (v17)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {

        v18 = sub_2745910B4();

        swift_unknownObjectRelease();
        if (!v18)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      [a2 locationInView_];
      v21 = sub_2745A463C(v19, v20);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    [v3 contentOffset];
    v23 = v22;
    [v3 adjustedContentInset];
    v25 = v23 + v24;
    if (v23 + v24 >= 0.0)
    {
      [v3 contentSize];
      v30 = v29;
      [v3 adjustedContentInset];
      v32 = v30 + v31;
      [v3 adjustedContentInset];
      v34 = v32 + v33;
      OUTLINED_FUNCTION_97_0();
      Height = CGRectGetHeight(v40);
      if (v25 <= 0.0 || v34 > Height)
      {
        OUTLINED_FUNCTION_97_0();
        if (CGRectGetHeight(v41) >= v34)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_97_0();
        if (v34 - CGRectGetHeight(v42) >= v25)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_97_0();
        if (v25 >= v34 - CGRectGetHeight(v43) + 30.0)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_39();
        v26 = swift_allocObject();
        *(v26 + 16) = v3;
        *(v26 + 24) = v34;
        objc_allocWithZone(MEMORY[0x277D75D40]);
        v37 = v3;
        v28 = sub_2745A86C0;
        goto LABEL_31;
      }

      if (v25 < 30.0)
      {
        OUTLINED_FUNCTION_5();
        v26 = swift_allocObject();
        *(v26 + 16) = v3;
        objc_allocWithZone(MEMORY[0x277D75D40]);
        v38 = v3;
        v28 = sub_2745A86CC;
        goto LABEL_31;
      }
    }

    else if (v25 > -30.0)
    {
      OUTLINED_FUNCTION_5();
      v26 = swift_allocObject();
      *(v26 + 16) = v3;
      objc_allocWithZone(MEMORY[0x277D75D40]);
      v27 = v3;
      v28 = sub_2745A8D74;
LABEL_31:
      v39 = sub_2745FB6C4(v28, v26, 0.5, 1.0);
      [v39 startAnimation];
    }

LABEL_32:

    v8 = v17;
LABEL_33:
  }
}

id sub_2745A6750(void *a1)
{
  v2 = CGSizeMake([a1 adjustedContentInset]);

  return [a1 setContentOffset_];
}

id sub_2745A67A4(void *a1)
{
  [a1 bounds];
  CGRectGetHeight(v5);
  v2 = CGSizeMake([a1 adjustedContentInset]);

  return [a1 setContentOffset_];
}

void sub_2745A6888()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions) = MEMORY[0x277D84F90];
  *(OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems + v0) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems) = v1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer) = 0;
  v2 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView;
  v4 = objc_allocWithZone(type metadata accessor for WFEditorVariableBlurView());
  v5 = OUTLINED_FUNCTION_7_16();
  *(v0 + v3) = [v6 v7];
  v8 = v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_cachedSize;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_windowTouchObserver) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_indicesForVisibleRows) = v1;
  type metadata accessor for WFEditorCell();
  sub_27463832C();
  v9 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
  type metadata accessor for WFEditorItem();
  OUTLINED_FUNCTION_10_28();
  sub_2745A8678(v10, v11, v12);
  *(v0 + v9) = sub_27463B4DC();
  v13 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_queuedCells;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952670);
  *(v0 + v13) = sub_27463B4DC();
  if (sub_274453594(v1))
  {
    sub_2745737B0();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells) = v14;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession) = 0;
  v15 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_rowHeightCache;
  *(v0 + v15) = sub_27463B4DC();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___debugDropTargetView) = 0;
  OUTLINED_FUNCTION_49_4();
  __break(1u);
}

id sub_2745A6B2C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = objc_opt_self();
  v2 = [v1 systemGreenColor];
  v3 = [v2 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  v4 = [v0 layer];
  [v4 setCornerCurve_];

  v5 = [v0 layer];
  [v5 setCornerRadius_];

  v6 = [v0 layer];
  v7 = [v1 systemGreenColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = [v8 CGColor];
  [v6 setBorderColor_];

  v10 = [v0 layer];
  [v10 setBorderWidth_];

  [v0 setHidden_];
  return v0;
}

void sub_2745A6D50()
{
  sub_2745A6E40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2745A6E40()
{
  if (!qword_280952A00)
  {
    type metadata accessor for WFEditorCell();
    v0 = sub_27463835C();
    if (!v1)
    {
      atomic_store(v0, &qword_280952A00);
    }
  }
}

uint64_t sub_2745A6EA4()
{
  v1 = [v0 superview];
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      break;
    }

    v3 = [v1 superview];

    v1 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

char *sub_2745A6F90(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v32.receiver = v4;
  v32.super_class = type metadata accessor for WFEditorVariableBlurView();
  v11 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = sub_274412734(0, &qword_2809525F0);
  sub_27463B6AC();
  v13 = v11;
  v14 = sub_274595918();
  v15 = sub_2746386DC();
  [v14 setValue:v15 forKey:*MEMORY[0x277CDA4F0]];

  v16 = sub_27463B95C();
  [v14 setValue:v16 forKey:*MEMORY[0x277CDA4C8]];

  v17 = sub_27463B95C();
  [v14 setValue:v17 forKey:*MEMORY[0x277CDA448]];

  sub_274412734(0, &unk_280952A50);
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v18 = qword_280965DC8;
  v19 = qword_280965DC8;
  v20 = sub_2745A7374(0xD000000000000016, 0x800000027468EC00, v18);
  v21 = [v20 CGImage];

  [v14 setValue:v21 forKey:*MEMORY[0x277CDA4C0]];
  v22 = v13;
  v23 = [v22 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_274648570;
  *(v24 + 56) = v12;
  *(v24 + 32) = v14;
  v25 = v14;
  sub_2745A85DC(v24, v23, &selRef_setFilters_);

  v26 = [v22 layer];
  v27 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer;
  [v26 addSublayer_];

  [*&v22[v27] setStartPoint_];
  [*&v22[v27] setEndPoint_];
  sub_2745A74BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809512E0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_274648570;
  v29 = sub_274638DBC();
  v30 = MEMORY[0x277D74BF0];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  *(swift_allocObject() + 16) = ObjectType;
  sub_27463BF0C();

  swift_unknownObjectRelease();

  return v22;
}

id sub_2745A7374(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

id sub_2745A7408()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFEditorVariableBlurView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer];
  [v0 bounds];
  return [v1 setFrame_];
}

void sub_2745A74BC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_blackColor;
  if (v2 != 2)
  {
    v4 = &selRef_systemGray6Color;
  }

  v13 = [v3 *v4];
  v5 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2746486A0;
  v7 = [v13 colorWithAlphaComponent_];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v6 + 56) = v9;
  *(v6 + 32) = v8;
  v11 = [v13 colorWithAlphaComponent_];
  v12 = [v11 CGColor];

  *(v6 + 88) = v10;
  *(v6 + 64) = v12;
  sub_2745A85DC(v6, v5, &selRef_setColors_);
}

void sub_2745A764C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_27463C56C();
  __break(1u);
}

id sub_2745A7748(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFTouchObserver_touchesBeganHandler];
  *v5 = a2;
  *(v5 + 1) = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WFTouchObserver();

  v6 = objc_msgSendSuper2(&v8, sel_initWithTarget_action_, 0, 0);
  [v6 setDelegate_];
  [v6 setCancelsTouchesInView_];
  [a1 addGestureRecognizer_];

  return v6;
}

id sub_2745A7814()
{
  (*&v0[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFTouchObserver_touchesBeganHandler])();

  return [v0 setState_];
}

id sub_2745A79F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for WFEditorCell.DragState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_2745A7B40()
{
  result = qword_280952A28;
  if (!qword_280952A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952A28);
  }

  return result;
}

unint64_t sub_2745A7B94()
{
  result = qword_280952A38;
  if (!qword_280952A38)
  {
    sub_274412734(255, &qword_280952A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952A38);
  }

  return result;
}

id sub_2745A7BFC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_27463C69C();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_2745A7D40()
{
  v1 = v0;
  v2 = sub_274534D60();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AC0);
  sub_27463C4CC();

  v5 = *(*(v10 + 56) + 8 * v4);
  type metadata accessor for WFEditorItem();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952678);
  OUTLINED_FUNCTION_10_28();
  sub_2745A8678(v6, v7, v8);
  sub_27463C4EC();
  *v1 = v10;
  return v5;
}

uint64_t sub_2745A7E4C()
{
  v1 = v0;
  if ((*v0 & 0xC000000000000001) == 0)
  {
    v11 = sub_274534D60();
    if (v12)
    {
      v13 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952A98);
      sub_27463C4CC();
      v4 = v15;

      v9 = *(*(v15 + 56) + 8 * v13);
      type metadata accessor for WFEditorItem();
      type metadata accessor for WFEditorCell();
      sub_2745A8678(&qword_28094BDF8, v14, type metadata accessor for WFEditorItem);
      sub_27463C4EC();
      goto LABEL_7;
    }

    return 0;
  }

  v2 = sub_27463C53C();

  if (!v2)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  sub_27463C27C();
  sub_2745FBB18();
  v4 = v3;

  v5 = sub_274534D60();
  v7 = v6;

  if (v7)
  {

    v9 = *(*(v4 + 56) + 8 * v5);
    type metadata accessor for WFEditorItem();
    type metadata accessor for WFEditorCell();
    sub_2745A8678(&qword_28094BDF8, v10, type metadata accessor for WFEditorItem);
    sub_27463C4EC();

LABEL_7:
    *v1 = v4;
    return v9;
  }

  __break(1u);
  return result;
}

void (*sub_2745A806C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_2745A8380(v6);
  v6[9] = sub_2745A8164(v6 + 4, a2, a3);
  return sub_2745A8104;
}

void sub_2745A8104(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2745A8164(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_274534C48(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AA0);
  if (sub_27463C4CC())
  {
    v14 = sub_274534C48(a2, a3);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_27463C71C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v16 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v16 = 0;
  }

  *v8 = v16;
  return sub_2745A82A4;
}

void sub_2745A82A4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_2745FCB98(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_2744FB18C(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952670);
    sub_27463C4EC();
  }

  free(v1);
}

uint64_t (*sub_2745A8380(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2745A83A8;
}

uint64_t sub_2745A83B4(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  result = sub_274595AC0(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    v8 = sub_274453594(v5);
LABEL_36:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_27463C27C();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_36;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x277C58B20](v9, v5);
        result = swift_unknownObjectRelease();
        if (v16 != a2)
        {
          if (v8 != v9)
          {
            v12 = MEMORY[0x277C58B20](v8, v5);
            v11 = MEMORY[0x277C58B20](v9, v5);
            goto LABEL_16;
          }

LABEL_26:
          v15 = __OFADD__(v8++, 1);
          if (v15)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v10)
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 32 + 8 * v9);
        if (v11 != a2)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v10)
            {
              goto LABEL_42;
            }

            v12 = *(v5 + 32 + 8 * v8);

LABEL_16:
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_27453BA6C(v5);
              v13 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v13) = 0;
            }

            v14 = v5 & 0xFFFFFFFFFFFFFF8;
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v11;

            if ((v5 & 0x8000000000000000) != 0 || v13)
            {
              result = sub_27453BA6C(v5);
              v5 = result;
              v14 = result & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v14 + 16))
            {
              goto LABEL_43;
            }

            *(v14 + 8 * v9 + 32) = v12;

            *a1 = v5;
          }

          goto LABEL_26;
        }
      }

      v15 = __OFADD__(v9++, 1);
      if (v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_2745A85DC(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_27463B7FC();

  [a2 *a3];
}

uint64_t sub_2745A8678(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2745A86E8(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

uint64_t sub_2745A874C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_27463C27C();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2745A87F4(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_142Tm()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t objectdestroy_133Tm()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2745A8BE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 removeFromSuperview];
  return v2(v1);
}

id OUTLINED_FUNCTION_9_22()
{
  v4 = *(v1 + 280);

  return sub_2745FB6C4(v0, v2, v4, 1.0);
}

uint64_t OUTLINED_FUNCTION_19_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_39_8()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_45_5()
{

  sub_27446ECD4(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_27463BF7C();
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_27463C56C();
}

double OUTLINED_FUNCTION_51_4(double a1, double a2)
{
  result = v3 - (v4 + a2);
  **(v2 + 184) = result;
  return result;
}

id OUTLINED_FUNCTION_56_1()
{
  v4 = *(v0 + v2);

  return [v4 (v1 + 2168)];
}

double OUTLINED_FUNCTION_72_2()
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;

  return CGRectGetMidY(*&v5);
}

id OUTLINED_FUNCTION_73_2()
{

  return [v1 (v0 + 1590)];
}

id OUTLINED_FUNCTION_74_1()
{

  return [v0 (v1 + 2296)];
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return sub_27463B66C();
}

id OUTLINED_FUNCTION_93_0()
{
  v4 = *(v2 - 456);

  return [v1 (v0 + 2501)];
}

id OUTLINED_FUNCTION_94(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_95_0()
{

  return sub_27463BF7C();
}

id OUTLINED_FUNCTION_96_0(double a1, double a2)
{
  v5 = v4 + a2;

  return [v2 setFrame_];
}

id OUTLINED_FUNCTION_97_0()
{

  return [v1 (v0 + 3832)];
}

uint64_t OUTLINED_FUNCTION_98_0()
{
  *(v0 + 424) = v1;
}

id OUTLINED_FUNCTION_99(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 384);

  return [v4 a2];
}

id OUTLINED_FUNCTION_100()
{

  return [v1 (v0 + 3192)];
}

id sub_2745A9480()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_27463B66C();

  v2 = [v0 initWithString_];

  return v2;
}

id DrawerAction.attributedDescription.getter()
{
  v0 = sub_27463819C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2746381BC();
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v74 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v85 = objc_opt_self();
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v79 = v8;
    v9 = v74 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v78 = *MEMORY[0x277D76918];
    v84 = *MEMORY[0x277D740A8];
    v10 = *(v7 + 56);
    v75 = *MEMORY[0x277D76988];
    v80 = v7;
    v76 = (v7 - 8);
    v77 = v10;
    v82 = xmmword_274648570;
    v83 = v3;
    v81 = v0;
    v86 = v5;
    do
    {
      v79(v3, v9, v0);
      v11 = [v5 string];
      v12 = sub_27463B6AC();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        sub_274412734(0, &qword_280953450);
        v16 = sub_2745A9480();
        [v5 appendAttributedString_];
      }

      sub_27463818C();
      if (v17)
      {
        v18 = sub_27463B6DC();
        v20 = v19;

        if (v20)
        {
          v21 = [v85 preferredFontForTextStyle_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998);
          inited = swift_initStackObject();
          v23 = OUTLINED_FUNCTION_0_44(inited);
          *(inited + 64) = sub_274412734(v23, &qword_280952AC8);
          *(inited + 40) = v21;
          type metadata accessor for Key(0);
          sub_2744D0860();
          v24 = v3;
          v3 = v83;
          v25 = v21;
          v26 = sub_27463B4DC();
          v87 = v18;
          v88 = v20;
          MEMORY[0x277C57EA0](10, 0xE100000000000000);
          v27 = v87;
          v28 = v88;
          v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v30 = sub_2745A9D88(v27, v28, v26);
          [v86 appendAttributedString_];
        }
      }

      v31 = sub_27463817C();
      v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

      v33 = [v85 preferredFontForTextStyle_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998);
      v34 = swift_initStackObject();
      v35 = OUTLINED_FUNCTION_0_44(v34);
      *(v34 + 64) = sub_274412734(v35, &qword_280952AC8);
      *(v34 + 40) = v33;
      type metadata accessor for Key(0);
      sub_2744D0860();
      v36 = v3;
      v3 = v83;
      v37 = v33;
      sub_27463B4DC();
      v38 = sub_27463B4BC();

      [v32 addAttributes:v38 range:{0, objc_msgSend(v32, sel_length)}];

      v5 = v86;
      [v86 appendAttributedString_];

      v0 = v81;
      (*v76)(v3, v81);
      v9 += v77;
      --v6;
    }

    while (v6);
  }

  v39 = v5;
  v40 = [v39 string];
  v41 = sub_27463B6AC();
  v43 = v42;

  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998);
    v45 = swift_initStackObject();
    v46 = MEMORY[0x277D740C0];
    *(v45 + 16) = xmmword_274648570;
    v47 = *v46;
    *(v45 + 32) = *v46;
    v48 = objc_opt_self();
    v49 = v47;
    v50 = [v48 labelColor];
    *(v45 + 64) = sub_274412734(0, qword_28094A770);
    *(v45 + 40) = v50;
    type metadata accessor for Key(0);
    sub_2744D0860();
    sub_27463B4DC();
    v51 = sub_27463B4BC();

    [v39 addAttributes:v51 range:{0, objc_msgSend(v39, sel_length)}];
    v52 = v39;
LABEL_19:

    return v52;
  }

  v53 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  result = [v53 fontDescriptorWithSymbolicTraits_];
  if (result)
  {
    v55 = result;

    v56 = [objc_opt_self() fontWithDescriptor:v55 size:0.0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998);
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_2746486A0;
    v58 = *MEMORY[0x277D740A8];
    *(v57 + 32) = *MEMORY[0x277D740A8];
    v59 = sub_274412734(0, &qword_280952AC8);
    *(v57 + 40) = v56;
    v60 = *MEMORY[0x277D740C0];
    *(v57 + 64) = v59;
    *(v57 + 72) = v60;
    v61 = objc_opt_self();
    v62 = v58;
    v51 = v56;
    v63 = v60;
    v64 = [v61 labelColor];
    *(v57 + 104) = sub_274412734(0, qword_28094A770);
    *(v57 + 80) = v64;
    type metadata accessor for Key(0);
    sub_2744D0860();
    v65 = sub_27463B4DC();
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v66 = qword_28094BB00;
    v67 = sub_27463B66C();
    v68 = sub_27463B66C();

    v69 = [v66 localizedStringForKey:v67 value:v68 table:0];

    v70 = sub_27463B6AC();
    v72 = v71;

    v73 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v52 = sub_2745A9D88(v70, v72, v65);

    v39 = v53;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

id sub_2745A9D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27463B66C();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_2744D0860();
    v6 = sub_27463B4BC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 64);
  *(a1 + 32) = *(v1 + 88);
  return 0;
}

uint64_t type metadata accessor for VariableConfigurationSheet()
{
  result = qword_280952AD0;
  if (!qword_280952AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2745A9EBC()
{
  sub_274412734(319, &qword_280950DE8);
  if (v0 <= 0x3F)
  {
    sub_274481024();
    if (v1 <= 0x3F)
    {
      sub_274458288(319, &qword_28094BBC8, &unk_28094A210);
      if (v2 <= 0x3F)
      {
        sub_274458288(319, &qword_280950D10, &unk_28094D7C0);
        if (v3 <= 0x3F)
        {
          sub_2745A9FC8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2745A9FC8()
{
  if (!qword_280952AE0)
  {
    v0 = sub_27463AD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280952AE0);
    }
  }
}

uint64_t sub_2745AA044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_2745AA098()
{
  objc_opt_self();
  OUTLINED_FUNCTION_21_2();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 action];
  }

  objc_opt_self();
  OUTLINED_FUNCTION_21_2();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v0;
    v5 = [v3 variableProvider];
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRetain();
      v7 = [v3 name];
      if (!v7)
      {
        sub_27463B6AC();
        v7 = sub_27463B66C();
      }

      v8 = [v6 actionsProvidingVariableName_];

      swift_unknownObjectRelease();
      if (v8)
      {
        sub_274412734(0, &qword_28094E040);
        OUTLINED_FUNCTION_54_1();
        v9 = sub_27463B81C();

        v10 = sub_27455C158(v9);

        swift_unknownObjectRelease();

        return v10;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_2745AA1FC@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CE8);
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CF0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CF8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  sub_27463A0CC();
  v14 = sub_27463A32C();
  sub_2746390AC();
  v15 = &v5[*(v3 + 36)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D00);
  sub_2745B0558();
  sub_2745B0658();
  sub_27463A61C();
  sub_27440CB1C(v5, &qword_280952CE8);
  v20 = sub_27463AB1C();
  KeyPath = swift_getKeyPath();
  v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D28) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = &v9[*(v7 + 44)];
  v24 = *(sub_27463970C() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_274639BFC();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  v32 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v33 = sub_27463AB0C();
  v34 = swift_getKeyPath();
  v35 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C5C8) + 36)];
  *v35 = v34;
  v35[1] = v33;
  v36 = sub_27463B0CC();
  v38 = v37;
  v39 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D30) + 36)];
  *v39 = v36;
  v39[1] = v38;
  if (sub_27463A0DC())
  {
    v40 = 0.5;
  }

  else
  {
    v40 = 1.0;
  }

  sub_27441277C(v9, v13, &qword_280952CF0);
  *&v13[*(v11 + 44)] = v40;
  sub_27463A0DC();
  v41 = sub_27463B14C();
  v42 = sub_27463A0DC();
  v43 = v47;
  sub_27441277C(v13, v47, &qword_280952CF8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D38);
  v45 = v43 + *(result + 36);
  *v45 = v41;
  *(v45 + 8) = v42 & 1;
  return result;
}

uint64_t sub_2745AA5BC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D20);
  MEMORY[0x28223BE20](v4);
  v6 = &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &__src[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D40);
  MEMORY[0x28223BE20](v10);
  v12 = &__src[-v11];
  if (a2)
  {
    sub_274412C20(a1, &__src[-v11], &qword_280952CE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CE8);
    sub_2745B0558();
    sub_2745B06E4();
    return sub_274639DDC();
  }

  else
  {
    sub_27463B0CC();
    sub_27463973C();
    sub_274412C20(a1, v6, &qword_280952CE8);
    memcpy(&v6[*(v4 + 36)], __src, 0x70uLL);
    sub_27441277C(v6, v9, &qword_280952D20);
    sub_274412C20(v9, v12, &qword_280952D20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CE8);
    sub_2745B0558();
    sub_2745B06E4();
    sub_274639DDC();
    return sub_27440CB1C(v9, &qword_280952D20);
  }
}

void sub_2745AA868(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 name];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = [v3 name];
  v9 = sub_27463B6AC();
  v11 = v10;

  v12 = sub_2745AA928(v9, v11, v3);
  v14 = v13;

  *a2 = v3;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v12;
  a2[4] = v14;
}

uint64_t sub_2745AA928(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 name];
  v7 = sub_27463B6AC();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_27463C6BC();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (![a3 isRenamed])
  {
    return 0;
  }

LABEL_9:

  return a1;
}

uint64_t sub_2745AA9FC()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_27463B72C();
  v5 = *v0;
  v6 = sub_2745AA098();
  v7 = v6;
  if (v4)
  {
    if (v6)
    {
      v8 = sub_27463B66C();
      [v7 setOutputName_];
    }

    v1[1] = v3;
    v1[2] = v2;
    v9 = sub_2745AA928(v3, v2, v5);
    v11 = v10;

    v1[3] = v9;
    v1[4] = v11;
  }

  else
  {
    if (v6)
    {
      [v6 setOutputName_];
    }

    v13 = [v5 name];
    v14 = sub_27463B6AC();
    v16 = v15;

    v1[1] = v14;
    v1[2] = v16;
  }

  return result;
}

uint64_t sub_2745AAB14()
{
  v1 = *v0;
  v2 = [*v0 anchor];
  v3 = [v2 variable];

  v4 = sub_2745AA098();
  if (v4)
  {

    v5 = 0;
  }

  else
  {
    v6 = [v1 anchor];
    v7 = [v6 parameter];

    LOBYTE(v6) = sub_2745AABDC();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

id sub_2745AABDC()
{
  [v0 stateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094F530);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  return [swift_getObjCClassFromMetadata() isSubclassOfClass_];
}

uint64_t sub_2745AAC48@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 anchor];
  v4 = [v3 variable];

  v5 = [v4 icon];
  if (v5 && (v6 = [v5 hasClearBackground], v5, (v6 & 1) != 0))
  {
    v7 = MEMORY[0x277D7D6C8];
  }

  else
  {
    v7 = MEMORY[0x277D7D6D0];
  }

  v8 = *v7;
  v9 = sub_274638B7C();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

BOOL sub_2745AAD48()
{
  v1 = [*v0 anchor];
  v2 = [v1 variable];

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass() != 0;

  return v3;
}

uint64_t sub_2745AADC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952AF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952AF8);
  sub_2745AF2B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B30);
  sub_274458A14(&qword_280952B38, &qword_280952B30);
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_7_30();
  return sub_27463966C();
}

uint64_t sub_2745AAF34(id *a1)
{
  v2 = type metadata accessor for VariableConfigurationSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  *v8 = sub_274639C5C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B40);
  sub_2745ABA40(a1, 1);
  v9 = [*a1 anchor];
  v10 = [v9 variable];

  sub_2745AF398(a1, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_2745AF3FC(v5, v12 + v11);
  v13 = &v8[*(v6 + 36)];
  *v13 = v10;
  v13[1] = sub_2745AF460;
  v13[2] = v12;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AF8);
  sub_2745AF2B4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B30);
  v16 = sub_274458A14(&qword_280952B38, &qword_280952B30);
  v21 = v15;
  v22 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v14;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27463AA0C();
  return sub_27440CB1C(v8, &qword_280952AF0);
}

uint64_t sub_2745AB224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_274639EBC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B28);
  v8 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v10 = v15 - v9;
  sub_274639E8C();
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B48);
  sub_274458A14(&qword_280952B50, &qword_280952B48);
  sub_27463925C();
  v11 = sub_274458A14(&qword_280952B38, &qword_280952B30);
  sub_27463958C();
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v15[0];
  MEMORY[0x277C56680](v10, v15[0], OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v13);
}

uint64_t sub_2745AB4E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274639B2C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B58);
  return sub_2745AB540(a1, a2 + *(v4 + 44));
}

uint64_t sub_2745AB540@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_274638B7C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_274638B6C();
  v6 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_274638B8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B60);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v61 - v17;
  v19 = [*a1 anchor];
  v20 = [v19 variable];

  v21 = [v20 icon];
  if (v21)
  {
    __asm { FMOV            V0.2D, #29.0 }

    *v8 = _Q0;
    (*(v6 + 104))(v8, *MEMORY[0x277D7D690], v61);
    sub_2745AAC48(v5);
    sub_274638B9C();
    (*(v10 + 32))(v18, v12, v9);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v62 = v18;
  __swift_storeEnumTagSinglePayload(v18, v27, 1, v9);
  v28 = a1 + *(type metadata accessor for VariableConfigurationSheet() + 32);
  v29 = *v28;
  v30 = *(v28 + 1);
  v32 = *(v28 + 4);
  v31 = *(v28 + 5);
  v68 = v29;
  v69 = v30;
  v70 = v32;
  v71 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B68);
  sub_27463ACEC();

  v33 = v66;
  v34 = v67;

  *&v68 = v33;
  *(&v68 + 1) = v34;
  sub_274412BBC();
  v35 = sub_27463A53C();
  v37 = v36;
  v39 = v38;
  sub_27463A41C();
  v40 = sub_27463A50C();
  v42 = v41;
  v44 = v43;

  sub_274412C10(v35, v37, v39 & 1);

  sub_27463A3FC();
  v45 = sub_27463A4CC();
  v47 = v46;
  v49 = v48;
  sub_274412C10(v40, v42, v44 & 1);

  sub_27463ABBC();
  v50 = sub_27463A4DC();
  v52 = v51;
  LOBYTE(v42) = v53;
  v55 = v54;

  sub_274412C10(v45, v47, v49 & 1);

  v57 = v62;
  v56 = v63;
  sub_274412C20(v62, v63, &qword_280952B60);
  v58 = v64;
  sub_274412C20(v56, v64, &qword_280952B60);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B70) + 48);
  *v59 = v50;
  *(v59 + 8) = v52;
  *(v59 + 16) = v42 & 1;
  *(v59 + 24) = v55;
  *(v59 + 32) = 1;
  sub_27440B094(v50, v52, v42 & 1);

  sub_27440CB1C(v57, &qword_280952B60);
  sub_274412C10(v50, v52, v42 & 1);

  return sub_27440CB1C(v56, &qword_280952B60);
}