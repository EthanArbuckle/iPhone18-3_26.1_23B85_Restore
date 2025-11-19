void sub_21D80A7C4(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_currentTextInputModeObserver];
  if (v4)
  {
    *(v4 + 16) = 0;
  }

  v5 = [v2 viewIfLoaded];
  if (v5)
  {
    v6 = v5;
    v7 = UIView.firstResponderDescendant.getter();

    if (v7)
    {
      [v7 resignFirstResponder];
    }
  }

  [v2 resignFirstResponder];
  if ([v2 isMovingFromParentViewController] && v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 65] == 1)
  {
    v8 = 0;
    sub_21D826274(&v8);
  }

  TTRModuleState.viewWillDisappear()();

  sub_21DA9555C();
}

void sub_21D80A954()
{
  if (v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_needsTableCellResize] == 1)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_needsTableCellResize] = 0;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_21D819E80;
    *(v3 + 24) = v2;
    v7[4] = sub_21D0E6070;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_21D0E6204;
    v7[3] = &block_descriptor_92;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v1 performWithoutAnimation_];
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_21D80AB90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
  if (!*(v4 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState))
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v7 = *(v4 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 16))(ObjectType, v7);
    v10 = [v9 objectID];

    *(inited + 72) = sub_21D0D8CF0(0, &qword_280D17880);
    *(inited + 48) = v10;
    sub_21D17716C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
    sub_21DAEACDC();

    v11 = sub_21DBFA89C();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    sub_21DBFA84C();
    swift_unknownObjectRetain();
    v12 = sub_21DBFA83C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 32) = v4;
    *(v13 + 40) = 1;
    sub_21D1B5178(0, 0, v3, &unk_21DC2B1D8, v13);
  }
}

uint64_t sub_21D80AF6C(uint64_t a1)
{
  v34 = sub_21DBF56BC();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF516C();
  v13 = v12;
  v32 = v11;
  v33 = 0x800000021DC6C9E0;
  v14 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
  v15 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleCellContent(0));
  v17 = (v16 + qword_27CE8EBC8);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v35, "ReminderTitle-");
  HIBYTE(v35[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v2 + 8))(v4, v34);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = v35[0];
  v22 = v35[1];
  v23 = (v16 + qword_27CE63F98);
  *v23 = v32;
  v23[1] = v13;
  *(v16 + qword_27CE63FA0) = v14;
  v24 = (v16 + qword_27CE8EBD0);
  *v24 = 0xD000000000000017;
  v24[1] = v33;
  sub_21D0D3954(v10, v7, &qword_27CE62240);
  v25 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x68)) = 0;
  *(v16 + *((*v25 & *v16) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + *((*v25 & *v16) + 0x90)) = 0;
  sub_21D0D3954(v7, v16 + *((*v25 & *v16) + 0x78), &qword_27CE62240);
  *(v16 + *((*v25 & *v16) + 0x80)) = 0;
  v26 = (v16 + *((*v25 & *v16) + 0x88));
  *v26 = v21;
  v26[1] = v22;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62248);
  v36.receiver = v16;
  v36.super_class = v27;
  v28 = objc_msgSendSuper2(&v36, sel_init);
  sub_21D0CF7E0(v7, &qword_27CE62240);
  sub_21D0CF7E0(v10, &qword_27CE62240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62250);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 48) = 1;
  *(v29 + 49) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = 0;
  *(v29 + 72) = 1;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v30 = v28 + *((*v25 & *v28) + 0x70);
  swift_beginAccess();
  *(v30 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v29;
}

uint64_t sub_21D80B4A4()
{
  v31 = sub_21DBF56BC();
  v0 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF516C();
  v11 = v10;
  v30 = 0x800000021DC6CA00;
  v12 = type metadata accessor for TTRIReminderNotesCellContentState(0);
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = objc_allocWithZone(type metadata accessor for TTRIReminderNotesCellContent(0));
  v14 = (v13 + qword_27CE8EBF0);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v32, "ReminderNotes-");
  HIBYTE(v32[1]) = -18;
  sub_21DBF56AC();
  v15 = sub_21DBF565C();
  v17 = v16;
  (*(v0 + 8))(v2, v31);
  MEMORY[0x223D42AA0](v15, v17);

  v18 = v32[0];
  v19 = v32[1];
  v20 = (v13 + qword_27CE64028);
  *v20 = v9;
  v20[1] = v11;
  v21 = (v13 + qword_27CE8EBF8);
  *v21 = 0xD000000000000016;
  v21[1] = v30;
  *(v13 + qword_27CE64030) = 0;
  sub_21D0D3954(v8, v5, &qword_27CE5E9D0);
  v22 = MEMORY[0x277D85000];
  *(v13 + *((*MEMORY[0x277D85000] & *v13) + 0x68)) = 0;
  *(v13 + *((*v22 & *v13) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + *((*v22 & *v13) + 0x90)) = 0;
  sub_21D0D3954(v5, v13 + *((*v22 & *v13) + 0x78), &qword_27CE5E9D0);
  *(v13 + *((*v22 & *v13) + 0x80)) = 0;
  v23 = (v13 + *((*v22 & *v13) + 0x88));
  *v23 = v18;
  v23[1] = v19;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA40);
  v33.receiver = v13;
  v33.super_class = v24;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  sub_21D0CF7E0(v5, &qword_27CE5E9D0);
  sub_21D0CF7E0(v8, &qword_27CE5E9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA48);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + 48) = 1;
  *(v26 + 49) = 0;
  *(v26 + 56) = 0;
  *(v26 + 64) = 0;
  *(v26 + 72) = 1;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = v25 + *((*v22 & *v25) + 0x70);
  swift_beginAccess();
  *(v27 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v26;
}

uint64_t sub_21D80B9AC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21D80BA14()
{
  v0 = objc_allocWithZone(type metadata accessor for TTRIAppLinkCellContent(0));
  v1 = sub_21D3EC840(0, 0, 0, 0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE5BF98);
  v4 = *(v1 + qword_27CE5BF98);
  *v3 = sub_21D81A228;
  v3[1] = v2;

  sub_21D0D0E88(v4);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = (v1 + qword_27CE5BFA0);
  v7 = *(v1 + qword_27CE5BFA0);
  *v6 = sub_21D81A230;
  v6[1] = v5;

  sub_21D0D0E88(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62378);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 48) = 1;
  *(v8 + 49) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 32) = v1;
  *(v8 + 40) = 0;
  v9 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v9 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v8;
}

void sub_21D80BBE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong viewIfLoaded];
    if (v2)
    {
      v3 = v2;
      v4 = UIView.firstResponderDescendant.getter();

      if (v4)
      {
        [v4 resignFirstResponder];
      }
    }

    v5 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
    v6 = qword_27CE56D10;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE62470);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v8 = *(v5 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 16))(ObjectType, v8);
    v11 = [v10 userActivity];

    if (v11)
    {
      sub_21DBFAFBC();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *sub_21D80BD88()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result viewIfLoaded];
    if (v2)
    {
      v3 = v2;
      v4 = UIView.firstResponderDescendant.getter();

      if (v4)
      {
        [v4 resignFirstResponder];
      }
    }

    swift_unknownObjectRetain();
    sub_21D822344();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D80BE44()
{
  sub_21D80C18C(&v21);
  v19 = v22;
  v20 = v21;
  v17 = v24;
  v18 = v23;
  v0 = v25;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v40, 0, 24);
  v40[3] = 0x1FFFFFFFELL;
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  sub_21D0CF7E0(v40, &unk_27CE5EA00);
  v21 = v20;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v0;
  v26 = v1;
  v27 = v3;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0xE000000000000000;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v35 = 2;
  v4 = type metadata accessor for TTRIDetailDisclosureCellContent(0);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = objc_allocWithZone(v4);
  v6 = sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, &v21);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = MEMORY[0x277D85000];
  v11 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x108));
  swift_beginAccess();
  v12 = *v11;
  *v11 = sub_21D819FE8;
  v11[1] = v9;
  v13 = v6;

  sub_21D0D0E88(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D958);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 1;
  *(v14 + 49) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = v13 + *((*v10 & *v13) + 0x70);
  swift_beginAccess();
  *(v15 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

void sub_21D80C18C(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    if (qword_280D16900 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16908;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v6 = v5;
  }
}

void sub_21D80C280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v19 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong viewIfLoaded];
    if (v5)
    {
      v6 = v5;
      v7 = UIView.firstResponderDescendant.getter();

      if (v7)
      {
        [v7 resignFirstResponder];
      }
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *((*MEMORY[0x277D85000] & *v8) + 0x68);
      v10 = v8;
      swift_beginAccess();
      v11 = *&v10[v9];
      v12 = v11;
      static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)(v11, 3, 0, v24);

      v21 = v24[0];
      v22 = v24[1];
      v23[0] = v25[0];
      *(v23 + 9) = *(v25 + 9);
      v13 = *&v4[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
      __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v13 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
      v14 = *(v13 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor);
      v15 = *(v13 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
      v16 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
      swift_beginAccess();
      sub_21D0D3954(v13 + v16, v2, &unk_27CE622B0);
      ObjectType = swift_getObjectType();
      v18 = (*(v15 + 8))(ObjectType, v15);
      v19[0] = v21;
      v19[1] = v22;
      v20[0] = v23[0];
      *(v20 + 9) = *(v23 + 9);
      sub_21D81C504(v14, v15, v2, v13, &off_282ED4F60, v18, v19);

      sub_21D0CF7E0(v2, &unk_27CE622B0);
      sub_21D0CF7E0(&v21, &qword_27CE5D558);
    }
  }
}

uint64_t sub_21D80C538()
{
  sub_21D80C910(v22);
  v19 = v22[1];
  v20 = v22[0];
  v17 = v22[3];
  v18 = v22[2];
  v0 = v23;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v24, 0, 24);
  v24[3] = 0x1FFFFFFFELL;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_21D0CF7E0(v24, &unk_27CE5EA00);
  v4 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v5 = (v4 + qword_27CE654C0);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + qword_27CE654C8);
  *v6 = 0;
  v6[1] = 0;
  v7 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v7 & *v4) + 0x90)) = 0;
  v8 = v4 + *((*v7 & *v4) + 0x78);
  *v8 = v20;
  *(v8 + 1) = v19;
  *(v8 + 2) = v18;
  *(v8 + 3) = v17;
  v8[64] = v0;
  *(v8 + 65) = *v28;
  *(v8 + 17) = *&v28[3];
  *(v8 + 9) = v1;
  *(v8 + 10) = v3;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 119) = 0;
  *(v8 + 123) = 1;
  v8[125] = 0;
  *(v4 + *((*v7 & *v4) + 0x80)) = 0;
  v9 = (v4 + *((*v7 & *v4) + 0x88));
  *v9 = 0x6543686374697753;
  v9[1] = 0xEA00000000006C6CLL;
  v21.receiver = v4;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0);
  v10 = objc_msgSendSuper2(&v21, sel_init, 0x800000021DC547E0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + qword_27CE654C8);
  swift_beginAccess();
  v13 = *v12;
  *v12 = sub_21D81A114;
  v12[1] = v11;

  sub_21D0D0E88(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 1;
  *(v14 + 49) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 32) = v10;
  *(v14 + 40) = 0;
  v15 = v10 + *((*v7 & *v10) + 0x70);
  swift_beginAccess();
  *(v15 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

id sub_21D80C910@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = [objc_opt_self() ttr_systemBlueColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_21D80CA14()
{
  v8 = MEMORY[0x277D84F90];
  v9 = 6;
  v10 = 0;
  v11 = 1;
  v12 = 0;
  v13 = 0;
  v0 = objc_allocWithZone(type metadata accessor for TTRILocationQuickPickersCellContent());
  v1 = TTRILocationQuickPickersCellContent.init(state:)(&v8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE5BE50);
  swift_beginAccess();
  v4 = *v3;
  *v3 = sub_21D81A220;
  v3[1] = v2;

  sub_21D0D0E88(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62370);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 48) = 1;
  *(v5 + 49) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  *(v5 + 32) = v1;
  *(v5 + 40) = 0;
  v6 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v6 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v5;
}

void sub_21D80CBA8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong viewIfLoaded];
    if (v4)
    {
      v5 = v4;
      v6 = UIView.firstResponderDescendant.getter();

      if (v6)
      {
        [v6 resignFirstResponder];
      }
    }

    v7 = v1;
    sub_21D8203C4(&v7);
  }
}

uint64_t sub_21D80CC60()
{
  v0 = objc_allocWithZone(type metadata accessor for TTRILocationCellContent());
  v1 = (v0 + qword_27CE65698);
  *v1 = 0;
  v1[1] = 0;
  v2 = MEMORY[0x277D85000];
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68)) = 0;
  *(v0 + *((*v2 & *v0) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + *((*v2 & *v0) + 0x90)) = 0;
  v3 = v0 + *((*v2 & *v0) + 0x78);
  *v3 = xmmword_21DC0E710;
  *(v3 + 2) = 0;
  v3[24] = 0;
  *(v0 + *((*v2 & *v0) + 0x80)) = 0;
  v4 = v0 + *((*v2 & *v0) + 0x88);
  strcpy(v4, "LocationCell");
  v4[13] = 0;
  *(v4 + 7) = -5120;
  v12.receiver = v0;
  v12.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622F8);
  v5 = objc_msgSendSuper2(&v12, sel_init);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v5 + qword_27CE65698);
  swift_beginAccess();
  v8 = *v7;
  *v7 = sub_21D81A0E4;
  v7[1] = v6;

  sub_21D0D0E88(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62300);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 48) = 1;
  *(v9 + 49) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 1;
  *(v9 + 32) = v5;
  *(v9 + 40) = 0;
  v10 = v5 + *((*v2 & *v5) + 0x70);
  swift_beginAccess();
  *(v10 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v9;
}

uint64_t sub_21D80CF08(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2();
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21D80CF6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D20;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_21DBF516C();
  *(v0 + 40) = v1;
  *(v0 + 48) = xmmword_21DC19C40;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = sub_21DBF516C();
  *(v0 + 88) = v2;
  *(v0 + 96) = xmmword_21DC22F10;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  v5 = sub_21DBF516C();
  v7 = v6;
  memset(v28, 0, 24);
  v28[3] = 0x1FFFFFFFELL;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_21D0CF7E0(v28, &unk_27CE5EA00);
  v17 = v4;
  v18 = 0;
  v19 = 0;
  v20 = 0x80;
  v21 = v5;
  v22 = v7;
  v23 = 0;
  v24 = 0;
  v25 = v0;
  v26 = 1;
  v27 = 0;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622E8));
  v9 = sub_21D538160(&v17, 0, 0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x277D85000];
  v12 = (v9 + *((*MEMORY[0x277D85000] & *v9) + 0x100));
  swift_beginAccess();
  v13 = *v12;
  *v12 = sub_21D81A0B4;
  v12[1] = v10;

  sub_21D0D0E88(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622F0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 1;
  *(v14 + 49) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 32) = v9;
  *(v14 + 40) = 0;
  v15 = v9 + *((*v11 & *v9) + 0x70);
  swift_beginAccess();
  *(v15 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t sub_21D80D35C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v20 = 0;
    v1 = 0x4010000000000000;
    v2 = sub_21D539DCC;
    v3 = sub_21D539DD0;
    v4 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v1 = 0;
    v20 = 0;
    memset(v19, 0, 24);
  }

  v19[3] = v4;
  v19[4] = v3;
  v19[5] = 0;
  v19[6] = v2;
  v19[7] = 0;
  v19[8] = v1;
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  v6 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v5 + *(v6 + 40));
  }

  ShouldCategorizeGroceryItemsSSSb_tFZ_0 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO30personTriggerSectionFooterText32listShouldCategorizeGroceryItemsSSSb_tFZ_0(v7);
  v10 = v9;
  sub_21D0D3954(v19, v18, &qword_27CE5E690);
  v16[3] = &type metadata for TTRITablePlainTextContentConfigurationProvider;
  v16[0] = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  v16[1] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  *(v11 + 24) = v10;
  v16[4] = sub_21D81A6A8;
  v16[5] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  *(v12 + 24) = v10;
  v16[6] = sub_21D81A6B4;
  v16[7] = v12;
  v16[8] = 0;
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC08D10;
  swift_bridgeObjectRetain_n();
  *(v13 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell, sub_21D80D6B0);
  *(v13 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v13 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personUnsetDetailCell, sub_21D80DD10);
  *(v13 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v13 + 64) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personSetDetailCell, sub_21D80E230);
  *(v13 + 72) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 200) = 0;
  *(v14 + 208) = 0;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 89) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 169) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v18, v14 + 32, &qword_27CE5E690);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v16, v14 + 112, &qword_27CE5E690);
  swift_endAccess();
  *(v14 + 192) = v13;
  sub_21D0CF7E0(v19, &qword_27CE5E690);
  return v14;
}

uint64_t sub_21D80D6B0()
{
  sub_21D80DABC(v22);
  v19 = v22[1];
  v20 = v22[0];
  v17 = v22[3];
  v18 = v22[2];
  v0 = v23;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v24, 0, 24);
  v24[3] = 0x1FFFFFFFELL;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_21D0CF7E0(v24, &unk_27CE5EA00);
  v4 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v5 = (v4 + qword_27CE654C0);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + qword_27CE654C8);
  *v6 = 0;
  v6[1] = 0;
  v7 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v7 & *v4) + 0x90)) = 0;
  v8 = v4 + *((*v7 & *v4) + 0x78);
  *v8 = v20;
  *(v8 + 1) = v19;
  *(v8 + 2) = v18;
  *(v8 + 3) = v17;
  v8[64] = v0;
  *(v8 + 65) = *v28;
  *(v8 + 17) = *&v28[3];
  *(v8 + 9) = v1;
  *(v8 + 10) = v3;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 118) = 0;
  *(v4 + *((*v7 & *v4) + 0x80)) = 0;
  v9 = (v4 + *((*v7 & *v4) + 0x88));
  *v9 = 0x6543686374697753;
  v9[1] = 0xEA00000000006C6CLL;
  v21.receiver = v4;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0);
  v10 = objc_msgSendSuper2(&v21, sel_init, 0x800000021DC547E0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + qword_27CE654C8);
  swift_beginAccess();
  v13 = *v12;
  *v12 = sub_21D81A1F0;
  v12[1] = v11;

  sub_21D0D0E88(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 1;
  *(v14 + 49) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 32) = v10;
  *(v14 + 40) = 0;
  v15 = v10 + *((*v7 & *v10) + 0x70);
  swift_beginAccess();
  *(v15 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

id sub_21D80DABC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = [objc_opt_self() ttr_systemGreenColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

void *sub_21D80DBA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 120);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [result viewIfLoaded];
    if (v7)
    {
      v8 = v7;
      v9 = UIView.firstResponderDescendant.getter();

      if (v9)
      {
        [v9 resignFirstResponder];
      }
    }

    swift_unknownObjectRetain();
    a3(v4);
    swift_unknownObjectRelease();
    if (v4)
    {
      if (qword_27CE57188 != -1)
      {
        swift_once();
      }

      v10 = &qword_27CE66AD0;
    }

    else
    {
      if (qword_27CE57190 != -1)
      {
        swift_once();
      }

      v10 = &qword_27CE66AE0;
    }

    v11 = *v10;
    v12 = v10[1];
    sub_21DBF8E0C();
    sub_21D818548(v11, v12);
  }

  return result;
}

uint64_t sub_21D80DD10(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF516C();
    v3 = v2;
    v4 = sub_21DBFA12C();
    v5 = [objc_opt_self() _systemImageNamed_];

    v6 = 0;
    v7 = 0x80;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF516C();
    v3 = v8;
    v5 = 0;
    v7 = 0;
    v6 = 0x1FFFFFFFELL;
  }

  memset(v21, 0, 24);
  v21[3] = 0x1FFFFFFFELL;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_21D0CF7E0(v21, &unk_27CE5EA00);
  *&v25 = v1;
  *(&v25 + 1) = v3;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = v5;
  v30 = 0;
  v31 = 0;
  v32 = v6;
  v33 = 0u;
  v34 = 0u;
  v35 = v7;
  v9 = objc_allocWithZone(type metadata accessor for TTRIActionCellContent());
  v10 = sub_21DA884EC(0, 0x65436E6F69746341, 0xEA00000000006C6CLL, 0, &v25);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = MEMORY[0x277D85000];
  v15 = (v10 + *((*MEMORY[0x277D85000] & *v10) + 0x108));
  swift_beginAccess();
  v16 = *v15;
  *v15 = sub_21D81A1E8;
  v15[1] = v13;
  v17 = v10;

  sub_21D0D0E88(v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62368);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 48) = 1;
  *(v18 + 49) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 1;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = v17 + *((*v14 & *v17) + 0x70);
  swift_beginAccess();
  *(v19 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v18;
}

void sub_21D80E138()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = *((*MEMORY[0x277D85000] & *v2) + 0x68), v4 = v2, swift_beginAccess(), v5 = *&v4[v3], v6 = v5, v4, v5))
    {
      swift_unknownObjectRetain();
      sub_21D82222C();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21D80E230()
{
  v0 = objc_allocWithZone(type metadata accessor for TTRIPersonCellContent(0));
  v1 = sub_21D933E54(0, 0, 0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE63E60);
  v4 = *(v1 + qword_27CE63E60);
  *v3 = sub_21D81A1E0;
  v3[1] = v2;

  sub_21D0D0E88(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62360);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 48) = 1;
  *(v5 + 49) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  *(v5 + 32) = v1;
  *(v5 + 40) = 0;
  v6 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v6 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_21D80E390()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    sub_21D82222C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D80E400(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v11 = 0;
    v1 = 0x4010000000000000;
    v2 = sub_21D539DCC;
    v3 = sub_21D539DD0;
    v4 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v1 = 0;
    v11 = 0;
    memset(v10, 0, 24);
  }

  v10[3] = v4;
  v10[4] = v3;
  v10[5] = 0;
  v10[6] = v2;
  v10[7] = 0;
  v10[8] = v1;
  sub_21D0D3954(v10, v9, &qword_27CE5E690);
  memset(v8, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D00;
  *(v5 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAssigneeOptionsCell, sub_21D80E620);
  *(v5 + 40) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 89) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 169) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v9, v6 + 32, &qword_27CE5E690);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v8, v6 + 112, &qword_27CE5E690);
  swift_endAccess();
  *(v6 + 192) = v5;
  sub_21D0CF7E0(v10, &qword_27CE5E690);
  return v6;
}

uint64_t sub_21D80E620(uint64_t a1)
{
  sub_21D80DABC(v45);
  v29 = v45[1];
  v30 = v45[0];
  v27 = v45[3];
  v28 = v45[2];
  v2 = v46;
  v3 = a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  v4 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 + *(v4 + 40));
  }

  ShouldCategorizeGroceryItemsSSSb_tFZ_0 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO08assigneeE9CellTitle32listShouldCategorizeGroceryItemsSSSb_tFZ_0(v5);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59980);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *&v31 = sub_21DBF516C();
  *(&v31 + 1) = v10;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  nullsub_1(&v31, v10, v11);
  v12 = v38;
  *(v9 + 128) = v37;
  *(v9 + 144) = v12;
  *(v9 + 160) = v39;
  *(v9 + 176) = v40;
  v13 = v34;
  *(v9 + 64) = v33;
  *(v9 + 80) = v13;
  v14 = v36;
  *(v9 + 96) = v35;
  *(v9 + 112) = v14;
  v15 = v32;
  *(v9 + 32) = v31;
  *(v9 + 48) = v15;
  memset(v41, 0, 24);
  v41[3] = 0x1FFFFFFFELL;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  sub_21D0CF7E0(v41, &unk_27CE5EA00);
  v47[1] = v29;
  v47[0] = v30;
  v47[3] = v27;
  v47[2] = v28;
  v48 = v2;
  v49 = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  v50 = v8;
  v52 = 0;
  v51 = 0;
  v53 = v9;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v16 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
  v61 = 0;
  v17 = *(v16 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_assigneeMenuItemAvatarProvider);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62350));

  v19 = sub_21D538380(v47, v17, &off_282EDBC08);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = MEMORY[0x277D85000];
  v22 = (v19 + *((*MEMORY[0x277D85000] & *v19) + 0x100));
  swift_beginAccess();
  v23 = *v22;
  *v22 = sub_21D81A1D8;
  v22[1] = v20;

  sub_21D0D0E88(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62358);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + 48) = 1;
  *(v24 + 49) = 0;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  *(v24 + 72) = 1;
  *(v24 + 32) = v19;
  *(v24 + 40) = 0;
  v25 = v19 + *((*v21 & *v19) + 0x70);
  swift_beginAccess();
  *(v25 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v24;
}

