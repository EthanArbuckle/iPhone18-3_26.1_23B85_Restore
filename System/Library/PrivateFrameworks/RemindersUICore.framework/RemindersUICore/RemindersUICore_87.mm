uint64_t sub_21D912510()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = *(v2 + 624);
    v4 = *(v2 + 616);
    v5 = sub_21D912A30;
  }

  else
  {

    v3 = *(v2 + 624);
    v4 = *(v2 + 616);
    v5 = sub_21D912640;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D912640()
{

  (*(v0[31] + 104))(v0[32], *MEMORY[0x277D44E70], v0[30]);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v15 = v0[75];
  v16 = v0[81];
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[28];
  v14 = v0[27];
  v13 = v0[30];
  sub_21DBF62DC();
  sub_21DBF62CC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
  v6 = (v3 + v5[12]);
  v7 = v5[16];
  v8 = (v3 + v5[20]);
  (*(v1 + 16))(v3, v2, v13);
  *v6 = TTRUserDefaults.activitySessionId.getter();
  v6[1] = v9;
  TTRUserDefaults.activitySessionBeginTime.getter(v3 + v7);
  *v8 = sub_21DBFC8EC();
  v8[1] = v10;
  (*(v4 + 104))(v3, *MEMORY[0x277D44E98], v14);
  sub_21DBF62BC();

  (*(v4 + 8))(v3, v14);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v2, v13);
  sub_21D91BA78(v15, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D0E88(v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_21D912A30()
{
  v29 = v0;
  v1 = v0[85];

  v2 = v1;
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[85];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21DBFC75C();
    v10 = sub_21D0CDFB4(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21D0C9000, v3, v4, "TTRSECreateRemindersPresenterCapability: failed to save {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  else
  {
    v11 = v0[85];
  }

  (*(v0[31] + 104))(v0[32], *MEMORY[0x277D44E70], v0[30]);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v26 = v0[75];
  v27 = v0[81];
  v12 = v0[31];
  v13 = v0[32];
  v14 = v0[29];
  v24 = v0[30];
  v15 = v0[28];
  v25 = v0[27];
  sub_21DBF62DC();
  sub_21DBF62CC();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
  v17 = (v14 + v16[12]);
  v18 = v16[16];
  v19 = (v14 + v16[20]);
  (*(v12 + 16))(v14, v13, v24);
  *v17 = TTRUserDefaults.activitySessionId.getter();
  v17[1] = v20;
  TTRUserDefaults.activitySessionBeginTime.getter(v14 + v18);
  *v19 = sub_21DBFC8EC();
  v19[1] = v21;
  (*(v15 + 104))(v14, *MEMORY[0x277D44E98], v25);
  sub_21DBF62BC();

  (*(v15 + 8))(v14, v25);
  swift_unknownObjectRelease();
  (*(v12 + 8))(v13, v24);
  sub_21D91BA78(v26, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D0E88(v27);

  v22 = v0[1];

  return v22();
}

uint64_t TTRSECreateRemindersPresenterCapability.edit(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v7 + 16) + 8))(a1, a2, a3, ObjectType);
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.requestEndEditing()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter) + 112);
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 24);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

