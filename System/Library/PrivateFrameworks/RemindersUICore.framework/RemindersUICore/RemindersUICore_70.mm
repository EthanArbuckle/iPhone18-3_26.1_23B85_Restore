Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestPopulateTitleIfEmpty()()
{
  v1 = v0;
  v2 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v8 + v2[5]) == 1)
  {
    v9 = *(v8 + v2[6]);
    if (!v9 || (v10 = v9, v24 = NSAttributedString.validatedReminderTitle()(), isa = v24.title.super.isa, isValid = v24.isValid, v10, isa, !isValid))
    {
      if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
      {
        v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        TTRRemindersListEditingSession.effectiveParentList.getter(ObjectType, v13, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        memset(v22, 0, sizeof(v22));
      }

      _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(v22);
      sub_21D0CF7E0(v22, &qword_27CE59DC0);
      v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v16 = sub_21DBFA12C();

      v17 = [v15 initWithString_];

      sub_21D105354(v8, v7, _s15RemindersUICore12EditingStateVMa_1);
      v18 = &v7[v2[7]];
      sub_21D24A814(*v18, *(v18 + 1));
      *v18 = 0u;
      *(v18 + 1) = 0u;
      v19 = &v7[v2[8]];
      sub_21D24A814(*v19, *(v19 + 1));
      *v19 = 0u;
      *(v19 + 1) = 0u;
      sub_21D105354(v8, v4, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v7, v8);
      swift_endAccess();
      sub_21D7837F4(v4);
      sub_21D106DF8(v4, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v7, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D77D430(v17, 0);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v1 + 24);
        v21 = swift_getObjectType();
        (*(v20 + 32))(v1, &protocol witness table for TTRReminderCellTitleEditingPresenter, v17, 0, v21, v20);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestCommitForShowingReminderDetail()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    v4 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail;
    *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 1;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      swift_unknownObjectRetain();
      v8 = v7(v0, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v5);
      swift_unknownObjectRelease();
      v9 = v8;
      v24 = NSAttributedString.validatedReminderTitle()();
      isa = v24.title.super.isa;
      isValid = v24.isValid;

      if (isValid || (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v8 = 0;
    }

    v15 = v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    v16 = *(v15 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
    if (v16)
    {
      v17 = v16;
      v25 = NSAttributedString.validatedReminderTitle()();
      isa = v25.title.super.isa;
      v18 = v25.isValid;

      if (v18 || (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) & 1) != 0)
      {
LABEL_17:
        v19 = isa;
        sub_21D77ED14(v19, v1, v3, 1);

LABEL_20:
        v22 = 0;
        sub_21D78B0CC(&v22, 1);
        swift_unknownObjectRelease();

        *(v2 + v4) = 0;
        return;
      }
    }

    v20 = swift_getObjectType();
    v22 = 1;
    (*(v3 + 104))(&v22, v20, v3);
    v19 = 0;
    goto LABEL_20;
  }

  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F258);
  oslog = sub_21DBF84AC();
  v13 = sub_21DBFAEBC();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v13, "Missing editingSession for title editing", v14, 2u);
    MEMORY[0x223D46520](v14, -1, -1);
  }
}

uint64_t TTRReminderCellTitleEditingPresenter.requestCommitAndCreateNewIfTitleIsNonEmpty(options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v64 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v23)
  {
    v24 = a1[1];
    v69 = *a1;
    v70 = v8;
    v68 = v24;
    v25 = *(a1 + 16);
    v66 = *(a1 + 17);
    v67 = v25;
    v71 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    v72 = a2;
    v26 = v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    sub_21D105354(v26, v22, _s15RemindersUICore12EditingStateVMa_1);
    v27 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
    swift_unknownObjectRetain();
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
    v65 = v27;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v16);
    v28 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v19, v16);
    sub_21D106DF8(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106DF8(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106DF8(v22, _s15RemindersUICore12EditingStateVMa_1);
    if ((v28 & 1) == 0 || (v29 = *(v26 + *(v20 + 24))) == 0)
    {
      if (qword_280D17EE8 != -1)
      {
        swift_once();
      }

      v33 = sub_21DBF84BC();
      __swift_project_value_buffer(v33, qword_280D0F258);
      isa = sub_21DBF84AC();
      v34 = sub_21DBFAECC();
      v35 = os_log_type_enabled(isa, v34);
      v32 = v71;
      if (v35)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_21D0C9000, isa, v34, "Cannot get title for the item to commit", v36, 2u);
        MEMORY[0x223D46520](v36, -1, -1);
      }

      goto LABEL_10;
    }

    v30 = v29;
    v79 = NSAttributedString.validatedReminderTitle()();
    isa = v79.title.super.isa;
    if (v79.isValid)
    {
      v32 = v71;
      sub_21D77ED14(v79.title.super.isa, v23, v71, 1);

LABEL_10:
      ObjectType = swift_getObjectType();
      v38 = (*(v32 + 128))(v77, ObjectType, v32);
      v71 = v39;
      v40 = v77[0];
      sub_21D77F188();
      v41 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v42 = *(v41 - 8);
      v43 = *(v42 + 56);
      v43(v13, 1, 1, v41);
      if (v38)
      {
        v44 = v38;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v45 = *(v3 + 40);
          v46 = swift_getObjectType();
          v74[0] = v69;
          v74[1] = v68;
          v75 = v67;
          v76 = v66;
          v47 = v73;
          (*(v45 + 48))(v3 + v65, v44, v74, v46, v45);
          swift_unknownObjectRelease();
          sub_21D0CF7E0(v13, &unk_27CE5CD80);
        }

        else
        {
          sub_21D0CF7E0(v13, &unk_27CE5CD80);
          v55 = v73;
          v43(v73, 1, 1, v41);
          v47 = v55;
        }

        sub_21D0D523C(v47, v13, &unk_27CE5CD80);
        v56 = v70;
        sub_21D0D3954(v13, v70, &unk_27CE5CD80);
        if ((*(v42 + 48))(v56, 1, v41) == 1)
        {
          sub_21D0CF7E0(v56, &unk_27CE5CD80);
          sub_21D77F2A8();
          sub_21D1578FC(v38);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_21D1578FC(v38);
          sub_21D0CF7E0(v56, &unk_27CE5CD80);
        }
      }

      else
      {
        if (v40)
        {
          sub_21D77F2A8();
        }

        swift_unknownObjectRelease();
      }

      return sub_21D0D523C(v13, v72, &unk_27CE5CD80);
    }

    if (qword_280D17EE8 != -1)
    {
      swift_once();
    }

    v57 = sub_21DBF84BC();
    __swift_project_value_buffer(v57, qword_280D0F258);
    v58 = sub_21DBF84AC();
    v59 = sub_21DBFAE9C();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v72;
    if (v60)
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_21D0C9000, v58, v59, "Title is empty, reuse it; Not going to create new reminder", v62, 2u);
      MEMORY[0x223D46520](v62, -1, -1);
    }

    swift_unknownObjectRelease();
    v63 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v63 - 8) + 56))(v61, 1, 1, v63);
  }

  else
  {
    if (qword_280D17EE8 != -1)
    {
      swift_once();
    }

    v48 = sub_21DBF84BC();
    __swift_project_value_buffer(v48, qword_280D0F258);
    v49 = sub_21DBF84AC();
    v50 = sub_21DBFAEBC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_21D0C9000, v49, v50, "Missing editingSession for title editing", v51, 2u);
      MEMORY[0x223D46520](v51, -1, -1);
    }

    v52 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v53 = *(*(v52 - 8) + 56);

    return v53(a2, 1, 1, v52);
  }
}

Swift::Bool __swiftcall TTRReminderCellTitleEditingPresenter.requestMarkCommittableForPencil()()
{
  v1 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  v7 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v7 + v1[5]) == 1)
  {
    v8 = *(v7 + v1[6]);
    if (v8)
    {
      v9 = v8;
      v13 = NSAttributedString.validatedReminderTitle()();
      if (v13.isValid)
      {

LABEL_6:
        sub_21D105354(v7, v6, _s15RemindersUICore12EditingStateVMa_1);
        v6[v1[9]] = 1;
        sub_21D105354(v7, v3, _s15RemindersUICore12EditingStateVMa_1);
        swift_beginAccess();
        sub_21D78B068(v6, v7);
        swift_endAccess();
        sub_21D7837F4(v3);

        sub_21D106DF8(v3, _s15RemindersUICore12EditingStateVMa_1);
        sub_21D106DF8(v6, _s15RemindersUICore12EditingStateVMa_1);
        return 1;
      }

      v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode);

      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

  return 0;
}

void TTRReminderCellTitleEditingPresenter.requestHandleEditingSessionChangesMadeByEditingComponent(_:)()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    v2 = *(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
    if (v2)
    {
      v3 = v2;
      sub_21D77D430(v3, 0);
    }
  }
}

uint64_t sub_21D783634()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

uint64_t sub_21D78369C()
{
  sub_21DBFA27C();

  return sub_21DBFA27C();
}

uint64_t sub_21D7836EC()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();
  sub_21DBFA27C();
  return sub_21DBFC82C();
}

uint64_t sub_21D783750(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21DBFC64C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21DBFC64C();
    }
  }

  return result;
}

uint64_t sub_21D7837F4(uint64_t a1)
{
  v2 = v1;
  v4 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v4);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v10 = (a1 + *(v9 + 28));
  v11 = v10[1];
  if (!v11)
  {
    v10 = (a1 + *(v4 + 32));
    v11 = v10[1];
  }

  v13 = v10[2];
  v12 = v10[3];
  v14 = *v10;
  v36 = *v10;
  v37 = v11;
  v38 = v13;
  v39 = v12;
  v15 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v30[0] = v15;
  sub_21D105354(v2 + v15, v8, _s15RemindersUICore12EditingStateVMa_1);
  v16 = &v8[*(v4 + 28)];
  v17 = v16[1];
  v30[1] = a1;
  if (!v17)
  {
    v16 = &v8[*(v4 + 32)];
    v17 = v16[1];
  }

  v18 = v16[2];
  v19 = v16[3];
  v20 = *v16;
  sub_21D24A7C4(v14, v11);
  sub_21D24A7C4(v20, v17);
  sub_21D106DF8(v8, _s15RemindersUICore12EditingStateVMa_1);
  v32 = v20;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v21 = _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO16effectivelyEqualySbACSg_AEtFZ_0(&v36, &v32);
  sub_21D301F20(v32, v33);
  sub_21D301F20(v36, v37);
  if ((v21 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v22 + 48))(v2, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v22);
      swift_unknownObjectRelease();
    }
  }

  v24 = sub_21D783AD8() & 1;
  v25 = v31;
  sub_21D105354(v2 + v30[0], v31, _s15RemindersUICore12EditingStateVMa_1);
  v26 = sub_21D783AD8() & 1;
  result = sub_21D106DF8(v25, _s15RemindersUICore12EditingStateVMa_1);
  if (v24 != v26)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v28 = *(v2 + 24);
      v29 = swift_getObjectType();
      (*(v28 + 56))(v2, &protocol witness table for TTRReminderCellTitleEditingPresenter, v29, v28);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_21D783AD8()
{
  v1 = sub_21DBF4CAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
  if (result)
  {
    v6 = [result string];
    v7 = sub_21DBFA16C();
    v9 = v8;

    v14[0] = v7;
    v14[1] = v9;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v10 = sub_21DBFBB3C();
    v12 = v11;
    (*(v2 + 8))(v4, v1);

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    return (v13 != 0);
  }

  return result;
}

uint64_t sub_21D783C30(double a1, double a2)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
  v70 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v66 - v7;
  MEMORY[0x28223BE20](v8);
  v74 = &v66 - v9;
  MEMORY[0x28223BE20](v10);
  v81 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = (&v66 - v16);
  v17 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance;
  swift_beginAccess();
  v66 = v17;
  v18 = *(v2 + v17);
  v19 = *(v18 + 64);
  v69 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v67 = v2;
  v78 = (v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  v68 = (v20 + 63) >> 6;
  v73 = "o title {item: %@}";
  v71 = v18;
  result = sub_21DBF8E0C();
  v24 = 0;
  v72 = xmmword_21DC08D10;
  v80 = v14;
  if (v22)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v25 << 6);
      v30 = (*(v71 + 48) + 32 * v29);
      v32 = *v30;
      v31 = v30[1];
      v34 = v30[2];
      v33 = v30[3];
      v35 = v81;
      sub_21D0D3954(*(v71 + 56) + *(v70 + 72) * v29, v81, &qword_27CE583A8);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618B8);
      v37 = *(v36 + 48);
      v38 = v80;
      *v80 = v32;
      *(v38 + 1) = v31;
      v14 = v38;
      *(v38 + 2) = v34;
      *(v38 + 3) = v33;
      sub_21D0D523C(v35, &v38[v37], &qword_27CE583A8);
      (*(*(v36 - 8) + 56))(v14, 0, 1, v36);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v27 = v25;
LABEL_13:
      v39 = v79;
      sub_21D0D523C(v14, v79, &qword_27CE618B0);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618B8);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {
        break;
      }

      v41 = v39[1];
      v86 = *v39;
      v85 = v41;
      v87 = v39[3];
      v42 = v39 + *(v40 + 48);
      v43 = v77;
      v44 = v42[*(v77 + 48)];
      v45 = sub_21DBF79FC();
      v46 = *(v45 - 8);
      v47 = *(v46 + 32);
      v48 = v75;
      v47(v75, v42, v45);
      v49 = *(v43 + 48);
      v88 = v27;
      v50 = v74;
      v47(v74, v48, v45);
      *(v50 + v49) = v44;
      sub_21D0D32E4(v78, &v90);
      v51 = *(&v91 + 1);
      v52 = v92;
      __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
      v53 = v81;
      sub_21D0D3954(v50, v81, &qword_27CE583A8);
      LODWORD(v48) = *(v53 + *(v43 + 48));
      v83 = *(v46 + 8);
      v83(v53, v45);
      if (v48)
      {
        v54.n128_f64[0] = a1;
      }

      else
      {
        v54.n128_f64[0] = a2;
      }

      (*(v52 + 32))(v50, v51, v52, v54);
      __swift_destroy_boxed_opaque_existential_0(&v90);
      v84 = sub_21DBF835C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218);
      inited = swift_initStackObject();
      *(inited + 16) = v72;
      *(inited + 32) = 0x6465747065636361;
      v82 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      sub_21D0D3954(v50, v53, &qword_27CE583A8);
      *(inited + 48) = sub_21DBFA7AC();
      *(inited + 56) = 0x7475626972747461;
      *(inited + 64) = 0xE900000000000065;
      *(inited + 72) = sub_21DBFA12C();
      *(inited + 80) = 0x656372756F73;
      *(inited + 88) = 0xE600000000000000;
      v56 = v76;
      sub_21D0D3954(v50, v76, &qword_27CE583A8);
      sub_21DBF79AC();
      v57 = sub_21DBFA12C();

      v58 = v83;
      v83(v56, v45);
      *(inited + 96) = v57;

      v58(v53, v45);
      v14 = v80;
      v59 = sub_21D1777B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220);
      swift_arrayDestroy();
      MEMORY[0x223D40B00](0xD000000000000027, v73 | 0x8000000000000000, v59, 0, 1);

      result = sub_21D0CF7E0(v50, &qword_27CE583A8);
      v24 = v88;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    v61 = v67;
    *(v67 + v66) = MEMORY[0x277D84F98];

    if (*(v61 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
    {
      v62 = *(v61 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      TTRRemindersListEditingSession.reminderAndList.getter(ObjectType, v62, v89);
      swift_unknownObjectRelease();
      v90 = v89[0];
      v91 = v89[1];
      v92 = v89[2];
      v64 = v78[3];
      v65 = v78[4];
      __swift_project_boxed_opaque_existential_1(v78, v64);
      (*(v65 + 40))(&v90, v64, v65);
      return sub_21D4ECC40(&v90);
    }
  }

  else
  {
LABEL_5:
    if (v68 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v68;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v68)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618B8);
        (*(*(v60 - 8) + 56))(v14, 1, 1, v60);
        v22 = 0;
        goto LABEL_13;
      }

      v22 = *(v69 + 8 * v25);
      ++v24;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D78451C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 88) = v15;
  *(v9 + 80) = a1;
  *(v9 + 64) = a9;
  *(v9 + 72) = v14;
  *(v9 + 48) = a7;
  *(v9 + 56) = a8;
  *(v9 + 160) = a6;
  *(v9 + 40) = a5;
  v10 = sub_21DBF56BC();
  *(v9 + 96) = v10;
  v11 = *(v10 - 8);
  *(v9 + 104) = v11;
  *(v9 + 112) = *(v11 + 64);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  *(v9 + 128) = swift_task_alloc();
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D784664, 0, 0);
}

uint64_t sub_21D784664()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 44)) & 1) != 0 || (v13 = *(v0 + 136), v14 = *(v0 + 160), sub_21D105354(v1, v13, type metadata accessor for TTRRemindersListViewModel.Item), v15 = TTRRemindersListViewModel.Item.isEligibleForAutoCompleteReminder.getter(), sub_21D106DF8(v13, type metadata accessor for TTRRemindersListViewModel.Item), (v15 & 1) == 0) || (v14)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      v2 = sub_21DBFBD7C();
    }

    else
    {
      v2 = *((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];

    v4 = *(v0 + 128);
    if (v2)
    {
      v5 = *(v0 + 80);
      v7 = *(v0 + 48);
      v6 = *(v0 + 56);
      v8 = sub_21DBFA89C();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      v9 = swift_allocObject();
      swift_weakInit();
      sub_21DBFA84C();

      sub_21DBF8E0C();
      v10 = sub_21DBFA83C();
      v11 = swift_allocObject();
      v12 = MEMORY[0x277D85700];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v9;
      v11[5] = v3;
      v11[6] = v5;
      v11[7] = v7;
      v11[8] = v6;

      sub_21D3BF99C(0, 0, v4, &unk_21DC275A8, v11);
    }

    else
    {
      v24 = *(v0 + 120);
      v25 = *(v0 + 96);
      v26 = *(v0 + 104);
      v27 = *(v0 + 88);
      v28 = *(v0 + 56);
      v36 = *(v0 + 48);

      v29 = sub_21DBFA89C();
      (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
      v30 = swift_allocObject();
      swift_weakInit();
      (*(v26 + 16))(v24, v27, v25);
      sub_21DBFA84C();
      sub_21DBF8E0C();

      v31 = sub_21DBFA83C();
      v32 = (*(v26 + 80) + 56) & ~*(v26 + 80);
      v33 = swift_allocObject();
      v34 = MEMORY[0x277D85700];
      *(v33 + 2) = v31;
      *(v33 + 3) = v34;
      *(v33 + 4) = v30;
      *(v33 + 5) = v36;
      *(v33 + 6) = v28;
      (*(v26 + 32))(&v33[v32], v24, v25);

      sub_21D1B56F0(0, 0, v4, &unk_21DC275B8, v33);
    }

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v16 = *(v0 + 40);
    v17 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_21D784ACC;
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);

    return sub_21D784F64(v22, v21, v16 + v17, v19, v20);
  }
}

uint64_t sub_21D784ACC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 152) = a1;

    return MEMORY[0x2822009F8](sub_21D784C2C, 0, 0);
  }
}

uint64_t sub_21D784C2C()
{
  v1 = v0[19];
  sub_21DBF8E0C();
  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[16];
  if (v2)
  {
    v4 = v0[10];
    v6 = v0[6];
    v5 = v0[7];
    v7 = sub_21DBFA89C();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_21DBFA84C();

    sub_21DBF8E0C();
    v9 = sub_21DBFA83C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v1;
    v10[6] = v4;
    v10[7] = v6;
    v10[8] = v5;

    sub_21D3BF99C(0, 0, v3, &unk_21DC275A8, v10);
  }

  else
  {
    v12 = v0[15];
    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[11];
    v16 = v0[7];
    v25 = v0[6];

    v17 = sub_21DBFA89C();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v14 + 16))(v12, v15, v13);
    sub_21DBFA84C();
    sub_21DBF8E0C();

    v19 = sub_21DBFA83C();
    v20 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 2) = v19;
    *(v21 + 3) = v22;
    *(v21 + 4) = v18;
    *(v21 + 5) = v25;
    *(v21 + 6) = v16;
    (*(v14 + 32))(&v21[v20], v12, v13);

    sub_21D1B56F0(0, 0, v3, &unk_21DC275B8, v21);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_21D784F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618C0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for TTRAutoCompleteReminderListScope();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D785064, 0, 0);
}