void sub_21D80EAB8(_OWORD *a1)
{
  v1 = a1[12];
  v33 = a1[11];
  v34 = v1;
  v35 = a1[13];
  v2 = a1[8];
  v29 = a1[7];
  v30 = v2;
  v3 = a1[10];
  v31 = a1[9];
  v32 = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
    swift_beginAccess();
    v7 = type metadata accessor for TTRReminderDetailViewModel(0);
    if ((*(*(v7 - 8) + 48))(v6, 1, v7) || (v8 = v6 + *(v7 + 104), v9 = *(v8 + 48), v11 = *v8, v10 = *(v8 + 16), v27[2] = *(v8 + 32), v27[3] = v9, v27[0] = v11, v27[1] = v10, v13 = *(v8 + 80), v12 = *(v8 + 96), v14 = *(v8 + 112), v27[4] = *(v8 + 64), v27[5] = v13, v28 = v14, v27[6] = v12, !v11))
    {
    }

    else
    {
      v16 = *&v5[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
      v15 = *&v5[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter + 8];
      ObjectType = swift_getObjectType();
      v26 = v16;
      v23 = v33;
      v24 = v34;
      v25 = v35;
      v19 = v29;
      v20 = v30;
      v21 = v31;
      v22 = v32;
      sub_21D7A9690(v27, v18);
      swift_unknownObjectRetain();
      sub_21D1D9A84(&v29, v18);
      TTRReminderDetailPresenterCapability.request(updateAssignee:)(&v19, ObjectType, *(v15 + 16));

      sub_21D7A96C8(v27);
      v18[4] = v23;
      v18[5] = v24;
      v18[6] = v25;
      v18[0] = v19;
      v18[1] = v20;
      v18[2] = v21;
      v18[3] = v22;
      sub_21D1D9AE0(v18);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D80EC88()
{
  memset(v4, 0, 73);
  memset(v3, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D10;
  *(v0 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell, sub_21D80EE68);
  *(v0 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v0 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell, sub_21D80FAAC);
  *(v0 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v0 + 64) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell, sub_21D80FDB8);
  *(v0 + 72) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 89) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 169) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v4, v1 + 32, &qword_27CE5E690);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v3, v1 + 112, &qword_27CE5E690);
  swift_endAccess();
  *(v1 + 192) = v0;
  return v1;
}

uint64_t sub_21D80EE68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC1C120;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_21DBF516C();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = sub_21DBF516C();
  *(v0 + 136) = v2;
  *(v0 + 144) = xmmword_21DC19C40;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = sub_21DBF516C();
  *(v0 + 184) = v3;
  *(v0 + 192) = xmmword_21DC22F10;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = sub_21DBF516C();
  *(v0 + 232) = v4;
  *(v0 + 240) = xmmword_21DC2B090;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  sub_21D80F2E0(&v18);
  v5 = v19;
  v6 = sub_21DBF516C();
  v8 = v7;
  memset(v27, 0, 24);
  v27[3] = 0x1FFFFFFFELL;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  sub_21D0CF7E0(v27, &unk_27CE5EA00);
  v19 = v5;
  v20 = v6;
  v21 = v8;
  v22 = 0;
  v23 = 0;
  v24 = v0;
  v25 = 1;
  v26 = 0;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62290));
  v10 = sub_21D53814C(&v18, 0, 0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x277D85000];
  v13 = (v10 + *((*MEMORY[0x277D85000] & *v10) + 0x100));
  swift_beginAccess();
  v14 = *v13;
  *v13 = sub_21D819F80;
  v13[1] = v11;

  sub_21D0D0E88(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62298);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = 1;
  *(v15 + 49) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  v16 = v10 + *((*v12 & *v10) + 0x70);
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v15;
}

id sub_21D80F2E0@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = [objc_opt_self() configurationWithWeight_];
    v8 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    result = [objc_opt_self() ttr_systemRedColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_21D80F428(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 112);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    a3(v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D80F4B4()
{
  sub_21D80F880(v22);
  v19 = v22[1];
  v20 = v22[0];
  v17 = v22[3];
  v18 = v22[2];
  v0 = v23;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v24, 0, 24);
  v24[3] = 0x1FFFFFFFELL;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_21D0CF7E0(v24, &unk_27CE5EA00);
  v4 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v5 = (v4 + qword_27CE654C0);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + qword_27CE654C8);
  *v6 = 0;
  v6[1] = 0;
  v7 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v7 & *v4) + 0x90)) = 0;
  v8 = v4 + *((*v7 & *v4) + 0x78);
  *v8 = v20;
  *(v8 + 1) = v19;
  *(v8 + 2) = v18;
  *(v8 + 3) = v17;
  v8[64] = v0;
  *(v8 + 65) = *v28;
  *(v8 + 17) = *&v28[3];
  *(v8 + 9) = v1;
  *(v8 + 10) = v3;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 118) = 0;
  *(v4 + *((*v7 & *v4) + 0x80)) = 0;
  v9 = (v4 + *((*v7 & *v4) + 0x88));
  *v9 = 0x6543686374697753;
  v9[1] = 0xEA00000000006C6CLL;
  v21.receiver = v4;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0);
  v10 = objc_msgSendSuper2(&v21, sel_init, 0x800000021DC547E0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + qword_27CE654C8);
  swift_beginAccess();
  v13 = *v12;
  *v12 = sub_21D819FB0;
  v12[1] = v11;

  sub_21D0D0E88(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 1;
  *(v14 + 49) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 32) = v10;
  *(v14 + 40) = 0;
  v15 = v10 + *((*v7 & *v10) + 0x70);
  swift_beginAccess();
  *(v15 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

void sub_21D80F880(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    v5 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D16948 != -1)
    {
      swift_once();
    }

    v7 = qword_280D16950;
    *a1 = v6;
    *(a1 + 8) = 0;
    *(a1 + 16) = v7;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v8 = v7;
  }
}

void sub_21D80F9BC(uint64_t a1)
{
  v1 = *(a1 + 120);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong viewIfLoaded];
    if (v4)
    {
      v5 = v4;
      v6 = UIView.firstResponderDescendant.getter();

      if (v6)
      {
        [v6 resignFirstResponder];
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    TTRReminderDetailPresenterCapability.request(updateFlagged:)(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D80FAAC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  v26[0] = xmmword_21DC19C40;
  memset(&v26[1], 0, 73);
  sub_21D0CF7E0(v26, &unk_27CE5E9E0);
  *&v15 = v0;
  *(&v15 + 1) = v2;
  v16 = 0;
  v17 = 0xE000000000000000;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v3 = objc_allocWithZone(type metadata accessor for TTRIListCellContent(0));
  v4 = sub_21DA87F1C(0, 0x6C6C65437473694CLL, 0xE800000000000000, 1, &v15);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = MEMORY[0x277D85000];
  v9 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x108));
  swift_beginAccess();
  v10 = *v9;
  *v9 = sub_21D81A020;
  v9[1] = v7;
  v11 = v4;

  sub_21D0D0E88(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622D0);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 48) = 1;
  *(v12 + 49) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = v11 + *((*v8 & *v11) + 0x70);
  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v12;
}

uint64_t sub_21D80FDB8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v19, ObjectType, v2);
    swift_unknownObjectRelease();
    if (LOBYTE(v19[0]) != 2 && (v19[0] & 1) != 0)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  v4 = sub_21DBF516C();
  v6 = v5;
  sub_21D810174(&v20);
  v19[0] = v4;
  v19[1] = v6;
  v19[2] = 0;
  v19[3] = 0xE000000000000000;
  v7 = objc_allocWithZone(type metadata accessor for TTRISectionCellContent(0));
  v8 = sub_21DA882F0(0, 0x436E6F6974636553, 0xEB000000006C6C65, 1, v19);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = MEMORY[0x277D85000];
  v13 = (v8 + *((*MEMORY[0x277D85000] & *v8) + 0x108));
  swift_beginAccess();
  v14 = *v13;
  *v13 = sub_21D819FF0;
  v13[1] = v11;
  v15 = v8;

  sub_21D0D0E88(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622C0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 48) = 1;
  *(v16 + 49) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 1;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = v15 + *((*v12 & *v15) + 0x70);
  swift_beginAccess();
  *(v17 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v16;
}

id sub_21D810174@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D168D8 != -1)
  {
    swift_once();
  }

  v3 = qword_280D168E0;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    v4 = qword_280D168E0;
    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = v3;
    result = [v7 ttr_systemBlueColor];
    v6 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

void sub_21D810234(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v8 traitCollection];
      v10 = [v9 userInterfaceIdiom];

      if (v10 == 1)
      {
        v11 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
        swift_beginAccess();
        v12 = *(v7 + v11);
        v13 = v12;
        static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)(v12, 0, 1, &v14);

        v17 = v14;
        v18 = v15;
        *v19 = v16[0];
        *&v19[9] = *(v16 + 9);
      }

      else
      {
        *v19 = 0;
        v17 = 0u;
        v18 = 0u;
        *&v19[8] = xmmword_21DC0A830;
        v19[24] = 0;
      }

      v14 = v17;
      v15 = v18;
      v16[0] = *v19;
      *(v16 + 9) = *&v19[9];
      a3(1, &v14);

      sub_21D0CF7E0(&v17, &qword_27CE5D558);
    }

    else
    {
    }
  }
}

uint64_t sub_21D8103F8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    memset(v12, 0, 73);
    memset(v11, 0, 73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC08D00;
    *(v9 + 32) = sub_21D80B9AC(a2, a3);
    *(v9 + 40) = &protocol witness table for TTRITableCell<A>;
    type metadata accessor for TTRITableSection();
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 89) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 169) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 216) = 1;
    swift_beginAccess();
    sub_21D0F02F4(v12, v6 + 32, &qword_27CE5E690);
    swift_endAccess();
    swift_beginAccess();
    sub_21D0F02F4(v11, v6 + 112, &qword_27CE5E690);
    swift_endAccess();
    *(v6 + 192) = v9;
    *(v3 + v4) = v6;
  }

  return v6;
}

uint64_t sub_21D8105B4()
{
  sub_21D810920(&v25);
  v23 = v26;
  v24 = v25;
  v21 = v28;
  v22 = v27;
  v0 = v29;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  v4 = objc_opt_self();
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v5 = sub_21DBFB61C();
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:{1, 0x800000021DC547E0}];

  v7 = sub_21DBFA16C();
  v9 = v8;

  memset(v44, 0, 24);
  v44[3] = 0x1FFFFFFFELL;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  sub_21D0CF7E0(v44, &unk_27CE5EA00);
  v25 = v24;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v0;
  v30 = v1;
  v31 = v3;
  v32 = 0;
  v33 = 0;
  v34 = v7;
  v35 = v9;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = 2;
  v10 = type metadata accessor for TTRIDetailDisclosureCellContent(0);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = objc_allocWithZone(v10);
  v12 = sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, &v25);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = MEMORY[0x277D85000];
  v15 = (v12 + *((*MEMORY[0x277D85000] & *v12) + 0x108));
  swift_beginAccess();
  v16 = *v15;
  *v15 = sub_21D819FB8;
  v15[1] = v13;
  v17 = v12;

  sub_21D0D0E88(v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D958);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 48) = 1;
  *(v18 + 49) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 1;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = v17 + *((*v14 & *v17) + 0x70);
  swift_beginAccess();
  *(v19 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v18;
}

id sub_21D810920@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration))
  {
    result = 0;
    v6 = 0x80;
  }

  else
  {
    result = [objc_opt_self() ttr_systemBrownColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_21D8109E0(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();
    a2(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D810A64()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentSection;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentSection))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentSection);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_21DC08D20;
    *(v3 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAttachmentCell, sub_21D811290);
    *(v3 + 40) = &protocol witness table for TTRITableCell<A>;
    *(v3 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentsGroup, sub_21D810C60);
    *(v3 + 56) = &protocol witness table for TTRITableGroup;
    memset(v6, 0, 73);
    type metadata accessor for TTRITableSection();
    memset(v5, 0, 73);
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 89) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 169) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 216) = 1;
    swift_beginAccess();
    sub_21D0F02F4(v6, v2 + 32, &qword_27CE5E690);
    swift_endAccess();
    swift_beginAccess();
    sub_21D0F02F4(v5, v2 + 112, &qword_27CE5E690);
    swift_endAccess();
    *(v2 + 192) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_21D810C60()
{
  type metadata accessor for TTRITableGroup();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 96) = 2;
  *(v0 + 48) = MEMORY[0x277D84F90];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_beginAccess();
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 56) = 1;
  *(v0 + 64) = sub_21D81A15C;
  *(v0 + 72) = v3;

  sub_21D0E5BE4(v4, v5);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  *(v0 + 80) = sub_21D81A164;
  *(v0 + 88) = v6;
  v9 = *(v0 + 96);
  *(v0 + 96) = 1;

  sub_21D81A16C(v7, v8, v9);

  return v0;
}

void sub_21D810E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAF8);
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
LABEL_8:

    return;
  }

  v12 = v11;
  v9 = v10;
LABEL_10:
  v13 = *&v8[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
  v14 = MEMORY[0x277D85000];
  v15 = *(v9 + 32) + *((*MEMORY[0x277D85000] & **(v9 + 32)) + 0x78);
  swift_beginAccess();
  v16 = *v15;
  v36 = *(v15 + 24);
  if (v12)
  {
    v17 = *(v12 + 32) + *((*v14 & **(v12 + 32)) + 0x78);
    swift_beginAccess();
    v18 = *v17;
    v19 = *(v17 + 8);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v22 = *(v13 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    v23 = v18;
    v24 = v18;
    sub_21DBF8E0C();
    v25 = v20;
    v33 = v19;
    v34 = v20;
    v32 = v23;
    if (v21)
    {
      v26 = v25;
      v31 = v20;
      v35 = v21;
    }

    else
    {
      v35 = 0;
      v31 = 0;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v22 = *(v13 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  }

  ObjectType = swift_getObjectType();
  v28 = *(v22 + 336);
  v30 = v16;
  sub_21DBF8E0C();
  v29 = v36;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28(v29, v31, a5 & 1, ObjectType, v22);
  swift_unknownObjectRelease();

  sub_21D81A184(v32, v33, v35, v34);
  swift_unknownObjectRelease();
}

void sub_21D811128()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAF8);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
      v4 = *(v2 + 32) + *((*MEMORY[0x277D85000] & **(v2 + 32)) + 0x78);
      swift_beginAccess();
      v5 = *v4;
      v6 = *(v4 + 24);
      v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 328);
      v10 = v5;
      sub_21DBF8E0C();
      v11 = v6;
      swift_unknownObjectRetain();
      v9(v11, ObjectType, v7);

      swift_unknownObjectRelease();

      v1 = v10;
    }
  }
}

uint64_t sub_21D811290(UIViewController *a1)
{
  v2 = *(*(&a1->super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_attachmentImportingController);
  v3.super.super.isa = TTRIAttachmentImportingController.menuForAvailableSources(presentingIn:)(a1).super.super.isa;

  v4 = *(&a1->super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
  if (v4 == 1)
  {
    v5 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v24 = 0x800000021DC54840;
    v7 = sub_21DBF516C();
    v9 = v8;
    v10 = 0;
    v11 = 0x80;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v24 = 0x800000021DC547E0;
    v7 = sub_21DBF516C();
    v9 = v12;
    v6 = 0;
    v11 = 0;
    v10 = 0x1FFFFFFFELL;
  }

  v13 = v4 ^ 1;
  memset(v26, 0, 24);
  v26[3] = 0x1FFFFFFFELL;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v14 = v3.super.super.isa;
  sub_21D0CF7E0(v26, &unk_27CE5EA00);
  v15 = objc_allocWithZone(type metadata accessor for TTRIMenuCellContent(0));
  v16 = MEMORY[0x277D85000];
  *(v15 + *((*MEMORY[0x277D85000] & *v15) + 0x68)) = 0;
  *(v15 + *((*v16 & *v15) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + *((*v16 & *v15) + 0x90)) = 0;
  v17 = v15 + *((*v16 & *v15) + 0x78);
  *v17 = v6;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = v10;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  v17[64] = v11;
  *(v17 + 65) = *v31;
  *(v17 + 17) = *&v31[3];
  *(v17 + 9) = v7;
  *(v17 + 10) = v9;
  v17[88] = v13;
  v18 = *v30;
  *(v17 + 23) = *&v30[3];
  *(v17 + 89) = v18;
  *(v17 + 12) = v3;
  *(v15 + *((*v16 & *v15) + 0x80)) = 0;
  v19 = (v15 + *((*v16 & *v15) + 0x88));
  *v19 = 0x6C6C6543756E654DLL;
  v19[1] = 0xE800000000000000;
  v25.receiver = v15;
  v25.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62330);
  v20 = [(UIViewController *)&v25 init];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62338);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + 48) = 1;
  *(v21 + 49) = 0;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  *(v21 + 72) = 1;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = v20 + *((*v16 & *v20) + 0x70);
  swift_beginAccess();
  *(v22 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v21;
}

uint64_t sub_21D8116EC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v8 = xmmword_21DC0E710;
  v9 = 0;
  v10 = sub_21DBF516C();
  v11 = v0;
  v12 = 0;
  v1 = sub_21D5CB094(0, 3, &v8, 1);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE652D8);
  swift_beginAccess();
  v4 = *v3;
  *v3 = sub_21D8196AC;
  v3[1] = v2;

  sub_21D0D0E88(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E670);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 48) = 1;
  *(v5 + 49) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  *(v5 + 32) = v1;
  *(v5 + 40) = 0;
  v6 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v6 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_21D811904(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if (v3)
    {
      sub_21D59B950(v2, v1, 1);
      v7 = [v2 string];
      v8 = sub_21DBFA16C();
      v10 = v9;

      sub_21D5968AC(v2, v1, 1);
      v2 = v8;
      v1 = v10;
    }

    else
    {
      sub_21D59B950(v2, v1, 0);
    }

    v11.value._countAndFlagsBits = v2;
    v11.value._object = v1;
    TTRReminderDetailPresenterCapability.request(updateURL:)(v11);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D811A30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D20;
  *(v2 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell, sub_21D80C538);
  *(v2 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v2 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14);
  *(v2 + 56) = &protocol witness table for TTRITableCell<A>;
  v15 = v2;
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF516C();
    v5 = v4;
    *(&v21 + 1) = &type metadata for TTRITablePlainTextContentConfigurationProvider;
    *&v20 = v3;
    *(&v20 + 1) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    *&v22 = sub_21D81A6A8;
    *(&v22 + 1) = v6;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
    *&v23[0] = sub_21D81A6B4;
    *(&v23[0] + 1) = v7;
    *&v23[1] = 0;
    BYTE8(v23[1]) = 1;
    *(&v17 + 1) = &type metadata for TTRITableEmptyContentConfigurationProvider;
    *&v18 = sub_21D539DD0;
    *(&v18 + 1) = 0;
    *&v19[0] = sub_21D539DCC;
    *(&v19[0] + 1) = 0;
    *&v19[1] = 0x4010000000000000;
    BYTE8(v19[1]) = 0;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    swift_bridgeObjectRetain_n();
    *(inited + 32) = sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell, sub_21D817BD4);
    *(inited + 40) = &protocol witness table for TTRITableCell<A>;
    *(inited + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell, sub_21D80CF6C);
    v9 = (inited + 56);
  }

  else
  {
    v22 = 0u;
    memset(v23, 0, 25);
    v20 = 0u;
    v21 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    memset(v19, 0, 25);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell, sub_21D80CC60);
    v9 = (inited + 40);
  }

  *v9 = &protocol witness table for TTRITableCell<A>;
  sub_21D562A50(inited);
  sub_21D0D3954(&v20, v14, &qword_27CE5E690);
  sub_21D0D3954(&v16, v13, &qword_27CE5E690);
  v10 = v15;
  type metadata accessor for TTRITableSection();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 200) = 0;
  *(v11 + 208) = 0;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 89) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 169) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v14, v11 + 32, &qword_27CE5E690);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v13, v11 + 112, &qword_27CE5E690);
  swift_endAccess();
  *(v11 + 192) = v10;
  sub_21D0CF7E0(&v16, &qword_27CE5E690);
  sub_21D0CF7E0(&v20, &qword_27CE5E690);
  return v11;
}

uint64_t sub_21D811E88()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  v17[3] = &type metadata for TTRITablePlainTextContentConfigurationProvider;
  v17[0] = v0;
  v17[1] = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  v17[4] = sub_21D5395CC;
  v17[5] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v17[6] = sub_21D5395D4;
  v17[7] = v4;
  v17[8] = 0;
  v18 = 1;
  sub_21D539630(v17, v16);
  v9 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  v10 = sub_21D539DD0;
  v11 = 0;
  v12 = sub_21D539DCC;
  v13 = 0;
  v14 = 0x4010000000000000;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC0AFB0;
  swift_bridgeObjectRetain_n();
  *(v5 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell, sub_21D80FAAC);
  *(v5 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v5 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell, sub_21D80FDB8);
  *(v5 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v5 + 64) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell, sub_21D80BE44);
  *(v5 + 72) = &protocol witness table for TTRITableCell<A>;
  *(v5 + 80) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4);
  *(v5 + 88) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 89) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 169) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v16, v6 + 32, &qword_27CE5E690);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v8, v6 + 112, &qword_27CE5E690);
  swift_endAccess();
  *(v6 + 192) = v5;
  sub_21D5395DC(v17);
  return v6;
}

uint64_t sub_21D8121EC()
{
  v5 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  v6 = sub_21D537CCC;
  v7 = 0;
  v8 = sub_21D537CD0;
  v9 = 0;
  v10 = 0x4010000000000000;
  v11 = 0;
  memset(v3, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D20;
  *(v0 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4);
  *(v0 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v0 + 48) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell, sub_21D80EE68);
  *(v0 + 56) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 89) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 169) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 216) = 1;
  swift_beginAccess();
  sub_21D0F02F4(v4, v1 + 32, &qword_27CE5E690);
  swift_endAccess();
  swift_beginAccess();
  sub_21D0F02F4(v3, v1 + 112, &qword_27CE5E690);
  swift_endAccess();
  *(v1 + 192) = v0;
  return v1;
}

void sub_21D8123D4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController))
  {
    v3 = 1;
    MEMORY[0x28223BE20](a1);
    v2 = v1;
    TTRITableDataController.performBatchUpdates(by:updates:)(&v3, sub_21D81A050);
  }
}