BOOL TTRSECreateRemindersPresenterCapability.canCollapse(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D90BFC8(a1, v11, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D91BAD8(v11, v14, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_21D91BAD8(v11, v14, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  swift_storeEnumTagMultiPayload();
  v16 = swift_getEnumCaseMultiPayload();
  if ((v16 - 2) < 4)
  {
    return 0;
  }

  if (v16)
  {
    sub_21D91BAD8(v14, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D90BFC8(v8, v4, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(v6 + 56))(v4, 0, 1, v5);

    v18 = sub_21D261568(v4);

    sub_21D0CF7E0(v4, &unk_27CE5CD80);
    sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    return v18 > 0;
  }

  else
  {
    sub_21D91BA78(v14, type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells);
    return 0;
  }
}

uint64_t TTRSECreateRemindersPresenterCapability.leadingSwipeActions(for:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  if (*(v9 + 72))
  {
    return MEMORY[0x277D84F90];
  }

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(&v28 - v7);
  sub_21D90BFC8(v8, v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D91BA78(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return MEMORY[0x277D84F90];
  }

  sub_21D91BA78(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21DC08D20;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
  v12 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v29 = v11;
  v14 = swift_allocObject();
  v28 = xmmword_21DC08D00;
  *(v14 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v14 + v13, type metadata accessor for TTRRemindersListViewModel.Item);
  v15 = sub_21D914938(v14);
  v17 = v16;

  if (v15 && (, , v17 > 0))
  {
    v18 = 4;
  }

  else
  {
    v18 = 12;
  }

  v20 = v30;
  *(v30 + 32) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  sub_21D90BFC8(a1, v21 + v13, type metadata accessor for TTRRemindersListViewModel.Item);
  v22 = *(v9 + 16);

  v23 = sub_21D285D24(v21, 1, v22);
  v25 = v24;

  if (v23 && (, , v25 > 0))
  {
    v26 = 5;
  }

  else
  {
    v26 = 12;
  }

  *(v20 + 33) = v26;
  v31 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D78);
  sub_21D0D0F1C(&qword_27CE63D80, &qword_27CE63D78);
  v27 = sub_21DBFA41C();

  sub_21D91BA78(v8, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  return v27;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.canIndent(_:)(Swift::OpaquePointer a1)
{
  v1 = sub_21D914938(a1._rawValue);
  if (v1)
  {
    v3 = v2;

    LOBYTE(v1) = v3 > 0;
  }

  return v1;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.canOutdent(_:)(Swift::OpaquePointer a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);

  v4 = sub_21D285D24(a1._rawValue, 1, v3);
  v6 = v5;

  if (!v4)
  {
    return 0;
  }

  return v6 > 0;
}

char *TTRSECreateRemindersPresenterCapability.trailingSwipeActions(for:)(uint64_t a1)
{
  if (*(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 72))
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
  v4 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  v7 = sub_21D914178(v6);
  swift_setDeallocating();
  sub_21D91BA78(v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_deallocClassInstance();
  if (v7)
  {

    v2 = sub_21D2150A4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_21D2150A4((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    v2[v9 + 32] = 0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v10 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListPresenterCapabilityCore.paramsForBatchFlag(_:)(v10, &v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v11 = v24;
  if (v24 != 2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v11)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_21D2150A4(0, *(v2 + 2) + 1, 1, v2);
      }

      v14 = *(v2 + 2);
      v13 = *(v2 + 3);
      if (v14 >= v13 >> 1)
      {
        v2 = sub_21D2150A4((v13 > 1), v14 + 1, 1, v2);
      }

      *(v2 + 2) = v14 + 1;
      v15 = &v2[v14];
      v16 = 2;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_21D2150A4(0, *(v2 + 2) + 1, 1, v2);
      }

      v18 = *(v2 + 2);
      v17 = *(v2 + 3);
      if (v18 >= v17 >> 1)
      {
        v2 = sub_21D2150A4((v17 > 1), v18 + 1, 1, v2);
      }

      *(v2 + 2) = v18 + 1;
      v15 = &v2[v18];
      v16 = 3;
    }

    v15[32] = v16;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v19 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  v20 = _s15RemindersUICore011TTRSECreateA19PresenterCapabilityC13canShowDetail3forSbSayAA25TTRRemindersListViewModelC4ItemOG_tF_0(v19);
  swift_setDeallocating();
  sub_21D91BA78(v19 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_deallocClassInstance();
  if (v20)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D2150A4(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_21D2150A4((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v2[v22 + 32] = 1;
  }

  return v2;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.canBatchDelete(_:)(Swift::OpaquePointer a1)
{
  v1 = sub_21D914178(a1._rawValue);
  if (v1)
  {
  }

  return v1 != 0;
}

Swift::Int __swiftcall TTRSECreateRemindersPresenterCapability.requestSetFlagged(_:for:)(Swift::Bool _, Swift::OpaquePointer a2)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v12 = 0x800000021DC4F950;
  v5 = sub_21DBF516C();
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  LOBYTE(v12) = _;
  v9 = sub_21D723218(a2._rawValue, v8, v7, sub_21D91BC74, &v11);

  return v9;
}

uint64_t TTRSECreateRemindersPresenterCapability.requestSetPriorityLevel(_:for:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF516C();
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v10[2] = a1;
  sub_21D723218(a2, v8, v7, sub_21D91BC7C, v10);
}

uint64_t sub_21D914178(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = *(a1 + 16);
  v39 = v1;
  if (v15)
  {
    v43 = v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource;
    v40 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = a1 + v40;
    v17 = *(v12 + 72);
    v18 = MEMORY[0x277D84F90];
    v41 = v6;
    v42 = v17;
    while (1)
    {
      sub_21D90BFC8(v16, v14, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D90BFC8(v14, v10, type metadata accessor for TTRRemindersListViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload < 2)
        {
LABEL_10:
          sub_21D91BA78(v10, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_11:
          swift_storeEnumTagMultiPayload();
          goto LABEL_12;
        }
      }

      else
      {
        if ((EnumCaseMultiPayload - 5) < 4)
        {
          goto LABEL_10;
        }

        if ((EnumCaseMultiPayload - 9) < 2)
        {
          goto LABEL_11;
        }
      }

      sub_21D91BAD8(v10, v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
      v22 = swift_getEnumCaseMultiPayload();
      if ((v22 - 1) < 2)
      {
        sub_21D91BA78(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
        v23 = *(v43 + 8);
        ObjectType = swift_getObjectType();
        v25 = (*(*(v23 + 8) + 16))(v14, ObjectType);
        if (v25)
        {

          sub_21D91BAD8(v14, v44, type metadata accessor for TTRRemindersListViewModel.Item);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21D18EBA4(0, *(v18 + 16) + 1, 1);
            v18 = v46;
          }

          v17 = v42;
          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_21D18EBA4(v27 > 1, v28 + 1, 1);
            v18 = v46;
          }

          *(v18 + 16) = v28 + 1;
          sub_21D91BAD8(v44, v18 + v40 + v28 * v17, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        else
        {
          sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.Item);
          v17 = v42;
        }

        goto LABEL_4;
      }

      if (!v22)
      {
        sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.Item);
        v20 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem;
        v21 = v5;
        goto LABEL_3;
      }

LABEL_12:
      v20 = type metadata accessor for TTRRemindersListViewModel.Item;
      v21 = v14;
LABEL_3:
      sub_21D91BA78(v21, v20);
LABEL_4:
      v16 += v17;
      if (!--v15)
      {
        goto LABEL_24;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_24:
  v45 = v18;
  v46 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
  sub_21D92C334(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v29 = sub_21DBFA49C();

  v30 = v39;

  sub_21DBF8E0C();
  result = sub_21D91AB28(&v46, v30, v29);
  v32 = v46;
  v33 = v46[2];
  if (result > v33)
  {
    __break(1u);
    goto LABEL_37;
  }

  v34 = result;
  if (result < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v35 = result;
  if (__OFADD__(v33, result - v33))
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v36 = swift_isUniquelyReferenced_nonNull_native();
  if (!v36 || v35 > v32[3] >> 1)
  {
    if (v33 <= v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = v33;
    }

    v32 = sub_21D211A80(v36, v37, 1, v32);
    v46 = v32;
  }

  sub_21D506ACC(v34, v33, 0);

  if (!v32[2])
  {

    return 0;
  }

  return v32;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.requestDelete(_:)(Swift::OpaquePointer a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_21D914178(a1._rawValue);
  if (v6)
  {
    v7 = v6;
    sub_21D7CD128(v6);
    sub_21D0D3954(*(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 80) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, v5, &qword_27CE59370);
    v8 = type metadata accessor for TTRRemindersListUndoContext();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
    {
      sub_21D0CF7E0(v5, &qword_27CE59370);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    else
    {
      *(&v13 + 1) = v8;
      v14 = &protocol witness table for TTRRemindersListUndoContext;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
      sub_21D91BAD8(v5, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
    }

    v10 = sub_21D6454A0(v7, 0, 1, 0, 0, &v12);

    sub_21D0CF7E0(&v12, &unk_27CE60D80);
    LOBYTE(v6) = v10 > 0;
  }

  return v6;
}

Swift::Int __swiftcall TTRSECreateRemindersPresenterCapability.numberOfTopLevelRemindersIndented(byIndenting:)(Swift::OpaquePointer byIndenting)
{
  if (!sub_21D914938(byIndenting._rawValue))
  {
    return 0;
  }

  v2 = v1;

  return v2;
}

uint64_t sub_21D914938(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  if (!(*(v4 + 8))(ObjectType, v4))
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = swift_getObjectType();
  (*(v7 + 24))(v22, v8, v7);
  swift_unknownObjectRelease();
  v9 = v22[0];
  v10 = v22[1];
  v11 = v22[2];
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v19);

  if (!*(&v20 + 1))
  {
LABEL_6:
    sub_21D0CF7E0(&v19, &qword_27CE59DC0);
    return 0;
  }

  sub_21D0D0FD0(&v19, v22);
  v12 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v14 = (*(v13 + 72))(v12, v13);
  LODWORD(v12) = [v14 supportsSubtasks];

  if (v12)
  {
    v15 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);

    sub_21D27D10C(a1, 1, v15);
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_0(v22);
    return v17;
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return 0;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.requestIndent(_:)(Swift::OpaquePointer a1)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v3 = sub_21D914938(a1._rawValue);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;

  v5 = *(v4 + 16);
  v6 = v5 != 0;
  if (v5)
  {
    sub_21D64A230(v4);
  }

  return v6;
}

Swift::Int __swiftcall TTRSECreateRemindersPresenterCapability.numberOfSubtasksOutdented(byOutdenting:)(Swift::OpaquePointer byOutdenting)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);

  v4 = sub_21D285D24(byOutdenting._rawValue, 1, v3);
  v6 = v5;

  if (!v4)
  {
    return 0;
  }

  return v6;
}

Swift::Bool __swiftcall TTRSECreateRemindersPresenterCapability.requestOutdent(_:)(Swift::OpaquePointer a1)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v4 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);

  v5 = sub_21D285D24(a1._rawValue, 1, v4);

  if (!v5)
  {
    return 0;
  }

  v6 = v5[2];
  v7 = v6 != 0;
  if (v6)
  {
    sub_21D64A230(v5);
  }

  return v7;
}

uint64_t TTRSECreateRemindersPresenterCapability.requestSetUpTextInputPrimaryLanguageObserving(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_editingPresenter) + 112);
  ObjectType = swift_getObjectType();

  return sub_21DBCE8FC(a1, v5, ObjectType, a2);
}

uint64_t TTRSECreateRemindersPresenterCapability.canMove(_:into:atUnadjustedIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  if ((*(*(v3 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 72) & 1) == 0)
  {
    sub_21D914F50(a1, a2, a3, 0, &v14 - v11);
    sub_21D91BAD8(v12, v9, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);

      sub_21D91BA78(v9, type metadata accessor for TTRRemindersListViewModel.Item);
      return 1;
    }

    sub_21D0CF7E0(v9, &qword_27CE63D90);
  }

  return 0;
}

uint64_t sub_21D914F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v80 = a4;
  v79 = a3;
  v89 = a5;
  v90 = a2;
  v81 = a1;
  v92 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v92);
  v87 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v8 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v77 - v16;
  valid = type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForValidDropParents(0);
  MEMORY[0x28223BE20](valid - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v91 = &v77 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  MEMORY[0x28223BE20](v28);
  v85 = &v77 - v29;
  v30 = v6 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource;
  v31 = *(v6 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v77 = *(v30 + 8);
  ObjectType = swift_getObjectType();
  v32 = *(v31 + 16);
  sub_21D0D3954(v90, v17, &qword_27CE58380);
  v33 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  if ((*(*(v33 - 8) + 48))(v17, 1, v33) == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE58380);
LABEL_14:
    v46 = v89;
    v47 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
    goto LABEL_15;
  }

  sub_21D956F18(v20);
  sub_21D91BA78(v17, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v34 = (*(v8 + 48))(v20, 2, v86);
  v35 = v32;
  if (v34)
  {
    v36 = v88;
    if (v34 != 1)
    {

      goto LABEL_14;
    }

    TTRRemindersListTreeViewModel.primarySectionItem.getter(v14);
    if ((*(v84 + 48))(v14, 1, v36) == 1)
    {

      sub_21D0CF7E0(v14, &unk_27CE5CD80);
      v37 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
      (*(*(v37 - 8) + 56))(v89, 1, 1, v37);
LABEL_15:
      type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
      return swift_storeEnumTagMultiPayload();
    }

    v40 = v32;
    sub_21D91BAD8(v14, v27, type metadata accessor for TTRRemindersListViewModel.Item);
    v39 = v85;
    sub_21D91BAD8(v27, v85, type metadata accessor for TTRRemindersListViewModel.Item);
    LODWORD(v86) = 0;
    goto LABEL_17;
  }

  v38 = v83;
  sub_21D91BAD8(v20, v83, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v39 = v85;
  sub_21D90BFC8(v38, v85, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v36 = v88;
  swift_storeEnumTagMultiPayload();
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0 || (v40 = v35, (v80 & 1) == 0) && (v41 = v82, sub_21D90BFC8(v39, v82, type metadata accessor for TTRRemindersListViewModel.Item), (*(v84 + 56))(v41, 0, 1, v36), , v42 = sub_21D261568(v41), , sub_21D0CF7E0(v41, &unk_27CE5CD80), !v42) || (v43 = (*(*(v77 + 8) + 16))(v39, ObjectType)) == 0)
  {
    sub_21D91BA78(v38, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    goto LABEL_38;
  }

  v44 = v43;
  v45 = [v43 subtaskContext];

  sub_21D91BA78(v38, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  if (!v45)
  {
LABEL_38:

    v71 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    (*(*(v71 - 8) + 56))(v89, 1, 1, v71);
    type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
    swift_storeEnumTagMultiPayload();
    v72 = v39;
    return sub_21D91BA78(v72, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  LODWORD(v86) = 1;
LABEL_17:
  v49 = v40;
  v50 = *(v40 + 24);
  v90 = v49;
  v51 = *(v49 + 32);
  v52 = swift_getObjectType();
  v93 = v50;
  v53 = v82;
  sub_21D90BFC8(v39, v82, type metadata accessor for TTRRemindersListViewModel.Item);
  (*(v84 + 56))(v53, 0, 1, v36);
  v54 = *(v51 + 8);
  swift_unknownObjectRetain();
  v55 = TTRTreeContentsQueryable.childrenCollection(of:)(v53, v52, v54);
  v57 = v56;
  v59 = v58;
  sub_21D0CF7E0(v53, &unk_27CE5CD80);
  result = swift_unknownObjectRelease();
  if (v55 == v57)
  {
LABEL_35:
    MEMORY[0x28223BE20](result);
    v65 = v85;
    *(&v77 - 4) = v85;
    *(&v77 - 24) = v86;
    *(&v77 - 2) = v90;
    v66 = sub_21D4E7CF0(sub_21D92C310, (&v77 - 6), v81);

    if (v66[2])
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);
      v68 = *(v67 + 48);
      v69 = *(v67 + 64);
      v70 = v89;
      sub_21D90BFC8(v65, v89, type metadata accessor for TTRRemindersListViewModel.Item);
      *(v70 + v68) = v79;
      *(v70 + v69) = v66;
    }

    else
    {

      v73 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
      (*(*(v73 - 8) + 56))(v89, 1, 1, v73);
    }

    type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
    swift_storeEnumTagMultiPayload();
    v72 = v65;
    return sub_21D91BA78(v72, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  if (v55 <= v57)
  {
    v60 = v57;
  }

  else
  {
    v60 = v55;
  }

  v61 = v55;
  while (1)
  {
    v93 = v61;
    v62 = v91;
    v59(&v93);
    sub_21D91BAD8(v62, v22, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload < 2)
      {
LABEL_27:
        sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_28:
        result = swift_storeEnumTagMultiPayload();
        goto LABEL_32;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 5) < 4)
      {
        goto LABEL_27;
      }

      if ((EnumCaseMultiPayload - 9) < 2)
      {
        goto LABEL_28;
      }
    }

    v64 = v87;
    sub_21D91BAD8(v22, v87, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result <= 1)
    {
      result = sub_21D91BA78(v64, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      goto LABEL_32;
    }

    if (result != 3)
    {
      break;
    }

LABEL_32:
    if (v57 < v55)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    if (v60 == v61)
    {
      goto LABEL_45;
    }

    if (v57 == ++v61)
    {
      goto LABEL_35;
    }
  }

  result = sub_21D91BA78(v64, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  if (v61 >= v79)
  {
    goto LABEL_35;
  }

  v74 = v85;
  v75 = v89;
  sub_21D90BFC8(v85, v89, type metadata accessor for TTRRemindersListViewModel.Item);
  v76 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  *(v75 + *(v76 + 20)) = v61;
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  swift_storeEnumTagMultiPayload();
  v72 = v74;
  return sub_21D91BA78(v72, type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t TTRSECreateRemindersPresenterCapability.fixUpDestinationForMoving(_:into:atUnadjustedIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58 = a4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v48 - v9;
  v54 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v10 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x28223BE20](v12);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A60);
  v53 = v10;
  v26 = *(v10 + 80);
  v27 = v57;
  v28 = (v26 + 32) & ~v26;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21DC08D00;
  sub_21D90BFC8(a1, v29 + v28, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v30 = a2;
  sub_21D914F50(v29, a2, v27, 0, v25);
  swift_setDeallocating();
  sub_21D91BA78(v29 + v28, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  swift_deallocClassInstance();
  sub_21D90BFC8(v25, v22, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D91BA78(v25, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D98);
    v32 = *(v31 + 48);
    v33 = v58;
    sub_21D0D3954(v30, v58, &qword_27CE58380);
    *(v33 + v32) = v27;
    (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
    return sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  v35 = v58;
  sub_21D0D523C(v22, v19, &qword_27CE63D90);
  sub_21D0D3954(v19, v16, &qword_27CE63D90);
  v36 = v56;
  if ((*(v55 + 48))(v16, 1, v56) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE63D90);
    sub_21D91BA78(v25, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    sub_21D0CF7E0(v16, &qword_27CE63D90);
    v37 = v35;
LABEL_7:
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D98);
    return (*(*(v43 - 8) + 56))(v37, 1, 1, v43);
  }

  v38 = v51;
  sub_21D91BAD8(v16, v51, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination);
  v39 = v50;
  sub_21D90BFC8(v38, v50, type metadata accessor for TTRRemindersListViewModel.Item);
  v40 = v52;
  TTRSECreateRemindersViewModel.Item.init(remindersListItem:)(v39, v52);
  sub_21D0CF7E0(v19, &qword_27CE63D90);
  sub_21D91BA78(v25, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
  v42 = v53;
  v41 = v54;
  v37 = v35;
  if ((*(v53 + 48))(v40, 1, v54) == 1)
  {
    sub_21D91BA78(v38, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination);
    sub_21D0CF7E0(v40, &qword_27CE58380);
    goto LABEL_7;
  }

  v44 = v49;
  sub_21D91BAD8(v40, v49, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D98);
  v46 = *(v45 + 48);
  sub_21D91BAD8(v44, v37, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  (*(v42 + 56))(v37, 0, 1, v41);
  v47 = *(v38 + *(v36 + 20));
  sub_21D91BA78(v38, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination);
  *(v37 + v46) = v47;
  return (*(*(v45 - 8) + 56))(v37, 0, 1, v45);
}

uint64_t TTRSECreateRemindersPresenterCapability.requestMove(_:into:atUnadjustedIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D914F50(a1, a2, v25, 1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);
    v18 = *&v16[*(v17 + 48)];
    v19 = *&v16[*(v17 + 64)];
    sub_21D91BAD8(v16, v13, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D90BFC8(v13, v7, type metadata accessor for TTRRemindersListViewModel.Item);
    v20 = *(v11 + 56);
    v20(v7, 0, 1, v10);
    v20(v9, 1, 1, v10);

    sub_21D60E768(v7, v9);
    *&v9[*(v24 + 36)] = v18;
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48);
    sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
    v21 = sub_21DBFA43C();

    if (v21)
    {
      v22 = sub_21D270494(v21, v9);

      sub_21D0CF7E0(v9, &qword_27CE59D38);
      if (v22)
      {
        sub_21D64A230(v22);

        sub_21D91BA78(v13, type metadata accessor for TTRRemindersListViewModel.Item);
        return 1;
      }
    }

    else
    {

      sub_21D0CF7E0(v9, &qword_27CE59D38);
    }

    sub_21D91BA78(v13, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  else
  {
    sub_21D0CF7E0(v16, &qword_27CE63D90);
  }

  return 0;
}

uint64_t TTRSECreateRemindersPresenterCapability.canDrop(_:into:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 72) & 1) == 0)
  {
    sub_21D90BFC8(a2, v7, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    v11 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    sub_21D914F50(a1, v7, 0, 1, v10);
    sub_21D0CF7E0(v7, &qword_27CE58380);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);

      sub_21D91BA78(v10, type metadata accessor for TTRRemindersListViewModel.Item);
      return 1;
    }

    sub_21D0CF7E0(v10, &qword_27CE63D90);
  }

  return 0;
}

uint64_t TTRSECreateRemindersPresenterCapability.requestDrop(_:into:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58380);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21D90BFC8(a2, &v10 - v5, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v7 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = TTRSECreateRemindersPresenterCapability.requestMove(_:into:atUnadjustedIndex:)(a1, v6, 0);
  sub_21D0CF7E0(v6, &qword_27CE58380);
  return v8 & 1;
}

Swift::tuple_isEnabled_Bool_newValue_UIMenuElementState __swiftcall TTRSECreateRemindersPresenterCapability.optionsForPostponing(items:to:)(Swift::OpaquePointer items, RemindersUICore::TTRRemindersListPostponeType to)
{
  v5 = *to;
  v3 = TTRRemindersListPresenterCapabilityCore.optionsForPostponing(items:to:)(items, &v5);
  newValue = v3.newValue;
  isEnabled = v3.isEnabled;
  result.newValue = newValue;
  result.isEnabled = isEnabled;
  return result;
}

Swift::Int __swiftcall TTRSECreateRemindersPresenterCapability.requestPostpone(_:to:)(Swift::OpaquePointer _, RemindersUICore::TTRRemindersListPostponeType to)
{
  v3 = *to;
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  strcpy((inited + 32), "postponeType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v6 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v12 = v3;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v8._countAndFlagsBits = sub_21DBF516C();
  v8._object = v9;
  v10 = TTRRemindersListPresenterCapabilityCore.request(postpone:to:undoActionName:)(_, &v12, v8);

  return v10;
}

uint64_t TTRSECreateRemindersPresenterCapability.paramsForBatchAddHashtag(_:fetchesAllHashtagLabels:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
    v5 = a3;
    swift_retain_n();
    a3 = v5;
    a1 = v4;
    v6 = sub_21D91BCC4;
    v7 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)(a1, v6, v7, a3);
  sub_21D0D0E88(v6);

  return sub_21D0D0E88(v6);
}

uint64_t TTRSECreateRemindersPresenterCapability.requestUpdateHashtagsToMatch(_:for:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF516C();
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v10[2] = a1;
  sub_21D723218(a2, v8, v7, sub_21D91BD10, v10);
}

uint64_t sub_21D916E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF516C();
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  v16[2] = a1;
  v16[3] = a2;
  sub_21D723218(a3, v14, v13, a6, v16);
}

void TTRSECreateRemindersPresenterCapability.assignment(for:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_21D9170D0();
  TTRRemindersListPresenterCapabilityCore.assignment(for:pendingMoveTargetListForHostingReminder:)(a1, v4, a2);
}

id sub_21D9170D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  if (!(*(v1 + 8))(ObjectType, v1))
  {
    return 0;
  }

  v4 = v3;
  v5 = swift_getObjectType();
  (*(*(v4 + 16) + 8))(&v14, v5);
  swift_unknownObjectRelease();
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  if (v15 == 255)
  {
    sub_21D157864(v14, 255);
    sub_21D575DF4(v8, v9, v10, v11);
    return 0;
  }

  v12 = v14;
  sub_21D157864(v6, v7);
  sub_21D575DF4(v8, v9, v10, v11);
  if (v7)
  {
    sub_21D157864(v6, v7);
    return 0;
  }

  return v6;
}

char *TTRSECreateRemindersPresenterCapability.assigneeCandidates(for:)(uint64_t a1)
{
  v2 = sub_21D9170D0();
  v3 = TTRRemindersListPresenterCapabilityCore.assigneeCandidates(for:pendingMoveTargetListForHostingReminder:)(a1, v2);

  return v3;
}

uint64_t TTRSECreateRemindersPresenterCapability.loadAssignment(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D9172E8, v5, v4);
}

uint64_t sub_21D9172E8()
{
  v1 = sub_21D9170D0();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_21D9173A4;
  v3 = v0[2];
  v4 = v0[3];

  return TTRRemindersListPresenterCapabilityCore.loadAssignment(for:pendingMoveTargetListForHostingReminder:)(v3, v4, v1);
}

uint64_t sub_21D9173A4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D2016E4, v4, v3);
}

void TTRSECreateRemindersPresenterCapability.paramsForBatchAssign(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21D9170D0();
  TTRRemindersListPresenterCapabilityCore.paramsForBatchAssign(_:pendingMoveTargetListForHostingReminder:)(a1, v4, a2);
}

uint64_t TTRSECreateRemindersPresenterCapability.updateAssigneeCandidateAvatarImages(for:configuration:completion:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 24);
  v7 = *a2;
  v8 = v4;
  v9 = v5;
  return TTRRemindersListPresenterCapabilityCore.updateAssigneeCandidateAvatarImages(for:configuration:completion:)(a1, &v7, a3, a4);
}

void TTRSECreateRemindersPresenterCapability.requestSetAssignee(_:for:)(_OWORD *a1, uint64_t a2)
{
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v13[6] = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v7 = sub_21D9170D0();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF516C();
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  v12[2] = v13;
  v12[3] = v7;
  sub_21D723218(a2, v11, v10, sub_21D72D3C0, v12);
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.requestAcceptSuggestedReminders(for:)(Swift::OpaquePointer a1)
{
  v20[1] = *v1;
  v3 = sub_21DBF619C();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF613C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  rawValue = a1._rawValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
  sub_21D183A0C();
  v11 = sub_21DBFA42C();
  sub_21D91BD18(v1, v11);

  (*(v7 + 104))(v9, *MEMORY[0x277D44E78], v6);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  sub_21DBF62DC();
  sub_21DBF62CC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
  v13 = &v5[v12[12]];
  v14 = v12[16];
  v15 = &v5[v12[20]];
  (*(v7 + 16))(v5, v9, v6);
  *v13 = TTRUserDefaults.activitySessionId.getter();
  v13[1] = v16;
  TTRUserDefaults.activitySessionBeginTime.getter(&v5[v14]);
  *v15 = sub_21DBFC8EC();
  v15[1] = v17;
  v19 = v21;
  v18 = v22;
  (*(v21 + 104))(v5, *MEMORY[0x277D44E98], v22);
  sub_21DBF62BC();

  (*(v19 + 8))(v5, v18);
  (*(v7 + 8))(v9, v6);
}

id sub_21D917B94@<X0>(void *a1@<X8>)
{
  result = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  *a1 = result;
  return result;
}

void sub_21D917BD0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v32 = *(v1 + 24) & 0x101;
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = v7(ObjectType, v5);
  if (!v8)
  {

LABEL_17:

    return;
  }

  v10 = v8;
  v11 = v9;
  sub_21D97B164(&v32);
  v13 = v12;
  v14 = *(v1 + 16);
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  v17 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v18 = *(v13 + 16);
  v28 = v15;
  swift_unknownObjectRetain();
  if (!v18)
  {
    v27 = v17;
LABEL_14:

    v25 = 256;
    if (!HIBYTE(v32))
    {
      v25 = 0;
    }

    sub_21D64B09C(v27, v25 | v32, v33, v34, v35);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  v19 = 0;
  v20 = (v13 + 48);
  v27 = MEMORY[0x277D84F90];
  while (v19 < *(v13 + 16))
  {
    v21 = *(v20 - 1);
    v22 = *v20;
    v30[0] = *(v20 - 2);
    v30[1] = v21;
    v30[2] = v22;
    v23 = v30[0];
    sub_21DBF8E0C();
    sub_21D91A4AC(v30, v28, v16, v10, v11, &v29);
    v24 = v30[0];

    if (v29)
    {
      MEMORY[0x223D42D80]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v27 = v31;
    }

    ++v19;
    v20 += 3;
    if (v18 == v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);

  v26 = v30[0];

  __break(1u);
}

Swift::Void __swiftcall TTRSECreateRemindersPresenterCapability.requestAcceptAllSuggestedReminders()()
{
  v17[1] = *v0;
  v1 = sub_21DBF619C();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF613C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56E70 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE63CD0);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  sub_21D917BD0(v0);
  (*(v5 + 104))(v7, *MEMORY[0x277D44E80], v4);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  sub_21DBF62DC();
  sub_21DBF62CC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
  v10 = &v3[v9[12]];
  v11 = v9[16];
  v12 = &v3[v9[20]];
  (*(v5 + 16))(v3, v7, v4);
  *v10 = TTRUserDefaults.activitySessionId.getter();
  v10[1] = v13;
  TTRUserDefaults.activitySessionBeginTime.getter(&v3[v11]);
  *v12 = sub_21DBFC8EC();
  v12[1] = v14;
  v16 = v18;
  v15 = v19;
  (*(v18 + 104))(v3, *MEMORY[0x277D44E98], v19);
  sub_21DBF62BC();

  (*(v16 + 8))(v3, v15);
  (*(v5 + 8))(v7, v4);
}

double sub_21D9181C4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
  v5 = sub_21D291698(v4);

  sub_21D91BA78(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v5 && (v6 = *(*v5 + 128), swift_beginAccess(), v7 = *(v5 + v6), , , v7))
  {
    v8 = *(v7 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
    *(a1 + 24) = sub_21D0D8CF0(0, &qword_280D17770);
    *(a1 + 32) = &protocol witness table for REMReminderChangeItem;
    *a1 = v8;
    v9 = v8;
    v10 = sub_21D9170D0();

    *(a1 + 40) = v10;
  }

  else
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_21D918358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_21D90BFC8(a2, v16 - v7, type metadata accessor for TTRRemindersListViewModel.Item);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  sub_21D4D55B8(a1, v18);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)(v8, v18, v16, MEMORY[0x277D84F90], a3);
  v11 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v12 = a3 + v11[31];

  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  sub_21D90BFC8(a2, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  v10(v8, 0, 1, v9);

  v13 = sub_21D261568(v8);

  result = sub_21D0CF7E0(v8, &unk_27CE5CD80);
  v15 = a3 + v11[23];
  *v15 = v13 & ~(v13 >> 63);
  *(v15 + 8) = v13 < 1;
  *(a3 + v11[24]) = 1;
  return result;
}

uint64_t sub_21D918568(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 48))(v4, ObjectType, v9);
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 1;
  }

  v14 = swift_allocObject();
  swift_weakInit();

  a4(a1, a2, v11, v13 & 1, a3, v14);
}

__n128 sub_21D918694(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_core);
  v10 = sub_21D9170D0();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_21D90BFC8(a2, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_21D91BAD8(v8, v13 + v12, type metadata accessor for TTRRemindersListViewModel.Item);

  TTRRemindersListPresenterCapabilityCore.assignment(for:pendingMoveTargetListForHostingReminder:)(a2, v10, &v81);
  v105 = v91;
  v106 = v92;
  v107 = v93;
  v108 = v94;
  v101 = v87;
  v102 = v88;
  v103 = v89;
  v104 = v90;
  v97 = v83;
  v98 = v84;
  v99 = v85;
  v100 = v86;
  v95 = v81;
  v96 = v82;
  if (sub_21D157494(&v95.value._countAndFlagsBits) == 1)
  {
  }

  else
  {
    v77 = v105;
    v78 = v106;
    v79 = v107;
    v80 = v108;
    v74 = v102;
    v75 = v103;
    v76 = v104;
    v69 = v97;
    v70 = v98;
    v71 = v99;
    v72 = v100;
    v73 = v101;
    v67 = v95;
    v68 = v96;
    __swift_project_boxed_opaque_existential_1((v9 + 72), *(v9 + 96));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21DC09CF0;
    v16 = objc_opt_self();
    v35[10] = v91;
    v35[11] = v92;
    v35[12] = v93;
    v35[13] = v94;
    v35[6] = v87;
    v35[7] = v88;
    v35[8] = v89;
    v35[9] = v90;
    v35[2] = v83;
    v35[3] = v84;
    v35[4] = v85;
    v35[5] = v86;
    v35[0] = v81;
    v35[1] = v82;
    sub_21D72DCB4(v35, v65);
    *(v15 + 32) = [v16 descriptorForRequiredKeysWithThreeDTouchEnabled_];
    REMContactsProviderType.loadContact(for:keys:updateHandler:)(&v67, v15, sub_21D92C37C, v13);

    sub_21D0CF7E0(&v81, &qword_27CE608E0);

    v46 = v77;
    v47 = v78;
    v48 = v79;
    v49 = v80;
    v42 = v73;
    v43 = v74;
    v44 = v75;
    v45 = v76;
    v38 = v69;
    v39 = v70;
    v40 = v71;
    v41 = v72;
    v36 = v67;
    v37 = v68;
    nullsub_1(&v36, v17, v18);
    v60 = v46;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v56 = v42;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v50 = v36;
    v51 = v37;
    v64 = 1;
    nullsub_1(&v50, v19, v20);
    v21 = a1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 136);
    v22 = *(v21 + 208);
    v65[12] = *(v21 + 192);
    v65[13] = v22;
    v66 = *(v21 + 224);
    v23 = *(v21 + 144);
    v65[8] = *(v21 + 128);
    v65[9] = v23;
    v24 = *(v21 + 176);
    v65[10] = *(v21 + 160);
    v65[11] = v24;
    v25 = *(v21 + 80);
    v65[4] = *(v21 + 64);
    v65[5] = v25;
    v26 = *(v21 + 112);
    v65[6] = *(v21 + 96);
    v65[7] = v26;
    v27 = *(v21 + 16);
    v65[0] = *v21;
    v65[1] = v27;
    v28 = *(v21 + 48);
    v65[2] = *(v21 + 32);
    v65[3] = v28;
    sub_21D0CF7E0(v65, &unk_27CE5FB50);

    v29 = v63;
    *(v21 + 192) = v62;
    *(v21 + 208) = v29;
    *(v21 + 224) = v64;
    v30 = v59;
    *(v21 + 128) = v58;
    *(v21 + 144) = v30;
    v31 = v61;
    *(v21 + 160) = v60;
    *(v21 + 176) = v31;
    v32 = v55;
    *(v21 + 64) = v54;
    *(v21 + 80) = v32;
    v33 = v57;
    *(v21 + 96) = v56;
    *(v21 + 112) = v33;
    v34 = v51;
    *v21 = v50;
    *(v21 + 16) = v34;
    result = v53;
    *(v21 + 32) = v52;
    *(v21 + 48) = result;
  }

  return result;
}

uint64_t sub_21D918B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v125 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v94 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v104);
  v105 = &v94 - v7;
  v103 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v103);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v124 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v96 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v94 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v123);
  v14 = &v94 - v13;
  v122 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v101 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v117 = (&v94 - v17);
  MEMORY[0x28223BE20](v18);
  v119 = &v94 - v19;
  MEMORY[0x28223BE20](v20);
  v116 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v130 = &v94 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v94 - v25;
  v114 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v27 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v94 - v31;
  v33 = *(*(a2 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource) + 16);
  v35 = *(v33 + 24);
  v34 = *(v33 + 32);
  ObjectType = swift_getObjectType();
  v127 = v35;
  v37 = *(v34 + 8);
  v38 = v9;
  v39 = v29;
  v99 = TTRTreeContentsQueryable.ancestors(of:)(v125, ObjectType, v37);
  v113 = sub_21DBFC10C();
  sub_21DBFC42C();
  v40 = *(v27 + 48);
  v112 = v27 + 48;
  v111 = v40;
  v41 = v40(v32, 1, v114);
  v42 = v120;
  if (v41 == 1)
  {
LABEL_2:

    return 0;
  }

  v125 = v120 + 56;
  v98 = 0x800000021DC43E30;
  v97 = 0x800000021DC43E00;
  v107 = 0x800000021DC43DE0;
  v100 = (v124 + 48);
  v44 = &unk_27CE5CD70;
  v126 = v26;
  v109 = v39;
  v106 = v32;
  v115 = v38;
  v95 = v6;
  while (1)
  {
    sub_21D91BAD8(v32, v39, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v26);
    if (*(v42 + 16))
    {
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)();
      v45 = sub_21DBFC82C();
      v46 = -1 << *(v42 + 32);
      v47 = v45 & ~v46;
      if ((*(v125 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        break;
      }
    }

LABEL_4:
    v26 = v126;
    sub_21D91BA78(v126, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v39 = v109;
    sub_21D91BA78(v109, type metadata accessor for TTRRemindersListViewModel.Item);
    v32 = v106;
    sub_21DBFC42C();
    if (v111(v32, 1, v114) == 1)
    {
      goto LABEL_2;
    }
  }

  v121 = ~v46;
  v124 = *(v101 + 72);
  while (1)
  {
    v50 = v44;
    v51 = v6;
    v52 = v130;
    sub_21D90BFC8(*(v42 + 48) + v124 * v47, v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v53 = *(v123 + 48);
    sub_21D90BFC8(v52, v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D90BFC8(v126, &v14[v53], type metadata accessor for TTRRemindersListViewModel.ItemID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v56 = v117;
        sub_21D90BFC8(v14, v117, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v57 = *v56;
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);

          v42 = v120;
          goto LABEL_10;
        }

        v58 = *&v14[v53];
        sub_21D0D8CF0(0, &qword_280D17680);
        v59 = sub_21DBFB63C();

        sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (v59)
        {

          goto LABEL_81;
        }

        goto LABEL_74;
      }

      v72 = v118;
      sub_21D90BFC8(v14, v118, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v48 = type metadata accessor for TTRRemindersListViewModel.ItemID;
        v49 = v130;
        goto LABEL_9;
      }

      v73 = *v72;
      if (v73 > 2)
      {
        if (v73 == 3)
        {
          v76 = 0xD00000000000001FLL;
          v81 = &v128;
        }

        else
        {
          if (v73 == 4)
          {
            v77 = 0xE700000000000000;
            v76 = 0x6D657449706974;
            goto LABEL_53;
          }

          v76 = 0xD00000000000001DLL;
          v81 = &v129;
        }

        v77 = *(v81 - 32);
      }

      else
      {
        v74 = 0xD000000000000012;
        if (v73 == 1)
        {
          v74 = 0x7367617468736168;
        }

        v75 = 0xEC0000006D657449;
        if (v73 != 1)
        {
          v75 = v107;
        }

        if (*v72)
        {
          v76 = v74;
        }

        else
        {
          v76 = 0x6574656C706D6F63;
        }

        if (*v72)
        {
          v77 = v75;
        }

        else
        {
          v77 = 0xED00006D65744964;
        }
      }

LABEL_53:
      v82 = v14[v53];
      if (v82 <= 2)
      {
        if (v14[v53])
        {
          if (v82 == 1)
          {
            v83 = 0x7367617468736168;
          }

          else
          {
            v83 = 0xD000000000000012;
          }

          if (v82 == 1)
          {
            v84 = 0xEC0000006D657449;
          }

          else
          {
            v84 = v107;
          }

          if (v76 != v83)
          {
LABEL_73:
            v87 = sub_21DBFC64C();

            sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v87)
            {
              goto LABEL_78;
            }

LABEL_74:
            sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v42 = v120;
            goto LABEL_11;
          }
        }

        else
        {
          v84 = 0xED00006D65744964;
          if (v76 != 0x6574656C706D6F63)
          {
            goto LABEL_73;
          }
        }

LABEL_72:
        if (v77 == v84)
        {

          sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_78:

          sub_21D91BA78(v126, type metadata accessor for TTRRemindersListViewModel.ItemID);
          sub_21D91BA78(v109, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
          return 1;
        }

        goto LABEL_73;
      }

      if (v82 == 3)
      {
        v85 = 0xD00000000000001FLL;
        v86 = &v128;
      }

      else
      {
        if (v82 == 4)
        {
          v84 = 0xE700000000000000;
          if (v76 != 0x6D657449706974)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        v85 = 0xD00000000000001DLL;
        v86 = &v129;
      }

      v84 = *(v86 - 32);
      if (v76 != v85)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    if (EnumCaseMultiPayload)
    {
      break;
    }

    v55 = v116;
    sub_21D90BFC8(v14, v116, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v48 = type metadata accessor for TTRRemindersListViewModel.SectionID;
      v49 = v55;
LABEL_9:
      sub_21D91BA78(v49, v48);
LABEL_10:
      sub_21D0CF7E0(v14, &qword_27CE58AD0);
LABEL_11:
      v6 = v51;
      v44 = v50;
      goto LABEL_12;
    }

    v78 = v108;
    sub_21D91BAD8(&v14[v53], v108, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v79 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v55, v78);
    sub_21D91BA78(v78, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v42 = v120;
    sub_21D91BA78(v55, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = v51;
    v44 = v50;
    if (v79)
    {

      goto LABEL_82;
    }

LABEL_12:
    v47 = (v47 + 1) & v121;
    if (((*(v125 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v60 = v119;
  sub_21D90BFC8(v14, v119, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D91BA78(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v42 = v120;
    goto LABEL_10;
  }

  v61 = v115;
  sub_21D91BAD8(&v14[v53], v115, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = v51;
    v44 = v50;
    goto LABEL_76;
  }

  v62 = *(v103 + 20);
  v63 = *(v104 + 48);
  v64 = v105;
  sub_21D0D3954(v60 + v62, v105, v50);
  v65 = v61 + v62;
  v66 = v64;
  v110 = v63;
  sub_21D0D3954(v65, v64 + v63, v50);
  v67 = *v100;
  v68 = v64;
  v69 = v102;
  if ((*v100)(v68, 1, v102) == 1)
  {
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v70 = v67(v66 + v110, 1, v69) == 1;
    v6 = v51;
    v71 = v66;
    v61 = v115;
    v44 = v50;
    if (v70)
    {
      v92 = v71;

      sub_21D0CF7E0(v92, &unk_27CE5CD70);
      v60 = v119;
      goto LABEL_80;
    }

LABEL_49:
    sub_21D0CF7E0(v71, &qword_27CE58388);
    v60 = v119;
    goto LABEL_76;
  }

  v80 = v51;
  v44 = v50;
  sub_21D0D3954(v66, v80, v50);
  if (v67(v66 + v110, 1, v69) == 1)
  {
    sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = v95;
    sub_21D91BA78(v95, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v71 = v66;
    v61 = v115;
    goto LABEL_49;
  }

  v88 = v96;
  sub_21D91BAD8(v66 + v110, v96, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v89 = v95;
  v90 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v95, v88);
  v91 = v88;
  v44 = v50;
  sub_21D91BA78(v91, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D91BA78(v130, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D91BA78(v89, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D0CF7E0(v66, v50);
  v6 = v89;
  v61 = v115;
  v60 = v119;
  if ((v90 & 1) == 0)
  {
LABEL_76:
    sub_21D91BA78(v61, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D91BA78(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v42 = v120;
    goto LABEL_12;
  }

LABEL_80:
  sub_21D91BA78(v61, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D91BA78(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_81:
  sub_21D91BA78(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_82:
  v93 = v109;
  sub_21D91BA78(v126, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D91BA78(v93, type metadata accessor for TTRRemindersListViewModel.Item);
  return 1;
}

uint64_t sub_21D919C90(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    v6 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
    v3 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21DC08D00;
    sub_21D90BFC8(a1, v5 + v4, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D897284(&v6, v5);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_21D91BA78(v5 + v4, type metadata accessor for TTRRemindersListViewModel.Item);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_21D919E00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    v7 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
    v4 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21DC08D00;
    sub_21D90BFC8(a2, v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D897284(&v7, v6);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_21D91BA78(v6 + v5, type metadata accessor for TTRRemindersListViewModel.Item);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_21D919F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v38 = a3;
  v39 = a2;
  v41 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v36 - v7;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v36 - v24;
  sub_21D90BFC8(a1, v19, type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v26 = 1 << swift_getEnumCaseMultiPayload();
  if ((v26 & 0x71) != 0)
  {
    return (*(v15 + 56))(v41, 1, 1, v14);
  }

  if ((v26 & 0xC) != 0)
  {
    sub_21D91BA78(v19, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    return (*(v15 + 56))(v41, 1, 1, v14);
  }

  sub_21D91BAD8(v19, v25, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D91BAD8(v25, v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v28 = v40;
  sub_21D90BFC8(v22, v40, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v29 = v14;
  swift_storeEnumTagMultiPayload();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  v30 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v13, v10);
  sub_21D91BA78(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D91BA78(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v30)
  {
    sub_21D91BA78(v28, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    return (*(v15 + 56))(v41, 1, 1, v14);
  }

  if (v38)
  {
    v31 = v37;
    sub_21D90BFC8(v28, v37, type metadata accessor for TTRRemindersListViewModel.Item);
    v32 = v28;
    v33 = *(v15 + 56);
    v33(v31, 0, 1, v29);

    v34 = sub_21D261568(v31);

    sub_21D0CF7E0(v31, &unk_27CE5CD80);
    sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if (v34 >= 1)
    {
      sub_21D91BA78(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      return v33(v41, 1, 1, v29);
    }
  }

  else
  {
    sub_21D91BA78(v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v32 = v28;
  }

  v35 = v41;
  sub_21D91BAD8(v32, v41, type metadata accessor for TTRRemindersListViewModel.Item);
  return (*(v15 + 56))(v35, 0, 1, v29);
}

void sub_21D91A4AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v40 = a5;
  v41 = a4;
  v42 = a6;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v39 - v13;
  v16 = *a1;
  v15 = *(a1 + 8);
  v39[0] = *(a1 + 16);
  v39[1] = v15;
  ObjectType = swift_getObjectType();
  *&v44[0] = a2;
  v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v19 - 8) + 56))(&v11[v18], 1, 1, v19);
  *v11 = v16;
  swift_storeEnumTagMultiPayload();
  v20 = *(a3 + 8);
  v21 = *(v20 + 40);
  v22 = v16;
  v21(v11, ObjectType, v20);
  sub_21D91BA78(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v23 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  LODWORD(a3) = (*(*(v23 - 8) + 48))(v14, 1, v23);
  sub_21D0CF7E0(v14, &unk_27CE5CD80);
  if (a3 != 1)
  {
    if (qword_27CE56E70 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_27CE63CD0);
    v31 = sub_21DBF84AC();
    v35 = sub_21DBFAECC();
    if (!os_log_type_enabled(v31, v35))
    {
      goto LABEL_15;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "TTRSECreateRemindersPresenterCapability: unexpected: item for suggested reminder to be accepted already exists in tree";
    goto LABEL_14;
  }

  v24 = swift_getObjectType();
  v25 = (*(*(v40 + 16) + 16))(v22, v24);
  if (!v25)
  {
    if (qword_27CE56E70 != -1)
    {
      swift_once();
    }

    v38 = sub_21DBF84BC();
    __swift_project_value_buffer(v38, qword_27CE63CD0);
    v31 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    if (!os_log_type_enabled(v31, v35))
    {
      goto LABEL_15;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "TTRSECreateRemindersPresenterCapability: Cannot create REMReminderChangeItem for suggested reminder.";
LABEL_14:
    _os_log_impl(&dword_21D0C9000, v31, v35, v37, v36, 2u);
    MEMORY[0x223D46520](v36, -1, -1);
LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  v26 = v25;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_21D0D3954(v44, v43, &unk_27CE60D80);
  type metadata accessor for TTRReminderEditor();
  v27 = swift_allocObject();
  *(v27 + 72) = 0;
  *(v27 + 16) = v26;
  sub_21D0D3954(v43, v27 + 24, &unk_27CE60D80);
  *(v27 + 64) = 0;
  v28 = [v26 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v44, &unk_27CE60D80);
  sub_21D0CF7E0(v43, &unk_27CE60D80);
  *(v27 + 72) = v28;
  v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v30 = sub_21DBFA12C();
  v31 = [v29 initWithString_];

  v32 = sub_21D9CA3E0(v31, 0, 1);
  if (v32)
  {
    v33 = v32;
    swift_retain_n();
    sub_21D182E74(sub_21D23298C, v33);
  }

LABEL_16:

  *v42 = v26;
}

uint64_t TTRSECreateRemindersPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D91BA78(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_undoContext, type metadata accessor for TTRRemindersListUndoContext);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRSECreateRemindersPresenterCapability.__deallocating_deinit()
{
  TTRSECreateRemindersPresenterCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D91AAB4()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &qword_27CE59370);

  return swift_deallocClassInstance();
}

uint64_t sub_21D91AB28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = *a1;
  result = sub_21D91B438(*a1, a2, a3);
  if (v3)
  {
LABEL_2:
  }

  if (v19)
  {
    v47 = *(v17 + 16);

LABEL_8:

    return v47;
  }

  v44 = v16;
  v40 = v13;
  v41 = v10;
  v39 = a1;
  v48 = 0;
  v47 = result;
  v20 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = (v17 + 16);
    v21 = *(v17 + 16);
    if (v20 == v21)
    {
LABEL_7:

      goto LABEL_8;
    }

    v23 = v17;
    v42 = v8;
    v43 = a2;
    while (v20 < v21)
    {
      v24 = v23;
      v45 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v25 = v23 + v45;
      v26 = *(v8 + 72);
      v46 = v26 * v20;
      v27 = v23 + v45 + v26 * v20;
      v28 = v44;
      sub_21D90BFC8(v27, v44, type metadata accessor for TTRRemindersListViewModel.Item);
      v29 = a2;
      v30 = a3;
      v31 = v48;
      v32 = sub_21D918B84(v28, v29, a3);
      result = sub_21D91BA78(v28, type metadata accessor for TTRRemindersListViewModel.Item);
      v48 = v31;
      if (v31)
      {
        goto LABEL_2;
      }

      if (v32)
      {
        a3 = v30;
        v8 = v42;
        a2 = v43;
        v23 = v24;
      }

      else
      {
        v33 = v47;
        if (v20 == v47)
        {
          a3 = v30;
          v8 = v42;
          a2 = v43;
          v23 = v24;
        }

        else
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          v34 = *v22;
          if (v47 >= *v22)
          {
            goto LABEL_28;
          }

          v35 = v26 * v47;
          result = sub_21D90BFC8(v25 + v26 * v47, v40, type metadata accessor for TTRRemindersListViewModel.Item);
          if (v20 >= v34)
          {
            goto LABEL_29;
          }

          v36 = v46;
          sub_21D90BFC8(v25 + v46, v41, type metadata accessor for TTRRemindersListViewModel.Item);
          v23 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_21D256DA8(v24);
          }

          a3 = v30;
          v8 = v42;
          v37 = v23 + v45;
          result = sub_21D45E4C8(v41, v23 + v45 + v35);
          a2 = v43;
          if (v20 >= *(v23 + 16))
          {
            goto LABEL_30;
          }

          result = sub_21D45E4C8(v40, v37 + v36);
          *v39 = v23;
          v33 = v47;
        }

        v47 = v33 + 1;
      }

      ++v20;
      v22 = (v23 + 16);
      v21 = *(v23 + 16);
      if (v20 == v21)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D91AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_21D0D3954(a1, &v9 - v5, &qword_27CE5CE90);
  v7 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return sub_21D91BAD8(v6, a2, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D91B008(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for TTRSECreateRemindersViewModelSource();
  v8 = swift_allocObject();
  *(v8 + 64) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  swift_unknownObjectWeakInit();
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 80) = a1;
  *(v8 + 88) = &off_282EDB578;
  *(v8 + 96) = a2;
  *(v8 + 104) = &off_282ED8AC0;
  sub_21D0D32E4(a3, v8 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A78);
  v9 = type metadata accessor for TTRRemindersListTreeViewModel.Section(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC08D00;
  if (qword_27CE56B18 != -1)
  {
    swift_once();
  }

  v12 = v11 + v10;
  v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v14 = __swift_project_value_buffer(v13, qword_27CE5F558);
  sub_21D90BFC8(v14, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D6EEF24(v24);
  v15 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v16 = (v12 + v15[5]);
  v17 = v24[5];
  v16[4] = v24[4];
  v16[5] = v17;
  v16[6] = v25[0];
  *(v16 + 106) = *(v25 + 10);
  v18 = v24[1];
  *v16 = v24[0];
  v16[1] = v18;
  v19 = v24[3];
  v16[2] = v24[2];
  v16[3] = v19;
  *(v12 + v15[6]) = 0;
  *(v12 + v15[7]) = 0;
  *(v12 + v15[8]) = 0;
  *(v12 + v15[9]) = 0;
  *(v12 + v15[10]) = 0;
  *(v12 + v15[11]) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v12 + *(v9 + 20)) = MEMORY[0x277D84F90];
  *(v12 + *(v9 + 24)) = 0;
  type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v21 = swift_allocObject();
  v22 = sub_21D91B620(v11, 0, v21, v20, 0, 0);
  __swift_destroy_boxed_opaque_existential_0(a3);
  *(v8 + 16) = v22;
  *(v8 + 72) = a4 & 1;
  return v8;
}

void *sub_21D91B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TTRSECreateRemindersEditingSessionProvider();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = &off_282EC9E88;
  v10[6] = a4;
  v10[7] = &off_282EDB578;
  v10[8] = a5;
  v10[9] = &off_282ED8AC0;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();

  v11 = TTRRemindersListEditingSessionProviderCapability.init()();
  v10[10] = v11;
  v12 = swift_allocObject();
  *(v12 + 24) = &off_282EC9E88;
  swift_unknownObjectWeakInit();

  swift_beginAccess();
  v13 = v11[2];
  v11[2] = sub_21D92C3E0;
  v11[3] = v12;

  sub_21D0D0E88(v13);

  v14 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v15 = v11[4];
  v11[4] = sub_21D92C3E8;
  v11[5] = v14;

  sub_21D0D0E88(v15);

  return v10;
}

uint64_t sub_21D91B438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_21D918B84(v10, a2, a3);
    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v4 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_21D91B558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D1B795C;

  return sub_21D90DC20(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21D91B620(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v40 = a6;
  v39 = a4;
  v47[3] = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v47[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v47[0] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 16) = MEMORY[0x277D84F90];
  v14 = (v12 + 16);
  v43 = v10;
  v42 = v11;
  v41 = v12;
  if (a2)
  {
    MEMORY[0x28223BE20](v12);
    v35 = v15;
    v36 = v10;
    v37 = v47;
    v38 = v11;
    v16 = sub_21D173ED4(sub_21D2F8AE4, v34, a1);
  }

  else
  {
    swift_beginAccess();
    v17 = sub_21DBF8E0C();
    sub_21D5624A0(v17);
    v18 = swift_endAccess();
    MEMORY[0x28223BE20](v18);
    v35 = v10 + 16;
    v36 = v47;
    v37 = (v11 + 16);
    v16 = sub_21D4E6184(sub_21D2F89B8, v34, a1);
  }

  v19 = v16;

  v20 = sub_21D177CD4(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A588);
  v21 = swift_allocObject();
  *&v44[0] = v13;
  v46[0] = MEMORY[0x277D84F98];
  sub_21DB8503C(v19, v44, v46);

  v22 = v46[0];
  v21[2] = *&v44[0];
  v21[3] = v22;
  v21[4] = v20;
  sub_21D2A0FC0(v39, v21);

  swift_beginAccess();
  v23 = *v14;
  sub_21DBF8E0C();
  sub_21D2A21B4(v21, v23);

  if (a5)
  {
    v24 = swift_allocObject();
    v25 = v40;
    *(v24 + 16) = a5;
    *(v24 + 24) = v25;
    v26 = sub_21D92C3F8;
  }

  else
  {
    v26 = sub_21D2F8BEC;
    v24 = 0;
  }

  v27 = v42;
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v24;
  v45 = v21;
  sub_21D0D0E78(a5);

  (v26)(v44, &v45);

  v40 = v44[0];
  swift_beginAccess();
  v29 = *(v27 + 16);
  sub_21DBF8E0C();
  sub_21D0D0E88(a5);
  swift_beginAccess();
  v30 = *(v43 + 16);
  sub_21D0D32E4(v47, v44);
  type metadata accessor for TTRRemindersListTreeViewModel();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D84FA0];
  *(v31 + 88) = MEMORY[0x277D84FA0];
  *(v31 + 80) = v21;
  *(v31 + 24) = v40;
  *(v31 + 96) = v29;
  *(v31 + 104) = sub_21D92C3F0;
  *(v31 + 112) = v28;
  swift_beginAccess();
  *(v31 + 88) = v32;
  *(v31 + 16) = v30;
  sub_21D0D0FD0(v44, v31 + 40);

  __swift_destroy_boxed_opaque_existential_0(v47);
  return v31;
}

uint64_t sub_21D91BA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D91BAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15RemindersUICore011TTRSECreateA19PresenterCapabilityC13canShowDetail3forSbSayAA25TTRRemindersListViewModelC4ItemOG_tF_0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = EnumCaseMultiPayload == 2;
  if (EnumCaseMultiPayload < 2)
  {
    v7 = 1;
LABEL_7:
    sub_21D91BA78(v4, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return v7;
  }

  v7 = 0;
  result = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D91BCC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

void sub_21D91BD18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_viewModelSource);
  v3 = *(v2 + 32);
  if (!v3)
  {
    return;
  }

  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v31 = *(v2 + 24) & 0x101;
  v32 = v3;
  v33 = v5;
  v34 = v6;
  v7 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRSECreateRemindersPresenterCapability_interactor + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v27 = v9(ObjectType, v7);
  if (!v27)
  {

LABEL_16:

    return;
  }

  v11 = v10;
  sub_21DBF8E0C();
  sub_21D97B794(&v31, a2);
  v13 = v12;

  v14 = *(v2 + 16);
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  v17 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v18 = *(v13 + 16);
  swift_unknownObjectRetain();
  if (!v18)
  {
LABEL_11:

    v25 = 256;
    if (!HIBYTE(v31))
    {
      v25 = 0;
    }

    sub_21D64B09C(v17, v25 | v31, v32, v33, v34);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v19 = 0;
  v20 = (v13 + 48);
  while (v19 < *(v13 + 16))
  {
    v21 = *(v20 - 1);
    v22 = *v20;
    v29[0] = *(v20 - 2);
    v29[1] = v21;
    v29[2] = v22;
    v23 = v29[0];
    sub_21DBF8E0C();
    sub_21D91A4AC(v29, v15, v16, v27, v11, &v28);
    v24 = v29[0];

    if (v28)
    {
      MEMORY[0x223D42D80]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v17 = v30;
    }

    ++v19;
    v20 += 3;
    if (v18 == v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);

  v26 = v29[0];

  __break(1u);
}

uint64_t sub_21D91C0D4()
{
  result = type metadata accessor for TTRRemindersListUndoContext();
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

void sub_21D91C1F4()
{
  sub_21D92C2BC(319, qword_280D13488, type metadata accessor for TTRRemindersListUndoContext);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_21D91C2A0(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D91BA78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(v4, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v4, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *v4;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v108 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v108(a1 + v37, v4 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (v4 + v39);
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
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(v4, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v4, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, v4, v46);
              *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(v4 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *v4;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, v4 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v4;
        *(a1 + 8) = *(v4 + 8);
        *(a1 + 9) = *(v4 + 9);
        *(a1 + 10) = *(v4 + 10);
        v18 = v4[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *v4;
      *a1 = *v4;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(v4 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v13, v4 + v13, *(*(v25 - 8) + 64));
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
        v100 = *(v4 + v13);
        *(a1 + v13) = v100;
        v101 = v100;
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
          memcpy(a1 + v13, v4 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v13, v4 + v13, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(v4 + v13, 1, v14))
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
        v12 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(v4 + v13, 1, v14))
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
LABEL_34:
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v111 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v4, v48);
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
        v49 = *v4;
        *a1 = *v4;
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
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v4 + v55;
      if (*(v4 + v55 + 8))
      {
        v109 = v4;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        v104 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, v104);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = v104;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v105 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v105, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v105;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        a3 = v111;
        v56[121] = v57[121];
        v4 = v109;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
      a3 = v111;
LABEL_97:
      *(a1 + v54[6]) = *(v4 + v54[6]);
      *(a1 + v54[7]) = *(v4 + v54[7]);
      *(a1 + v54[8]) = *(v4 + v54[8]);
      *(a1 + v54[9]) = *(v4 + v54[9]);
      *(a1 + v54[10]) = *(v4 + v54[10]);
      v80 = v54[11];
      v81 = *(v4 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v111 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v4, v51);
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
      v52 = *v4;
      *a1 = *v4;
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
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v4 + v83;
    if (*(v4 + v83 + 8))
    {
      v110 = v4;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      v106 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v106);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = v106;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v107 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v107, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v107;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v111;
      v56[121] = v57[121];
      v4 = v110;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + *(a3 + 20)) = *(v4 + *(a3 + 20));
  return a1;
}

void *sub_21D91D938(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D91BA78(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
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
            v37 = (a1 + v36);
            v38 = (a2 + v36);
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
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

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
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
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
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

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
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

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
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *sub_21D91EA58(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          switch(EnumCaseMultiPayload)
          {
            case 6:
              v36 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v37 = *(v36 - 8);
              if ((*(v37 + 48))(v3, 1, v36))
              {
                v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(a1, v3, *(*(v38 - 8) + 64));
              }

              else
              {
                *a1 = *v3;
                v67 = *(v36 + 20);
                v68 = sub_21DBF6C1C();
                v223 = *(*(v68 - 8) + 16);
                sub_21DBF8E0C();
                v223(a1 + v67, v3 + v67, v68);
                (*(v37 + 56))(a1, 0, 1, v36);
              }

              v69 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v70 = (a1 + v69);
              v71 = (v3 + v69);
              v72 = v71[1];
              if (v72)
              {
                *v70 = *v71;
                v70[1] = v72;
                v73 = v71[2];
                v70[2] = v73;
                sub_21DBF8E0C();
                v74 = v73;
              }

              else
              {
                *v70 = *v71;
                v70[2] = v71[2];
              }

              goto LABEL_237;
            case 7:
              v42 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v43 = *(v42 - 8);
              if ((*(v43 + 48))(v3, 1, v42))
              {
                v44 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, v3, *(*(v44 - 8) + 64));
              }

              else
              {
                v83 = sub_21DBF563C();
                (*(*(v83 - 8) + 16))(a1, v3, v83);
                *(a1 + *(v42 + 20)) = *(v3 + *(v42 + 20));
                (*(v43 + 56))(a1, 0, 1, v42);
              }

              v84 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v84 + 20)) = *(v3 + *(v84 + 20));
              goto LABEL_237;
            case 8:
              *a1 = *v3;
              v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v9 = sub_21DBF8D7C();
              (*(*(v9 - 8) + 16))(a1 + v8, v3 + v8, v9);
LABEL_237:
              swift_storeEnumTagMultiPayload();
              goto LABEL_238;
          }

LABEL_52:
          memcpy(a1, v3, *(*(v6 - 8) + 64));
LABEL_238:
          v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);
          *(a1 + *(v195 + 48)) = *(v3 + *(v195 + 48));
          *(a1 + *(v195 + 64)) = *(v3 + *(v195 + 64));
          sub_21DBF8E0C();
          goto LABEL_266;
        }

        if (EnumCaseMultiPayload != 4)
        {
          *a1 = *v3;
          *(a1 + 8) = *(v3 + 8);
          *(a1 + 9) = *(v3 + 9);
          v26 = v3[2];
          a1[2] = v26;
          v27 = v26;
          goto LABEL_237;
        }

        v39 = *v3;
        *a1 = *v3;
        v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = *(v22 - 8);
        v40 = *(v23 + 48);
        v41 = v39;
        if (v40(v3 + v21, 1, v22))
        {
LABEL_45:
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v21, v3 + v21, *(*(v35 - 8) + 64));
          goto LABEL_237;
        }

        v75 = swift_getEnumCaseMultiPayload();
        if (v75 > 4)
        {
          if (v75 <= 7)
          {
            if (v75 == 5 || v75 == 6)
            {
              goto LABEL_187;
            }

            goto LABEL_235;
          }

          if (v75 != 8 && v75 != 9)
          {
            goto LABEL_235;
          }

LABEL_186:
          v150 = *(v3 + v21);
          *(a1 + v21) = v150;
          v151 = v150;
          swift_storeEnumTagMultiPayload();
LABEL_236:
          (*(v23 + 56))(a1 + v21, 0, 1, v22);
          goto LABEL_237;
        }

        if (v75 <= 2)
        {
          if (v75 != 1)
          {
            if (v75 == 2)
            {
              goto LABEL_187;
            }

LABEL_235:
            memcpy(a1 + v21, v3 + v21, *(v23 + 64));
            goto LABEL_236;
          }

          goto LABEL_186;
        }

LABEL_187:
        v152 = sub_21DBF563C();
        (*(*(v152 - 8) + 16))(a1 + v21, v3 + v21, v152);
        swift_storeEnumTagMultiPayload();
        goto LABEL_236;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v32 = *v3;
          *a1 = *v3;
          v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v23 = *(v22 - 8);
          v33 = *(v23 + 48);
          v34 = v32;
          if (v33(v3 + v21, 1, v22))
          {
            goto LABEL_45;
          }

          v57 = swift_getEnumCaseMultiPayload();
          if (v57 > 4)
          {
            if (v57 <= 7)
            {
              if (v57 == 5 || v57 == 6)
              {
                goto LABEL_187;
              }

              goto LABEL_235;
            }

            if (v57 != 8 && v57 != 9)
            {
              goto LABEL_235;
            }

            goto LABEL_186;
          }

          if (v57 > 2)
          {
            goto LABEL_187;
          }

          if (v57 == 1)
          {
            goto LABEL_186;
          }

          if (v57 != 2)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v20 = *v3;
          *a1 = *v3;
          v21 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v23 = *(v22 - 8);
          v24 = *(v23 + 48);
          v25 = v20;
          if (v24(v3 + v21, 1, v22))
          {
            goto LABEL_45;
          }

          v54 = swift_getEnumCaseMultiPayload();
          if (v54 > 4)
          {
            if (v54 <= 7)
            {
              if (v54 == 5 || v54 == 6)
              {
                goto LABEL_187;
              }

              goto LABEL_235;
            }

            if (v54 != 8 && v54 != 9)
            {
              goto LABEL_235;
            }

            goto LABEL_186;
          }

          if (v54 > 2)
          {
            goto LABEL_187;
          }

          if (v54 == 1)
          {
            goto LABEL_186;
          }

          if (v54 != 2)
          {
            goto LABEL_235;
          }
        }

        goto LABEL_187;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_52;
        }

        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = swift_getEnumCaseMultiPayload();
        if (v15 <= 4)
        {
          if (v15 > 2)
          {
LABEL_101:
            v85 = sub_21DBF563C();
            (*(*(v85 - 8) + 16))(a1, v3, v85);
            swift_storeEnumTagMultiPayload();
            goto LABEL_157;
          }

          if (v15 != 1)
          {
            if (v15 == 2)
            {
              goto LABEL_101;
            }

            goto LABEL_156;
          }

LABEL_104:
          v86 = *v3;
          *a1 = *v3;
          v87 = v86;
          swift_storeEnumTagMultiPayload();
          goto LABEL_157;
        }

        if (v15 > 7)
        {
          if (v15 == 8 || v15 == 9)
          {
            goto LABEL_104;
          }
        }

        else if (v15 == 5 || v15 == 6)
        {
          goto LABEL_101;
        }

LABEL_156:
        memcpy(a1, v3, *(*(v14 - 8) + 64));
LABEL_157:
        v105 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v106 = v105[5];
        v107 = a1 + v106;
        v108 = v3 + v106;
        v109 = *(v3 + v106 + 8);
        if (v109)
        {
          v224 = v3;
          *v107 = *v108;
          *(v107 + 1) = v109;
          v110 = *(v108 + 2);
          v111 = *(v108 + 3);
          v112 = *(v108 + 4);
          v113 = *(v108 + 5);
          v115 = *(v108 + 6);
          v114 = *(v108 + 7);
          v215 = v108[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v110, v111, v112, v113, v115, v114, v215);
          *(v107 + 2) = v110;
          *(v107 + 3) = v111;
          *(v107 + 4) = v112;
          *(v107 + 5) = v113;
          *(v107 + 6) = v115;
          *(v107 + 7) = v114;
          v107[64] = v215;
          *(v107 + 65) = *(v108 + 65);
          v116 = v108[120];
          if (v116 == 255)
          {
            *(v107 + 72) = *(v108 + 72);
            *(v107 + 88) = *(v108 + 88);
            *(v107 + 104) = *(v108 + 104);
            v107[120] = v108[120];
          }

          else
          {
            v117 = *(v108 + 9);
            v216 = *(v108 + 10);
            v118 = *(v108 + 11);
            v119 = *(v108 + 12);
            v120 = *(v108 + 13);
            v121 = *(v108 + 14);
            v122 = v116 & 1;
            sub_21D0FB960(v117, v216, v118, v119, v120, v121, v116 & 1);
            *(v107 + 9) = v117;
            *(v107 + 10) = v216;
            *(v107 + 11) = v118;
            *(v107 + 12) = v119;
            *(v107 + 13) = v120;
            *(v107 + 14) = v121;
            v107[120] = v122;
          }

          v107[121] = v108[121];
          v3 = v224;
          goto LABEL_163;
        }

LABEL_160:
        v123 = *(v108 + 5);
        *(v107 + 4) = *(v108 + 4);
        *(v107 + 5) = v123;
        *(v107 + 6) = *(v108 + 6);
        *(v107 + 106) = *(v108 + 106);
        v124 = *(v108 + 1);
        *v107 = *v108;
        *(v107 + 1) = v124;
        v125 = *(v108 + 3);
        *(v107 + 2) = *(v108 + 2);
        *(v107 + 3) = v125;
LABEL_163:
        *(a1 + v105[6]) = *(v3 + v105[6]);
        *(a1 + v105[7]) = *(v3 + v105[7]);
        *(a1 + v105[8]) = *(v3 + v105[8]);
        *(a1 + v105[9]) = *(v3 + v105[9]);
        *(a1 + v105[10]) = *(v3 + v105[10]);
        v126 = v105[11];
        v127 = *(v3 + v126);
        *(a1 + v126) = v127;
        v128 = v127;
        goto LABEL_237;
      }

      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 4)
      {
        if (v31 > 2)
        {
LABEL_105:
          v88 = sub_21DBF563C();
          (*(*(v88 - 8) + 16))(a1, v3, v88);
          swift_storeEnumTagMultiPayload();
          goto LABEL_165;
        }

        if (v31 != 1)
        {
          if (v31 == 2)
          {
            goto LABEL_105;
          }

          goto LABEL_164;
        }

LABEL_108:
        v89 = *v3;
        *a1 = *v3;
        v90 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_165;
      }

      if (v31 > 7)
      {
        if (v31 == 8 || v31 == 9)
        {
          goto LABEL_108;
        }
      }

      else if (v31 == 5 || v31 == 6)
      {
        goto LABEL_105;
      }

LABEL_164:
      memcpy(a1, v3, *(*(v30 - 8) + 64));
LABEL_165:
      v105 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v129 = v105[5];
      v107 = a1 + v129;
      v108 = v3 + v129;
      v130 = *(v3 + v129 + 8);
      if (v130)
      {
        v225 = v3;
        *v107 = *v108;
        *(v107 + 1) = v130;
        v131 = *(v108 + 2);
        v132 = *(v108 + 3);
        v133 = *(v108 + 4);
        v134 = *(v108 + 5);
        v135 = *(v108 + 6);
        v136 = *(v108 + 7);
        v217 = v108[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v131, v132, v133, v134, v135, v136, v217);
        *(v107 + 2) = v131;
        *(v107 + 3) = v132;
        *(v107 + 4) = v133;
        *(v107 + 5) = v134;
        *(v107 + 6) = v135;
        *(v107 + 7) = v136;
        v107[64] = v217;
        *(v107 + 65) = *(v108 + 65);
        v137 = v108[120];
        if (v137 == 255)
        {
          *(v107 + 72) = *(v108 + 72);
          *(v107 + 88) = *(v108 + 88);
          *(v107 + 104) = *(v108 + 104);
          v107[120] = v108[120];
        }

        else
        {
          v138 = *(v108 + 9);
          v218 = *(v108 + 10);
          v139 = *(v108 + 11);
          v140 = *(v108 + 12);
          v141 = *(v108 + 13);
          v142 = *(v108 + 14);
          v143 = v137 & 1;
          sub_21D0FB960(v138, v218, v139, v140, v141, v142, v137 & 1);
          *(v107 + 9) = v138;
          *(v107 + 10) = v218;
          *(v107 + 11) = v139;
          *(v107 + 12) = v140;
          *(v107 + 13) = v141;
          *(v107 + 14) = v142;
          v107[120] = v143;
        }

        v107[121] = v108[121];
        v3 = v225;
        goto LABEL_163;
      }

      goto LABEL_160;
    }

    v11 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90);
      memcpy(a1, v3, *(*(v13 - 8) + 64));
LABEL_266:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 > 3)
    {
      if (v17 > 5)
      {
        switch(v17)
        {
          case 6:
            v64 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v65 = *(v64 - 8);
            if ((*(v65 + 48))(v3, 1, v64))
            {
              v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v3, *(*(v66 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v94 = *(v64 + 20);
              v95 = sub_21DBF6C1C();
              v209 = *(*(v95 - 8) + 16);
              sub_21DBF8E0C();
              v209(a1 + v94, v3 + v94, v95);
              (*(v65 + 56))(a1, 0, 1, v64);
            }

            v96 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v97 = (a1 + v96);
            v98 = (v3 + v96);
            v99 = v98[1];
            if (v99)
            {
              *v97 = *v98;
              v97[1] = v99;
              v100 = v98[2];
              v97[2] = v100;
              sub_21DBF8E0C();
              v101 = v100;
            }

            else
            {
              *v97 = *v98;
              v97[2] = v98[2];
            }

            goto LABEL_264;
          case 7:
            v80 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v81 = *(v80 - 8);
            if ((*(v81 + 48))(v3, 1, v80))
            {
              v82 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v82 - 8) + 64));
            }

            else
            {
              v103 = sub_21DBF563C();
              (*(*(v103 - 8) + 16))(a1, v3, v103);
              *(a1 + *(v80 + 20)) = *(v3 + *(v80 + 20));
              (*(v81 + 56))(a1, 0, 1, v80);
            }

            v104 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v104 + 20)) = *(v3 + *(v104 + 20));
            goto LABEL_264;
          case 8:
            *a1 = *v3;
            v18 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v19 = sub_21DBF8D7C();
            (*(*(v19 - 8) + 16))(a1 + v18, v3 + v18, v19);
LABEL_264:
            swift_storeEnumTagMultiPayload();
            goto LABEL_265;
        }

LABEL_100:
        memcpy(a1, v3, *(*(v16 - 8) + 64));
LABEL_265:
        *(a1 + *(v11 + 20)) = *(v3 + *(v11 + 20));
        (*(v12 + 56))(a1, 0, 1, v11);
        goto LABEL_266;
      }

      if (v17 != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v52 = v3[2];
        a1[2] = v52;
        v53 = v52;
        goto LABEL_264;
      }

      v222 = v12;
      v76 = *v3;
      *a1 = *v3;
      v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v61 = *(v60 - 8);
      v77 = *(v61 + 48);
      v78 = v76;
      if (v77(v3 + v59, 1, v60))
      {
LABEL_95:
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v59, v3 + v59, *(*(v79 - 8) + 64));
        v12 = v222;
        goto LABEL_264;
      }

      v102 = swift_getEnumCaseMultiPayload();
      v12 = v222;
      if (v102 > 4)
      {
        if (v102 <= 7)
        {
          if (v102 == 5 || v102 == 6)
          {
            goto LABEL_247;
          }

          goto LABEL_262;
        }

        if (v102 != 8 && v102 != 9)
        {
          goto LABEL_262;
        }

LABEL_250:
        v200 = *(v3 + v59);
        *(a1 + v59) = v200;
        v201 = v200;
        swift_storeEnumTagMultiPayload();
        goto LABEL_263;
      }

      if (v102 <= 2)
      {
        if (v102 != 1)
        {
          if (v102 == 2)
          {
            goto LABEL_247;
          }

LABEL_262:
          memcpy(a1 + v59, v3 + v59, *(v61 + 64));
          goto LABEL_263;
        }

        goto LABEL_250;
      }

LABEL_247:
      v199 = sub_21DBF563C();
      (*(*(v199 - 8) + 16))(a1 + v59, v3 + v59, v199);
      swift_storeEnumTagMultiPayload();
LABEL_263:
      (*(v61 + 56))(a1 + v59, 0, 1, v60);
      goto LABEL_264;
    }

    if (v17 <= 1)
    {
      if (v17)
      {
        if (v17 != 1)
        {
          goto LABEL_100;
        }

        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = swift_getEnumCaseMultiPayload();
        v214 = v11;
        v219 = v12;
        if (v29 > 4)
        {
          if (v29 <= 7)
          {
            if (v29 == 5 || v29 == 6)
            {
              goto LABEL_171;
            }

            goto LABEL_218;
          }

          if (v29 != 8 && v29 != 9)
          {
            goto LABEL_218;
          }
        }

        else
        {
          if (v29 > 2)
          {
LABEL_171:
            v144 = sub_21DBF563C();
            (*(*(v144 - 8) + 16))(a1, v3, v144);
            swift_storeEnumTagMultiPayload();
LABEL_219:
            v153 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v154 = v153[5];
            v155 = a1 + v154;
            v156 = v3 + v154;
            v157 = *(v3 + v154 + 8);
            if (v157)
            {
              *v155 = *v156;
              *(v155 + 1) = v157;
              v158 = *(v156 + 2);
              v159 = *(v156 + 3);
              v160 = *(v156 + 4);
              v161 = *(v156 + 5);
              v162 = *(v156 + 6);
              v205 = *(v156 + 7);
              v210 = v156[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v158, v159, v160, v161, v162, v205, v210);
              *(v155 + 2) = v158;
              *(v155 + 3) = v159;
              *(v155 + 4) = v160;
              *(v155 + 5) = v161;
              *(v155 + 6) = v162;
              *(v155 + 7) = v205;
              v155[64] = v210;
              *(v155 + 65) = *(v156 + 65);
              v163 = v156[120];
              if (v163 == 255)
              {
                *(v155 + 72) = *(v156 + 72);
                *(v155 + 88) = *(v156 + 88);
                *(v155 + 104) = *(v156 + 104);
                v155[120] = v156[120];
              }

              else
              {
                v164 = *(v156 + 9);
                v165 = *(v156 + 11);
                v166 = *(v156 + 12);
                v167 = *(v156 + 13);
                v206 = *(v156 + 14);
                v211 = *(v156 + 10);
                v168 = v163 & 1;
                sub_21D0FB960(v164, v211, v165, v166, v167, v206, v163 & 1);
                *(v155 + 9) = v164;
                *(v155 + 10) = v211;
                *(v155 + 11) = v165;
                *(v155 + 12) = v166;
                *(v155 + 13) = v167;
                *(v155 + 14) = v206;
                v155[120] = v168;
              }

              v11 = v214;
              v12 = v219;
              v155[121] = v156[121];
            }

            else
            {
              v169 = *(v156 + 5);
              *(v155 + 4) = *(v156 + 4);
              *(v155 + 5) = v169;
              *(v155 + 6) = *(v156 + 6);
              *(v155 + 106) = *(v156 + 106);
              v170 = *(v156 + 1);
              *v155 = *v156;
              *(v155 + 1) = v170;
              v171 = *(v156 + 3);
              *(v155 + 2) = *(v156 + 2);
              *(v155 + 3) = v171;
            }

            *(a1 + v153[6]) = *(v3 + v153[6]);
            *(a1 + v153[7]) = *(v3 + v153[7]);
            *(a1 + v153[8]) = *(v3 + v153[8]);
            *(a1 + v153[9]) = *(v3 + v153[9]);
            *(a1 + v153[10]) = *(v3 + v153[10]);
            v172 = v153[11];
            v173 = *(v3 + v172);
            *(a1 + v172) = v173;
            v174 = v173;
            goto LABEL_264;
          }

          if (v29 != 1)
          {
            if (v29 == 2)
            {
              goto LABEL_171;
            }

LABEL_218:
            memcpy(a1, v3, *(*(v28 - 8) + 64));
            goto LABEL_219;
          }
        }

        v145 = *v3;
        *a1 = *v3;
        v146 = v145;
        swift_storeEnumTagMultiPayload();
        goto LABEL_219;
      }

      v55 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v56 = swift_getEnumCaseMultiPayload();
      v221 = v12;
      if (v56 > 4)
      {
        if (v56 <= 7)
        {
          if (v56 == 5 || v56 == 6)
          {
            goto LABEL_179;
          }

          goto LABEL_227;
        }

        if (v56 != 8 && v56 != 9)
        {
          goto LABEL_227;
        }
      }

      else
      {
        if (v56 > 2)
        {
LABEL_179:
          v147 = sub_21DBF563C();
          (*(*(v147 - 8) + 16))(a1, v3, v147);
          swift_storeEnumTagMultiPayload();
LABEL_228:
          v175 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v176 = v175[5];
          v177 = a1 + v176;
          v178 = v3 + v176;
          v179 = *(v3 + v176 + 8);
          if (v179)
          {
            *v177 = *v178;
            *(v177 + 1) = v179;
            v180 = *(v178 + 2);
            v181 = *(v178 + 3);
            v183 = *(v178 + 4);
            v182 = *(v178 + 5);
            v212 = *(v178 + 6);
            v203 = *(v178 + 7);
            v207 = v178[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v180, v181, v183, v182, v212, v203, v207);
            *(v177 + 2) = v180;
            *(v177 + 3) = v181;
            *(v177 + 4) = v183;
            *(v177 + 5) = v182;
            *(v177 + 6) = v212;
            *(v177 + 7) = v203;
            v177[64] = v207;
            *(v177 + 65) = *(v178 + 65);
            v184 = v178[120];
            if (v184 == 255)
            {
              *(v177 + 72) = *(v178 + 72);
              *(v177 + 88) = *(v178 + 88);
              *(v177 + 104) = *(v178 + 104);
              v177[120] = v178[120];
            }

            else
            {
              v208 = *(v178 + 10);
              v213 = *(v178 + 9);
              v185 = *(v178 + 11);
              v186 = *(v178 + 12);
              v187 = *(v178 + 13);
              v204 = *(v178 + 14);
              v188 = v184 & 1;
              sub_21D0FB960(v213, v208, v185, v186, v187, v204, v184 & 1);
              *(v177 + 9) = v213;
              *(v177 + 10) = v208;
              *(v177 + 11) = v185;
              *(v177 + 12) = v186;
              *(v177 + 13) = v187;
              *(v177 + 14) = v204;
              v177[120] = v188;
            }

            v12 = v221;
            v177[121] = v178[121];
          }

          else
          {
            v189 = *(v178 + 5);
            *(v177 + 4) = *(v178 + 4);
            *(v177 + 5) = v189;
            *(v177 + 6) = *(v178 + 6);
            *(v177 + 106) = *(v178 + 106);
            v190 = *(v178 + 1);
            *v177 = *v178;
            *(v177 + 1) = v190;
            v191 = *(v178 + 3);
            *(v177 + 2) = *(v178 + 2);
            *(v177 + 3) = v191;
          }

          *(a1 + v175[6]) = *(v3 + v175[6]);
          *(a1 + v175[7]) = *(v3 + v175[7]);
          *(a1 + v175[8]) = *(v3 + v175[8]);
          *(a1 + v175[9]) = *(v3 + v175[9]);
          *(a1 + v175[10]) = *(v3 + v175[10]);
          v192 = v175[11];
          v193 = *(v3 + v192);
          *(a1 + v192) = v193;
          v194 = v193;
          goto LABEL_264;
        }

        if (v56 != 1)
        {
          if (v56 == 2)
          {
            goto LABEL_179;
          }

LABEL_227:
          memcpy(a1, v3, *(*(v55 - 8) + 64));
          goto LABEL_228;
        }
      }

      v148 = *v3;
      *a1 = *v3;
      v149 = v148;
      swift_storeEnumTagMultiPayload();
      goto LABEL_228;
    }

    if (v17 == 2)
    {
      v222 = v12;
      v58 = *v3;
      *a1 = *v3;
      v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v61 = *(v60 - 8);
      v62 = *(v61 + 48);
      v63 = v58;
      if (v62(v3 + v59, 1, v60))
      {
        goto LABEL_95;
      }

      v93 = swift_getEnumCaseMultiPayload();
      v12 = v222;
      if (v93 > 4)
      {
        if (v93 <= 7)
        {
          if (v93 == 5 || v93 == 6)
          {
            goto LABEL_247;
          }

          goto LABEL_262;
        }

        if (v93 != 8 && v93 != 9)
        {
          goto LABEL_262;
        }

        goto LABEL_250;
      }

      if (v93 > 2)
      {
        goto LABEL_247;
      }

      if (v93 == 1)
      {
        goto LABEL_250;
      }

      if (v93 != 2)
      {
        goto LABEL_262;
      }

      goto LABEL_247;
    }

    v220 = v12;
    v45 = *v3;
    *a1 = *v3;
    v46 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v48 = *(v47 - 8);
    v49 = *(v48 + 48);
    v50 = v45;
    if (v49(v3 + v46, 1, v47))
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v46, v3 + v46, *(*(v51 - 8) + 64));
      v12 = v220;
      goto LABEL_264;
    }

    v91 = swift_getEnumCaseMultiPayload();
    v92 = v47;
    if (v91 > 4)
    {
      v12 = v220;
      if (v91 <= 7)
      {
        if (v91 == 5 || v91 == 6)
        {
          goto LABEL_239;
        }

        goto LABEL_260;
      }

      if (v91 != 8 && v91 != 9)
      {
        goto LABEL_260;
      }
    }

    else
    {
      v12 = v220;
      if (v91 > 2)
      {
LABEL_239:
        v196 = sub_21DBF563C();
        (*(*(v196 - 8) + 16))(a1 + v46, v3 + v46, v196);
        swift_storeEnumTagMultiPayload();
LABEL_261:
        (*(v48 + 56))(a1 + v46, 0, 1, v92);
        goto LABEL_264;
      }

      if (v91 != 1)
      {
        if (v91 == 2)
        {
          goto LABEL_239;
        }

LABEL_260:
        memcpy(a1 + v46, v3 + v46, *(v48 + 64));
        goto LABEL_261;
      }
    }

    v197 = *(v3 + v46);
    *(a1 + v46) = v197;
    v198 = v197;
    swift_storeEnumTagMultiPayload();
    goto LABEL_261;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = (v10 + ((v5 + 16) & ~v5));

  return a1;
}

void sub_21D921830(id *a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
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
            v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            if (!(*(*(v16 - 8) + 48))(a1, 1, v16))
            {

              v17 = *(v16 + 20);
              v18 = sub_21DBF6C1C();
              (*(*(v18 - 8) + 8))(a1 + v17, v18);
            }

            v19 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
            if (v19[1])
            {
            }

            break;
          case 7:
            v20 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            if (!(*(*(v20 - 8) + 48))(a1, 1, v20))
            {
              v21 = sub_21DBF563C();
              (*(*(v21 - 8) + 8))(a1, v21);
            }

            break;
          case 8:
            v3 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v4 = sub_21DBF8D7C();
            (*(*(v4 - 8) + 8))(a1 + v3, v4);
            break;
        }

        goto LABEL_81;
      }

      if (EnumCaseMultiPayload != 4)
      {

        goto LABEL_81;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload > 1)
    {
LABEL_26:

      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      if ((*(*(v13 - 8) + 48))(a1 + v12, 1, v13))
      {
        goto LABEL_81;
      }

      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 <= 2)
        {
          if (v14 != 1)
          {
            if (v14 != 2)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          }

LABEL_86:

          goto LABEL_81;
        }

LABEL_80:
        v36 = sub_21DBF563C();
        (*(*(v36 - 8) + 8))(a1 + v12, v36);
        goto LABEL_81;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_86;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_80;
      }

LABEL_81:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);

      return;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_81;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 > 4)
    {
      if (v6 <= 7)
      {
        if (v6 != 5 && v6 != 6)
        {
          goto LABEL_66;
        }

        goto LABEL_62;
      }

      if (v6 != 8 && v6 != 9)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v6 > 2)
      {
        goto LABEL_62;
      }

      if (v6 != 1)
      {
        if (v6 != 2)
        {
LABEL_66:
          v27 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v28 = a1 + *(v27 + 20);
          if (*(v28 + 1))
          {

            sub_21D179EF0(*(v28 + 2), *(v28 + 3), *(v28 + 4), *(v28 + 5), *(v28 + 6), *(v28 + 7), v28[64]);
            v29 = v28[120];
            if (v29 != 255)
            {
              sub_21D1078C0(*(v28 + 9), *(v28 + 10), *(v28 + 11), *(v28 + 12), *(v28 + 13), *(v28 + 14), v29 & 1);
            }
          }

          goto LABEL_81;
        }

LABEL_62:
        v26 = sub_21DBF563C();
        (*(*(v26 - 8) + 8))(a1, v26);
        goto LABEL_66;
      }
    }

    goto LABEL_66;
  }

  v5 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  if ((*(*(v5 - 8) + 48))(a1, 1, v5))
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      goto LABEL_52;
    }

    if (v7 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 4)
    {
      if (v15 <= 7)
      {
        if (v15 != 5 && v15 != 6)
        {
          goto LABEL_95;
        }

        goto LABEL_91;
      }

      if (v15 != 8 && v15 != 9)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (v15 > 2)
      {
        goto LABEL_91;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
LABEL_95:
          v38 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v39 = a1 + *(v38 + 20);
          if (*(v39 + 1))
          {

            sub_21D179EF0(*(v39 + 2), *(v39 + 3), *(v39 + 4), *(v39 + 5), *(v39 + 6), *(v39 + 7), v39[64]);
            v40 = v39[120];
            if (v40 != 255)
            {
              sub_21D1078C0(*(v39 + 9), *(v39 + 10), *(v39 + 11), *(v39 + 12), *(v39 + 13), *(v39 + 14), v40 & 1);
            }
          }

          v22 = *(a1 + *(v38 + 44));
          goto LABEL_99;
        }

LABEL_91:
        v37 = sub_21DBF563C();
        (*(*(v37 - 8) + 8))(a1, v37);
        goto LABEL_95;
      }
    }

    goto LABEL_95;
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      v22 = a1[2];
LABEL_99:

      return;
    }

LABEL_52:

    v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v24 - 8) + 48))(a1 + v23, 1, v24))
    {
      return;
    }

    v25 = swift_getEnumCaseMultiPayload();
    if (v25 > 4)
    {
      if (v25 <= 7)
      {
        if (v25 != 5 && v25 != 6)
        {
          return;
        }

        goto LABEL_102;
      }

      if (v25 != 8 && v25 != 9)
      {
        return;
      }
    }

    else
    {
      if (v25 > 2)
      {
LABEL_102:
        v9 = sub_21DBF563C();
        v10 = *(*(v9 - 8) + 8);
        v11 = (a1 + v23);
LABEL_103:

        v10(v11, v9);
        return;
      }

      if (v25 != 1)
      {
        if (v25 != 2)
        {
          return;
        }

        goto LABEL_102;
      }
    }

    v22 = *(a1 + v23);
    goto LABEL_99;
  }

  if (v7 != 6)
  {
    if (v7 == 7)
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v34 - 8) + 48))(a1, 1, v34))
      {
        return;
      }

      v35 = sub_21DBF563C();
      v10 = *(*(v35 - 8) + 8);
      v9 = v35;
      v11 = a1;
    }

    else
    {
      if (v7 != 8)
      {
        return;
      }

      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      v10 = *(*(v9 - 8) + 8);
      v11 = (a1 + v8);
    }

    goto LABEL_103;
  }

  v30 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v30 - 8) + 48))(a1, 1, v30))
  {

    v31 = *(v30 + 20);
    v32 = sub_21DBF6C1C();
    (*(*(v32 - 8) + 8))(a1 + v31, v32);
  }

  v33 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v33 + 1))
  {

    v22 = *(v33 + 2);
    goto LABEL_99;
  }
}