uint64_t sub_21D785064()
{
  v1 = [objc_opt_self() daemonUserDefaults];
  v2 = [v1 enableAutoCompleteReminders];

  if (!v2 || (v3 = v0[10], swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v0[15] = Strong) == 0))
  {
LABEL_5:

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }

  v5 = *(v3 + 40);
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[7];
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(v9, ObjectType, v5);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v11 = v0[11];
    swift_unknownObjectRelease();
    sub_21D0CF7E0(v11, &qword_27CE618C0);
    goto LABEL_5;
  }

  sub_21D792C00(v0[11], v0[14], type metadata accessor for TTRAutoCompleteReminderListScope);
  v21 = (*(v5 + 80) + **(v5 + 80));
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_21D7852FC;
  v16 = v0[14];
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[6];
  v20 = v0[5];

  return v21(v20, v19, v16, v17, v18, ObjectType, v5);
}

uint64_t sub_21D7852FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_21D7854C0;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_21D785424;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21D785424()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  sub_21D106DF8(v1, type metadata accessor for TTRAutoCompleteReminderListScope);
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_21D7854C0()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  sub_21D106DF8(v1, type metadata accessor for TTRAutoCompleteReminderListScope);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21D785554(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 144) = a1;
  *(v8 + 128) = a5;
  *(v8 + 136) = a6;
  sub_21DBFA84C();
  *(v8 + 168) = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  *(v8 + 176) = v10;
  *(v8 + 184) = v9;

  return MEMORY[0x2822009F8](sub_21D7855F4, v10, v9);
}

uint64_t sub_21D7855F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 24) = Strong;
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;

    v2 = swift_task_alloc();
    *(v0 + 25) = v2;
    *v2 = v0;
    v2[1] = sub_21D785704;
    v3 = v0[18];
    v4 = *(v0 + 17);

    return sub_21D785A7C(v4, v3);
  }

  else
  {

    v6 = *(v0 + 1);

    return v6();
  }
}

uint64_t sub_21D785704(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v5 = *(v3 + 184);
  v6 = *(v3 + 176);
  if (v1)
  {
    v7 = sub_21D785A0C;
  }

  else
  {
    v7 = sub_21D785848;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21D785848()
{
  v17 = v0;
  v1 = *(v0 + 192);

  sub_21D0D32E4(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor, v0 + 64);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    TTRRemindersListEditingSession.reminderAndList.getter(ObjectType, v4, v0 + 16);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
  }

  (*(v3 + 48))(&v13, *(v0 + 136), *(v0 + 152), *(v0 + 160), *(v0 + 208), v0 + 16, v2, v3);

  sub_21D0CF7E0(v0 + 16, &qword_27CE5D168);
  v6 = v14;
  v7 = *(v0 + 192);
  if (v14)
  {
    v9 = v15;
    v8 = v16;
    v10 = v13;
    __swift_destroy_boxed_opaque_existential_0(v0 + 64);
    v13 = v10;
    v14 = v6;
    v15 = v9;
    sub_21D7879C0(v7 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item, &v13, v8);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21D785A0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D785A7C(uint64_t a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 64) = a2;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](sub_21D785AA4, 0, 0);
}

uint64_t sub_21D785AA4()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager);
  *(v0 + 80) = v1;
  if (!v1)
  {
    goto LABEL_89;
  }

  v2 = *(v0 + 56);
  if (v2 >> 62)
  {
    goto LABEL_104;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 88) = v3;
  if (!v3)
  {
LABEL_105:
    v5 = MEMORY[0x277D84F98];
    goto LABEL_106;
  }

LABEL_4:

  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  v6 = &selRef__setContentViewMarginType_;
  while (1)
  {
    v7 = *(v0 + 56);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v4);
    }

    else
    {
      if (v4 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v8 = *(v7 + 8 * v4 + 32);
    }

    v9 = v8;
    *(v0 + 96) = v8;
    *(v0 + 104) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      v76 = sub_21DBFBD7C();
      *(v0 + 88) = v76;
      if (!v76)
      {
        goto LABEL_105;
      }

      goto LABEL_4;
    }

    v10 = [v8 v6[184]];
    if (v10)
    {
      break;
    }

LABEL_6:

LABEL_7:
    v4 = *(v0 + 104);
    if (v4 == *(v0 + 88))
    {

      goto LABEL_106;
    }
  }

  v11 = v10;
  v12 = [v10 imageAttachments];

  sub_21D0D8CF0(0, &qword_280D0C290);
  v13 = sub_21DBFA5EC();

  v14 = v13 >> 62;
  if (v13 >> 62)
  {
    v15 = sub_21DBFBD7C();
    if (!v15)
    {
LABEL_86:

      goto LABEL_7;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_86;
    }
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = 2;
    if (!v14)
    {
LABEL_21:
      v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_25;
    }
  }

  else
  {
    if (v15 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15;
    }

    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (sub_21DBFBD7C() < 0)
  {
    goto LABEL_101;
  }

  v17 = sub_21DBFBD7C();
LABEL_25:
  if (v17 < v16)
  {
    goto LABEL_102;
  }

  sub_21DBF8E0C();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v18 = 0;
    do
    {
      v19 = v18 + 1;
      sub_21DBFBF6C();
      v18 = v19;
    }

    while (v16 != v19);
  }

  if (!v14)
  {
    v21 = (2 * v16) | 1;
    if (v21)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  sub_21DBFC3BC();
  v14 = v29;
  v21 = v30;

  if ((v21 & 1) == 0)
  {
LABEL_41:
    v24 = v21 >> 1;
    v26 = (v21 >> 1) - v14;
    if (!__OFSUB__(v21 >> 1, v14))
    {
      goto LABEL_45;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    v5 = sub_21D178858(MEMORY[0x277D84F90]);
LABEL_106:
    v77 = *(v0 + 8);

    return v77(v5);
  }

LABEL_31:
  sub_21DBFC66C();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);

  v24 = v21 >> 1;
  v25 = __OFSUB__(v21 >> 1, v14);
  v26 = (v21 >> 1) - v14;
  v27 = v25;
  if (!v25)
  {
    if (v23 == v26)
    {
      v28 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v6 = &selRef__setContentViewMarginType_;
      if (v28)
      {
LABEL_56:
        v33 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v28, *(v0 + 64));
        *(v0 + 112) = v33;

        v34 = *(v33 + 2);
        *(v0 + 120) = v34;
        if (v34)
        {
          v35 = 0;
          while (1)
          {
            *(v0 + 136) = v35;
            *(v0 + 144) = v5;
            *(v0 + 128) = v5;
            v36 = *(v0 + 112);
            if (v35 >= *(v36 + 16))
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
              goto LABEL_100;
            }

            v37 = v36 + 24 * v35;
            v38 = *(v37 + 32);
            *(v0 + 152) = v38;
            v39 = *(v37 + 40);
            *(v0 + 160) = v39;
            v40 = *(v37 + 48);
            if (!v40)
            {
              break;
            }

            if (v40 != 2)
            {

              v73 = v39;
              v74 = swift_task_alloc();
              *(v0 + 168) = v74;
              *v74 = v0;
              v74[1] = sub_21D7863AC;
              v20 = v0 + 16;

              return MEMORY[0x2821A7870](v20);
            }

            v41 = qword_280D17EE8;
            v42 = v38;
            if (v41 != -1)
            {
              swift_once();
            }

            v43 = sub_21DBF84BC();
            __swift_project_value_buffer(v43, qword_280D0F258);
            v44 = v42;
            v45 = sub_21DBF84AC();
            v46 = sub_21DBFAEBC();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              *v47 = 138412290;
              *(v47 + 4) = v44;
              *v48 = v38;
              _os_log_impl(&dword_21D0C9000, v45, v46, "TTRReminderCellTitleEditingPresenter.loadThumbnails: failed to load image for: %@", v47, 0xCu);
              sub_21D0CF7E0(v48, &unk_27CE60070);
              MEMORY[0x223D46520](v48, -1, -1);
              MEMORY[0x223D46520](v47, -1, -1);
            }

            else
            {

              sub_21D72DB24(v38, v39, 2);
            }

            sub_21D72DB24(v38, v39, 2);
LABEL_60:
            v35 = *(v0 + 136) + 1;
            if (v35 == *(v0 + 120))
            {
              v72 = *(v0 + 96);

              goto LABEL_7;
            }
          }

          v49 = *(v0 + 96);
          v50 = v38;
          v51 = v39;
          v52 = [v49 objectID];
          v53 = v52;
          if (v5[2] && (v54 = sub_21D17E07C(v52), (v55 & 1) != 0))
          {
            v56 = *(v5[7] + 8 * v54);
            sub_21DBF8E0C();
          }

          else
          {
            v56 = MEMORY[0x277D84F90];
          }

          *(v0 + 40) = v56;
          v57 = v50;
          MEMORY[0x223D42D80]();
          if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          v58 = *(v0 + 96);
          sub_21DBFA6CC();
          v59 = *(v0 + 40);
          v60 = [v58 objectID];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 48) = v5;
          v62 = sub_21D17E07C(v60);
          v64 = v5[2];
          v65 = (v63 & 1) == 0;
          v25 = __OFADD__(v64, v65);
          v66 = v64 + v65;
          if (v25)
          {
            goto LABEL_98;
          }

          v67 = v63;
          if (v5[3] >= v66)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v69 = v62;
              sub_21D224FB4();
              v62 = v69;
              v5 = *(v0 + 48);
              if (v67)
              {
LABEL_80:
                *(v5[7] + 8 * v62) = v59;

                sub_21D72DB24(v38, v39, 0);

                goto LABEL_60;
              }

              goto LABEL_82;
            }
          }

          else
          {
            sub_21D21D6DC(v66, isUniquelyReferenced_nonNull_native);
            v62 = sub_21D17E07C(v60);
            if ((v67 & 1) != (v68 & 1))
            {
              sub_21D0D8CF0(0, &qword_280D17880);

              return sub_21DBFC70C();
            }
          }

          v5 = *(v0 + 48);
          if (v67)
          {
            goto LABEL_80;
          }

LABEL_82:
          v5[(v62 >> 6) + 8] |= 1 << v62;
          *(v5[6] + 8 * v62) = v60;
          *(v5[7] + 8 * v62) = v59;
          sub_21D72DB24(v38, v39, 0);
          v70 = v5[2];
          v25 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v25)
          {
            goto LABEL_99;
          }

          v5[2] = v71;
          goto LABEL_60;
        }

        goto LABEL_6;
      }

      v28 = MEMORY[0x277D84F90];
LABEL_55:
      swift_unknownObjectRelease();
      goto LABEL_56;
    }

    v20 = swift_unknownObjectRelease_n();
    if (v27)
    {
      goto LABEL_88;
    }

LABEL_45:
    if (v26)
    {
      if (v26 < 1)
      {
        v28 = MEMORY[0x277D84F90];
        if (v14 == v24)
        {
          goto LABEL_110;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        v28 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size(v28);
        v32 = v20 - 32;
        if (v20 < 32)
        {
          v32 = v20 - 25;
        }

        v28[2] = v26;
        v28[3] = (2 * (v32 >> 3)) | 1;
        if (v14 == v24)
        {
          goto LABEL_110;
        }
      }

      swift_arrayInitWithCopy();
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v6 = &selRef__setContentViewMarginType_;
    goto LABEL_55;
  }

  __break(1u);
LABEL_110:
  __break(1u);
  return MEMORY[0x2821A7870](v20);
}

uint64_t sub_21D7863AC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21D786F80;
  }

  else
  {
    v2 = sub_21D7864C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D7864C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 144);
  v3 = [*(v0 + 96) objectID];
  v4 = v3;
  if (*(v2 + 16) && (v5 = sub_21D17E07C(v3), (v6 & 1) != 0))
  {
    v7 = *(*(*(v0 + 144) + 56) + 8 * v5);
    sub_21DBF8E0C();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  LOBYTE(v8) = v0 + 16;
  *(v0 + 24) = v7;
  v9 = v1;
  MEMORY[0x223D42D80]();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_118:
    sub_21DBFA63C();
  }

  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  sub_21DBFA6CC();
  v12 = *(v0 + 24);
  v13 = [v11 objectID];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 32) = v10;
  v15 = sub_21D17E07C(v13);
  v17 = *(v10 + 16);
  v18 = (v16 & 1) == 0;
  v47 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v47)
  {
    __break(1u);
LABEL_120:
    v91 = v15;
    sub_21D224FB4();
    v15 = v91;
    goto LABEL_13;
  }

  LOBYTE(v8) = v16;
  if (*(*(v0 + 128) + 24) < v19)
  {
    sub_21D21D6DC(v19, isUniquelyReferenced_nonNull_native);
    v15 = sub_21D17E07C(v13);
    if ((v8 & 1) != (v20 & 1))
    {
LABEL_9:
      sub_21D0D8CF0(0, &qword_280D17880);

      return sub_21DBFC70C();
    }

    goto LABEL_13;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_13:
  v22 = *(v0 + 32);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v92 = v22;
  if (v8)
  {
    *(v22[7] + 8 * v15) = v12;

    sub_21D72DB24(v24, v23, 1);
  }

  else
  {
    v22[(v15 >> 6) + 8] |= 1 << v15;
    *(v22[6] + 8 * v15) = v13;
    *(v22[7] + 8 * v15) = v12;
    sub_21D72DB24(v24, v23, 1);

    v26 = v92[2];
    v47 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v47)
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      return MEMORY[0x2821A7870](v25);
    }

    v92[2] = v27;
  }

  v28 = &selRef__setContentViewMarginType_;
  while (1)
  {
    v29 = *(v0 + 136) + 1;
    if (v29 == *(v0 + 120))
    {
      break;
    }

LABEL_79:
    *(v0 + 136) = v29;
    *(v0 + 144) = v92;
    *(v0 + 128) = v92;
    v55 = *(v0 + 112);
    if (v29 >= *(v55 + 16))
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v56 = v55 + 24 * v29;
    v57 = *(v56 + 32);
    *(v0 + 152) = v57;
    v58 = *(v56 + 40);
    *(v0 + 160) = v58;
    v59 = *(v56 + 48);
    if (v59 == 2)
    {
      v60 = qword_280D17EE8;
      v61 = v57;
      if (v60 != -1)
      {
        swift_once();
      }

      v62 = sub_21DBF84BC();
      __swift_project_value_buffer(v62, qword_280D0F258);
      v63 = v61;
      v64 = sub_21DBF84AC();
      v9 = sub_21DBFAEBC();
      if (os_log_type_enabled(v64, v9))
      {
        v8 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v63;
        *v65 = v57;
        _os_log_impl(&dword_21D0C9000, v64, v9, "TTRReminderCellTitleEditingPresenter.loadThumbnails: failed to load image for: %@", v8, 0xCu);
        sub_21D0CF7E0(v65, &unk_27CE60070);
        MEMORY[0x223D46520](v65, -1, -1);
        MEMORY[0x223D46520](v8, -1, -1);
      }

      else
      {

        sub_21D72DB24(v57, v58, 2);
      }

      sub_21D72DB24(v57, v58, 2);
    }

    else
    {
      if (v59)
      {

        v89 = v58;
        v90 = swift_task_alloc();
        *(v0 + 168) = v90;
        *v90 = v0;
        v90[1] = sub_21D7863AC;
        v25 = v0 + 16;

        return MEMORY[0x2821A7870](v25);
      }

      v66 = *(v0 + 96);
      v67 = v57;
      v68 = v58;
      v69 = [v66 objectID];
      v70 = v69;
      if (v92[2] && (v71 = sub_21D17E07C(v69), (v72 & 1) != 0))
      {
        v73 = *(v92[7] + 8 * v71);
        sub_21DBF8E0C();
      }

      else
      {
        v73 = MEMORY[0x277D84F90];
      }

      *(v0 + 40) = v73;
      v74 = v67;
      MEMORY[0x223D42D80]();
      if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      v75 = *(v0 + 96);
      sub_21DBFA6CC();
      v76 = *(v0 + 40);
      v77 = [v75 objectID];
      LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 48) = v92;
      v25 = sub_21D17E07C(v77);
      v79 = v92[2];
      v80 = (v78 & 1) == 0;
      v47 = __OFADD__(v79, v80);
      v81 = v79 + v80;
      if (v47)
      {
        goto LABEL_122;
      }

      v9 = v78;
      if (v92[3] >= v81)
      {
        if ((v8 & 1) == 0)
        {
          LOBYTE(v8) = v0 + 16;
          v87 = v25;
          sub_21D224FB4();
          v83 = v0 + 16;
          v25 = v87;
          goto LABEL_100;
        }
      }

      else
      {
        sub_21D21D6DC(v81, v8);
        v25 = sub_21D17E07C(v77);
        if ((v9 & 1) != (v82 & 1))
        {
          goto LABEL_9;
        }
      }

      v83 = v0 + 16;
LABEL_100:
      v84 = *(v83 + 32);
      v92 = v84;
      if (v9)
      {
        *(v84[7] + 8 * v25) = v76;

        sub_21D72DB24(v57, v58, 0);
      }

      else
      {
        v84[(v25 >> 6) + 8] |= 1 << v25;
        *(v84[6] + 8 * v25) = v77;
        *(v84[7] + 8 * v25) = v76;
        sub_21D72DB24(v57, v58, 0);
        v85 = v92[2];
        v47 = __OFADD__(v85, 1);
        v86 = v85 + 1;
        if (v47)
        {
          goto LABEL_123;
        }

        v92[2] = v86;
      }
    }
  }

  v30 = *(v0 + 96);

  while (1)
  {
    v31 = *(v0 + 104);
    if (v31 == *(v0 + 88))
    {
      break;
    }

    v32 = *(v0 + 56);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x223D44740](*(v0 + 104));
    }

    else
    {
      if (v31 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

      v33 = *(v32 + 8 * v31 + 32);
    }

    v34 = v33;
    *(v0 + 96) = v33;
    *(v0 + 104) = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v35 = [v33 v28[184]];
    if (v35)
    {
      v36 = v35;
      v9 = [v35 imageAttachments];

      sub_21D0D8CF0(0, &qword_280D0C290);
      v37 = sub_21DBFA5EC();

      v38 = v37 >> 62;
      if (v37 >> 62)
      {
        v39 = sub_21DBFBD7C();
        if (v39)
        {
LABEL_30:
          if ((v39 & 0x8000000000000000) != 0)
          {
            v9 = 2;
            if (!v38)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v39 >= 2)
            {
              v9 = 2;
            }

            else
            {
              v9 = v39;
            }

            if (!v38)
            {
LABEL_35:
              v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_42;
            }
          }

          if (v37 < 0)
          {
            LOBYTE(v8) = v37;
          }

          else
          {
            LOBYTE(v8) = v37 & 0xF8;
          }

          if (sub_21DBFBD7C() < 0)
          {
            goto LABEL_112;
          }

          v40 = sub_21DBFBD7C();
LABEL_42:
          if (v40 < v9)
          {
            goto LABEL_113;
          }

          sub_21DBF8E0C();
          if ((v37 & 0xC000000000000001) != 0)
          {
            v41 = 0;
            do
            {
              v42 = v41 + 1;
              sub_21DBFBF6C();
              v41 = v42;
            }

            while (v9 != v42);
          }

          if (v38)
          {
            sub_21DBFC3BC();
            LOBYTE(v8) = v49;
            v38 = v50;
            v43 = v51;

            if ((v43 & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_48:
            v93 = v8;
            LOBYTE(v8) = sub_21DBFC66C();
            swift_unknownObjectRetain_n();
            v44 = swift_dynamicCastClass();
            if (!v44)
            {
              swift_unknownObjectRelease();
              v44 = MEMORY[0x277D84F90];
            }

            v45 = *(v44 + 16);

            v46 = v43 >> 1;
            v47 = __OFSUB__(v43 >> 1, v38);
            v48 = (v43 >> 1) - v38;
            v9 = v47;
            if (v47)
            {
              goto LABEL_116;
            }

            if (v45 != v48)
            {
              v25 = swift_unknownObjectRelease_n();
              v28 = &selRef__setContentViewMarginType_;
              LOBYTE(v8) = v93;
              if (v9)
              {
                goto LABEL_115;
              }

              goto LABEL_62;
            }

            v9 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v28 = &selRef__setContentViewMarginType_;
            if (v9)
            {
              goto LABEL_72;
            }
          }

          else
          {
            LOBYTE(v8) = (v37 & 0xF8) + 32;
            v43 = (2 * v9) | 1;
            if (v43)
            {
              goto LABEL_48;
            }

LABEL_58:
            v46 = v43 >> 1;
            v48 = (v43 >> 1) - v38;
            v9 = __OFSUB__(v43 >> 1, v38);
            if (v9)
            {
              goto LABEL_115;
            }

LABEL_62:
            if (v48)
            {
              if (v48 < 1)
              {
                v9 = MEMORY[0x277D84F90];
                if (v38 == v46)
                {
                  goto LABEL_124;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
                v9 = swift_allocObject();
                v25 = _swift_stdlib_malloc_size(v9);
                v52 = v25 - 32;
                if (v25 < 32)
                {
                  v52 = v25 - 25;
                }

                *(v9 + 16) = v48;
                *(v9 + 24) = (2 * (v52 >> 3)) | 1;
                if (v38 == v46)
                {
                  goto LABEL_124;
                }
              }

              swift_arrayInitWithCopy();
LABEL_71:
              swift_unknownObjectRelease();
LABEL_72:
              v53 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v9, *(v0 + 64));
              *(v0 + 112) = v53;

              v54 = *(v53 + 2);
              *(v0 + 120) = v54;
              if (v54)
              {
                v29 = 0;
                goto LABEL_79;
              }

              goto LABEL_20;
            }
          }

          v9 = MEMORY[0x277D84F90];
          goto LABEL_71;
        }
      }

      else
      {
        v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_20:
    }
  }

  v88 = *(v0 + 8);

  return v88(v92);
}

uint64_t sub_21D786F80()
{
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v88 = sub_21DBF84BC();
  __swift_project_value_buffer(v88, qword_280D0F258);
  v3 = v2;
  v4 = v1;
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v9;
    *v12 = v9;
    *(v11 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    v12[1] = v14;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRReminderCellTitleEditingPresenter.loadThumbnails: failed to load pending image for: %@, {error: %@}", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);

    sub_21D72DB24(v10, v9, 1);
  }

  else
  {

    sub_21D72DB24(v10, v9, 1);
  }

  v15 = &selRef__setContentViewMarginType_;
  v89 = *(v0 + 144);
  v16 = *(v0 + 128);
  while (1)
  {
    v17 = *(v0 + 136) + 1;
    if (v17 == *(v0 + 120))
    {
      break;
    }

LABEL_66:
    *(v0 + 136) = v17;
    *(v0 + 144) = v89;
    *(v0 + 128) = v16;
    v49 = *(v0 + 112);
    if (v17 >= *(v49 + 16))
    {
LABEL_103:
      __break(1u);
LABEL_104:
      sub_21D0D8CF0(0, &qword_280D17880);

      return sub_21DBFC70C();
    }

    v50 = v49 + 24 * v17;
    v51 = *(v50 + 32);
    *(v0 + 152) = v51;
    v52 = *(v50 + 40);
    *(v0 + 160) = v52;
    v53 = *(v50 + 48);
    if (v53 == 2)
    {
      v54 = qword_280D17EE8;
      v55 = v51;
      if (v54 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v88, qword_280D0F258);
      v56 = v55;
      v57 = sub_21DBF84AC();
      v58 = sub_21DBFAEBC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v56;
        *v60 = v51;
        _os_log_impl(&dword_21D0C9000, v57, v58, "TTRReminderCellTitleEditingPresenter.loadThumbnails: failed to load image for: %@", v59, 0xCu);
        sub_21D0CF7E0(v60, &unk_27CE60070);
        MEMORY[0x223D46520](v60, -1, -1);
        MEMORY[0x223D46520](v59, -1, -1);
      }

      else
      {

        sub_21D72DB24(v51, v52, 2);
      }

      sub_21D72DB24(v51, v52, 2);
    }

    else
    {
      if (v53)
      {

        v85 = v52;
        v86 = swift_task_alloc();
        *(v0 + 168) = v86;
        *v86 = v0;
        v86[1] = sub_21D7863AC;
        v33 = v0 + 16;

        return MEMORY[0x2821A7870](v33);
      }

      v61 = *(v0 + 96);
      v62 = v51;
      v63 = v52;
      v64 = [v61 objectID];
      v65 = v64;
      if (v89[2] && (v66 = sub_21D17E07C(v64), (v67 & 1) != 0))
      {
        v68 = *(v89[7] + 8 * v66);
        sub_21DBF8E0C();
      }

      else
      {
        v68 = MEMORY[0x277D84F90];
      }

      *(v0 + 40) = v68;
      v69 = v62;
      MEMORY[0x223D42D80]();
      if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      v70 = *(v0 + 96);
      sub_21DBFA6CC();
      v71 = *(v0 + 40);
      v72 = [v70 objectID];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 48) = v16;
      v33 = sub_21D17E07C(v72);
      v75 = v16[2];
      v76 = (v74 & 1) == 0;
      v39 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v39)
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        return MEMORY[0x2821A7870](v33);
      }

      v78 = v74;
      if (v16[3] >= v77)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = v33;
          sub_21D224FB4();
          v33 = v82;
        }
      }

      else
      {
        sub_21D21D6DC(v77, isUniquelyReferenced_nonNull_native);
        v33 = sub_21D17E07C(v72);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_104;
        }
      }

      v16 = *(v0 + 48);
      v89 = v16;
      if (v78)
      {
        *(v16[7] + 8 * v33) = v71;

        sub_21D72DB24(v51, v52, 0);
      }

      else
      {
        v16[(v33 >> 6) + 8] |= 1 << v33;
        *(v16[6] + 8 * v33) = v72;
        *(v16[7] + 8 * v33) = v71;
        sub_21D72DB24(v51, v52, 0);
        v80 = v16[2];
        v39 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v39)
        {
          goto LABEL_108;
        }

        v16[2] = v81;
      }
    }
  }

  v87 = v16;
  v18 = *(v0 + 96);

  while (1)
  {
    v19 = *(v0 + 104);
    if (v19 == *(v0 + 88))
    {
      break;
    }

    v20 = *(v0 + 56);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x223D44740](*(v0 + 104));
    }

    else
    {
      if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v21 = *(v20 + 8 * v19 + 32);
    }

    v22 = v21;
    *(v0 + 96) = v21;
    *(v0 + 104) = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v23 = [v21 v15[184]];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 imageAttachments];

      sub_21D0D8CF0(0, &qword_280D0C290);
      v26 = sub_21DBFA5EC();

      v27 = v26 >> 62;
      if (v26 >> 62)
      {
        v28 = sub_21DBFBD7C();
        if (v28)
        {
LABEL_19:
          if ((v28 & 0x8000000000000000) != 0)
          {
            v29 = 2;
            if (!v27)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v28 >= 2)
            {
              v29 = 2;
            }

            else
            {
              v29 = v28;
            }

            if (!v27)
            {
LABEL_24:
              v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_28;
            }
          }

          if (sub_21DBFBD7C() < 0)
          {
            goto LABEL_98;
          }

          v30 = sub_21DBFBD7C();
LABEL_28:
          if (v30 < v29)
          {
            goto LABEL_99;
          }

          sub_21DBF8E0C();
          if ((v26 & 0xC000000000000001) != 0)
          {
            v31 = 0;
            do
            {
              v32 = v31 + 1;
              sub_21DBFBF6C();
              v31 = v32;
            }

            while (v29 != v32);
          }

          if (v27)
          {
            sub_21DBFC3BC();
            v34 = v43;
            v35 = v44;

            if ((v35 & 1) == 0)
            {
              goto LABEL_44;
            }

LABEL_34:
            sub_21DBFC66C();
            swift_unknownObjectRetain_n();
            v36 = swift_dynamicCastClass();
            if (!v36)
            {
              swift_unknownObjectRelease();
              v36 = MEMORY[0x277D84F90];
            }

            v37 = *(v36 + 16);

            v38 = v35 >> 1;
            v39 = __OFSUB__(v35 >> 1, v34);
            v40 = (v35 >> 1) - v34;
            v41 = v39;
            if (v39)
            {
              goto LABEL_102;
            }

            if (v37 != v40)
            {
              v33 = swift_unknownObjectRelease_n();
              if (v41)
              {
                goto LABEL_101;
              }

              goto LABEL_48;
            }

            v42 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v15 = &selRef__setContentViewMarginType_;
            if (!v42)
            {
              v42 = MEMORY[0x277D84F90];
              goto LABEL_58;
            }
          }

          else
          {
            v34 = 0;
            v35 = (2 * v29) | 1;
            if (v35)
            {
              goto LABEL_34;
            }

LABEL_44:
            v38 = v35 >> 1;
            v39 = __OFSUB__(v35 >> 1, v34);
            v40 = (v35 >> 1) - v34;
            v45 = v39;
            if (v45)
            {
              goto LABEL_101;
            }

LABEL_48:
            if (v40)
            {
              if (v40 < 1)
              {
                v42 = MEMORY[0x277D84F90];
                if (v34 == v38)
                {
                  goto LABEL_109;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
                v42 = swift_allocObject();
                v33 = _swift_stdlib_malloc_size(v42);
                v46 = v33 - 32;
                if (v33 < 32)
                {
                  v46 = v33 - 25;
                }

                v42[2] = v40;
                v42[3] = (2 * (v46 >> 3)) | 1;
                if (v34 == v38)
                {
                  goto LABEL_109;
                }
              }

              swift_arrayInitWithCopy();
            }

            else
            {
              v42 = MEMORY[0x277D84F90];
            }

            v15 = &selRef__setContentViewMarginType_;
LABEL_58:
            swift_unknownObjectRelease();
          }

          v47 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v42, *(v0 + 64));
          *(v0 + 112) = v47;

          v48 = *(v47 + 2);
          *(v0 + 120) = v48;
          if (v48)
          {
            v17 = 0;
            v16 = v87;
            goto LABEL_66;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_9:
    }
  }

  v83 = *(v0 + 8);

  return v83(v89);
}