void sub_21D812474(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v262 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v262 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v262 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v262 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v262 - v17;
  v19 = (a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
  v20 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 56);
  *&v277 = a1;
  v21 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_textSection);
  v278 = a2;
  v275 = v20;
  if (v20)
  {
    v36 = v277;
    if (v21)
    {

      TTRITableSection.isHidden.setter(1);
    }
  }

  else
  {
    if (v21)
    {

      TTRITableSection.isHidden.setter(0);
    }

    *&v276 = v9;
    *&v279 = v6;
    v22 = sub_21D10FA9C(*MEMORY[0x277D76A08], *MEMORY[0x277D74410], 0, 0);
    v23 = v22;
    v24 = 0;
    LODWORD(v273) = *v19;
    if (v273 == 1)
    {
      v25 = v22;
      v24 = v23;
    }

    *&v274 = v23;
    v26 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C) + 32);

    *&v271 = type metadata accessor for TTRRemindersListViewModel.Item;
    sub_21D81A2E0(a2, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    v27 = type metadata accessor for TTRReminderDetailViewModel(0);
    v28 = *(v278 + v27[12]);
    v270 = v278 + v27[28];
    v29 = *(v270 + 8);
    v30 = type metadata accessor for TTRIReminderTitleCellContentState(0);
    v31 = v30[7];
    *&v18[v30[5]] = v28;
    *&v18[v30[6]] = v29;
    *&v18[v31] = v24;
    (*(*(v30 - 1) + 56))(v18, 0, 1, v30);
    v32 = *((*MEMORY[0x277D85000] & *v26) + 0x78);
    swift_beginAccess();
    sub_21D0D3954(v26 + v32, v15, &qword_27CE62240);
    swift_beginAccess();
    *&v272 = v24;
    v33 = v28;
    v34 = v278;
    sub_21DBF8E0C();
    sub_21D0EB8DC(v18, v26 + v32, &qword_27CE62240);
    swift_endAccess();
    sub_21D5D1D38(v15);

    v35 = v15;
    v36 = v277;
    sub_21D0CF7E0(v35, &qword_27CE62240);
    sub_21D0CF7E0(v18, &qword_27CE62240);
    v37 = *(sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell, sub_21D80B4A4) + 32);

    sub_21D81A2E0(v34, v12, v271);
    v38 = *(v34 + v27[18]);
    v39 = *(v270 + 8);
    LOBYTE(v29) = *(v34 + v27[30]);
    v40 = type metadata accessor for TTRIReminderNotesCellContentState(0);
    *&v12[v40[5]] = v38;
    *&v12[v40[6]] = v39;
    v12[v40[7]] = v29;
    v12[v40[8]] = v273;
    (*(*(v40 - 1) + 56))(v12, 0, 1, v40);
    v41 = *((*MEMORY[0x277D85000] & *v37) + 0x78);
    swift_beginAccess();
    v42 = v276;
    sub_21D0D3954(v37 + v41, v276, &qword_27CE5E9D0);
    swift_beginAccess();
    sub_21DBF8E0C();
    v43 = v38;
    sub_21D0EB8DC(v12, v37 + v41, &qword_27CE5E9D0);
    swift_endAccess();
    sub_21D5D2398(v42);

    v44 = v42;
    a2 = v278;
    sub_21D0CF7E0(v44, &qword_27CE5E9D0);
    sub_21D0CF7E0(v12, &qword_27CE5E9D0);
    v20 = v275;
    v6 = v279;
  }

  if ((v20 & 0x4000) != 0 || (v45 = a2 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 152), v46 = *(v45 + 16), v337 = *v45, *v338 = v46, v47 = *(v45 + 48), *&v338[16] = *(v45 + 32), *&v338[32] = v47, *&v338[48] = *(v45 + 64), v48 = v337, v49 = *(v45 + 24), v352 = *(v45 + 8), v353 = v49, !v337))
  {
    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell, sub_21D80BA14);
    TTRITableSection.isHidden.setter(1);
  }

  else
  {
    v50 = *(v45 + 48);
    v299 = *(v45 + 32);
    v300 = v50;
    *&v301 = *(v45 + 64);
    v51 = *(v45 + 16);
    v297 = *v45;
    v298 = v51;
    v274 = *&v338[24];
    v280 = *&v338[24];
    v276 = *&v338[40];
    v52 = v338[24];
    sub_21D81A058(&v297, v281);
    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell, sub_21D80BA14);
    TTRITableSection.isHidden.setter(0);

    v53 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell, sub_21D80BA14) + 32);

    v54 = MEMORY[0x277D85000];
    v55 = v53 + *((*MEMORY[0x277D85000] & *v53) + 0x78);
    swift_beginAccess();
    *&v279 = v6;
    v56 = *(v55 + 1);
    v57 = *(v55 + 2);
    v58 = v55[24];
    if (v55[25])
    {
      v59 = 256;
    }

    else
    {
      v59 = 0;
    }

    v60 = v48;
    sub_21DBF8E0C();
    sub_21D5C924C(v48, v56, v57, v59 | v58);

    v61 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell;
    v62 = *(*(v277 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell) + 32);
    *&v281[0] = v48;
    *(v281 + 8) = v352;
    *(&v281[1] + 8) = v353;
    *(&v281[3] + 8) = v276;
    *(&v281[2] + 8) = v274;
    v63 = v62;
    v64 = TTRReminderDetailViewModel.AppLink.localizedDescription.getter();
    v66 = v65;
    v67 = v63 + *((*v54 & *v63) + 0x78);
    swift_beginAccess();
    v68 = *v67;
    v69 = v67[24];
    if (v67[25])
    {
      v70 = 256;
    }

    else
    {
      v70 = 0;
    }

    v71 = v68;
    sub_21D5C924C(v68, v64, v66, v70 | v69);

    v72 = v276;
    if (v52)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    v74 = *(*(v277 + v61) + 32);
    v75 = v74 + *((*v54 & *v74) + 0x78);
    swift_beginAccess();
    v76 = *v75;
    v77 = *(v75 + 1);
    v78 = *(v75 + 2);
    if (v72 == 1)
    {
      v73 = 0;
    }

    if (v75[25])
    {
      v79 = 256;
    }

    else
    {
      v79 = 0;
    }

    v80 = v74;
    v36 = v277;
    v81 = v80;
    v82 = v76;
    sub_21DBF8E0C();
    v83 = v79 | v73;
    a2 = v278;
    sub_21D5C924C(v76, v77, v78, v83);

    v84 = *(*(v36 + v61) + 32);
    if (*(&v276 + 1))
    {
      v85 = v72 >= 2;
    }

    else
    {
      v85 = 0;
    }

    if (v85)
    {
      v86 = 256;
    }

    else
    {
      v86 = 0;
    }

    v87 = v84 + *((*MEMORY[0x277D85000] & *v84) + 0x78);
    swift_beginAccess();
    v88 = *v87;
    v89 = *(v87 + 1);
    v90 = *(v87 + 2);
    v91 = v87[24];
    v92 = v84;
    v20 = v275;
    v93 = v92;
    v94 = v88;
    sub_21DBF8E0C();
    v95 = v86 | v91;
    v6 = v279;
    sub_21D5C924C(v88, v89, v90, v95);

    sub_21D0CF7E0(&v337, &qword_27CE626B0);
  }

  if (!*(v36 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability))
  {
    __break(1u);
    return;
  }

  v96 = type metadata accessor for TTRReminderDetailViewModel(0);
  sub_21D81A2E0(a2 + *(v96 + 80), v6, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v97 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  (*(*(v97 - 8) + 56))(v6, 0, 1, v97);

  sub_21D52EB9C(v6);
  sub_21D530D58(v6, v20);
  sub_21D531E10(v6, v20);
  sub_21D52E3C4();
  sub_21D5334D0();

  sub_21D52E6EC();
  sub_21D5334D0();

  sub_21D5335B4();

  sub_21D0CF7E0(v6, &qword_27CE5D998);
  *&v276 = v96;
  if ((v20 & 2) == 0)
  {
    v98 = a2 + *(v96 + 92);
    v99 = *v98;
    v100 = *(v98 + 8);
    v101 = *(v98 + 24);
    *&v274 = *(v98 + 16);
    v102 = *(v98 + 32);
    if (!(v102 >> 6))
    {
      *&v337 = v99;
      *(&v337 + 1) = v100;
      *v338 = v101;
      v338[8] = v102 & 1 | 0x80;
      sub_21D48BB60(v99, v100, v274, v101, v102);
      v267 = v100;
      sub_21DBF8E0C();
      v104 = v101;
      v105 = 0;
      goto LABEL_39;
    }

    if (v102 >> 6 == 1)
    {
      *&v337 = v99;
      *(&v337 + 1) = v100;
      *v338 = 0;
      v338[8] = 0;
      v103 = v274;
      sub_21D48BB60(v99, v100, v274, v101, v102);
      v267 = v100;
      sub_21D48BB60(v99, v100, v103, v101, v102);
      v104 = 0;
      v105 = 1;
LABEL_39:
      sub_21D8188FC(&v337, v104, v105, v36, a2);
      sub_21D5D35A4();
      goto LABEL_50;
    }

    if (!(v274 | v100 | v99 | v101) && v102 == 128)
    {
      if (qword_280D1BAA8 != -1)
      {
        goto LABEL_109;
      }

      goto LABEL_43;
    }

    if (v102 == 128 && v99 == 1 && !(v274 | v100 | v101))
    {
      v99 = 1;
      sub_21D81434C(1, v36);
      goto LABEL_48;
    }
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection, sub_21D811A30);
  TTRITableSection.isHidden.setter(1);

  v107 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14) + 32);

  v108 = v107 + *((*MEMORY[0x277D85000] & *v107) + 0x78);
  swift_beginAccess();
  v109 = *v108;
  v110 = v108[8];
  v112 = *(v108 + 4);
  v111 = *(v108 + 5);
  LOBYTE(v337) = 1;
  *&v363 = v109;
  BYTE8(v363) = v110;
  v364 = 0;
  v365 = 1;
  v366 = v112;
  v367 = v111;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D5C8AC8(&v363);

  v267 = 0;
  *&v274 = 0;
  v101 = 0;
  v102 = 128;
  v99 = 2;
LABEL_50:
  v269 = v101;
  v270 = v99;
  v268 = v102;
  if ((v20 & 4) != 0)
  {
    v265 = 0;
    v266 = 0;
LABEL_56:
    v122 = 0;
    v120 = 0;
    v123 = 0;
    v121 = 1;
    v264 = 2;
    goto LABEL_57;
  }

  v113 = (a2 + *(v276 + 100));
  v114 = *v113;
  v115 = v113[1];
  v116 = v113[2];
  v265 = v116;
  v266 = v114;
  if (v115)
  {
    if (v115 != 1)
    {
      if (v115 != 2)
      {
        v117 = v116;
        sub_21DBF8E0C();
        v118 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personSetDetailCell, sub_21D80E230) + 32);

        sub_21DBF8E0C();
        v119 = v117;
        v264 = v115;
        sub_21D5C944C(v114, v115, v116);

        v120 = 0;
        v121 = 0;
        v122 = 1;
        v123 = 1;
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    v264 = 1;
    v122 = 0;
    v120 = 0;
    v123 = 0;
    v121 = 0;
  }

  else
  {
    v264 = 0;
    v122 = 0;
    v121 = 0;
    v120 = 1;
    v123 = 1;
  }

LABEL_57:
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personTriggerSection, sub_21D80D35C);
  TTRITableSection.isHidden.setter(v121);

  v124 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell, sub_21D80D6B0) + 32);

  v125 = MEMORY[0x277D85000];
  v126 = v124 + *((*MEMORY[0x277D85000] & *v124) + 0x78);
  swift_beginAccess();
  v127 = *v126;
  v128 = *(v126 + 1);
  v129 = *(v126 + 2);
  v333[3] = *(v126 + 3);
  v333[2] = v129;
  v333[1] = v128;
  v333[0] = v127;
  v130 = *(v126 + 4);
  v131 = *(v126 + 5);
  v132 = *(v126 + 6);
  *(v334 + 14) = *(v126 + 110);
  v334[0] = v132;
  v333[5] = v131;
  v333[4] = v130;
  v133 = *v126;
  v134 = *(v126 + 1);
  v135 = *(v126 + 2);
  v355 = *(v126 + 3);
  v354 = v135;
  v353 = v134;
  v352 = v133;
  v136 = *(v126 + 4);
  v137 = *(v126 + 5);
  v138 = *(v126 + 6);
  v359 = *(v126 + 14);
  v358 = v138;
  v357 = v137;
  v356 = v136;
  v360 = v123;
  v139 = *(v126 + 121);
  v362 = v126[125];
  v361 = v139;
  sub_21D539B98(v333, &v337);
  sub_21D5C6D8C(&v352);

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personUnsetDetailCell, sub_21D80DD10);
  sub_21D5D3E3C(v120 ^ 1u);

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personSetDetailCell, sub_21D80E230);
  sub_21D5D3E3C(v122 ^ 1u);

  v140 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell;
  v141 = *(*(v36 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell) + 32);
  v142 = (v141 + *((*v125 & *v141) + 0x78));
  swift_beginAccess();
  v143 = *v142;
  v144 = v142[1];
  v145 = v142[2];
  v335[3] = v142[3];
  v335[2] = v145;
  v335[1] = v144;
  v335[0] = v143;
  v146 = v142[4];
  v147 = v142[5];
  v148 = v142[6];
  *(v336 + 14) = *(v142 + 110);
  v336[0] = v148;
  v335[5] = v147;
  v335[4] = v146;
  v149 = *v142;
  v150 = v142[1];
  v151 = v142[2];
  v348[3] = v142[3];
  v348[2] = v151;
  v348[1] = v150;
  v348[0] = v149;
  v152 = v142[4];
  v153 = v142[5];
  v154 = v142[6];
  *&v349[12] = *(v142 + 108);
  *v349 = v154;
  v348[5] = v153;
  v348[4] = v152;
  v350 = 1;
  v351 = BYTE13(v336[1]);
  v155 = v141;
  sub_21D539B98(v335, &v337);
  sub_21D5C6D8C(v348);

  v156 = *(*(v36 + v140) + 32);
  v157 = (v156 + *((*v125 & *v156) + 0x78));
  swift_beginAccess();
  v158 = *v157;
  v159 = v157[1];
  v160 = v157[2];
  v331[3] = v157[3];
  v331[2] = v160;
  v331[1] = v159;
  v331[0] = v158;
  v161 = v157[4];
  v162 = v157[5];
  v163 = v157[6];
  *(v332 + 14) = *(v157 + 110);
  v332[0] = v163;
  v331[5] = v162;
  v331[4] = v161;
  v164 = *v157;
  v165 = v157[1];
  v166 = v157[2];
  v345[3] = v157[3];
  v345[2] = v166;
  v345[1] = v165;
  v345[0] = v164;
  v167 = v157[4];
  v168 = v157[5];
  v169 = v157[6];
  *&v346[13] = *(v157 + 109);
  *v346 = v169;
  v345[5] = v168;
  v345[4] = v167;
  v347 = v122 | v120;
  v170 = v156;
  sub_21D539B98(v331, &v337);
  sub_21D5C6D8C(v345);

  v171 = v275;
  if ((v275 & 0x100) != 0)
  {
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v279 = 0u;
    v277 = 0u;
    v272 = 0u;
    v273 = 0u;
    v271 = 0u;
    v263 = 0u;
    v172 = v278;
LABEL_96:
    v227 = v276;
    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection, sub_21D80E400);
    TTRITableSection.isHidden.setter(1);

    v324 = v277;
    v323 = v279;
    v326 = v272;
    v325 = v273;
    v328 = v263;
    v327 = v271;
    *&v329 = v224;
    *(&v329 + 1) = v225;
    v330 = v226;
    goto LABEL_104;
  }

  v172 = v278;
  v173 = v278 + *(v276 + 104);
  v174 = *(v173 + 80);
  v317 = *(v173 + 64);
  v318 = v174;
  v319 = *(v173 + 96);
  v320 = *(v173 + 112);
  v175 = *(v173 + 16);
  v313 = *v173;
  v314 = v175;
  v176 = *(v173 + 48);
  v315 = *(v173 + 32);
  v316 = v176;
  v321[0] = v313;
  v321[1] = v175;
  v321[2] = v315;
  v321[3] = v176;
  v322 = v320;
  v321[6] = v319;
  v321[5] = v174;
  v321[4] = v317;
  v177 = v313;
  if (!v313)
  {
    v277 = v314;
    v279 = v313;
    v272 = v316;
    v273 = v315;
    v263 = v318;
    v271 = v317;
    v225 = *(&v319 + 1);
    v224 = v319;
    v226 = v320;
    goto LABEL_96;
  }

  sub_21D7A9690(&v313, &v337);
  v36 = &v337;
  *&v263 = v321 + 8;
  sub_21D1D9A84(v321 + 8, &v337);
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection, sub_21D80E400);
  TTRITableSection.isHidden.setter(0);

  *&v279 = *(v177 + 16);
  if (v279)
  {
    a2 = 0;
    v178 = (v177 + 32);
    v262[1] = 0x800000021DC44900;
    *&v271 = 0x800000021DC4D940;
    *&v273 = "ew where no contact is selected";
    *&v272 = 0x800000021DC54940;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a2 >= *(v177 + 16))
      {
        __break(1u);
LABEL_109:
        swift_once();
LABEL_43:
        *&v337 = sub_21DBF516C();
        *(&v337 + 1) = v106;
        *v338 = 0;
        v338[8] = 0;
        sub_21D8188FC(&v337, 0, 1, v36, a2);
        sub_21D5D35A4();
        v99 = 0;
LABEL_48:
        v267 = 0;
        *&v274 = 0;
        v101 = 0;
        v102 = 128;
        goto LABEL_50;
      }

      v191 = v178[1];
      v190 = v178[2];
      v281[0] = *v178;
      v281[1] = v191;
      v281[2] = v190;
      v193 = v178[5];
      v192 = v178[6];
      v194 = v178[4];
      v281[3] = v178[3];
      v281[4] = v194;
      v282[0] = v193;
      v282[1] = v192;
      if (!*&v281[0])
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v198 = sub_21DBF516C();
        v200 = v199;
        v327 = v281[4];
        v328 = v282[0];
        v329 = v282[1];
        v323 = v281[0];
        v324 = v281[1];
        v326 = v281[3];
        v325 = v281[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21D214B98(0, *(v20 + 16) + 1, 1, v20);
        }

        v204 = *(v20 + 16);
        v203 = *(v20 + 24);
        v205 = v204 + 1;
        if (v204 >= v203 >> 1)
        {
          v20 = sub_21D214B98((v203 > 1), v204 + 1, 1, v20);
        }

        *&v338[56] = v326;
        *&v338[72] = v327;
        *&v338[88] = v328;
        *&v338[104] = v329;
        *&v338[8] = v323;
        *&v338[24] = v324;
        *&v337 = v198;
        *(&v337 + 1) = v200;
        *v338 = 0;
        *&v338[40] = v325;
        *&v338[120] = 0;
        *&v339 = 0;
        nullsub_1(&v337, v201, v202);
        *(v20 + 16) = v205;
        v206 = v20 + 152 * v204;
        v207 = *v338;
        *(v206 + 32) = v337;
        *(v206 + 48) = v207;
        v208 = *&v338[16];
        v209 = *&v338[32];
        v210 = *&v338[64];
        *(v206 + 96) = *&v338[48];
        *(v206 + 112) = v210;
        *(v206 + 64) = v208;
        *(v206 + 80) = v209;
        v211 = *&v338[80];
        v212 = *&v338[96];
        v213 = *&v338[112];
        *(v206 + 176) = v339;
        *(v206 + 144) = v212;
        *(v206 + 160) = v213;
        *(v206 + 128) = v211;
        v214 = *(v20 + 24);
        v215 = v204 + 2;
        if (v215 > (v214 >> 1))
        {
          v20 = sub_21D214B98((v214 > 1), v215, 1, v20);
        }

        sub_21D6B9EA4(&v297);
        *(v20 + 16) = v215;
        v181 = v20 + 152 * v205;
        v216 = v298;
        *(v181 + 32) = v297;
        *(v181 + 48) = v216;
        v217 = v299;
        v218 = v300;
        v219 = v302;
        *(v181 + 96) = v301;
        *(v181 + 112) = v219;
        *(v181 + 64) = v217;
        *(v181 + 80) = v218;
        v186 = v303;
        v187 = v304;
        v188 = v305;
        v189 = v306;
        goto LABEL_62;
      }

      if (v282[1])
      {
        *&v338[48] = v281[4];
        *&v338[64] = v282[0];
        *&v338[80] = v282[1];
        v337 = v281[0];
        *v338 = v281[1];
        *&v338[32] = v281[3];
        *&v338[16] = v281[2];
        sub_21D1D9C94(&v337, &v297);
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v195 = sub_21DBF516C();
        v197 = v196;
      }

      else
      {
        if (*(&v281[2] + 1))
        {
          v197 = *(&v281[2] + 1);
          v195 = *&v281[2];
        }

        else
        {
          v197 = *(&v281[1] + 1);
          if (*(&v281[1] + 1))
          {
            v195 = *&v281[1];
            sub_21DBF8E0C();
          }

          else
          {
            v197 = *(&v281[4] + 1);
            if (*(&v281[4] + 1))
            {
              v195 = *&v281[4];
            }

            else
            {
              v197 = *(&v282[0] + 1);
              if (!*(&v282[0] + 1))
              {
                sub_21D1D9A84(v281, &v337);
                v222 = qword_280D1BAA8;
                sub_21DBF8E0C();
                if (v222 != -1)
                {
                  swift_once();
                }

                v195 = sub_21DBF516C();
                v197 = v223;

                swift_bridgeObjectRelease_n();
                goto LABEL_83;
              }

              v195 = *&v282[0];
            }
          }
        }

        sub_21D1D9A84(v281, &v337);
        sub_21DBF8E0C();
      }

LABEL_83:
      v327 = v281[4];
      v328 = v282[0];
      v329 = v282[1];
      v323 = v281[0];
      v324 = v281[1];
      v326 = v281[3];
      v325 = v281[2];
      v297 = v281[0];
      v298 = v281[1];
      v302 = v282[0];
      v303 = v282[1];
      v299 = v281[2];
      v300 = v281[3];
      v301 = v281[4];
      sub_21D1D9C94(&v297, &v337);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21D214B98(0, *(v20 + 16) + 1, 1, v20);
      }

      v221 = *(v20 + 16);
      v220 = *(v20 + 24);
      if (v221 >= v220 >> 1)
      {
        v20 = sub_21D214B98((v220 > 1), v221 + 1, 1, v20);
      }

      sub_21D1D9AE0(v281);
      *&v338[56] = v326;
      *&v338[72] = v327;
      *&v338[88] = v328;
      *&v338[104] = v329;
      *&v338[8] = v323;
      *&v338[24] = v324;
      *&v337 = v195;
      *(&v337 + 1) = v197;
      *v338 = 0;
      *&v338[40] = v325;
      *&v338[120] = 0;
      *&v339 = 0;
      nullsub_1(&v337, v179, v180);
      *(v20 + 16) = v221 + 1;
      v181 = v20 + 152 * v221;
      v182 = *v338;
      *(v181 + 32) = v337;
      *(v181 + 48) = v182;
      v183 = *&v338[16];
      v184 = *&v338[32];
      v185 = *&v338[64];
      *(v181 + 96) = *&v338[48];
      *(v181 + 112) = v185;
      *(v181 + 64) = v183;
      *(v181 + 80) = v184;
      v186 = *&v338[80];
      v187 = *&v338[96];
      v188 = *&v338[112];
      v189 = v339;
LABEL_62:
      *(v181 + 176) = v189;
      *(v181 + 144) = v187;
      *(v181 + 160) = v188;
      *(v181 + 128) = v186;
      ++a2;
      v178 += 7;
      if (v279 == a2)
      {
        goto LABEL_100;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_100:
  v228 = v277;
  v229 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAssigneeOptionsCell, sub_21D80E620) + 32);

  v230 = v229 + *((*MEMORY[0x277D85000] & *v229) + 0x78);
  swift_beginAccess();
  v231 = *v230;
  v232 = *(v230 + 2);
  v298 = *(v230 + 1);
  v299 = v232;
  v297 = v231;
  v233 = *(v230 + 3);
  v234 = *(v230 + 4);
  v235 = *(v230 + 6);
  v302 = *(v230 + 5);
  v303 = v235;
  v300 = v233;
  v301 = v234;
  v236 = *(v230 + 7);
  v237 = *(v230 + 8);
  v238 = *(v230 + 10);
  v306 = *(v230 + 9);
  v307 = v238;
  v304 = v236;
  v305 = v237;
  v239 = *(v230 + 11);
  v240 = *(v230 + 12);
  v241 = *(v230 + 13);
  v311 = v230[224];
  v310 = v241;
  v309 = v240;
  v308 = v239;
  v242 = *(v230 + 3);
  v294 = *(v230 + 2);
  v295 = v242;
  v296 = *(v230 + 8);
  v243 = *(v230 + 1);
  v292 = *v230;
  v293 = v243;
  v244 = *(v230 + 88);
  v245 = *(v230 + 8);
  v284 = *(v230 + 7);
  v285 = v245;
  v246 = *(v230 + 9);
  v247 = *(v230 + 10);
  v290 = *(v230 + 13);
  v291 = v244;
  v248 = *(v230 + 12);
  v288 = *(v230 + 11);
  v289 = v248;
  v286 = v246;
  v287 = v247;
  v249 = v311;
  sub_21D0D3954(&v297, &v337, &unk_27CE5EB10);

  v312[4] = v288;
  v312[5] = v289;
  v312[6] = v290;
  v312[0] = v284;
  v312[1] = v285;
  v312[3] = v287;
  v312[2] = v286;
  sub_21D1D9AE0(v312);

  v250 = *(v263 + 80);
  v288 = *(v263 + 64);
  v289 = v250;
  v290 = *(v263 + 96);
  v251 = *(v263 + 16);
  v284 = *v263;
  v285 = v251;
  v252 = *(v263 + 48);
  v253 = v228 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  v286 = *(v263 + 32);
  v287 = v252;
  swift_beginAccess();
  v254 = v276;
  if ((*(*(v276 - 8) + 48))(v253, 1, v276))
  {
    v255 = 0;
  }

  else
  {
    v255 = *(v253 + *(v254 + 40));
  }

  v172 = v278;
  ShouldCategorizeGroceryItemsSSSb_tFZ_0 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO08assigneeE9CellTitle32listShouldCategorizeGroceryItemsSSSb_tFZ_0(v255);
  v258 = v257;

  v259 = *(*(v228 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAssigneeOptionsCell) + 32);
  *v338 = v293;
  v337 = v292;
  *&v338[16] = v294;
  *&v338[32] = v295;
  *&v338[48] = v296;
  *&v338[56] = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  *&v338[72] = v291;
  *&v338[64] = v258;
  *&v338[88] = v20;
  v341 = v288;
  v342 = v289;
  v343 = v290;
  *&v338[96] = v284;
  *&v338[112] = v285;
  v340 = v287;
  v339 = v286;
  v344 = v249;
  v260 = v259;
  sub_21D0D3954(&v337, v281, &unk_27CE5EB10);
  sub_21D5C9608(&v337);

  v281[2] = v294;
  v281[3] = v295;
  v281[0] = v292;
  v281[1] = v293;
  *&v281[4] = v296;
  *(&v281[4] + 1) = ShouldCategorizeGroceryItemsSSSb_tFZ_0;
  *(v282 + 8) = v291;
  *&v282[0] = v258;
  *(&v282[1] + 1) = v20;
  v282[2] = v284;
  v282[3] = v285;
  v282[7] = v289;
  v282[8] = v290;
  v282[5] = v287;
  v282[6] = v288;
  v282[4] = v286;
  v283 = v249;
  sub_21D0CF7E0(v281, &unk_27CE5EB10);
  v327 = v317;
  v328 = v318;
  v329 = v319;
  v330 = v320;
  v323 = v313;
  v324 = v314;
  v325 = v315;
  v326 = v316;
  v171 = v275;
  v227 = v276;