void *sub_21D922108(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v33 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v34 = *(v33 - 8);
            if ((*(v34 + 48))(a2, 1, v33))
            {
              v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v35 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v64 = *(v33 + 20);
              v65 = sub_21DBF6C1C();
              v66 = *(*(v65 - 8) + 16);
              sub_21DBF8E0C();
              v66(a1 + v64, a2 + v64, v65);
              (*(v34 + 56))(a1, 0, 1, v33);
            }

            v67 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v68 = (a1 + v67);
            v69 = (a2 + v67);
            v70 = v69[1];
            if (v70)
            {
              *v68 = *v69;
              v68[1] = v70;
              v71 = v69[2];
              v68[2] = v71;
              sub_21DBF8E0C();
              v72 = v71;
            }

            else
            {
              *v68 = *v69;
              v68[2] = v69[2];
            }

            goto LABEL_236;
          case 7:
            v39 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v40 = *(v39 - 8);
            if ((*(v40 + 48))(a2, 1, v39))
            {
              v41 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v41 - 8) + 64));
            }

            else
            {
              v81 = sub_21DBF563C();
              (*(*(v81 - 8) + 16))(a1, a2, v81);
              *(a1 + *(v39 + 20)) = *(a2 + *(v39 + 20));
              (*(v40 + 56))(a1, 0, 1, v39);
            }

            v82 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v82 + 20)) = *(a2 + *(v82 + 20));
            goto LABEL_236;
          case 8:
            *a1 = *a2;
            v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v7 = sub_21DBF8D7C();
            (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
LABEL_236:
            swift_storeEnumTagMultiPayload();
            goto LABEL_237;
        }