void sub_21D7879C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v177 = a3;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v199 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v168 - v9;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v195 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v186 = &v168 - v13;
  MEMORY[0x28223BE20](v14);
  v185 = &v168 - v15;
  MEMORY[0x28223BE20](v16);
  v184 = &v168 - v17;
  MEMORY[0x28223BE20](v18);
  v179 = &v168 - v19;
  MEMORY[0x28223BE20](v20);
  v178 = &v168 - v21;
  MEMORY[0x28223BE20](v22);
  v183 = &v168 - v23;
  v190 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v190);
  v198 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v175 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v26 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v192 = &v168 - v28;
  MEMORY[0x28223BE20](v29);
  v191 = &v168 - v30;
  v193 = v31;
  MEMORY[0x28223BE20](v32);
  v194 = &v168 - v33;
  v34 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v168 - v38;
  v40 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v40);
  v174 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v168 - v43;
  v45 = a2[1];
  v171 = *a2;
  v176 = v45;
  v170 = a2[2];
  v201 = v3;
  v46 = v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v172 = v40;
  if (*(v46 + *(v40 + 20)) != 1 || (sub_21D105354(v46, v44, _s15RemindersUICore12EditingStateVMa_1), TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v39), TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v36), v47 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v39, v36), v173 = v44, sub_21D106DF8(v36, type metadata accessor for TTRRemindersListViewModel.ItemID), sub_21D106DF8(v39, type metadata accessor for TTRRemindersListViewModel.ItemID), sub_21D106DF8(v173, _s15RemindersUICore12EditingStateVMa_1), (v47 & 1) == 0))
  {
    if (qword_280D17EE8 != -1)
    {
LABEL_67:
      swift_once();
    }

    v116 = sub_21DBF84BC();
    __swift_project_value_buffer(v116, qword_280D0F258);
    sub_21D105354(a1, v10, type metadata accessor for TTRRemindersListViewModel.Item);

    v117 = sub_21DBF84AC();
    v118 = sub_21DBFAEAC();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v202 = v120;
      *v119 = 136315394;
      v121 = sub_21D25D250();
      v123 = v122;
      sub_21D106DF8(v10, type metadata accessor for TTRRemindersListViewModel.Item);
      v124 = sub_21D0CDFB4(v121, v123, &v202);

      *(v119 + 4) = v124;
      *(v119 + 12) = 2080;
      v125 = v199;
      sub_21D105354(v46, v199, type metadata accessor for TTRRemindersListViewModel.Item);
      v126 = sub_21D25D250();
      v128 = v127;
      sub_21D106DF8(v125, type metadata accessor for TTRRemindersListViewModel.Item);
      v129 = sub_21D0CDFB4(v126, v128, &v202);

      *(v119 + 14) = v129;
      _os_log_impl(&dword_21D0C9000, v117, v118, "Ignoring irrelevant titleAttributesInteractor results {givenItem: %s, editing: %s}", v119, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v120, -1, -1);
      MEMORY[0x223D46520](v119, -1, -1);

      return;
    }

    v130 = type metadata accessor for TTRRemindersListViewModel.Item;
    v131 = v10;
    goto LABEL_62;
  }

  v169 = v46;
  v199 = *(v177 + 16);
  a1 = v194;
  if (!v199)
  {
LABEL_55:
    v132 = sub_21D77BC00(v170);
    sub_21DBF8E0C();
    v133 = sub_21D19F0A4(v132);

    v134 = MEMORY[0x277D84F90];
    if (v199)
    {
      v197 = v133;
      v214 = MEMORY[0x277D84F90];
      sub_21D18EAE4(0, v199, 0);
      v135 = *(v175 + 80);
      v136 = v177 + ((v135 + 32) & ~v135);
      v134 = v214;
      v198 = *(v175 + 72);
      v137 = (v135 + 16) & ~v135;
      do
      {
        v138 = v191;
        sub_21D105354(v136, v191, type metadata accessor for TTRReminderSuggestedAttribute);
        v139 = v192;
        sub_21D105354(v138, v192, type metadata accessor for TTRReminderSuggestedAttribute);
        *(&v203 + 1) = v200;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v202);
        sub_21D105354(v139, boxed_opaque_existential_0, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D106DF8(v138, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v141 = swift_allocObject();
        sub_21D792C00(v26, v141 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v204 = sub_21D792C68;
        *(&v204 + 1) = v141;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v142 = swift_allocObject();
        sub_21D792C00(v26, v142 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v205 = sub_21D792C80;
        *(&v205 + 1) = v142;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v143 = swift_allocObject();
        sub_21D792C00(v26, v143 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v206 = sub_21D792CE8;
        *(&v206 + 1) = v143;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v144 = swift_allocObject();
        sub_21D792C00(v26, v144 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v207 = sub_21D792D00;
        *(&v207 + 1) = v144;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v145 = swift_allocObject();
        sub_21D792C00(v26, v145 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v208 = sub_21D792D64;
        *(&v208 + 1) = v145;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v146 = swift_allocObject();
        sub_21D792C00(v26, v146 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v209 = sub_21D792DE0;
        *(&v209 + 1) = v146;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v147 = swift_allocObject();
        sub_21D792C00(v26, v147 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v210 = sub_21D792E6C;
        *(&v210 + 1) = v147;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v148 = swift_allocObject();
        sub_21D792C00(v26, v148 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v211 = sub_21D792ECC;
        *(&v211 + 1) = v148;
        sub_21D105354(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v149 = swift_allocObject();
        sub_21D792C00(v26, v149 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v212 = sub_21D792EE4;
        *(&v212 + 1) = v149;
        sub_21D792C00(v139, v26, type metadata accessor for TTRReminderSuggestedAttribute);
        v150 = swift_allocObject();
        sub_21D792C00(v26, v150 + v137, type metadata accessor for TTRReminderSuggestedAttribute);
        *&v213 = sub_21D792ECC;
        *(&v213 + 1) = v150;
        v214 = v134;
        v152 = *(v134 + 16);
        v151 = *(v134 + 24);
        if (v152 >= v151 >> 1)
        {
          sub_21D18EAE4((v151 > 1), v152 + 1, 1);
          v134 = v214;
        }

        *(v134 + 16) = v152 + 1;
        v153 = (v134 + 192 * v152);
        v154 = v202;
        v155 = v203;
        v156 = v205;
        v153[4] = v204;
        v153[5] = v156;
        v153[2] = v154;
        v153[3] = v155;
        v157 = v206;
        v158 = v207;
        v159 = v209;
        v153[8] = v208;
        v153[9] = v159;
        v153[6] = v157;
        v153[7] = v158;
        v160 = v210;
        v161 = v211;
        v162 = v213;
        v153[12] = v212;
        v153[13] = v162;
        v153[10] = v160;
        v153[11] = v161;
        v136 += v198;
        --v199;
      }

      while (v199);
      v133 = v197;
    }

    v163 = v169;
    v164 = v173;
    sub_21D105354(v169, v173, _s15RemindersUICore12EditingStateVMa_1);
    v165 = (v164 + *(v172 + 32));
    sub_21D24A814(*v165, v165[1]);
    v166 = v176;
    *v165 = v171;
    v165[1] = v166;
    v165[2] = v133;
    v165[3] = v134;
    v167 = v174;
    sub_21D105354(v163, v174, _s15RemindersUICore12EditingStateVMa_1);
    swift_beginAccess();
    sub_21D78B068(v164, v163);
    swift_endAccess();
    sub_21D7837F4(v167);
    sub_21D106DF8(v167, _s15RemindersUICore12EditingStateVMa_1);
    v131 = v164;
    v130 = _s15RemindersUICore12EditingStateVMa_1;
LABEL_62:
    sub_21D106DF8(v131, v130);
    return;
  }

  v48 = v177 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
  v46 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance;
  v187 = *(v175 + 72);
  v49 = v199;
  while (1)
  {
    sub_21D105354(v48, a1, type metadata accessor for TTRReminderSuggestedAttribute);
    sub_21D105354(a1, v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v197 = v48;
    v196 = v49;
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
          v55 = v198;
          sub_21D106DF8(v198 + *(v54 + 48), type metadata accessor for TTRRecurrenceRuleModel);
          v56 = sub_21DBF509C();
          (*(*(v56 - 8) + 8))(v55, v56);
          v52 = 0xEA00000000006563;
          v53 = 0x6E65727275636572;
        }

        else
        {
          sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
          v52 = 0xE700000000000000;
          v53 = 0x65746164657564;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE800000000000000;
        v53 = 0x6E6F697461636F6CLL;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE700000000000000;
        v53 = 0x656C6369686576;
      }

      else
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE400000000000000;
        v53 = 1953720684;
      }
    }

    else if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE300000000000000;
        v53 = 6775156;
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE700000000000000;
        v53 = 0x746361746E6F63;
      }

      else
      {
        sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v52 = 0xE800000000000000;
        v53 = 0x7265646E696D6572;
      }
    }

    else if (EnumCaseMultiPayload == 5)
    {
      sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v52 = 0xE800000000000000;
      v53 = 0x65656E6769737361;
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v52 = 0xE400000000000000;
      v53 = 1734437990;
    }

    else
    {
      sub_21D106DF8(v198, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v52 = 0xE800000000000000;
      v53 = 0x797469726F697270;
    }

    v57 = [*(a1 + *(v200 + 24)) string];
    v58 = sub_21DBFA16C();
    v60 = v59;

    v61 = v201;
    swift_beginAccess();
    v62 = *(v61 + v46);
    if (*(v62 + 16))
    {
      v63 = sub_21D17EC6C(v53, v52, v58, v60);
      if (v64)
      {
        v65 = *(v62 + 56);
        v180 = *(v188 + 72);
        v66 = v178;
        v182 = v52;
        v181 = v58;
        sub_21D0D3954(v65 + v180 * v63, v178, &qword_27CE583A8);
        v67 = v66;
        v68 = v183;
        sub_21D0D523C(v67, v183, &qword_27CE583A8);
        swift_endAccess();
        a1 = v189;
        v69 = v53;
        v70 = *(v189 + 48);
        v71 = v201;
        v72 = v179;
        sub_21DBF79CC();
        v73 = v68;
        v74 = v184;
        sub_21D0D3954(v73, v184, &qword_27CE583A8);
        *(v72 + v70) = *(v74 + *(a1 + 48));
        swift_beginAccess();
        v75 = v182;
        sub_21D0D523C(v72, v185, &qword_27CE583A8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v214 = *(v71 + v46);
        v77 = v214;
        *(v71 + v46) = 0x8000000000000000;
        v78 = v69;
        v79 = v69;
        v10 = v181;
        v80 = sub_21D17EC6C(v79, v75, v181, v60);
        v82 = v77[2];
        v83 = (v81 & 1) == 0;
        v84 = __OFADD__(v82, v83);
        v85 = v82 + v83;
        if (v84)
        {
          goto LABEL_65;
        }

        v86 = v81;
        if (v77[3] >= v85)
        {
          a1 = v194;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v111 = v80;
            sub_21D223B08();
            v80 = v111;
            if (v86)
            {
              goto LABEL_46;
            }

            goto LABEL_48;
          }
        }

        else
        {
          sub_21D21B694(v85, isUniquelyReferenced_nonNull_native);
          v80 = sub_21D17EC6C(v78, v75, v10, v60);
          a1 = v194;
          if ((v86 & 1) != (v87 & 1))
          {
            break;
          }
        }

        if (v86)
        {
LABEL_46:
          v109 = v80;

          v110 = v214;
          sub_21D793298(v185, v214[7] + v109 * v180);
LABEL_50:
          *(v201 + v46) = v110;

          swift_endAccess();
          sub_21D0CF7E0(v183, &qword_27CE583A8);
          sub_21D106DF8(a1, type metadata accessor for TTRReminderSuggestedAttribute);
          v115 = sub_21DBF79FC();
          (*(*(v115 - 8) + 8))(v184, v115);
          goto LABEL_7;
        }

LABEL_48:
        v110 = v214;
        v214[(v80 >> 6) + 8] |= 1 << v80;
        v112 = (v110[6] + 32 * v80);
        *v112 = v78;
        v112[1] = v75;
        v112[2] = v10;
        v112[3] = v60;
        sub_21D0D523C(v185, v110[7] + v80 * v180, &qword_27CE583A8);
        v113 = v110[2];
        v84 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (v84)
        {
          goto LABEL_66;
        }

        v110[2] = v114;
        goto LABEL_50;
      }
    }

    swift_endAccess();
    v88 = *(v189 + 48);
    v89 = v53;
    v90 = *(v200 + 20);
    v91 = sub_21DBF79FC();
    v92 = a1 + v90;
    v93 = v186;
    (*(*(v91 - 8) + 16))(v186, v92, v91);
    *(v93 + v88) = 0;
    v94 = v201;
    swift_beginAccess();
    sub_21D0D523C(v93, v195, &qword_27CE583A8);
    a1 = swift_isUniquelyReferenced_nonNull_native();
    v214 = *(v94 + v46);
    v95 = v214;
    *(v94 + v46) = 0x8000000000000000;
    v96 = v89;
    v97 = v89;
    v10 = v58;
    v99 = sub_21D17EC6C(v97, v52, v58, v60);
    v100 = v95[2];
    v101 = (v98 & 1) == 0;
    v102 = v100 + v101;
    if (__OFADD__(v100, v101))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v103 = v98;
    if (v95[3] >= v102)
    {
      if ((a1 & 1) == 0)
      {
        sub_21D223B08();
      }

      goto LABEL_41;
    }

    sub_21D21B694(v102, a1);
    v104 = sub_21D17EC6C(v96, v52, v10, v60);
    if ((v103 & 1) != (v105 & 1))
    {
      break;
    }

    v99 = v104;
LABEL_41:
    a1 = v194;
    if (v103)
    {

      v50 = v214;
      sub_21D793298(v195, v214[7] + *(v188 + 72) * v99);
    }

    else
    {
      v50 = v214;
      v214[(v99 >> 6) + 8] |= 1 << v99;
      v106 = (v50[6] + 32 * v99);
      *v106 = v96;
      v106[1] = v52;
      v106[2] = v10;
      v106[3] = v60;
      sub_21D0D523C(v195, v50[7] + *(v188 + 72) * v99, &qword_27CE583A8);
      v107 = v50[2];
      v84 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v84)
      {
        goto LABEL_64;
      }

      v50[2] = v108;
    }

    *(v201 + v46) = v50;

    swift_endAccess();
    sub_21D106DF8(a1, type metadata accessor for TTRReminderSuggestedAttribute);
LABEL_7:
    v48 = v197 + v187;
    v49 = v196 - 1;
    if (v196 == 1)
    {
      goto LABEL_55;
    }
  }

  sub_21DBFC70C();
  __break(1u);
}

uint64_t sub_21D7890F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  sub_21DBFA84C();
  v7[10] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D789194, v9, v8);
}

uint64_t sub_21D789194()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_21D789240(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21D789240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a2;
  v34 = a1;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618C8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable;
  if (!*&v3[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable])
  {
    v32 = v5;
    v33 = v10;
    v14 = *&v3[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 24];
    v15 = *&v3[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 32];
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor], v14);
    v31 = (*(v15 + 8))(v14, v15);
    v37 = v31;
    v30 = [objc_opt_self() mainRunLoop];
    v38 = v30;
    v16 = sub_21DBFBA0C();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618D0);
    sub_21D0D8CF0(0, &qword_280D17650);
    sub_21D0D0F1C(&qword_280D17990, &qword_27CE618D0);
    sub_21D5A51D8();
    sub_21DBF936C();
    sub_21D0CF7E0(v8, &qword_27CE5A0F0);

    sub_21D0D0F1C(&qword_280D179B0, &qword_27CE618C8);
    v17 = sub_21DBF91AC();
    (*(v33 + 8))(v12, v9);
    *&v3[v13] = v17;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v3 + 5);
    ObjectType = swift_getObjectType();
    v20 = (*(v18 + 8))(ObjectType, v18);
    v22 = v21;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = *&v4[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 24];
  v24 = *&v4[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 32];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor], v23);
  v25 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v24 + 16);

  v27(&v4[v25], v35, v34, v36, v20, v22, sub_21D792BF8, v26, v23, v24);
}