LABEL_104:
  sub_21D8148AC(v171);
  sub_21D815860();
  if ((v171 & 0x80) != 0 || (v261 = *(v172 + *(v227 + 128))) == 0)
  {
    sub_21D810A64();
    TTRITableSection.isHidden.setter(1);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAttachmentCell, sub_21D811290);
    sub_21D5D3E3C(1);

    sub_21D815E84(MEMORY[0x277D84F90]);

    sub_21D7A96C8(&v323);
    sub_21D7A9648(v266, v264, v265);
    sub_21D48C240(v270, v267, v274, v269, v268);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_21D810A64();
    TTRITableSection.isHidden.setter(0);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAttachmentCell, sub_21D811290);
    sub_21D5D3E3C(0);

    sub_21D815E84(v261);

    sub_21D7A96C8(&v323);
    sub_21D7A9648(v266, v264, v265);
    sub_21D48C240(v270, v267, v274, v269, v268);
  }
}

void sub_21D81434C(char a1, uint64_t a2)
{
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection, sub_21D811A30);
  v4 = ~a1;
  TTRITableSection.isHidden.setter((a1 & 1) == 0);

  v5 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14) + 32);

  v6 = MEMORY[0x277D85000];
  v7 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x78);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[8];
  v11 = *(v7 + 4);
  v10 = *(v7 + 5);
  LOBYTE(v93[0]) = 1;
  *&v98 = v8;
  BYTE8(v98) = v9;
  v99 = 0;
  v100 = 1;
  v101 = v11;
  v102 = v10;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D5C8AC8(&v98);

  if ((v4 & 1) == 0)
  {
    v12 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell, sub_21D80C538) + 32);

    v13 = v12 + *((*v6 & *v12) + 0x78);
    swift_beginAccess();
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 3);
    v68[2] = *(v13 + 2);
    v68[3] = v16;
    v68[0] = v14;
    v68[1] = v15;
    v17 = *(v13 + 4);
    v18 = *(v13 + 5);
    v19 = *(v13 + 6);
    *(v69 + 14) = *(v13 + 110);
    v68[5] = v18;
    v69[0] = v19;
    v68[4] = v17;
    v20 = *v13;
    v21 = *(v13 + 1);
    v22 = *(v13 + 2);
    v93[3] = *(v13 + 3);
    v93[2] = v22;
    v93[1] = v21;
    v93[0] = v20;
    v23 = *(v13 + 4);
    v24 = *(v13 + 5);
    v25 = *(v13 + 6);
    v94 = *(v13 + 14);
    v93[6] = v25;
    v93[5] = v24;
    v93[4] = v23;
    v95 = 0;
    v26 = *(v13 + 121);
    v97 = v13[125];
    v96 = v26;
    sub_21D539B98(v68, v88);
    sub_21D5C6D8C(v93);

    v27 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell;
    v28 = *(*(a2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell) + 32);
    v29 = (v28 + *((*v6 & *v28) + 0x78));
    swift_beginAccess();
    v30 = v29[4];
    v31 = v29[5];
    v32 = *(v29 + 110);
    v76[0] = v29[6];
    v33 = *v29;
    v34 = v29[1];
    v35 = v29[3];
    v72 = v29[2];
    v73 = v35;
    v70 = v33;
    v71 = v34;
    *(v76 + 14) = v32;
    v74 = v30;
    v75 = v31;
    v36 = v28;
    sub_21D539B98(&v70, v88);

    v88[2] = v72;
    v88[3] = v73;
    v88[4] = v74;
    v88[0] = v70;
    v88[1] = v71;
    *v92 = *(v76 + 8);
    *&v92[14] = *(&v76[1] + 6);
    v89 = v75;
    v90 = 0;
    v91 = 0;
    sub_21D5C6D8C(v88);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell, sub_21D80CC60);
    sub_21D5D3E3C(1);

    sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell, sub_21D817BD4);
    sub_21D5D3E3C(1);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell, sub_21D80CF6C);
    sub_21D5D3E3C(1);

    sub_21D5D3E3C(1);

    v37 = *(*(a2 + v27) + 32);
    v38 = (v37 + *((*v6 & *v37) + 0x78));
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[1];
    v41 = v38[3];
    v77[2] = v38[2];
    v77[3] = v41;
    v77[0] = v39;
    v77[1] = v40;
    v42 = v38[4];
    v43 = v38[5];
    v44 = v38[6];
    *&v78[14] = *(v38 + 110);
    v77[5] = v43;
    *v78 = v44;
    v77[4] = v42;
    v45 = *v38;
    v46 = v38[1];
    v47 = v38[3];
    v84[2] = v38[2];
    v84[3] = v47;
    v84[0] = v45;
    v84[1] = v46;
    v48 = v38[4];
    v49 = v38[5];
    v50 = v38[6];
    *&v85[12] = *(v38 + 108);
    v84[5] = v49;
    *v85 = v50;
    v84[4] = v48;
    v86 = 1;
    v87 = v78[29];
    v51 = v37;
    sub_21D539B98(v77, v81);
    sub_21D5C6D8C(v84);

    v52 = *(*(a2 + v27) + 32);
    v53 = (v52 + *((*v6 & *v52) + 0x78));
    swift_beginAccess();
    v54 = *v53;
    v55 = v53[1];
    v56 = v53[3];
    v79[2] = v53[2];
    v79[3] = v56;
    v79[0] = v54;
    v79[1] = v55;
    v57 = v53[4];
    v58 = v53[5];
    v59 = v53[6];
    *(v80 + 14) = *(v53 + 110);
    v79[5] = v58;
    v80[0] = v59;
    v79[4] = v57;
    v60 = *v53;
    v61 = v53[1];
    v62 = v53[3];
    v81[2] = v53[2];
    v81[3] = v62;
    v81[0] = v60;
    v81[1] = v61;
    v63 = v53[4];
    v64 = v53[5];
    v65 = v53[6];
    *&v82[13] = *(v53 + 109);
    v81[5] = v64;
    *v82 = v65;
    v81[4] = v63;
    v83 = 0;
    v66 = v52;
    sub_21D539B98(v79, &v67);
    sub_21D5C6D8C(v81);
  }
}

uint64_t sub_21D8148AC(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v165 - v5;
  v7 = type metadata accessor for TTRReminderDetailViewModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  sub_21D0D3954(v2 + v11, v6, &qword_27CE62270);
  v12 = *(v8 + 48);
  v179 = v7;
  if (v12(v6, 1, v7) == 1)
  {
    return sub_21D0CF7E0(v6, &qword_27CE62270);
  }

  sub_21D819EB0(v6, v10, type metadata accessor for TTRReminderDetailViewModel);
  if ((a1 & 0x400) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10[v179[28]];
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell, sub_21D80BE44);
  v174 = v14;
  v15 = v14 ^ 1u;
  sub_21D5D3E3C(v15);

  v173 = v15;
  if ((v15 & 1) == 0)
  {
    v16 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell) + 32);
    v17 = &v10[v179[28]];
    v18 = *v17;
    v20 = *(v17 + 1);
    v19 = *(v17 + 2);
    LOBYTE(v199) = v18;
    *(&v199 + 1) = v20;
    *&v200 = v19;
    v21 = v16;
    v22 = TTRReminderHashtagData.detailText.getter();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v178 = v24;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = v21 + *((*MEMORY[0x277D85000] & *v21) + 0x78);
    swift_beginAccess();
    v27 = *(v26 + 1);
    v207 = *v26;
    v208 = v27;
    v28 = *(v26 + 2);
    v29 = *(v26 + 3);
    v30 = *(v26 + 5);
    v211 = *(v26 + 4);
    v212 = v30;
    v209 = v28;
    v210 = v29;
    v31 = *(v26 + 6);
    v32 = *(v26 + 7);
    v33 = *(v26 + 9);
    v213[2] = *(v26 + 8);
    v213[3] = v33;
    v213[0] = v31;
    v213[1] = v32;
    v34 = *(v26 + 10);
    v35 = *(v26 + 11);
    v36 = *(v26 + 12);
    *&v213[7] = *(v26 + 26);
    v213[5] = v35;
    v213[6] = v36;
    v213[4] = v34;
    sub_21D313A94(&v207, v239);

    v239[4] = v211;
    v239[5] = v212;
    v239[0] = v207;
    v239[1] = v208;
    v239[2] = v209;
    v239[3] = v210;
    v243 = *(&v213[1] + 8);
    v244 = *(&v213[2] + 8);
    v248 = *(&v213[6] + 8);
    v247 = *(&v213[5] + 8);
    v246 = *(&v213[4] + 8);
    v245 = *(&v213[3] + 8);
    v240 = *&v213[0];
    v241 = v178;
    v242 = v25;
    sub_21D5C62E8(v239);
  }

  if ((a1 & 8) != 0 || (v37 = v10[v179[17]], v37 == 2))
  {
    v38 = 1;
  }

  else
  {
    v39 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4) + 32);

    v40 = v39 + *((*MEMORY[0x277D85000] & *v39) + 0x78);
    swift_beginAccess();
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = *(v40 + 3);
    v209 = *(v40 + 2);
    v210 = v43;
    v207 = v41;
    v208 = v42;
    v44 = *(v40 + 4);
    v45 = *(v40 + 5);
    v46 = *(v40 + 6);
    *(v213 + 14) = *(v40 + 110);
    v212 = v45;
    v213[0] = v46;
    v211 = v44;
    v47 = *v40;
    v48 = *(v40 + 1);
    v49 = *(v40 + 3);
    v234[2] = *(v40 + 2);
    v234[3] = v49;
    v234[0] = v47;
    v234[1] = v48;
    v50 = *(v40 + 4);
    v51 = *(v40 + 5);
    v52 = *(v40 + 6);
    v235 = *(v40 + 14);
    v234[5] = v51;
    v234[6] = v52;
    v234[4] = v50;
    v236 = v37 & 1;
    v53 = *(v40 + 121);
    v238 = v40[125];
    v237 = v53;
    sub_21D539B98(&v207, &v199);
    sub_21D5C6D8C(v234);

    v38 = 0;
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4);
  sub_21D5D3E3C(v38);

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell, sub_21D80EE68);
  v172 = (a1 >> 4) & 1;
  sub_21D5D3E3C(v172);

  if ((a1 & 0x10) == 0)
  {
    v54 = *&v10[v179[15]];
    v55 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell) + 32);
    v56 = (v55 + *((*MEMORY[0x277D85000] & *v55) + 0x78));
    swift_beginAccess();
    v57 = *v56;
    v58 = v56[1];
    v59 = v56[3];
    v209 = v56[2];
    v210 = v59;
    v207 = v57;
    v208 = v58;
    v60 = v56[4];
    v61 = v56[5];
    v62 = v56[6];
    *(v213 + 9) = *(v56 + 105);
    v212 = v61;
    v213[0] = v62;
    v211 = v60;
    v63 = v56[1];
    v231[0] = *v56;
    v231[1] = v63;
    v64 = v56[2];
    v65 = v56[3];
    v66 = v56[6];
    v231[5] = v56[5];
    v231[6] = v66;
    v67 = v56[4];
    v231[3] = v65;
    v231[4] = v67;
    v231[2] = v64;
    v232 = v54;
    v233 = BYTE8(v213[1]);
    v68 = v55;
    sub_21D0D3954(&v207, &v199, &unk_27CE62340);
    sub_21D5C8CB4(v231);
  }

  if ((a1 & 0x20) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = v10[v179[11]];
  }

  v178 = a1;
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell, sub_21D80FAAC);
  v175 = v69;
  v70 = v69 ^ 1u;
  sub_21D5D3E3C(v70);

  v176 = v38;
  v171 = v70;
  v177 = v2;
  if ((v70 & 1) == 0)
  {
    v71 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell;
    v72 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell) + 32);
    v73 = &v10[v179[6]];
    v74 = *(v73 + 1);
    v170 = *v73;
    v75 = (v72 + *((*MEMORY[0x277D85000] & *v72) + 0x78));
    swift_beginAccess();
    v207 = *v75;
    v76 = v75[1];
    v77 = v75[2];
    v78 = v75[4];
    v210 = v75[3];
    v211 = v78;
    v208 = v76;
    v209 = v77;
    v79 = v75[5];
    v80 = v75[6];
    v81 = v75[7];
    *(&v213[1] + 9) = *(v75 + 121);
    v213[0] = v80;
    v213[1] = v81;
    v212 = v79;
    v222 = *v75;
    v82 = v75[6];
    v83 = v75[7];
    v84 = v75[4];
    v228 = v75[5];
    v229 = v82;
    v230[0] = v83;
    *(v230 + 9) = *(v75 + 121);
    v85 = v75[3];
    v225 = v75[2];
    v226 = v85;
    v227 = v84;
    v86 = v72;
    v2 = v177;
    v87 = v86;
    sub_21DBF8E0C();
    sub_21D5D2970(&v207, &v199);

    v223 = v170;
    v224 = v74;
    sub_21D5C8234(&v222);

    v170 = v71;
    v88 = *(*(v2 + v71) + 32);
    v89 = &v10[v179[8]];
    v90 = *(v89 + 4);
    v91 = *(v89 + 5);
    if (v89[48])
    {
      v92 = *(v89 + 1);
      v199 = *v89;
      v200 = v92;
      *&v201 = v90;
      *(&v201 + 1) = v91;
      LOBYTE(v202) = 1;
      v93 = v88;
      v94 = TTRListColors.Color.nativeColor.getter();
      v95 = [v94 accessibilityName];

      v90 = sub_21DBFA16C();
      v91 = v96;
    }

    else
    {
      v97 = v88;
      sub_21DBF8E0C();
    }

    v38 = v88 + *((*MEMORY[0x277D85000] & *v88) + 0x78);
    swift_beginAccess();
    v184 = *v38;
    v98 = *(v38 + 16);
    v99 = *(v38 + 32);
    v100 = *(v38 + 64);
    v187 = *(v38 + 48);
    v188 = v100;
    v185 = v98;
    v186 = v99;
    v101 = *(v38 + 80);
    v102 = *(v38 + 96);
    v103 = *(v38 + 112);
    *(v191 + 9) = *(v38 + 121);
    v190 = v102;
    v191[0] = v103;
    v189 = v101;
    sub_21D5D2970(&v184, &v199);

    v214[0] = v184;
    v214[1] = v185;
    v219 = v189;
    v220 = v190;
    v221[0] = v191[0];
    *(v221 + 9) = *(v191 + 9);
    v217 = v187;
    v218 = v188;
    v215 = v90;
    v216 = v91;
    sub_21D5C8234(v214);

    v104 = *(*&v170[v2] + 32);
    v105 = &v10[v179[9]];
    v106 = v105[3];
    v194 = v105[2];
    v195 = v106;
    v196[0] = v105[4];
    *(v196 + 9) = *(v105 + 73);
    v107 = v105[1];
    v192 = *v105;
    v193 = v107;
    v108 = (v104 + *((*MEMORY[0x277D85000] & *v104) + 0x78));
    swift_beginAccess();
    v199 = *v108;
    v109 = v108[1];
    v110 = v108[2];
    v111 = v108[4];
    v202 = v108[3];
    v203 = v111;
    v200 = v109;
    v201 = v110;
    v112 = v108[5];
    v113 = v108[6];
    v114 = v108[7];
    *(v206 + 9) = *(v108 + 121);
    v205 = v113;
    v206[0] = v114;
    v204 = v112;
    v115 = v108[1];
    v182[0] = *v108;
    v182[1] = v115;
    v116 = v108[3];
    v182[2] = v108[2];
    v117 = v108[4];
    v197[0] = v116;
    v197[1] = v117;
    v119 = v108[6];
    v118 = v108[7];
    v120 = *(v108 + 121);
    v197[2] = v108[5];
    *(v198 + 9) = v120;
    v197[3] = v119;
    v198[0] = v118;
    v121 = v104;
    sub_21D0D3954(&v192, v180, &unk_27CE5E9E0);
    sub_21D5D2970(&v199, v180);
    sub_21D0CF7E0(v197, &unk_27CE5E9E0);
    v182[5] = v194;
    v182[6] = v195;
    v183[0] = v196[0];
    *(v183 + 9) = *(v196 + 9);
    v182[3] = v192;
    v182[4] = v193;
    sub_21D5C8234(v182);

    LOBYTE(v38) = v176;
  }

  v122 = &v10[v179[37]];
  v123 = v122[40];
  v124 = (v178 & 0x800) != 0 || v123 == 255;
  LODWORD(v125) = !v124;
  if (!v124)
  {
    v127 = *(v122 + 3);
    v126 = *(v122 + 4);
    v170 = v10;
    v38 = *(v122 + 1);
    v128 = *(v122 + 2);
    v169 = v125;
    v125 = *v122;
    v129 = *v122;
    v130 = v126;
    v168 = v126;
    sub_21D7A9844(v129, v38, v128, v127, v126, v123);
    v131 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell, sub_21D80FDB8) + 32);

    v180[0] = v125;
    v180[1] = v38;
    v180[2] = v128;
    v180[3] = v127;
    v180[4] = v130;
    v181 = v123;
    v132 = TTRReminderDetailViewModel.SectionPickerVisibility.Option.parentSectionDisplayName.getter();
    v166 = v133;
    v167 = v132;
    v134 = v131 + *((*MEMORY[0x277D85000] & *v131) + 0x78);
    swift_beginAccess();
    v135 = *(v134 + 2);
    v136 = *v134;
    v208 = *(v134 + 1);
    v209 = v135;
    v207 = v136;
    v137 = *(v134 + 3);
    v138 = *(v134 + 4);
    v139 = *(v134 + 5);
    LOBYTE(v213[0]) = v134[96];
    v211 = v138;
    v212 = v139;
    v210 = v137;
    sub_21D5D35AC(&v207, &v199);

    v184 = v207;
    v188 = v211;
    v189 = v212;
    LOBYTE(v190) = v213[0];
    v186 = v209;
    v187 = v210;
    *&v185 = v167;
    *(&v185 + 1) = v166;
    sub_21D5C8F8C(&v184);
    v140 = v125;
    LODWORD(v125) = v169;
    v141 = v38;
    LOBYTE(v38) = v176;
    v142 = v128;
    v10 = v170;
    v143 = v127;
    v2 = v177;
    sub_21D7A98A0(v140, v141, v142, v143, v168, v123);
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell, sub_21D80FDB8);
  v144 = v125 ^ 1;
  sub_21D5D3E3C(v125 ^ 1);

  if (v178 & 0x40) != 0 || (v10[v179[31] + 8])
  {
    v145 = 1;
  }

  else
  {
    v146 = v125;
    v147 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4) + 32);

    v148 = objc_opt_self();
    v149 = sub_21DBFABEC();
    v150 = [v148 localizedStringFromNumber:v149 numberStyle:1];

    v125 = sub_21DBFA16C();
    v38 = v151;

    v152 = v147 + *((*MEMORY[0x277D85000] & *v147) + 0x78);
    swift_beginAccess();
    v153 = *(v152 + 1);
    v199 = *v152;
    v200 = v153;
    v154 = *(v152 + 2);
    v155 = *(v152 + 3);
    v156 = *(v152 + 5);
    v203 = *(v152 + 4);
    v204 = v156;
    v201 = v154;
    v202 = v155;
    v157 = *(v152 + 6);
    v158 = *(v152 + 7);
    v159 = *(v152 + 9);
    v206[1] = *(v152 + 8);
    v206[2] = v159;
    v205 = v157;
    v206[0] = v158;
    v160 = *(v152 + 10);
    v161 = *(v152 + 11);
    v162 = *(v152 + 12);
    *&v206[6] = *(v152 + 26);
    v206[4] = v161;
    v206[5] = v162;
    v206[3] = v160;
    sub_21D313A94(&v199, &v207);

    v211 = v203;
    v212 = v204;
    v207 = v199;
    v208 = v200;
    v209 = v201;
    v210 = v202;
    *(&v213[2] + 8) = *(&v206[1] + 8);
    *(&v213[1] + 8) = *(v206 + 8);
    *(&v213[6] + 8) = *(&v206[5] + 8);
    *(&v213[5] + 8) = *(&v206[4] + 8);
    *(&v213[4] + 8) = *(&v206[3] + 8);
    *(&v213[3] + 8) = *(&v206[2] + 8);
    *&v213[0] = v205;
    *(&v213[0] + 1) = v125;
    LOBYTE(v125) = v146;
    *&v213[1] = v38;
    LOBYTE(v38) = v176;
    sub_21D5C62E8(&v207);

    v145 = 0;
  }

  v163 = v175;
  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4);
  sub_21D5D3E3C(v145);

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration) == 1)
  {
    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___organizationSection, sub_21D811E88);
    TTRITableSection.isHidden.setter(v145 & ((v163 | v125 | v174) ^ 1));

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flagAndPrioritySection, sub_21D8121EC);
    v164 = v38 & v172;
  }

  else
  {
    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell, sub_21D80BE44);
    TTRITableSection.isHidden.setter(v173);

    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4);
    TTRITableSection.isHidden.setter(v38);

    sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___pickersSection, sub_21D80EC88);
    TTRITableSection.isHidden.setter(v171 & (v178 >> 4) & v144);

    sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtaskSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4);
    v164 = v145;
  }

  TTRITableSection.isHidden.setter(v164);

  return sub_21D819F20(v10, type metadata accessor for TTRReminderDetailViewModel);
}

uint64_t sub_21D815860()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - v6;
  v7 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for TTRReminderDetailViewModel(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  sub_21D0D3954(v1 + v17, v12, &qword_27CE62270);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21D0CF7E0(v12, &qword_27CE62270);
  }

  sub_21D819EB0(v12, v16, type metadata accessor for TTRReminderDetailViewModel);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 48) == 1)
  {
    sub_21D81A2E0(&v16[*(v13 + 132)], v9, type metadata accessor for TTRReminderDetailViewModel.URLState);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
    v20 = 1;
    if ((*(*(v19 - 8) + 48))(v9, 1, v19) != 1)
    {
      v21 = v44;
      sub_21D57690C(v9, v44);
      sub_21D0D3954(v21, v4, &qword_27CE5EA20);
      v22 = sub_21DBF54CC();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v4, 1, v22) == 1)
      {
        sub_21D0CF7E0(v4, &qword_27CE5EA20);
        v43 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        v43 = sub_21DBF535C();
        v24 = v25;
        (*(v23 + 8))(v4, v22);
      }

      v26 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC) + 32);

      v27 = MEMORY[0x277D85000];
      v28 = *((*MEMORY[0x277D85000] & *v26) + 0x68);
      swift_beginAccess();
      v29 = *(v26 + v28);
      if (!v29 || (v30 = *(v29 + qword_27CE65428 + 8), ObjectType = swift_getObjectType(), v32 = *(v30 + 216), swift_unknownObjectRetain(), LOBYTE(v30) = v32(ObjectType, v30), swift_unknownObjectRelease(), (v30 & 1) == 0))
      {
        v33 = v26 + *((*v27 & *v26) + 0x78);
        swift_beginAccess();
        v34 = *v33;
        v35 = *(v33 + 1);
        v36 = v33[16];
        v37 = v33[17];
        v38 = *(v33 + 4);
        v42 = *(v33 + 3);
        v39 = *(v33 + 5);
        sub_21D59B950(v34, v35, v36);
        v40 = v39;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D5968AC(v34, v35, v36);
        v45 = 0;
        *&v46 = v43;
        *(&v46 + 1) = v24;
        v47 = 0;
        v48 = v37;
        v49 = v42;
        v50 = v38;
        v51 = v39;
        sub_21D5C6B34(&v46);
      }

      sub_21D0CF7E0(v44, &qword_27CE5EA20);
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC);
  sub_21D5D3E3C(v20);

  v41 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_urlSection;
  swift_beginAccess();
  if (*(v1 + v41))
  {
    swift_endAccess();

    TTRITableSection.isHidden.setter(v20);

    return sub_21D819F20(v16, type metadata accessor for TTRReminderDetailViewModel);
  }

  else
  {
    sub_21D819F20(v16, type metadata accessor for TTRReminderDetailViewModel);
    return swift_endAccess();
  }
}