LABEL_50:
        memcpy(a1, a2, *(*(v4 - 8) + 64));
LABEL_237:
        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);
        *(a1 + *(v206 + 48)) = *(a2 + *(v206 + 48));
        *(a1 + *(v206 + 64)) = *(a2 + *(v206 + 64));
        sub_21DBF8E0C();
        goto LABEL_265;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v23 = a2[2];
        a1[2] = v23;
        v24 = v23;
        goto LABEL_236;
      }

      v36 = *a2;
      *a1 = *a2;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      v37 = *(v20 + 48);
      v38 = v36;
      if (v37(a2 + v18, 1, v19))
      {
LABEL_43:
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v18, a2 + v18, *(*(v32 - 8) + 64));
        goto LABEL_236;
      }

      v73 = swift_getEnumCaseMultiPayload();
      if (v73 > 4)
      {
        if (v73 <= 7)
        {
          if (v73 == 5 || v73 == 6)
          {
            goto LABEL_185;
          }

          goto LABEL_234;
        }

        if (v73 != 8 && v73 != 9)
        {
          goto LABEL_234;
        }

LABEL_184:
        v153 = *(a2 + v18);
        *(a1 + v18) = v153;
        v154 = v153;
        swift_storeEnumTagMultiPayload();
LABEL_235:
        (*(v20 + 56))(a1 + v18, 0, 1, v19);
        goto LABEL_236;
      }

      if (v73 <= 2)
      {
        if (v73 != 1)
        {
          if (v73 == 2)
          {
            goto LABEL_185;
          }

LABEL_234:
          memcpy(a1 + v18, a2 + v18, *(v20 + 64));
          goto LABEL_235;
        }

        goto LABEL_184;
      }