uint64_t sub_21D7896A4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1D0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a2, v6, &qword_27CE5D1D0);
  v10 = &v6[*(v4 + 56)];
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  sub_21D792C00(v6, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v17[0] = v12;
  v17[1] = v11;
  v17[2] = v13;
  sub_21D7879C0(v9, v17, v14);

  sub_21D106DF8(v9, type metadata accessor for TTRRemindersListViewModel.Item);
}

double sub_21D789814@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
    {
      v3 = *(Strong + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      TTRRemindersListEditingSession.reminderAndList.getter(ObjectType, v3, a1);
      swift_unknownObjectRelease();
      return result;
    }
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_21D7898C4(unint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void **a6)
{
  v136 = a6;
  v141 = a5;
  v140 = a4;
  v142 = a3;
  v151 = a2;
  v152 = a1;
  v139 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v139);
  v138 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v137 = &v132 - v8;
  v148 = sub_21DBF54CC();
  v135 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v147 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = &v132 - v11;
  v12 = type metadata accessor for TTRUnsavedAttachment(0);
  v144 = *(v12 - 8);
  v145 = v12;
  MEMORY[0x28223BE20](v12);
  v143 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = &v132 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v132 - v17;
  v19 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v149 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRDateChangeType();
  MEMORY[0x28223BE20](v22);
  v24 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21DBF509C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v132 - v30;
  v32 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v32);
  v34 = (&v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D105354(v152, v34, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v39 = v149;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v80 = v26;
        v81 = *(v26 + 32);
        v134 = v28;
        v133 = v25;
        v81(v28, v34, v25);
        sub_21D792C00(v34 + v79, v21, type metadata accessor for TTRRecurrenceRuleModel);
        v82 = v151;
        v83 = v151[3];
        v84 = v151[4];
        __swift_project_boxed_opaque_existential_1(v151, v83);
        v85 = *(v26 + 16);
        v86 = v133;
        v85(v18, v28, v133);
        (*(v80 + 56))(v18, 0, 1, v86);
        TTRRemindersListAttributeEditing.setDueDate(_:)(v18, v83, v84);
        sub_21D0CF7E0(v18, &qword_27CE58D60);
        v87 = v82[3];
        v88 = v82[4];
        __swift_project_boxed_opaque_existential_1(v82, v87);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58970);
        v89 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_21DC08D00;
        sub_21D105354(v21, v90 + v89, type metadata accessor for TTRRecurrenceRuleModel);
        (*(v88 + 128))(v90, v87, v88);

        sub_21D106DF8(v21, type metadata accessor for TTRRecurrenceRuleModel);
        (*(v80 + 8))(v134, v86);
      }

      else
      {
        v51 = v26;
        v52 = *(v26 + 32);
        v53 = v25;
        v52(v31, v34, v25);
        v54 = v151[3];
        v55 = v151[4];
        __swift_project_boxed_opaque_existential_1(v151, v54);
        v56 = sub_21DBF4EDC();
        [v56 rem_isAllDayDateComponents];

        (*(v51 + 16))(v24, v31, v53);
        swift_storeEnumTagMultiPayload();
        (*(v55 + 8))(v24, v54, v55);
        sub_21D106DF8(v24, type metadata accessor for TTRDateChangeType);
        (*(v51 + 8))(v31, v53);
      }

      return;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v57 = *v34;
      v58 = v142;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v59 = *(v58 + 24);
        ObjectType = swift_getObjectType();
        (*(v59 + 64))(v58, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v59);
        swift_unknownObjectRelease();
      }

      v61 = v151[3];
      v62 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v61);
      v63 = *(v62 + 136);
      v44 = v57;
      v63(v57, v61, v62);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v74 = *v34;
        v75 = swift_getObjectType();
        v76 = v141;
        v77 = v141[7];
        v78 = v74;
        v77(v74, v75, v76);

        return;
      }

      v40 = *v34;
      v41 = v151[3];
      v42 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v41);
      v43 = *(v42 + 144);
      v44 = v40;
      v43(v40, v41, v42);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v64 = *v34;

      v65 = v151[3];
      v66 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v65);
      (*(v66 + 64))(v64, 0, v65, v66);
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v36 = *v34;
      v37 = v151[3];
      v38 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v37);
      (*(v38 + 24))(v36, v37, v38);
    }

    else
    {

      v91 = v151[3];
      v92 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v91);
      v93 = REMReminderPriorityLevelForPriority();
      (*(v92 + 32))(v93, v91, v92);
    }

    return;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v67 = *v34;
    v68 = v151[3];
    v69 = v151[4];
    __swift_project_boxed_opaque_existential_1(v151, v68);
    v70 = [v67 name];
    v71 = sub_21DBFA16C();
    v73 = v72;

    v153 = v71;
    v154 = v73;
    v155 = 0;
    v156 = 0;
    (*(v69 + 80))(&v153, v68, v69);

    sub_21D24B434(v153, v154, v155, v156);
    return;
  }

  if (EnumCaseMultiPayload == 9)
  {
    v45 = *v34;
    sub_21D0D8CF0(0, &unk_27CE626A0);
    v46 = v45;
    v47 = sub_21DBFB4AC();
    if (v47)
    {
      v48 = v47;
      v49 = v151[3];
      v50 = v151[4];
      __swift_project_boxed_opaque_existential_1(v151, v49);
      (*(v50 + 184))(v48, v49, v50);
    }

    return;
  }

  v44 = *v34;

  v94 = v142;
  v95 = (v142 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state);
  swift_beginAccess();
  v96 = v139;
  if (*(v95 + *(v139 + 44)))
  {
LABEL_21:

    return;
  }

  v97 = [v44 title];
  if (v97)
  {
    v98 = *v136;
    *v136 = v97;
    v99 = v97;

    if (*(v94 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode))
    {
      v100 = 1;
    }

    else
    {
      v100 = 2;
    }

    v101 = swift_getObjectType();
    v157[0] = v100;
    TTRRemindersListEditingSession.setTitleWithOptionalUndo(_:locale:undoRegistration:canMarkHasSetTitle:)(v99, 0, 0, v157, 0, v101, v141);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v102 = *(v94 + 40);
    v103 = swift_getObjectType();
    LOBYTE(v102) = (*(v102 + 72))(v103, v102);
    swift_unknownObjectRelease();
    if (v102)
    {
      v104 = swift_getObjectType();
      v105 = [v44 list];
      (v141[7])(v105, v104);
    }
  }

  v106 = [v44 notes];
  if (v106)
  {
    v107 = v106;
    v108 = v151[3];
    v109 = v151[4];
    __swift_project_boxed_opaque_existential_1(v151, v108);
    (*(v109 + 48))(v107, v108, v109);
  }

  v110 = [v44 attachmentContext];
  if (v110)
  {
    v111 = v110;
    v112 = [v110 imageAttachments];

    sub_21D0D8CF0(0, &qword_280D0C290);
    v113 = sub_21DBFA5EC();

    if (v113 >> 62)
    {
      goto LABEL_58;
    }

    for (i = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v140 = v95;
      v141 = v44;
      v115 = 0;
      v152 = v113 & 0xC000000000000001;
      v149 = v113 & 0xFFFFFFFFFFFFFF8;
      v95 = (v135 + 32);
      v116 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v152)
        {
          v117 = MEMORY[0x223D44740](v115, v113);
        }

        else
        {
          if (v115 >= *(v149 + 16))
          {
            goto LABEL_57;
          }

          v117 = *(v113 + 8 * v115 + 32);
        }

        v118 = v117;
        v119 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          break;
        }

        v120 = [v117 fileURL];
        if (v120)
        {
          v96 = i;
          v121 = v147;
          v122 = v120;
          sub_21DBF546C();

          v123 = *v95;
          v124 = v146;
          v125 = v148;
          (*v95)(v146, v121, v148);
          v44 = v143;
          v123(v143, v124, v125);
          swift_storeEnumTagMultiPayload();
          sub_21D792C00(v44, v150, type metadata accessor for TTRUnsavedAttachment);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_21D213B54(0, v116[2] + 1, 1, v116);
          }

          v127 = v116[2];
          v126 = v116[3];
          if (v127 >= v126 >> 1)
          {
            v116 = sub_21D213B54(v126 > 1, v127 + 1, 1, v116);
          }

          v116[2] = v127 + 1;
          sub_21D792C00(v150, v116 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v127, type metadata accessor for TTRUnsavedAttachment);
          i = v96;
        }

        else
        {
        }

        ++v115;
        if (v119 == i)
        {

          v128 = v151[3];
          v129 = v151[4];
          __swift_project_boxed_opaque_existential_1(v151, v128);
          (*(v129 + 152))(v116, v128, v129);
          v96 = v139;
          v44 = v141;
          v95 = v140;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

LABEL_59:
  }

  v130 = v137;
  sub_21D105354(v95, v137, _s15RemindersUICore12EditingStateVMa_1);
  *(v130 + *(v96 + 44)) = 1;
  v131 = v138;
  sub_21D105354(v95, v138, _s15RemindersUICore12EditingStateVMa_1);
  swift_beginAccess();
  sub_21D78B068(v130, v95);
  swift_endAccess();
  sub_21D7837F4(v131);

  sub_21D106DF8(v131, _s15RemindersUICore12EditingStateVMa_1);
  sub_21D106DF8(v130, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t TTRReminderCellTitleEditingPresenter.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D106DF8(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);

  swift_unknownObjectRelease();

  sub_21D106DF8(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state, _s15RemindersUICore12EditingStateVMa_1);
  return v0;
}

uint64_t TTRReminderCellTitleEditingPresenter.__deallocating_deinit()
{
  TTRReminderCellTitleEditingPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_21D78A98C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24BEC0;
}

uint64_t sub_21D78AA20@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  a1[3] = _s15RemindersUICore12EditingStateVMa_1(0);
  a1[4] = &off_282ED1578;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_21D105354(v1 + v3, boxed_opaque_existential_0, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t sub_21D78AAA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  sub_21D105354(v1 + v6, v5, _s15RemindersUICore12EditingStateVMa_1);
  v7 = &v5[*(v3 + 28)];
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v7 = &v5[*(v3 + 32)];
    v9 = *v7;
    v8 = v7[1];
  }

  v10 = v7[2];
  v11 = v7[3];
  sub_21D24A7C4(v9, v8);
  *a1 = v9;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v11;
  return sub_21D106DF8(v5, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t sub_21D78ABF8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  return *(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 36));
}

void sub_21D78ACA4()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    v2 = *(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
    if (v2)
    {
      v3 = v2;
      sub_21D77D430(v3, 0);
    }
  }
}

uint64_t sub_21D78AD7C(uint64_t a1, uint64_t a2, __int128 *a3, char a4, char a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a6;
  *(a10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a10 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;
  v18 = (a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  *v18 = 0;
  v18[1] = 0;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance) = MEMORY[0x277D84F98];
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 0;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = 0;
  sub_21D105354(a1, a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v19 = (a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter);
  *v19 = a2;
  v19[1] = a12;
  sub_21D0D0FD0(a3, a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) = a4;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey) = a5;
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType) = v17;
  swift_beginAccess();
  *(a10 + 40) = a8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = a9;

  v20 = a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  sub_21D792C00(a1, a10 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state, type metadata accessor for TTRRemindersListViewModel.Item);
  v21 = _s15RemindersUICore12EditingStateVMa_1(0);
  *(v20 + v21[5]) = 0;
  *(v20 + v21[6]) = 0;
  v22 = (v20 + v21[7]);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = (v20 + v21[8]);
  *v23 = 0u;
  v23[1] = 0u;
  *(v20 + v21[9]) = 0;
  *(v20 + v21[10]) = 0;
  *(v20 + v21[11]) = 0;
  return a10;
}

uint64_t sub_21D78AF98(uint64_t a1, uint64_t a2, __int128 *a3, char a4, char a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = swift_allocObject();

  return sub_21D78AD7C(a1, a2, a3, a4, a5, a6, a7, a8, a9, v22, a11, a12);
}

uint64_t sub_21D78B068(uint64_t a1, uint64_t a2)
{
  v4 = _s15RemindersUICore12EditingStateVMa_1(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_21D78B0CC(uint64_t *a1, char a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v5 = *a1;
    v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) == 1)
    {
      v7 = qword_280D17EE8;
      swift_unknownObjectRetain();
      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF84BC();
      __swift_project_value_buffer(v8, qword_280D0F258);
      v9 = sub_21DBF84AC();
      v10 = sub_21DBFAEDC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_21D0C9000, v9, v10, "TTRReminderCellTitleEditingPresenter: skip saving title editing session", v11, 2u);
        MEMORY[0x223D46520](v11, -1, -1);
      }

      v5 |= 2uLL;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ObjectType = swift_getObjectType();
    v13 = v5;
    (*(v6 + 112))(&v13, ObjectType, v6);
    sub_21D77F188();
    swift_unknownObjectRelease();
  }

  *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  if (a2)
  {

    sub_21D77F2A8();
  }
}

unint64_t sub_21D78B294()
{
  result = qword_27CE618A0;
  if (!qword_27CE618A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE618A0);
  }

  return result;
}

uint64_t sub_21D78B588()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    result = _s15RemindersUICore12EditingStateVMa_1(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t destroy for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey()
{
}

void *initializeWithCopy for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  return a1;
}

void *assignWithTake for TTRReminderCellTitleEditingPresenter.AttributeSuggestionKey(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

char *sub_21D78B834(char *a1, char **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = &v11[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v14 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v121 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = &a1[v57];
      v59 = a2 + v57;
      v60 = *(a2 + v57 + 8);
      if (v60)
      {
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v65 = *(v59 + 6);
        v112 = *(v59 + 7);
        v117 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v65, v112, v117);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v65;
        *(v58 + 7) = v112;
        v58[64] = v117;
        *(v58 + 65) = *(v59 + 65);
        v66 = v59[120];
        if (v66 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v67 = *(v59 + 9);
          v68 = *(v59 + 12);
          v113 = *(v59 + 11);
          v118 = *(v59 + 10);
          v69 = *(v59 + 13);
          v70 = *(v59 + 14);
          v71 = v66 & 1;
          sub_21D0FB960(v67, v118, v113, v68, v69, v70, v66 & 1);
          *(v58 + 9) = v67;
          *(v58 + 10) = v118;
          *(v58 + 11) = v113;
          *(v58 + 12) = v68;
          *(v58 + 13) = v69;
          *(v58 + 14) = v70;
          v58[120] = v71;
        }

        v6 = v121;
        v58[121] = v59[121];
        goto LABEL_98;
      }

LABEL_95:
      v72 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v72;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v73 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v73;
      v74 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v74;
LABEL_98:
      a1[v56[6]] = *(a2 + v56[6]);
      a1[v56[7]] = *(a2 + v56[7]);
      a1[v56[8]] = *(a2 + v56[8]);
      a1[v56[9]] = *(a2 + v56[9]);
      a1[v56[10]] = *(a2 + v56[10]);
      v75 = v56[11];
      v76 = *(a2 + v75);
      *&a1[v75] = v76;
      v77 = v76;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *a2;
      *a1 = *a2;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, a2, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v78 = v56[5];
    v58 = &a1[v78];
    v59 = a2 + v78;
    v79 = *(a2 + v78 + 8);
    if (v79)
    {
      *v58 = *v59;
      *(v58 + 1) = v79;
      v80 = *(v59 + 2);
      v81 = *(v59 + 3);
      v82 = *(v59 + 4);
      v83 = *(v59 + 5);
      v110 = *(v59 + 6);
      v119 = *(v59 + 7);
      v114 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v80, v81, v82, v83, v110, v119, v114);
      *(v58 + 2) = v80;
      *(v58 + 3) = v81;
      *(v58 + 4) = v82;
      *(v58 + 5) = v83;
      *(v58 + 6) = v110;
      *(v58 + 7) = v119;
      v58[64] = v114;
      *(v58 + 65) = *(v59 + 65);
      v84 = v59[120];
      if (v84 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v115 = *(v59 + 10);
        v120 = *(v59 + 9);
        v85 = *(v59 + 12);
        v111 = *(v59 + 11);
        v86 = *(v59 + 13);
        v87 = *(v59 + 14);
        v88 = v84 & 1;
        sub_21D0FB960(v120, v115, v111, v85, v86, v87, v84 & 1);
        *(v58 + 9) = v120;
        *(v58 + 10) = v115;
        *(v58 + 11) = v111;
        *(v58 + 12) = v85;
        *(v58 + 13) = v86;
        *(v58 + 14) = v87;
        v58[120] = v88;
      }

      v58[121] = v59[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v20 = a2[2];
      *(a1 + 2) = v20;
      v21 = v20;
      goto LABEL_129;
    }

    v31 = *a2;
    *a1 = *a2;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    v32 = *(v17 + 48);
    v33 = v31;
    if (v32(a2 + v15, 1, v16))
    {
LABEL_28:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v15], a2 + v15, *(*(v27 - 8) + 64));
      goto LABEL_129;
    }

    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 4)
    {
      if (v47 <= 7)
      {
        if (v47 == 5 || v47 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v47 != 8 && v47 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v89 = *(a2 + v15);
      *&a1[v15] = v89;
      v90 = v89;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v17 + 56))(&a1[v15], 0, 1, v16);
      goto LABEL_129;
    }

    if (v47 <= 2)
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(&a1[v15], a2 + v15, *(v17 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v91 = sub_21DBF563C();
    (*(*(v91 - 8) + 16))(&a1[v15], a2 + v15, v91);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(a2, 1, v28))
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v30 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v39 = *(v28 + 20);
        v40 = sub_21DBF6C1C();
        v116 = *(*(v40 - 8) + 16);
        sub_21DBF8E0C();
        v116(&a1[v39], a2 + v39, v40);
        (*(v29 + 56))(a1, 0, 1, v28);
      }

      v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v42 = &a1[v41];
      v43 = (a2 + v41);
      v44 = v43[1];
      if (v44)
      {
        *v42 = *v43;
        *(v42 + 1) = v44;
        v45 = v43[2];
        *(v42 + 2) = v45;
        sub_21DBF8E0C();
        v46 = v45;
      }

      else
      {
        *v42 = *v43;
        *(v42 + 2) = v43[2];
      }

      goto LABEL_129;
    case 7:
      v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(a2, 1, v34))
      {
        v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v36 - 8) + 64));
      }

      else
      {
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(a1, a2, v48);
        a1[*(v34 + 20)] = *(a2 + *(v34 + 20));
        (*(v35 + 56))(a1, 0, 1, v34);
      }

      v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *&a1[*(v49 + 20)] = *(a2 + *(v49 + 20));
      goto LABEL_129;
    case 8:
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v10 = sub_21DBF8D7C();
      (*(*(v10 - 8) + 16))(&a1[v9], a2 + v9, v10);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
  }