char *sub_21D815E84(uint64_t a1)
{
  v36 = a1;
  v2 = sub_21DBF813C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1;
  v4 = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentsGroup, sub_21D810C60);
  swift_beginAccess();
  v5 = *(v4 + 48);
  sub_21DBF8E0C();

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v8 = *(v5 + 16);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = 16 * v6 + 32;
  while (1)
  {
    if (v8 == v6)
    {

      if (v9 >> 62)
      {
        goto LABEL_21;
      }

      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_22:

      v17 = MEMORY[0x277D84F90];
LABEL_23:
      v29 = v36;
      v44 = v36;
      v42 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62310);
      sub_21D0D0F1C(&qword_27CE62318, &qword_27CE62310);
      v30 = v37;
      sub_21DBFAC5C();

      MEMORY[0x28223BE20](v31);
      *(&v34 - 2) = v29;
      *(&v34 - 1) = v32;
      MEMORY[0x28223BE20](v33);
      *(&v34 - 2) = v29;

      sub_21D5D0D18(v30, sub_21D81A144, (&v34 - 4), sub_21D81A14C, (&v34 - 4));

      return (*(v38 + 8))(v30, v39);
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    ++v6;
    v11 = v10 + 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAF8);
    v12 = swift_dynamicCastClass();
    v10 = v11;
    if (v12)
    {
      v13 = swift_unknownObjectRetain();
      MEMORY[0x223D42D80](v13);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v9 = v43;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  v14 = sub_21DBFBD7C();
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_11:
  v44 = v7;
  result = sub_21D18F570(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v44;
    v40 = v9 & 0xC000000000000001;
    v41 = v9;
    do
    {
      if (v40)
      {
        v18 = MEMORY[0x223D44740](v16, v9);
      }

      else
      {
        v18 = *(v9 + 8 * v16 + 32);
      }

      v19 = *(v18 + 32) + *((*MEMORY[0x277D85000] & **(v18 + 32)) + 0x78);
      swift_beginAccess();
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = v20;
      sub_21DBF8E0C();
      v25 = v22;

      v44 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21D18F570((v26 > 1), v27 + 1, 1);
        v17 = v44;
      }

      ++v16;
      *(v17 + 16) = v27 + 1;
      v28 = (v17 + 32 * v27);
      v28[4] = v20;
      v28[5] = v21;
      v28[6] = v23;
      v28[7] = v25;
      v9 = v41;
    }

    while (v14 != v16);

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

unint64_t sub_21D816334(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v23 = v2;
    v24 = v3;
    v4 = (a2 + 32 * result);
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
    v9 = objc_allocWithZone(type metadata accessor for TTRIAttachmentCellContent(0));
    v10 = (v9 + qword_27CE63EA8);
    *v10 = 0;
    v10[1] = 0;
    v11 = MEMORY[0x277D85000];
    *(v9 + *((*MEMORY[0x277D85000] & *v9) + 0x68)) = 0;
    *(v9 + *((*v11 & *v9) + 0x70) + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v9 + *((*v11 & *v9) + 0x90)) = 0;
    v12 = (v9 + *((*v11 & *v9) + 0x78));
    *v12 = v5;
    v12[1] = v6;
    v12[2] = v7;
    v12[3] = v8;
    *(v9 + *((*v11 & *v9) + 0x80)) = 0;
    v13 = v9 + *((*v11 & *v9) + 0x88);
    strcpy(v13, "AttachmentCell");
    v13[15] = -18;
    v14 = v5;
    sub_21DBF8E0C();
    v15 = v8;
    v22.receiver = v9;
    v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62320);
    v16 = objc_msgSendSuper2(&v22, sel_init);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = (v16 + qword_27CE63EA8);
    v19 = *(v16 + qword_27CE63EA8);
    *v18 = sub_21D81A154;
    v18[1] = v17;

    sub_21D0D0E88(v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAF8);
    v20 = swift_allocObject();
    *(v20 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v20 + 48) = 1;
    *(v20 + 49) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    *(v20 + 72) = 1;
    *(v20 + 32) = v16;
    *(v20 + 40) = 0;
    v21 = v16 + *((*v11 & *v16) + 0x70);
    swift_beginAccess();
    *(v21 + 1) = &protocol witness table for TTRITableCell<A>;
    swift_unknownObjectWeakAssign();
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D8165F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v5 = *(a1 + 1);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();

    v6[0] = v1;
    v6[1] = v2;
    v7 = v5;
    sub_21D8252C0(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D816688(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v3 = (a3 + 32 * a2);
    v4 = v3[4];
    v5 = v3[5];
    v6 = v3[6];
    v7 = v3[7];
    v8 = v4;
    sub_21DBF8E0C();
    sub_21D5C9980(v4, v5, v6, v7);
    return;
  }

  __break(1u);
}

void sub_21D816700()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong performBatchUpdates:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for TTRIReminderDetailViewController()
{
  result = qword_27CE621B8;
  if (!qword_27CE621B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D816B00()
{
  sub_21D816C20();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D816C20()
{
  if (!qword_27CE621C8)
  {
    type metadata accessor for TTRReminderDetailViewModel(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE621C8);
    }
  }
}

uint64_t sub_21D816C78()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_21D816CA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = type metadata accessor for TTRReminderDetailViewModel(0);
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [v1 isViewLoaded];
  if (result)
  {
    sub_21D0D3954(a1, v11, &qword_27CE62270);
    v18 = *(v13 + 48);
    if (v18(v11, 1, v12) == 1)
    {
      return sub_21D0CF7E0(v11, &qword_27CE62270);
    }

    else
    {
      sub_21D819EB0(v11, v16, type metadata accessor for TTRReminderDetailViewModel);
      v19 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
      swift_beginAccess();
      sub_21D0D3954(&v1[v19], v8, &qword_27CE62270);
      v20 = v18(v8, 1, v12);
      sub_21D0CF7E0(v8, &qword_27CE62270);
      sub_21D81A2E0(v16, v5, type metadata accessor for TTRReminderDetailViewModel);
      (*(v13 + 56))(v5, 0, 1, v12);
      swift_beginAccess();
      sub_21D0F02F4(v5, &v1[v19], &qword_27CE62270);
      v21 = swift_endAccess();
      if (v20 == 1)
      {
        sub_21D809510(v16);
      }

      else if (*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController])
      {
        v25[0] = 1;
        MEMORY[0x28223BE20](v21);
        *&v25[-16] = v1;
        *&v25[-8] = v16;
        v23 = v22;
        TTRITableDataController.performBatchUpdates(by:updates:)(v25, sub_21D81A6B0);
      }

      v24 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton];
      if (v24)
      {
        [v24 setEnabled_];
      }

      return sub_21D819F20(v16, type metadata accessor for TTRReminderDetailViewModel);
    }
  }

  return result;
}

void sub_21D81703C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v7 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  swift_beginAccess();
  v17 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    goto LABEL_4;
  }

  sub_21D81A2E0(v16 + *(v17 + 132), v12, type metadata accessor for TTRReminderDetailViewModel.URLState);
  sub_21D819EB0(v12, v15, type metadata accessor for TTRReminderDetailViewModel.URLState);
  sub_21D81A2E0(v15, v9, type metadata accessor for TTRReminderDetailViewModel.URLState);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    sub_21D819F20(v15, type metadata accessor for TTRReminderDetailViewModel.URLState);
    sub_21D819F20(v9, type metadata accessor for TTRReminderDetailViewModel.URLState);
LABEL_4:
    v19 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC) + 32);

    v20 = v19 + *((*MEMORY[0x277D85000] & *v19) + 0x78);
    swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = v20[16];
    v24 = v20[17];
    v26 = *(v20 + 3);
    v25 = *(v20 + 4);
    v27 = *(v20 + 5);
    sub_21D59B950(v21, v22, v23);
    v28 = v27;
    sub_21DBF8E0C();
    sub_21D5968AC(v21, v22, v23);
    v46 = 0;
    v47 = xmmword_21DC0E710;
    v48 = 0;
    v49 = v24;
    v50 = v26;
    v51 = v25;
    v52 = v27;
    sub_21D5C6B34(&v47);

    return;
  }

  sub_21D57690C(v9, v6);
  v29 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC) + 32);

  sub_21D0D3954(v6, v3, &qword_27CE5EA20);
  v30 = sub_21DBF54CC();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v3, 1, v30) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5EA20);
    v44 = 0xE000000000000000;
    v45 = 0;
  }

  else
  {
    v32 = sub_21DBF535C();
    v44 = v33;
    v45 = v32;
    (*(v31 + 8))(v3, v30);
  }

  v34 = v29 + *((*MEMORY[0x277D85000] & *v29) + 0x78);
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = v34[16];
  v38 = v34[17];
  v39 = *(v34 + 3);
  v40 = *(v34 + 4);
  v41 = *(v34 + 5);
  sub_21D59B950(v35, v36, v37);
  v42 = v41;
  sub_21DBF8E0C();
  sub_21D5968AC(v35, v36, v37);
  v46 = 0;
  *&v47 = v45;
  *(&v47 + 1) = v44;
  v48 = 0;
  v49 = v38;
  v50 = v39;
  v51 = v40;
  v52 = v41;
  sub_21D5C6B34(&v47);

  sub_21D0CF7E0(v6, &qword_27CE5EA20);
  sub_21D819F20(v15, type metadata accessor for TTRReminderDetailViewModel.URLState);
}

void sub_21D8177CC()
{
  v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_needsTableCellResize] = 1;
  v1 = [v0 viewIfLoaded];
  [v1 setNeedsLayout];
}

uint64_t sub_21D817834(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = 0;
  *(a4 + 224) = 0x1FFFFFFFCLL;
  *(a4 + 232) = 0u;
  *(a4 + 248) = 0u;
  *(a4 + 264) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = &off_282EC6790;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return a4;
}

uint64_t sub_21D8178CC(void *a1, char a2, void *a3)
{
  v19[3] = sub_21D0D8CF0(0, &unk_27CE62380);
  v19[4] = &protocol witness table for UITableView;
  v19[0] = a1;
  a1;
  v6 = [a3 transitionCoordinator];
  if (v6)
  {
    v7 = v6;
    if ([v6 initiallyInteractive] && (objc_msgSend(v7, sel_isInterruptible) & 1) == 0)
    {
      sub_21D0D32E4(v19, v18);
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      sub_21D0D0FD0(v18, v10 + 24);
      *(v10 + 64) = a2 & 1;
      v16 = sub_21D81A244;
      v17 = v10;
      v12 = MEMORY[0x277D85DD0];
      v13 = 1107296256;
      v14 = sub_21D83EFE8;
      v15 = &block_descriptor_151;
      v9 = _Block_copy(&v12);
      swift_unknownObjectRetain();

      [v7 notifyWhenInteractionChangesUsingBlock_];
    }

    else
    {
      if (![v7 isInterruptible])
      {
        UITableView.deselectAllNonMultiSelectRows(animated:)(a2 & 1);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v19);
      }

      sub_21D0D32E4(v19, v18);
      v8 = swift_allocObject();
      sub_21D0D0FD0(v18, v8 + 16);
      *(v8 + 56) = a2 & 1;
      v16 = sub_21D81A238;
      v17 = v8;
      v12 = MEMORY[0x277D85DD0];
      v13 = 1107296256;
      v14 = sub_21D83EFE8;
      v15 = &block_descriptor_145_0;
      v9 = _Block_copy(&v12);

      [v7 animateAlongsideTransition:0 completion:v9];
    }

    _Block_release(v9);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_21D817B38()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(*(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v1 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v1 + 40) |= 1uLL;
  *(v1 + 48) = 0;
  v2._object = 0x800000021DC49D80;
  v2._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
}

uint64_t sub_21D817BD4()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF516C();
  v4 = v3;
  memset(v26, 0, 24);
  v26[3] = 0x1FFFFFFFELL;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  sub_21D0CF7E0(v26, &unk_27CE5EA00);
  v10[0] = v1;
  memset(&v10[1], 0, 24);
  v11 = 0x80;
  v12 = v2;
  v13 = v4;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xE000000000000000;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = objc_allocWithZone(type metadata accessor for TTRIDetailCellContent(0));
  v6 = sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A750);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 48) = 1;
  *(v7 + 49) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 1;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  v8 = v6 + *((*MEMORY[0x277D85000] & *v6) + 0x70);
  swift_beginAccess();
  *(v8 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v7;
}

id sub_21D817E50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF9D7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v46 - v14;
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, sel_viewDidAppear_, 1, v13);
  v16 = v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_firstViewDidAppearCalled];
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_firstViewDidAppearCalled] = 1;
  result = [v1 view];
  if (result)
  {
    v18 = result;
    v19 = UIView.firstResponderDescendant.getter();

    v49 = v3;
    if (v19)
    {
    }

    else
    {
      [v1 becomeFirstResponder];
    }

    v20 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
    v21 = *(v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleState);

    sub_21D0EF02C(2, v21);

    v22 = v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      v24 = swift_getObjectType();
      (*(v23 + 8))(v20, &off_282ED5018, (v16 ^ 1) & 1, v24, v23);
      swift_unknownObjectRelease();
    }

    v48 = v4;
    if (v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] == 1)
    {
      v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] = 0;
      v25 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C) + 32);

      v26 = MEMORY[0x277D85000];
      v27 = *((*MEMORY[0x277D85000] & *v25) + 0x68);
      swift_beginAccess();
      v28 = *(v25 + v27);
      if (v28)
      {
        v29 = *(v28 + qword_27CE63F48);
        v30 = [v29 window];
        [v30 makeKeyWindow];

        [v29 becomeFirstResponder];
        v25 = v29;
      }

      v31 = *(*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell] + 32);
      v32 = *((*v26 & *v31) + 0x68);
      swift_beginAccess();
      v33 = *(v31 + v32);
      if (v33)
      {
        v34 = *(v33 + qword_27CE63F48);
        v35 = v31;
        v36 = [v34 beginningOfDocument];
        v37 = [v34 endOfDocument];
        v38 = [v34 textRangeFromPosition:v36 toPosition:v37];

        [v34 setSelectedTextRange_];
      }
    }

    sub_21D0D8CF0(0, &qword_280D1B900);
    v39 = sub_21DBFB12C();
    sub_21DBF9D6C();
    sub_21DBF9D9C();
    v47 = *(v9 + 8);
    v46 = v8;
    v47(v11, v8);
    v40 = swift_allocObject();
    *(v40 + 16) = v1;
    aBlock[4] = sub_21D819E88;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_40_1;
    v41 = _Block_copy(aBlock);
    v42 = v1;

    v43 = v50;
    sub_21DBF9D4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
    v44 = v51;
    v45 = v49;
    sub_21DBFBCBC();
    MEMORY[0x223D43880](v15, v43, v44, v41);
    _Block_release(v41);

    (*(v48 + 8))(v44, v45);
    (*(v52 + 8))(v43, v53);
    return (v47)(v15, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D818548(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF9D2C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D7C();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_21D0D8CF0(0, &qword_280D1B900);
  v21 = sub_21DBFB12C();
  sub_21DBF9D6C();
  sub_21DBF9D9C();
  v22 = *(v11 + 8);
  v22(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_21D539A88;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_89_0;
  v18 = _Block_copy(aBlock);
  sub_21DBF8E0C();

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  v19 = v21;
  MEMORY[0x223D43880](v16, v9, v6, v18);
  _Block_release(v18);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v22)(v16, v23);
}

uint64_t sub_21D8188FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell, sub_21D80C538) + 32);

  v12 = v11 + *((*MEMORY[0x277D85000] & *v11) + 0x78);
  swift_beginAccess();
  v13 = *(v12 + 4);
  v14 = *(v12 + 5);
  v15 = *(v12 + 110);
  v197[0] = *(v12 + 6);
  v16 = *v12;
  v17 = *(v12 + 1);
  v18 = *(v12 + 3);
  v196[2] = *(v12 + 2);
  v196[3] = v18;
  v196[0] = v16;
  v196[1] = v17;
  *(v197 + 14) = v15;
  v196[4] = v13;
  v196[5] = v14;
  v19 = *(v12 + 1);
  v145 = *v12;
  v146 = v19;
  v20 = *(v12 + 2);
  v21 = *(v12 + 3);
  v22 = *(v12 + 4);
  v150 = *(v12 + 10);
  v148 = v21;
  v149 = v22;
  v147 = v20;
  v144 = *(v12 + 104);
  v23 = *(v12 + 121);
  v143 = v12[125];
  v142 = v23;
  sub_21D539B98(v196, &v178);

  v24 = *(a4 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
  if (v24 == 1)
  {
    if (v10 < 0)
    {
      v40 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell, sub_21D80CF6C) + 32);

      v41 = v40 + *((*MEMORY[0x277D85000] & *v40) + 0x78);
      swift_beginAccess();
      v42 = *(v41 + 6);
      v43 = *(v41 + 105);
      v44 = *(v41 + 4);
      *v129 = *(v41 + 5);
      v45 = *v41;
      v46 = *(v41 + 1);
      v47 = *(v41 + 3);
      v126 = *(v41 + 2);
      v127 = v47;
      v124 = v45;
      v125 = v46;
      *&v129[25] = v43;
      *&v129[16] = v42;
      v128 = v44;
      v178 = *v41;
      v48 = *(v41 + 1);
      v49 = *(v41 + 2);
      v50 = *(v41 + 3);
      v182 = *(v41 + 8);
      v181 = v50;
      v180 = v49;
      v179 = v48;
      v51 = *(v41 + 88);
      v52 = *(v41 + 104);
      LOBYTE(v187) = v41[120];
      v186 = v52;
      v185 = v51;
      sub_21D5D359C();
      sub_21D0D3954(&v124, &v154, &qword_27CE5EAF0);

      v183 = v7;
      v184 = v8;
      sub_21D5C889C(&v178);

      if ((a3 & 1) == 0)
      {
        v53 = *(*(a4 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell) + 32);
        v54 = (v53 + *((*MEMORY[0x277D85000] & *v53) + 0x78));
        swift_beginAccess();
        v55 = *v54;
        v56 = v54[1];
        v57 = v54[2];
        v157 = v54[3];
        v156 = v57;
        v155 = v56;
        v154 = v55;
        v58 = v54[4];
        v59 = v54[5];
        v60 = v54[6];
        *&v160[9] = *(v54 + 105);
        *v160 = v60;
        v159 = v59;
        v158 = v58;
        v61 = *v54;
        v62 = v54[1];
        v193[2] = v54[2];
        v193[1] = v62;
        v193[0] = v61;
        v63 = v54[3];
        v64 = v54[4];
        v65 = v54[5];
        v193[6] = v54[6];
        v193[5] = v65;
        v193[4] = v64;
        v193[3] = v63;
        v194 = a2;
        v195 = v160[24];
        v66 = v53;
        sub_21D0D3954(&v154, v151, &qword_27CE5EAF0);
        sub_21D5C889C(v193);
      }

      v38 = 0;
      v37 = 1;
    }

    else
    {
      v25 = *(sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell, sub_21D817BD4) + 32);

      v26 = v25 + *((*MEMORY[0x277D85000] & *v25) + 0x78);
      swift_beginAccess();
      v27 = *(v26 + 1);
      v124 = *v26;
      v125 = v27;
      v28 = *(v26 + 2);
      v29 = *(v26 + 3);
      v30 = *(v26 + 5);
      v128 = *(v26 + 4);
      *v129 = v30;
      v126 = v28;
      v127 = v29;
      v31 = *(v26 + 6);
      v32 = *(v26 + 7);
      v33 = *(v26 + 9);
      *&v129[48] = *(v26 + 8);
      *&v129[64] = v33;
      *&v129[16] = v31;
      *&v129[32] = v32;
      v34 = *(v26 + 10);
      v35 = *(v26 + 11);
      v36 = *(v26 + 12);
      *&v129[128] = *(v26 + 26);
      *&v129[96] = v35;
      *&v129[112] = v36;
      *&v129[80] = v34;
      sub_21D5D359C();
      sub_21D313A94(&v124, &v178);

      v180 = v126;
      v181 = v127;
      v179 = v125;
      v178 = v124;
      v189 = *&v129[72];
      v190 = *&v129[88];
      v191 = *&v129[104];
      v192 = *&v129[120];
      v185 = *&v129[8];
      v186 = *&v129[24];
      v187 = *&v129[40];
      v188 = *&v129[56];
      v182 = v128;
      v183 = v7;
      v184 = v8;
      sub_21D5C62E8(&v178);

      v37 = 0;
      v38 = 1;
    }
  }

  else
  {
    v39 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell, sub_21D80CC60) + 32);

    sub_21D5D359C();
    sub_21D5C88C4(v7, v8, v9, v10);

    v37 = 1;
    v38 = 1;
  }

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell, sub_21D80CC60);
  sub_21D5D3E3C(v24);

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell, sub_21D80CF6C);
  sub_21D5D3E3C(v38);

  sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell, sub_21D817BD4);
  sub_21D5D3E3C(v37);

  v67 = (a5 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 96));
  v68 = *v67;
  if (*v67)
  {
    v69 = *(v67 + 8);
    sub_21DBF8E0C();
    v70 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14) + 32);

    LOBYTE(v124) = 1;
    *&v173 = v68;
    BYTE8(v173) = v69;
    v174 = 0;
    v175 = 1;
    v177 = 0;
    v176 = 0;
    sub_21D5C8AC8(&v173);
  }

  v71 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell;
  v72 = *(*(a4 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell) + 32);
  v124 = v145;
  v125 = v146;
  v126 = v147;
  v127 = v148;
  v128 = v149;
  *&v129[16] = 0;
  *v129 = v150;
  *&v129[24] = v144;
  v129[40] = 1;
  *&v129[41] = v142;
  v129[45] = v143;
  v73 = v72;
  sub_21D539B98(&v124, &v154);
  sub_21D5C6D8C(&v124);

  sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell, sub_21D80CA14);
  sub_21D5D3E3C(v68 == 0);

  v74 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell;
  v75 = *(*(a4 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell) + 32);
  v76 = v75 + *((*MEMORY[0x277D85000] & *v75) + 0x78);
  swift_beginAccess();
  v77 = *v76;
  v78 = v76[8];
  v80 = *(v76 + 4);
  v79 = *(v76 + 5);
  LOBYTE(v154) = a3 & 1;
  *&v168 = v77;
  BYTE8(v168) = v78;
  v169 = a2;
  v170 = a3 & 1;
  v171 = v80;
  v172 = v79;
  sub_21DBF8E0C();
  v81 = v75;
  sub_21DBF8E0C();
  sub_21D5C8AC8(&v168);

  v82 = *(*(a4 + v74) + 32);
  sub_21D5D359C();
  v83 = v82;
  if (v10 < 0)
  {
    REMAlarmProximity.localizedLabelFormatString.getter(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_21DC08D00;
    *(v84 + 56) = MEMORY[0x277D837D0];
    *(v84 + 64) = sub_21D17A884();
    *(v84 + 32) = v7;
    *(v84 + 40) = v8;
    v7 = sub_21DBFA17C();
    v8 = v85;
  }

  v86 = MEMORY[0x277D85000];
  v87 = v82 + *((*MEMORY[0x277D85000] & *v82) + 0x78);
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[8];
  v90 = *(v87 + 2);
  LOBYTE(v154) = v87[24];
  *&v163 = v88;
  BYTE8(v163) = v89;
  v164 = v90;
  v165 = v154;
  v166 = v7;
  v167 = v8;
  sub_21DBF8E0C();
  sub_21D5C8AC8(&v163);

  v91 = *(*(a4 + v71) + 32);
  v92 = (v91 + *((*v86 & *v91) + 0x78));
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  v95 = v92[3];
  v130[2] = v92[2];
  v130[3] = v95;
  v130[0] = v93;
  v130[1] = v94;
  v96 = v92[4];
  v97 = v92[5];
  v98 = v92[6];
  *&v131[14] = *(v92 + 110);
  v130[5] = v97;
  *v131 = v98;
  v130[4] = v96;
  v99 = *v92;
  v100 = v92[1];
  v101 = v92[2];
  v157 = v92[3];
  v156 = v101;
  v155 = v100;
  v154 = v99;
  v102 = v92[4];
  v103 = v92[5];
  v104 = v92[6];
  *&v160[12] = *(v92 + 108);
  *v160 = v104;
  v159 = v103;
  v158 = v102;
  v161 = 1;
  v162 = v131[29];
  v105 = v91;
  sub_21D539B98(v130, v151);
  sub_21D5C6D8C(&v154);

  v106 = *(*(a4 + v71) + 32);
  v107 = (v106 + *((*v86 & *v106) + 0x78));
  swift_beginAccess();
  v108 = *v107;
  v109 = v107[1];
  v110 = v107[3];
  v132[2] = v107[2];
  v132[3] = v110;
  v132[0] = v108;
  v132[1] = v109;
  v111 = v107[4];
  v112 = v107[5];
  v113 = v107[6];
  *(v133 + 14) = *(v107 + 110);
  v132[5] = v112;
  v133[0] = v113;
  v132[4] = v111;
  v114 = *v107;
  v115 = v107[1];
  v116 = v107[3];
  v151[2] = v107[2];
  v151[3] = v116;
  v151[0] = v114;
  v151[1] = v115;
  v117 = v107[4];
  v118 = v107[5];
  v119 = v107[6];
  *&v152[13] = *(v107 + 109);
  v151[5] = v118;
  *v152 = v119;
  v151[4] = v117;
  v153 = 1;
  v120 = v106;
  sub_21D539B98(v132, v134);
  sub_21D5C6D8C(v151);

  v134[2] = v147;
  v134[3] = v148;
  v134[4] = v149;
  v134[0] = v145;
  v134[1] = v146;
  v137 = 0;
  v135 = v150;
  v136 = 0;
  v138 = v144;
  v139 = 1;
  v141 = v143;
  v140 = v142;
  return sub_21D5D2B7C(v134);
}