LABEL_185:
      v155 = sub_21DBF563C();
      (*(*(v155 - 8) + 16))(a1 + v18, a2 + v18, v155);
      swift_storeEnumTagMultiPayload();
      goto LABEL_235;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v29 = *a2;
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v30 = *(v20 + 48);
        v31 = v29;
        if (v30(a2 + v18, 1, v19))
        {
          goto LABEL_43;
        }

        v54 = swift_getEnumCaseMultiPayload();
        if (v54 > 4)
        {
          if (v54 <= 7)
          {
            if (v54 == 5 || v54 == 6)
            {
              goto LABEL_185;
            }

            goto LABEL_234;
          }

          if (v54 != 8 && v54 != 9)
          {
            goto LABEL_234;
          }

          goto LABEL_184;
        }

        if (v54 > 2)
        {
          goto LABEL_185;
        }

        if (v54 == 1)
        {
          goto LABEL_184;
        }

        if (v54 != 2)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v17 = *a2;
        *a1 = *a2;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v21 = *(v20 + 48);
        v22 = v17;
        if (v21(a2 + v18, 1, v19))
        {
          goto LABEL_43;
        }

        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 4)
        {
          if (v51 <= 7)
          {
            if (v51 == 5 || v51 == 6)
            {
              goto LABEL_185;
            }

            goto LABEL_234;
          }

          if (v51 != 8 && v51 != 9)
          {
            goto LABEL_234;
          }

          goto LABEL_184;
        }

        if (v51 > 2)
        {
          goto LABEL_185;
        }

        if (v51 == 1)
        {
          goto LABEL_184;
        }

        if (v51 != 2)
        {
          goto LABEL_234;
        }
      }

      goto LABEL_185;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_50;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 <= 4)
      {
        if (v12 > 2)
        {
LABEL_99:
          v83 = sub_21DBF563C();
          (*(*(v83 - 8) + 16))(a1, a2, v83);
          swift_storeEnumTagMultiPayload();
          goto LABEL_155;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_99;
          }

          goto LABEL_154;
        }

LABEL_102:
        v84 = *a2;
        *a1 = *a2;
        v85 = v84;
        swift_storeEnumTagMultiPayload();
        goto LABEL_155;
      }

      if (v12 > 7)
      {
        if (v12 == 8 || v12 == 9)
        {
          goto LABEL_102;
        }
      }

      else if (v12 == 5 || v12 == 6)
      {
        goto LABEL_99;
      }

LABEL_154:
      memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_155:
      v104 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v105 = v104[5];
      v106 = a1 + v105;
      v107 = a2 + v105;
      v108 = *(a2 + v105 + 8);
      if (v108)
      {
        v217 = a2;
        v222 = a1;
        *v106 = *v107;
        *(v106 + 1) = v108;
        v109 = *(v107 + 2);
        v110 = *(v107 + 3);
        v111 = *(v107 + 4);
        v112 = *(v107 + 5);
        v113 = *(v107 + 6);
        v114 = *(v107 + 7);
        v115 = v107[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v109, v110, v111, v112, v113, v114, v115);
        *(v106 + 2) = v109;
        *(v106 + 3) = v110;
        *(v106 + 4) = v111;
        *(v106 + 5) = v112;
        *(v106 + 6) = v113;
        *(v106 + 7) = v114;
        v106[64] = v115;
        *(v106 + 65) = *(v107 + 65);
        v116 = v107[120];
        if (v116 == 255)
        {
          *(v106 + 72) = *(v107 + 72);
          *(v106 + 88) = *(v107 + 88);
          *(v106 + 104) = *(v107 + 104);
          v106[120] = v107[120];
        }

        else
        {
          v117 = *(v107 + 9);
          v118 = *(v107 + 10);
          v119 = *(v107 + 11);
          v120 = *(v107 + 12);
          v121 = *(v107 + 13);
          v122 = *(v107 + 14);
          v123 = v116 & 1;
          sub_21D0FB960(v117, v118, v119, v120, v121, v122, v116 & 1);
          *(v106 + 9) = v117;
          *(v106 + 10) = v118;
          *(v106 + 11) = v119;
          *(v106 + 12) = v120;
          *(v106 + 13) = v121;
          *(v106 + 14) = v122;
          v106[120] = v123;
        }

        v106[121] = v107[121];
        a2 = v217;
        a1 = v222;
        goto LABEL_161;
      }

LABEL_158:
      v124 = *(v107 + 5);
      *(v106 + 4) = *(v107 + 4);
      *(v106 + 5) = v124;
      *(v106 + 6) = *(v107 + 6);
      *(v106 + 106) = *(v107 + 106);
      v125 = *(v107 + 1);
      *v106 = *v107;
      *(v106 + 1) = v125;
      v126 = *(v107 + 3);
      *(v106 + 2) = *(v107 + 2);
      *(v106 + 3) = v126;
LABEL_161:
      *(a1 + v104[6]) = *(a2 + v104[6]);
      *(a1 + v104[7]) = *(a2 + v104[7]);
      *(a1 + v104[8]) = *(a2 + v104[8]);
      *(a1 + v104[9]) = *(a2 + v104[9]);
      *(a1 + v104[10]) = *(a2 + v104[10]);
      v127 = v104[11];
      v128 = *(a2 + v127);
      *(a1 + v127) = v128;
      v129 = v128;
      goto LABEL_236;
    }

    v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v28 = swift_getEnumCaseMultiPayload();
    if (v28 <= 4)
    {
      if (v28 > 2)
      {
LABEL_103:
        v86 = sub_21DBF563C();
        (*(*(v86 - 8) + 16))(a1, a2, v86);
        swift_storeEnumTagMultiPayload();
        goto LABEL_163;
      }

      if (v28 != 1)
      {
        if (v28 == 2)
        {
          goto LABEL_103;
        }

        goto LABEL_162;
      }

LABEL_106:
      v87 = *a2;
      *a1 = *a2;
      v88 = v87;
      swift_storeEnumTagMultiPayload();
      goto LABEL_163;
    }

    if (v28 > 7)
    {
      if (v28 == 8 || v28 == 9)
      {
        goto LABEL_106;
      }
    }

    else if (v28 == 5 || v28 == 6)
    {
      goto LABEL_103;
    }

LABEL_162:
    memcpy(a1, a2, *(*(v27 - 8) + 64));
LABEL_163:
    v104 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v130 = v104[5];
    v106 = a1 + v130;
    v107 = a2 + v130;
    v131 = *(a2 + v130 + 8);
    if (v131)
    {
      v218 = a2;
      v223 = a1;
      *v106 = *v107;
      *(v106 + 1) = v131;
      v132 = *(v107 + 2);
      v133 = *(v107 + 3);
      v134 = *(v107 + 4);
      v135 = *(v107 + 5);
      v136 = *(v107 + 6);
      v137 = *(v107 + 7);
      v138 = v107[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v132, v133, v134, v135, v136, v137, v138);
      *(v106 + 2) = v132;
      *(v106 + 3) = v133;
      *(v106 + 4) = v134;
      *(v106 + 5) = v135;
      *(v106 + 6) = v136;
      *(v106 + 7) = v137;
      v106[64] = v138;
      *(v106 + 65) = *(v107 + 65);
      v139 = v107[120];
      if (v139 == 255)
      {
        *(v106 + 72) = *(v107 + 72);
        *(v106 + 88) = *(v107 + 88);
        *(v106 + 104) = *(v107 + 104);
        v106[120] = v107[120];
      }

      else
      {
        v140 = *(v107 + 9);
        v141 = *(v107 + 10);
        v142 = *(v107 + 11);
        v143 = *(v107 + 12);
        v144 = *(v107 + 13);
        v145 = *(v107 + 14);
        v146 = v139 & 1;
        sub_21D0FB960(v140, v141, v142, v143, v144, v145, v139 & 1);
        *(v106 + 9) = v140;
        *(v106 + 10) = v141;
        *(v106 + 11) = v142;
        *(v106 + 12) = v143;
        *(v106 + 13) = v144;
        *(v106 + 14) = v145;
        v106[120] = v146;
      }

      v106[121] = v107[121];
      a2 = v218;
      a1 = v223;
      goto LABEL_161;
    }

    goto LABEL_158;
  }

  v8 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a2, 1, v8))
  {
    v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 3)
    {
      if (v14 > 5)
      {
        switch(v14)
        {
          case 6:
            v61 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v62 = *(v61 - 8);
            if ((*(v62 + 48))(a2, 1, v61))
            {
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v63 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v228 = v9;
              v91 = *(v61 + 20);
              v92 = sub_21DBF6C1C();
              v221 = *(*(v92 - 8) + 16);
              sub_21DBF8E0C();
              v93 = a1 + v91;
              v94 = a2 + v91;
              v9 = v228;
              v221(v93, v94, v92);
              (*(v62 + 56))(a1, 0, 1, v61);
            }

            v95 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v96 = (a1 + v95);
            v97 = (a2 + v95);
            v98 = v97[1];
            if (v98)
            {
              *v96 = *v97;
              v96[1] = v98;
              v99 = v97[2];
              v96[2] = v99;
              sub_21DBF8E0C();
              v100 = v99;
            }

            else
            {
              *v96 = *v97;
              v96[2] = v97[2];
            }

            goto LABEL_263;
          case 7:
            v78 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v79 = *(v78 - 8);
            if ((*(v79 + 48))(a2, 1, v78))
            {
              v80 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v80 - 8) + 64));
            }

            else
            {
              v102 = sub_21DBF563C();
              (*(*(v102 - 8) + 16))(a1, a2, v102);
              *(a1 + *(v78 + 20)) = *(a2 + *(v78 + 20));
              (*(v79 + 56))(a1, 0, 1, v78);
            }

            v103 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v103 + 20)) = *(a2 + *(v103 + 20));
            goto LABEL_263;
          case 8:
            *a1 = *a2;
            v15 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v16 = sub_21DBF8D7C();
            (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
LABEL_263:
            swift_storeEnumTagMultiPayload();
            goto LABEL_264;
        }

        goto LABEL_98;
      }

      if (v14 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v49 = a2[2];
        a1[2] = v49;
        v50 = v49;
        goto LABEL_263;
      }

      v227 = v9;
      v74 = *a2;
      *a1 = *a2;
      v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v58 = *(v57 - 8);
      v75 = *(v58 + 48);
      v76 = v74;
      if (v75(a2 + v56, 1, v57))
      {
LABEL_93:
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v56, a2 + v56, *(*(v77 - 8) + 64));
        v9 = v227;
        goto LABEL_263;
      }

      v101 = swift_getEnumCaseMultiPayload();
      if (v101 > 4)
      {
        if (v101 <= 7)
        {
          if (v101 == 5 || v101 == 6)
          {
            goto LABEL_246;
          }

          goto LABEL_261;
        }

        if (v101 != 8 && v101 != 9)
        {
          goto LABEL_261;
        }

LABEL_249:
        v211 = *(a2 + v56);
        *(a1 + v56) = v211;
        v212 = v211;
        swift_storeEnumTagMultiPayload();
        goto LABEL_262;
      }

      if (v101 <= 2)
      {
        if (v101 != 1)
        {
          if (v101 == 2)
          {
            goto LABEL_246;
          }

LABEL_261:
          memcpy(a1 + v56, a2 + v56, *(v58 + 64));
          goto LABEL_262;
        }

        goto LABEL_249;
      }

LABEL_246:
      v210 = sub_21DBF563C();
      (*(*(v210 - 8) + 16))(a1 + v56, a2 + v56, v210);
      swift_storeEnumTagMultiPayload();
LABEL_262:
      (*(v58 + 56))(a1 + v56, 0, 1, v57);
      goto LABEL_263;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