LABEL_35:
  memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_130:
  v92 = v6[6];
  a1[v6[5]] = *(a2 + v6[5]);
  v93 = *(a2 + v92);
  *&a1[v92] = v93;
  v94 = v6[7];
  v95 = &a1[v94];
  v96 = (a2 + v94);
  v97 = *(a2 + v94 + 8);
  v98 = v93;
  if (v97)
  {
    *v95 = *v96;
    *(v95 + 1) = v97;
    v99 = v96[2];
    v100 = v96[3];
    *(v95 + 2) = v99;
    *(v95 + 3) = v100;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v101 = *(v96 + 1);
    *v95 = *v96;
    *(v95 + 1) = v101;
  }

  v102 = v6[8];
  v103 = &a1[v102];
  v104 = (a2 + v102);
  v105 = v104[1];
  if (v105)
  {
    *v103 = *v104;
    *(v103 + 1) = v105;
    v106 = v104[3];
    *(v103 + 2) = v104[2];
    *(v103 + 3) = v106;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v107 = *(v104 + 1);
    *v103 = *v104;
    *(v103 + 1) = v107;
  }

  v108 = v6[10];
  a1[v6[9]] = *(a2 + v6[9]);
  a1[v108] = *(a2 + v108);
  a1[v6[11]] = *(a2 + v6[11]);
  return a1;
}

uint64_t sub_21D78CF58(id *a1, int *a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:
  if (*(a1 + a2[7] + 8))
  {
  }

  result = *(a1 + a2[8] + 8);
  if (result)
  {
  }

  return result;
}

void **sub_21D78D3F4(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v128 = a3;
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 == 5 || v11 == 6)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
LABEL_90:
          v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v55 = v54[5];
          v56 = a1 + v55;
          v57 = a2 + v55;
          v58 = *(a2 + v55 + 8);
          if (v58)
          {
            *v56 = *v57;
            *(v56 + 1) = v58;
            v59 = *(v57 + 2);
            v60 = *(v57 + 3);
            v61 = *(v57 + 4);
            v62 = *(v57 + 5);
            v63 = *(v57 + 6);
            v119 = *(v57 + 7);
            v124 = v57[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v59, v60, v61, v62, v63, v119, v124);
            *(v56 + 2) = v59;
            *(v56 + 3) = v60;
            *(v56 + 4) = v61;
            *(v56 + 5) = v62;
            *(v56 + 6) = v63;
            *(v56 + 7) = v119;
            v56[64] = v124;
            *(v56 + 65) = *(v57 + 65);
            v64 = v57[120];
            if (v64 == 255)
            {
              *(v56 + 72) = *(v57 + 72);
              *(v56 + 88) = *(v57 + 88);
              *(v56 + 104) = *(v57 + 104);
              v56[120] = v57[120];
            }

            else
            {
              v120 = *(v57 + 10);
              v125 = *(v57 + 9);
              v65 = *(v57 + 11);
              v66 = *(v57 + 12);
              v67 = *(v57 + 13);
              v68 = *(v57 + 14);
              v69 = v64 & 1;
              sub_21D0FB960(v125, v120, v65, v66, v67, v68, v64 & 1);
              *(v56 + 9) = v125;
              *(v56 + 10) = v120;
              *(v56 + 11) = v65;
              *(v56 + 12) = v66;
              *(v56 + 13) = v67;
              *(v56 + 14) = v68;
              v56[120] = v69;
            }

            a3 = v128;
            v56[121] = v57[121];
          }

          else
          {
            v70 = *(v57 + 5);
            *(v56 + 4) = *(v57 + 4);
            *(v56 + 5) = v70;
            *(v56 + 6) = *(v57 + 6);
            *(v56 + 106) = *(v57 + 106);
            v71 = *(v57 + 1);
            *v56 = *v57;
            *(v56 + 1) = v71;
            v72 = *(v57 + 3);
            *(v56 + 2) = *(v57 + 2);
            *(v56 + 3) = v72;
          }

          *(a1 + v54[6]) = *(a2 + v54[6]);
          *(a1 + v54[7]) = *(a2 + v54[7]);
          *(a1 + v54[8]) = *(a2 + v54[8]);
          *(a1 + v54[9]) = *(a2 + v54[9]);
          *(a1 + v54[10]) = *(a2 + v54[10]);
          v73 = v54[11];
          v74 = *(a2 + v73);
          *(a1 + v73) = v74;
          v75 = v74;
          goto LABEL_128;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

LABEL_89:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_90;
        }
      }

      v49 = *a2;
      *a1 = *a2;
      v50 = v49;
      swift_storeEnumTagMultiPayload();
      goto LABEL_90;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v129 = a3;
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
LABEL_98:
        v76 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v77 = v76[5];
        v78 = a1 + v77;
        v79 = a2 + v77;
        v80 = *(a2 + v77 + 8);
        if (v80)
        {
          *v78 = *v79;
          *(v78 + 1) = v80;
          v81 = *(v79 + 2);
          v82 = *(v79 + 3);
          v83 = *(v79 + 4);
          v84 = *(v79 + 5);
          v85 = *(v79 + 6);
          v126 = *(v79 + 7);
          v121 = v79[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v81, v82, v83, v84, v85, v126, v121);
          *(v78 + 2) = v81;
          *(v78 + 3) = v82;
          *(v78 + 4) = v83;
          *(v78 + 5) = v84;
          *(v78 + 6) = v85;
          *(v78 + 7) = v126;
          v78[64] = v121;
          *(v78 + 65) = *(v79 + 65);
          v86 = v79[120];
          if (v86 == 255)
          {
            *(v78 + 72) = *(v79 + 72);
            *(v78 + 88) = *(v79 + 88);
            *(v78 + 104) = *(v79 + 104);
            v78[120] = v79[120];
          }

          else
          {
            v122 = *(v79 + 10);
            v127 = *(v79 + 9);
            v87 = *(v79 + 11);
            v88 = *(v79 + 12);
            v89 = *(v79 + 13);
            v90 = *(v79 + 14);
            v91 = v86 & 1;
            sub_21D0FB960(v127, v122, v87, v88, v89, v90, v86 & 1);
            *(v78 + 9) = v127;
            *(v78 + 10) = v122;
            *(v78 + 11) = v87;
            *(v78 + 12) = v88;
            *(v78 + 13) = v89;
            *(v78 + 14) = v90;
            v78[120] = v91;
          }

          a3 = v129;
          v78[121] = v79[121];
        }

        else
        {
          v92 = *(v79 + 5);
          *(v78 + 4) = *(v79 + 4);
          *(v78 + 5) = v92;
          *(v78 + 6) = *(v79 + 6);
          *(v78 + 106) = *(v79 + 106);
          v93 = *(v79 + 1);
          *v78 = *v79;
          *(v78 + 1) = v93;
          v94 = *(v79 + 3);
          *(v78 + 2) = *(v79 + 2);
          *(v78 + 3) = v94;
        }

        *(a1 + v76[6]) = *(a2 + v76[6]);
        *(a1 + v76[7]) = *(a2 + v76[7]);
        *(a1 + v76[8]) = *(a2 + v76[8]);
        *(a1 + v76[9]) = *(a2 + v76[9]);
        *(a1 + v76[10]) = *(a2 + v76[10]);
        v95 = v76[11];
        v96 = *(a2 + v95);
        *(a1 + v95) = v96;
        v97 = v96;
        goto LABEL_128;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

LABEL_97:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
        goto LABEL_98;
      }
    }

    v52 = *a2;
    *a1 = *a2;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_98;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_128;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v98 = *(a2 + v13);
      *(a1 + v13) = v98;
      v99 = v98;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_128;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(a1 + v13, a2 + v13, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(a2, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(a1, a2, *(*(v28 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v123 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v123(a1 + v37, a2 + v37, v38);
      (*(v27 + 56))(a1, 0, 1, v26);
    }

    v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v40 = (a1 + v39);
    v41 = (a2 + v39);
    v42 = v41[1];
    if (v42)
    {
      *v40 = *v41;
      v40[1] = v42;
      v43 = v41[2];
      v40[2] = v43;
      sub_21DBF8E0C();
      v44 = v43;
    }

    else
    {
      *v40 = *v41;
      v40[2] = v41[2];
    }

    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(a2, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v34 - 8) + 64));
    }

    else
    {
      v46 = sub_21DBF563C();
      (*(*(v46 - 8) + 16))(a1, a2, v46);
      *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
      (*(v33 + 56))(a1, 0, 1, v32);
    }

    v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_129;
  }

  *a1 = *a2;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  v101 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v102 = *(a2 + v101);
  *(a1 + v101) = v102;
  v103 = a3[7];
  v104 = (a1 + v103);
  v105 = (a2 + v103);
  v106 = *(a2 + v103 + 8);
  v107 = v102;
  if (v106)
  {
    *v104 = *v105;
    v104[1] = v106;
    v108 = v105[2];
    v109 = v105[3];
    v104[2] = v108;
    v104[3] = v109;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v110 = *(v105 + 1);
    *v104 = *v105;
    *(v104 + 1) = v110;
  }

  v111 = a3[8];
  v112 = (a1 + v111);
  v113 = (a2 + v111);
  v114 = v113[1];
  if (v114)
  {
    *v112 = *v113;
    v112[1] = v114;
    v115 = v113[3];
    v112[2] = v113[2];
    v112[3] = v115;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v116 = *(v113 + 1);
    *v112 = *v113;
    *(v112 + 1) = v116;
  }

  v117 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v117) = *(a2 + v117);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

void **sub_21D78EAC4(void **a1, void **a2, int *a3)
{
  if (a1 == a2)
  {
    goto LABEL_129;
  }

  sub_21D106DF8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_34;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *a2;
        *a1 = *a2;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      if (*(a2 + v55 + 8))
      {
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v114 = *(v57 + 6);
        v123 = *(v57 + 7);
        v118 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v114, v123, v118);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v114;
        *(v56 + 7) = v123;
        v56[64] = v118;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v62 = v57[120];
        if (v62 == 255)
        {
          v73 = *(v57 + 72);
          v74 = *(v57 + 88);
          v75 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v75;
          *(v56 + 88) = v74;
          *(v56 + 72) = v73;
        }

        else
        {
          v119 = *(v57 + 10);
          v124 = *(v57 + 9);
          v63 = *(v57 + 12);
          v115 = *(v57 + 11);
          v64 = *(v57 + 13);
          v65 = *(v57 + 14);
          v66 = v62 & 1;
          sub_21D0FB960(v124, v119, v115, v63, v64, v65, v62 & 1);
          *(v56 + 9) = v124;
          *(v56 + 10) = v119;
          *(v56 + 11) = v115;
          *(v56 + 12) = v63;
          *(v56 + 13) = v64;
          *(v56 + 14) = v65;
          v56[120] = v66;
        }

        v56[121] = v57[121];
        goto LABEL_97;
      }

LABEL_94:
      v67 = *v57;
      v68 = *(v57 + 1);
      v69 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v69;
      *v56 = v67;
      *(v56 + 1) = v68;
      v70 = *(v57 + 4);
      v71 = *(v57 + 5);
      v72 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v71;
      *(v56 + 6) = v72;
      *(v56 + 4) = v70;
LABEL_97:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v76 = v54[11];
      v77 = *(a2 + v76);
      *(a1 + v76) = v77;
      v78 = v77;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v79 = v54[5];
    v56 = a1 + v79;
    v57 = a2 + v79;
    if (*(a2 + v79 + 8))
    {
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v80 = *(v57 + 2);
      v81 = *(v57 + 3);
      v82 = *(v57 + 4);
      v83 = *(v57 + 5);
      v116 = *(v57 + 6);
      v125 = *(v57 + 7);
      v120 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v80, v81, v82, v83, v116, v125, v120);
      *(v56 + 2) = v80;
      *(v56 + 3) = v81;
      *(v56 + 4) = v82;
      *(v56 + 5) = v83;
      *(v56 + 6) = v116;
      *(v56 + 7) = v125;
      v56[64] = v120;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v84 = v57[120];
      if (v84 == 255)
      {
        v89 = *(v57 + 72);
        v90 = *(v57 + 88);
        v91 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v91;
        *(v56 + 88) = v90;
        *(v56 + 72) = v89;
      }

      else
      {
        v121 = *(v57 + 10);
        v126 = *(v57 + 9);
        v85 = *(v57 + 12);
        v117 = *(v57 + 11);
        v86 = *(v57 + 13);
        v87 = *(v57 + 14);
        v88 = v84 & 1;
        sub_21D0FB960(v126, v121, v117, v85, v86, v87, v84 & 1);
        *(v56 + 9) = v126;
        *(v56 + 10) = v121;
        *(v56 + 11) = v117;
        *(v56 + 12) = v85;
        *(v56 + 13) = v86;
        *(v56 + 14) = v87;
        v56[120] = v88;
      }

      v56[121] = v57[121];
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      *(a1 + 10) = *(a2 + 10);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_27:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_128;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v92 = *(a2 + v13);
      *(a1 + v13) = v92;
      v93 = v92;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_128;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v94 = sub_21DBF563C();
    (*(*(v94 - 8) + 16))(a1 + v13, a2 + v13, v94);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(a2, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(a1, a2, *(*(v28 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v122 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v122(a1 + v37, a2 + v37, v38);
      (*(v27 + 56))(a1, 0, 1, v26);
    }

    v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v40 = (a1 + v39);
    v41 = (a2 + v39);
    if (v41[1])
    {
      *v40 = *v41;
      v40[1] = v41[1];
      v42 = v41[2];
      v40[2] = v42;
      sub_21DBF8E0C();
      v43 = v42;
    }

    else
    {
      v44 = *v41;
      v40[2] = v41[2];
      *v40 = v44;
    }

    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(a2, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v34 - 8) + 64));
    }

    else
    {
      v46 = sub_21DBF563C();
      (*(*(v46 - 8) + 16))(a1, a2, v46);
      *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
      (*(v33 + 56))(a1, 0, 1, v32);
    }

    v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_129;
  }

  *a1 = *a2;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v95 = a3[6];
  v96 = *(a1 + v95);
  v97 = *(a2 + v95);
  *(a1 + v95) = v97;
  v98 = v97;

  v99 = a3[7];
  v100 = (a1 + v99);
  v101 = (a2 + v99);
  v102 = *(a1 + v99 + 8);
  v103 = *(a2 + v99 + 8);
  if (v102)
  {
    if (v103)
    {
      *v100 = *v101;
      v100[1] = v101[1];
      sub_21DBF8E0C();

      v100[2] = v101[2];
      sub_21DBF8E0C();

      v100[3] = v101[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v100, &qword_27CE5A640);
      v104 = *(v101 + 1);
      *v100 = *v101;
      *(v100 + 1) = v104;
    }
  }

  else if (v103)
  {
    *v100 = *v101;
    v100[1] = v101[1];
    v100[2] = v101[2];
    v100[3] = v101[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v105 = *(v101 + 1);
    *v100 = *v101;
    *(v100 + 1) = v105;
  }

  v106 = a3[8];
  v107 = (a1 + v106);
  v108 = (a2 + v106);
  v109 = *(a1 + v106 + 8);
  v110 = *(a2 + v106 + 8);
  if (v109)
  {
    if (v110)
    {
      *v107 = *v108;
      v107[1] = v108[1];
      sub_21DBF8E0C();

      v107[2] = v108[2];
      sub_21DBF8E0C();

      v107[3] = v108[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v107, &qword_27CE5A640);
      v111 = *(v108 + 1);
      *v107 = *v108;
      *(v107 + 1) = v111;
    }
  }

  else if (v110)
  {
    *v107 = *v108;
    v107[1] = v108[1];
    v107[2] = v108[2];
    v107[3] = v108[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v112 = *(v108 + 1);
    *v107 = *v108;
    *(v107 + 1) = v112;
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

_BYTE *sub_21D790348(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v42] = *&a2[v42];
  v43 = a3[7];
  v44 = a3[8];
  v45 = &a1[v43];
  v46 = &a2[v43];
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v48 = &a1[v44];
  v49 = &a2[v44];
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  v51 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v51] = a2[v51];
  a1[a3[11]] = a2[a3[11]];
  return a1;
}

_BYTE *sub_21D791468(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D106DF8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v22 = *(v21 - 8);
          if ((*(v22 + 48))(a2, 1, v21))
          {
            v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v23 - 8) + 64));
          }

          else
          {
            v26 = sub_21DBF563C();
            (*(*(v26 - 8) + 32))(a1, a2, v26);
            a1[*(v21 + 20)] = a2[*(v21 + 20)];
            (*(v22 + 56))(a1, 0, 1, v21);
          }

          v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
          goto LABEL_88;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_33;
        }

        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v12 = *(v11 - 8);
          if ((*(v12 + 48))(a2, 1, v11))
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v13 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v28 = *(v11 + 20);
            v29 = sub_21DBF6C1C();
            (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
            (*(v12 + 56))(a1, 0, 1, v11);
          }

          v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v31 = &a1[v30];
          v32 = &a2[v30];
          *v31 = *v32;
          *(v31 + 2) = *(v32 + 2);
          goto LABEL_88;
        }

        goto LABEL_33;
      }

      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(&a2[v14], 1, v15))
      {
        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = &a1[v36];
            v38 = &a2[v36];
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            a1[v35[6]] = a2[v35[6]];
            a1[v35[7]] = a2[v35[7]];
            a1[v35[8]] = a2[v35[8]];
            a1[v35[9]] = a2[v35[9]];
            a1[v35[10]] = a2[v35[10]];
            *&a1[v35[11]] = *&a2[v35[11]];
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

LABEL_33:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(&a2[v14], 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(&a1[v14], 0, 1, v15);
          goto LABEL_88;
        }

LABEL_86:
        memcpy(&a1[v14], &a2[v14], *(v16 + 64));
        goto LABEL_87;
      }

      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(&a2[v14], 1, v15))
      {
        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

LABEL_30:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_88;
  }

LABEL_89:
  v42 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v43 = *&a1[v42];
  *&a1[v42] = *&a2[v42];

  v44 = a3[7];
  v45 = &a1[v44];
  v46 = &a2[v44];
  if (*&a1[v44 + 8])
  {
    v47 = v46[1];
    if (v47)
    {
      *v45 = *v46;
      v45[1] = v47;

      v45[2] = v46[2];

      v45[3] = v46[3];

      goto LABEL_94;
    }

    sub_21D0CF7E0(v45, &qword_27CE5A640);
  }

  v48 = *(v46 + 1);
  *v45 = *v46;
  *(v45 + 1) = v48;