void sub_21D819408()
{
  v1 = sub_21DBF5D5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v23 - v7;
  v9 = [v0 viewIfLoaded];
  if (v9)
  {
    v10 = v9;
    v11 = UIView.firstResponderDescendant.getter();

    if (v11)
    {
      v24 = v11;
      v12 = [v24 superview];

      if (v12)
      {
        while (1)
        {
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            break;
          }

          v14 = v12;
          v12 = [v14 superview];

          if (!v12)
          {
            goto LABEL_13;
          }
        }

        v15 = v13;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          __break(1u);
          goto LABEL_17;
        }

        v17 = Strong;
        v18 = [Strong indexPathForCell_];

        if (v18)
        {
          sub_21DBF5CAC();

          (*(v2 + 32))(v8, v4, v1);
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            v21 = sub_21DBF5C6C();
            [v20 scrollToRowAtIndexPath:v21 atScrollPosition:0 animated:1];

            (*(v2 + 8))(v8, v1);
            return;
          }

LABEL_17:
          __break(1u);
          return;
        }
      }

LABEL_13:
      v22 = v24;
    }
  }
}

void sub_21D8196B4(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_prefersHalfPageSheetPresentation) == 1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 72);
      sub_21D0D8CF0(0, &unk_27CE62260);
      *(swift_allocObject() + 16) = v5;
      v6 = a1;
      v7 = sub_21DBFB56C();

      [v4 _setWantsBottomAttached_];
      [v4 _setShouldDismissWhenTappedOutside_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_21DC0AA00;
      *(v8 + 32) = v7;
      v9 = objc_opt_self();
      v10 = v7;
      *(v8 + 40) = [v9 largeDetent];
      v11 = sub_21DBFA5DC();

      [v4 setDetents_];
    }
  }
}

uint64_t sub_21D819898()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 80))(ObjectType, v2) & 1) != 0 || (v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 8), v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 16), v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 24), v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 32), v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40), v23 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility), v24 = v4, v25 = v5, v26 = v6, v27 = v7, v28 = v8, v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8), v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16), v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24), v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32), v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40), v17 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility), v18 = v9, v19 = v10, v20 = v11, v21 = v12, v22 = v13, sub_21D7A9830(v23, v4, v5, v6, v7, v8), sub_21D7A9830(v17, v9, v10, v11, v12, v13), v14 = _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO2eeoiySbAE_AEtFZ_0(&v23, &v17), sub_21D7A98A0(v17, v18, v19, v20, v21, v22), sub_21D7A98A0(v23, v24, v25, v26, v27, v28), (v14 & 1) == 0) || (sub_21D825A98() & 1) != 0 || (sub_21D825C94())
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_subtasksDidUpdate) ^ 1;
  }

  return v15 & 1;
}

void sub_21D819A00(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
  if (!*(v9 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState))
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE62470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v12 = *(v9 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 16))(ObjectType, v12);
    v15 = [v14 objectID];

    *(inited + 72) = sub_21D0D8CF0(0, &qword_280D17880);
    *(inited + 48) = v15;
    sub_21D17716C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
    sub_21DAEACDC();

    v16 = sub_21DBFA89C();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_21DBFA84C();
    swift_unknownObjectRetain();
    v17 = sub_21DBFA83C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v9;
    *(v18 + 40) = a2;
    sub_21D1B5178(0, 0, v8, a3, v18);
  }
}

uint64_t sub_21D819CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D825E90(a1, v4, v5, v6, v7);
}

uint64_t sub_21D819D70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D825E90(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D819EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D819F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D81A16C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_21D81A184(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }
}

uint64_t sub_21D81A2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for TTRIReminderDetailViewController.Argument(uint64_t a1)
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TTRIReminderDetailViewController.Argument(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  swift_unknownObjectRetain();
  v6 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIReminderDetailViewController.Argument(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  v7 = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailViewController.Argument(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailViewController.Argument(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailViewController.Argument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D81A6CC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62450);
  v1 = __swift_project_value_buffer(v0, qword_27CE62450);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D81A794(uint64_t a1, char a2, __int128 *a3)
{
  v6 = a3[1];
  v24[0] = *a3;
  v24[1] = v6;
  v25[0] = a3[2];
  *(v25 + 9) = *(a3 + 41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v15 = [Strong navigationController];

    if (v15)
    {
      if ((~BYTE8(v25[0]) & 0xFE) != 0)
      {
        v9 = a3[1];
        v22[0] = *a3;
        v22[1] = v9;
        v11 = *a3;
        v10 = a3[1];
        v23[0] = a3[2];
        *(v23 + 9) = *(a3 + 41);
        v17[0] = v11;
        v17[1] = v10;
        v18 = *(a3 + 4);
        v19 = *(&v25[0] + 1);
        v20 = *(a3 + 6);
        v21 = *(a3 + 56);
        sub_21D50B9A4(v22, v16);
        UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(v17);
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = a2 & 1;
          v14 = v12;
          [v12 presentViewController:a1 animated:v13 completion:0];
          sub_21D0CF7E0(v24, &qword_27CE5D558);
        }

        else
        {
          sub_21D0CF7E0(v24, &qword_27CE5D558);
        }
      }

      else
      {
        [v15 pushViewController:a1 animated:a2 & 1];
      }
    }
  }
}

void sub_21D81A93C(void *a1, void *a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v33 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v32 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = [Strong navigationController];

    if (v21)
    {
      v32[1] = a5;
      v22 = sub_21DBF66FC();
      v23 = 1;
      (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
      sub_21D53BFA4(0xD000000000000016, 0x800000021DC61CE0, v18);
      sub_21D0CF7E0(v18, &unk_27CE650B0);
      if (a1)
      {
        TTRRecurrenceRuleModel.init(sourceRule:)(a1, v15);
        v23 = 0;
      }

      v24 = type metadata accessor for TTRRecurrenceRuleModel(0);
      (*(*(v24 - 8) + 56))(v15, v23, 1, v24);
      type metadata accessor for TTRIRecurrenceEditorRouter();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21D0D3954(v15, v12, &qword_27CE5A018);

      v26 = a2;
      v27 = sub_21D5B8128(v25, v26, v12, v33 & 1);
      v28 = type metadata accessor for TTRIRecurrenceEditorViewController();
      v29 = objc_allocWithZone(v28);
      v30 = &v29[OBJC_IVAR____TtC15RemindersUICore34TTRIRecurrenceEditorViewController_presenter];
      *v30 = v27;
      v30[1] = &off_282EC40B0;
      v35.receiver = v29;
      v35.super_class = v28;

      v31 = objc_msgSendSuper2(&v35, sel_initWithStyle_, 2);
      *(v27 + 24) = &off_282EC3FD0;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();

      *(v27 + 40) = v34;
      swift_unknownObjectWeakAssign();

      [v21 pushViewController:v31 animated:a4 & 1];

      sub_21D0CF7E0(v15, &qword_27CE5A018);
    }
  }
}

void sub_21D81AC9C(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a4;
  v38 = a3;
  v35 = a1;
  v6 = type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_21DBF66FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong navigationController];

    v34 = v18;
    if (v18)
    {
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680) + 48);
      *v15 = [a2 objectID];
      v20 = *MEMORY[0x277D451A8];
      v21 = sub_21DBF66BC();
      (*(*(v21 - 8) + 104))(&v15[v19], v20, v21);
      v22 = *MEMORY[0x277D45168];
      v23 = sub_21DBF66DC();
      (*(*(v23 - 8) + 104))(&v15[v19], v22, v23);
      (*(v13 + 104))(v15, *MEMORY[0x277D45248], v12);
      (*(v13 + 16))(v11, v15, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      sub_21D53BFA4(0xD000000000000011, 0x800000021DC61C60, v11);
      sub_21D0CF7E0(v11, &unk_27CE650B0);
      sub_21D0D3954(v35, v8, &unk_27CE62610);
      v24 = &v8[*(v6 + 20)];
      v25 = v36;
      *v24 = v37;
      *(v24 + 1) = v25;
      type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = objc_opt_self();
      swift_unknownObjectRetain();
      v28 = [v27 bundleForClass_];
      v29 = sub_21DBFA12C();
      v30 = [objc_opt_self() storyboardWithName:v29 bundle:v28];

      v31 = sub_21D5A34BC(v30, 0xD000000000000032, 0x800000021DC61C80, v8);
      sub_21D5B8EB8(v8, type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument);
      v32 = v34;
      [v34 pushViewController:v31 animated:v38 & 1];

      (*(v13 + 8))(v15, v12);
    }
  }
}

void sub_21D81B0E8(void (*a1)(char *, uint64_t, uint64_t), void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a3;
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong navigationController];

    if (v17)
    {
      v18 = sub_21DBF66FC();
      (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
      sub_21D53BFA4(0xD000000000000017, 0x800000021DC61C40, v14);
      sub_21D0CF7E0(v14, &unk_27CE650B0);
      v19 = [a2 date];
      sub_21DBF55FC();

      v23 = 0;
      v20 = sub_21D8017C4(a4, v21, a1, v11, &v23);
      (*(v9 + 8))(v11, v8);
      [v17 pushViewController:v20 animated:v22 & 1];
    }
  }
}

void sub_21D81B334(uint64_t a1, uint64_t a2, int a3, NSObject *a4, uint64_t a5)
{
  v44 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_21DBF66FC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = [Strong navigationController], v18, v19))
  {
    v20 = a2;
    v21 = a1;
    v41 = a5;
    v42 = a3;
    ObjectType = swift_getObjectType();
    v23 = v20;
    v24 = (*(v20 + 16))(ObjectType, v20);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680) + 48);
    v40 = v24;
    *v16 = [v24 objectID];
    v26 = *MEMORY[0x277D451A0];
    v27 = sub_21DBF66BC();
    (*(*(v27 - 8) + 104))(&v16[v25], v26, v27);
    v28 = *MEMORY[0x277D45168];
    v29 = sub_21DBF66DC();
    (*(*(v29 - 8) + 104))(&v16[v25], v28, v29);
    (*(v14 + 104))(v16, *MEMORY[0x277D45248], v13);
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_27CE62450);
    sub_21DBF66EC();
    v31 = sub_21DBF54CC();
    (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
    sub_21DAEAF90(0xD000000000000010, 0x800000021DC6CBD0, 0x206B736174627553, 0xEC0000007473694CLL, v12);
    sub_21D0CF7E0(v12, &qword_27CE5EA20);
    v32 = sub_21D3112FC(v21, v23, v44, v41);
    v34 = v33;
    [v19 pushViewController:v32 animated:v42 & 1];

    (*(v14 + 8))(v16, v13);
    *(v43 + 32) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_27CE62450);
    v44 = sub_21DBF84AC();
    v36 = sub_21DBFAECC();
    if (os_log_type_enabled(v44, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_21D0C9000, v44, v36, "Failed to get navigation controller -- Failed to show subtask list", v37, 2u);
      MEMORY[0x223D46520](v37, -1, -1);
    }

    v38 = v44;
  }
}

void sub_21D81B800(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF8E0C();
  v4 = _s15RemindersUICore30TTRIQuickLookPreviewControllerC15previewItemURLsACSay10Foundation3URLVG_tcfC_0(v3);
  [v4 setCurrentPreviewItemIndex_];
  v5 = &v4[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate];
  swift_beginAccess();
  *(v5 + 1) = 0;
  swift_unknownObjectWeakAssign();
  [v4 setDelegate_];
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_21D81B8D4()
{
  MEMORY[0x223D46650](v0 + 16);
  sub_21D157444(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_21D81B9DC(void *a1, void *a2, int a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v83 = a6;
  LODWORD(v85) = a3;
  v77 = a2;
  v76 = a1;
  v84 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v74 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_21DBF5C4C();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v10 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_21DBF563C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v70[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v70[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v70[-v23];
  v25 = a4[1];
  v91 = *a4;
  v92 = v25;
  *v93 = a4[2];
  *&v93[9] = *(a4 + 41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = a5;
    v75 = v21;
    v27 = Strong;
    v28 = sub_21DBF66FC();
    v29 = 1;
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    sub_21D53BFA4(0xD000000000000018, 0x800000021DC61CC0, v24);
    sub_21D0CF7E0(v24, &unk_27CE650B0);
    aBlock = v91;
    v89 = v92;
    *v90 = *v93;
    *&v90[9] = *&v93[9];
    v73 = v27;
    v71 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&aBlock);
    if (v76)
    {
      v30 = v76;
      v31 = v75;
      TTRRecurrenceRuleModel.init(sourceRule:)(v30, v75);
      v29 = 0;
    }

    else
    {
      v31 = v75;
    }

    v36 = v82;
    (*(v82 + 56))(v31, v29, 1, v84);
    type metadata accessor for TTRICustomRecurrenceEditorRouter();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(v31, v18, &qword_27CE5A018);

    v38 = v77;
    v39 = sub_21D5B7C00(v37, v38, v18, v85 & 1);
    v40 = [v38 date];
    sub_21DBF55FC();

    v41 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    v42 = objc_allocWithZone(TTRICustomRecurrenceEditorViewController);
    v43 = sub_21DBF55BC();
    v44 = sub_21DBF5C0C();
    v45 = [v42 initWithStartDate:v43 timeZone:v44];

    v46 = v31;
    (*(v80 + 8))(v10, v81);
    (*(v78 + 8))(v12, v79);
    sub_21D0D3954(v31, v15, &qword_27CE5A018);
    if ((*(v36 + 48))(v15, 1, v84) == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE5A018);
    }

    else
    {
      v47 = v74;
      sub_21D55B1D8(v15, v74);
      v48 = TTRRecurrenceRuleModel.standaloneREMRecurrenceRule()();
      [v45 setRecurrenceRule_];

      sub_21D5B8EB8(v47, type metadata accessor for TTRRecurrenceRuleModel);
    }

    *v90 = sub_21D5B8EB0;
    *&v90[8] = v39;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v89 = sub_21D1B6000;
    *(&v89 + 1) = &block_descriptor_93;
    v49 = _Block_copy(&aBlock);

    [v45 setCompletionBlock_];
    _Block_release(v49);
    [v45 setProhibitsHourlyRecurrence_];
    swift_unknownObjectWeakAssign();

    *(v39 + 40) = v83;
    swift_unknownObjectWeakAssign();

    if ((v71 & 1) != 0 && (~v93[8] & 0xFE) != 0)
    {
      v54 = v93[8];
      if (v93[24])
      {
        v87 = 0;
        if (v93[8] < 0x40u)
        {
          v54 = v93[8] & 1;
        }

        v55 = 1;
      }

      else
      {
        v55 = *&v93[16];
        v87 = v93[24];
      }

      aBlock = v91;
      v89 = v92;
      *v90 = *v93;
      v90[8] = v54;
      v90[15] = v93[15];
      *&v90[13] = *&v93[12] >> 8;
      *&v90[9] = *&v93[8] >> 8;
      *&v90[16] = v55;
      v90[24] = v87;
      sub_21D0D3954(&v91, v86, &qword_27CE5D558);
      sub_21D50B9A4(&aBlock, v86);
      [v45 setModalPresentationStyle_];
      v56 = [v45 popoverPresentationController];
      if (v56)
      {
        v57 = v56;
        if (v90[24])
        {
          v58 = 15;
        }

        else
        {
          v58 = *&v90[16];
        }

        v59 = aBlock;
        v60 = v89;
        v61 = *v90;
        v62 = v90[8];
        [v56 setPermittedArrowDirections_];
        if (v62 > 0x3F)
        {
          v68 = 0;
          v67 = 1;
          v63 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
          v85 = v59;
          v66 = 0.0;
        }

        else
        {
          v85 = 0;
          v63 = *(&v59 + 1);
          v65 = *(&v60 + 1);
          v64 = *&v60;
          v66 = *&v61;
          v67 = v62;
          v68 = v59;
        }

        sub_21D50BA00(v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62);
        sub_21D50B9A4(&aBlock, v86);
        [v57 setSourceView_];
        if (v67)
        {
          v63 = *MEMORY[0x277CBF398];
          v64 = *(MEMORY[0x277CBF398] + 8);
          v65 = *(MEMORY[0x277CBF398] + 16);
          v66 = *(MEMORY[0x277CBF398] + 24);
        }

        [v57 setSourceRect_];
        [v57 setSourceItem_];

        swift_unknownObjectRelease();
        sub_21D1A9430(&aBlock);
        v46 = v75;
      }

      sub_21D1A9430(&aBlock);
      v69 = v73;
      [v73 presentViewController:v45 animated:1 completion:0];

      sub_21D1A9430(&aBlock);
    }

    else
    {
      v50 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v51 = [v50 presentationController];
      if (v51)
      {
        v52 = v51;
        [v51 setDelegate_];
      }

      v53 = v73;
      [v73 presentViewController:v50 animated:1 completion:0];
    }

    sub_21D0CF7E0(v46, &qword_27CE5A018);
  }

  else
  {
    if (qword_27CE569A0 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5DA50);
    v85 = sub_21DBF84AC();
    v33 = sub_21DBFAECC();
    if (os_log_type_enabled(v85, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21D0C9000, v85, v33, "Failed to get viewController -- Failed to show custom recurrence editor", v34, 2u);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    v35 = v85;
  }
}

void sub_21D81C504(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, __int128 *a7)
{
  v97 = a6;
  v98 = a3;
  v101 = a2;
  v100 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v88 - v16;
  v18 = sub_21DBF66FC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a7[1];
  v108 = *a7;
  v109 = v22;
  *v110 = a7[2];
  *&v110[9] = *(a7 + 41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v91 = v12;
    v92 = a5;
    v93 = a4;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680) + 48);
    ObjectType = swift_getObjectType();
    v89 = v101[2];
    v25 = v89();
    v26 = [v25 objectID];

    *v21 = v26;
    v27 = *MEMORY[0x277D45190];
    v28 = sub_21DBF66BC();
    (*(*(v28 - 8) + 104))(&v21[v23], v27, v28);
    v29 = *MEMORY[0x277D45168];
    v30 = sub_21DBF66DC();
    (*(*(v30 - 8) + 104))(&v21[v23], v29, v30);
    v31 = *MEMORY[0x277D45248];
    v95 = v19;
    v32 = *(v19 + 104);
    v96 = v18;
    v32(v21, v31, v18);
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v33 = sub_21DBF84BC();
    __swift_project_value_buffer(v33, qword_27CE62450);
    v94 = v21;
    sub_21DBF66EC();
    v34 = sub_21DBF54CC();
    (*(*(v34 - 8) + 56))(v17, 0, 1, v34);
    sub_21DAEAF90(0xD000000000000010, 0x800000021DC6CBD0, 0x7367617468736148, 0xEF726F7469644520, v17);
    sub_21D0CF7E0(v17, &qword_27CE5EA20);
    v105 = v108;
    v106 = v109;
    *v107 = *v110;
    *&v107[9] = *&v110[9];
    v90 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&v105);
    v35 = v90 & 1;
    v36 = (v89)(ObjectType, v101);
    type metadata accessor for TTRHashtagEditorInteractor();
    swift_allocObject();
    v37 = v97;
    v101 = v36;
    v38 = sub_21D365EC8(v101, v37);
    v39 = type metadata accessor for TTRIHashtagEditorRouter();
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = v99;
    sub_21D0D3954(v98, v99, &unk_27CE622B0);
    *(&v106 + 1) = v39;
    *v107 = &off_282EC6F90;
    *&v105 = v40;
    type metadata accessor for TTRIHashtagEditorPresenter();
    v42 = swift_allocObject();
    v43 = __swift_mutable_project_boxed_opaque_existential_1(&v105, v39);
    v100 = &v88;
    v44 = MEMORY[0x28223BE20](v43);
    v46 = (&v88 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46, v44);
    v48 = *v46;
    v103[4] = &off_282EC6F90;
    v103[3] = v39;
    v103[0] = v48;
    *(v42 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v42 + 40) = 0;
    swift_unknownObjectWeakInit();
    v49 = OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_viewModel;
    v50 = type metadata accessor for TTRIHashtagEditorViewModel();
    (*(*(v50 - 8) + 56))(v42 + v49, 1, 1, v50);
    v51 = v42 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_style;
    *v51 = v35;
    *(v51 + 8) = 0;
    v52 = (v42 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_interactor);
    *v52 = v38;
    v52[1] = &off_282EB2E90;
    sub_21D0D32E4(v103, v42 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router);
    v53 = v91;
    sub_21D0D3954(v41, v91, &unk_27CE622B0);
    type metadata accessor for TTRHashtagEditorPresenterCapability();
    v54 = swift_allocObject();
    swift_retain_n();

    v55 = sub_21D59EB9C(v38, 0, v53, v54);
    sub_21D0CF7E0(v41, &unk_27CE622B0);
    __swift_destroy_boxed_opaque_existential_0(v103);
    *(v42 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_presenterCapability) = v55;
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = (v55 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater);
    v58 = *(v55 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater);
    *v57 = sub_21D59EFC4;
    v57[1] = v56;

    sub_21D0D0E88(v58);

    __swift_destroy_boxed_opaque_existential_0(&v105);
    v59 = objc_allocWithZone(type metadata accessor for TTRIHashtagEditorViewController());

    v60 = sub_21D59EABC(v35, 0, v42, v59);

    v38[3] = &off_282EC5CF8;
    swift_unknownObjectWeakAssign();

    *(v42 + 24) = &off_282EC5AB8;
    swift_unknownObjectWeakAssign();
    *(v42 + 40) = v92;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectWeakAssign();

    if ((v90 & 1) != 0 && (~v110[8] & 0xFE) != 0)
    {
      v70 = v110[8];
      if (v110[24])
      {
        v104 = 0;
        if (v110[8] < 0x40u)
        {
          v70 = v110[8] & 1;
        }

        v71 = 1;
      }

      else
      {
        v71 = *&v110[16];
        v104 = v110[24];
      }

      v72 = v96;
      v105 = v108;
      v106 = v109;
      *v107 = *v110;
      v107[8] = v70;
      v107[15] = v110[15];
      *&v107[13] = *&v110[12] >> 8;
      *&v107[9] = *&v110[8] >> 8;
      *&v107[16] = v71;
      v107[24] = v104;
      v73 = v60;
      sub_21D0D3954(&v108, v103, &qword_27CE5D558);
      sub_21D50B9A4(&v105, v103);
      [v73 setModalPresentationStyle_];
      v74 = [v73 popoverPresentationController];
      if (v74)
      {
        v75 = v74;
        if (v107[24])
        {
          v76 = 15;
        }

        else
        {
          v76 = *&v107[16];
        }

        v77 = v105;
        v78 = v106;
        v79 = *v107;
        v80 = v107[8];
        [v74 setPermittedArrowDirections_];
        if (v80 >= 0x40)
        {
          v86 = 0;
          v85 = 1;
          v81 = 0.0;
          v82 = 0.0;
          v83 = 0.0;
          v101 = v77;
          v84 = 0.0;
        }

        else
        {
          v101 = 0;
          v81 = *(&v77 + 1);
          v83 = *(&v78 + 1);
          v82 = *&v78;
          v84 = *&v79;
          v85 = v80;
          v86 = v77;
        }

        sub_21D50BA00(v77, *(&v77 + 1), v78, *(&v78 + 1), v79, v80);
        sub_21D50B9A4(&v105, v103);
        [v75 setSourceView_];
        if (v85)
        {
          v81 = *MEMORY[0x277CBF398];
          v82 = *(MEMORY[0x277CBF398] + 8);
          v83 = *(MEMORY[0x277CBF398] + 16);
          v84 = *(MEMORY[0x277CBF398] + 24);
        }

        [v75 setSourceRect_];
        [v75 setSourceItem_];

        swift_unknownObjectRelease();
        sub_21D1A9430(&v105);
        v72 = v96;
      }

      else
      {
      }

      sub_21D1A9430(&v105);
      v87 = Strong;
      [Strong presentViewController:v73 animated:1 completion:0];

      sub_21D1A9430(&v105);
      v65 = v72;
    }

    else
    {
      v61 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v62 = [v61 presentationController];
      if (v62)
      {
        v63 = v62;
        [v62 setDelegate_];
      }

      v64 = Strong;
      [Strong presentViewController:v61 animated:1 completion:0];

      v65 = v96;
    }

    (*(v95 + 8))(v94, v65);
  }

  else
  {
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v66 = sub_21DBF84BC();
    __swift_project_value_buffer(v66, qword_27CE62450);
    Strong = sub_21DBF84AC();
    v67 = sub_21DBFAECC();
    if (os_log_type_enabled(Strong, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_21D0C9000, Strong, v67, "Failed to get viewController -- Failed to show hashtag editor", v68, 2u);
      MEMORY[0x223D46520](v68, -1, -1);
    }

    v69 = Strong;
  }
}

uint64_t sub_21D81D198(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D82E47C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21D82B400(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21D81D204()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62470);
  v1 = __swift_project_value_buffer(v0, qword_27CE62470);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_21D81D2F4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = [result isViewLoaded];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_21D81D608(v5);
        sub_21D816CA8(v5);
        swift_unknownObjectRelease();
        result = sub_21D0CF7E0(v5, &qword_27CE62270);
      }

      if ((a1 & 1) != 0 && *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState) <= 1u)
      {
        v8 = v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v9 = *(v8 + 8);
          ObjectType = swift_getObjectType();
          (*(v9 + 16))(v1, &off_282ED5018, ObjectType, v9);
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_21D81D47C(char a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
    v4 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v4 + 40) |= a1 & 1;
    *(v4 + 48) = 0;
    v5._object = 0x800000021DC49D80;
    v5._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v5);
  }

  return result;
}