LABEL_98:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
LABEL_264:
          *(a1 + *(v8 + 20)) = *(a2 + *(v8 + 20));
          (*(v9 + 56))(a1, 0, 1, v8);
          goto LABEL_265;
        }

        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = swift_getEnumCaseMultiPayload();
        v226 = v9;
        v216 = v8;
        if (v26 > 4)
        {
          if (v26 <= 7)
          {
            if (v26 == 5 || v26 == 6)
            {
              goto LABEL_169;
            }

            goto LABEL_216;
          }

          if (v26 != 8 && v26 != 9)
          {
            goto LABEL_216;
          }
        }

        else
        {
          if (v26 > 2)
          {
LABEL_169:
            v147 = sub_21DBF563C();
            (*(*(v147 - 8) + 16))(a1, a2, v147);
            swift_storeEnumTagMultiPayload();
LABEL_217:
            v156 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v157 = v156[5];
            v158 = a1 + v157;
            v159 = a2 + v157;
            v160 = *(a2 + v157 + 8);
            if (v160)
            {
              v219 = a2;
              v224 = a1;
              *v158 = *v159;
              *(v158 + 1) = v160;
              v161 = *(v159 + 2);
              v162 = *(v159 + 3);
              v163 = *(v159 + 4);
              v164 = *(v159 + 5);
              v166 = *(v159 + 6);
              v165 = *(v159 + 7);
              v167 = v159[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v161, v162, v163, v164, v166, v165, v167);
              *(v158 + 2) = v161;
              *(v158 + 3) = v162;
              *(v158 + 4) = v163;
              *(v158 + 5) = v164;
              *(v158 + 6) = v166;
              *(v158 + 7) = v165;
              v158[64] = v167;
              *(v158 + 65) = *(v159 + 65);
              v168 = v159[120];
              if (v168 == 255)
              {
                *(v158 + 72) = *(v159 + 72);
                *(v158 + 88) = *(v159 + 88);
                *(v158 + 104) = *(v159 + 104);
                v158[120] = v159[120];
              }

              else
              {
                v169 = *(v159 + 9);
                v170 = *(v159 + 10);
                v171 = *(v159 + 11);
                v172 = *(v159 + 12);
                v173 = *(v159 + 13);
                v174 = *(v159 + 14);
                v175 = v168 & 1;
                sub_21D0FB960(v169, v170, v171, v172, v173, v174, v168 & 1);
                *(v158 + 9) = v169;
                *(v158 + 10) = v170;
                *(v158 + 11) = v171;
                *(v158 + 12) = v172;
                *(v158 + 13) = v173;
                *(v158 + 14) = v174;
                v158[120] = v175;
              }

              v8 = v216;
              a2 = v219;
              v158[121] = v159[121];
              a1 = v224;
            }

            else
            {
              v176 = *(v159 + 5);
              *(v158 + 4) = *(v159 + 4);
              *(v158 + 5) = v176;
              *(v158 + 6) = *(v159 + 6);
              *(v158 + 106) = *(v159 + 106);
              v177 = *(v159 + 1);
              *v158 = *v159;
              *(v158 + 1) = v177;
              v178 = *(v159 + 3);
              *(v158 + 2) = *(v159 + 2);
              *(v158 + 3) = v178;
            }

            *(a1 + v156[6]) = *(a2 + v156[6]);
            *(a1 + v156[7]) = *(a2 + v156[7]);
            *(a1 + v156[8]) = *(a2 + v156[8]);
            *(a1 + v156[9]) = *(a2 + v156[9]);
            *(a1 + v156[10]) = *(a2 + v156[10]);
            v179 = v156[11];
            v180 = *(a2 + v179);
            *(a1 + v179) = v180;
            v181 = v180;
LABEL_233:
            swift_storeEnumTagMultiPayload();
            v9 = v226;
            goto LABEL_264;
          }

          if (v26 != 1)
          {
            if (v26 == 2)
            {
              goto LABEL_169;
            }

LABEL_216:
            memcpy(a1, a2, *(*(v25 - 8) + 64));
            goto LABEL_217;
          }
        }

        v148 = *a2;
        *a1 = *a2;
        v149 = v148;
        swift_storeEnumTagMultiPayload();
        goto LABEL_217;
      }

      v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v53 = swift_getEnumCaseMultiPayload();
      v226 = v9;
      if (v53 > 4)
      {
        if (v53 <= 7)
        {
          if (v53 == 5 || v53 == 6)
          {
            goto LABEL_177;
          }

          goto LABEL_225;
        }

        if (v53 != 8 && v53 != 9)
        {
          goto LABEL_225;
        }
      }

      else
      {
        if (v53 > 2)
        {
LABEL_177:
          v150 = sub_21DBF563C();
          (*(*(v150 - 8) + 16))(a1, a2, v150);
          swift_storeEnumTagMultiPayload();
LABEL_226:
          v182 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v183 = v182[5];
          v184 = a1 + v183;
          v185 = a2 + v183;
          v186 = *(a2 + v183 + 8);
          if (v186)
          {
            v220 = a2;
            v225 = a1;
            *v184 = *v185;
            *(v184 + 1) = v186;
            v187 = *(v185 + 2);
            v188 = *(v185 + 3);
            v190 = *(v185 + 4);
            v189 = *(v185 + 5);
            v192 = *(v185 + 6);
            v191 = *(v185 + 7);
            v214 = v185[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v187, v188, v190, v189, v192, v191, v214);
            *(v184 + 2) = v187;
            *(v184 + 3) = v188;
            *(v184 + 4) = v190;
            *(v184 + 5) = v189;
            *(v184 + 6) = v192;
            *(v184 + 7) = v191;
            v184[64] = v214;
            *(v184 + 65) = *(v185 + 65);
            v193 = v185[120];
            if (v193 == 255)
            {
              *(v184 + 72) = *(v185 + 72);
              *(v184 + 88) = *(v185 + 88);
              *(v184 + 104) = *(v185 + 104);
              v184[120] = v185[120];
            }

            else
            {
              v194 = *(v185 + 9);
              v215 = *(v185 + 10);
              v195 = *(v185 + 11);
              v196 = *(v185 + 12);
              v197 = *(v185 + 13);
              v198 = *(v185 + 14);
              v199 = v193 & 1;
              sub_21D0FB960(v194, v215, v195, v196, v197, v198, v193 & 1);
              *(v184 + 9) = v194;
              *(v184 + 10) = v215;
              *(v184 + 11) = v195;
              *(v184 + 12) = v196;
              *(v184 + 13) = v197;
              *(v184 + 14) = v198;
              v184[120] = v199;
            }

            v184[121] = v185[121];
            a2 = v220;
            a1 = v225;
          }

          else
          {
            v200 = *(v185 + 5);
            *(v184 + 4) = *(v185 + 4);
            *(v184 + 5) = v200;
            *(v184 + 6) = *(v185 + 6);
            *(v184 + 106) = *(v185 + 106);
            v201 = *(v185 + 1);
            *v184 = *v185;
            *(v184 + 1) = v201;
            v202 = *(v185 + 3);
            *(v184 + 2) = *(v185 + 2);
            *(v184 + 3) = v202;
          }

          *(a1 + v182[6]) = *(a2 + v182[6]);
          *(a1 + v182[7]) = *(a2 + v182[7]);
          *(a1 + v182[8]) = *(a2 + v182[8]);
          *(a1 + v182[9]) = *(a2 + v182[9]);
          *(a1 + v182[10]) = *(a2 + v182[10]);
          v203 = v182[11];
          v204 = *(a2 + v203);
          *(a1 + v203) = v204;
          v205 = v204;
          goto LABEL_233;
        }

        if (v53 != 1)
        {
          if (v53 == 2)
          {
            goto LABEL_177;
          }

LABEL_225:
          memcpy(a1, a2, *(*(v52 - 8) + 64));
          goto LABEL_226;
        }
      }

      v151 = *a2;
      *a1 = *a2;
      v152 = v151;
      swift_storeEnumTagMultiPayload();
      goto LABEL_226;
    }

    if (v14 == 2)
    {
      v227 = v9;
      v55 = *a2;
      *a1 = *a2;
      v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v58 = *(v57 - 8);
      v59 = *(v58 + 48);
      v60 = v55;
      if (v59(a2 + v56, 1, v57))
      {
        goto LABEL_93;
      }

      v90 = swift_getEnumCaseMultiPayload();
      if (v90 > 4)
      {
        if (v90 <= 7)
        {
          if (v90 == 5 || v90 == 6)
          {
            goto LABEL_246;
          }

          goto LABEL_261;
        }

        if (v90 != 8 && v90 != 9)
        {
          goto LABEL_261;
        }

        goto LABEL_249;
      }

      if (v90 > 2)
      {
        goto LABEL_246;
      }

      if (v90 == 1)
      {
        goto LABEL_249;
      }

      if (v90 != 2)
      {
        goto LABEL_261;
      }

      goto LABEL_246;
    }

    v42 = *a2;
    *a1 = *a2;
    v43 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    v47 = v42;
    if (v46(a2 + v43, 1, v44))
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v43, a2 + v43, *(*(v48 - 8) + 64));
      goto LABEL_263;
    }

    v89 = swift_getEnumCaseMultiPayload();
    if (v89 > 4)
    {
      if (v89 <= 7)
      {
        if (v89 == 5 || v89 == 6)
        {
          goto LABEL_238;
        }

        goto LABEL_259;
      }

      if (v89 != 8 && v89 != 9)
      {
        goto LABEL_259;
      }
    }

    else
    {
      if (v89 > 2)
      {
LABEL_238:
        v207 = sub_21DBF563C();
        (*(*(v207 - 8) + 16))(a1 + v43, a2 + v43, v207);
        swift_storeEnumTagMultiPayload();
LABEL_260:
        (*(v45 + 56))(a1 + v43, 0, 1, v44);
        goto LABEL_263;
      }

      if (v89 != 1)
      {
        if (v89 == 2)
        {
          goto LABEL_238;
        }

LABEL_259:
        memcpy(a1 + v43, a2 + v43, *(v45 + 64));
        goto LABEL_260;
      }
    }

    v208 = *(a2 + v43);
    *(a1 + v43) = v208;
    v209 = v208;
    swift_storeEnumTagMultiPayload();
    goto LABEL_260;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90);
  memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_265:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_21D924E4C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a2;
    sub_21D91BA78(a1, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          switch(EnumCaseMultiPayload)
          {
            case 6:
              v33 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v34 = *(v33 - 8);
              if ((*(v34 + 48))(v3, 1, v33))
              {
                v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(a1, v3, *(*(v35 - 8) + 64));
              }

              else
              {
                *a1 = *v3;
                v64 = *(v33 + 20);
                v65 = sub_21DBF6C1C();
                v233 = *(*(v65 - 8) + 16);
                sub_21DBF8E0C();
                v233(a1 + v64, v3 + v64, v65);
                (*(v34 + 56))(a1, 0, 1, v33);
              }

              v66 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v67 = (a1 + v66);
              v68 = (v3 + v66);
              if (v68[1])
              {
                *v67 = *v68;
                v67[1] = v68[1];
                v69 = v68[2];
                v67[2] = v69;
                sub_21DBF8E0C();
                v70 = v69;
              }

              else
              {
                v71 = *v68;
                v67[2] = v68[2];
                *v67 = v71;
              }

              goto LABEL_236;
            case 7:
              v39 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v40 = *(v39 - 8);
              if ((*(v40 + 48))(v3, 1, v39))
              {
                v41 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, v3, *(*(v41 - 8) + 64));
              }

              else
              {
                v80 = sub_21DBF563C();
                (*(*(v80 - 8) + 16))(a1, v3, v80);
                *(a1 + *(v39 + 20)) = *(v3 + *(v39 + 20));
                (*(v40 + 56))(a1, 0, 1, v39);
              }

              v81 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v81 + 20)) = *(v3 + *(v81 + 20));
              goto LABEL_236;
            case 8:
              *a1 = *v3;
              v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v7 = sub_21DBF8D7C();
              (*(*(v7 - 8) + 16))(a1 + v6, v3 + v6, v7);
LABEL_236:
              swift_storeEnumTagMultiPayload();
              goto LABEL_237;
          }

LABEL_51:
          memcpy(a1, v3, *(*(v4 - 8) + 64));
LABEL_237:
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);
          *(a1 + *(v209 + 48)) = *(v3 + *(v209 + 48));
          *(a1 + *(v209 + 64)) = *(v3 + *(v209 + 64));
          sub_21DBF8E0C();
          goto LABEL_265;
        }

        if (EnumCaseMultiPayload != 4)
        {
          *a1 = *v3;
          *(a1 + 8) = *(v3 + 8);
          *(a1 + 9) = *(v3 + 9);
          *(a1 + 10) = *(v3 + 10);
          v23 = v3[2];
          a1[2] = v23;
          v24 = v23;
          goto LABEL_236;
        }

        v36 = *v3;
        *a1 = *v3;
        v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = *(v19 - 8);
        v37 = *(v20 + 48);
        v38 = v36;
        if (v37(v3 + v18, 1, v19))
        {
LABEL_44:
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v18, v3 + v18, *(*(v32 - 8) + 64));
          goto LABEL_236;
        }

        v72 = swift_getEnumCaseMultiPayload();
        if (v72 > 4)
        {
          if (v72 <= 7)
          {
            if (v72 == 5 || v72 == 6)
            {
              goto LABEL_186;
            }

            goto LABEL_234;
          }

          if (v72 != 8 && v72 != 9)
          {
            goto LABEL_234;
          }

LABEL_185:
          v154 = *(v3 + v18);
          *(a1 + v18) = v154;
          v155 = v154;
          swift_storeEnumTagMultiPayload();
LABEL_235:
          (*(v20 + 56))(a1 + v18, 0, 1, v19);
          goto LABEL_236;
        }

        if (v72 <= 2)
        {
          if (v72 != 1)
          {
            if (v72 == 2)
            {
              goto LABEL_186;
            }

LABEL_234:
            memcpy(a1 + v18, v3 + v18, *(v20 + 64));
            goto LABEL_235;
          }

          goto LABEL_185;
        }

LABEL_186:
        v156 = sub_21DBF563C();
        (*(*(v156 - 8) + 16))(a1 + v18, v3 + v18, v156);
        swift_storeEnumTagMultiPayload();
        goto LABEL_235;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v29 = *v3;
          *a1 = *v3;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          v30 = *(v20 + 48);
          v31 = v29;
          if (v30(v3 + v18, 1, v19))
          {
            goto LABEL_44;
          }

          v54 = swift_getEnumCaseMultiPayload();
          if (v54 > 4)
          {
            if (v54 <= 7)
            {
              if (v54 == 5 || v54 == 6)
              {
                goto LABEL_186;
              }

              goto LABEL_234;
            }

            if (v54 != 8 && v54 != 9)
            {
              goto LABEL_234;
            }

            goto LABEL_185;
          }

          if (v54 > 2)
          {
            goto LABEL_186;
          }

          if (v54 == 1)
          {
            goto LABEL_185;
          }

          if (v54 != 2)
          {
            goto LABEL_234;
          }
        }

        else
        {
          v17 = *v3;
          *a1 = *v3;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          v21 = *(v20 + 48);
          v22 = v17;
          if (v21(v3 + v18, 1, v19))
          {
            goto LABEL_44;
          }

          v51 = swift_getEnumCaseMultiPayload();
          if (v51 > 4)
          {
            if (v51 <= 7)
            {
              if (v51 == 5 || v51 == 6)
              {
                goto LABEL_186;
              }

              goto LABEL_234;
            }

            if (v51 != 8 && v51 != 9)
            {
              goto LABEL_234;
            }

            goto LABEL_185;
          }

          if (v51 > 2)
          {
            goto LABEL_186;
          }

          if (v51 == 1)
          {
            goto LABEL_185;
          }

          if (v51 != 2)
          {
            goto LABEL_234;
          }
        }

        goto LABEL_186;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_51;
        }

        v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v12 = swift_getEnumCaseMultiPayload();
        if (v12 <= 4)
        {
          if (v12 > 2)
          {
LABEL_100:
            v82 = sub_21DBF563C();
            (*(*(v82 - 8) + 16))(a1, v3, v82);
            swift_storeEnumTagMultiPayload();
            goto LABEL_156;
          }

          if (v12 != 1)
          {
            if (v12 == 2)
            {
              goto LABEL_100;
            }

            goto LABEL_155;
          }

LABEL_103:
          v83 = *v3;
          *a1 = *v3;
          v84 = v83;
          swift_storeEnumTagMultiPayload();
          goto LABEL_156;
        }

        if (v12 > 7)
        {
          if (v12 == 8 || v12 == 9)
          {
            goto LABEL_103;
          }
        }

        else if (v12 == 5 || v12 == 6)
        {
          goto LABEL_100;
        }

LABEL_155:
        memcpy(a1, v3, *(*(v11 - 8) + 64));
LABEL_156:
        v102 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v103 = v102[5];
        v104 = a1 + v103;
        v105 = v3 + v103;
        if (*(v3 + v103 + 8))
        {
          v234 = v3;
          *v104 = *v105;
          *(v104 + 1) = *(v105 + 1);
          v106 = *(v105 + 2);
          v107 = *(v105 + 3);
          v108 = *(v105 + 4);
          v109 = *(v105 + 5);
          v111 = *(v105 + 6);
          v110 = *(v105 + 7);
          v229 = v105[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v106, v107, v108, v109, v111, v110, v229);
          *(v104 + 2) = v106;
          *(v104 + 3) = v107;
          *(v104 + 4) = v108;
          *(v104 + 5) = v109;
          *(v104 + 6) = v111;
          *(v104 + 7) = v110;
          v104[64] = v229;
          v104[65] = v105[65];
          v104[66] = v105[66];
          v104[67] = v105[67];
          v104[68] = v105[68];
          v112 = v105[120];
          if (v112 == 255)
          {
            v125 = *(v105 + 72);
            v126 = *(v105 + 88);
            v127 = *(v105 + 104);
            v104[120] = v105[120];
            *(v104 + 104) = v127;
            *(v104 + 88) = v126;
            *(v104 + 72) = v125;
          }

          else
          {
            v113 = *(v105 + 9);
            v230 = *(v105 + 10);
            v114 = *(v105 + 11);
            v115 = *(v105 + 12);
            v116 = *(v105 + 13);
            v117 = *(v105 + 14);
            v118 = v112 & 1;
            sub_21D0FB960(v113, v230, v114, v115, v116, v117, v112 & 1);
            *(v104 + 9) = v113;
            *(v104 + 10) = v230;
            *(v104 + 11) = v114;
            *(v104 + 12) = v115;
            *(v104 + 13) = v116;
            *(v104 + 14) = v117;
            v104[120] = v118;
          }

          v104[121] = v105[121];
          v3 = v234;
          goto LABEL_162;
        }

LABEL_159:
        v119 = *v105;
        v120 = *(v105 + 1);
        v121 = *(v105 + 3);
        *(v104 + 2) = *(v105 + 2);
        *(v104 + 3) = v121;
        *v104 = v119;
        *(v104 + 1) = v120;
        v122 = *(v105 + 4);
        v123 = *(v105 + 5);
        v124 = *(v105 + 6);
        *(v104 + 106) = *(v105 + 106);
        *(v104 + 5) = v123;
        *(v104 + 6) = v124;
        *(v104 + 4) = v122;
LABEL_162:
        *(a1 + v102[6]) = *(v3 + v102[6]);
        *(a1 + v102[7]) = *(v3 + v102[7]);
        *(a1 + v102[8]) = *(v3 + v102[8]);
        *(a1 + v102[9]) = *(v3 + v102[9]);
        *(a1 + v102[10]) = *(v3 + v102[10]);
        v128 = v102[11];
        v129 = *(v3 + v128);
        *(a1 + v128) = v129;
        v130 = v129;
        goto LABEL_236;
      }

      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = swift_getEnumCaseMultiPayload();
      if (v28 <= 4)
      {
        if (v28 > 2)
        {
LABEL_104:
          v85 = sub_21DBF563C();
          (*(*(v85 - 8) + 16))(a1, v3, v85);
          swift_storeEnumTagMultiPayload();
          goto LABEL_164;
        }

        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_104;
          }

          goto LABEL_163;
        }

LABEL_107:
        v86 = *v3;
        *a1 = *v3;
        v87 = v86;
        swift_storeEnumTagMultiPayload();
        goto LABEL_164;
      }

      if (v28 > 7)
      {
        if (v28 == 8 || v28 == 9)
        {
          goto LABEL_107;
        }
      }

      else if (v28 == 5 || v28 == 6)
      {
        goto LABEL_104;
      }

LABEL_163:
      memcpy(a1, v3, *(*(v27 - 8) + 64));
LABEL_164:
      v102 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v131 = v102[5];
      v104 = a1 + v131;
      v105 = v3 + v131;
      if (*(v3 + v131 + 8))
      {
        v235 = v3;
        *v104 = *v105;
        *(v104 + 1) = *(v105 + 1);
        v132 = *(v105 + 2);
        v133 = *(v105 + 3);
        v134 = *(v105 + 4);
        v135 = *(v105 + 5);
        v136 = *(v105 + 6);
        v137 = *(v105 + 7);
        v231 = v105[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v132, v133, v134, v135, v136, v137, v231);
        *(v104 + 2) = v132;
        *(v104 + 3) = v133;
        *(v104 + 4) = v134;
        *(v104 + 5) = v135;
        *(v104 + 6) = v136;
        *(v104 + 7) = v137;
        v104[64] = v231;
        v104[65] = v105[65];
        v104[66] = v105[66];
        v104[67] = v105[67];
        v104[68] = v105[68];
        v138 = v105[120];
        if (v138 == 255)
        {
          v145 = *(v105 + 72);
          v146 = *(v105 + 88);
          v147 = *(v105 + 104);
          v104[120] = v105[120];
          *(v104 + 104) = v147;
          *(v104 + 88) = v146;
          *(v104 + 72) = v145;
        }

        else
        {
          v139 = *(v105 + 9);
          v232 = *(v105 + 10);
          v140 = *(v105 + 11);
          v141 = *(v105 + 12);
          v142 = *(v105 + 13);
          v143 = *(v105 + 14);
          v144 = v138 & 1;
          sub_21D0FB960(v139, v232, v140, v141, v142, v143, v138 & 1);
          *(v104 + 9) = v139;
          *(v104 + 10) = v232;
          *(v104 + 11) = v140;
          *(v104 + 12) = v141;
          *(v104 + 13) = v142;
          *(v104 + 14) = v143;
          v104[120] = v144;
        }

        v104[121] = v105[121];
        v3 = v235;
        goto LABEL_162;
      }

      goto LABEL_159;
    }

    v8 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90);
      memcpy(a1, v3, *(*(v10 - 8) + 64));
LABEL_265:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 3)
    {
      if (v14 > 5)
      {
        switch(v14)
        {
          case 6:
            v61 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v62 = *(v61 - 8);
            if ((*(v62 + 48))(v3, 1, v61))
            {
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v3, *(*(v63 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v91 = *(v61 + 20);
              v92 = sub_21DBF6C1C();
              v223 = *(*(v92 - 8) + 16);
              sub_21DBF8E0C();
              v223(a1 + v91, v3 + v91, v92);
              (*(v62 + 56))(a1, 0, 1, v61);
            }

            v93 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v94 = (a1 + v93);
            v95 = (v3 + v93);
            if (v95[1])
            {
              *v94 = *v95;
              v94[1] = v95[1];
              v96 = v95[2];
              v94[2] = v96;
              sub_21DBF8E0C();
              v97 = v96;
            }

            else
            {
              v98 = *v95;
              v94[2] = v95[2];
              *v94 = v98;
            }

            goto LABEL_263;
          case 7:
            v77 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v78 = *(v77 - 8);
            if ((*(v78 + 48))(v3, 1, v77))
            {
              v79 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v79 - 8) + 64));
            }

            else
            {
              v100 = sub_21DBF563C();
              (*(*(v100 - 8) + 16))(a1, v3, v100);
              *(a1 + *(v77 + 20)) = *(v3 + *(v77 + 20));
              (*(v78 + 56))(a1, 0, 1, v77);
            }

            v101 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v101 + 20)) = *(v3 + *(v101 + 20));
            goto LABEL_263;
          case 8:
            *a1 = *v3;
            v15 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v16 = sub_21DBF8D7C();
            (*(*(v16 - 8) + 16))(a1 + v15, v3 + v15, v16);
LABEL_263:
            swift_storeEnumTagMultiPayload();
            goto LABEL_264;
        }

LABEL_99:
        memcpy(a1, v3, *(*(v13 - 8) + 64));
LABEL_264:
        *(a1 + *(v8 + 20)) = *(v3 + *(v8 + 20));
        (*(v9 + 56))(a1, 0, 1, v8);
        goto LABEL_265;
      }

      if (v14 != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        *(a1 + 10) = *(v3 + 10);
        v49 = v3[2];
        a1[2] = v49;
        v50 = v49;
        goto LABEL_263;
      }

      v239 = v9;
      v73 = *v3;
      *a1 = *v3;
      v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v58 = *(v57 - 8);
      v74 = *(v58 + 48);
      v75 = v73;
      if (v74(v3 + v56, 1, v57))
      {
LABEL_94:
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v56, v3 + v56, *(*(v76 - 8) + 64));
        v9 = v239;
        goto LABEL_263;
      }

      v99 = swift_getEnumCaseMultiPayload();
      v9 = v239;
      if (v99 > 4)
      {
        if (v99 <= 7)
        {
          if (v99 == 5 || v99 == 6)
          {
            goto LABEL_246;
          }

          goto LABEL_261;
        }

        if (v99 != 8 && v99 != 9)
        {
          goto LABEL_261;
        }

LABEL_249:
        v214 = *(v3 + v56);
        *(a1 + v56) = v214;
        v215 = v214;
        swift_storeEnumTagMultiPayload();
        goto LABEL_262;
      }

      if (v99 <= 2)
      {
        if (v99 != 1)
        {
          if (v99 == 2)
          {
            goto LABEL_246;
          }

LABEL_261:
          memcpy(a1 + v56, v3 + v56, *(v58 + 64));
          goto LABEL_262;
        }

        goto LABEL_249;
      }

LABEL_246:
      v213 = sub_21DBF563C();
      (*(*(v213 - 8) + 16))(a1 + v56, v3 + v56, v213);
      swift_storeEnumTagMultiPayload();