LABEL_94:
  v49 = a3[8];
  v50 = &a1[v49];
  v51 = &a2[v49];
  if (!*&a1[v49 + 8])
  {
LABEL_98:
    v53 = *(v51 + 1);
    *v50 = *v51;
    *(v50 + 16) = v53;
    goto LABEL_99;
  }

  v52 = *(v51 + 1);
  if (!v52)
  {
    sub_21D0CF7E0(v50, &qword_27CE5A640);
    goto LABEL_98;
  }

  *v50 = *v51;
  *(v50 + 8) = v52;

  *(v50 + 16) = *(v51 + 2);

  *(v50 + 24) = *(v51 + 3);

LABEL_99:
  v54 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v54] = a2[v54];
  a1[a3[11]] = a2[a3[11]];
  return a1;
}

uint64_t sub_21D792690()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21D792744()
{
  result = qword_280D182B0;
  if (!qword_280D182B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D182B0);
  }

  return result;
}

void sub_21D792798()
{
  v1 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v0 + v7);

  sub_21D7898C4(v0 + v2, (v0 + v3), v6, v9, v10, v11);
}

uint64_t sub_21D79284C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  ObjectType = swift_getObjectType();
  v9 = v6;
  return TTRRemindersListEditingSession.setTitleWithOptionalUndo(_:locale:undoRegistration:canMarkHasSetTitle:)(v2, v3, v4, &v9, 1, ObjectType, v5);
}

uint64_t sub_21D7928D4(uint64_t a1)
{
  sub_21DBF56BC();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 80);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21D1B795C;

  return sub_21D78451C(v10, a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21D792A10(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v10 = *(v1 + 7);
  v9 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21D0F00D0;

  return sub_21D785554(v8, a1, v4, v5, v6, v7, v10, v9);
}

uint64_t sub_21D792AEC(uint64_t a1)
{
  v4 = *(sub_21DBF56BC() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21D1B795C;

  return sub_21D7890F4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_21D792C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_21D792C80()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 24));

  return v2;
}

uint64_t sub_21D792DF8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21D792E6C()
{
  v1 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21D77C0B0(v2);
}

uint64_t objectdestroy_48Tm()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
      }

      else if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_23;
      }

      v5 = *(v3 + 8);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 10)
    {
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_9:
      v5 = *v3;
LABEL_22:

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = sub_21DBF509C();
        (*(*(v6 - 8) + 8))(v0 + v2, v6);
        v7 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v8 = type metadata accessor for TTRRecurrenceEndModel(0);
        if (!(*(*(v8 - 8) + 48))(v7, 1, v8) && !swift_getEnumCaseMultiPayload())
        {
          v9 = sub_21DBF563C();
          (*(*(v9 - 8) + 8))(v7, v9);
        }

        type metadata accessor for TTRRecurrenceRuleModel(0);
      }
    }

    else
    {
      v10 = sub_21DBF509C();
      (*(*(v10 - 8) + 8))(v0 + v2, v10);
    }
  }

LABEL_23:
  v11 = *(v1 + 20);
  v12 = sub_21DBF79FC();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return swift_deallocObject();
}

uint64_t sub_21D793214(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_21D793298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D793310()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE618D8);
  v1 = __swift_project_value_buffer(v0, qword_27CE618D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D793428(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D793494(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

void sub_21D793534(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21D793594()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_21D7935E0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    v7 = 5;
    return sub_21D7953A8(&v7);
  }

  return result;
}

uint64_t sub_21D793650()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D793694(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = 5;
    return sub_21D7953A8(&v7);
  }

  return result;
}

void (*sub_21D793704(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D793798;
}

void sub_21D793798(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = 5;
    v7 = &v8;
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = 5;
    v7 = &v9;
  }

  sub_21D7953A8(v7);
LABEL_7:

  free(v2);
}

uint64_t sub_21D79381C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = type metadata accessor for TodaySectionsContext();
    result = swift_allocObject();
    v4 = &off_282ED19B0;
  }

  else
  {
    result = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v5;
  a1[4] = v4;
  return result;
}

uint64_t TTRShowTodayGroupsDataModelSource.__allocating_init(store:smartList:grouped:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, void *a2, char a3, char a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationSearchMinRadius) = 500;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationChangeSubscription) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store) = a1;
  swift_beginAccess();
  *(v12 + v13) = a2;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped) = a3;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_countCompleted) = a4;
  v14 = qword_280D1AA10;
  v15 = a1;
  v16 = a2;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(0, 0xFFu, v17, v18);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 18) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_tipKitContextInstance) = v20;
  v21 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v22 = sub_21DBF70DC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v12 + v21, a5, v22);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v12 + 16) = a6 & 1;
  swift_beginAccess();
  v19[3] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
  swift_unknownObjectWeakAssign();
  v25 = 10;

  sub_21D7953A8(&v25);

  (*(v23 + 8))(a5, v22);
  return v12;
}

uint64_t TTRShowTodayGroupsDataModelSource.init(store:smartList:grouped:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, void *a2, char a3, char a4, uint64_t a5, char a6)
{
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationSearchMinRadius) = 500;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationChangeSubscription) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store) = a1;
  swift_beginAccess();
  *(v6 + v13) = a2;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped) = a3;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_countCompleted) = a4;
  v14 = qword_280D1AA10;
  v15 = a1;
  v16 = a2;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(0, 0xFFu, v17, v18);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 18) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_tipKitContextInstance) = v20;
  v21 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v22 = sub_21DBF70DC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v6 + v21, a5, v22);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = a6 & 1;
  swift_beginAccess();
  v19[3] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
  swift_unknownObjectWeakAssign();
  v25 = 10;

  sub_21D7953A8(&v25);

  (*(v23 + 8))(a5, v22);
  return v6;
}

id sub_21D793E68@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
  v3 = type metadata accessor for TTRTipKitDataModelSourceBase();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D793EE0@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF71BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v33 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_showCompletedContextInstance);
  if (*(v15 + 40))
  {
    v16 = *MEMORY[0x277D45468];
    v17 = *(v6 + 104);
    v17(v10, v16, v5, v12);
    v18 = v14;
    v19 = v16;
  }

  else
  {
    swift_beginAccess();
    *v10 = *(v15 + 48);
    v17 = *(v6 + 104);
    (v17)(v10, *MEMORY[0x277D45480], v5);
    v34 = v1;
    v35 = v2;
    v20 = v3;
    v21 = *(v6 + 8);
    sub_21DBF8E0C();
    v21(v10, v5);
    v3 = v20;
    v1 = v34;
    v2 = v35;
    v19 = *MEMORY[0x277D45470];
    v18 = v14;
  }

  (v17)(v18, v19, v5);
  v22 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
  v23 = v36;
  (*(v6 + 16))(v36, v14, v5);
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v38;
  (*(v3 + 16))(v38, v25, v2);
  v27 = type metadata accessor for TTRShowTodayGroupsPrintingDataModelSource(0);
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  (*(v6 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted, v23, v5);
  (*(v3 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle, v26, v2);
  v29 = v37;
  v37[3] = v27;
  v29[4] = &protocol witness table for TTRShowTodayGroupsPrintingDataModelSource;
  *v29 = v28;
  v30 = *(v6 + 8);
  v31 = v22;
  return v30(v14, v5);
}

uint64_t TTRShowTodayGroupsPrintingDataModelSource.__allocating_init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21D79432C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v125 = sub_21DBF721C();
  v99 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v127 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_21DBF724C();
  v126 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v124 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60710);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v96 - v6;
  v130 = sub_21DBFB1AC();
  v102 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v101 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v128 = &v96 - v9;
  v106 = sub_21DBF729C();
  v107 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v100 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = (&v96 - v12);
  v13 = sub_21DBF563C();
  v122 = *(v13 - 8);
  v123 = v13;
  MEMORY[0x28223BE20](v13);
  v121 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618F0);
  MEMORY[0x28223BE20](v15 - 8);
  v120 = &v96 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618F8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v105 = &v96 - v17;
  v18 = sub_21DBF714C();
  v118 = *(v18 - 8);
  v119 = v18;
  MEMORY[0x28223BE20](v18);
  v117 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_21DBF734C();
  v20 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_21DBF70DC();
  v22 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21DBF738C();
  v109 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21DBF71BC();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v96 - v32;
  v108 = sub_21D8526E8((&v96 - v32));
  v34 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  (*(v22 + 16))(v24, v2 + v34, v111);
  v28[2](v30, v33, v27);
  (*(v20 + 104))(v112, *MEMORY[0x277D45500], v113);
  (*(v118 + 104))(v117, *MEMORY[0x277D45458], v119);
  v35 = v26;
  v36 = v120;
  sub_21DBF737C();
  swift_beginAccess();
  v37 = v121;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF736C();
  v112 = v27;
  v111 = v33;
  (*(v122 + 8))(v37, v123);
  v40 = v115;
  v41 = v116;
  (*(v115 + 56))(v36, 0, 1, v116);
  v42 = v105;
  (*(v40 + 32))(v105, v36, v41);
  v43 = v104;
  sub_21DBF76DC();
  v44 = sub_21DBF720C();
  v46 = v107 + 8;
  v45 = *(v107 + 8);
  v45(v43, v106);
  v47 = v40;
  v48 = v42;
  if (!v44)
  {

    (*(v40 + 8))(v42, v41);
    (*(v109 + 8))(v35, v114);
    result = (v28[1])(v111, v112);
    goto LABEL_2;
  }

  v49 = v41;
  v98 = v44;
  v107 = v46;
  v104 = v28;
  v50 = *MEMORY[0x277D44BC0];
  v51 = v103;
  sub_21DBFB1DC();
  v52 = sub_21DBFB1EC();
  v53 = *(v52 - 8);
  v54 = (*(v53 + 48))(v51, 1, v52);
  v55 = v114;
  v56 = v112;
  if (v54 == 1)
  {

    (*(v47 + 8))(v48, v49);
    (*(v109 + 8))(v35, v55);
    v104[1](v111, v56);
    result = sub_21D0CF7E0(v51, &qword_27CE60710);
LABEL_2:
    v39 = v110;
    v110[2] = 0u;
    v39[3] = 0u;
    *v39 = 0u;
    v39[1] = 0u;
    return result;
  }

  v97 = v35;
  v57 = v101;
  sub_21DBFB1CC();
  (*(v53 + 8))(v51, v52);
  v58 = v130;
  (*(v102 + 32))(v128, v57, v130);
  v59 = v100;
  sub_21DBF76DC();
  v60 = sub_21DBF728C();
  v45(v59, v106);
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = 0;
    v63 = v126;
    v123 = v126 + 16;
    v64 = (v99 + 88);
    LODWORD(v122) = *MEMORY[0x277D454B0];
    LODWORD(v121) = *MEMORY[0x277D45498];
    LODWORD(v120) = *MEMORY[0x277D454A0];
    LODWORD(v119) = *MEMORY[0x277D454C0];
    LODWORD(v118) = *MEMORY[0x277D454D0];
    LODWORD(v117) = *MEMORY[0x277D454C8];
    LODWORD(v113) = *MEMORY[0x277D454B8];
    v65 = (v126 + 8);
    v66 = MEMORY[0x277D84F90];
    LODWORD(v107) = *MEMORY[0x277D454A8];
    v67 = v127;
    v68 = v129;
    while (v62 < *(v60 + 16))
    {
      v70 = v124;
      (*(v63 + 16))(v124, v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62, v68);
      sub_21DBF722C();
      v71 = (*v64)(v67, v125);
      if (v71 == v122 || v71 == v121 || v71 == v120 || v71 == v119 || v71 == v118 || v71 == v117)
      {
        v77 = sub_21DBF723C();
      }

      else
      {
        v77 = MEMORY[0x277D84F90];
        if (v71 != v113 && v71 != v107)
        {
          goto LABEL_52;
        }
      }

      (*v65)(v70, v68);
      v78 = *(v77 + 16);
      v79 = v66[2];
      v80 = v79 + v78;
      if (__OFADD__(v79, v78))
      {
        goto LABEL_48;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v80 > v66[3] >> 1)
      {
        if (v79 <= v80)
        {
          v82 = v79 + v78;
        }

        else
        {
          v82 = v79;
        }

        v66 = sub_21D21145C(isUniquelyReferenced_nonNull_native, v82, 1, v66);
      }

      v68 = v129;
      v58 = v130;
      if (*(v77 + 16))
      {
        v83 = (v66[3] >> 1) - v66[2];
        sub_21DBF6D7C();
        if (v83 < v78)
        {
          goto LABEL_50;
        }

        swift_arrayInitWithCopy();

        v67 = v127;
        v68 = v129;
        v58 = v130;
        if (v78)
        {
          v84 = v66[2];
          v85 = __OFADD__(v84, v78);
          v86 = v84 + v78;
          if (v85)
          {
            goto LABEL_51;
          }

          v66[2] = v86;
        }
      }

      else
      {

        v67 = v127;
        if (v78)
        {
          goto LABEL_49;
        }
      }

      ++v62;
      v63 = v126;
      v69 = v128;
      if (v61 == v62)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    result = sub_21DBFC63C();
    __break(1u);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
    v69 = v128;
LABEL_46:

    v87 = v98;
    v88 = v98;
    v89 = sub_21DBFB18C();
    v90 = sub_21DBFB19C();
    v91 = sub_21DBFB17C();
    v93 = v92;

    (*(v102 + 8))(v69, v58);
    (*(v115 + 8))(v105, v116);
    (*(v109 + 8))(v97, v114);
    result = (v104[1])(v111, v112);
    v131 = 0;
    v94 = v110;
    v95 = v108;
    *v110 = v66;
    *(v94 + 1) = v95;
    *(v94 + 2) = v87;
    *(v94 + 24) = 0;
    *(v94 + 4) = v89;
    *(v94 + 20) = v90;
    *(v94 + 6) = v91;
    *(v94 + 7) = v93;
  }

  return result;
}

char *sub_21D795330()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TTRLocationChangeMonitor());
    v6 = TTRLocationChangeMonitor.init(changeRadius:)(25.0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_21D7953A8(unsigned __int8 *a1)
{
  v2 = v1;
  v84 = sub_21DBF70DC();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21DBF71BC();
  v78 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v76 - v10;
  v92 = sub_21DBF729C();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
  v17 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v80 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v85 = &v76 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - v22;
  MEMORY[0x28223BE20](v24);
  v89 = &v76 - v25;
  v86 = *a1;
  v26 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v27 = *(v2 + v26);
  v87 = v26;
  if (v27)
  {
    v28 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      ObjectType = swift_getObjectType();
      v93[0] = v86;
      (*(*(v29 + 8) + 16))(v93, ObjectType);
      swift_unknownObjectRelease();
    }

    v26 = v87;
    v31 = *(v2 + v87);
    if (v31)
    {
      v32 = *(*v31 + 96);
      swift_beginAccess();
      sub_21D0D3954(v31 + v32, v16, &qword_27CE5C310);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21D799A70(v16, v23);
        v75 = v85;
        sub_21D799A70(v23, v85);
        v40 = (v88 + 48);
        v34 = *(v75 + *(v88 + 48));
        v39 = v89;
        v79 = *(v91 + 32);
        v79(v89, v75, v92);
        v38 = v78;
        goto LABEL_13;
      }

      sub_21D0CF7E0(v16, &qword_27CE5C310);
      v26 = v87;
    }
  }

  v33 = sub_21DBF72DC();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  sub_21DBF727C();
  v34 = *(v2 + v26);
  if (v34)
  {
    v35 = *(*v34 + 104);
    swift_beginAccess();
    sub_21D0D3954(v34 + v35, v8, &qword_27CE5D440);
    v36 = v88;
    v37 = (*(v17 + 48))(v8, 1, v88);
    v38 = v78;
    if (v37 == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE5D440);
      v34 = 0;
    }

    else
    {
      v34 = *&v8[*(v36 + 48)];
      (*(v91 + 8))(v8, v92);
    }
  }

  else
  {
    v38 = v78;
    v36 = v88;
  }

  v39 = v89;
  v79 = *(v91 + 32);
  v79(v89, v13, v92);
  v40 = (v36 + 48);
LABEL_13:
  *(v39 + *v40) = v34;
  v41 = sub_21D795330();
  v42 = &v41[OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_lastResult];
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[8];
  sub_21D1B6F48(v43, v44);

  v45 = v90;
  if (v44 == 255)
  {
    v78 = 0;
  }

  else
  {
    if (v44)
    {
      v78 = 0;
    }

    else
    {
      sub_21D1B6F60(v43, 0);
      [v43 radius];
      if (v46 <= 500.0)
      {
        v46 = 500.0;
      }

      [v43 setRadius_];
      v78 = v43;
    }

    sub_21D1B7094(v43, v44);
  }

  v47 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v48 = *(v47 + 8), v49 = swift_getObjectType(), v50 = (*(*(v48 + 8) + 8))(v49), v52 = v51, swift_unknownObjectRelease(), (v52 & 1) != 0))
  {
    v50 = 30;
  }

  v77 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
  v53 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_grouped;
  swift_beginAccess();
  v54 = *(v2 + v53);
  v55 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_showCompletedContextInstance);
  v56 = *(v55 + 40) == 1;
  v57 = v81;
  v76 = v50;
  if (v56)
  {
    v38[13](v81, *MEMORY[0x277D45468], v45);
  }

  else
  {
    swift_beginAccess();
    *v57 = *(v55 + 48);
    v38[13](v57, *MEMORY[0x277D45480], v45);
    sub_21DBF8E0C();
  }

  v58 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_countCompleted);
  v59 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v60 = v83;
  v61 = v82;
  v62 = v84;
  (*(v83 + 16))(v82, v2 + v59, v84);
  type metadata accessor for TTRShowTodayGroupsMonitorableDataView(0);
  v63 = swift_allocObject();
  v64 = v77;
  *(v63 + 16) = v77;
  *(v63 + 24) = v54;
  v65 = v78;
  *(v63 + 32) = v78;
  (v38)[4]((v63 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted), v57, v90);
  *(v63 + 40) = v58;
  (*(v60 + 32))(v63 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle, v61, v62);
  *(v63 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_remindersToPrefetchCount) = v76;
  v66 = v89;
  v67 = v85;
  sub_21D0D3954(v89, v85, &qword_27CE5C318);
  v68 = *(v88 + 48);
  v69 = *(v67 + v68);
  v70 = v80;
  v79(v80, v67, v92);
  *(v70 + v68) = v69;
  v71 = v87;
  swift_beginAccess();
  v72 = v65;
  v73 = v64;
  sub_21D4FF544((v2 + v71), v70, v63, v2, v86);
  sub_21D0CF7E0(v70, &qword_27CE5C318);
  swift_endAccess();
  sub_21D795FD0();

  return sub_21D0CF7E0(v66, &qword_27CE5C318);
}

uint64_t TTRShowTodayGroupsMonitorableDataView.__allocating_init(store:grouped:currentLocation:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v15 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted;
  v16 = sub_21DBF71BC();
  (*(*(v16 - 8) + 32))(v14 + v15, a4, v16);
  *(v14 + 40) = a5;
  v17 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle;
  v18 = sub_21DBF70DC();
  (*(*(v18 - 8) + 32))(v14 + v17, a6, v18);
  *(v14 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_remindersToPrefetchCount) = a7;
  return v14;
}

void sub_21D795FD0()
{
  v1 = v0;
  v2 = sub_21DBFBA3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61908);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61910);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = sub_21D795330();
  TTRLocationChangeMonitor.startIfPossible()();

  if (!*(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationChangeSubscription))
  {
    v17 = *(v1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor);
    v35 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_locationChangeSubscription;
    v33 = v2;
    v39 = *(v17 + OBJC_IVAR____TtC15RemindersUICore24TTRLocationChangeMonitor_locationChange);
    v18 = objc_opt_self();
    v30 = v18;

    v28 = [v18 mainRunLoop];
    v38 = v28;
    v19 = sub_21DBFBA0C();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    v34 = v13;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61918);
    v27 = v5;
    v29 = v15;
    v31 = v3;
    sub_21D0D8CF0(0, &qword_280D17650);
    sub_21D0D0F1C(&qword_280D17968, &qword_27CE61918);
    v32 = v12;
    sub_21D0D65DC(&qword_280D17660, &qword_280D17650);
    sub_21DBF936C();
    sub_21D0CF7E0(v8, &qword_27CE5A0F0);

    v20 = v27;
    sub_21DBFBA1C();
    v21 = [v30 mainRunLoop];
    v39 = v21;
    sub_21D0D0F1C(&qword_280D179A8, &qword_27CE61908);
    v22 = v29;
    v23 = v37;
    sub_21DBF939C();

    (*(v31 + 8))(v20, v33);
    (*(v36 + 8))(v11, v23);
    swift_allocObject();
    swift_weakInit();
    sub_21D0D0F1C(&qword_280D179C0, &qword_27CE61910);
    v24 = v32;
    v25 = sub_21DBF93CC();

    (*(v34 + 8))(v22, v24);
    *(v1 + v35) = v25;
  }
}