uint64_t sub_21D81D54C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
    v2 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v2 + 48) = 0;
    v3._object = 0x800000021DC49D80;
    v3._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
  }

  return result;
}

uint64_t sub_21D81D608@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = type metadata accessor for TTRReminderDetailViewModel(0);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_frozenViewModelBeforeCancelingChanges;
  swift_beginAccess();
  sub_21D0D3954(&v1[v13], v5, &qword_27CE62270);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v65 = v7;
    v67 = a1;
    sub_21D0CF7E0(v5, &qword_27CE62270);
    v15 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor];
    v14 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
    ObjectType = swift_getObjectType();
    v17 = v14[2];
    v62 = v15;
    v18 = ObjectType;
    v61 = ObjectType;
    v63 = v17();
    v64 = v12;
    v19 = v14[7];
    v20 = v1;
    v19(&v81, v18, v14);
    v21 = v81;
    v22 = v82;
    v23 = v83;
    v80[5] = v81;
    v80[6] = v82;
    v80[7] = v83;
    TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v80);

    v24 = v20;
    v59 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state];
    v25 = v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 8];
    v26 = v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 9];
    v27 = v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 10];
    v78 = &_s15RemindersUICore14PresenterStateVN_0;
    v79 = &off_282ED4F20;
    v74 = v59;
    v75 = v25;
    v76 = v26;
    v77 = v27;
    v28 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_observerForShouldShowAsUnauthorizedForPreciseLocation];
    swift_beginAccess();
    v29 = &v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
    v31 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
    v30 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8];
    v33 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16];
    v32 = *(v29 + 3);
    v66 = v6;
    v34 = *(v29 + 4);
    LOBYTE(v23) = v29[40];
    v60 = *(v28 + 16);
    *&v69 = v31;
    *(&v69 + 1) = v30;
    v70 = v33;
    v71 = v32;
    v72 = v34;
    v73 = v23;
    v35 = v14[12];

    v36 = v34;
    v6 = v66;
    sub_21D7A9830(v31, v30, v33, v32, v36, v23);
    v35(&v68, v61, v14);
    LODWORD(v30) = v24[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration + 4];
    v37 = v63;
    v38 = v64;
    sub_21D79C2D4(v37, v80, &v74, v60 & 1, &v69, &v68, v30, v24, v64);
    sub_21D81DC68(v38, v37);
    sub_21D81DF68(v38, v37);
    sub_21D81E378(v38, v37);
    sub_21D81E900(v38, v37);
    v39 = v38 + v6[23];
    v40 = *(v39 + 32);
    if (v40 < 0 && (v40 != -128 || *(v39 + 16) | *(v39 + 24) | *v39 | *(v39 + 8)))
    {
      v43 = 0;
      v47 = 0;
    }

    else
    {
      v41 = *&v24[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationQuickPicksInteractor + 8];
      v42 = swift_getObjectType();
      v43 = (*(v41 + 8))(v42, v41);
      v44 = sub_21D0D8CF0(0, &qword_280D17770);
      v72 = &protocol witness table for REMReminderChangeItem;
      v71 = v44;
      *&v69 = v37;
      v45 = *(v41 + 24);
      v46 = v37;
      v45(v80, &v69, v42, v41);
      __swift_destroy_boxed_opaque_existential_0(&v69);
      v47 = v80[0];
    }

    v48 = v38 + v6[24];

    *v48 = v43;
    *(v48 + 8) = v47;
    sub_21D4582E8(v38 + v6[20]);
    Strong = swift_unknownObjectWeakLoadStrong();
    a1 = v67;
    v7 = v65;
    if (Strong)
    {
      v50 = [Strong viewIfLoaded];
      if (v50)
      {
        v51 = v50;
        v52 = [v50 traitCollection];

        [v52 displayScale];
        v54 = v53;

        swift_unknownObjectRelease();
        v55 = 0;
        v56 = v54;
LABEL_12:
        sub_21D5D91B0(v38, v37, v56, v55);

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v56 = 0;
    v55 = 1;
    goto LABEL_12;
  }

  sub_21D82F96C(v5, v9, type metadata accessor for TTRReminderDetailViewModel);
  sub_21D82F96C(v9, v12, type metadata accessor for TTRReminderDetailViewModel);
  v38 = v12;
LABEL_13:
  sub_21D82F96C(v38, a1, type metadata accessor for TTRReminderDetailViewModel);
  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_21D81DC68(uint64_t a1, void *a2)
{
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration) != 1)
  {
    v18 = 1;
    goto LABEL_14;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = sub_21D80A708();
    swift_unknownObjectRelease();
    v10 = *(v9 + 32);

    v11 = qword_27CE8EBC8;
    swift_beginAccess();
    if (*&v10[v11])
    {
      sub_21D0D3954(&v10[v11], &v30, &qword_27CE5E8E0);

      v12 = v31;
      swift_unknownObjectRetain();
      sub_21D0CF7E0(&v30, &qword_27CE5E8E0);
      ObjectType = swift_getObjectType();
      (*(*(v12 + 8) + 32))(v32, ObjectType);
      swift_unknownObjectRelease();
      sub_21D0D0FD0(v32, v33);
      v14 = v34;
      v15 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      if ((*(v15 + 16))(v14, v15))
      {
        v16 = v34;
        v17 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v18 = (*(v17 + 40))(v16, v17);
        __swift_destroy_boxed_opaque_existential_0(v33);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    else
    {
    }
  }

  v19 = [a2 titleAsString];
  if (v19)
  {
    v20 = v19;
    v21 = sub_21DBFA16C();
    v23 = v22;

    v30 = v21;
    v31 = v23;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v24 = sub_21DBFBB3C();
    v26 = v25;
    (*(v6 + 8))(v8, v5);

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    v18 = v27 != 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_14:
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  *(a1 + *(result + 20)) = v18 & 1;
  return result;
}

void sub_21D81DF68(uint64_t a1, void *a2)
{
  v29 = a1;
  v4 = sub_21DBF61CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF7A2C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 accountCapabilities];
  v14 = [v13 supportsPersonTrigger];

  if (v14)
  {
    v15 = [a2 contactHandles];
    if (v15)
    {
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21DC09CF0;
      *(v17 + 32) = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled_];
      sub_21DBF62EC();

      v18 = (*(v9 + 88))(v12, v8);
      if (v18 == *MEMORY[0x277D45730])
      {
        (*(v9 + 96))(v12, v8);
        v19 = v29 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100);
        sub_21D7A9648(*v19, *(v19 + 8), *(v19 + 16));
        *v19 = xmmword_21DC0E710;
        *(v19 + 16) = 0;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = sub_21DBF816C();
        sub_21DBF820C();
      }

      else if (v18 == *MEMORY[0x277D45738])
      {
        (*(v9 + 96))(v12, v8);
        (*(v5 + 32))(v7, v12, v4);
        v23 = sub_21DBF61AC();
        v25 = v24;
        v26 = sub_21DBF61BC();

        (*(v5 + 8))(v7, v4);
        v27 = v29 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100);
        sub_21D7A9648(*v27, *(v27 + 8), *(v27 + 16));
        *v27 = v23;
        *(v27 + 8) = v25;
        *(v27 + 16) = v26;
      }

      else
      {
        sub_21DBFC63C();
        __break(1u);
      }
    }

    else
    {
      v21 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 9);
      v22 = v29 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100);
      sub_21D7A9648(*v22, *(v22 + 8), *(v22 + 16));
      if (v21 == 1)
      {
        *v22 = 0;
        *(v22 + 8) = 0;
      }

      else
      {
        *v22 = xmmword_21DC19C40;
      }

      *(v22 + 16) = 0;
    }
  }
}

uint64_t sub_21D81E378(uint64_t a1, void *a2)
{
  if (v2[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration + 2] == 1)
  {
    goto LABEL_11;
  }

  v5 = v2;
  v6 = *&v2[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
  ObjectType = swift_getObjectType();
  (*(v6 + 56))(v71, ObjectType, v6);
  v8 = *v71;
  v9 = *&v71[16];
  v63 = *v71;
  *&v64 = *&v71[16];
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v72);
  if (!*(&v73 + 1))
  {
    sub_21D0CF7E0(&v72, &qword_27CE59DC0);

    goto LABEL_11;
  }

  sub_21D0D0FD0(&v72, v80);

  v10 = v81;
  v11 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v12 = (*(v11 + 72))(v10, v11);
  LODWORD(v10) = [v12 supportsAssignments];

  if (!v10 || (v13 = v81, v14 = v82, __swift_project_boxed_opaque_existential_1(v80, v81), (v15 = (*(v14 + 80))(v13, v14)) == 0) || (v16 = v15, v17 = [v15 objectID], v16, !v17))
  {
    __swift_destroy_boxed_opaque_existential_0(v80);
LABEL_11:
    v22 = a1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104);
    v23 = *(v22 + 96);
    v77 = *(v22 + 80);
    v78 = v23;
    v79 = *(v22 + 112);
    v24 = *(v22 + 64);
    v25 = *(v22 + 16);
    v72 = *v22;
    v73 = v25;
    v26 = *(v22 + 48);
    v74 = *(v22 + 32);
    v75 = v26;
    v76 = v24;
    result = sub_21D7A96C8(&v72);
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    *(v22 + 96) = 0u;
    *(v22 + 112) = 0;
    return result;
  }

  v18 = [a2 assignmentContext];
  if (v18 && (v19 = v18, v20 = [v18 currentAssignment], v19, v20))
  {
    v21 = [v20 assigneeID];
  }

  else
  {
    v21 = 0;
  }

  memset(&v71[8], 0, 104);
  *v71 = 1;
  v28 = v81;
  v29 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  (*(v29 + 96))(&v63, v28, v29);
  v30 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v31 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v32 = (*(v31 + 24))(v30, v31);
    v33 = v21;
    v34 = v17;
    v35 = v5;
    v36 = sub_21D82E7A8(v32, v34, v35, v21, v71);

    __swift_destroy_boxed_opaque_existential_0(&v63);
    v70 = v36;
    sub_21DBF8E0C();
    sub_21D81D198(&v70);

    *&v72 = &unk_282EA7AC8;
    sub_21D56333C(v70);

    v61 = v72;
    v67 = *&v71[64];
    v68 = *&v71[80];
    v69 = *&v71[96];
    v63 = *v71;
    v64 = *&v71[16];
    v65 = *&v71[32];
    v66 = *&v71[48];
    v37 = *v71;
    if (*v71 == 1)
    {
      v37 = 0;
      v59 = 0;
      v60 = 0;
      v57 = 0;
      v58 = 0;
      v56 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v59 = v64;
      v60 = *(&v63 + 1);
      v57 = v65;
      v58 = *(&v64 + 1);
      v38 = v66;
      v56 = *(&v65 + 1);
      v39 = *(&v66 + 1);
      v41 = *(&v67 + 1);
      v40 = v67;
      v43 = *(&v68 + 1);
      v42 = v68;
      v45 = *(&v69 + 1);
      v44 = v69;
    }

    v51 = a1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104);
    v52 = *(v51 + 96);
    v77 = *(v51 + 80);
    v78 = v52;
    v79 = *(v51 + 112);
    v53 = *(v51 + 64);
    v54 = *(v51 + 16);
    v72 = *v51;
    v73 = v54;
    v55 = *(v51 + 48);
    v74 = *(v51 + 32);
    v75 = v55;
    v76 = v53;
    sub_21D0D3954(&v63, v62, &qword_27CE62638);
    sub_21D7A96C8(&v72);
    *v51 = v61;
    *(v51 + 8) = v37;
    *(v51 + 16) = v60;
    *(v51 + 24) = v59;
    *(v51 + 32) = v58;
    *(v51 + 40) = v57;
    *(v51 + 48) = v56;
    *(v51 + 56) = v38;
    *(v51 + 64) = v39;
    *(v51 + 72) = v40;
    *(v51 + 80) = v41;
    *(v51 + 88) = v42;
    *(v51 + 96) = v43;
    *(v51 + 104) = v44;
    *(v51 + 112) = v45;
  }

  else
  {

    sub_21D0CF7E0(&v63, &qword_27CE62630);
    v46 = a1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104);
    v47 = *(v46 + 96);
    v77 = *(v46 + 80);
    v78 = v47;
    v79 = *(v46 + 112);
    v48 = *(v46 + 64);
    v49 = *(v46 + 16);
    v72 = *v46;
    v73 = v49;
    v50 = *(v46 + 48);
    v74 = *(v46 + 32);
    v75 = v50;
    v76 = v48;
    sub_21D7A96C8(&v72);
    *v46 = 0u;
    *(v46 + 16) = 0u;
    *(v46 + 32) = 0u;
    *(v46 + 48) = 0u;
    *(v46 + 64) = 0u;
    *(v46 + 80) = 0u;
    *(v46 + 96) = 0u;
    *(v46 + 112) = 0;
  }

  v76 = *&v71[64];
  v77 = *&v71[80];
  v78 = *&v71[96];
  v72 = *v71;
  v73 = *&v71[16];
  v74 = *&v71[32];
  v75 = *&v71[48];
  sub_21D0CF7E0(&v72, &qword_27CE62638);
  return __swift_destroy_boxed_opaque_existential_0(v80);
}

void sub_21D81E900(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = v49 - v7;
  v9 = [a2 attachmentContext];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 attachments];
    v53 = v2;
    v12 = v11;

    sub_21D0D8CF0(0, &qword_280D0C310);
    v13 = sub_21DBFA5EC();

    v50 = v13;
    v62 = v13;
    sub_21D0D8CF0(0, &qword_280D0C290);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E900);
    v49[2] = sub_21D0D0F1C(&qword_280D0C3A0, &unk_27CE5E900);
    v49[3] = v14;
    v15 = sub_21DBFA47C();
    Strong = swift_unknownObjectWeakLoadStrong();
    v17 = 1.0;
    if (Strong)
    {
      v18 = [Strong viewIfLoaded];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 traitCollection];

        [v20 displayScale];
        v17 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v51 = v8;
    v52 = a1;
    v22 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v15, v17);
    v23 = *(v22 + 2);
    if (v23)
    {
      v24 = 0;
      v25 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 < 0)
      {
        v26 = v15;
      }

      else
      {
        v26 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v49[1] = v26;
      v56 = v15 & 0xC000000000000001;
      v27 = v22 + 48;
      v28 = MEMORY[0x277D84F90];
      v57 = v15 >> 62;
      v54 = v15 & 0xFFFFFFFFFFFFFF8;
      v55 = v22;
      while (v24 < v23)
      {
        v29 = *(v27 - 2);
        v30 = *(v27 - 1);
        v31 = *v27;
        if (v57)
        {
          if (v24 == sub_21DBFBD7C())
          {
            goto LABEL_29;
          }
        }

        else if (v24 == *(v25 + 16))
        {
          goto LABEL_29;
        }

        if (v56)
        {
          sub_21D72DABC(v29, v30, v31);
          v32 = v15;
          v34 = MEMORY[0x223D44740](v24, v15);
        }

        else
        {
          if (v24 >= *(v25 + 16))
          {
            goto LABEL_32;
          }

          v32 = v15;
          v33 = *(v15 + 8 * v24 + 32);
          sub_21D72DABC(v29, v30, v31);
          v34 = v33;
        }

        v62 = v29;
        v63 = v30;
        v64 = v31;
        v65 = v34;
        sub_21D826DB0(&v62, v34, &v58);
        v35 = v65;
        sub_21D72DB24(v62, v63, v64);

        v37 = v58;
        v36 = v59;
        v39 = v60;
        v38 = v61;
        if (v60)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_21D214920(0, *(v28 + 2) + 1, 1, v28);
          }

          v41 = *(v28 + 2);
          v40 = *(v28 + 3);
          if (v41 >= v40 >> 1)
          {
            v28 = sub_21D214920((v40 > 1), v41 + 1, 1, v28);
          }

          *(v28 + 2) = v41 + 1;
          v42 = &v28[32 * v41];
          *(v42 + 4) = v37;
          *(v42 + 5) = v36;
          *(v42 + 6) = v39;
          *(v42 + 7) = v38;
        }

        else
        {
          sub_21D81A184(v58, v59, 0, v61);
        }

        ++v24;
        v23 = *(v55 + 2);
        v27 += 24;
        v15 = v32;
        v25 = v54;
        if (v24 == v23)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
LABEL_29:

      v62 = v50;
      sub_21DBF54CC();
      v43 = v51;
      sub_21DBFA48C();

      v44 = type metadata accessor for TTRReminderDetailViewModel(0);
      v45 = *(v44 + 128);
      v46 = v52;

      *(v46 + v45) = v28;
      v47 = *(v44 + 132);
      sub_21D82F904(v46 + v47, type metadata accessor for TTRReminderDetailViewModel.URLState);
      sub_21D57690C(v43, v46 + v47);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
      (*(*(v48 - 8) + 56))(v46 + v47, 0, 1, v48);
    }
  }
}

void sub_21D81EE04(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability);
  v3 = *(v2 + 56);
  if (v3 == 2)
  {
    v4 = 0;
    v5 = 0uLL;
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = v3 & 1;
  }

  *a1 = v5;
  *(a1 + 16) = v4;
}

uint64_t sub_21D81EE3C(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v7 = inited + 32;
  v8 = a1 & 1;
  v9 = 1702195828;
  if (!v8)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  v11 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v11;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v7, &qword_27CE5A6B0);
  sub_21DAEACDC();

  return a3(v8);
}

unsigned __int8 *sub_21D81EFA4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE62470);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v6 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability);
  v9 = a3;
  result = sub_21D455530(&v9);
  v8 = *(v6 + 16);
  if (v8)
  {

    v8(1);

    return sub_21D0D0E88(v8);
  }

  return result;
}

uint64_t sub_21D81F0C4(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  *(inited + 32) = 1701606770;
  *(inited + 40) = 0xE400000000000000;
  v6 = [objc_opt_self() localizedDescriptionForRepeatType_];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0x7265646E696D6572;
  *(inited + 88) = 0xE800000000000000;
  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);
  v14 = [v13 objectID];

  *(inited + 120) = sub_21D0D8CF0(0, &qword_280D17880);
  *(inited + 96) = v14;
  sub_21D17716C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0);
  swift_arrayDestroy();
  sub_21DAEACDC();

  return sub_21D455EBC(a1);
}

void sub_21D81F2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-v3];
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  sub_21D0D3954(a1, v4, &unk_27CE62610);
  v7 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  sub_21D4562D4(a1);
}

uint64_t sub_21D81F490(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = aBlock - v5;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v9 = inited + 32;
  v10 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v10 = 0x65736C6166;
  }

  v11 = 0xE500000000000000;
  if (a1)
  {
    v11 = 0xE400000000000000;
  }

  v12 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v12;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v9, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v13 = &v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state];
  if (a1)
  {
    v13[8] = 1;
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v14 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v14 + 40) |= 1uLL;
    *(v14 + 48) = 0;
    v15._object = 0x800000021DC49D80;
    v15._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v15);

    v16 = sub_21DBFA89C();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_21DBFA84C();
    v17 = v1;
    v18 = sub_21DBFA83C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v17;
    sub_21D1B5178(0, 0, v6, &unk_21DC2B650, v19);
  }

  else
  {
    v13[8] = 0;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v22 = objc_opt_self();
    v23 = sub_21DBFA12C();

    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_21D82F798;
    *(v25 + 24) = v24;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_94;
    v26 = _Block_copy(aBlock);
    v27 = v2;

    [v22 withActionName:v23 block:v26];

    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D81F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = sub_21DBFA84C();
  v4[6] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21D81FA00, v6, v5);
}

uint64_t sub_21D81FA00()
{
  v0[9] = *(v0[4] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker);
  v0[10] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_21D81FACC;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D81FACC()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D81FC08, v1, v0);
}

uint64_t sub_21D81FC08()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_21D81FCB4;

  return sub_21D591090();
}

uint64_t sub_21D81FCB4(char a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  *v3 = v5;
  v3[1] = sub_21D81FE18;

  return sub_21D5BA740(0);
}

uint64_t sub_21D81FE18(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_21D81FF40, v5, v4);
}

uint64_t sub_21D81FF40()
{
  v8 = v0;
  v1 = *(v0 + 112);

  if (v1 == 1)
  {
    v7 = 0;
    v2 = &v7;
  }

  else if (*(v0 + 24) == 1)
  {
    v6 = 1;
    v2 = &v6;
  }

  else
  {
    v5 = 3;
    v2 = &v5;
  }

  sub_21D81FFEC(v2, 0);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21D81FFEC(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_21D81D608(&v30 - v10);
  v13 = type metadata accessor for TTRReminderDetailViewModel(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v11, 1, v13) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE62270);
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v31 = v14;
    v32 = v12;
    v17 = &v11[*(v13 + 92)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = *(v17 + 2);
    v15 = *(v17 + 3);
    v21 = v17[32];
    sub_21D48BB60(*v17, v19, v20, v15, v17[32]);
    sub_21D82F904(v11, type metadata accessor for TTRReminderDetailViewModel);
    if (v21 >> 6)
    {
      if (v21 >> 6 == 1)
      {
        sub_21D48C240(v18, v19, v20, v15, v21);
      }

      v15 = 0;
      v16 = 1;
    }

    else
    {
      sub_21D48C240(v18, v19, v20, v15, v21);
      v16 = 0;
    }

    LOBYTE(v12) = v32;
    v14 = v31;
  }

  sub_21D81D608(v8);
  if (v14(v8, 1, v13) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE62270);
LABEL_17:
    v15 = 0;
    v26 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationQuickPicksInteractor + 8);
    v24 = 6;
    goto LABEL_18;
  }

  v22 = &v8[*(v13 + 96)];
  v23 = *v22;
  v24 = v22[8];
  sub_21DBF8E0C();
  sub_21D82F904(v8, type metadata accessor for TTRReminderDetailViewModel);
  if (!v23)
  {
    goto LABEL_17;
  }

  v25 = v24 == 6 ? 1 : v16;
  if (v25)
  {
    goto LABEL_17;
  }

  v26 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationQuickPicksInteractor + 8);
LABEL_18:
  v34 = v12;
  ObjectType = swift_getObjectType();
  v33[0] = v24;
  v33[1] = v15;
  result = (*(v26 + 16))(&v34, v33, ObjectType, v26);
  if (result)
  {
    v33[0] = result;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE98);
    sub_21D0D0F1C(&qword_27CE62690, &qword_27CE5CE98);
    v29 = sub_21DBF92AC();

    *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationTriggerCancellable) = v29;
  }

  return result;
}

void sub_21D8203C4(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = *a1;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v23 = v7;
  v10 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (v7 < 3)
  {
    v23 = v7;
    sub_21D81FFEC(&v23, 1);
    v12 = sub_21DBFA89C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_21DBFA84C();
    v13 = v2;
    v14 = sub_21DBFA83C();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v17 = &unk_21DC2B6A8;
LABEL_7:
    sub_21D1B5178(0, 0, v6, v17, v15);

    return;
  }

  if (v7 - 3 < 2)
  {
    v23 = v7;
    sub_21D81FFEC(&v23, 1);
    v18 = sub_21DBFA89C();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    sub_21DBFA84C();
    v19 = v2;
    v20 = sub_21DBFA83C();
    v15 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v15[2] = v20;
    v15[3] = v21;
    v15[4] = v19;
    v17 = &unk_21DC2B698;
    goto LABEL_7;
  }

  sub_21D8206E0(1);
}