LABEL_262:
      (*(v58 + 56))(a1 + v56, 0, 1, v57);
      goto LABEL_263;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_99;
        }

        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = swift_getEnumCaseMultiPayload();
        v236 = v9;
        v228 = v8;
        if (v26 > 4)
        {
          if (v26 <= 7)
          {
            if (v26 == 5 || v26 == 6)
            {
              goto LABEL_170;
            }

            goto LABEL_217;
          }

          if (v26 != 8 && v26 != 9)
          {
            goto LABEL_217;
          }
        }

        else
        {
          if (v26 > 2)
          {
LABEL_170:
            v148 = sub_21DBF563C();
            (*(*(v148 - 8) + 16))(a1, v3, v148);
            swift_storeEnumTagMultiPayload();
LABEL_218:
            v157 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v158 = v157[5];
            v159 = a1 + v158;
            v160 = v3 + v158;
            if (*(v3 + v158 + 8))
            {
              *v159 = *v160;
              *(v159 + 1) = *(v160 + 1);
              v161 = *(v160 + 2);
              v162 = *(v160 + 3);
              v163 = *(v160 + 4);
              v164 = *(v160 + 5);
              v165 = *(v160 + 6);
              v219 = *(v160 + 7);
              v224 = v160[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v161, v162, v163, v164, v165, v219, v224);
              *(v159 + 2) = v161;
              *(v159 + 3) = v162;
              *(v159 + 4) = v163;
              *(v159 + 5) = v164;
              *(v159 + 6) = v165;
              *(v159 + 7) = v219;
              v159[64] = v224;
              v159[65] = v160[65];
              v159[66] = v160[66];
              v159[67] = v160[67];
              v159[68] = v160[68];
              v166 = v160[120];
              if (v166 == 255)
              {
                v178 = *(v160 + 72);
                v179 = *(v160 + 88);
                v180 = *(v160 + 104);
                v159[120] = v160[120];
                *(v159 + 104) = v180;
                *(v159 + 88) = v179;
                *(v159 + 72) = v178;
              }

              else
              {
                v167 = *(v160 + 9);
                v168 = *(v160 + 11);
                v169 = *(v160 + 12);
                v170 = *(v160 + 13);
                v220 = *(v160 + 14);
                v225 = *(v160 + 10);
                v171 = v166 & 1;
                sub_21D0FB960(v167, v225, v168, v169, v170, v220, v166 & 1);
                *(v159 + 9) = v167;
                *(v159 + 10) = v225;
                *(v159 + 11) = v168;
                *(v159 + 12) = v169;
                *(v159 + 13) = v170;
                *(v159 + 14) = v220;
                v159[120] = v171;
              }

              v9 = v236;
              v8 = v228;
              v159[121] = v160[121];
            }

            else
            {
              v172 = *v160;
              v173 = *(v160 + 1);
              v174 = *(v160 + 3);
              *(v159 + 2) = *(v160 + 2);
              *(v159 + 3) = v174;
              *v159 = v172;
              *(v159 + 1) = v173;
              v175 = *(v160 + 4);
              v176 = *(v160 + 5);
              v177 = *(v160 + 6);
              *(v159 + 106) = *(v160 + 106);
              *(v159 + 5) = v176;
              *(v159 + 6) = v177;
              *(v159 + 4) = v175;
            }

            *(a1 + v157[6]) = *(v3 + v157[6]);
            *(a1 + v157[7]) = *(v3 + v157[7]);
            *(a1 + v157[8]) = *(v3 + v157[8]);
            *(a1 + v157[9]) = *(v3 + v157[9]);
            *(a1 + v157[10]) = *(v3 + v157[10]);
            v181 = v157[11];
            v182 = *(v3 + v181);
            *(a1 + v181) = v182;
            v183 = v182;
            goto LABEL_263;
          }

          if (v26 != 1)
          {
            if (v26 == 2)
            {
              goto LABEL_170;
            }

LABEL_217:
            memcpy(a1, v3, *(*(v25 - 8) + 64));
            goto LABEL_218;
          }
        }

        v149 = *v3;
        *a1 = *v3;
        v150 = v149;
        swift_storeEnumTagMultiPayload();
        goto LABEL_218;
      }

      v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v53 = swift_getEnumCaseMultiPayload();
      v238 = v9;
      if (v53 > 4)
      {
        if (v53 <= 7)
        {
          if (v53 == 5 || v53 == 6)
          {
            goto LABEL_178;
          }

          goto LABEL_226;
        }

        if (v53 != 8 && v53 != 9)
        {
          goto LABEL_226;
        }
      }

      else
      {
        if (v53 > 2)
        {
LABEL_178:
          v151 = sub_21DBF563C();
          (*(*(v151 - 8) + 16))(a1, v3, v151);
          swift_storeEnumTagMultiPayload();
LABEL_227:
          v184 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v185 = v184[5];
          v186 = a1 + v185;
          v187 = v3 + v185;
          if (*(v3 + v185 + 8))
          {
            *v186 = *v187;
            *(v186 + 1) = *(v187 + 1);
            v188 = *(v187 + 2);
            v189 = *(v187 + 3);
            v191 = *(v187 + 4);
            v190 = *(v187 + 5);
            v226 = *(v187 + 6);
            v217 = *(v187 + 7);
            v221 = v187[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v188, v189, v191, v190, v226, v217, v221);
            *(v186 + 2) = v188;
            *(v186 + 3) = v189;
            *(v186 + 4) = v191;
            *(v186 + 5) = v190;
            *(v186 + 6) = v226;
            *(v186 + 7) = v217;
            v186[64] = v221;
            v186[65] = v187[65];
            v186[66] = v187[66];
            v186[67] = v187[67];
            v186[68] = v187[68];
            v192 = v187[120];
            if (v192 == 255)
            {
              v203 = *(v187 + 72);
              v204 = *(v187 + 88);
              v205 = *(v187 + 104);
              v186[120] = v187[120];
              *(v186 + 104) = v205;
              *(v186 + 88) = v204;
              *(v186 + 72) = v203;
            }

            else
            {
              v222 = *(v187 + 10);
              v227 = *(v187 + 9);
              v193 = *(v187 + 11);
              v194 = *(v187 + 12);
              v195 = *(v187 + 13);
              v218 = *(v187 + 14);
              v196 = v192 & 1;
              sub_21D0FB960(v227, v222, v193, v194, v195, v218, v192 & 1);
              *(v186 + 9) = v227;
              *(v186 + 10) = v222;
              *(v186 + 11) = v193;
              *(v186 + 12) = v194;
              *(v186 + 13) = v195;
              *(v186 + 14) = v218;
              v186[120] = v196;
            }

            v9 = v238;
            v186[121] = v187[121];
          }

          else
          {
            v197 = *v187;
            v198 = *(v187 + 1);
            v199 = *(v187 + 3);
            *(v186 + 2) = *(v187 + 2);
            *(v186 + 3) = v199;
            *v186 = v197;
            *(v186 + 1) = v198;
            v200 = *(v187 + 4);
            v201 = *(v187 + 5);
            v202 = *(v187 + 6);
            *(v186 + 106) = *(v187 + 106);
            *(v186 + 5) = v201;
            *(v186 + 6) = v202;
            *(v186 + 4) = v200;
          }

          *(a1 + v184[6]) = *(v3 + v184[6]);
          *(a1 + v184[7]) = *(v3 + v184[7]);
          *(a1 + v184[8]) = *(v3 + v184[8]);
          *(a1 + v184[9]) = *(v3 + v184[9]);
          *(a1 + v184[10]) = *(v3 + v184[10]);
          v206 = v184[11];
          v207 = *(v3 + v206);
          *(a1 + v206) = v207;
          v208 = v207;
          goto LABEL_263;
        }

        if (v53 != 1)
        {
          if (v53 == 2)
          {
            goto LABEL_178;
          }

LABEL_226:
          memcpy(a1, v3, *(*(v52 - 8) + 64));
          goto LABEL_227;
        }
      }

      v152 = *v3;
      *a1 = *v3;
      v153 = v152;
      swift_storeEnumTagMultiPayload();
      goto LABEL_227;
    }

    if (v14 == 2)
    {
      v239 = v9;
      v55 = *v3;
      *a1 = *v3;
      v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v58 = *(v57 - 8);
      v59 = *(v58 + 48);
      v60 = v55;
      if (v59(v3 + v56, 1, v57))
      {
        goto LABEL_94;
      }

      v90 = swift_getEnumCaseMultiPayload();
      v9 = v239;
      if (v90 > 4)
      {
        if (v90 <= 7)
        {
          if (v90 == 5 || v90 == 6)
          {
            goto LABEL_246;
          }

          goto LABEL_261;
        }

        if (v90 != 8 && v90 != 9)
        {
          goto LABEL_261;
        }

        goto LABEL_249;
      }

      if (v90 > 2)
      {
        goto LABEL_246;
      }

      if (v90 == 1)
      {
        goto LABEL_249;
      }

      if (v90 != 2)
      {
        goto LABEL_261;
      }

      goto LABEL_246;
    }

    v237 = v9;
    v42 = *v3;
    *a1 = *v3;
    v43 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    v47 = v42;
    if (v46(v3 + v43, 1, v44))
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v43, v3 + v43, *(*(v48 - 8) + 64));
      v9 = v237;
      goto LABEL_263;
    }

    v88 = swift_getEnumCaseMultiPayload();
    v89 = v44;
    if (v88 > 4)
    {
      v9 = v237;
      if (v88 <= 7)
      {
        if (v88 == 5 || v88 == 6)
        {
          goto LABEL_238;
        }

        goto LABEL_259;
      }

      if (v88 != 8 && v88 != 9)
      {
        goto LABEL_259;
      }
    }

    else
    {
      v9 = v237;
      if (v88 > 2)
      {
LABEL_238:
        v210 = sub_21DBF563C();
        (*(*(v210 - 8) + 16))(a1 + v43, v3 + v43, v210);
        swift_storeEnumTagMultiPayload();
LABEL_260:
        (*(v45 + 56))(a1 + v43, 0, 1, v89);
        goto LABEL_263;
      }

      if (v88 != 1)
      {
        if (v88 == 2)
        {
          goto LABEL_238;
        }

LABEL_259:
        memcpy(a1 + v43, v3 + v43, *(v45 + 64));
        goto LABEL_260;
      }
    }

    v211 = *(v3 + v43);
    *(a1 + v43) = v211;
    v212 = v211;
    swift_storeEnumTagMultiPayload();
    goto LABEL_260;
  }

  return a1;
}

_BYTE *sub_21D927C94(_BYTE *a1, _BYTE *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v30 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(a2, 1, v30))
          {
            v32 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v32 - 8) + 64));
          }

          else
          {
            v41 = sub_21DBF563C();
            (*(*(v41 - 8) + 32))(a1, a2, v41);
            a1[*(v30 + 20)] = a2[*(v30 + 20)];
            (*(v31 + 56))(a1, 0, 1, v30);
          }

          v42 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v42 + 20)] = *&a2[*(v42 + 20)];
          goto LABEL_158;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_49;
        }

        *a1 = *a2;
        v23 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v24 = sub_21DBF8D7C();
        (*(*(v24 - 8) + 32))(&a1[v23], &a2[v23], v24);
LABEL_158:
        swift_storeEnumTagMultiPayload();
        goto LABEL_159;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v13 = *(v12 - 8);
          if ((*(v13 + 48))(a2, 1, v12))
          {
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v14 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v47 = *(v12 + 20);
            v48 = sub_21DBF6C1C();
            (*(*(v48 - 8) + 32))(&a1[v47], &a2[v47], v48);
            (*(v13 + 56))(a1, 0, 1, v12);
          }

          v49 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v50 = &a1[v49];
          v51 = &a2[v49];
          *v50 = *v51;
          *(v50 + 2) = *(v51 + 2);
          goto LABEL_158;
        }

        goto LABEL_49;
      }

      *a1 = *a2;
      v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(&a2[v20], 1, v21))
      {
        v39 = swift_getEnumCaseMultiPayload();
        if (v39 <= 3)
        {
          if (v39 == 2 || v39 == 3)
          {
            goto LABEL_91;
          }
        }

        else if (v39 == 4 || v39 == 5 || v39 == 6)
        {
          goto LABEL_91;
        }

        goto LABEL_156;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v28 = swift_getEnumCaseMultiPayload();
          if (v28 <= 3)
          {
            if (v28 == 2 || v28 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v28 == 4 || v28 == 5 || v28 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_99;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v7 = swift_getEnumCaseMultiPayload();
          if (v7 <= 3)
          {
            if (v7 == 2 || v7 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v7 == 4 || v7 == 5 || v7 == 6)
          {
LABEL_10:
            v8 = sub_21DBF563C();
            (*(*(v8 - 8) + 32))(a1, a2, v8);
            swift_storeEnumTagMultiPayload();
LABEL_100:
            v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v55 = v54[5];
            v56 = &a1[v55];
            v57 = &a2[v55];
            v58 = v57[3];
            v56[2] = v57[2];
            v56[3] = v58;
            v59 = v57[1];
            *v56 = *v57;
            v56[1] = v59;
            *(v56 + 106) = *(v57 + 106);
            v60 = v57[6];
            v56[5] = v57[5];
            v56[6] = v60;
            v56[4] = v57[4];
            a1[v54[6]] = a2[v54[6]];
            a1[v54[7]] = a2[v54[7]];
            a1[v54[8]] = a2[v54[8]];
            a1[v54[9]] = a2[v54[9]];
            a1[v54[10]] = a2[v54[10]];
            *&a1[v54[11]] = *&a2[v54[11]];
            goto LABEL_158;
          }

LABEL_99:
          memcpy(a1, a2, *(*(v6 - 8) + 64));
          goto LABEL_100;
        }

LABEL_49:
        memcpy(a1, a2, *(*(v4 - 8) + 64));
LABEL_159:
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);
        *&a1[*(v79 + 48)] = *&a2[*(v79 + 48)];
        *&a1[*(v79 + 64)] = *&a2[*(v79 + 64)];
        goto LABEL_182;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(&a2[v20], 1, v21))
        {
          goto LABEL_46;
        }

        v52 = swift_getEnumCaseMultiPayload();
        if (v52 <= 3)
        {
          if (v52 == 2 || v52 == 3)
          {
            goto LABEL_91;
          }
        }

        else if (v52 == 4 || v52 == 5 || v52 == 6)
        {
LABEL_91:
          v53 = sub_21DBF563C();
          (*(*(v53 - 8) + 32))(&a1[v20], &a2[v20], v53);
          swift_storeEnumTagMultiPayload();
LABEL_157:
          (*(v22 + 56))(&a1[v20], 0, 1, v21);
          goto LABEL_158;
        }

LABEL_156:
        memcpy(&a1[v20], &a2[v20], *(v22 + 64));
        goto LABEL_157;
      }

      *a1 = *a2;
      v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(&a2[v20], 1, v21))
      {
        v40 = swift_getEnumCaseMultiPayload();
        if (v40 <= 3)
        {
          if (v40 == 2 || v40 == 3)
          {
            goto LABEL_91;
          }
        }

        else if (v40 == 4 || v40 == 5 || v40 == 6)
        {
          goto LABEL_91;
        }

        goto LABEL_156;
      }
    }

LABEL_46:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v20], &a2[v20], *(*(v29 - 8) + 64));
    goto LABEL_158;
  }

  v9 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a2, 1, v9))
  {
    v15 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 3)
    {
      if (v16 > 6)
      {
        if (v16 == 7)
        {
          v44 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v45 = *(v44 - 8);
          if ((*(v45 + 48))(a2, 1, v44))
          {
            v46 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v46 - 8) + 64));
          }

          else
          {
            v63 = sub_21DBF563C();
            (*(*(v63 - 8) + 32))(a1, a2, v63);
            a1[*(v44 + 20)] = a2[*(v44 + 20)];
            (*(v45 + 56))(a1, 0, 1, v44);
          }

          v64 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v64 + 20)] = *&a2[*(v64 + 20)];
          goto LABEL_180;
        }

        if (v16 != 8)
        {
          goto LABEL_92;
        }

        *a1 = *a2;
        v36 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v37 = sub_21DBF8D7C();
        (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
LABEL_180:
        swift_storeEnumTagMultiPayload();
        goto LABEL_181;
      }

      if (v16 != 4)
      {
        if (v16 == 6)
        {
          v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v26 = *(v25 - 8);
          if ((*(v26 + 48))(a2, 1, v25))
          {
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v27 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v65 = *(v25 + 20);
            v66 = sub_21DBF6C1C();
            (*(*(v66 - 8) + 32))(&a1[v65], &a2[v65], v66);
            (*(v26 + 56))(a1, 0, 1, v25);
          }

          v67 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v68 = &a1[v67];
          v69 = &a2[v67];
          *v68 = *v69;
          *(v68 + 2) = *(v69 + 2);
          goto LABEL_180;
        }

        goto LABEL_92;
      }

      *a1 = *a2;
      v33 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(&a2[v33], 1, v34))
      {
        v61 = swift_getEnumCaseMultiPayload();
        if (v61 <= 3)
        {
          if (v61 == 2 || v61 == 3)
          {
            goto LABEL_135;
          }
        }

        else if (v61 == 4 || v61 == 5 || v61 == 6)
        {
          goto LABEL_135;
        }

        goto LABEL_178;
      }
    }

    else
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v38 = swift_getEnumCaseMultiPayload();
          if (v38 <= 3)
          {
            if (v38 == 2 || v38 == 3)
            {
              goto LABEL_26;
            }
          }

          else if (v38 == 4 || v38 == 5 || v38 == 6)
          {
            goto LABEL_26;
          }

          goto LABEL_151;
        }

        if (v16 == 1)
        {
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v18 = swift_getEnumCaseMultiPayload();
          if (v18 <= 3)
          {
            if (v18 == 2 || v18 == 3)
            {
              goto LABEL_26;
            }
          }

          else if (v18 == 4 || v18 == 5 || v18 == 6)
          {
LABEL_26:
            v19 = sub_21DBF563C();
            (*(*(v19 - 8) + 32))(a1, a2, v19);
            swift_storeEnumTagMultiPayload();
LABEL_152:
            v72 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v73 = v72[5];
            v74 = &a1[v73];
            v75 = &a2[v73];
            v76 = v75[3];
            v74[2] = v75[2];
            v74[3] = v76;
            v77 = v75[1];
            *v74 = *v75;
            v74[1] = v77;
            *(v74 + 106) = *(v75 + 106);
            v78 = v75[6];
            v74[5] = v75[5];
            v74[6] = v78;
            v74[4] = v75[4];
            a1[v72[6]] = a2[v72[6]];
            a1[v72[7]] = a2[v72[7]];
            a1[v72[8]] = a2[v72[8]];
            a1[v72[9]] = a2[v72[9]];
            a1[v72[10]] = a2[v72[10]];
            *&a1[v72[11]] = *&a2[v72[11]];
            goto LABEL_180;
          }

LABEL_151:
          memcpy(a1, a2, *(*(v17 - 8) + 64));
          goto LABEL_152;
        }

LABEL_92:
        memcpy(a1, a2, *(*(v15 - 8) + 64));
LABEL_181:
        *&a1[*(v9 + 20)] = *&a2[*(v9 + 20)];
        (*(v10 + 56))(a1, 0, 1, v9);
        goto LABEL_182;
      }

      if (v16 != 2)
      {
        *a1 = *a2;
        v33 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v35 = *(v34 - 8);
        if ((*(v35 + 48))(&a2[v33], 1, v34))
        {
          goto LABEL_82;
        }

        v70 = swift_getEnumCaseMultiPayload();
        if (v70 <= 3)
        {
          if (v70 == 2 || v70 == 3)
          {
            goto LABEL_135;
          }
        }

        else if (v70 == 4 || v70 == 5 || v70 == 6)
        {
LABEL_135:
          v71 = sub_21DBF563C();
          (*(*(v71 - 8) + 32))(&a1[v33], &a2[v33], v71);
          swift_storeEnumTagMultiPayload();
LABEL_179:
          (*(v35 + 56))(&a1[v33], 0, 1, v34);
          goto LABEL_180;
        }

LABEL_178:
        memcpy(&a1[v33], &a2[v33], *(v35 + 64));
        goto LABEL_179;
      }

      *a1 = *a2;
      v33 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(&a2[v33], 1, v34))
      {
        v62 = swift_getEnumCaseMultiPayload();
        if (v62 <= 3)
        {
          if (v62 == 2 || v62 == 3)
          {
            goto LABEL_135;
          }
        }

        else if (v62 == 4 || v62 == 5 || v62 == 6)
        {
          goto LABEL_135;
        }

        goto LABEL_178;
      }
    }

LABEL_82:
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v33], &a2[v33], *(*(v43 - 8) + 64));
    goto LABEL_180;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90);
  memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_182:
  swift_storeEnumTagMultiPayload();
  return a1;
}

_BYTE *sub_21D929F14(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    sub_21D91BA78(a1, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 6)
        {
          if (EnumCaseMultiPayload == 7)
          {
            v30 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v31 = *(v30 - 8);
            if ((*(v31 + 48))(a2, 1, v30))
            {
              v32 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v32 - 8) + 64));
            }

            else
            {
              v41 = sub_21DBF563C();
              (*(*(v41 - 8) + 32))(a1, a2, v41);
              a1[*(v30 + 20)] = a2[*(v30 + 20)];
              (*(v31 + 56))(a1, 0, 1, v30);
            }

            v42 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&a1[*(v42 + 20)] = *&a2[*(v42 + 20)];
            goto LABEL_159;
          }

          if (EnumCaseMultiPayload != 8)
          {
            goto LABEL_50;
          }

          *a1 = *a2;
          v23 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v24 = sub_21DBF8D7C();
          (*(*(v24 - 8) + 32))(&a1[v23], &a2[v23], v24);