uint64_t sub_21D79651C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = 4;
    sub_21D7953A8(&v1);
  }

  return result;
}

void sub_21D7965C4()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource____lazy_storage___locationMonitor);
}

uint64_t TTRShowTodayGroupsDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowTodayGroupsDataModelSource.__deallocating_deinit()
{
  TTRShowTodayGroupsDataModelSource.deinit();

  return swift_deallocClassInstance();
}

void (*sub_21D7967B4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_21D793704(v2);
  return sub_21D25A3E8;
}

Swift::Void __swiftcall TTRShowTodayGroupsDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21D7953A8(&v2);
}

uint64_t sub_21D7968B0(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21D7953A8(&v3);
}

uint64_t TTRShowTodayGroupsDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowTodayGroupsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  v18 = sub_21DBF729C();
  v19 = *(v18 - 8);
  v76 = v18;
  v77 = v19;
  (*(v19 + 16))(v17, a2);
  *&v17[*(v9 + 48)] = a3;
  v20 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v21 = *(v4 + v20);
  if (!v21)
  {
    v30 = a3;
    return sub_21D0CF7E0(v17, &qword_27CE5C318);
  }

  v22 = a3;
  if (v21 != a1)
  {
    return sub_21D0CF7E0(v17, &qword_27CE5C318);
  }

  v75 = v9;
  v72 = v11;
  v74 = v4;
  v23 = v22;
  v73 = a4;
  v24 = sub_21DBF6E3C();
  sub_21D4F5F28(v24);
  v26 = v25;

  if (a3)
  {
    v27 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v28 = v74;
    swift_beginAccess();
    if (*(v28 + v27))
    {
      v29 = v23;

      sub_21D4F9F64(v29, v26);
    }

    else
    {
      v31 = v17;
      v32 = *(v28 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900);
      v33 = v23;
      v34 = sub_21DBFB12C();
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      v36 = v32;
      v17 = v31;
      v37 = sub_21D87E81C(v36, sub_21D1947D8, v35, v33, v34);
      *(v28 + v27) = v37;

      swift_beginAccess();
      v37[3] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
  }

  v38 = v77;
  sub_21D0D3954(v17, v14, &qword_27CE5C318);

  v39 = sub_21DBF726C();
  v42 = *(v38 + 8);
  v40 = v38 + 8;
  v41 = v42;
  v42(v14, v76);
  if (!(v39 >> 62))
  {
    v43 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_11;
    }

LABEL_30:

    v52 = v73;
    v53 = v74;
LABEL_31:
    v60 = v72;
    sub_21D0D3954(v17, v72, &qword_27CE5C318);

    v61 = sub_21DBF720C();
    v41(v60, v76);
    v62 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
    swift_beginAccess();
    v63 = *(v53 + v62);
    *(v53 + v62) = v61;

    v78 = 0;
    v79 = 0xE000000000000000;
    sub_21DBFBEEC();
    v78 = *v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF0);
    v64 = sub_21DBFA1AC();
    v66 = v65;

    v78 = v64;
    v79 = v66;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v67 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v67);
    *(&v69 - 4) = v53;
    *(&v69 - 3) = v17;
    *(&v69 - 2) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    return sub_21D0CF7E0(v17, &qword_27CE5C318);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_30;
  }

  v43 = sub_21DBFBD7C();
  if (!v43)
  {
    v70 = v41;
    v77 = v40;
    v71 = v17;

    v45 = MEMORY[0x277D84F90];
LABEL_20:
    v17 = v71;
    v52 = v73;
    v53 = v74;
    if (*(v45 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
      v54 = sub_21DBFC40C();
    }

    else
    {
      v54 = MEMORY[0x277D84F98];
    }

    v80[0] = v54;
    v55 = sub_21DBF8E0C();
    sub_21D1931C0(v55, 1, v80);

    v56 = v80[0];
    v57 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v53 + v57))
    {

      sub_21D188810(v56);
      v59 = v58;

      TTRBatchFetchManager<A>.override(objects:)(v59);
    }

    else
    {
    }

    v41 = v70;
    goto LABEL_31;
  }

LABEL_11:
  v70 = v41;
  v77 = v40;
  v71 = v17;
  v80[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v80[0];
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x223D44740](v44, v39);
      }

      else
      {
        v46 = *(v39 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = [v46 objectID];
      v80[0] = v45;
      v50 = *(v45 + 16);
      v49 = *(v45 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_21D18E6B8((v49 > 1), v50 + 1, 1);
        v45 = v80[0];
      }

      ++v44;
      *(v45 + 16) = v50 + 1;
      v51 = v45 + 16 * v50;
      *(v51 + 32) = v48;
      *(v51 + 40) = v47;
    }

    while (v43 != v44);

    goto LABEL_20;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D79710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D7971D8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D797254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318) + 48));

  return TTRShowTodayGroupsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowTodayGroupsDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF0);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21D7973F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowTodayGroupsDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56C90 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE618D8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x7961646F74, 0xE500000000000000, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowTodayGroupsDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowTodayGroupsPrintingDataModelSource.init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v7 = sub_21DBF71BC();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  v8 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle;
  v9 = sub_21DBF70DC();
  (*(*(v9 - 8) + 32))(v3 + v8, a3, v9);
  return v3;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowTodayGroupsPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v58 = retstr;
  v55 = sub_21DBF729C();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21DBF563C();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618F8);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - v5;
  v7 = sub_21DBF714C();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF734C();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF71BC();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF738C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56C90 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_27CE618D8);
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAEDC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v52 = v13;
    v23 = v18;
    v24 = v16;
    v25 = v11;
    v26 = v15;
    v27 = v6;
    v28 = v22;
    *v22 = 0;
    _os_log_impl(&dword_21D0C9000, v20, v21, "PrintingDataModelSource: fetch Today tree", v22, 2u);
    v29 = v28;
    v6 = v27;
    v15 = v26;
    v11 = v25;
    v16 = v24;
    v18 = v23;
    v13 = v52;
    MEMORY[0x223D46520](v29, -1, -1);
  }

  v87 = v15;

  v30 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v31 = v70;
  (*(v59 + 16))(v60, &v70[OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle], v13);
  (*(v61 + 16))(v62, &v31[v30], v11);
  (*(v63 + 104))(v65, *MEMORY[0x277D45500], v64);
  (*(v67 + 104))(v66, *MEMORY[0x277D45460], v68);
  sub_21DBF737C();
  v32 = v69;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v33 = v73;
  sub_21DBF736C();
  if (v33)
  {
    (*(v71 + 8))(v32, v72);
    (*(v16 + 8))(v18, v87);
  }

  else
  {
    v70 = v18;
    v73 = v16;
    (*(v71 + 8))(v32, v72);
    sub_21D6EEF24(v78);
    v34 = v54;
    v35 = v57;
    v72 = v6;
    sub_21DBF76DC();
    v36 = sub_21DBF725C();
    (*(v53 + 8))(v34, v55);
    v84 = v78[4];
    v85 = v78[5];
    *v86 = v79[0];
    *&v86[10] = *(v79 + 10);
    v80 = v78[0];
    v81 = v78[1];
    v82 = v78[2];
    v83 = v78[3];
    v37 = REMSmartListType.title.getter();
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0;
    }

    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v41 = REMSmartListType.color.getter();
    if (!v41)
    {
      if (qword_280D1BAC0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v74 = xmmword_280D1BAC8;
      v75 = xmmword_280D1BAD8;
      v76 = xmmword_280D1BAE8;
      v77 = byte_280D1BAF8;
      v41 = TTRListColors.Color.nativeColor.getter();
    }

    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589D0);
    v43 = swift_allocObject();
    v44 = v84;
    v45 = *v86;
    v46 = *&v86[16];
    *(v43 + 112) = v85;
    *(v43 + 128) = v45;
    *(v43 + 144) = v46;
    v47 = v80;
    v48 = v81;
    *(v43 + 16) = xmmword_21DC08D00;
    *(v43 + 32) = v47;
    v49 = v82;
    v50 = v83;
    *(v43 + 48) = v48;
    *(v43 + 64) = v49;
    *(v43 + 80) = v50;
    *(v43 + 96) = v44;
    *(v43 + 160) = v36;
    (*(v56 + 8))(v72, v35);
    (*(v73 + 8))(v70, v87);
    v51 = v58;
    v58->listName._countAndFlagsBits = v39;
    v51->listName._object = v40;
    v51->listColor.super.isa = v42;
    v51->count.value = 0;
    v51->count.is_nil = 1;
    v51->sections._rawValue = v43;
    v51->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
  }
}

uint64_t TTRShowTodayGroupsPrintingDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRShowTodayGroupsPrintingDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore41TTRShowTodayGroupsPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t TTRShowTodayGroupsMonitorableDataView.init(store:grouped:currentLocation:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted;
  v13 = sub_21DBF71BC();
  (*(*(v13 - 8) + 32))(v7 + v12, a4, v13);
  *(v7 + 40) = a5;
  v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle;
  v15 = sub_21DBF70DC();
  (*(*(v15 - 8) + 32))(v7 + v14, a6, v15);
  *(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_remindersToPrefetchCount) = a7;
  return v7;
}

id TTRShowTodayGroupsMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v74) = a4;
  v56 = a1;
  v57 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61900);
  MEMORY[0x28223BE20](v53);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v50 - v6;
  v7 = sub_21DBF563C();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618F8);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v66 = &v50 - v9;
  v10 = sub_21DBF714C();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF71BC();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21DBF70DC();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF738C();
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x28223BE20](v17);
  v73 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF734C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v50 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v50 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  sub_21DBFC83C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE5D440);
    if (v74)
    {
      v74 = *(v75 + 16);
      v58 = 0;
      v30 = MEMORY[0x277D45508];
      v31 = v19;
      goto LABEL_11;
    }

    v34 = 0;
    goto LABEL_9;
  }

  v32 = *&v28[*(v29 + 48)];
  v33 = sub_21DBF729C();
  (*(*(v33 - 8) + 8))(v28, v33);
  if ((v74 & 1) == 0)
  {
    v34 = v32;
LABEL_9:
    v31 = v19;
    v74 = [*(v75 + 16) nonUserInteractiveStore];
    goto LABEL_10;
  }

  v74 = *(v75 + 16);
  v31 = v19;
  if (v32)
  {
    v34 = v32;
LABEL_10:
    v58 = v34;
    v30 = MEMORY[0x277D454F8];
    goto LABEL_11;
  }

  v58 = 0;
  v30 = MEMORY[0x277D45508];
LABEL_11:
  v35 = v75;
  *v25 = *(v75 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_remindersToPrefetchCount);
  (*(v20 + 104))(v25, *v30, v31);
  (*(v14 + 16))(v16, v35 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle, v59);
  (*(v61 + 16))(v60, v35 + OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted, v62);
  v61 = v20;
  v62 = v25;
  (*(v20 + 16))(v22, v25, v31);
  (*(v64 + 104))(v63, *MEMORY[0x277D45460], v65);
  v36 = v73;
  sub_21DBF737C();
  v37 = v69;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v38 = v31;
  v39 = v66;
  v40 = v74;
  v41 = v58;
  v42 = v72;
  sub_21DBF736C();
  if (v42)
  {

    (*(v70 + 8))(v37, v71);
    (*(v67 + 8))(v36, v68);
  }

  else
  {
    (*(v70 + 8))(v37, v71);
    v74 = v40;
    v43 = v53;
    v44 = *(v53 + 48);
    v45 = v55;
    v46 = v51;
    sub_21DBF76DC();
    *(v45 + v44) = sub_21DBF76BC();
    v47 = v54;
    sub_21D0D3954(v45, v54, &qword_27CE61900);
    v40 = *(v47 + *(v43 + 48));
    v48 = sub_21DBF729C();
    (*(*(v48 - 8) + 32))(v56, v47, v48);
    sub_21DBF76CC();

    sub_21D0CF7E0(v45, &qword_27CE61900);
    (*(v52 + 8))(v39, v46);
    (*(v67 + 8))(v73, v68);
  }

  (*(v61 + 8))(v62, v38);
  return v40;
}

uint64_t TTRShowTodayGroupsMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted;
  v4 = sub_21DBF71BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRShowTodayGroupsMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowTodayGroupsMonitorableDataView_showCompleted;
  v4 = sub_21DBF71BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21D798CA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowTodayGroupsMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

uint64_t sub_21D798D1C(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF729C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  v35 = v1;
  v18 = *(v1 + v16);
  if (v18)
  {
    v32 = v3;
    v33 = v2;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v7, &qword_27CE5C310);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C310);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
    if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5D440);
    }

    else
    {

      v21 = *(v38 + 32);
      v22 = v36;
      v21(v12, v10, v36);
      v21(v15, v12, v22);
      v41 = v34;
      swift_getKeyPath();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
      sub_21D0D0F1C(&qword_27CE589E8, &qword_27CE5DF80);
      sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
      v23 = sub_21DBFA46C();

      v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v25 = v35;
      swift_beginAccess();
      if (*(v25 + v24))
      {

        TTRBatchFetchManager<A>.override(objects:)(v23);
      }

      v26 = sub_21D183AA0(v23);

      sub_21D19ED38(v26);

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF0);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v25;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      return (*(v38 + 8))(v15, v22);
    }
  }

  return result;
}