void sub_21D8206E0(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  v10 = v9(ObjectType, v7);
  v11 = v9(ObjectType, v7);
  v12 = sub_21D7A5E9C();
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v14 = 0;
    goto LABEL_9;
  }

  v15 = v12;
  v16 = sub_21DBFBD7C();
  v12 = v15;
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x223D44740](0);
    goto LABEL_6;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_6:
    v14 = v13;

LABEL_9:
    v17 = sub_21DBFA89C();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_21DBFA84C();
    v18 = v14;
    v19 = v2;
    v20 = v10;
    v21 = sub_21DBFA83C();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
    *(v22 + 48) = v14;
    *(v22 + 56) = a1 & 1;
    sub_21D1B5178(0, 0, v6, &unk_21DC2B638, v22);

    return;
  }

  __break(1u);
}

uint64_t sub_21D820928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D8209C4, v6, v5);
}

uint64_t sub_21D8209C4()
{
  v0[7] = *(v0[2] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker);
  v0[8] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_21D820A90;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D820A90()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D820BCC, v1, v0);
}

uint64_t sub_21D820BCC()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21D820C78;

  return sub_21D591090();
}

uint64_t sub_21D820C78()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21D4592D0, v3, v2);
}

uint64_t sub_21D820D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D820E34, v6, v5);
}

uint64_t sub_21D820E34()
{
  *(v0 + 56) = sub_21DBFA83C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_21D453D84;

  return sub_21D591AA8(2, 1);
}

void sub_21D820EFC(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = [v6 alarms];

  if (!v7)
  {
    return;
  }

  sub_21D0D8CF0(0, &qword_280D17670);
  v8 = sub_21DBFA5EC();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_26:

    return;
  }

LABEL_25:
  v9 = sub_21DBFBD7C();
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_4:
  v29 = a1;
  v30 = v2;
  v10 = 0;
  a1 = v8 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D44740](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v2 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v13 = [v11 trigger];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v10;
    if (v2 == v9)
    {
      goto LABEL_26;
    }
  }

  v31 = [v12 trigger];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE62470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = 28532;
    *(inited + 40) = 0xE200000000000000;
    aBlock[0] = v29;
    type metadata accessor for REMAlarmProximity(0);
    v18 = sub_21DBFA1AC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    sub_21D17716C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
    sub_21DAEACDC();

    v20 = [v15 structuredLocation];
    v21 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v20 proximity:v29];
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v22 = objc_opt_self();
    v23 = sub_21DBFA12C();

    v24 = swift_allocObject();
    *(v24 + 16) = v30;
    *(v24 + 24) = v21;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_21D830224;
    *(v25 + 24) = v24;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_178;
    v26 = _Block_copy(aBlock);
    v27 = v30;
    v28 = v21;

    [v22 withActionName:v23 block:{v26, 0x800000021DC4FC70}];

    _Block_release(v26);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_21D821498(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &aBlock[-1] - v5;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v9 = inited + 32;
  v10 = a1 & 1;
  v11 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v11 = 0x65736C6166;
  }

  v12 = 0xE500000000000000;
  if (a1)
  {
    v12 = 0xE400000000000000;
  }

  v13 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v13;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v9, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 9] = v10;
  if (a1)
  {
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v14 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v14 + 40) |= 1uLL;
    *(v14 + 48) = 0;
    v15._object = 0x800000021DC49D80;
    v15._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v15);

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v16 = objc_opt_self();
    v17 = sub_21DBFA12C();

    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = v10;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_21D830284;
    *(v19 + 24) = v18;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_188_0;
    v20 = _Block_copy(aBlock);
    v21 = v2;

    [v16 withActionName:v17 block:v20];

    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }

    else
    {
      v23 = sub_21DBFA89C();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      sub_21DBFA84C();
      v24 = v21;
      v25 = sub_21DBFA83C();
      v26 = swift_allocObject();
      v27 = MEMORY[0x277D85700];
      v26[2] = v25;
      v26[3] = v27;
      v26[4] = v24;
      sub_21D1B5178(0, 0, v6, &unk_21DC2B688, v26);
    }
  }

  else
  {
    v28 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
    ObjectType = swift_getObjectType();
    return (*(v28 + 232))(0, ObjectType, v28);
  }

  return result;
}

uint64_t sub_21D8219AC(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  v8 = qword_27CE57608;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D830344;
  *(v9 + 24) = v7;
  sub_21D0D8CF0(0, &qword_280D17680);

  sub_21DBFAE8C();
}

void sub_21D821B34(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_21D821498((a2 & 1) == 0);
  }
}

uint64_t sub_21D821B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D821C30, v6, v5);
}

uint64_t sub_21D821C30()
{
  v0[7] = *(v0[2] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker);
  v0[8] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_21D821CFC;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D821CFC()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D821E38, v1, v0);
}

uint64_t sub_21D821E38()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21D595B6C;

  return sub_21D5BA740(1);
}

uint64_t sub_21D821EE8(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  aBlock[0] = a1;
  type metadata accessor for REMReminderPriorityLevel(0);
  v6 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v8 = objc_opt_self();
  v9 = sub_21DBFA12C();

  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21D830084;
  *(v11 + 24) = v10;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_135;
  v12 = _Block_copy(aBlock);
  v13 = v2;

  [v8 withActionName:v9 block:{v12, 0x800000021DC4F7F0}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D82222C()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = [objc_allocWithZone(MEMORY[0x277CBDC18]) init];
    [v4 setDelegate_];
    sub_21D0D8CF0(0, &qword_27CE5A8E0);
    v3 = sub_21DBFADEC();
    [v4 setPredicateForEnablingContact_];

    [v2 presentViewController:v4 animated:1 completion:0];
  }
}

void sub_21D822344()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-v3 - 8];
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE62470);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  sub_21D81D608(v4);
  v6 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE62270);
  }

  else
  {
    v7 = &v4[*(v6 + 152)];
    v8 = *(v7 + 3);
    v24 = *(v7 + 2);
    v25 = v8;
    v26 = *(v7 + 8);
    v9 = *(v7 + 1);
    v23[0] = *v7;
    v23[1] = v9;
    sub_21D0D3954(v23, v22, &qword_27CE626B0);
    sub_21D82F904(v4, type metadata accessor for TTRReminderDetailViewModel);
    if (*&v23[0])
    {
      v10 = *(&v24 + 1);
      v12 = v25;
      v11 = v26;
      sub_21D3A1244(*(&v24 + 1), v25, *(&v25 + 1), v26);
      sub_21D0CF7E0(v23, &qword_27CE626B0);
      if (*(&v12 + 1) >= 2uLL)
      {
        v13 = v11;
        sub_21D3A22A8(v10, v12, *(&v12 + 1), v11);
        if (v11)
        {
          __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v15 = Strong;
            v16 = [objc_opt_self() viewControllerForContact_];
            sub_21D0D8CF0(0, &qword_280D0C300);
            sub_21D0D8CF0(0, &qword_280D0C1D0);
            swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_21DBFB77C();
            v17 = sub_21DBFAFCC();
            v18 = v16;
            v19 = [v18 navigationItem];
            [v19 setLeftBarButtonItem_];

            v20 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
            [v15 presentViewController:v20 animated:1 completion:0];
          }
        }
      }
    }
  }
}

void sub_21D822700(int a1, __int128 *a2)
{
  v3 = v2;
  v88 = a1;
  v5 = sub_21DBF647C();
  v92 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v77 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v77 - v10;
  MEMORY[0x28223BE20](v12);
  v91 = &v77 - v13;
  v14 = a2[1];
  v109 = *a2;
  v110 = v14;
  v111[0] = a2[2];
  *(v111 + 9) = *(a2 + 41);
  v15 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 56);
  v89 = ObjectType;
  v17(&v93, ObjectType, v15);
  v18 = v93;
  v19 = v94;
  v99 = v93;
  v100 = v94;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v103);
  if (!*(&v104 + 1))
  {
    sub_21D0CF7E0(&v103, &qword_27CE59DC0);

    return;
  }

  sub_21D0D0FD0(&v103, v106);

  v20 = v107;
  v21 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v86 = (*(v21 + 16))(v20, v21);
  v22 = v107;
  v23 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v24 = (*(v23 + 8))(v22, v23);
  if (!*(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration + 1))
  {
    v31 = (*(v15 + 32))(v89, v15);
    v32 = [v31 supportsSubtasks];

    if (v32)
    {
      v33 = MEMORY[0x277D45010];
    }

    else
    {
      v33 = MEMORY[0x277D45018];
    }

    (*(v92 + 104))(v91, *v33, v5);
LABEL_17:
    v36 = (v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
    Strong = swift_unknownObjectWeakLoadStrong();
    v83 = v24;
    v84 = v3;
    v82 = v36;
    if (Strong && (v38 = Strong, v103 = v109, v104 = v110, v105[0] = v111[0], *(v105 + 9) = *(v111 + 9), v39 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&v103), v38, (v39 & 1) != 0))
    {
      v40 = v5;
      sub_21D0D3954(&v109, &v103, &qword_27CE5D558);
      v103 = v109;
      v104 = v110;
      v105[0] = v111[0];
      *(v105 + 9) = *(v111 + 9);
      v85 = 2;
    }

    else
    {
      v40 = v5;
      v85 = 0;
      *&v105[0] = 0;
      v103 = 0u;
      v104 = 0u;
      *(v105 + 8) = xmmword_21DC0A830;
      BYTE8(v105[1]) = 0;
    }

    v78 = *(v92 + 16);
    v78(v90, v91, v40);
    v41 = *(v15 + 16);
    v81 = v86;
    v42 = v41(v89, v15);
    v43 = [v42 saveRequest];

    v44 = [v43 store];
    v79 = v44;

    type metadata accessor for TTRReminderListPickerInteractor();
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v45 + 32) = v44;
    v46 = type metadata accessor for TTRIReminderListPickerRouter();
    v47 = swift_allocObject();
    v89 = v47;
    swift_unknownObjectWeakInit();
    v48 = v87;
    v49 = v78;
    v78(v87, v90, v40);
    *(&v94 + 1) = v46;
    *&v95[0] = &off_282EAAAD8;
    *&v93 = v47;
    type metadata accessor for TTRIReminderListPickerPresenter();
    v50 = swift_allocObject();
    v51 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v46);
    v80 = &v77;
    v52 = MEMORY[0x28223BE20](v51);
    v54 = (&v77 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54, v52);
    v56 = *v54;
    v101 = v46;
    v102 = &off_282EAAAD8;
    *&v99 = v56;
    *(v50 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v50 + 48) = 0;
    *(v50 + 80) = 0;
    v86 = (v50 + 80);
    *(v50 + 56) = -1;
    *(v50 + 88) = 0;
    *(v50 + 96) = v45;
    *(v50 + 104) = &protocol witness table for TTRReminderListPickerInteractor;
    sub_21D0D32E4(&v99, v50 + 112);
    v57 = v40;
    v49(v50 + OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_mode, v48, v40);
    v58 = v81;
    *(v50 + 64) = v81;
    *(v50 + 72) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_reminders) = 0;
    v59 = v58;
    v60 = v58;
    v61 = v83;
    v79 = v79;

    v62 = TTRReminderListPickerInteractor.fetchAccounts(for:includeSmartLists:)();
    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v98 = v59;
    v64 = v60;
    TTRReminderListPickerViewModel.init(accounts:customSmartListPredicate:disabledListID:)(v63, &v98, 0, &v96);
    v65 = v97;
    *(v50 + 32) = v96;
    *(v50 + 40) = v65;
    v83 = v61;
    sub_21D1B33D4(v61, &v96);

    v66 = *(v92 + 8);
    v67 = v57;
    v66(v48, v57);
    __swift_destroy_boxed_opaque_existential_0(&v99);
    v68 = v97;
    v69 = *(v50 + 48);
    *(v50 + 48) = v96;
    v70 = *(v50 + 56);
    *(v50 + 56) = v68;
    sub_21D157864(v69, v70);
    __swift_destroy_boxed_opaque_existential_0(&v93);
    v71 = objc_allocWithZone(type metadata accessor for TTRIReminderListPickerViewController());

    v73 = sub_21D1B29E8(v72, v85, v71);

    v66(v90, v57);
    swift_beginAccess();
    *(v45 + 24) = &off_282EAACA8;
    swift_unknownObjectWeakAssign();

    *(v50 + 24) = &off_282EAAB78;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();

    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = v86;
    swift_beginAccess();
    v76 = *v75;
    *v75 = sub_21D83016C;
    *(v50 + 88) = v74;

    sub_21D0D0E88(v76);

    __swift_project_boxed_opaque_existential_1(v82, v82[3]);
    v93 = v103;
    v94 = v104;
    v95[0] = v105[0];
    *(v95 + 9) = *(v105 + 9);
    sub_21D81A794(v73, v88 & 1, &v93);

    v66(v91, v67);
    sub_21D0CF7E0(&v103, &qword_27CE5D558);
    goto LABEL_25;
  }

  if (*(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration + 1) == 1)
  {
    v25 = (*(v15 + 16))(v89, v15);
    v26 = [v25 attachmentContext];

    if (v26)
    {
      v27 = [v26 imageAttachments];

      sub_21D0D8CF0(0, &qword_280D0C290);
      v28 = sub_21DBFA5EC();

      if (v28 >> 62)
      {
        v34 = sub_21DBFBD7C();

        if (v34)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v29)
        {
LABEL_7:
          v30 = MEMORY[0x277D45010];
LABEL_16:
          v35 = v92;
          (*(v92 + 104))(v11, *v30, v5);
          (*(v35 + 32))(v91, v11, v5);
          goto LABEL_17;
        }
      }
    }

    v30 = MEMORY[0x277D45018];
    goto LABEL_16;
  }

LABEL_25:
  __swift_destroy_boxed_opaque_existential_0(v106);
}

uint64_t sub_21D8230F4(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong navigationController];
      if (v8)
      {
        v9 = v8;
      }
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v10 = objc_opt_self();
    v11 = sub_21DBFA12C();

    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    *(v12 + 24) = v3;
    *(v12 + 32) = v5;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_21D830174;
    *(v13 + 24) = v12;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_168_0;
    v14 = _Block_copy(aBlock);
    v15 = v2;
    v16 = v5;

    [v10 withActionName:v11 block:{v14, 0x800000021DC501F0}];

    _Block_release(v14);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D8233E0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = &unk_27CE62000;
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = -1;
    v13 = 1;
  }

  else
  {
    v14 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 16);
    v17 = v16(ObjectType, v14);
    v18 = [v17 parentReminderID];

    if (!v18)
    {
      v19 = v16(ObjectType, v14);
      v18 = [v19 objectID];
    }

    REMList.fetchSectionLite(containingReminderWith:)(v18, &v38);

    v8 = *(&v38 + 1);
    v13 = v38;
    v20 = v39;
    v21 = v40;
    v22 = v41;
    if (v38 == 1)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = -1;
      v6 = &unk_27CE62000;
    }

    else
    {
      v6 = &unk_27CE62000;
      if (v38)
      {
        sub_21D8301D4(v38);
        v12 = 0;
        v7 = v13;
        v9 = v20;
        v10 = v21;
        v11 = v22;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 2;
        v7 = 0;
      }
    }
  }

  v23 = a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility;
  v24 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v25 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8);
  v26 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16);
  v27 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24);
  v28 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32);
  *v23 = v7;
  *(v23 + 8) = v8;
  *(v23 + 16) = v9;
  *(v23 + 24) = v10;
  *(v23 + 32) = v11;
  v29 = *(v23 + 40);
  *(v23 + 40) = v12;
  sub_21D7A98A0(v24, v25, v26, v27, v28, v29);
  v30 = *(a3 + v6[147] + 8);
  v31 = swift_getObjectType();
  *&v38 = a1;
  BYTE8(v38) = a2 & 1;
  (*(v30 + 104))(&v38, v31, v30);
  if (v13 != 1)
  {
    *&v38 = v13;
    v32 = (a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility);
    v33 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40);
    v34 = 1;
    if (v33 > 1)
    {
      v34 = v33 != 2;
    }

    else if (!v33)
    {
      v34 = *v32;
      v35 = *v32;
    }

    v42 = v34;
    v36 = *(v30 + 264);
    v37 = v13;
    v36(&v38, &v42, v31, v30);
    sub_21D830184(v13);
    sub_21D157878(v42);
  }
}

uint64_t sub_21D823694(int a1, __int128 *a2)
{
  v79 = a1;
  v77 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v77);
  v78 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a2[1];
  v101 = *a2;
  v102 = v5;
  v103[0] = a2[2];
  *(v103 + 9) = *(a2 + 41);
  v6 = (v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40) > 1u)
  {
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40) == 2)
    {
      v80 = 0;
      v9 = 0;
      v74 = 0;
      v84 = 0;
      goto LABEL_9;
    }

    v80 = 0;
    v9 = 0;
    v74 = 0;
  }

  else
  {
    v7 = *v6;
    if (!*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40))
    {
      v84 = *v6;
      v8 = v7;
      v80 = 0;
      v9 = 0;
      v74 = 0;
      goto LABEL_9;
    }

    v10 = v6[3];
    v11 = v6[4];
    v9 = v6[1];
    v12 = v6[2];
    v74 = v6[2] & 1;
    sub_21D7A9844(v7, v9, v12, v10, v11, 1);
    v80 = v7;
  }

  v84 = 1;
LABEL_9:
  v82 = v2;
  v83 = v9;
  v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  (*(v13 + 56))(&v94, ObjectType, v13);
  v15 = v94;
  v16 = v95;
  v90 = v94;
  *&v91 = v95;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(v100);

  sub_21D0D3954(v100, &v94, &qword_27CE59DC0);
  v17 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v18 = *&v96[0];
    __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
    (*(v18 + 112))(v98, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(&v94);
  }

  else
  {
    sub_21D0CF7E0(&v94, &qword_27CE59DC0);
    memset(v98, 0, sizeof(v98));
    v99 = 0;
  }

  sub_21D0D3954(v98, &v90, &qword_27CE5A6E8);
  v19 = v84;
  v20 = v82;
  if (*(&v91 + 1))
  {
    sub_21D0D0FD0(&v90, &v94);
    v21 = *(&v95 + 1);
    v22 = *&v96[0];
    __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
    if ((*(v22 + 16))(v21, v22))
    {
      v23 = *(&v95 + 1);
      v24 = *&v96[0];
      __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
      v25 = (*(v24 + 8))(v23, v24);
      v27 = v26;
      if (v26)
      {
        v72 = v25;
        __swift_destroy_boxed_opaque_existential_0(&v94);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v94);
        v72 = 0;
      }

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_0(&v94);
  }

  else
  {
    sub_21D0CF7E0(&v90, &qword_27CE5A6E8);
  }

  v72 = 0;
  v27 = 0;
LABEL_19:
  v28 = *(v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24);
  v76 = (v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router);
  __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), v28);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v94 = v101;
    v95 = v102;
    v96[0] = v103[0];
    *(v96 + 9) = *(v103 + 9);
    v75 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&v94);
  }

  else
  {
    v75 = 0;
  }

  v31 = (*(v13 + 16))(ObjectType, v13);
  v32 = [v31 saveRequest];

  v33 = [v32 store];
  v34 = v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v34 + 8);
    v36 = swift_getObjectType();
    v37 = *(v35 + 40);
    sub_21D15751C(v19);
    v37(&v94, v36, v35);
    swift_unknownObjectRelease();
    v38 = v94;
  }

  else
  {
    sub_21D15751C(v19);
    v38 = 0;
  }

  sub_21D0D3954(v100, &v94, &qword_27CE59DC0);
  type metadata accessor for TTRIReminderSectionPickerInteractor();
  swift_allocObject();
  v73 = v33;
  v39 = TTRIReminderSectionPickerInteractor.init(store:ttrList:)(v73, &v94);
  type metadata accessor for TTRIReminderSectionPickerRouter();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D15751C(v19);
  v41 = qword_280D1AA10;

  v81 = v40;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_280D1AA18;
  v97[3] = type metadata accessor for TTRUserDefaults();
  v97[4] = &protocol witness table for TTRUserDefaults;
  v97[0] = v42;
  type metadata accessor for TTRIReminderSectionPickerPresenter();
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  v44 = qword_280D1BAA8;
  v45 = v42;
  v46 = v74;
  if (v44 != -1)
  {
    swift_once();
  }

  v47 = sub_21DBF516C();
  *(v43 + 120) = 0;
  *(v43 + 128) = v47;
  *(v43 + 136) = v48;
  *(v43 + 144) = 0;
  v49 = MEMORY[0x277D84F90];
  *(v43 + 152) = 0;
  *(v43 + 160) = v49;
  *(v43 + 168) = v49;
  *(v43 + 176) = v49;
  v50 = v81;
  *(v43 + 184) = v39;
  *(v43 + 192) = v50;

  sub_21D157878(1);
  v51 = v84;
  if (v84 != 1)
  {
    if (!v83)
    {
      v55 = v84;
      v54 = 0;
      v53 = 1;
      goto LABEL_38;
    }

LABEL_36:
    v51 = 0;
    v54 = 0;
    v53 = 3;
    goto LABEL_38;
  }

  if (!v83)
  {
    goto LABEL_36;
  }

  v52 = sub_21DBF8E0C();
  if (v46)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  v51 = v80;
  v54 = v52;
LABEL_38:
  sub_21D5E903C(0, 0, 3);
  v56 = v80;
  *(v43 + 64) = v84;
  *(v43 + 72) = v56;
  *(v43 + 80) = v83;
  *(v43 + 88) = v46;
  *(v43 + 96) = v51;
  *(v43 + 104) = v54;
  *(v43 + 112) = v53;
  *(v43 + 208) = v72;
  *(v43 + 216) = v27;
  v71[1] = v27;
  *(v43 + 113) = v38 & 1;
  sub_21D0D32E4(v97, v43 + 224);
  type metadata accessor for TTRMainActorDeferredAction();
  v57 = swift_allocObject();
  v57[3] = 0;
  swift_unknownObjectWeakInit();
  *&v94 = v49;
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v57[4] = sub_21DBF5EEC();
  v57[5] = v49;
  *(v43 + 200) = v57;
  swift_beginAccess();
  v57[3] = &off_282EC7718;
  swift_unknownObjectWeakAssign();
  sub_21D5EA030(&v90);

  __swift_destroy_boxed_opaque_existential_0(v97);
  v58 = *(v43 + 136);
  v94 = *(v43 + 120);
  v95 = v58;
  v59 = *(v43 + 168);
  v96[0] = *(v43 + 152);
  v96[1] = v59;
  v60 = v91;
  *(v43 + 120) = v90;
  *(v43 + 136) = v60;
  v61 = v93;
  *(v43 + 152) = v92;
  *(v43 + 168) = v61;
  sub_21D5E8CE0(&v94);
  v62 = objc_allocWithZone(type metadata accessor for TTRIReminderSectionPickerViewController());

  v64 = v75;
  v65 = sub_21D82E4B8(v63, v75 & 1, v62);
  swift_beginAccess();
  *(v39 + 24) = &off_282EC7728;
  swift_unknownObjectWeakAssign();
  *(v43 + 24) = &off_282EC72F8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  TTRIReminderSectionPickerInteractor.start()();

  sub_21D157878(v84);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *(v43 + 32);
  *(v43 + 32) = sub_21D8300E4;
  *(v43 + 40) = v66;

  sub_21D0D0E88(v67);

  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = *(v43 + 48);
  *(v43 + 48) = sub_21D8300EC;
  *(v43 + 56) = v68;

  sub_21D0D0E88(v69);

  if (v64)
  {
    sub_21D0D3954(&v101, &v87, &qword_27CE5D558);
    v87 = v101;
    v88 = v102;
    v89[0] = v103[0];
    *(v89 + 9) = *(v103 + 9);
  }

  else
  {
    *&v89[0] = 0;
    v87 = 0u;
    v88 = 0u;
    *(v89 + 8) = xmmword_21DC0A830;
    BYTE8(v89[1]) = 0;
  }

  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  v85[0] = v87;
  v85[1] = v88;
  v86[0] = v89[0];
  *(v86 + 9) = *(v89 + 9);
  sub_21D81A794(v65, v79 & 1, v85);

  sub_21D157878(v84);
  sub_21D0CF7E0(v98, &qword_27CE5A6E8);
  sub_21D0CF7E0(v100, &qword_27CE59DC0);
  return sub_21D0CF7E0(&v87, &qword_27CE5D558);
}