LABEL_159:
          swift_storeEnumTagMultiPayload();
          goto LABEL_160;
        }

        if (EnumCaseMultiPayload != 4)
        {
          if (EnumCaseMultiPayload == 6)
          {
            v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v13 = *(v12 - 8);
            if ((*(v13 + 48))(a2, 1, v12))
            {
              v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v14 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v47 = *(v12 + 20);
              v48 = sub_21DBF6C1C();
              (*(*(v48 - 8) + 32))(&a1[v47], &a2[v47], v48);
              (*(v13 + 56))(a1, 0, 1, v12);
            }

            v49 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v50 = &a1[v49];
            v51 = &a2[v49];
            *v50 = *v51;
            *(v50 + 2) = *(v51 + 2);
            goto LABEL_159;
          }

          goto LABEL_50;
        }

        *a1 = *a2;
        v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v22 = *(v21 - 8);
        if (!(*(v22 + 48))(&a2[v20], 1, v21))
        {
          v39 = swift_getEnumCaseMultiPayload();
          if (v39 <= 3)
          {
            if (v39 == 2 || v39 == 3)
            {
              goto LABEL_92;
            }
          }

          else if (v39 == 4 || v39 == 5 || v39 == 6)
          {
            goto LABEL_92;
          }

          goto LABEL_157;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (!EnumCaseMultiPayload)
          {
            v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v28 = swift_getEnumCaseMultiPayload();
            if (v28 <= 3)
            {
              if (v28 == 2 || v28 == 3)
              {
                goto LABEL_11;
              }
            }

            else if (v28 == 4 || v28 == 5 || v28 == 6)
            {
              goto LABEL_11;
            }

            goto LABEL_100;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v7 = swift_getEnumCaseMultiPayload();
            if (v7 <= 3)
            {
              if (v7 == 2 || v7 == 3)
              {
                goto LABEL_11;
              }
            }

            else if (v7 == 4 || v7 == 5 || v7 == 6)
            {
LABEL_11:
              v8 = sub_21DBF563C();
              (*(*(v8 - 8) + 32))(a1, a2, v8);
              swift_storeEnumTagMultiPayload();
LABEL_101:
              v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v55 = v54[5];
              v56 = &a1[v55];
              v57 = &a2[v55];
              v58 = v57[3];
              v56[2] = v57[2];
              v56[3] = v58;
              v59 = v57[1];
              *v56 = *v57;
              v56[1] = v59;
              *(v56 + 106) = *(v57 + 106);
              v60 = v57[6];
              v56[5] = v57[5];
              v56[6] = v60;
              v56[4] = v57[4];
              a1[v54[6]] = a2[v54[6]];
              a1[v54[7]] = a2[v54[7]];
              a1[v54[8]] = a2[v54[8]];
              a1[v54[9]] = a2[v54[9]];
              a1[v54[10]] = a2[v54[10]];
              *&a1[v54[11]] = *&a2[v54[11]];
              goto LABEL_159;
            }

LABEL_100:
            memcpy(a1, a2, *(*(v6 - 8) + 64));
            goto LABEL_101;
          }

LABEL_50:
          memcpy(a1, a2, *(*(v4 - 8) + 64));
LABEL_160:
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D88);
          *&a1[*(v79 + 48)] = *&a2[*(v79 + 48)];
          *&a1[*(v79 + 64)] = *&a2[*(v79 + 64)];
          goto LABEL_183;
        }

        if (EnumCaseMultiPayload != 2)
        {
          *a1 = *a2;
          v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v22 = *(v21 - 8);
          if ((*(v22 + 48))(&a2[v20], 1, v21))
          {
            goto LABEL_47;
          }

          v52 = swift_getEnumCaseMultiPayload();
          if (v52 <= 3)
          {
            if (v52 == 2 || v52 == 3)
            {
              goto LABEL_92;
            }
          }

          else if (v52 == 4 || v52 == 5 || v52 == 6)
          {
LABEL_92:
            v53 = sub_21DBF563C();
            (*(*(v53 - 8) + 32))(&a1[v20], &a2[v20], v53);
            swift_storeEnumTagMultiPayload();
LABEL_158:
            (*(v22 + 56))(&a1[v20], 0, 1, v21);
            goto LABEL_159;
          }

LABEL_157:
          memcpy(&a1[v20], &a2[v20], *(v22 + 64));
          goto LABEL_158;
        }

        *a1 = *a2;
        v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v22 = *(v21 - 8);
        if (!(*(v22 + 48))(&a2[v20], 1, v21))
        {
          v40 = swift_getEnumCaseMultiPayload();
          if (v40 <= 3)
          {
            if (v40 == 2 || v40 == 3)
            {
              goto LABEL_92;
            }
          }

          else if (v40 == 4 || v40 == 5 || v40 == 6)
          {
            goto LABEL_92;
          }

          goto LABEL_157;
        }
      }

LABEL_47:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v20], &a2[v20], *(*(v29 - 8) + 64));
      goto LABEL_159;
    }

    v9 = type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63D90);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_183:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v15 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 3)
    {
      if (v16 > 6)
      {
        if (v16 == 7)
        {
          v44 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v45 = *(v44 - 8);
          if ((*(v45 + 48))(a2, 1, v44))
          {
            v46 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v46 - 8) + 64));
          }

          else
          {
            v63 = sub_21DBF563C();
            (*(*(v63 - 8) + 32))(a1, a2, v63);
            a1[*(v44 + 20)] = a2[*(v44 + 20)];
            (*(v45 + 56))(a1, 0, 1, v44);
          }

          v64 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v64 + 20)] = *&a2[*(v64 + 20)];
          goto LABEL_181;
        }

        if (v16 != 8)
        {
          goto LABEL_93;
        }

        *a1 = *a2;
        v36 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v37 = sub_21DBF8D7C();
        (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
LABEL_181:
        swift_storeEnumTagMultiPayload();
        goto LABEL_182;
      }

      if (v16 != 4)
      {
        if (v16 == 6)
        {
          v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v26 = *(v25 - 8);
          if ((*(v26 + 48))(a2, 1, v25))
          {
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v27 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v65 = *(v25 + 20);
            v66 = sub_21DBF6C1C();
            (*(*(v66 - 8) + 32))(&a1[v65], &a2[v65], v66);
            (*(v26 + 56))(a1, 0, 1, v25);
          }

          v67 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v68 = &a1[v67];
          v69 = &a2[v67];
          *v68 = *v69;
          *(v68 + 2) = *(v69 + 2);
          goto LABEL_181;
        }

        goto LABEL_93;
      }

      *a1 = *a2;
      v33 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(&a2[v33], 1, v34))
      {
        v61 = swift_getEnumCaseMultiPayload();
        if (v61 <= 3)
        {
          if (v61 == 2 || v61 == 3)
          {
            goto LABEL_136;
          }
        }

        else if (v61 == 4 || v61 == 5 || v61 == 6)
        {
          goto LABEL_136;
        }

        goto LABEL_179;
      }
    }

    else
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v38 = swift_getEnumCaseMultiPayload();
          if (v38 <= 3)
          {
            if (v38 == 2 || v38 == 3)
            {
              goto LABEL_27;
            }
          }

          else if (v38 == 4 || v38 == 5 || v38 == 6)
          {
            goto LABEL_27;
          }

          goto LABEL_152;
        }

        if (v16 == 1)
        {
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v18 = swift_getEnumCaseMultiPayload();
          if (v18 <= 3)
          {
            if (v18 == 2 || v18 == 3)
            {
              goto LABEL_27;
            }
          }

          else if (v18 == 4 || v18 == 5 || v18 == 6)
          {
LABEL_27:
            v19 = sub_21DBF563C();
            (*(*(v19 - 8) + 32))(a1, a2, v19);
            swift_storeEnumTagMultiPayload();
LABEL_153:
            v72 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v73 = v72[5];
            v74 = &a1[v73];
            v75 = &a2[v73];
            v76 = v75[3];
            v74[2] = v75[2];
            v74[3] = v76;
            v77 = v75[1];
            *v74 = *v75;
            v74[1] = v77;
            *(v74 + 106) = *(v75 + 106);
            v78 = v75[6];
            v74[5] = v75[5];
            v74[6] = v78;
            v74[4] = v75[4];
            a1[v72[6]] = a2[v72[6]];
            a1[v72[7]] = a2[v72[7]];
            a1[v72[8]] = a2[v72[8]];
            a1[v72[9]] = a2[v72[9]];
            a1[v72[10]] = a2[v72[10]];
            *&a1[v72[11]] = *&a2[v72[11]];
            goto LABEL_181;
          }

LABEL_152:
          memcpy(a1, a2, *(*(v17 - 8) + 64));
          goto LABEL_153;
        }

LABEL_93:
        memcpy(a1, a2, *(*(v15 - 8) + 64));
LABEL_182:
        *&a1[*(v9 + 20)] = *&a2[*(v9 + 20)];
        (*(v10 + 56))(a1, 0, 1, v9);
        goto LABEL_183;
      }

      if (v16 != 2)
      {
        *a1 = *a2;
        v33 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v35 = *(v34 - 8);
        if ((*(v35 + 48))(&a2[v33], 1, v34))
        {
          goto LABEL_83;
        }

        v70 = swift_getEnumCaseMultiPayload();
        if (v70 <= 3)
        {
          if (v70 == 2 || v70 == 3)
          {
            goto LABEL_136;
          }
        }

        else if (v70 == 4 || v70 == 5 || v70 == 6)
        {
LABEL_136:
          v71 = sub_21DBF563C();
          (*(*(v71 - 8) + 32))(&a1[v33], &a2[v33], v71);
          swift_storeEnumTagMultiPayload();
LABEL_180:
          (*(v35 + 56))(&a1[v33], 0, 1, v34);
          goto LABEL_181;
        }

LABEL_179:
        memcpy(&a1[v33], &a2[v33], *(v35 + 64));
        goto LABEL_180;
      }

      *a1 = *a2;
      v33 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(&a2[v33], 1, v34))
      {
        v62 = swift_getEnumCaseMultiPayload();
        if (v62 <= 3)
        {
          if (v62 == 2 || v62 == 3)
          {
            goto LABEL_136;
          }
        }

        else if (v62 == 4 || v62 == 5 || v62 == 6)
        {
          goto LABEL_136;
        }

        goto LABEL_179;
      }
    }

LABEL_83:
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v33], &a2[v33], *(*(v43 - 8) + 64));
    goto LABEL_181;
  }

  return a1;
}

void sub_21D92C1B8()
{
  sub_21D92C2BC(319, &qword_27CE63DE0, type metadata accessor for TTRSECreateRemindersPresenterCapability.ParamsForMoving.CorrectiveDestination);
  if (v1 <= 0x3F)
  {
    v3[4] = *(v0 - 8) + 64;
    type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout3();
      v3[5] = v3;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void sub_21D92C2BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D92C334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D92C37C()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21D919E00(v2, v3);
}

uint64_t TTRRemindersPrintingPageRenderingUtilities.__allocating_init(footerText:footerFont:footerTextColor:isFlipped:isRightToLeft:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 65) = a6;
  return result;
}

uint64_t TTRRemindersPrintingPageRenderingUtilities.init(footerText:footerFont:footerTextColor:isFlipped:isRightToLeft:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 65) = a6;
  return v6;
}

double TTRRemindersPrintingPageRenderingUtilities.footerHeight.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_21D92CAE0(v0);
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  return result;
}

void *(*TTRRemindersPrintingPageRenderingUtilities.footerHeight.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = TTRRemindersPrintingPageRenderingUtilities.footerHeight.getter();
  return sub_21D92C540;
}

void *sub_21D92C540(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 0;
  return result;
}

Swift::Void __swiftcall TTRRemindersPrintingPageRenderingUtilities.drawFooter(pageNumber:pageCount:in:)(Swift::Int pageNumber, Swift::Int pageCount, __C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v10 = *(v3 + 64);
  MinY = CGRectGetMinY(in);
  v12 = MinY + 12.0 + -1.0;
  v13 = MinY + 1.0;
  if (v10)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  sub_21D92C980(pageNumber, pageCount);
  v15 = sub_21DBFA12C();

  v16 = sub_21DBFA12C();
  v17 = v16;
  if (*(v3 + 65))
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  if (*(v3 + 65))
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  v21 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21DC08D00;
  v22 = *v21;
  *(inited + 32) = *v21;
  v23 = *(v3 + 48);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = v23;
  v24 = v18;
  v25 = v19;
  v26 = v22;
  v27 = v23;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D1BAED0(inited + 32);
  type metadata accessor for Key(0);
  sub_21D112874();
  v28 = sub_21DBF9E5C();

  [v25 sizeWithAttributes_];
  v30 = v29;

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxX = CGRectGetMaxX(v33);
  sub_21D92C780(v25, v3, MaxX - v30, v14);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MinX = CGRectGetMinX(v34);
  sub_21D92C780(v24, v3, MinX, v14);
}

void sub_21D92C780(void *a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21DC08D20;
  v10 = *v9;
  *(inited + 32) = *v9;
  v11 = *(a2 + 48);
  v12 = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(a2 + 56);
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D1B8F0);
  *(inited + 80) = v14;
  v15 = v10;
  v16 = v11;
  v17 = v13;
  v18 = v14;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_21D112874();
  v19 = sub_21DBF9E5C();

  [a1 drawAtPoint:v19 withAttributes:{a3, a4}];
}

uint64_t TTRRemindersPrintingPageRenderingUtilities.deinit()
{

  return v0;
}

uint64_t TTRRemindersPrintingPageRenderingUtilities.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D92C980(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D20;
  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = a2;
  v7 = sub_21DBFA13C();

  return v7;
}

double sub_21D92CAE0(uint64_t a1)
{
  sub_21D92C980(1, 3);
  v2 = sub_21DBFA12C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21DC08D00;
  v5 = *v4;
  *(inited + 32) = *v4;
  v6 = *(a1 + 48);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = v6;
  v7 = v5;
  v8 = v6;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D1BAED0(inited + 32);
  type metadata accessor for Key(0);
  sub_21D112874();
  v9 = sub_21DBF9E5C();

  [v2 sizeWithAttributes_];
  v11 = v10;

  return v11 + 12.0;
}

void *TTRSearchResultCollector.__allocating_init(performer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F98];
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = v3;
  v2[3] = a1;
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate;
  swift_beginAccess();
  *(v4 + 8) = &protocol witness table for TTRSearchResultCollector;
  swift_unknownObjectWeakAssign();
  return v2;
}

void *TTRSearchResultCollector.init(performer:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = v2;
  v1[3] = a1;
  v3 = a1 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate;
  swift_beginAccess();
  *(v3 + 8) = &protocol witness table for TTRSearchResultCollector;
  swift_unknownObjectWeakAssign();
  return v1;
}

void TTRSearchResultCollector.start(completionHandler:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[2] = MEMORY[0x277D84F98];

  v5 = v2[4];
  v2[4] = a1;
  v2[5] = a2;
  sub_21D0D0E88(v5);
  v6 = v2[3];

  v7 = v6;
  TTRSearchQueryPerformer.start()();
}

uint64_t static TTRSearchResultCollector.promise(performer:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E00);
  swift_allocObject();
  return sub_21DBF828C();
}

uint64_t sub_21D92CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for TTRSearchResultCollector();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F98];
  v11[4] = 0;
  v11[5] = 0;
  v11[2] = v12;
  v11[3] = a5;
  v13 = &a5[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate];
  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for TTRSearchResultCollector;
  swift_unknownObjectWeakAssign();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_21D5FBBA0;
  v14[5] = v10;
  v14[6] = v11;

  v15 = a5;

  TTRSearchResultCollector.start(completionHandler:)(sub_21D92EF0C, v14);
}

void sub_21D92D028(int a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(uint64_t))
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    swift_beginAccess();
    v9 = sub_21DBF8E0C();
    a5(v9);
  }
}

uint64_t static TTRSearchResultCollector.promise(searchTerm:itemTypes:matchCriteria:attributesToFetch:queue:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E08);
  swift_allocObject();
  sub_21DBF828C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E10);
  v0 = sub_21DBF81FC();

  return v0;
}

void sub_21D92D1AC(void (*a1)(char **), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v37 = a1;
  v38 = a4;
  v36[1] = a2;
  v15 = sub_21DBF624C();
  v40 = *(v15 - 8);
  v41 = v15;
  MEMORY[0x28223BE20](v15);
  v39 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_21DBF672C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 16);
  v22(v21, a8, v17, v19);
  v23 = HIBYTE(a6) & 0xF;
  v36[0] = a5;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v23 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 && *(a7 + 16))
  {
    objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v24 = a10;
    v25 = sub_21D46C3B0(a9, a7, v24);

    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08) + 48);
    v27 = v39;
    *v39 = v36[0];
    v27[1] = a6;
    (v22)(v27 + v26, v21, v17);
    (*(v40 + 104))(v27, *MEMORY[0x277D44F10], v41);
    v28 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
    swift_beginAccess();
    v29 = *&v25[v28];
    v30 = v25;
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25[v28] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_21D21303C(0, v29[2] + 1, 1, v29);
      *&v25[v28] = v29;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v29 = sub_21D21303C(v32 > 1, v33 + 1, 1, v29);
    }

    v29[2] = v33 + 1;
    (*(v40 + 32))(v29 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v33, v39, v41);
    *&v25[v28] = v29;
    swift_endAccess();
    (*(v18 + 8))(v21, v17);

    v42 = v30;
    v37(&v42);
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    sub_21D92EBE4();
    v34 = swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 2;
    a3();
  }
}

uint64_t static TTRSearchResultCollector.promise(criteria:itemTypes:attributesToFetch:queue:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E08);
  swift_allocObject();
  sub_21DBF828C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E10);
  v0 = sub_21DBF81FC();

  return v0;
}

void sub_21D92D660(void (*a1)(char **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v11 = a7;
  v12 = sub_21D46C3B0(a5, a6, v11);

  swift_beginAccess();
  v13 = sub_21DBF8E0C();
  sub_21D562A78(v13);
  swift_endAccess();
  v14 = v12;
  a1(&v14);
}

uint64_t static TTRSearchResultCollector.promise(spotlightItemIdentifier:attributesToFetch:queue:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E08);
  swift_allocObject();
  sub_21DBF828C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E10);
  sub_21DBF81FC();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBF816C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E18);
  v6 = sub_21DBF820C();

  return v6;
}

void sub_21D92D8A4(void (*a1)(char **), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8)
{
  v37 = a8;
  v38 = a7;
  v41 = a1;
  v42 = a5;
  v35[1] = a4;
  v36 = a3;
  v40 = a2;
  v39 = sub_21DBF624C();
  v9 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE20);
  v12 = sub_21DBF659C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = 2 * v14;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21DC08D10;
  v18 = v17 + v15;
  v19 = *(v13 + 104);
  v19(v18, *MEMORY[0x277D45058], v12);
  v20 = v18 + v14;
  v21 = v42;
  v19(v20, *MEMORY[0x277D45050], v12);
  v19(v18 + v16, *MEMORY[0x277D45048], v12);
  v22 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
    v24 = v38;
    sub_21DBF8E0C();
    v25 = v37;
    v26 = sub_21D46C3B0(v24, v17, v25);

    *v11 = v21;
    v11[1] = a6;
    (*(v9 + 104))(v11, *MEMORY[0x277D44F20], v39);
    v27 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
    swift_beginAccess();
    v28 = *&v26[v27];
    v29 = v26;
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26[v27] = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_21D21303C(0, v28[2] + 1, 1, v28);
      *&v26[v27] = v28;
    }

    v32 = v28[2];
    v31 = v28[3];
    if (v32 >= v31 >> 1)
    {
      v28 = sub_21D21303C(v31 > 1, v32 + 1, 1, v28);
    }

    v28[2] = v32 + 1;
    (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v11);
    *&v26[v27] = v28;
    swift_endAccess();

    v43 = v29;
    v41(&v43);
  }

  else
  {

    sub_21D92EBE4();
    v33 = swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 2;
    v36();
  }
}

uint64_t sub_21D92DC84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E00);
  swift_allocObject();
  return sub_21DBF828C();
}

void sub_21D92DCF4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    if (sub_21DBFBD7C() != 1)
    {
      goto LABEL_8;
    }
  }

  else if (*(v7 + 16) != 1)
  {
LABEL_8:
    sub_21D92EBE4();
    swift_allocError();
    *v12 = a2;
    *(v12 + 8) = a3;
    *(v12 + 16) = 1;
    swift_willThrow();
    sub_21DBF8E0C();
    return;
  }

  v8 = sub_21D195860(v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = v9;

  v11 = sub_21DBFB51C();
  if (v11)
  {
    *a4 = v11;
    a4[1] = v10;
  }

  else
  {
    v13 = sub_21DBFB52C();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 7104878;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    sub_21D92EBE4();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t static TTRSearchResultCollector.result(spotlightItemIdentifier:attributesToFetch:)(uint64_t a1, uint64_t a2, char *a3)
{
  v69 = a3;
  v81 = a2;
  v78 = a1;
  v3 = sub_21DBF9D2C();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_21DBF9D5C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_21DBF624C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_21DBF9D3C();
  v7 = *(v77 - 1);
  MEMORY[0x28223BE20](v77);
  v9 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE20);
  v10 = sub_21DBF659C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC08D10;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x277D45058], v10);
  v16(v15 + v12, *MEMORY[0x277D45050], v10);
  v16(v15 + 2 * v12, *MEMORY[0x277D45048], v10);
  v17 = v78;
  v18 = v81;
  sub_21D0D8CF0(0, &qword_280D1B900);
  v19 = v77;
  (*(v7 + 104))(v9, *MEMORY[0x277D851C8], v77);
  v20 = sub_21DBFB15C();
  (*(v7 + 8))(v9, v19);
  v21 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    sub_21D92EBE4();
    swift_allocError();
    *v51 = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = 2;
    swift_willThrow();

    return v17;
  }

  v22 = objc_allocWithZone(type metadata accessor for TTRSearchQueryPerformer());
  v23 = v20;
  v24 = sub_21DBF8E0C();
  v25 = sub_21D46C3B0(v24, v14, v23);
  v77 = v23;

  v26 = v66;
  v27 = v81;
  *v66 = v17;
  v26[1] = v27;
  v28 = v67;
  (*(v67 + 104))(v26, *MEMORY[0x277D44F20], v68);
  v29 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
  swift_beginAccess();
  v30 = *&v25[v29];
  v31 = v25;
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[v29] = v30;
  v33 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_21D21303C(0, v30[2] + 1, 1, v30);
    *&v25[v29] = v30;
  }

  v35 = v30[2];
  v34 = v30[3];
  if (v35 >= v34 >> 1)
  {
    v30 = sub_21D21303C(v34 > 1, v35 + 1, 1, v30);
  }

  v30[2] = v35 + 1;
  (*(v28 + 32))(v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v35, v33);
  *&v25[v29] = v30;
  swift_endAccess();

  v36 = swift_allocObject();
  v37 = MEMORY[0x277D84F98];
  v36[4] = 0;
  v36[5] = 0;
  v36[2] = v37;
  v36[3] = v31;
  v38 = &v31[OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate];
  swift_beginAccess();
  *(v38 + 1) = &protocol witness table for TTRSearchResultCollector;
  swift_unknownObjectWeakAssign();
  v69 = v31;
  v39 = dispatch_group_create();
  dispatch_group_enter(v39);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  v67 = v40 + 16;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v17 = v41 + 16;
  v42 = swift_allocObject();
  v42[2] = v36;
  v42[3] = v40;
  v42[4] = v41;
  v42[5] = v39;
  aBlock[4] = sub_21D92EBD8;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_114;
  v43 = _Block_copy(aBlock);

  v68 = v40;

  v70 = v39;
  v44 = v71;
  sub_21DBF9D4C();
  v79 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0CD8F0();
  v45 = v73;
  v46 = v76;
  v47 = v77;
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v44, v45, v43);
  _Block_release(v43);
  (*(v75 + 8))(v45, v46);
  v48 = v70;
  (*(v72 + 8))(v44, v74);

  sub_21DBFB09C();
  swift_beginAccess();
  v49 = *(v41 + 16);
  if (v49)
  {
    swift_willThrow();
    v50 = v49;

    return v17;
  }

  v52 = v69;
  v53 = v67;
  swift_beginAccess();
  if ((*v53 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v17 = sub_21DBFBD7C();

    if (v17)
    {
      goto LABEL_13;
    }

LABEL_17:

    return v17;
  }

  v17 = *(*v53 + 16);
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((*v53 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v17 = sub_21DBFBD7C();

    if (v17 != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = *(*v53 + 16);
    if (v17 != 1)
    {
LABEL_22:
      sub_21D92EBE4();
      swift_allocError();
      v58 = v81;
      *v59 = v78;
      *(v59 + 8) = v58;
      *(v59 + 16) = 1;
      swift_willThrow();
      sub_21DBF8E0C();

      return v17;
    }
  }

  v54 = sub_21DBF8E0C();
  v17 = sub_21D195860(v54);
  v56 = v55;

  if (!v17)
  {
    goto LABEL_22;
  }

  v57 = sub_21DBFB51C();
  if (v57)
  {
    v17 = v57;
  }

  else
  {
    v61 = sub_21DBFB52C();
    if (v62)
    {
      v17 = v61;
    }

    else
    {
      v17 = 7104878;
    }

    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0xE300000000000000;
    }

    sub_21D92EBE4();
    swift_allocError();
    *v64 = v17;
    *(v64 + 8) = v63;
    *(v64 + 16) = 0;
    swift_willThrow();
  }

  return v17;
}