void sub_21D7993C8(void *a1)
{
  if (qword_27CE56C90 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE618D8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x7961646F74, 0xE500000000000000, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowTodayGroupsDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D799924()
{
  result = sub_21DBF70DC();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21D799A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRReminderDetailViewModel.DueDateState.timeZoneDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D799E6C(v2, v13, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v15 = *(v14 - 1);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
  }

  sub_21D799ED4(v2, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v17 = &v13[v14[12]];
  v32 = *v17;
  v31 = v17[8];
  v30 = *(v17 + 1);
  v18 = *(v17 + 4);
  v28 = *(v17 + 5);
  v29 = v18;
  v19 = a1;
  v20 = v14[16];
  LODWORD(v18) = v13[v14[20]];
  v33 = v13[v14[24]];
  v34 = v18;
  sub_21D7A959C(v13, v10, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
  sub_21D0D523C(&v13[v20], v7, &unk_27CE628E0);
  v21 = &v10[*(v8 + 48)];

  *v21 = v19;
  *(v21 + 1) = a2;
  v22 = v2 + v14[12];
  v23 = v14[16];
  v24 = v14[20];
  v25 = v14[24];
  sub_21D799E6C(v10, v2, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
  *v22 = v32;
  *(v22 + 8) = v31;
  *(v22 + 16) = v30;
  v26 = v28;
  *(v22 + 32) = v29;
  *(v22 + 40) = v26;
  sub_21D0D523C(v7, v2 + v23, &unk_27CE628E0);
  v27 = v33;
  *(v2 + v24) = v34;
  *(v2 + v25) = v27;
  (*(v15 + 56))(v2, 0, 1, v14);
  return sub_21D799ED4(v10, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
}

uint64_t sub_21D799E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D799ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D799F34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, void **a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v289) = a7;
  v278 = a4;
  v314 = a2;
  v296 = a8;
  v355 = *MEMORY[0x277D85DE8];
  v12 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v12 - 8);
  v315 = v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v288 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v288);
  v304 = v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v276 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v18 - 8);
  v290 = v276 - v19;
  v318 = sub_21DBF509C();
  v316 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v286 = v276 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v312 = v276 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v23 - 8);
  v292 = v276 - v24;
  v25 = sub_21DBF5C4C();
  v308 = *(v25 - 8);
  v309 = v25;
  MEMORY[0x28223BE20](v25);
  v280 = v276 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v306 = v276 - v28;
  v311 = sub_21DBF563C();
  v307 = *(v311 - 8);
  MEMORY[0x28223BE20](v311);
  v30 = v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v323 = v276 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v33 - 8);
  *&v287 = v276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v291 = v276 - v36;
  MEMORY[0x28223BE20](v37);
  v317 = v276 - v38;
  MEMORY[0x28223BE20](v39);
  v305 = v276 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = v276 - v42;
  v44 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v44 - 8);
  v321 = v276 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v46);
  v313 = v276 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v322 = (v276 - v49);
  v50 = *a5;
  v300 = a5[1];
  v301 = v50;
  v299 = *(a5 + 4);
  v298 = *(a5 + 40);
  v51 = *a6;
  v302 = a3;
  sub_21D0D3954(a3, &v345, &qword_27CE61948);
  v303 = v17;
  v279 = v30;
  if (*(&v346 + 1))
  {
    sub_21D0D0FD0(&v345, v352);
  }

  else
  {
    v353 = &type metadata for TTRReminderDetailViewModel.PresenterStateDontCare;
    v354 = &off_282ED2868;
    v52 = swift_allocObject();
    v352[0] = v52;
    *(v52 + 16) = 768;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    *(v52 + 40) = 2;
  }

  v53 = sub_21D0D8CF0(0, &qword_280D17770);
  *&v339 = &protocol witness table for REMReminderChangeItem;
  *(&v338 + 1) = v53;
  *&v337 = a1;
  *&v324 = 3;
  v54 = a1;
  TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v337, &v324, &v345);
  v55 = v345;
  v297 = v346;
  v319 = v347;
  v320 = *(&v346 + 1);
  v56 = [v54 objectID];
  v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v59 = v322;
  (*(*(v58 - 8) + 56))(v322 + v57, 1, 1, v58);
  *v59 = v56;
  swift_storeEnumTagMultiPayload();
  if (v55)
  {
    v60 = v55;
  }

  else
  {
    v60 = [v54 title];
    if (!v60)
    {
      v60 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v295 = v60;
  v61 = v51;
  if (*(&v55 + 1))
  {
    v62 = v55;
    v63 = *(&v55 + 1);
  }

  else
  {
    v64 = v55;
    v63 = [v54 notes];
    if (!v63)
    {
      v63 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v65 = &selRef__setContentViewMarginType_;
  v66 = &selRef__setContentViewMarginType_;
  v294 = v55;
  v293 = v63;
  if (v61)
  {
    if (v61 != 1)
    {
      v75 = *(&v55 + 1);
      sub_21D568328(v61);
      v74 = v317;
      v73 = v318;
      goto LABEL_24;
    }

    v67 = *(&v55 + 1);
    v68 = [v54 effectiveDisplayDateComponents_forCalendar];
    if (v68)
    {
      v69 = v68;
      sub_21DBF4EFC();

      v70 = 0;
    }

    else
    {
      v70 = 1;
    }

    v76 = v318;
    v77 = v316;
    (*(v316 + 56))(v43, v70, 1, v318);
    v78 = v287;
    sub_21D0D3954(v43, v287, &qword_27CE58D60);
    if ((*(v77 + 48))(v78, 1, v76) == 1)
    {
      sub_21D0CF7E0(v43, &qword_27CE58D60);
LABEL_26:
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
      (*(*(v92 - 8) + 56))(v321, 1, 1, v92);
      LODWORD(v292) = 0;
      LODWORD(v93) = 0;
      v94 = 0;
      while (1)
      {
        v183 = [v54 v65[73]];
        v184 = [v183 supportsLocation];

        if (!v184)
        {
          v283 = 0;
          v284 = 0;
          LODWORD(v282) = 128;
          v285 = 2;
          v286 = 0;
          goto LABEL_88;
        }

        v185 = sub_21D7A5EB4();
        if (v185 >> 62)
        {
          v193 = v185;
          v194 = sub_21DBFBD7C();
          v185 = v193;
          if (!v194)
          {
LABEL_76:

            goto LABEL_77;
          }
        }

        else if (!*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        if ((v185 & 0xC000000000000001) != 0)
        {
          v186 = MEMORY[0x223D44740](0);
        }

        else
        {
          if (!*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_85;
          }

          v186 = *(v185 + 32);
        }

        v187 = v186;

        v188 = [v187 structuredLocation];
        v189 = [v188 displayName];

        if (v189)
        {
          v285 = sub_21DBFA16C();
          v286 = v190;

          v191 = [v187 structuredLocation];
          v284 = _sSo21REMStructuredLocationC15RemindersUICoreE8clRegionSo010CLCircularF0Cvg_0();
          v283 = [v187 proximity];

          v192 = v278 & 1;
          goto LABEL_87;
        }

LABEL_77:
        v185 = sub_21D7A5EB4();
        if (!(v185 >> 62))
        {
          if (!*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          goto LABEL_79;
        }

LABEL_85:
        v198 = v185;
        v199 = sub_21DBFBD7C();
        v185 = v198;
        if (!v199)
        {
LABEL_86:

          v200 = v353;
          v201 = v354;
          __swift_project_boxed_opaque_existential_1(v352, v353);
          v202 = (v201[1])(v200, v201);
          v283 = 0;
          v284 = 0;
          v285 = (v202 & 1) == 0;
          v286 = 0;
          v192 = 128;
          goto LABEL_87;
        }

LABEL_79:
        if ((v185 & 0xC000000000000001) != 0)
        {
          goto LABEL_123;
        }

        if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v195 = *(v185 + 32);
          goto LABEL_82;
        }

        __break(1u);
LABEL_125:
        swift_once();
LABEL_60:
        v151 = sub_21DBF516C();
        v153 = v152;
        v154 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
        v155 = v303;
        v116 = v311;
        v277(v303 + *(v154 + 20), 1, 1, v311);
        *v155 = v151;
        v155[1] = v153;
        (*(*(v154 - 8) + 56))(v155, 0, 1, v154);
LABEL_61:
        v94 = v318;
LABEL_62:
        v156 = v304;
        (v285)(v304, v323, v116);
        v157 = v288;
        (*(v316 + 16))(v156 + *(v288 + 24), v312, v94);
        v158 = v353;
        v159 = v354;
        __swift_project_boxed_opaque_existential_1(v352, v353);
        (v159[5])(&v345, v158, v159);
        v286 = *(&v345 + 1);
        v160 = v345;
        LODWORD(v285) = v346;
        v161 = v310;
        v162 = [v310 accountCapabilities];
        LOBYTE(v158) = [v162 supportsCloudKitSync];

        v163 = v353;
        v164 = v354;
        __swift_project_boxed_opaque_existential_1(v352, v353);
        LOBYTE(v163) = (v164[4])(v163, v164);
        v165 = v353;
        v166 = v354;
        __swift_project_boxed_opaque_existential_1(v352, v353);
        (v166[2])(&v337, v165, v166);
        *(v156 + v157[5]) = v287;
        *(v156 + v157[7]) = v289 & 1;
        v167 = v156 + v157[8];
        v168 = v286;
        *v167 = v160;
        *(v167 + 8) = v168;
        *(v167 + 16) = v285;
        *(v156 + v157[9]) = v158;
        LOBYTE(v167) = v337;
        *(v156 + v157[10]) = v163 & 1;
        *(v156 + v157[11]) = v167;
        v169 = (v156 + v157[12]);
        *v169 = 0;
        v169[1] = 0;
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
        v171 = v321;
        v172 = v321 + v170[12];
        v173 = v170[16];
        v93 = v170[20];
        v174 = v170[24];
        sub_21D799E6C(v156, v321, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        *v172 = v292;
        *(v172 + 8) = v281;
        v175 = v290;
        *(v172 + 16) = v282;
        *(v172 + 24) = v175;
        v176 = v283;
        *(v172 + 32) = v284;
        *(v172 + 40) = v176;
        v177 = v303;
        sub_21D0D3954(v303, v171 + v173, &unk_27CE628E0);
        v178 = v353;
        v179 = v354;
        __swift_project_boxed_opaque_existential_1(v352, v353);
        v93[v171] = (v179[3])(v178, v179) & 1;
        *(v171 + v174) = [v161 prefersUrgentPresentationStyleForDateAlarms];
        v180 = v171;
        v54 = v161;
        (*(*(v170 - 1) + 56))(v180, 0, 1, v170);
        LODWORD(v93) = [v161 isOverdue];
        v66 = &selRef__setContentViewMarginType_;
        v181 = [v161 isCompleted];
        v182 = 0;
        if ((v181 & 1) == 0)
        {
          v182 = [v161 isOverdue];
        }

        LODWORD(v292) = v182;
        v94 = v317;

        sub_21D799ED4(v304, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        sub_21D0CF7E0(v177, &unk_27CE628E0);
        (*(v316 + 8))(v312, v318);
        (*(v308 + 8))(v306, v309);
        sub_21D0CF7E0(v305, &qword_27CE58D60);
        (*(v307 + 8))(v323, v311);

        v65 = &selRef__setContentViewMarginType_;
      }
    }

    v79 = v286;
    (*(v77 + 32))(v286, v78, v76);
    v80 = objc_allocWithZone(MEMORY[0x277D44600]);
    v81 = sub_21DBF4EDC();
    sub_21D0D8CF0(0, &qword_280D17670);
    v82 = sub_21DBFA5DC();
    v83 = [v80 initWithDueDateComponents:v81 alarms:v82];

    v73 = v76;
    v84 = v79;
    v66 = &selRef__setContentViewMarginType_;
    (*(v77 + 8))(v84, v76);
    sub_21D0CF7E0(v43, &qword_27CE58D60);
    v72 = v83;
    v74 = v317;
    if (!v83)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v71 = *(&v55 + 1);
    v72 = [v54 displayDate];
    v73 = v318;
    v74 = v317;
    if (!v72)
    {
      goto LABEL_26;
    }
  }

  v61 = v72;
LABEL_24:
  v85 = [v61 dateByAdjustingFloatingDateForDefaultTimeZone];
  sub_21DBF55FC();

  v86 = [v61 isAllDay];
  v87 = [v54 dueDateComponents];
  v88 = v316;
  v89 = v306;
  if (v87)
  {
    v90 = v87;
    sub_21DBF4EFC();

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  (*(v88 + 56))(v74, v91, 1, v73);
  v95 = v74;
  v96 = v305;
  sub_21D0D523C(v95, v305, &qword_27CE58D60);
  v97 = v96;
  v98 = v291;
  sub_21D0D3954(v97, v291, &qword_27CE58D60);
  if ((*(v88 + 48))(v98, 1, v73) == 1)
  {
    sub_21D0CF7E0(v98, &qword_27CE58D60);
    v100 = v308;
    v99 = v309;
    v101 = v292;
    (*(v308 + 56))(v292, 1, 1, v309);
  }

  else
  {
    v102 = v98;
    v101 = v292;
    sub_21DBF507C();
    (*(v88 + 8))(v102, v73);
    v100 = v308;
    v99 = v309;
    if ((*(v308 + 48))(v101, 1, v309) != 1)
    {
      (*(v100 + 32))(v89, v101, v99);
      goto LABEL_34;
    }
  }

  v103 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if ((*(v100 + 48))(v101, 1, v99) != 1)
  {
    sub_21D0CF7E0(v101, &unk_27CE60DB0);
  }

LABEL_34:
  v104 = objc_opt_self();
  v105 = sub_21DBF55BC();
  v106 = sub_21DBF5C0C();
  LODWORD(v287) = v86;
  v107 = [v104 rem:v105 dateComponentsWithDate:v106 timeZone:v86 isAllDay:?];

  sub_21DBF4EFC();
  v66 = objc_opt_self();
  v108 = [v54 recurrenceRules];
  v109 = sub_21DBF55BC();
  v110 = sub_21DBF5C0C();
  *&v345 = 0;
  v292 = [(SEL *)v66 repeatTypeForRecurrenceRules:v108 recurrenceDate:v109 recurrenceTimeZone:v110 getRepeatEnd:&v345];

  v276[1] = v345;
  v291 = v345;
  v111 = [v54 recurrenceRules];
  v310 = v54;
  v317 = v61;
  if (v111)
  {
    v112 = v111;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v113 = sub_21DBFA5EC();
  }

  else
  {
    v113 = 0;
  }

  v114 = v307;
  v115 = v290;
  v116 = v311;
  v285 = *(v307 + 16);
  v286 = v307 + 16;
  (v285)(v290, v323, v311);
  v117 = *(v114 + 56);
  v65 = (v114 + 56);
  v277 = v117;
  v117(v115, 0, 1, v116);
  v54 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v113, v115);
  v93 = v118;

  sub_21D0CF7E0(v115, &qword_27CE58D68);
  v119 = v292;
  v290 = v93;
  if (!v93)
  {
    if (v292 == 11)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v54 = sub_21DBF516C();
      v290 = v120;
    }

    else
    {
      v121 = [(SEL *)v66 localizedDescriptionForRepeatType:v292];
      v54 = sub_21DBFA16C();
      v290 = v122;
    }
  }

  v123 = [v310 recurrenceRules];
  if (!v123)
  {
    v283 = 0xE000000000000000;
    v284 = 0;
    v94 = v318;
    goto LABEL_53;
  }

  v124 = v123;
  sub_21D0D8CF0(0, &qword_280D177E8);
  v125 = sub_21DBFA5EC();

  if (!(v125 >> 62))
  {
    v94 = v318;
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  v133 = sub_21DBFBD7C();
  v94 = v318;
  if (!v133)
  {
LABEL_52:

    v283 = 0xE000000000000000;
    v284 = 0;
LABEL_53:
    v134 = [v310 accountCapabilities];
    v135 = [v134 supportsHourlyRecurrence];

    v282 = v54;
    v281 = v135;
    if (!v119)
    {
      v150 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      (*(*(v150 - 8) + 56))(v303, 1, 1, v150);
      goto LABEL_62;
    }

    v136 = v291;
    if (v291)
    {
      v137 = v279;
      sub_21DBF55FC();
      v138 = qword_280D1BAA8;
      v139 = v136;
      if (v138 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v140 = [objc_opt_self() defaultTimeZone];
      v141 = v280;
      sub_21DBF5C2C();

      v142 = sub_21D7A5CB4();
      v144 = v143;

      (*(v308 + 8))(v141, v309);
      v145 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v146 = *(v145 + 20);
      v147 = v303;
      v148 = v311;
      (*(v307 + 32))(v303 + v146, v137, v311);
      v149 = v147 + v146;
      v116 = v148;
      v277(v149, 0, 1, v148);
      *v147 = v142;
      v147[1] = v144;
      (*(*(v145 - 8) + 56))(v147, 0, 1, v145);
      goto LABEL_61;
    }

    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_125;
  }

LABEL_46:
  if ((v125 & 0xC000000000000001) != 0)
  {
    v126 = MEMORY[0x223D44740](0, v125);
    goto LABEL_49;
  }

  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v126 = *(v125 + 32);
LABEL_49:
    v127 = v126;

    v128 = sub_21DBF55BC();
    v129 = sub_21DBF5C0C();
    v130 = [(SEL *)v66 shortNaturalLanguageDescriptionForRecurrenceRule:v127 date:v128 timeZone:v129 lowercase:0];

    v131 = sub_21DBFA16C();
    v283 = v132;
    v284 = v131;

    v94 = v318;
    goto LABEL_53;
  }

  __break(1u);
LABEL_123:
  v195 = MEMORY[0x223D44740](0);
LABEL_82:
  v196 = v195;

  v285 = _s15RemindersUICore21TTRLocalizableStringsO14LocationPickerO16vehicleEventTextySSSo022REMAlarmVehicleTriggerH0VFZ_0([v196 event]);
  v286 = v197;

  v283 = 0;
  v284 = 0;
  v192 = 64;
LABEL_87:
  LODWORD(v282) = v192;
LABEL_88:
  sub_21D7A9558(&v345);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v203 = [v54 flaggedContext];
  LODWORD(v323) = v93;
  if (v203)
  {
    v204 = v203;
    v205 = [v203 flagged];

    v206 = v205 > 0;
  }

  else
  {
    v206 = 2;
  }

  LODWORD(v318) = v206;
  v207 = [v54 objectID];
  v208 = [v207 entityName];

  v209 = sub_21DBFA16C();
  v211 = v210;

  v212 = [objc_opt_self() cdEntityNameForSavedReminder];
  v213 = sub_21DBFA16C();
  v215 = v214;

  if (v209 == v213 && v211 == v215)
  {

    v216 = 0;
  }

  else
  {
    v217 = sub_21DBFC64C();

    v216 = 0;
    if ((v217 & 1) == 0)
    {
      v216 = [v54 isSubtask] ^ 1;
    }
  }

  LODWORD(v316) = v216;
  v218 = [v54 subtaskContext];
  v219 = v218;
  if (v218)
  {
  }

  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  (*(*(v220 - 8) + 56))(v315, 1, 1, v220);
  sub_21D0D3954(v314, &v342, &qword_27CE59DC0);
  if (v343)
  {
    sub_21D0D0FD0(&v342, v344);
  }

  else
  {
    v221 = [v54 listChangeItem];
    v222 = v221;
    if (v221)
    {
      v221 = sub_21D0D8CF0(0, &unk_280D177F0);
      v223 = &protocol witness table for REMListChangeItem;
    }

    else
    {
      v223 = 0;
      v344[2] = 0;
      v344[1] = 0;
    }

    v344[0] = v222;
    v344[3] = v221;
    v344[4] = v223;
    if (v343)
    {
      sub_21D0CF7E0(&v342, &qword_27CE59DC0);
    }
  }

  sub_21D0D3954(v344, &v334, &qword_27CE59DC0);
  if (v335)
  {
    sub_21D0D0FD0(&v334, &v329);
    sub_21D0D32E4(&v329, &v337);
    TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)(&v337, &v324);
    __swift_destroy_boxed_opaque_existential_0(&v329);
    v339 = v326;
    v340 = v327;
    v341[0] = v328[0];
    *(v341 + 9) = *(v328 + 9);
    v337 = v324;
    v338 = v325;
  }

  else
  {
    sub_21D0CF7E0(&v334, &qword_27CE59DC0);
    v337 = xmmword_21DC19C40;
    v338 = 0u;
    v339 = 0u;
    v340 = 0u;
    memset(v341, 0, 25);
  }

  sub_21D0D3954(v344, &v329, &qword_27CE59DC0);
  v224 = *(&v330 + 1);
  if (*(&v330 + 1))
  {
    v225 = v331;
    __swift_project_boxed_opaque_existential_1(&v329, *(&v330 + 1));
    (*(v225 + 112))(&v324, v224, v225);
    v226 = *(&v325 + 1);
    if (*(&v325 + 1))
    {
      v227 = v326;
      __swift_project_boxed_opaque_existential_1(&v324, *(&v325 + 1));
      LODWORD(v312) = (*(v227 + 16))(v226, v227);
      __swift_destroy_boxed_opaque_existential_0(&v324);
      __swift_destroy_boxed_opaque_existential_0(&v329);
      goto LABEL_114;
    }

    __swift_destroy_boxed_opaque_existential_0(&v329);
    v228 = &qword_27CE5A6E8;
    v229 = &v324;
  }

  else
  {
    v228 = &qword_27CE59DC0;
    v229 = &v329;
  }

  sub_21D0CF7E0(v229, v228);
  LODWORD(v312) = 0;
LABEL_114:
  sub_21D799E6C(v322, v313, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v344, &v324, &qword_27CE59DC0);
  v230 = *(&v325 + 1);
  if (*(&v325 + 1))
  {
    v231 = v326;
    __swift_project_boxed_opaque_existential_1(&v324, *(&v325 + 1));
    v232 = (*(v231 + 32))(v230, v231);
    v308 = v233;
    v309 = v232;
    __swift_destroy_boxed_opaque_existential_0(&v324);
  }

  else
  {
    sub_21D0CF7E0(&v324, &qword_27CE59DC0);
    v308 = 0xE000000000000000;
    v309 = 0;
  }

  sub_21D0D3954(v344, &v334, &qword_27CE59DC0);
  v234 = v335;
  v317 = v94;
  if (v335)
  {
    v235 = v336;
    __swift_project_boxed_opaque_existential_1(&v334, v335);
    v307 = (*(v235 + 8))(v234, v235);
    __swift_destroy_boxed_opaque_existential_0(&v334);
  }

  else
  {
    sub_21D0CF7E0(&v334, &qword_27CE59DC0);
    v307 = 0;
  }

  LODWORD(v311) = v219 == 0;
  type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)(v344, &v329);
  v303 = v331;
  v291 = v332;
  LODWORD(v290) = v333;
  sub_21D0D3954(&v337, &v324, &unk_27CE5E9E0);
  LODWORD(v306) = [v54 v66[178]];
  [v54 priority];
  v304 = REMReminderPriorityLevelForPriority();
  v236 = v65;
  v237 = [v54 v65[73]];
  v289 = [v237 defaultReminderPriorityLevel];

  v238 = type metadata accessor for TTRReminderDetailViewModel(0);
  v239 = v296;
  sub_21D799E6C(v321, v296 + v238[20], type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v240 = v285;
  v241 = v286;
  v243 = v283;
  v242 = v284;
  v244 = v282;
  sub_21D48BB60(v285, v286, v284, v283, v282);
  v245 = [v54 v236 + 4023];
  v246 = v54;
  v247 = v245;
  LODWORD(v305) = [v245 supportsTextStyling];

  v287 = v330;
  v288 = v329;

  sub_21D48C240(v240, v241, v242, v243, v244);
  sub_21D0CF7E0(&v337, &unk_27CE5E9E0);

  sub_21D0CF7E0(v302, &qword_27CE61948);
  sub_21D0CF7E0(v314, &qword_27CE59DC0);
  sub_21D799ED4(v321, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  sub_21D799ED4(v322, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D7A959C(v313, v239, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v239 + v238[5]) = 1;
  v248 = (v239 + v238[6]);
  v249 = v308;
  *v248 = v309;
  v248[1] = v249;
  *(v239 + v238[7]) = v307;
  v250 = v239 + v238[8];
  v251 = v287;
  *v250 = v288;
  *(v250 + 16) = v251;
  v252 = v291;
  *(v250 + 32) = v303;
  *(v250 + 40) = v252;
  *(v250 + 48) = v290;
  v253 = (v239 + v238[9]);
  v254 = v340;
  v253[2] = v339;
  v253[3] = v254;
  v253[4] = v341[0];
  *(v253 + 73) = *(v341 + 9);
  v255 = v338;
  *v253 = v337;
  v253[1] = v255;
  *(v239 + v238[10]) = v312 & 1;
  *(v239 + v238[11]) = v316;
  *(v239 + v238[12]) = v295;
  v256 = (v239 + v238[13]);
  *v256 = 0u;
  v256[1] = 0u;
  *(v239 + v238[14]) = v306;
  *(v239 + v238[15]) = v304;
  *(v239 + v238[16]) = v289;
  *(v239 + v238[17]) = v318;
  *(v239 + v238[18]) = v293;
  v257 = (v239 + v238[19]);
  *v257 = 0u;
  v257[1] = 0u;
  *(v239 + v238[21]) = v323;
  *(v239 + v238[22]) = v292;
  v258 = v239 + v238[23];
  *v258 = v240;
  *(v258 + 8) = v241;
  *(v258 + 16) = v242;
  *(v258 + 24) = v243;
  *(v258 + 32) = v244;
  v259 = v239 + v238[24];
  *v259 = 0;
  *(v259 + 8) = 0;
  v260 = v239 + v238[25];
  *v260 = xmmword_21DC22F10;
  *(v260 + 16) = 0;
  v261 = v239 + v238[26];
  *(v261 + 112) = 0;
  *(v261 + 80) = 0u;
  *(v261 + 96) = 0u;
  *(v261 + 48) = 0u;
  *(v261 + 64) = 0u;
  *(v261 + 16) = 0u;
  *(v261 + 32) = 0u;
  *v261 = 0u;
  v262 = (v239 + v238[27]);
  v263 = v350;
  v262[4] = v349;
  v262[5] = v263;
  v262[6] = v351[0];
  *(v262 + 105) = *(v351 + 9);
  v264 = v346;
  *v262 = v345;
  v262[1] = v264;
  v265 = v348;
  v262[2] = v347;
  v262[3] = v265;
  v266 = v239 + v238[28];
  *v266 = v297;
  v267 = v319;
  *(v266 + 8) = v320;
  *(v266 + 16) = v267;
  v268 = (v239 + v238[29]);
  *v268 = 0u;
  v268[1] = 0u;
  *(v239 + v238[30]) = v305;
  v269 = v239 + v238[31];
  *v269 = 0;
  *(v269 + 8) = v311;
  *(v239 + v238[32]) = 0;
  sub_21D7A959C(v315, v239 + v238[33], type metadata accessor for TTRReminderDetailViewModel.URLState);
  v270 = (v239 + v238[34]);
  *v270 = 0;
  v270[1] = 0;
  v271 = (v239 + v238[35]);
  *v271 = xmmword_21DC19C40;
  v271[1] = 0u;
  v271[2] = 0u;
  v271[3] = 0u;
  v271[4] = 0u;
  *(v239 + v238[36]) = 0;
  v272 = v239 + v238[37];
  v273 = v300;
  *v272 = v301;
  *(v272 + 16) = v273;
  *(v272 + 32) = v299;
  *(v272 + 40) = v298;
  v274 = v239 + v238[38];
  *(v274 + 64) = 0;
  *(v274 + 32) = 0u;
  *(v274 + 48) = 0u;
  *v274 = 0u;
  *(v274 + 16) = 0u;
  sub_21D0CF7E0(v344, &qword_27CE59DC0);
  return __swift_destroy_boxed_opaque_existential_0(v352);
}