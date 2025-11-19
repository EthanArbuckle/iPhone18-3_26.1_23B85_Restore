uint64_t sub_21D25D250()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  sub_21D104E74(v0, v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRRemindersListViewModel.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380);
  if (swift_dynamicCast())
  {
    sub_21D0D0FD0(v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_21DBFC5BC();
    __swift_destroy_boxed_opaque_existential_0(v10);
    return v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21D0CF7E0(v8, &qword_27CE5A388);
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v3);
    sub_21DBFC14C();
    sub_21D106918(v3, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return v10[0];
  }
}

uint64_t sub_21D25D428()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  sub_21D104E74(v0, v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRAccountsListsViewModel.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380);
  if (swift_dynamicCast())
  {
    sub_21D0D0FD0(v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_21DBFC5BC();
    __swift_destroy_boxed_opaque_existential_0(v10);
    return v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21D0CF7E0(v8, &qword_27CE5A388);
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v3);
    sub_21DBFC14C();
    sub_21D106918(v3, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    return v10[0];
  }
}

uint64_t sub_21D25D600()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F190);
  v1 = __swift_project_value_buffer(v0, qword_280D0F190);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListUncommittedReminder.editingSessionState.getter()
{
  type metadata accessor for TTRRemindersListUncommittedReminder(0);
}

uint64_t TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = (&v49 - v18);
  sub_21D0D3954(a1, a4, &qword_27CE5A3A0);
  v20 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  sub_21D104E74(a2, a4 + *(v20 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
  *(a4 + *(v20 + 24)) = a3;

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
    }

    else
    {

      sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_280D0F190);
    sub_21D104E74(a2, v10, type metadata accessor for TTRRemindersListViewModel.Item);
    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAECC();
    if (!os_log_type_enabled(v30, v31))
    {

      sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(a1, &qword_27CE5A3A0);
      v28 = v10;
      v27 = type metadata accessor for TTRRemindersListViewModel.Item;
      return sub_21D106918(v28, v27);
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50 = v33;
    *v32 = 136315138;
    v34 = sub_21D25D250();
    v36 = v35;
    sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item);
    v37 = sub_21D0CDFB4(v34, v36, &v50);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_21D0C9000, v30, v31, "Invalid item type {item: %s}", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D46520](v33, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);

    v38 = a2;
LABEL_14:
    sub_21D106918(v38, type metadata accessor for TTRRemindersListViewModel.Item);
    return sub_21D0CF7E0(a1, &qword_27CE5A3A0);
  }

  sub_21D2A0DC8(v13, v19, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  if (!a3)
  {
    goto LABEL_6;
  }

  v22 = *(a3 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);

  v23 = [v22 objectID];

  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = *v19;
  sub_21D0D8CF0(0, &qword_280D17880);
  v25 = v24;
  v26 = sub_21DBFB63C();

  if ((v26 & 1) == 0)
  {
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_280D0F190);
    sub_21D104E74(v19, v16, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v41 = v23;
    v42 = sub_21DBF84AC();
    v43 = sub_21DBFAECC();

    sub_21D106918(v19, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if (!os_log_type_enabled(v42, v43))
    {

      sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(a1, &qword_27CE5A3A0);
      v27 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v28 = v16;
      return sub_21D106918(v28, v27);
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412546;
    *(v44 + 4) = v41;
    *v45 = v23;
    *(v44 + 12) = 2112;
    v46 = *v16;
    v47 = v41;
    v48 = v46;
    sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    *(v44 + 14) = v48;
    v45[1] = v48;
    _os_log_impl(&dword_21D0C9000, v42, v43, "reminderChangeItem.objectID does not match item objectID {reminderChangeItem.objectID: %@, item.reminderID.objectID: %@}", v44, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v45, -1, -1);
    MEMORY[0x223D46520](v44, -1, -1);

    v38 = a2;
    goto LABEL_14;
  }

LABEL_6:
  sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(a1, &qword_27CE5A3A0);
  v27 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
  v28 = v19;
  return sub_21D106918(v28, v27);
}

uint64_t TTRRemindersListUncommittedSection.init(location:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, a3, &qword_27CE5A3A0);
  v9 = type metadata accessor for TTRRemindersListUncommittedSection(0);
  sub_21D104E74(a2, a3 + *(v9 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
  if (sub_21D2A0AC4(a2))
  {
    v10 = a2;
LABEL_7:
    sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item);
    return sub_21D0CF7E0(a1, &qword_27CE5A3A0);
  }

  if (qword_280D0F188 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F190);
  sub_21D104E74(a2, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAECC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v16 = sub_21D25D250();
    v18 = v17;
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v19 = sub_21D0CDFB4(v16, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRRemindersListUncommittedSection: Invalid item type {item: %s}", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);

    v10 = a2;
    goto LABEL_7;
  }

  sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(a1, &qword_27CE5A3A0);
  return sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
}

void TTRRemindersListTreeViewModel.AuxiliaryData.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void sub_21D25E130(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21D2A0DC8(a1, a4, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  result = type metadata accessor for TTRRemindersListTreeViewModel.Section(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_21D25E28C(void (*a1)(void))
{
  a1(0);

  return sub_21DBF8E0C();
}

uint64_t sub_21D25E2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);

  *(v2 + v4) = a1;
  return result;
}

uint64_t TTRRemindersListTreeViewModel.SectionsContainer.init(header:sections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D2A0DC8(a1, a3, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  result = type metadata accessor for TTRRemindersListTreeViewModel.SectionsContainer(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t TTRRemindersListTreeViewModel.RecurrentReminderReplacement.init(cloned:original:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D2A0DC8(a1, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(0);
  return sub_21D2A0DC8(a2, a3 + *(v5 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t TTRRemindersListTreeViewModel.__allocating_init(sections:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_21D29FF8C(a1, v16, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

uint64_t TTRRemindersListTreeViewModel.__allocating_init(sectionsContainers:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21D0D32E4(a2, v21);
  v11 = v22;
  v12 = v23;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v17 + 16))(v16, v14);
  v18 = sub_21D2A00FC(a1, 1, v16, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v18;
}

uint64_t TTRRemindersListTreeViewModel.replacingPresentationTree(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_21D2A0E74;
  }

  else
  {
    v7 = sub_21D2F8BEC;
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_21D0D0E78(a1);

  v9 = sub_21D261CE4();

  v17[0] = v9;
  (v7)(v16, v17);
  v15 = v16[0];
  swift_beginAccess();
  v10 = v3[12];
  swift_beginAccess();
  v11 = v3[11];
  v12 = v3[2];
  sub_21D0D32E4((v3 + 5), v16);
  v13 = swift_allocObject();
  *(v13 + 88) = MEMORY[0x277D84FA0];
  *(v13 + 80) = v9;
  *(v13 + 24) = v15;
  *(v13 + 96) = v10;
  *(v13 + 104) = sub_21D2A0E70;
  *(v13 + 112) = v8;
  swift_beginAccess();
  *(v13 + 88) = v11;
  *(v13 + 16) = v12;
  sub_21D0D0FD0(v16, v13 + 40);
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return v13;
}

uint64_t sub_21D25E964@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_21D25E998(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

void *sub_21D25E9D8(uint64_t (*a1)(size_t), uint64_t a2)
{
  v3 = v2;

  v6 = sub_21D261CE4();

  v7 = a1(v6);
  v9 = v8;
  swift_beginAccess();
  v10 = v3[12];
  swift_beginAccess();
  v11 = v3[11];
  v12 = v3[2];
  sub_21D0D32E4((v3 + 5), v15);
  v13 = swift_allocObject();
  v13[11] = MEMORY[0x277D84FA0];
  v13[10] = v6;
  v13[3] = v7;
  v13[4] = v9;
  v13[12] = v10;
  v13[13] = a1;
  v13[14] = a2;
  swift_beginAccess();
  v13[11] = v11;
  v13[2] = v12;
  sub_21D0D0FD0(v15, (v13 + 5));
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return v13;
}

uint64_t sub_21D25EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D104E74(a1, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
  type metadata accessor for TTRRemindersListTreeViewModel();
  v13 = *(a1 + *(type metadata accessor for TTRRemindersListTreeViewModel.Section(0) + 20));
  v19 = a2;
  v20 = a3;
  v21 = v12;
  v22 = a4;
  v14 = sub_21D25F0D0(v13, sub_21D2F89AC, v18);
  sub_21D104E74(a1, a5, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  v16 = a5 + *(v15 + 52);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(a5 + *(v15 + 56)) = v14;
  (*(*(v15 - 8) + 56))(a5, 0, 1, v15);
  return sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
}

uint64_t sub_21D25ED00@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_beginAccess();
  v20 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v42 = a5;
  v43 = v15;
  *a1 = v20;
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  v23 = sub_21DBF6D5C();
  (*(v22 + 8))(v23, a3, v21, v22);

  a1 = sub_21DBF6D5C();
  sub_21D104E74(a3, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *a4;
  v25 = v44;
  *a4 = 0x8000000000000000;
  v19 = sub_21D17E07C(a1);
  v27 = v25[2];
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    v40 = v19;
    sub_21D221CE4();
    v19 = v40;
    v25 = v44;
    goto LABEL_7;
  }

  LOBYTE(a3) = v26;
  if (v25[3] < v30)
  {
    sub_21D218088(v30, isUniquelyReferenced_nonNull_native);
    v25 = v44;
    v19 = sub_21D17E07C(a1);
    if ((a3 & 1) == (v31 & 1))
    {
      goto LABEL_7;
    }

    sub_21D0D8CF0(0, &qword_280D17880);
    v19 = sub_21DBFC70C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v33 = v42;
  v32 = v43;
  *a4 = v25;
  if ((a3 & 1) == 0)
  {
    sub_21D33572C(v19, a1, MEMORY[0x277D84FA0], v25);
    v34 = a1;
  }

  sub_21D29BC6C(v32, v12);
  swift_endAccess();

  sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v35 = sub_21DBF6D2C();
  if (v35 < 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_21DBF6D2C();
  }

  sub_21D104E74(v18, v33, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  sub_21D106918(v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  v38 = v33 + *(v37 + 52);
  *v38 = 0;
  *(v38 + 8) = v36;
  *(v38 + 16) = v35 < 1;
  *(v33 + *(v37 + 56)) = MEMORY[0x277D84F90];
  return (*(*(v37 - 8) + 56))(v33, 0, 1, v37);
}

void *sub_21D25F0D0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v40 = &v38 - v15;
  v47 = sub_21DBF6D7C();
  v17 = MEMORY[0x28223BE20](v47);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = *(v16 + 16);
    v21 = v16 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v50 = (v11 + 48);
    v44 = (v21 - 8);
    v45 = v22;
    v39 = v11;
    v43 = (v11 + 56);
    v24 = *(v21 + 56);
    v41 = MEMORY[0x277D84F90];
    v42 = v24;
    v38 = v13;
    v25 = v47;
    v46 = v21;
    v22(v19, v23, v47, v17);
    while (1)
    {
      v48(v19);
      v27 = *v50;
      if ((*v50)(v6, 1, v10) == 1)
      {
        break;
      }

      v28 = v6;
      sub_21D0D523C(v6, v13, &qword_27CE581C8);
      v29 = v13;
      if (sub_21DBF6D6C())
      {
        v30 = sub_21D25F0D0();

        (*v44)(v19, v47);
        v31 = *(v10 + 56);

        *(v29 + v31) = v30;
      }

      else
      {
        (*v44)(v19, v47);
      }

      v13 = v29;
      sub_21D0D3954(v29, v9, &qword_27CE581C8);
      (*v43)(v9, 0, 1, v10);
      sub_21D0CF7E0(v29, &qword_27CE581C8);
      v32 = v27(v9, 1, v10);
      v6 = v28;
      v25 = v47;
      if (v32 == 1)
      {
        goto LABEL_4;
      }

      sub_21D0D523C(v9, v40, &qword_27CE581C8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_21D211A34(0, v41[2] + 1, 1, v41);
      }

      v34 = v41[2];
      v33 = v41[3];
      if (v34 >= v33 >> 1)
      {
        v41 = sub_21D211A34(v33 > 1, v34 + 1, 1, v41);
      }

      v35 = v40;
      v36 = v41;
      v41[2] = v34 + 1;
      sub_21D0D523C(v35, v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34, &qword_27CE581C8);
      v13 = v38;
LABEL_5:
      v23 += v42;
      if (!--v20)
      {
        return v41;
      }

      v45(v19, v23, v25, v26);
    }

    (*v44)(v19, v25);
    sub_21D0CF7E0(v6, &qword_27CE5A4C8);
    (*v43)(v9, 1, 1, v10);
LABEL_4:
    sub_21D0CF7E0(v9, &qword_27CE5A4C8);
    goto LABEL_5;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D25F5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + *(type metadata accessor for TTRRemindersListTreeViewModel.SectionsContainer(0) + 20));
  swift_beginAccess();
  v11 = sub_21DBF8E0C();
  sub_21D5624A0(v11);
  swift_endAccess();
  v15[2] = a2 + 16;
  v15[3] = a3;
  v15[4] = a4 + 16;
  v12 = sub_21D4E6184(sub_21D2F89B8, v15, v10);
  sub_21D104E74(a1, a5, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  v14 = a5 + *(result + 52);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  *(a5 + *(result + 56)) = v12;
  return result;
}

uint64_t sub_21D25F71C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4D0);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_21D0D0F1C(qword_280D10C18, &qword_27CE5A4D0);
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_21D25F7C0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - v15;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  v16 = sub_21D2916C8(v10, sub_21D181E00);
  sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v16)
  {
    v30 = v1;
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v18 = *(*Strong + 120);
      swift_beginAccess();
      v19 = v32;
      sub_21D104E74(Strong + v18, v32, type metadata accessor for TTRRemindersListViewModel.Item);

      v20 = 0;
    }

    else
    {
      v20 = 1;
      v19 = v32;
    }

    v1 = v30;
  }

  else
  {
    v20 = 1;
    v19 = v32;
  }

  (*(v2 + 56))(v19, v20, 1, v1);
  result = sub_21D261568(v19);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    sub_21D0D3954(v19, v13, &unk_27CE5CD80);

    v23 = 0;
    while (1)
    {
      if (v22 == v23)
      {
        goto LABEL_14;
      }

      sub_21D26181C(v23, v13, v4);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
      v24 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v24)
      {
        break;
      }

      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_14:

        sub_21D0CF7E0(v13, &unk_27CE5CD80);
        sub_21D0CF7E0(v32, &unk_27CE5CD80);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
        return (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
      }
    }

    sub_21D0CF7E0(v13, &unk_27CE5CD80);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
    v28 = *(v27 + 48);
    v29 = v31;
    sub_21D0D523C(v32, v31, &unk_27CE5CD80);
    *(v29 + v28) = v23;
    return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
  }

  return result;
}

uint64_t sub_21D25FC60@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - v15;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v10);
  v16 = sub_21D2916C8(v10, sub_21D105CF4);
  sub_21D106918(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if (v16)
  {
    v30 = v1;
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v18 = *(*Strong + 120);
      swift_beginAccess();
      v19 = v32;
      sub_21D104E74(Strong + v18, v32, type metadata accessor for TTRAccountsListsViewModel.Item);

      v20 = 0;
    }

    else
    {
      v20 = 1;
      v19 = v32;
    }

    v1 = v30;
  }

  else
  {
    v20 = 1;
    v19 = v32;
  }

  (*(v2 + 56))(v19, v20, 1, v1);
  result = sub_21D0E8DA0(v19);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    sub_21D0D3954(v19, v13, &qword_27CE5A490);

    v23 = 0;
    while (1)
    {
      if (v22 == v23)
      {
        goto LABEL_14;
      }

      sub_21D107A34(v23, v13, v4);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v10);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v7);
      v24 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_21D106918(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D106918(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D106918(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (v24)
      {
        break;
      }

      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_14:

        sub_21D0CF7E0(v13, &qword_27CE5A490);
        sub_21D0CF7E0(v32, &qword_27CE5A490);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A8);
        return (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
      }
    }

    sub_21D0CF7E0(v13, &qword_27CE5A490);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A8);
    v28 = *(v27 + 48);
    v29 = v31;
    sub_21D0D523C(v32, v31, &qword_27CE5A490);
    *(v29 + v28) = v23;
    return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
  }

  return result;
}

uint64_t sub_21D260100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v68 = a3;
  v71 = a1;
  v75 = sub_21DBF5B9C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v67 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v70 = &v61 - v24;
  MEMORY[0x28223BE20](v25);
  v66 = &v61 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v61 - v28;
  v74 = a2;
  sub_21D0D3954(a2, v19, &unk_27CE5CD80);
  v30 = *(v21 + 48);
  if ((v30)(v19, 1, v20) == 1)
  {
    sub_21D0CF7E0(v19, &unk_27CE5CD80);
  }

  else
  {
    sub_21D2A0DC8(v19, v29, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D108408(v8, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v16);
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v31 = (v30)(v16, 1, v20);
    sub_21D0CF7E0(v16, &unk_27CE5CD80);
    if (v31 == 1)
    {
      if (qword_27CE56620 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    sub_21D106918(v29, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  while (1)
  {
    v42 = v76;
    sub_21D0D3954(v76, v13, &unk_27CE5CD80);
    if ((v30)(v13, 1, v20) == 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE5CD80);
    }

    else
    {
      v43 = v13;
      v13 = v70;
      sub_21D2A0DC8(v43, v70, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
      v44 = v69;
      sub_21D108408(v8, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v69);
      sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v45 = (v30)(v44, 1, v20);
      sub_21D0CF7E0(v44, &unk_27CE5CD80);
      if (v45 == 1)
      {
        if (qword_27CE56620 != -1)
        {
          swift_once();
        }

        v46 = sub_21DBF84BC();
        __swift_project_value_buffer(v46, qword_27CE5A918);
        v30 = v67;
        sub_21D104E74(v13, v67, type metadata accessor for TTRRemindersListViewModel.Item);
        v47 = sub_21DBF84AC();
        v48 = sub_21DBFAEBC();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v77 = v50;
          *v49 = 136315138;
          v51 = sub_21D25D250();
          v52 = v13;
          v13 = v53;
          v54 = v30;
          v30 = type metadata accessor for TTRRemindersListViewModel.Item;
          sub_21D106918(v54, type metadata accessor for TTRRemindersListViewModel.Item);
          v55 = sub_21D0CDFB4(v51, v13, &v77);

          *(v49 + 4) = v55;
          _os_log_impl(&dword_21D0C9000, v47, v48, "Invalid newParent {newParent: %s}", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x223D46520](v50, -1, -1);
          MEMORY[0x223D46520](v49, -1, -1);

          v56 = v52;
        }

        else
        {

          sub_21D106918(v30, type metadata accessor for TTRRemindersListViewModel.Item);
          v56 = v13;
        }
      }

      else
      {
        v56 = v13;
      }

      sub_21D106918(v56, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_21DC08D00;
    *(v57 + 32) = v71;
    v77 = v57;
    sub_21D2F89FC(&qword_280D1B818, MEMORY[0x277CC9A28]);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70);
    sub_21D0D0F1C(&qword_280D178C8, &unk_27CE67A70);
    v58 = v72;
    v8 = v75;
    sub_21DBFBCBC();
    v29 = sub_21D2920E8(v58, v74);
    result = (*(v73 + 8))(v58, v8);
    if (!v29)
    {
      return result;
    }

    if (v29 >> 62)
    {
      break;
    }

    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

LABEL_22:
    if ((v29 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x223D44740](0, v29);
      goto LABEL_25;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v60 = *(v29 + 32);

LABEL_25:

      sub_21D291750(v60, v42, v68);
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_5:
    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5A918);
    v33 = v66;
    sub_21D104E74(v29, v66, type metadata accessor for TTRRemindersListViewModel.Item);
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v63 = v36;
      v64 = swift_slowAlloc();
      v77 = v64;
      *v36 = 136315138;
      v62 = sub_21D25D250();
      v38 = v37;
      v65 = type metadata accessor for TTRRemindersListViewModel.Item;
      sub_21D106918(v33, type metadata accessor for TTRRemindersListViewModel.Item);
      v39 = sub_21D0CDFB4(v62, v38, &v77);

      v40 = v63;
      *(v63 + 1) = v39;
      _os_log_impl(&dword_21D0C9000, v34, v35, "Invalid oldParent {oldParent: %s}", v40, 0xCu);
      v41 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x223D46520](v41, -1, -1);
      MEMORY[0x223D46520](v40, -1, -1);

      sub_21D106918(v29, v65);
    }

    else
    {

      sub_21D106918(v33, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v29, type metadata accessor for TTRRemindersListViewModel.Item);
    }
  }

  if (sub_21DBFBD7C())
  {
    goto LABEL_22;
  }
}

uint64_t sub_21D260B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v68 = a3;
  v71 = a1;
  v75 = sub_21DBF5B9C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v67 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v70 = &v61 - v24;
  MEMORY[0x28223BE20](v25);
  v66 = &v61 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v61 - v28;
  v74 = a2;
  sub_21D0D3954(a2, v19, &qword_27CE5A490);
  v30 = *(v21 + 48);
  if ((v30)(v19, 1, v20) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE5A490);
  }

  else
  {
    sub_21D2A0DC8(v19, v29, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D108408(v8, sub_21D105CF4, type metadata accessor for TTRAccountsListsViewModel.Item, type metadata accessor for TTRAccountsListsViewModel.Item, v16);
    sub_21D106918(v8, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v31 = (v30)(v16, 1, v20);
    sub_21D0CF7E0(v16, &qword_27CE5A490);
    if (v31 == 1)
    {
      if (qword_27CE56620 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    sub_21D106918(v29, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  while (1)
  {
    v42 = v76;
    sub_21D0D3954(v76, v13, &qword_27CE5A490);
    if ((v30)(v13, 1, v20) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5A490);
    }

    else
    {
      v43 = v13;
      v13 = v70;
      sub_21D2A0DC8(v43, v70, type metadata accessor for TTRAccountsListsViewModel.Item);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v8);
      v44 = v69;
      sub_21D108408(v8, sub_21D105CF4, type metadata accessor for TTRAccountsListsViewModel.Item, type metadata accessor for TTRAccountsListsViewModel.Item, v69);
      sub_21D106918(v8, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v45 = (v30)(v44, 1, v20);
      sub_21D0CF7E0(v44, &qword_27CE5A490);
      if (v45 == 1)
      {
        if (qword_27CE56620 != -1)
        {
          swift_once();
        }

        v46 = sub_21DBF84BC();
        __swift_project_value_buffer(v46, qword_27CE5A918);
        v30 = v67;
        sub_21D104E74(v13, v67, type metadata accessor for TTRAccountsListsViewModel.Item);
        v47 = sub_21DBF84AC();
        v48 = sub_21DBFAEBC();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v77 = v50;
          *v49 = 136315138;
          v51 = sub_21D25D428();
          v52 = v13;
          v13 = v53;
          v54 = v30;
          v30 = type metadata accessor for TTRAccountsListsViewModel.Item;
          sub_21D106918(v54, type metadata accessor for TTRAccountsListsViewModel.Item);
          v55 = sub_21D0CDFB4(v51, v13, &v77);

          *(v49 + 4) = v55;
          _os_log_impl(&dword_21D0C9000, v47, v48, "Invalid newParent {newParent: %s}", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x223D46520](v50, -1, -1);
          MEMORY[0x223D46520](v49, -1, -1);

          v56 = v52;
        }

        else
        {

          sub_21D106918(v30, type metadata accessor for TTRAccountsListsViewModel.Item);
          v56 = v13;
        }
      }

      else
      {
        v56 = v13;
      }

      sub_21D106918(v56, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_21DC08D00;
    *(v57 + 32) = v71;
    v77 = v57;
    sub_21D2F89FC(&qword_280D1B818, MEMORY[0x277CC9A28]);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70);
    sub_21D0D0F1C(&qword_280D178C8, &unk_27CE67A70);
    v58 = v72;
    v8 = v75;
    sub_21DBFBCBC();
    v29 = sub_21D292980(v58, v74);
    result = (*(v73 + 8))(v58, v8);
    if (!v29)
    {
      return result;
    }

    if (v29 >> 62)
    {
      break;
    }

    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

LABEL_22:
    if ((v29 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x223D44740](0, v29);
      goto LABEL_25;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v60 = *(v29 + 32);

LABEL_25:

      sub_21D291C1C(v60, v42, v68);
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_5:
    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5A918);
    v33 = v66;
    sub_21D104E74(v29, v66, type metadata accessor for TTRAccountsListsViewModel.Item);
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v63 = v36;
      v64 = swift_slowAlloc();
      v77 = v64;
      *v36 = 136315138;
      v62 = sub_21D25D428();
      v38 = v37;
      v65 = type metadata accessor for TTRAccountsListsViewModel.Item;
      sub_21D106918(v33, type metadata accessor for TTRAccountsListsViewModel.Item);
      v39 = sub_21D0CDFB4(v62, v38, &v77);

      v40 = v63;
      *(v63 + 1) = v39;
      _os_log_impl(&dword_21D0C9000, v34, v35, "Invalid oldParent {oldParent: %s}", v40, 0xCu);
      v41 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x223D46520](v41, -1, -1);
      MEMORY[0x223D46520](v40, -1, -1);

      sub_21D106918(v29, v65);
    }

    else
    {

      sub_21D106918(v33, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D106918(v29, type metadata accessor for TTRAccountsListsViewModel.Item);
    }
  }

  if (sub_21DBFBD7C())
  {
    goto LABEL_22;
  }
}

uint64_t sub_21D261568(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_21D0D3954(a1, v5, &unk_27CE5CD80);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE5CD80);
    swift_beginAccess();
    v13 = *(v1 + 16);
    if (v13 >> 62)
    {
      return sub_21DBFBD7C();
    }

    else
    {
      return *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v8, v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v15 = sub_21D2916C8(v11, sub_21D181E00);
    if (v15)
    {
      v16 = *(*v15 + 136);
      v17 = v15;
      swift_beginAccess();
      v18 = *(v17 + v16);
      sub_21DBF8E0C();

      if (v18 >> 62)
      {
        v14 = sub_21DBFBD7C();
      }

      else
      {
        v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v14 = 0;
    }

    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  return v14;
}

uint64_t sub_21D26181C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  sub_21D0D3954(a2, v11, &unk_27CE5CD80);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5CD80);
    swift_beginAccess();
    v17 = *(v3 + 16);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223D44740](a1);
      goto LABEL_6;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v18 = *(v17 + 8 * a1 + 32);

LABEL_6:
        swift_endAccess();
        v19 = *(*v18 + 120);
        swift_beginAccess();
        sub_21D104E74(v18 + v19, v32, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
  sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D2A0DC8(v13, v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v21 = sub_21D2916C8(v16, sub_21D181E00);
  if (!v21)
  {
LABEL_20:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    result = sub_21DBFC31C();
    __break(1u);
    return result;
  }

  v22 = *(*v21 + 136);
  v23 = v21;
  swift_beginAccess();
  v24 = *(v23 + v22);
  sub_21DBF8E0C();

  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x223D44740](a1, v24);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v25 = *(v24 + 8 * a1 + 32);
  }

  sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v26 = *(*v25 + 120);
  swift_beginAccess();
  v27 = v25 + v26;
  v28 = v31;
  sub_21D104E74(v27, v31, type metadata accessor for TTRRemindersListViewModel.Item);

  return sub_21D2A0DC8(v28, v32, type metadata accessor for TTRRemindersListViewModel.Item);
}

size_t sub_21D261CE4()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  swift_beginAccess();
  v20 = v0;
  v6 = v0[2];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    result = sub_21D18EB64(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = v23;
      v18[1] = v1;
      v19 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v10, v6);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v7 = sub_21DBFBD7C();
            goto LABEL_3;
          }

          if (v10 >= *(v19 + 16))
          {
            goto LABEL_18;
          }

          v12 = *(v6 + 8 * v10 + 32);
        }

        sub_21D29655C(v12, v5);

        v23 = v11;
        v1 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v1 >= v13 >> 1)
        {
          sub_21D18EB64(v13 > 1, v1 + 1, 1);
          v11 = v23;
        }

        ++v10;
        *(v11 + 16) = v1 + 1;
        sub_21D0D523C(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1, &qword_27CE581C8);
        if (v7 == v10)
        {

          v8 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_16:
    v14 = v20;
    swift_beginAccess();
    v15 = v14[4];
    v16 = swift_allocObject();
    v22 = v8;
    v21 = MEMORY[0x277D84F98];
    sub_21DBF8E0C();
    sub_21DB8503C(v11, &v22, &v21);

    v17 = v21;
    v16[2] = v22;
    v16[3] = v17;
    v16[4] = v15;
    return v16;
  }

  return result;
}

size_t sub_21D261FB8()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  swift_beginAccess();
  v20 = v0;
  v6 = v0[2];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    result = sub_21D0F5590(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = v23;
      v18[1] = v1;
      v19 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v10, v6);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v7 = sub_21DBFBD7C();
            goto LABEL_3;
          }

          if (v10 >= *(v19 + 16))
          {
            goto LABEL_18;
          }

          v12 = *(v6 + 8 * v10 + 32);
        }

        sub_21D296850(v12, v5);

        v23 = v11;
        v1 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v1 >= v13 >> 1)
        {
          sub_21D0F5590(v13 > 1, v1 + 1, 1);
          v11 = v23;
        }

        ++v10;
        *(v11 + 16) = v1 + 1;
        sub_21D0D523C(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1, &qword_27CE58180);
        if (v7 == v10)
        {

          v8 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_16:
    v14 = v20;
    swift_beginAccess();
    v15 = v14[4];
    v16 = swift_allocObject();
    v22 = v8;
    v21 = MEMORY[0x277D84F98];
    sub_21DBF8E0C();
    sub_21D0DA894(v11, &v22, &v21);

    v17 = v21;
    v16[2] = v22;
    v16[3] = v17;
    v16[4] = v15;
    return v16;
  }

  return result;
}

uint64_t TTRRemindersListTreeViewModel.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return v0;
}

uint64_t TTRRemindersListTreeViewModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return swift_deallocClassInstance();
}

size_t TTRRemindersListTreeViewModel.primarySectionItem.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v49 - v4;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v49 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v49 - v19;
  v56 = v1;
  v57 = *(v6 + 56);
  v58 = v6 + 56;
  v57(&v49 - v19, 1, 1, v5, v18);

  v21 = sub_21D263398(v20);

  v22 = v21;
  sub_21D0CF7E0(v20, &unk_27CE5CD80);
  v23 = *(v21 + 16);
  v59 = v6;
  v62 = v5;
  if (v23)
  {
    v55 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = v22 + v55;
    sub_21D104E74(v22 + v55, v16, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!EnumCaseMultiPayload)
    {
      v49 = v22;
      v61 = *(v6 + 72);
      v27 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D104E74(v24, v13, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v13, v20, type metadata accessor for TTRRemindersListViewModel.Item);
        (v57)(v20, 0, 1, v62);

        v28 = sub_21D263398(v20);

        sub_21D0CF7E0(v20, &unk_27CE5CD80);
        result = sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.Item);
        v29 = *(v28 + 16);
        v30 = v27[2];
        v31 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          goto LABEL_30;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v31 > v27[3] >> 1)
        {
          if (v30 <= v31)
          {
            v32 = v30 + v29;
          }

          else
          {
            v32 = v30;
          }

          result = sub_21D211A80(result, v32, 1, v27);
          v27 = result;
        }

        if (*(v28 + 16))
        {
          if ((v27[3] >> 1) - v27[2] < v29)
          {
            goto LABEL_32;
          }

          swift_arrayInitWithCopy();

          if (v29)
          {
            v33 = v27[2];
            v34 = __OFADD__(v33, v29);
            v35 = v33 + v29;
            if (v34)
            {
              goto LABEL_33;
            }

            v27[2] = v35;
          }
        }

        else
        {

          if (v29)
          {
            goto LABEL_31;
          }
        }

        v24 += v61;
        if (!--v23)
        {

          goto LABEL_21;
        }
      }
    }

    v27 = v22;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

LABEL_21:
  v36 = v27[2];
  v37 = v53;
  v38 = v54;
  v39 = v62;
  if (!v36)
  {
LABEL_26:

    v43 = 1;
    v44 = v52;
    return (v57)(v44, v43, 1, v39);
  }

  v40 = 0;
  v41 = (v51 + 56);
  while (v40 < v27[2])
  {
    sub_21D104E74(v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40, v37, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v37, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v45 = v50;
      sub_21D2A0DC8(v8, v50, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v46 = v45;
      v47 = v60;
      sub_21D2A0DC8(v46, v60, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      (*v41)(v47, 0, 1, v38);
      sub_21D0CF7E0(v47, &qword_27CE5A3A8);
      v48 = v52;
      sub_21D2A0DC8(v37, v52, type metadata accessor for TTRRemindersListViewModel.Item);
      v44 = v48;
      v43 = 0;
      return (v57)(v44, v43, 1, v39);
    }

    ++v40;
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v42 = v60;
    (*v41)(v60, 1, 1, v38);
    sub_21D106918(v37, type metadata accessor for TTRRemindersListViewModel.Item);
    result = sub_21D0CF7E0(v42, &qword_27CE5A3A8);
    if (v36 == v40)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

size_t TTRRemindersListTreeViewModel.sectionItems.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  v31 = v0;
  v29 = *(v2 + 56);
  v30 = v2 + 56;
  v29(v28 - v10, 1, 1, v1, v9);

  v12 = sub_21D263398(v11);

  sub_21D0CF7E0(v11, &unk_27CE5CD80);
  v13 = *(v12 + 16);
  if (!v13)
  {

    return MEMORY[0x277D84F90];
  }

  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = v12 + v14;
  sub_21D104E74(v12 + v14, v7, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item);
  if (EnumCaseMultiPayload)
  {
    return v12;
  }

  v28[0] = v12;
  v28[1] = v14;
  v32 = *(v2 + 72);
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21D104E74(v15, v4, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v4, v11, type metadata accessor for TTRRemindersListViewModel.Item);
    v19 = v1;
    (v29)(v11, 0, 1, v1);

    v20 = sub_21D263398(v11);

    sub_21D0CF7E0(v11, &unk_27CE5CD80);
    result = sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.Item);
    v21 = *(v20 + 16);
    v22 = v17[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v23 > v17[3] >> 1)
    {
      if (v22 <= v23)
      {
        v24 = v22 + v21;
      }

      else
      {
        v24 = v22;
      }

      result = sub_21D211A80(result, v24, 1, v17);
      v17 = result;
    }

    v1 = v19;
    if (*(v20 + 16))
    {
      if ((v17[3] >> 1) - v17[2] < v21)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v25 = v17[2];
        v26 = __OFADD__(v25, v21);
        v27 = v25 + v21;
        if (v26)
        {
          goto LABEL_25;
        }

        v17[2] = v27;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_23;
      }
    }

    v15 += v32;
    if (!--v13)
    {

      return v17;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t TTRRemindersListTreeViewModel.primarySectionID.getter@<X0>(uint64_t a1@<X8>)
{
  v29[2] = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v29 - v11;
  v32 = v1;
  v30 = *(v3 + 56);
  v31 = v3 + 56;
  v30(v29 - v11, 1, 1, v2, v10);

  v13 = sub_21D263398(v12);

  sub_21D0CF7E0(v12, &unk_27CE5CD80);
  v14 = *(v13 + 16);
  if (!v14)
  {

    v18 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v16 = v13 + v15;
  sub_21D104E74(v13 + v15, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
  if (EnumCaseMultiPayload)
  {
    v18 = v13;
LABEL_21:
    v34 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
    sub_21DBFA48C();
  }

  v29[3] = v15;
  v29[1] = v13;
  v33 = *(v3 + 72);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21D104E74(v16, v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v5, v12, type metadata accessor for TTRRemindersListViewModel.Item);
    v20 = v2;
    (v30)(v12, 0, 1, v2);

    v21 = sub_21D263398(v12);

    sub_21D0CF7E0(v12, &unk_27CE5CD80);
    result = sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    v22 = *(v21 + 16);
    v23 = v18[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v24 > v18[3] >> 1)
    {
      if (v23 <= v24)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      result = sub_21D211A80(result, v25, 1, v18);
      v18 = result;
    }

    v2 = v20;
    if (*(v21 + 16))
    {
      if ((v18[3] >> 1) - v18[2] < v22)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v22)
      {
        v26 = v18[2];
        v27 = __OFADD__(v26, v22);
        v28 = v26 + v22;
        if (v27)
        {
          goto LABEL_25;
        }

        v18[2] = v28;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_23;
      }
    }

    v16 += v33;
    if (!--v14)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21D2631D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(a1, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D2A0DC8(v6, v9, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v9, a2, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v10 = 0;
  }

  else
  {
    sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    v10 = 1;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  return (*(*(v11 - 8) + 56))(a2, v10, 1, v11);
}

uint64_t sub_21D263398(uint64_t a1)
{
  v53 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  v52 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v52);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  sub_21D0D3954(v53, v16, &unk_27CE5CD80);
  if ((*(v2 + 48))(v16, 1, v1) == 1)
  {
    sub_21D0CF7E0(v16, &unk_27CE5CD80);
    v22 = v54;
    swift_beginAccess();
    v23 = *(v22 + 16);
    if (v23 >> 62)
    {
      v24 = sub_21DBFBD7C();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v55 = MEMORY[0x277D84F90];
      sub_21DBF8E0C();
      sub_21D18EBA4(0, v24 & ~(v24 >> 63), 0);
      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = v55;
        if ((v23 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v24; ++i)
          {
            v27 = MEMORY[0x223D44740](i, v23);
            v28 = *(*v27 + 120);
            swift_beginAccess();
            sub_21D104E74(v27 + v28, v10, type metadata accessor for TTRRemindersListViewModel.Item);
            swift_unknownObjectRelease();
            v55 = v25;
            v30 = *(v25 + 16);
            v29 = *(v25 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_21D18EBA4(v29 > 1, v30 + 1, 1);
              v25 = v55;
            }

            *(v25 + 16) = v30 + 1;
            sub_21D2A0DC8(v10, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v30, type metadata accessor for TTRRemindersListViewModel.Item);
          }
        }

        else
        {
          v41 = 32;
          do
          {
            v42 = *(v23 + v41);
            v43 = *(*v42 + 120);
            swift_beginAccess();
            sub_21D104E74(v42 + v43, v13, type metadata accessor for TTRRemindersListViewModel.Item);
            v55 = v25;
            v45 = *(v25 + 16);
            v44 = *(v25 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_21D18EBA4(v44 > 1, v45 + 1, 1);
              v25 = v55;
            }

            *(v25 + 16) = v45 + 1;
            sub_21D2A0DC8(v13, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v45, type metadata accessor for TTRRemindersListViewModel.Item);
            v41 += 8;
            --v24;
          }

          while (v24);
        }

        return v25;
      }

      __break(1u);
      goto LABEL_37;
    }

    return v25;
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v18);
  sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D2A0DC8(v18, v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v31 = sub_21D2916C8(v21, sub_21D181E00);
  if (v31)
  {
    v32 = *(*v31 + 136);
    v33 = v31;
    swift_beginAccess();
    v34 = *(v33 + v32);
    sub_21DBF8E0C();

    if (v34 >> 62)
    {
      v35 = sub_21DBFBD7C();
      if (v35)
      {
LABEL_15:
        v55 = MEMORY[0x277D84F90];
        sub_21D18EBA4(0, v35 & ~(v35 >> 63), 0);
        if ((v35 & 0x8000000000000000) == 0)
        {
          v25 = v55;
          if ((v34 & 0xC000000000000001) != 0)
          {
            for (j = 0; j != v35; ++j)
            {
              v37 = MEMORY[0x223D44740](j, v34);
              v38 = *(*v37 + 120);
              swift_beginAccess();
              sub_21D104E74(v37 + v38, v4, type metadata accessor for TTRRemindersListViewModel.Item);
              swift_unknownObjectRelease();
              v55 = v25;
              v40 = *(v25 + 16);
              v39 = *(v25 + 24);
              if (v40 >= v39 >> 1)
              {
                sub_21D18EBA4(v39 > 1, v40 + 1, 1);
                v25 = v55;
              }

              *(v25 + 16) = v40 + 1;
              sub_21D2A0DC8(v4, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v40, type metadata accessor for TTRRemindersListViewModel.Item);
            }
          }

          else
          {
            v46 = 32;
            do
            {
              v47 = *(v34 + v46);
              v48 = *(*v47 + 120);
              swift_beginAccess();
              sub_21D104E74(v47 + v48, v7, type metadata accessor for TTRRemindersListViewModel.Item);
              v55 = v25;
              v50 = *(v25 + 16);
              v49 = *(v25 + 24);
              if (v50 >= v49 >> 1)
              {
                sub_21D18EBA4(v49 > 1, v50 + 1, 1);
                v25 = v55;
              }

              *(v25 + 16) = v50 + 1;
              sub_21D2A0DC8(v7, v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v50, type metadata accessor for TTRRemindersListViewModel.Item);
              v46 += 8;
              --v35;
            }

            while (v35);
          }

          sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
          return v25;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_15;
      }
    }

    sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return MEMORY[0x277D84F90];
  }

LABEL_38:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_21DBFBEEC();
  MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
  sub_21DBFC14C();
  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

uint64_t TTRRemindersListTreeViewModel.sectionItem(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v35 - v13;
  v41 = v2;
  v39 = *(v6 + 56);
  v40 = v6 + 56;
  v39(v35 - v13, 1, 1, v5, v12);

  v15 = sub_21D263398(v14);

  sub_21D0CF7E0(v14, &unk_27CE5CD80);
  v16 = *(v15 + 16);
  if (!v16)
  {

    v18 = MEMORY[0x277D84F90];
LABEL_21:
    MEMORY[0x28223BE20](v21);
    v35[-2] = a1;
    sub_21D22D788(sub_21D2A0E78, v18, a2);
  }

  v36 = a1;
  v37 = a2;
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = v15;
  v19 = v15 + v17;
  sub_21D104E74(v19, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item);
  if (EnumCaseMultiPayload)
  {
LABEL_20:
    a1 = v36;
    a2 = v37;
    goto LABEL_21;
  }

  v22 = v5;
  v35[1] = v18;
  v42 = *(v6 + 72);
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v17;
    v25 = v38;
    sub_21D104E74(v19, v38, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v25, v14, type metadata accessor for TTRRemindersListViewModel.Item);
    v26 = v22;
    (v39)(v14, 0, 1, v22);

    v27 = sub_21D263398(v14);

    sub_21D0CF7E0(v14, &unk_27CE5CD80);
    result = sub_21D106918(v25, type metadata accessor for TTRRemindersListViewModel.Item);
    v28 = *(v27 + 16);
    v29 = v18[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v30 > v18[3] >> 1)
    {
      if (v29 <= v30)
      {
        v31 = v29 + v28;
      }

      else
      {
        v31 = v29;
      }

      result = sub_21D211A80(result, v31, 1, v18);
      v18 = result;
    }

    v22 = v26;
    v17 = v24;
    if (*(v27 + 16))
    {
      if ((v18[3] >> 1) - v18[2] < v28)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v32 = v18[2];
        v33 = __OFADD__(v32, v28);
        v34 = v32 + v28;
        if (v33)
        {
          goto LABEL_25;
        }

        v18[2] = v34;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_23;
      }
    }

    v19 += v42;
    if (!--v16)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21D263FE0(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v14 - 8);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  sub_21D104E74(v33, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D2A0DC8(v10, v13, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v13, v21, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v22 = 0;
  }

  else
  {
    sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item);
    v22 = 1;
  }

  v23 = *(v3 + 56);
  v23(v21, v22, 1, v2);
  sub_21D104E74(v34, v18, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v23(v18, 0, 1, v2);
  v24 = *(v5 + 48);
  sub_21D0D3954(v21, v7, &unk_27CE5CD70);
  sub_21D0D3954(v18, &v7[v24], &unk_27CE5CD70);
  v25 = *(v3 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    v27 = v32;
    sub_21D0D3954(v7, v32, &unk_27CE5CD70);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v28 = v27;
      v29 = v31;
      sub_21D2A0DC8(&v7[v24], v31, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v26 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v28, v29);
      sub_21D106918(v29, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v18, &unk_27CE5CD70);
      sub_21D0CF7E0(v21, &unk_27CE5CD70);
      sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v7, &unk_27CE5CD70);
      return v26 & 1;
    }

    sub_21D0CF7E0(v18, &unk_27CE5CD70);
    sub_21D0CF7E0(v21, &unk_27CE5CD70);
    sub_21D106918(v27, type metadata accessor for TTRRemindersListViewModel.SectionID);
    goto LABEL_9;
  }

  sub_21D0CF7E0(v18, &unk_27CE5CD70);
  sub_21D0CF7E0(v21, &unk_27CE5CD70);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_9:
    sub_21D0CF7E0(v7, &qword_27CE58388);
    v26 = 0;
    return v26 & 1;
  }

  sub_21D0CF7E0(v7, &unk_27CE5CD70);
  v26 = 1;
  return v26 & 1;
}

uint64_t TTRRemindersListTreeViewModel.sectionItem(containing:allowsSelf:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v39 = a1;
  v34 = a3;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v32[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v32[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v32[-v20];
  sub_21D104E74(v39, &v32[-v20], type metadata accessor for TTRRemindersListViewModel.Item);
  v38 = *(v7 + 56);
  v39 = v7 + 56;
  v38(v21, 0, 1, v6);
  sub_21D0D3954(v21, v18, &unk_27CE5CD80);
  v35 = *(v7 + 48);
  v36 = v7 + 48;
  if (v35(v18, 1, v6) == 1)
  {
LABEL_2:
    sub_21D0CF7E0(v21, &unk_27CE5CD80);
    sub_21D0CF7E0(v18, &unk_27CE5CD80);
LABEL_3:
    v22 = 1;
    v23 = v34;
    return v38(v23, v22, 1, v6);
  }

  sub_21D2A0DC8(v18, v12, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D104E74(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D0CF7E0(v21, &unk_27CE5CD80);
    sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    if (v33)
    {
      goto LABEL_17;
    }

    sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_3;
  }

  do
  {
    sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    v24 = *(v37 + 80);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v5);
    swift_beginAccess();
    if (!*(*(v24 + 24) + 16) || (sub_21D181E00(v5, v25), (v26 & 1) == 0))
    {
      swift_endAccess();
      sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v21, &unk_27CE5CD80);
      v29 = 1;
      goto LABEL_12;
    }

    swift_endAccess();

    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
    Strong = swift_weakLoadStrong();

    sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v21, &unk_27CE5CD80);

    if (Strong)
    {
      v28 = *(*Strong + 120);
      swift_beginAccess();
      sub_21D104E74(Strong + v28, v15, type metadata accessor for TTRRemindersListViewModel.Item);
      v29 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v29 = 1;
LABEL_13:
    v38(v15, v29, 1, v6);
    sub_21D0D523C(v15, v21, &unk_27CE5CD80);
    sub_21D0D3954(v21, v18, &unk_27CE5CD80);
    if (v35(v18, 1, v6) == 1)
    {
      goto LABEL_2;
    }

    sub_21D2A0DC8(v18, v12, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  while (swift_getEnumCaseMultiPayload() != 1);
  sub_21D0CF7E0(v21, &unk_27CE5CD80);
  sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_17:
  v30 = v34;
  sub_21D2A0DC8(v12, v34, type metadata accessor for TTRRemindersListViewModel.Item);
  v23 = v30;
  v22 = 0;
  return v38(v23, v22, 1, v6);
}

uint64_t TTRRemindersListTreeViewModel.parent(of:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
  v5 = sub_21D2916C8(v4, sub_21D181E00);
  sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v5)
  {

    goto LABEL_5;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  v7 = *(*Strong + 120);
  swift_beginAccess();
  sub_21D104E74(Strong + v7, a1, type metadata accessor for TTRRemindersListViewModel.Item);

  v8 = 0;
LABEL_6:
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t TTRRemindersListTreeViewModel.numberOfSubtasks(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_21D104E74(a1, &v8 - v3, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D261568(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80);
  return v6;
}

uint64_t TTRRemindersListTreeViewModel.subtasks(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D104E74(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D263398(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80);
  return v6;
}

uint64_t TTRRemindersListTreeViewModel.isTopLevelReminder(_:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v12 = sub_21D2916C8(v2, sub_21D181E00);
  sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v12)
  {

    goto LABEL_6;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
LABEL_6:
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v14 = *(*Strong + 120);
  swift_beginAccess();
  sub_21D104E74(Strong + v14, v8, type metadata accessor for TTRRemindersListViewModel.Item);

  sub_21D104E74(v8, v5, type metadata accessor for TTRRemindersListViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D2A0DC8(v5, v11, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v15 = 0;
  }

  else
  {
    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = 1;
  }

  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v18 = *(v17 - 8);
  v19 = 1;
  (*(v18 + 56))(v11, v15, 1, v17);
  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_21D0CF7E0(v11, &qword_27CE5A3A8);
  return v19;
}

uint64_t TTRRemindersListTreeViewModel.subtaskDisplayCount(of:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v3 = sub_21D2916C8(v2, sub_21D181E00);

  sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v3)
  {
    return 0;
  }

  v4 = v3 + *(*v3 + 128);
  swift_beginAccess();
  v5 = *(v4 + 8);

  return v5;
}

void *TTRRemindersListTreeViewModel.remindersWithSubtasks.getter()
{
  v136 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v136);
  v138 = (&v115 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v131 = &v115 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v137 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v132 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v139 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7);
  v116 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v127 = &v115 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v115 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8);
  MEMORY[0x28223BE20](v14 - 8);
  v146 = &v115 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v128 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v135 = &v115 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v115 - v22;
  MEMORY[0x28223BE20](v24);
  v140 = &v115 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v115 - v27;
  MEMORY[0x28223BE20](v29);
  v142 = &v115 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v115 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v34 - 8);
  v126 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v134 = &v115 - v37;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v115 - v40;
  v141 = v0;
  v42 = *(v17 + 56);
  v130 = v17 + 56;
  v129 = v42;
  (v42)(&v115 - v40, 1, 1, v16, v39);

  v43 = sub_21D263398(v41);
  v44 = v16;

  v122 = v41;
  v45 = v41;
  v46 = v43;
  sub_21D0CF7E0(v45, &unk_27CE5CD80);
  v47 = *(v43 + 16);
  v143 = v7;
  v147 = v44;
  v120 = v17;
  if (v47)
  {
    v48 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v49 = v43 + v48;
    sub_21D104E74(v46 + v48, v33, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v33, type metadata accessor for TTRRemindersListViewModel.Item);
    if (EnumCaseMultiPayload)
    {
      result = v46;
      v17 = v120;
    }

    else
    {
      v133 = v48;
      v125 = v46;
      v144 = *(v120 + 72);
      v52 = MEMORY[0x277D84F90];
      do
      {
        v53 = v142;
        sub_21D104E74(v49, v142, type metadata accessor for TTRRemindersListViewModel.Item);
        v54 = v122;
        sub_21D104E74(v53, v122, type metadata accessor for TTRRemindersListViewModel.Item);
        v129(v54, 0, 1, v147);

        v55 = sub_21D263398(v54);

        sub_21D0CF7E0(v54, &unk_27CE5CD80);
        result = sub_21D106918(v53, type metadata accessor for TTRRemindersListViewModel.Item);
        v56 = *(v55 + 16);
        v57 = v52[2];
        v58 = v57 + v56;
        if (__OFADD__(v57, v56))
        {
          goto LABEL_89;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v59 = v52;
        if (!result || v58 > v52[3] >> 1)
        {
          if (v57 <= v58)
          {
            v60 = v57 + v56;
          }

          else
          {
            v60 = v57;
          }

          result = sub_21D211A80(result, v60, 1, v52);
          v59 = result;
        }

        if (*(v55 + 16))
        {
          if ((v59[3] >> 1) - v59[2] < v56)
          {
            goto LABEL_91;
          }

          v52 = v59;
          swift_arrayInitWithCopy();

          if (v56)
          {
            v61 = v52[2];
            v62 = __OFADD__(v61, v56);
            v63 = v61 + v56;
            if (v62)
            {
              goto LABEL_92;
            }

            v52[2] = v63;
          }
        }

        else
        {
          v52 = v59;

          if (v56)
          {
            goto LABEL_90;
          }
        }

        v49 += v144;
        --v47;
      }

      while (v47);

      v17 = v120;
      result = v52;
    }
  }

  else
  {

    result = MEMORY[0x277D84F90];
  }

  v64 = v141;
  v65 = v147;
  v119 = result[2];
  if (v119)
  {
    v66 = 0;
    v123 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v117 = result + v123;
    v144 = (v132 + 7);
    v133 = (v132 + 6);
    v124 = (v17 + 48);
    v132 = MEMORY[0x277D84F90];
    v118 = result;
    while (v66 < result[2])
    {
      v67 = *(v17 + 72);
      v125 = v66;
      v68 = v122;
      sub_21D104E74(&v117[v67 * v66], v122, type metadata accessor for TTRRemindersListViewModel.Item);
      v129(v68, 0, 1, v65);

      v69 = sub_21D263398(v68);

      sub_21D0CF7E0(v68, &unk_27CE5CD80);
      v70 = *(v69 + 16);
      if (v70)
      {
        v121 = v69;
        v71 = v69 + v123;
        v142 = v67;
        while (1)
        {
          sub_21D104E74(v71, v28, type metadata accessor for TTRRemindersListViewModel.Item);
          v73 = *(v64 + 80);
          sub_21D104E74(v28, v23, type metadata accessor for TTRRemindersListViewModel.Item);
          v74 = swift_getEnumCaseMultiPayload();
          if (v74 > 5)
          {
            if (v74 <= 7)
            {
              if (v74 == 6)
              {
                v81 = 1;
              }

              else
              {
                v81 = 2;
              }

              goto LABEL_50;
            }

            if (v74 == 8)
            {
              v81 = 4;
LABEL_50:
              *v13 = v81;
              swift_storeEnumTagMultiPayload();

              sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
              goto LABEL_55;
            }

            if (v74 == 9)
            {
              v77 = 3;
            }

            else
            {
              v77 = 5;
            }

            *v13 = v77;
          }

          else
          {
            if ((v74 - 2) >= 3)
            {
              if (v74 >= 2)
              {

                sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
                *v13 = 0;
              }

              else
              {
                v78 = v139;
                sub_21D2A0DC8(v23, v139, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
                sub_21D104E74(v78, v138, type metadata accessor for TTRRemindersListViewModel.SectionID);
                LOBYTE(v78) = swift_getEnumCaseMultiPayload();

                v79 = 1 << v78;
                if (((1 << v78) & 0x17E) != 0)
                {
                  sub_21D106918(v138, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v80 = v131;
                  goto LABEL_52;
                }

                v80 = v131;
                if ((v79 & 0x81) != 0)
                {
LABEL_52:
                  v82 = v139;
                  sub_21D104E74(v139, v80, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  sub_21D106918(v82, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
                }

                else
                {
                  sub_21D106918(v139, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
                  *v80 = *v138;
                  swift_storeEnumTagMultiPayload();
                }

                sub_21D2A0DC8(v80, v13, type metadata accessor for TTRRemindersListViewModel.SectionID);
              }

              swift_storeEnumTagMultiPayload();
              goto LABEL_55;
            }

            v75 = v137;
            sub_21D2A0DC8(v23, v137, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v76 = v75;
            v67 = v142;
            sub_21D2A0DC8(v76, v13, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          }

          swift_storeEnumTagMultiPayload();

LABEL_55:
          swift_beginAccess();
          if (!*(*(v73 + 24) + 16) || (sub_21D181E00(v13, v83), (v84 & 1) == 0))
          {
            swift_endAccess();
            sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_29:
            v72 = v146;
            (*v144)(v146, 1, 1, v145);
            goto LABEL_30;
          }

          swift_endAccess();

          sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
          Strong = swift_weakLoadStrong();

          if (!Strong)
          {
            sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
            v64 = v141;
            goto LABEL_29;
          }

          v86 = *(*Strong + 120);
          swift_beginAccess();
          v87 = Strong + v86;
          v88 = v140;
          sub_21D104E74(v87, v140, type metadata accessor for TTRRemindersListViewModel.Item);

          v89 = v135;
          sub_21D104E74(v88, v135, type metadata accessor for TTRRemindersListViewModel.Item);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v90 = v89;
            v72 = v146;
            sub_21D2A0DC8(v90, v146, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            v91 = 0;
            v64 = v141;
          }

          else
          {
            sub_21D106918(v89, type metadata accessor for TTRRemindersListViewModel.Item);
            v91 = 1;
            v64 = v141;
            v72 = v146;
          }

          v92 = v145;
          (*v144)(v72, v91, 1, v145);
          sub_21D106918(v140, type metadata accessor for TTRRemindersListViewModel.Item);
          if ((*v133)(v72, 1, v92) != 1)
          {
            sub_21D0CF7E0(v72, &qword_27CE5A3A8);
            v93 = *(v64 + 80);
            v94 = v134;
            sub_21D104E74(v28, v134, type metadata accessor for TTRRemindersListViewModel.Item);
            v95 = v147;
            v129(v94, 0, 1, v147);
            v96 = v94;
            v97 = v126;
            sub_21D0D3954(v96, v126, &unk_27CE5CD80);
            LODWORD(v95) = (*v124)(v97, 1, v95);

            if (v95 == 1)
            {
              sub_21D0CF7E0(v97, &unk_27CE5CD80);
              swift_beginAccess();
              v98 = *(v93 + 16);
              if (v98 >> 62)
              {
                v99 = sub_21DBFBD7C();
              }

              else
              {
                v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v64 = v141;
              v67 = v142;
            }

            else
            {
              v100 = v116;
              TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v116);
              sub_21D106918(v97, type metadata accessor for TTRRemindersListViewModel.Item);
              v101 = v100;
              v102 = v127;
              sub_21D2A0DC8(v101, v127, type metadata accessor for TTRRemindersListViewModel.ItemID);
              swift_beginAccess();
              v104 = *(v93 + 24);
              if (*(v104 + 16) && (v105 = sub_21D181E00(v102, v103), (v106 & 1) != 0))
              {
                v107 = *(*(v104 + 56) + 8 * v105);
                swift_endAccess();
                v108 = *(*v107 + 136);
                swift_beginAccess();
                v109 = *(v107 + v108);
                v67 = v142;
                if (v109 >> 62)
                {
                  v99 = sub_21DBFBD7C();
                }

                else
                {
                  v99 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v64 = v141;
              }

              else
              {
                swift_endAccess();
                v99 = 0;
                v64 = v141;
                v67 = v142;
              }

              sub_21D106918(v127, type metadata accessor for TTRRemindersListViewModel.ItemID);
            }

            sub_21D0CF7E0(v134, &unk_27CE5CD80);

            if (v99 <= 0)
            {
              sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
            }

            else
            {
              sub_21D104E74(v28, v128, type metadata accessor for TTRRemindersListViewModel.Item);
              v110 = v132;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v110 = sub_21D211A80(0, v110[2] + 1, 1, v110);
              }

              v111 = v110;
              v112 = v110[2];
              v132 = v111;
              v113 = v111[3];
              if (v112 >= v113 >> 1)
              {
                v132 = sub_21D211A80(v113 > 1, v112 + 1, 1, v132);
              }

              sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
              v114 = v132;
              v132[2] = v112 + 1;
              sub_21D2A0DC8(v128, v114 + v123 + v112 * v67, type metadata accessor for TTRRemindersListViewModel.Item);
              v64 = v141;
            }

            goto LABEL_31;
          }

          sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
          v67 = v142;
LABEL_30:
          sub_21D0CF7E0(v72, &qword_27CE5A3A8);
LABEL_31:
          v71 += v67;
          if (!--v70)
          {

            v65 = v147;
            goto LABEL_24;
          }
        }
      }

LABEL_24:
      v66 = v125 + 1;
      v17 = v120;
      result = v118;
      if ((v125 + 1) == v119)
      {

        return v132;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

BOOL TTRRemindersListTreeViewModel.isReminderWithSubtasks(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    return 0;
  }

  sub_21D104E74(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D261568(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80);
  return v6 > 0;
}

size_t TTRRemindersListTreeViewModel.hasLoadedEditableSectionItems(with:)(void *a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v52 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v12);
  v53 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v52 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v58 = v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8);
  MEMORY[0x28223BE20](v22 - 8);
  v54 = v52 - v23;
  *v16 = a1;
  v56 = v16;
  swift_storeEnumTagMultiPayload();
  v24 = *(v4 + 56);
  v61 = v4 + 56;
  v62 = v1;
  v60 = v24;
  v24(v19, 1, 1, v3);
  v25 = a1;

  v26 = sub_21D263398(v19);

  sub_21D0CF7E0(v19, &unk_27CE5CD80);
  v27 = *(v26 + 16);
  v57 = v4;
  if (!v27)
  {

    v33 = MEMORY[0x277D84F90];
LABEL_21:
    MEMORY[0x28223BE20](v32);
    v44 = v56;
    v52[-2] = v56;
    v45 = v58;
    sub_21D22D788(sub_21D2F8BAC, v33, v58);

    sub_21D106918(v44, type metadata accessor for TTRRemindersListViewModel.SectionID);
    if ((*(v57 + 48))(v45, 1, v3) == 1)
    {
      sub_21D0CF7E0(v45, &unk_27CE5CD80);
    }

    else
    {
      v46 = v55;
      sub_21D104E74(v45, v55, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = v54;
        sub_21D2A0DC8(v46, v54, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v48 = 0;
      }

      else
      {
        sub_21D106918(v46, type metadata accessor for TTRRemindersListViewModel.Item);
        v48 = 1;
        v47 = v54;
      }

      v49 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v50 = *(v49 - 8);
      (*(v50 + 56))(v47, v48, 1, v49);
      sub_21D106918(v45, type metadata accessor for TTRRemindersListViewModel.Item);
      if ((*(v50 + 48))(v47, 1, v49) != 1)
      {
        v51 = v53;
        sub_21D104E74(v47, v53, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D106918(v47, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v64);
        sub_21D106918(v51, type metadata accessor for TTRRemindersListViewModel.SectionID);
        if (v65 > 1u)
        {
          if (v65 != 2)
          {
            return 0;
          }
        }

        else if (!v65)
        {

          return 1;
        }

        return 0;
      }

      sub_21D0CF7E0(v47, &qword_27CE5A3A8);
    }

    return 0;
  }

  v28 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v29 = v26 + v28;
  sub_21D104E74(v26 + v28, v11, type metadata accessor for TTRRemindersListViewModel.Item);
  v30 = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);
  if (EnumCaseMultiPayload)
  {
    v33 = v30;
    goto LABEL_21;
  }

  v59 = v28;
  v52[1] = v30;
  v63 = *(v4 + 72);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21D104E74(v29, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v8, v19, type metadata accessor for TTRRemindersListViewModel.Item);
    v35 = v3;
    v60(v19, 0, 1, v3);

    v36 = sub_21D263398(v19);

    sub_21D0CF7E0(v19, &unk_27CE5CD80);
    result = sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v37 = *(v36 + 16);
    v38 = v33[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v39 > v33[3] >> 1)
    {
      if (v38 <= v39)
      {
        v40 = v38 + v37;
      }

      else
      {
        v40 = v38;
      }

      result = sub_21D211A80(result, v40, 1, v33);
      v33 = result;
    }

    v3 = v35;
    if (*(v36 + 16))
    {
      if ((v33[3] >> 1) - v33[2] < v37)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      if (v37)
      {
        v41 = v33[2];
        v42 = __OFADD__(v41, v37);
        v43 = v41 + v37;
        if (v42)
        {
          goto LABEL_37;
        }

        v33[2] = v43;
      }
    }

    else
    {

      if (v37)
      {
        goto LABEL_35;
      }
    }

    v29 += v63;
    if (!--v27)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

BOOL TTRRemindersListTreeViewModel.hasLoadedReminderItems(with:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  if (*(v3 + 16) && (v4 = sub_21D17E07C(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    return *(v6 + 16) != 0;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t TTRRemindersListTreeViewModel.hasLoadedReminderItems(in:)(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_21D104E74(a1, &v23 - v16, type metadata accessor for TTRRemindersListViewModel.Item);
  (*(v6 + 56))(v17, 0, 1, v5);

  result = sub_21D261568(v17);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = result;
    sub_21D0D523C(v17, v14, &unk_27CE5CD80);
    if (v19)
    {
      for (i = 0; v19 != i; ++i)
      {
        sub_21D26181C(i, v14, v11);
        sub_21D2A0DC8(v11, v8, type metadata accessor for TTRRemindersListViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 3)
        {
          if (EnumCaseMultiPayload < 2)
          {
LABEL_4:
            sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_5:
            swift_storeEnumTagMultiPayload();
            continue;
          }
        }

        else
        {
          if ((EnumCaseMultiPayload - 5) < 4)
          {
            goto LABEL_4;
          }

          if ((EnumCaseMultiPayload - 9) < 2)
          {
            goto LABEL_5;
          }
        }

        sub_21D2A0DC8(v8, v4, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        swift_storeEnumTagMultiPayload();
        v22 = swift_getEnumCaseMultiPayload();
        if (v22 <= 1)
        {
          if (v22 != 1)
          {

            sub_21D0CF7E0(v14, &unk_27CE5CD80);
            sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
            return 1;
          }

LABEL_17:
          sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
          continue;
        }

        if (v22 == 2)
        {
          goto LABEL_17;
        }
      }
    }

    sub_21D0CF7E0(v14, &unk_27CE5CD80);
    return 0;
  }

  return result;
}

uint64_t TTRRemindersListTreeViewModel.isEffectivelyEmpty.getter()
{
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v29);
  v30 = (&v27 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  (*(v4 + 56))(&v27 - v15, 1, 1, v3, v14);

  v17 = sub_21D2678E4(v16);

  sub_21D0CF7E0(v16, &unk_27CE5CD80);
  v27 = v17;
  sub_21DBFC10C();
  sub_21DBFC42C();
  v18 = *(v4 + 48);
  if (v18(v12, 1, v3) == 1)
  {
LABEL_2:

    return 1;
  }

  v20 = v28;
  while (1)
  {
    sub_21D2A0DC8(v12, v6, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 5) < 4)
      {
        sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_5:
        swift_storeEnumTagMultiPayload();
        goto LABEL_6;
      }

      if ((EnumCaseMultiPayload - 9) < 2)
      {
        goto LABEL_5;
      }
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_13:
    sub_21D2A0DC8(v6, v9, v22);
    swift_storeEnumTagMultiPayload();
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 > 1)
    {
      if (v23 != 5)
      {

        sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
        return 0;
      }

      goto LABEL_6;
    }

    if (!v23)
    {
      v24 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem;
      v25 = v9;
      goto LABEL_28;
    }

    sub_21D2A0DC8(v9, v20, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v20, v30, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v20, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 4)
    {
      break;
    }

    if (v26 > 2)
    {
      goto LABEL_27;
    }

    if (v26)
    {
      if (v26 != 2)
      {
        goto LABEL_30;
      }

LABEL_27:
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID;
      v25 = v30;
LABEL_28:
      sub_21D106918(v25, v24);
    }

LABEL_6:
    sub_21DBFC42C();
    if (v18(v12, 1, v3) == 1)
    {
      goto LABEL_2;
    }
  }

  if (v26 <= 6)
  {
    goto LABEL_27;
  }

  if (v26 == 7)
  {
    goto LABEL_6;
  }

  if (v26 == 8)
  {

    goto LABEL_6;
  }

LABEL_30:

  return 0;
}

uint64_t sub_21D2678E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_21D0D3954(a1, v5, &unk_27CE5CD80);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_21D0CF7E0(v5, &unk_27CE5CD80);
    swift_beginAccess();
    v13 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A570);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    sub_21DBF8E0C();
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v8, v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v15 = sub_21D2916C8(v11, sub_21D181E00);
    if (!v15)
    {
      sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A580);
      result = swift_allocObject();
      *(result + 16) = MEMORY[0x277D84F90];
      return result;
    }

    v16 = *(*v15 + 136);
    v17 = v15;
    swift_beginAccess();
    v18 = *(v17 + v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A570);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 32) = v18;
    *(v14 + 40) = 0;
    sub_21DBF8E0C();

    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A578);
  result = swift_allocObject();
  *(result + 16) = sub_21D2F8B80;
  *(result + 24) = v19;
  return result;
}

uint64_t sub_21D267C40(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_21D0D3954(a1, v5, &qword_27CE5A490);
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5A490);
    swift_beginAccess();
    v13 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    sub_21DBF8E0C();
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v8);
    sub_21D106918(v5, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D2A0DC8(v8, v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v15 = sub_21D2916C8(v11, sub_21D105CF4);
    if (!v15)
    {
      sub_21D106918(v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4C0);
      result = swift_allocObject();
      *(result + 16) = MEMORY[0x277D84F90];
      return result;
    }

    v16 = *(*v15 + 136);
    v17 = v15;
    swift_beginAccess();
    v18 = *(v17 + v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 32) = v18;
    *(v14 + 40) = 0;
    sub_21DBF8E0C();

    sub_21D106918(v11, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4B8);
  result = swift_allocObject();
  *(result + 16) = sub_21D2F89A0;
  *(result + 24) = v19;
  return result;
}

uint64_t TTRRemindersListTreeViewModel.hasSubtasks.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v38 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = v38 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v38 - v21;
  (*(v9 + 56))(v38 - v21, 1, 1, v8, v20);

  v23 = sub_21D2678E4(v22);

  sub_21D0CF7E0(v22, &unk_27CE5CD80);

  v38[1] = v23;
  v42 = sub_21DBFC10C();
  sub_21DBFC42C();
  v24 = *(v9 + 48);
  v41 = v9 + 48;
  if (v24(v18, 1, v8) != 1)
  {
    while (1)
    {
      sub_21D2A0DC8(v18, v15, type metadata accessor for TTRRemindersListViewModel.Item);
      v28 = *(v1 + 80);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
      swift_beginAccess();
      if (!*(*(v28 + 24) + 16) || (sub_21D181E00(v4, v29), (v30 & 1) == 0))
      {
        swift_endAccess();
        sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_5:
        v27 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
        (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
        goto LABEL_6;
      }

      v31 = v1;
      swift_endAccess();

      sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
      Strong = swift_weakLoadStrong();

      if (!Strong)
      {
        goto LABEL_5;
      }

      v33 = *(*Strong + 120);
      swift_beginAccess();
      v34 = Strong + v33;
      v35 = v40;
      sub_21D104E74(v34, v40, type metadata accessor for TTRRemindersListViewModel.Item);

      sub_21D104E74(v35, v39, type metadata accessor for TTRRemindersListViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        break;
      }

      if ((EnumCaseMultiPayload - 5) < 4)
      {
        goto LABEL_15;
      }

      v1 = v31;
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        goto LABEL_19;
      }

LABEL_16:
      v37 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
      swift_storeEnumTagMultiPayload();
      sub_21D106918(v40, type metadata accessor for TTRRemindersListViewModel.Item);
      (*(*(v37 - 8) + 56))(v7, 0, 1, v37);
      if (swift_getEnumCaseMultiPayload() < 3)
      {
        sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
        sub_21D106918(v15, type metadata accessor for TTRRemindersListViewModel.Item);
        v25 = 1;
        goto LABEL_3;
      }

LABEL_6:
      sub_21D106918(v15, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21DBFC42C();
      if (v24(v18, 1, v8) == 1)
      {
        goto LABEL_2;
      }
    }

    if (EnumCaseMultiPayload < 2)
    {
LABEL_15:
      sub_21D106918(v39, type metadata accessor for TTRRemindersListViewModel.Item);
      v1 = v31;
      goto LABEL_16;
    }

    v1 = v31;
LABEL_19:
    sub_21D2A0DC8(v39, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    goto LABEL_16;
  }

LABEL_2:
  v25 = 0;
LABEL_3:

  return v25;
}

uint64_t TTRRemindersListTreeViewModel.isSubtask(_:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v9 = sub_21D2916C8(v2, sub_21D181E00);
  sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v9)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v11 = *(*Strong + 120);
      swift_beginAccess();
      sub_21D104E74(Strong + v11, v5, type metadata accessor for TTRRemindersListViewModel.Item);

      TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v8);
      sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() < 3)
      {
        sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t TTRRemindersListTreeViewModel.isItemExpandable(_:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  if ((*(v6 + 16))(a1, ObjectType, v6))
  {
    return 0;
  }

  TTRRemindersListViewModel.Item.baseTreeCasesOnly.getter(v5);
  if (swift_getEnumCaseMultiPayload() > 4)
  {
    return 0;
  }

  sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
  return 1;
}

uint64_t TTRRemindersListTreeViewModel.parentOfSubtask(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (TTRRemindersListTreeViewModel.isSubtask(_:)())
  {

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
    v5 = sub_21D2916C8(v4, sub_21D181E00);
    sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v5)
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v7 = *(*Strong + 120);
        swift_beginAccess();
        sub_21D104E74(Strong + v7, a1, type metadata accessor for TTRRemindersListViewModel.Item);

        v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
        return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
      }
    }

    else
    {
    }

    v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_21D268BC0(uint64_t a1, int a2)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v61 = &v53[-v7];
  MEMORY[0x28223BE20](v8);
  v57 = &v53[-v9];
  v10 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v13 - 8);
  v58 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v53[-v16];
  v62 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v18 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v55 = &v53[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v53[-v23];
  MEMORY[0x28223BE20](v25);
  v27 = &v53[-v26];
  v28 = v2;

  v59 = a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
  v29 = sub_21D2916C8(v17, sub_21D181E00);
  sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v29)
  {

LABEL_18:
    LOBYTE(Strong) = 0;
    return Strong & 1;
  }

  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    v31 = *(*Strong + 120);
    swift_beginAccess();
    sub_21D104E74(Strong + v31, v24, type metadata accessor for TTRRemindersListViewModel.Item);

    v32 = v27;
    sub_21D2A0DC8(v24, v27, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.baseTreeCasesOnly.getter(v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload - 2 < 3)
    {
      sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
      v34 = v28;
LABEL_11:
      v45 = v61;
      sub_21D104E74(v27, v61, type metadata accessor for TTRRemindersListViewModel.Item);
      v46 = v62;
      (*(v18 + 56))(v45, 0, 1, v62);
      v38 = v60;
      sub_21D26B570(v45, v34, v60);
      sub_21D0CF7E0(v45, &unk_27CE5CD80);
      if ((*(v18 + 48))(v38, 1, v46) == 1)
      {
        goto LABEL_12;
      }

      v47 = v38;
      v48 = v56;
      sub_21D2A0DC8(v47, v56, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
      v49 = v58;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v58);
      v50 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v17, v49);
      sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v50)
      {
        LOBYTE(Strong) = sub_21D268BC0(v27, 0);
        sub_21D106918(v48, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D106918(v27, type metadata accessor for TTRRemindersListViewModel.Item);
        return Strong & 1;
      }

      sub_21D106918(v48, type metadata accessor for TTRRemindersListViewModel.Item);
      v51 = v27;
LABEL_17:
      sub_21D106918(v51, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_18;
    }

    v34 = v28;
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_11;
    }

    sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
    v35 = v61;
    sub_21D104E74(v27, v61, type metadata accessor for TTRRemindersListViewModel.Item);
    v36 = *(v18 + 56);
    v37 = v62;
    (v36)(v35, 0, 1, v62);
    v38 = v57;
    sub_21D26B570(v35, v28, v57);
    sub_21D0CF7E0(v35, &unk_27CE5CD80);
    if ((*(v18 + 48))(v38, 1, v37) == 1)
    {
LABEL_12:
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v38, &unk_27CE5CD80);
      goto LABEL_18;
    }

    v60 = v36;
    v39 = v38;
    v40 = v55;
    sub_21D2A0DC8(v39, v55, type metadata accessor for TTRRemindersListViewModel.Item);
    v41 = v59;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
    v42 = v58;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v58);
    v43 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v17, v42);
    sub_21D106918(v42, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if ((v43 & 1) == 0)
    {
      sub_21D106918(v40, type metadata accessor for TTRRemindersListViewModel.Item);
      v51 = v32;
      goto LABEL_17;
    }

    if (v54)
    {
      sub_21D104E74(v41, v35, type metadata accessor for TTRRemindersListViewModel.Item);
      (v60)(v35, 0, 1, v62);

      v44 = sub_21D261568(v35);

      sub_21D0CF7E0(v35, &unk_27CE5CD80);
      sub_21D106918(v55, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      LOBYTE(Strong) = v44 == 0;
    }

    else
    {
      sub_21D106918(v55, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      LOBYTE(Strong) = 1;
    }
  }

  return Strong & 1;
}

uint64_t sub_21D2693D4()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v0);
  v26 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  v17 = sub_21D2916C8(v10, sub_21D181E00);
  sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v17)
  {

    return 0;
  }

  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  v19 = *(*Strong + 120);
  swift_beginAccess();
  sub_21D104E74(Strong + v19, v13, type metadata accessor for TTRRemindersListViewModel.Item);

  sub_21D2A0DC8(v13, v16, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.baseTreeCasesOnly.getter(v4);
  sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload >= 2)
  {
LABEL_11:
    v24 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem;
    v25 = v4;
LABEL_12:
    sub_21D106918(v25, v24);
    return 0;
  }

  sub_21D2A0DC8(v4, v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v21 = v26;
  sub_21D104E74(v7, v26, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v22 = swift_getEnumCaseMultiPayload();
  result = 1;
  if (v22 > 4)
  {
    if (v22 <= 7)
    {
      if (v22 == 5 || v22 == 6)
      {
        goto LABEL_20;
      }

      return result;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID;
    v25 = v21;
    goto LABEL_12;
  }

  if (v22 > 1 || v22)
  {
LABEL_20:
    sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.SectionID);
    return 1;
  }

  return result;
}

void *TTRRemindersListTreeViewModel.locationAfterLastTopLevelItemInLastSection(passing:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v62 = a3;
  v63 = a2;
  v67 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  MEMORY[0x28223BE20](v59);
  v60 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v68 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v57 - v13;
  MEMORY[0x28223BE20](v14);
  v61 = &v57 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v69 = &v57 - v21;
  v71 = *(v10 + 56);
  v72 = v10 + 56;
  v71(v8, 1, 1, v9, v20);

  v22 = sub_21D263398(v8);

  sub_21D0CF7E0(v8, &unk_27CE5CD80);
  v23 = *(v22 + 16);
  if (v23)
  {
    v65 = v8;
    v24 = v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = v22;
    sub_21D104E74(v24, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v18, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!EnumCaseMultiPayload)
    {
      v57 = v22;
      v58 = v10;
      v66 = *(v10 + 72);
      v70 = MEMORY[0x277D84F90];
      while (1)
      {
        v28 = v64;
        sub_21D104E74(v24, v64, type metadata accessor for TTRRemindersListViewModel.Item);
        v29 = v4;
        v30 = v65;
        sub_21D104E74(v28, v65, type metadata accessor for TTRRemindersListViewModel.Item);
        (v71)(v30, 0, 1, v9);

        v31 = sub_21D263398(v30);

        sub_21D0CF7E0(v30, &unk_27CE5CD80);
        sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
        v32 = *(v31 + 16);
        result = v70;
        v33 = v70[2];
        v34 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v35 = v70;
        if (!result || v34 > v70[3] >> 1)
        {
          if (v33 <= v34)
          {
            v36 = v33 + v32;
          }

          else
          {
            v36 = v33;
          }

          result = sub_21D211A80(result, v36, 1, v70);
          v35 = result;
        }

        v4 = v29;
        v37 = *(v31 + 16);
        v70 = v35;
        if (v37)
        {
          if ((v35[3] >> 1) - v35[2] < v32)
          {
            goto LABEL_31;
          }

          swift_arrayInitWithCopy();

          if (v32)
          {
            v38 = v70[2];
            v39 = __OFADD__(v38, v32);
            v40 = v38 + v32;
            if (v39)
            {
              goto LABEL_32;
            }

            v70[2] = v40;
          }
        }

        else
        {

          if (v32)
          {
            goto LABEL_30;
          }
        }

        v24 += v66;
        if (!--v23)
        {

          v10 = v58;
          v25 = v70;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_20:
    v8 = v65;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v41 = v25[2];
  if (v41)
  {
    v42 = v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v41 - 1);
    v43 = v61;
    sub_21D104E74(v42, v61, type metadata accessor for TTRRemindersListViewModel.Item);

    v44 = v43;
    v45 = v69;
    sub_21D2A0DC8(v44, v69, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v45, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    (v71)(v8, 0, 1, v9);

    v46 = sub_21D261568(v8);

    result = sub_21D0CF7E0(v8, &unk_27CE5CD80);
    if (v46 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v47 = v68;
    do
    {
      v48 = v46;
      if (!v46)
      {
        break;
      }

      --v46;
      sub_21D104E74(v69, v8, type metadata accessor for TTRRemindersListViewModel.Item);
      (v71)(v8, 0, 1, v9);

      sub_21D26181C(v48 - 1, v8, v47);

      sub_21D0CF7E0(v8, &unk_27CE5CD80);
      v49 = v67(v47);
      sub_21D106918(v47, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    while ((v49 & 1) == 0);
    v50 = v9;
    v51 = *(v4 + 32);
    ObjectType = swift_getObjectType();
    v53 = v69;
    sub_21D104E74(v69, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v54 = v71;
    (v71)(v8, 0, 1, v50);
    v55 = v60;
    v54(v60, 1, 1, v50);
    sub_21D0F02F4(v8, v55, &unk_27CE5CD80);
    *(v55 + *(v59 + 36)) = v48;
    (*(v51 + 32))(v55, ObjectType, v51);
    sub_21D106918(v53, type metadata accessor for TTRRemindersListViewModel.Item);
    return sub_21D0CF7E0(v55, &qword_27CE58900);
  }

  else
  {

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
    return (*(*(v56 - 8) + 56))(v62, 1, 1, v56);
  }
}

uint64_t TTRRemindersListTreeViewModel.relativeInsertionPosition(forInsertingAt:skipping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  sub_21D0D3954(a1, v10, &qword_27CE58900);
  sub_21D0D3954(v10, v6, &unk_27CE5CD80);
  v15 = *&v10[*(v8 + 44)];

  sub_21D0CF7E0(v10, &qword_27CE58900);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_21D0F02F4(v6, v14, &unk_27CE5CD80);
  *&v14[*(v12 + 44)] = v15;
  sub_21D26A1DC(v14, v19, v18);

  return sub_21D0CF7E0(v14, &qword_27CE588F0);
}

uint64_t sub_21D26A1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A560);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  result = sub_21D261568(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0);
    v19 = *(a1 + *(v18 + 36));
    if (v19 <= v17)
    {
      v28[2] = 0;
      v28[3] = v19;
      MEMORY[0x28223BE20](v18);
      v28[-4] = v3;
      v28[-3] = a1;
      v28[-2] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4F0);
      v22 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      sub_21D0D0F1C(&qword_27CE5A4F8, &qword_27CE5A4F0);
      sub_21DBFA48C();
      sub_21D0D523C(v15, v12, &unk_27CE5CD80);
      if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A568);
        (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      }

      else
      {
        sub_21D2A0DC8(v12, v9, type metadata accessor for TTRRemindersListViewModel.Item);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A568);
        swift_storeEnumTagMultiPayload();
        (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
      }

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A568);
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v9, 1, v25) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v27(v9, 1, v25) != 1)
        {
          sub_21D0CF7E0(v9, &qword_27CE5A560);
        }
      }

      else
      {
        sub_21D0D523C(v9, a3, &qword_27CE5A568);
      }

      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A568);
      v21 = *(*(v20 - 8) + 56);

      return v21(a3, 1, 1, v20);
    }
  }

  return result;
}

uint64_t sub_21D26A678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  result = sub_21D0E8DA0(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
    v19 = *(a1 + *(v18 + 36));
    if (v19 <= v17)
    {
      v28[2] = 0;
      v28[3] = v19;
      MEMORY[0x28223BE20](v18);
      v28[-4] = v3;
      v28[-3] = a1;
      v28[-2] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4F0);
      v22 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
      sub_21D0D0F1C(&qword_27CE5A4F8, &qword_27CE5A4F0);
      sub_21DBFA48C();
      sub_21D0D523C(v15, v12, &qword_27CE5A490);
      if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500);
        (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      }

      else
      {
        sub_21D2A0DC8(v12, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500);
        swift_storeEnumTagMultiPayload();
        (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
      }

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500);
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      if (v27(v9, 1, v25) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v27(v9, 1, v25) != 1)
        {
          sub_21D0CF7E0(v9, &qword_27CE5A4E8);
        }
      }

      else
      {
        sub_21D0D523C(v9, a3, &qword_27CE5A500);
      }

      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500);
      v21 = *(*(v20 - 8) + 56);

      return v21(a3, 1, 1, v20);
    }
  }

  return result;
}

uint64_t TTRRemindersListTreeViewModel.presentationLocation(of:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;

  sub_21D25F7C0(v8);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5A3C0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  else
  {
    v21 = *&v8[*(v18 + 48)];
    v22 = *(v9 + 48);
    v27 = a1;
    sub_21D0D523C(v8, v11, &unk_27CE5CD80);
    *&v11[v22] = v21;
    v23 = *&v11[*(v9 + 48)];
    sub_21D0D523C(v11, v17, &unk_27CE5CD80);
    v24 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v17, v14, &unk_27CE5CD80);
    v26 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    sub_21D0F02F4(v14, v5, &unk_27CE5CD80);
    *&v5[*(v28 + 36)] = v23;
    (*(v24 + 32))(v5, ObjectType, v24);
    sub_21D0CF7E0(v17, &unk_27CE5CD80);
    return sub_21D0CF7E0(v5, &qword_27CE58900);
  }
}

uint64_t TTRRemindersListTreeViewModel.reminderItemsToUpdate<A>(forUpdated:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3D0);
  sub_21DBFA53C();
  v0 = sub_21D25B6A0(v2);

  return v0;
}

uint64_t sub_21D26AF7C(uint64_t a1, void **a2, void *a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = *a2;
  swift_beginAccess();
  if (*(a3[12] + 16) && (sub_21D17E07C(v12), (v13 & 1) != 0))
  {
    swift_endAccess();

    v14 = v12;
    v15 = sub_21DBF8E0C();
    v16 = sub_21D2A06F4(v15, a3, v14);

    v17 = *(v16 + 16);
    if (!v17)
    {
    }
  }

  else
  {
    swift_endAccess();
    v16 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (!v17)
    {
    }
  }

  v18 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v19 = *(v6 + 72);
  do
  {
    sub_21D104E74(v18, v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D29BEAC(v11, v8);
    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v18 += v19;
    --v17;
  }

  while (v17);
}

uint64_t TTRRemindersListTreeViewModel.existingReminderIDs(having:)(void *a1)
{
  swift_beginAccess();
  if (*(v1[12] + 16) && (sub_21D17E07C(a1), (v3 & 1) != 0))
  {
    swift_endAccess();

    v4 = a1;
    v5 = sub_21DBF8E0C();
    v6 = sub_21D2A06F4(v5, v1, v4);

    return v6;
  }

  else
  {
    swift_endAccess();
    return MEMORY[0x277D84F90];
  }
}

uint64_t TTRRemindersListTreeViewModel.firstReminderItem(with:in:)(void *a1)
{
  swift_beginAccess();
  if (*(v1[12] + 16) && (sub_21D17E07C(a1), (v3 & 1) != 0))
  {
    swift_endAccess();

    v4 = a1;
    v5 = sub_21DBF8E0C();
    sub_21D2A06F4(v5, v1, v4);
  }

  else
  {
    v6 = swift_endAccess();
  }

  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3D8);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  sub_21D0D0F1C(&qword_27CE5A3E0, &qword_27CE5A3D8);
  sub_21DBFA48C();
}

uint64_t sub_21D26B3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(a1, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();

  v8 = sub_21DAEB4C0(v7);

  if (v8)
  {
    sub_21D2A0DC8(v7, a2, type metadata accessor for TTRRemindersListViewModel.Item);
    v9 = 0;
  }

  else
  {
    sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item);
    v9 = 1;
  }

  return (*(v5 + 56))(a2, v9, 1, v4);
}

uint64_t sub_21D26B570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  v8 = (*(v7 + 24))(a1, ObjectType, v7);
  v9 = v8 < 1;
  v10 = v8 - 1;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, a1, ObjectType, v7);
    v11 = 0;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

BOOL sub_21D26B6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    return 0;
  }

  sub_21D104E74(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D261568(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80);
  return v6 > 0;
}

uint64_t sub_21D26B7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_21D104E74(a1, &v8 - v3, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D261568(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80);
  return v6;
}

uint64_t sub_21D26B8EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D104E74(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = sub_21D263398(v4);

  sub_21D0CF7E0(v4, &unk_27CE5CD80);
  return v6;
}

uint64_t sub_21D26BA34(void *a1)
{
  TTRRemindersListTreeViewModel.existingReminderIDs(having:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3D8);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  sub_21D0D0F1C(&qword_27CE5A3E0, &qword_27CE5A3D8);
  sub_21DBFA48C();
}

uint64_t TTRRemindersListTreeViewModel.insertNewItem(_:at:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  sub_21D104E74(a1, &v11 - v6, type metadata accessor for TTRRemindersListViewModel.Item);
  v8 = &v7[*(v5 + 60)];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v7[*(v5 + 64)] = MEMORY[0x277D84F90];
  v9 = *&a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900) + 36)];

  sub_21D26BC40(v7, a2, v9);

  return sub_21D0CF7E0(v7, &qword_27CE581C8);
}

uint64_t sub_21D26BC40(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = MEMORY[0x277D84F98];
  v17[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587E8);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  sub_21D0D3954(a1, v9 + v8, &qword_27CE581C8);
  sub_21DB8503C(v9, v17, &v18);
  swift_setDeallocating();
  sub_21D0CF7E0(v9 + v8, &qword_27CE581C8);
  swift_deallocClassInstance();
  v10 = v17[0];
  if (!(v17[0] >> 62))
  {
    if (*((v17[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v11 = MEMORY[0x223D44740](0, v10);
    goto LABEL_6;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);

    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 32);

LABEL_6:

  v12 = sub_21D291750(v11, a2, a3);
  v13 = v18;
  if (v12)
  {
    swift_beginAccess();
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_21D2A2E5C(v13, sub_21D29FEF4, 0, isUniquelyReferenced_nonNull_native, &v16);

    *(v3 + 24) = v16;
    swift_endAccess();
  }

  else
  {
  }
}

uint64_t TTRRemindersListTreeViewModel.delete(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;

  sub_21D26C21C(a1, v6);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A3C0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v19 = *&v6[*(v16 + 48)];
    v20 = *(v7 + 48);
    sub_21D0D523C(v6, v9, &unk_27CE5CD80);
    *&v9[v20] = v19;
    v21 = *&v9[*(v7 + 48)];
    sub_21D0D523C(v9, v15, &unk_27CE5CD80);
    sub_21D0D523C(v15, v12, &unk_27CE5CD80);
    v22 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    sub_21D0F02F4(v12, a2, &unk_27CE5CD80);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    *(a2 + *(v23 + 36)) = v21;
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }
}

uint64_t sub_21D26C21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
  v8 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  sub_21D104E74(a1, v10 + v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v11 = sub_21D26C578(v10);

  if (*(v11 + 16))
  {
    sub_21D0D3954(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, &qword_27CE59D70);

    v12 = sub_21DBF5ABC();
    if (v13)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    }

    else
    {
      v18 = v12;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      v20 = *(v19 + 48);
      sub_21D0D3954(v7, a2, &unk_27CE5CD80);
      *(a2 + v20) = v18;
      (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
    }

    return sub_21D0CF7E0(v7, &qword_27CE59D70);
  }

  else
  {

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }
}

uint64_t TTRRemindersListTreeViewModel.delete(_:)(uint64_t a1)
{

  v2 = sub_21D26C578(a1);

  return v2;
}

uint64_t sub_21D26C578(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v156 - v5;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
  v165 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v172 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v163 = &v156 - v9;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70);
  v158 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v176 = &v156 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v156 - v12;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v192);
  v191 = &v156 - v14;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v193);
  v16 = &v156 - v15;
  v195 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v209 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v164 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v196 = &v156 - v19;
  MEMORY[0x28223BE20](v20);
  v178 = (&v156 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v156 - v23;
  v190 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v190);
  v200 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v177 = &v156 - v27;
  v28 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v28 - 8);
  v181 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v183 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v205 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v204 = (&v156 - v33);
  MEMORY[0x28223BE20](v34);
  v207 = &v156 - v35;
  MEMORY[0x28223BE20](v36);
  v206 = &v156 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v156 - v39;
  MEMORY[0x28223BE20](v41);
  v212[0] = &v156 - v42;
  MEMORY[0x28223BE20](v43);
  v185 = &v156 - v44;
  v198 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v45 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v171 = &v156 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v160 = &v156 - v48;
  MEMORY[0x28223BE20](v49);
  v194 = &v156 - v50;
  MEMORY[0x28223BE20](v51);
  v203 = &v156 - v52;
  MEMORY[0x28223BE20](v53);
  v186 = &v156 - v54;
  v55 = *(a1 + 16);
  v187 = v2;
  v182 = v6;
  v175 = v45;
  if (v55 >= 2)
  {
    v166 = v24;
    v168 = v55;
    v174 = v13;
    v212[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
    sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
    sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v56 = sub_21DBFA49C();
    v57 = 0;
    v58 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v169 = *(v45 + 72);
    v159 = v58;
    v167 = a1 + v58;
    v210 = v56 + 56;
    v211 = v56;
    v180 = 0x800000021DC43E30;
    v179 = 0x800000021DC43E00;
    v197 = 0x800000021DC43DE0;
    v189 = (v209 + 48);
    v161 = MEMORY[0x277D84F90];
    v199 = v30;
    v59 = v207;
    v60 = v185;
    v61 = v194;
    v188 = v40;
    while (1)
    {
      v184 = v57;
      sub_21D104E74(v167 + v169 * v57, v186, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v60);
      swift_beginAccess();
      v63 = *(v2 + 24);
      if (!*(v63 + 16) || (v64 = sub_21D181E00(v60, v62), (v65 & 1) == 0))
      {
        swift_endAccess();
        sub_21D106918(v60, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_4:
        sub_21D106918(v186, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_5;
      }

      v66 = *(*(v63 + 56) + 8 * v64);
      swift_endAccess();

      sub_21D106918(v60, type metadata accessor for TTRRemindersListViewModel.ItemID);

      v170 = 0;
      v162 = v66;
      v68 = v193;
LABEL_11:
      v70 = v67;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_113:

      v2 = v187;
      if (v170)
      {
        goto LABEL_4;
      }

      sub_21D2A0DC8(v186, v160, type metadata accessor for TTRRemindersListViewModel.Item);
      v127 = v161;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v213 = v127;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21D18EBA4(0, *(v127 + 16) + 1, 1);
        v127 = v213;
      }

      v130 = *(v127 + 16);
      v129 = *(v127 + 24);
      if (v130 >= v129 >> 1)
      {
        sub_21D18EBA4(v129 > 1, v130 + 1, 1);
        v127 = v213;
      }

      *(v127 + 16) = v130 + 1;
      v161 = v127;
      sub_21D2A0DC8(v160, v127 + v159 + v130 * v169, type metadata accessor for TTRRemindersListViewModel.Item);
      v59 = v207;
LABEL_5:
      v57 = v184 + 1;
      if (v184 + 1 == v168)
      {

        result = v161;
        v55 = *(v161 + 16);
        v6 = v182;
        if (!v55)
        {
          goto LABEL_131;
        }

LABEL_120:
        v132 = 0;
        v133 = (v165 + 48);
        v134 = MEMORY[0x277D84F90];
        v135 = v175;
        while (v132 < *(result + 16))
        {
          v136 = result;
          v137 = v171;
          sub_21D104E74(result + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v132, v171, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D25F7C0(v6);
          v6 = v182;
          sub_21D106918(v137, type metadata accessor for TTRRemindersListViewModel.Item);
          if ((*v133)(v6, 1, v173) == 1)
          {
            sub_21D0CF7E0(v6, &qword_27CE5A3C0);
          }

          else
          {
            v138 = v6;
            v139 = v163;
            sub_21D0D523C(v138, v163, &qword_27CE59D88);
            sub_21D0D523C(v139, v172, &qword_27CE59D88);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v134 = sub_21D211AA8(0, v134[2] + 1, 1, v134);
            }

            v141 = v134[2];
            v140 = v134[3];
            if (v141 >= v140 >> 1)
            {
              v134 = sub_21D211AA8(v140 > 1, v141 + 1, 1, v134);
            }

            v134[2] = v141 + 1;
            sub_21D0D523C(v172, v134 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v141, &qword_27CE59D88);
            v6 = v182;
          }

          ++v132;
          result = v136;
          v135 = v175;
          if (v55 == v132)
          {
            goto LABEL_132;
          }
        }

        __break(1u);
        return result;
      }
    }

    v201 = v70;
    v72 = *(*Strong + 120);
    v73 = Strong;
    swift_beginAccess();
    v202 = v73;
    v74 = v73 + v72;
    v75 = v203;
    sub_21D104E74(v74, v203, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v75, v61, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v82 = v212[0];
          v83 = 1;
        }

        else
        {
          v82 = v212[0];
          v83 = 2;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          if (EnumCaseMultiPayload == 9)
          {
            v78 = v212[0];
            v79 = 3;
          }

          else
          {
            v78 = v212[0];
            v79 = 5;
          }

          *v78 = v79;
          goto LABEL_33;
        }

        v82 = v212[0];
        v83 = 4;
      }

      *v82 = v83;
      swift_storeEnumTagMultiPayload();
      sub_21D106918(v61, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_34:
      sub_21D106918(v203, type metadata accessor for TTRRemindersListViewModel.Item);
      if (!*(v211 + 16))
      {
        v69 = 0;
        goto LABEL_10;
      }

      v86 = v211;
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)();
      v87 = sub_21DBFC82C();
      v88 = -1 << *(v86 + 32);
      v89 = v87 & ~v88;
      if (((*(v210 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
      {
        v69 = 0;
        goto LABEL_112;
      }

      v208 = ~v88;
      v209 = *(v183 + 72);
      while (1)
      {
        sub_21D104E74(*(v211 + 48) + v209 * v89, v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v92 = *(v68 + 48);
        sub_21D104E74(v40, v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D104E74(v212[0], &v16[v92], type metadata accessor for TTRRemindersListViewModel.ItemID);
        v93 = swift_getEnumCaseMultiPayload();
        if (v93 > 1)
        {
          break;
        }

        v94 = v206;
        if (v93)
        {
          sub_21D104E74(v16, v59, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v99 = &v16[v92];
            v100 = v200;
            sub_21D2A0DC8(v99, v200, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D0D8CF0(0, &qword_280D17680);
            if (sub_21DBFB63C())
            {
              v101 = v59;
              v102 = *(v190 + 20);
              v103 = *(v192 + 48);
              v104 = v191;
              sub_21D0D3954(v101 + v102, v191, &unk_27CE5CD70);
              sub_21D0D3954(v100 + v102, v104 + v103, &unk_27CE5CD70);
              v105 = *v189;
              v106 = v195;
              if ((*v189)(v104, 1, v195) == 1)
              {
                v107 = v105(v104 + v103, 1, v106) == 1;
                v108 = v104;
                if (v107)
                {
                  sub_21D0CF7E0(v104, &unk_27CE5CD70);
                  v68 = v193;
                  v59 = v207;
                  v40 = v188;
LABEL_108:
                  sub_21D106918(v100, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  sub_21D106918(v59, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_109:
                  sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_110:
                  sub_21D106918(v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  v69 = 1;
                  v170 = 1;
LABEL_111:
                  v60 = v185;
LABEL_112:
                  v61 = v194;
LABEL_10:
                  sub_21D106918(v212[0], type metadata accessor for TTRRemindersListViewModel.ItemID);

                  v67 = v202;
                  if (v69)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_11;
                }

LABEL_75:
                sub_21D0CF7E0(v108, &qword_27CE58388);
                v68 = v193;
                v59 = v207;
                v40 = v188;
              }

              else
              {
                v117 = v174;
                sub_21D0D3954(v104, v174, &unk_27CE5CD70);
                if (v105(v104 + v103, 1, v106) == 1)
                {
                  sub_21D106918(v117, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v108 = v104;
                  v100 = v200;
                  goto LABEL_75;
                }

                v125 = v164;
                sub_21D2A0DC8(v104 + v103, v164, type metadata accessor for TTRRemindersListViewModel.SectionID);
                v126 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v117, v125);
                sub_21D106918(v125, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D106918(v117, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D0CF7E0(v104, &unk_27CE5CD70);
                v68 = v193;
                v100 = v200;
                v59 = v207;
                v40 = v188;
                if (v126)
                {
                  goto LABEL_108;
                }
              }
            }

            sub_21D106918(v100, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v59, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            goto LABEL_103;
          }

          v90 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
          v91 = v59;
LABEL_38:
          sub_21D106918(v91, v90);
LABEL_39:
          sub_21D0CF7E0(v16, &qword_27CE58AD0);
          goto LABEL_40;
        }

        sub_21D104E74(v16, v206, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload())
        {
          v90 = type metadata accessor for TTRRemindersListViewModel.SectionID;
          v91 = v94;
          goto LABEL_38;
        }

        v114 = v196;
        sub_21D2A0DC8(&v16[v92], v196, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v115 = v94;
        v116 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v94, v114);
        sub_21D106918(v114, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v59 = v207;
        sub_21D106918(v115, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (v116)
        {
          goto LABEL_110;
        }

LABEL_40:
        sub_21D106918(v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v89 = (v89 + 1) & v208;
        if (((*(v210 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
        {
          v69 = 0;
          goto LABEL_111;
        }
      }

      if (v93 == 2)
      {
        v95 = v204;
        sub_21D104E74(v16, v204, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v96 = *v95;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v97 = *&v16[v92];
          sub_21D0D8CF0(0, &qword_280D17680);
          v98 = sub_21DBFB63C();

          v59 = v207;
          if (v98)
          {
            goto LABEL_109;
          }

          goto LABEL_103;
        }

        v59 = v207;
      }

      else
      {
        sub_21D104E74(v16, v205, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v109 = *v205;
          if (v109 > 2)
          {
            if (v109 == 3)
            {
              v112 = 0xD00000000000001FLL;
              v118 = &v211;
            }

            else
            {
              if (v109 == 4)
              {
                v113 = 0xE700000000000000;
                v112 = 0x6D657449706974;
                goto LABEL_79;
              }

              v112 = 0xD00000000000001DLL;
              v118 = v212;
            }

            v113 = *(v118 - 32);
          }

          else
          {
            v110 = 0xD000000000000012;
            if (v109 == 1)
            {
              v110 = 0x7367617468736168;
            }

            v111 = 0xEC0000006D657449;
            if (v109 != 1)
            {
              v111 = v197;
            }

            if (*v205)
            {
              v112 = v110;
            }

            else
            {
              v112 = 0x6574656C706D6F63;
            }

            if (*v205)
            {
              v113 = v111;
            }

            else
            {
              v113 = 0xED00006D65744964;
            }
          }

LABEL_79:
          v119 = v16[v92];
          if (v119 > 2)
          {
            if (v119 == 3)
            {
              v122 = 0xD00000000000001FLL;
              v123 = &v211;
            }

            else
            {
              if (v119 == 4)
              {
                v121 = 0xE700000000000000;
                if (v112 == 0x6D657449706974)
                {
                  goto LABEL_98;
                }

                goto LABEL_99;
              }

              v122 = 0xD00000000000001DLL;
              v123 = v212;
            }

            v121 = *(v123 - 32);
            if (v112 == v122)
            {
              goto LABEL_98;
            }

            goto LABEL_99;
          }

          if (v16[v92])
          {
            if (v119 == 1)
            {
              v120 = 0x7367617468736168;
            }

            else
            {
              v120 = 0xD000000000000012;
            }

            if (v119 == 1)
            {
              v121 = 0xEC0000006D657449;
            }

            else
            {
              v121 = v197;
            }

            if (v112 != v120)
            {
              goto LABEL_99;
            }

LABEL_98:
            if (v113 == v121)
            {

              v59 = v207;
              goto LABEL_109;
            }
          }

          else
          {
            v121 = 0xED00006D65744964;
            if (v112 == 0x6574656C706D6F63)
            {
              goto LABEL_98;
            }
          }

LABEL_99:
          v124 = sub_21DBFC64C();

          v59 = v207;
          if (v124)
          {
            goto LABEL_109;
          }

LABEL_103:
          sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_40;
        }
      }

      goto LABEL_39;
    }

    if ((EnumCaseMultiPayload - 2) < 3)
    {
      v77 = v177;
      sub_21D2A0DC8(v61, v177, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D2A0DC8(v77, v212[0], type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_33:
      swift_storeEnumTagMultiPayload();
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload >= 2)
    {
      sub_21D106918(v61, type metadata accessor for TTRRemindersListViewModel.Item);
      *v212[0] = 0;
      goto LABEL_33;
    }

    v80 = v181;
    sub_21D2A0DC8(v61, v181, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v80, v178, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v81 = 1 << swift_getEnumCaseMultiPayload();
    if ((v81 & 0x17E) != 0)
    {
      sub_21D106918(v178, type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    else if ((v81 & 0x81) == 0)
    {
      sub_21D106918(v181, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v85 = v166;
      *v166 = *v178;
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    v84 = v181;
    v85 = v166;
    sub_21D104E74(v181, v166, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v84, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
LABEL_32:
    sub_21D2A0DC8(v85, v212[0], type metadata accessor for TTRRemindersListViewModel.SectionID);
    goto LABEL_33;
  }

  sub_21DBF8E0C();
  result = a1;
  if (v55)
  {
    goto LABEL_120;
  }

LABEL_131:
  v134 = MEMORY[0x277D84F90];
LABEL_132:

  MEMORY[0x28223BE20](v142);
  *(&v156 - 4) = v198;
  *(&v156 - 3) = &type metadata for TTRRemindersListTreeViewModel.AuxiliaryData;
  *(&v156 - 2) = sub_21D2F89FC(&qword_280D142C8, type metadata accessor for TTRRemindersListViewModel.Item);
  *(&v156 - 1) = &protocol witness table for TTRRemindersListTreeViewModel.AuxiliaryData;
  KeyPath = swift_getKeyPath();
  v144 = sub_21D293244(v134, KeyPath);

  v145 = *(v144 + 16);
  if (v145)
  {
    v146 = *(v157 + 28);
    v147 = v144 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v148 = *(v158 + 72);
    v212[0] = v144;
    sub_21DBF8E0C();
    v149 = v176;
    do
    {
      sub_21D0D3954(v147, v149, &qword_27CE59D70);
      v151 = v149 + v146;
      v152 = v149;
      v153 = v187;
      v154 = sub_21D2920E8(v151, v152);
      if (v154)
      {
        v155 = v154;

        sub_21D3041B8(v155, v153);
      }

      v149 = v176;
      sub_21D0CF7E0(v176, &unk_27CE5CD80);
      v150 = sub_21DBF5B9C();
      (*(*(v150 - 8) + 8))(v149 + v146, v150);
      v147 += v148;
      --v145;
    }

    while (v145);
    v144 = v212[0];
  }

  return v144;
}

BOOL TTRRemindersListTreeViewModel.move(_:to:)(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v71 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D58);
  v67 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v52 - v5;
  MEMORY[0x28223BE20](v6);
  v73 = &v52 - v7;
  MEMORY[0x28223BE20](v8);
  v70 = &v52 - v9;
  MEMORY[0x28223BE20](v10);
  v52 = &v52 - v11;
  MEMORY[0x28223BE20](v12);
  v74 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0);
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  v60 = v2;
  sub_21D0D3954(v68, v22, &qword_27CE58900);
  sub_21D0D3954(v22, v18, &unk_27CE5CD80);
  v26 = *&v22[*(v20 + 44)];

  sub_21D0CF7E0(v22, &qword_27CE58900);
  v27 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  sub_21D0F02F4(v18, v25, &unk_27CE5CD80);
  *&v25[*(v23 + 36)] = v26;
  v28 = sub_21D26E840(v71, v25);

  sub_21D0CF7E0(v25, &qword_27CE588F0);
  if (v28)
  {
    v54 = v28;
    v29 = v28[2];
    v30 = v53;
    v59 = v23;
    v31 = v73;
    v32 = v70;
    v33 = v52;
    v58 = v18;
    if (v29)
    {
      v34 = *(v61 + 48);
      v56 = *(v61 + 64);
      v57 = v34;
      v35 = v54 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v55 = *(v67 + 72);
      do
      {
        v71 = v35;
        v68 = v29;
        sub_21D0D3954(v35, v74, &qword_27CE59D58);
        v36 = v61;
        v37 = *(v61 + 48);
        v38 = v30;
        v39 = *(v61 + 64);
        sub_21D2A0DC8(v74, v33, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0D523C(v74 + v57, v33 + v37, &qword_27CE588F0);
        sub_21D0D523C(v74 + v56, v33 + v39, &qword_27CE588F0);
        v63 = *(v60 + 80);
        sub_21D0D3954(v33, v32, &qword_27CE59D58);
        v40 = &v70[*(v36 + 48)];
        v67 = *(v36 + 64);
        v41 = v59;
        v64 = *(v40 + *(v59 + 36));

        sub_21D0CF7E0(v40, &qword_27CE588F0);
        sub_21D0D3954(v33, v31, &qword_27CE59D58);
        v42 = *(v36 + 48);
        v66 = *(v36 + 64);
        v43 = v58;
        sub_21D0D3954(&v73[v42], v58, &unk_27CE5CD80);
        sub_21D0CF7E0(&v73[v42], &qword_27CE588F0);
        sub_21D0D3954(v33, v72, &qword_27CE59D58);
        v65 = *(v36 + 48);
        v44 = v72 + *(v36 + 64);
        v45 = *(v44 + *(v41 + 36));
        sub_21D0CF7E0(v44, &qword_27CE588F0);
        sub_21D0D3954(v33, v38, &qword_27CE59D58);
        v62 = *(v36 + 48);
        v46 = *(v36 + 64);
        sub_21D0D3954(v38 + v46, v69, &unk_27CE5CD80);
        v47 = v38 + v46;
        v30 = v38;
        v48 = v72;
        v49 = v69;
        sub_21D0CF7E0(v47, &qword_27CE588F0);
        v50 = v45;
        v32 = v70;
        sub_21D260100(v64, v43, v50, v49);

        sub_21D0CF7E0(v49, &unk_27CE5CD80);
        sub_21D0CF7E0(v43, &unk_27CE5CD80);
        sub_21D0CF7E0(v33, &qword_27CE59D58);
        v31 = v73;
        sub_21D0CF7E0(v30 + v62, &qword_27CE588F0);
        sub_21D106918(v30, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v48 + v65, &qword_27CE588F0);
        sub_21D106918(v48, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v31 + v66, &qword_27CE588F0);
        sub_21D106918(v31, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v32 + v67, &qword_27CE588F0);
        sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
        v35 = v71 + v55;
        v29 = v68 - 1;
      }

      while (v68 != 1);
    }

    v28 = v54;
  }

  return v28 != 0;
}

void *sub_21D26E840(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A548);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D68);
  v59 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v50 - v17;
  v53 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v53);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v51 = (v18 + 56);
    v23 = *(v18 + 72);
    v63 = (v59 + 56);
    v64 = v23;
    v62 = (v59 + 48);
    v67 = MEMORY[0x277D84F90];
    v52 = v2;
    do
    {
      sub_21D104E74(v22, v20, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D25F7C0(v6);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      if ((*(*(v24 - 8) + 48))(v6, 1, v24) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A3C0);
        v25 = 1;
      }

      else
      {
        v26 = *&v6[*(v24 + 48)];
        v60 = v22;
        v61 = v21;
        v27 = v58;
        v28 = *(v58 + 48);
        v29 = v6;
        v30 = v20;
        v31 = v6;
        v32 = v57;
        sub_21D0D523C(v29, v57, &unk_27CE5CD80);
        *(v32 + v28) = v26;
        v33 = *(v32 + *(v27 + 48));
        v34 = v32;
        v6 = v31;
        v35 = v66;
        v20 = v30;
        v36 = v55;
        sub_21D0D523C(v34, v55, &unk_27CE5CD80);
        v37 = &v14[*(v35 + 48)];
        sub_21D104E74(v30, v14, type metadata accessor for TTRRemindersListViewModel.Item);
        v38 = v36;
        v39 = v56;
        sub_21D0D523C(v38, v56, &unk_27CE5CD80);
        (*v51)(v37, 1, 1, v53);
        v40 = v39;
        v21 = v61;
        sub_21D0F02F4(v40, v37, &unk_27CE5CD80);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0);
        v25 = 0;
        *(v37 + *(v41 + 36)) = v33;
        v22 = v60;
      }

      v42 = v66;
      (*v63)(v14, v25, 1, v66);
      sub_21D106918(v20, type metadata accessor for TTRRemindersListViewModel.Item);
      if ((*v62)(v14, 1, v42) == 1)
      {
        sub_21D0CF7E0(v14, &qword_27CE5A548);
      }

      else
      {
        v43 = v54;
        sub_21D0D523C(v14, v54, &qword_27CE59D68);
        sub_21D0D523C(v43, v65, &qword_27CE59D68);
        v44 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_21D211ACC(0, v67[2] + 1, 1, v67);
        }

        v46 = v67[2];
        v45 = v67[3];
        if (v46 >= v45 >> 1)
        {
          v67 = sub_21D211ACC(v45 > 1, v46 + 1, 1, v67);
        }

        v47 = v67;
        v67[2] = v46 + 1;
        sub_21D0D523C(v65, v47 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v46, &qword_27CE59D68);
        v22 = v44;
      }

      v22 += v64;
      --v21;
    }

    while (v21);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v48 = sub_21D26FE28(v67, v50);

  return v48;
}

void *sub_21D26EEBC(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A508);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A510);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A518);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B10);
  v59 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v50 - v17;
  v53 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v53);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v51 = (v18 + 56);
    v23 = *(v18 + 72);
    v63 = (v59 + 56);
    v64 = v23;
    v62 = (v59 + 48);
    v67 = MEMORY[0x277D84F90];
    v52 = v2;
    do
    {
      sub_21D104E74(v22, v20, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D25FC60(v6);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A8);
      if ((*(*(v24 - 8) + 48))(v6, 1, v24) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A508);
        v25 = 1;
      }

      else
      {
        v26 = *&v6[*(v24 + 48)];
        v60 = v22;
        v61 = v21;
        v27 = v58;
        v28 = *(v58 + 48);
        v29 = v6;
        v30 = v20;
        v31 = v6;
        v32 = v57;
        sub_21D0D523C(v29, v57, &qword_27CE5A490);
        *(v32 + v28) = v26;
        v33 = *(v32 + *(v27 + 48));
        v34 = v32;
        v6 = v31;
        v35 = v66;
        v20 = v30;
        v36 = v55;
        sub_21D0D523C(v34, v55, &qword_27CE5A490);
        v37 = &v14[*(v35 + 48)];
        sub_21D104E74(v30, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
        v38 = v36;
        v39 = v56;
        sub_21D0D523C(v38, v56, &qword_27CE5A490);
        (*v51)(v37, 1, 1, v53);
        v40 = v39;
        v21 = v61;
        sub_21D0F02F4(v40, v37, &qword_27CE5A490);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
        v25 = 0;
        *(v37 + *(v41 + 36)) = v33;
        v22 = v60;
      }

      v42 = v66;
      (*v63)(v14, v25, 1, v66);
      sub_21D106918(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
      if ((*v62)(v14, 1, v42) == 1)
      {
        sub_21D0CF7E0(v14, &qword_27CE5A518);
      }

      else
      {
        v43 = v54;
        sub_21D0D523C(v14, v54, &qword_27CE59B10);
        sub_21D0D523C(v43, v65, &qword_27CE59B10);
        v44 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_21D2147B0(0, v67[2] + 1, 1, v67);
        }

        v46 = v67[2];
        v45 = v67[3];
        if (v46 >= v45 >> 1)
        {
          v67 = sub_21D2147B0(v45 > 1, v46 + 1, 1, v67);
        }

        v47 = v67;
        v67[2] = v46 + 1;
        sub_21D0D523C(v65, v47 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v46, &qword_27CE59B10);
        v22 = v44;
      }

      v22 += v64;
      --v21;
    }

    while (v21);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v48 = sub_21D270B00(v67, v50);

  return v48;
}

void TTRRemindersListTreeViewModel.moveItem(from:to:)(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v46 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v46 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v51 = v2;
  v19 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v55) = 0;
  v21 = *(v19 + 24);
  v52 = a1;
  v22 = v21(a1, &v55, ObjectType, v19);
  if (*(v22 + 16))
  {
    v46 = v6;
    v47 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_21D0D3954(v22 + v47, v15, &qword_27CE58900);

    sub_21D0D523C(v15, v18, &qword_27CE58900);
    LOBYTE(v55) = 1;
    v23 = v54;
    v24 = v21(v54, &v55, ObjectType, v19);
    if (*(v24 + 16))
    {
      v25 = v48;
      sub_21D0D3954(v24 + v47, v48, &qword_27CE58900);

      v26 = v49;
      sub_21D0D523C(v25, v49, &qword_27CE58900);
      v27 = *(v50 + 36);
      v28 = *&v18[v27];
      v29 = *(v26 + v27);

      sub_21D260100(v28, v18, v29, v26);

      sub_21D0CF7E0(v26, &qword_27CE58900);
      v30 = v18;
      v31 = &qword_27CE58900;
      goto LABEL_11;
    }

    sub_21D0CF7E0(v18, &qword_27CE58900);

    v6 = v46;
  }

  else
  {

    v23 = v54;
  }

  v32 = v53;
  if (qword_280D0F188 != -1)
  {
    swift_once();
  }

  v33 = sub_21DBF84BC();
  __swift_project_value_buffer(v33, qword_280D0F190);
  sub_21D0D3954(v52, v32, &qword_27CE59D38);
  sub_21D0D3954(v23, v6, &qword_27CE59D38);
  v34 = sub_21DBF84AC();
  v35 = sub_21DBFAECC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v57 = v37;
    *v36 = 136315394;
    v38 = sub_21D296FBC();
    v55 = 0x64657669726564;
    v56 = 0xE700000000000000;
    MEMORY[0x223D42AA0](v38);

    v39 = v55;
    v40 = v56;
    sub_21D0CF7E0(v32, &qword_27CE59D38);
    v41 = sub_21D0CDFB4(v39, v40, &v57);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v42 = sub_21D296FBC();
    v55 = 0x64657669726564;
    v56 = 0xE700000000000000;
    MEMORY[0x223D42AA0](v42);

    v43 = v55;
    v44 = v56;
    sub_21D0CF7E0(v6, &qword_27CE59D38);
    v45 = sub_21D0CDFB4(v43, v44, &v57);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_21D0C9000, v34, v35, "Failed to convert from derived tree's source/destination locations. This move is probably not supported {source: %s, destination: %s}", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v37, -1, -1);
    MEMORY[0x223D46520](v36, -1, -1);

    return;
  }

  sub_21D0CF7E0(v6, &qword_27CE59D38);
  v30 = v32;
  v31 = &qword_27CE59D38;
LABEL_11:
  sub_21D0CF7E0(v30, v31);
}

void *TTRRemindersListTreeViewModel.steps(forMoving:to:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
  v3 = sub_21DBFA43C();
  if (!v3)
  {
    return 0;
  }

  v4 = sub_21D270494(v3, a2);

  return v4;
}

uint64_t sub_21D26FBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  TTRRemindersListTreeViewModel.presentationLocation(of:)(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A3E8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    sub_21D0D523C(v6, v10, &qword_27CE59D38);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48);
    v14 = *(v13 + 48);
    sub_21D104E74(a1, a2, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D523C(v10, a2 + v14, &qword_27CE59D38);
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }
}

void *sub_21D26FE28(size_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D58);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D68);
  v42 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v41 = &v37 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588F0);
  v13 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *(a1 + 16);
  sub_21D0D3954(a2, &v37 - v17, &qword_27CE588F0);
  sub_21DBF8E0C();
  v44 = sub_21D211AF0(0, v19, 0, MEMORY[0x277D84F90]);
  if (v19)
  {
    v54 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v20 = 0;
      v50 = v18;
      v51 = (v13 + 7);
      v21 = *(v53 + 36);
      v46 = v12;
      v47 = 1;
      v13 = &qword_27CE588F0;
      v49 = v15;
      v22 = v54;
      v40 = v21;
      while (1)
      {
        if (v20 == v22)
        {
          goto LABEL_18;
        }

        if (v20 >= *(a1 + 16))
        {
          goto LABEL_19;
        }

        v23 = a1;
        v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v24 = v15;
        v15 = *(v42 + 72);
        v48 = v20;
        v25 = v18;
        v26 = v41;
        sub_21D0D3954(a1 + v45 + v15 * v20, v41, &qword_27CE59D68);
        v27 = *(v52 + 48);
        sub_21D2A0DC8(v26, v12, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0D523C(v26 + v27, v24, &qword_27CE588F0);
        v12 = *v51;
        (*v51)(v8, 1, 1, v53);
        a1 = &qword_27CE5A550;
        sub_21D293F9C(v25, v24, v8, &qword_27CE5A550, &unk_21DC0FA50, &qword_27CE588F0, &unk_21DC09B48);
        sub_21D0CF7E0(v8, &qword_27CE5A550);
        if (!sub_21D297174(v24, v25, &qword_27CE588F0, &unk_21DC09B48))
        {
          v28 = *(v38 + 48);
          v39 = *(v38 + 64);
          v29 = v43;
          sub_21D104E74(v46, v43, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D0D3954(v24, v29 + v28, &qword_27CE588F0);
          sub_21D0D3954(v25, v29 + v39, &qword_27CE588F0);
          v30 = v44;
          a1 = v44[2];
          v31 = v44[3];
          if (a1 >= v31 >> 1)
          {
            v30 = sub_21D211AF0(v31 > 1, a1 + 1, 1, v44);
          }

          v30[2] = a1 + 1;
          v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v44 = v30;
          sub_21D0D523C(v43, v30 + v32 + *(v37 + 72) * a1, &qword_27CE59D58);
        }

        if (++v48 != v54)
        {
          break;
        }

LABEL_14:
        v15 = v49;
        sub_21D0CF7E0(v49, &qword_27CE588F0);
        v12 = v46;
        sub_21D106918(v46, type metadata accessor for TTRRemindersListViewModel.Item);
        v18 = v50;
        v33 = *&v50[v40];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_20;
        }

        *&v50[v40] = v35;
        v20 = v48;
        ++v47;
        v22 = v54;
        a1 = v23;
        if (v48 == v54)
        {
          goto LABEL_16;
        }
      }

      a1 = v48;
      v18 = (v23 + v45 + v15 * v47);
      while (1)
      {
        sub_21D0D3954(v50, v8, &qword_27CE588F0);
        v12(v8, 0, 1, v53);
        if (a1 >= *(v23 + 16))
        {
          break;
        }

        ++a1;
        sub_21D293F9C(&v18[*(v52 + 48)], v49, v8, &qword_27CE5A550, &unk_21DC0FA50, &qword_27CE588F0, &unk_21DC09B48);
        sub_21D0CF7E0(v8, &qword_27CE5A550);
        v18 += v15;
        if (v54 == a1)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      a1 = sub_21D256C2C(a1);
    }
  }

LABEL_16:
  sub_21D0CF7E0(v18, &qword_27CE588F0);

  return v44;
}

void *sub_21D270494(size_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D48);
  v42 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v41 = &v37 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  v13 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *(a1 + 16);
  sub_21D0D3954(a2, &v37 - v17, &qword_27CE59D38);
  sub_21DBF8E0C();
  v44 = sub_21D211B38(0, v19, 0, MEMORY[0x277D84F90]);
  if (v19)
  {
    v54 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v20 = 0;
      v50 = v18;
      v51 = (v13 + 7);
      v21 = *(v53 + 36);
      v46 = v12;
      v47 = 1;
      v13 = &qword_27CE59D38;
      v49 = v15;
      v22 = v54;
      v40 = v21;
      while (1)
      {
        if (v20 == v22)
        {
          goto LABEL_18;
        }

        if (v20 >= *(a1 + 16))
        {
          goto LABEL_19;
        }

        v23 = a1;
        v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v24 = v15;
        v15 = *(v42 + 72);
        v48 = v20;
        v25 = v18;
        v26 = v41;
        sub_21D0D3954(a1 + v45 + v15 * v20, v41, &qword_27CE59D48);
        v27 = *(v52 + 48);
        sub_21D2A0DC8(v26, v12, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0D523C(v26 + v27, v24, &qword_27CE59D38);
        v12 = *v51;
        (*v51)(v8, 1, 1, v53);
        a1 = &qword_27CE5A3E8;
        sub_21D293F9C(v25, v24, v8, &qword_27CE5A3E8, &unk_21DC0F428, &qword_27CE59D38, &unk_21DC0D020);
        sub_21D0CF7E0(v8, &qword_27CE5A3E8);
        if (!sub_21D297174(v24, v25, &qword_27CE59D38, &unk_21DC0D020))
        {
          v28 = *(v38 + 48);
          v39 = *(v38 + 64);
          v29 = v43;
          sub_21D104E74(v46, v43, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D0D3954(v24, v29 + v28, &qword_27CE59D38);
          sub_21D0D3954(v25, v29 + v39, &qword_27CE59D38);
          v30 = v44;
          a1 = v44[2];
          v31 = v44[3];
          if (a1 >= v31 >> 1)
          {
            v30 = sub_21D211B38(v31 > 1, a1 + 1, 1, v44);
          }

          v30[2] = a1 + 1;
          v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v44 = v30;
          sub_21D0D523C(v43, v30 + v32 + *(v37 + 72) * a1, &qword_27CE59D08);
        }

        if (++v48 != v54)
        {
          break;
        }

LABEL_14:
        v15 = v49;
        sub_21D0CF7E0(v49, &qword_27CE59D38);
        v12 = v46;
        sub_21D106918(v46, type metadata accessor for TTRRemindersListViewModel.Item);
        v18 = v50;
        v33 = *&v50[v40];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_20;
        }

        *&v50[v40] = v35;
        v20 = v48;
        ++v47;
        v22 = v54;
        a1 = v23;
        if (v48 == v54)
        {
          goto LABEL_16;
        }
      }

      a1 = v48;
      v18 = (v23 + v45 + v15 * v47);
      while (1)
      {
        sub_21D0D3954(v50, v8, &qword_27CE59D38);
        v12(v8, 0, 1, v53);
        if (a1 >= *(v23 + 16))
        {
          break;
        }

        ++a1;
        sub_21D293F9C(&v18[*(v52 + 48)], v49, v8, &qword_27CE5A3E8, &unk_21DC0F428, &qword_27CE59D38, &unk_21DC0D020);
        sub_21D0CF7E0(v8, &qword_27CE5A3E8);
        v18 += v15;
        if (v54 == a1)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      a1 = sub_21D256C40(a1);
    }
  }

LABEL_16:
  sub_21D0CF7E0(v18, &qword_27CE59D38);

  return v44;
}

void *sub_21D270B00(size_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B00);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B10);
  v48 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v47 = &v42 - v9;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  v12 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = *(a1 + 16);
  sub_21D0D3954(a2, &v42 - v16, &qword_27CE59A08);
  sub_21DBF8E0C();
  v51 = sub_21D2147D4(0, v18, 0, MEMORY[0x277D84F90]);
  if (v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v19 = v50;
      v20 = 0;
      v12 += 7;
      v21 = *(v57 + 36);
      v54 = 1;
      v45 = v21;
      v46 = v18;
      while (1)
      {
        if (v20 == v18)
        {
          goto LABEL_19;
        }

        if (v20 >= *(a1 + 16))
        {
          goto LABEL_20;
        }

        v22 = a1;
        v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v23 = a1 + v52;
        a1 = v19;
        v24 = *(v48 + 72);
        v55 = v20;
        v25 = v47;
        sub_21D0D3954(v23 + v24 * v20, v47, &qword_27CE59B10);
        v53 = *(v56 + 48);
        sub_21D2A0DC8(v25, v19, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D0D523C(v25 + v53, v14, &qword_27CE59A08);
        v26 = v19;
        v27 = *v12;
        (*v12)(v8, 1, 1, v57);
        sub_21D294CA0(v17, v14, v8);
        sub_21D0CF7E0(v8, &qword_27CE5A520);
        if (sub_21D297734(v14, v17))
        {
          v28 = v55;
          v18 = v46;
        }

        else
        {
          v29 = *(v44 + 48);
          v53 = *(v44 + 64);
          v30 = v26;
          v31 = v49;
          sub_21D104E74(v30, v49, type metadata accessor for TTRAccountsListsViewModel.Item);
          sub_21D0D3954(v14, v31 + v29, &qword_27CE59A08);
          sub_21D0D3954(v17, v31 + v53, &qword_27CE59A08);
          v32 = v51;
          a1 = v51[2];
          v33 = v51[3];
          v34 = a1 + 1;
          if (a1 >= v33 >> 1)
          {
            v40 = sub_21D2147D4(v33 > 1, a1 + 1, 1, v51);
            v34 = a1 + 1;
            v32 = v40;
          }

          v28 = v55;
          v18 = v46;
          v32[2] = v34;
          v35 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v51 = v32;
          sub_21D0D523C(v49, v32 + v35 + *(v43 + 72) * a1, &qword_27CE59B00);
        }

        v55 = v28 + 1;
        if (v28 + 1 != v18)
        {
          break;
        }

LABEL_15:
        sub_21D0CF7E0(v14, &qword_27CE59A08);
        v19 = v50;
        sub_21D106918(v50, type metadata accessor for TTRAccountsListsViewModel.Item);
        v37 = *&v17[v45];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_21;
        }

        *&v17[v45] = v39;
        v20 = v55;
        ++v54;
        a1 = v22;
        if (v55 == v18)
        {
          goto LABEL_17;
        }
      }

      v36 = v55;
      a1 = v22 + v52 + v24 * v54;
      while (1)
      {
        sub_21D0D3954(v17, v8, &qword_27CE59A08);
        v27(v8, 0, 1, v57);
        if (v36 >= *(v22 + 16))
        {
          break;
        }

        ++v36;
        sub_21D294CA0(a1 + *(v56 + 48), v14, v8);
        sub_21D0CF7E0(v8, &qword_27CE5A520);
        a1 += v24;
        if (v18 == v36)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      a1 = sub_21D256D94(a1);
    }
  }

LABEL_17:
  sub_21D0CF7E0(v17, &qword_27CE59A08);

  return v51;
}

uint64_t TTRRemindersListTreeViewModel.insert(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  v9 = *(a1 + *(v8 + 24));
  sub_21D104E74(a1 + *(v8 + 20), v7, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(a1, &v7[*(v5 + 64)], &qword_27CE5A3A0);
  v10 = &v7[*(v5 + 60)];
  *v10 = v9;
  *(v10 + 1) = 0;
  v10[16] = 1;

  sub_21D271278(v7, a2);
  return sub_21D0CF7E0(v7, &qword_27CE5CDA0);
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TTRRemindersListUncommittedSection(0);
  sub_21D104E74(a1 + *(v8 + 20), v7, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(a1, &v7[*(v5 + 64)], &qword_27CE5A3A0);
  v9 = &v7[*(v5 + 60)];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_21D271278(v7, a2);
  return sub_21D0CF7E0(v7, &qword_27CE5CDA0);
}

uint64_t sub_21D271278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;

  sub_21D272718(a1, v6);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A538);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A410);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v19 = *&v6[*(v16 + 48)];
    v20 = *(v7 + 48);
    sub_21D0D523C(v6, v9, &unk_27CE5CD80);
    *&v9[v20] = v19;
    v21 = *&v9[*(v7 + 48)];
    sub_21D0D523C(v9, v15, &unk_27CE5CD80);
    sub_21D0D523C(v15, v12, &unk_27CE5CD80);
    v22 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    sub_21D0F02F4(v12, a2, &unk_27CE5CD80);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    *(a2 + *(v23 + 36)) = v21;
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }
}

uint64_t TTRRemindersListTreeViewModel.actualInsertionLocation(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v17 = 1;
  v7 = (*(v5 + 24))(a1, &v17, ObjectType, v5);
  if (*(v7 + 16))
  {
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    v16 = *(v9 - 8);
    sub_21D0D3954(v8 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), a2, &qword_27CE58900);

    v10 = *(v16 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t TTRRemindersListTreeViewModel.unadjustInsertionLocation(_:forMoving:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v66 = a3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  MEMORY[0x28223BE20](v77);
  v76 = &v65 - v4;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v65 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v75);
  v74 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v20);
  v92 = &v65 - v21;
  MEMORY[0x28223BE20](v22);
  v72 = &v65 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v65 - v25;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  v27 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v71 = &v65 - v28;
  v89 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v89);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v65 - v33;
  v85 = *(a2 + 16);
  if (v85)
  {
    v35 = 0;
    v84 = a2 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v83 = *(v32 + 72);
    v88 = (v32 + 56);
    v70 = (v27 + 48);
    v68 = v27;
    v69 = (v27 + 56);
    v78 = MEMORY[0x277D84F90];
    v81 = v26;
    v82 = v13;
    while (1)
    {
      v91 = v35;
      sub_21D104E74(v84 + v83 * v35, v34, type metadata accessor for TTRRemindersListViewModel.Item);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
      v37 = sub_21D2916C8(v10, sub_21D181E00);
      sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v37 && (Strong = swift_weakLoadStrong(), , Strong))
      {
        v39 = *(*Strong + 120);
        swift_beginAccess();
        v40 = Strong + v39;
        v41 = v92;
        sub_21D104E74(v40, v92, type metadata accessor for TTRRemindersListViewModel.Item);

        v42 = 0;
      }

      else
      {
        v42 = 1;
        v41 = v92;
      }

      v87 = *v88;
      v87(v41, v42, 1, v89);
      result = sub_21D261568(v41);
      if (result < 0)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v44 = result;
      sub_21D0D3954(v41, v19, &unk_27CE5CD80);

      v45 = 0;
      while (1)
      {
        if (v44 == v45)
        {

          sub_21D0CF7E0(v19, &unk_27CE5CD80);
          sub_21D0CF7E0(v92, &unk_27CE5CD80);
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
          v49 = v82;
          (*(*(v48 - 8) + 56))(v82, 1, 1, v48);
          goto LABEL_19;
        }

        sub_21D26181C(v45, v19, v30);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
        v46 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
        sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
        result = sub_21D106918(v30, type metadata accessor for TTRRemindersListViewModel.Item);
        if (v46)
        {
          break;
        }

        if (__OFADD__(v45++, 1))
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      sub_21D0CF7E0(v19, &unk_27CE5CD80);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      v51 = *(v50 + 48);
      v49 = v82;
      sub_21D0D523C(v92, v82, &unk_27CE5CD80);
      *(v49 + v51) = v45;
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
LABEL_19:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      if ((*(*(v52 - 8) + 48))(v49, 1, v52) == 1)
      {
        sub_21D106918(v34, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v49, &qword_27CE5A3C0);
        v36 = v81;
        (*v69)(v81, 1, 1, v86);
      }

      else
      {
        v53 = *(v49 + *(v52 + 48));
        v54 = v75;
        v55 = *(v75 + 48);
        v56 = v74;
        sub_21D0D523C(v49, v74, &unk_27CE5CD80);
        *(v56 + v55) = v53;
        v80 = *(v56 + *(v54 + 48));
        v57 = v72;
        sub_21D0D523C(v56, v72, &unk_27CE5CD80);
        v58 = *(v90 + 32);
        ObjectType = swift_getObjectType();
        v59 = v73;
        sub_21D0D3954(v57, v73, &unk_27CE5CD80);
        v60 = v76;
        v87(v76, 1, 1, v89);
        sub_21D0F02F4(v59, v60, &unk_27CE5CD80);
        v36 = v81;
        *(v60 + *(v77 + 36)) = v80;
        (*(v58 + 32))(v60, ObjectType, v58);
        sub_21D0CF7E0(v57, &unk_27CE5CD80);
        sub_21D106918(v34, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v60, &qword_27CE58900);
        if ((*v70)(v36, 1, v86) != 1)
        {
          sub_21D0D523C(v36, v71, &qword_27CE59D38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_21D211B5C(0, v78[2] + 1, 1, v78);
          }

          v61 = v68;
          v63 = v78[2];
          v62 = v78[3];
          if (v63 >= v62 >> 1)
          {
            v78 = sub_21D211B5C(v62 > 1, v63 + 1, 1, v78);
          }

          v64 = v78;
          v78[2] = v63 + 1;
          sub_21D0D523C(v71, v64 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v63, &qword_27CE59D38);
          goto LABEL_5;
        }
      }

      sub_21D0CF7E0(v36, &qword_27CE5A3E8);
LABEL_5:
      v35 = v91 + 1;
      if (v91 + 1 == v85)
      {
        goto LABEL_27;
      }
    }
  }

  v78 = MEMORY[0x277D84F90];
LABEL_27:
  sub_21D272330(v67, v78, v66);
}

void sub_21D272330(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 16);
  while (v10 != v9)
  {
    if (v9 >= v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38) - 8);
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_12;
    }

    if (sub_21D295994(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a1))
    {
      v9 = v12;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  sub_21D0D3954(a1, v7, &unk_27CE5CD80);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  v16 = *(a1 + *(v15 + 36));
  v17 = v16 + v8;
  if (!__OFADD__(v16, v8))
  {
    v18 = v15;
    v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v20 = v21;
    (*(*(v19 - 8) + 56))(v21, 1, 1, v19);
    sub_21D0F02F4(v7, v20, &unk_27CE5CD80);
    *(v20 + *(v18 + 36)) = v17;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_21D272524(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 16);
  while (v10 != v9)
  {
    if (v9 >= v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08) - 8);
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_12;
    }

    if (sub_21D295F78(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a1))
    {
      v9 = v12;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  sub_21D0D3954(a1, v7, &qword_27CE5A490);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  v16 = *(a1 + *(v15 + 36));
  v17 = v16 + v8;
  if (!__OFADD__(v16, v8))
  {
    v18 = v15;
    v19 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    v20 = v21;
    (*(*(v19 - 8) + 56))(v21, 1, 1, v19);
    sub_21D0F02F4(v7, v20, &qword_27CE5A490);
    *(v20 + *(v18 + 36)) = v17;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_21D272718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583F0);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v73 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  MEMORY[0x28223BE20](v78);
  v79 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v73 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v75);
  v74 = &v73 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v76 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v73 - v25;
  sub_21D104E74(a1, &v73 - v25, type metadata accessor for TTRRemindersListViewModel.Item);
  v81 = v26;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
  sub_21D108408(v12, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v17);
  sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
  LODWORD(v26) = (*(v19 + 48))(v17, 1, v18);
  sub_21D0CF7E0(v17, &unk_27CE5CD80);
  if (v26 == 1)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
    v28 = a1;
    sub_21D274B48(a1 + *(v27 + 56), v8);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
    if ((*(*(v29 - 8) + 48))(v8, 1, v29) != 1)
    {
      v52 = *&v8[*(v29 + 48)];
      v54 = v74;
      v53 = v75;
      v55 = *(v75 + 48);
      sub_21D0D523C(v8, v74, &unk_27CE5CD80);
      *(v54 + v55) = v52;
      v56 = *(v54 + *(v53 + 48));
      v57 = v54;
      v58 = v77;
      sub_21D0D523C(v57, v77, &unk_27CE5CD80);
      v59 = v81;
      v60 = v79;
      sub_21D104E74(v81, v79, type metadata accessor for TTRRemindersListViewModel.Item);
      v61 = v28 + *(v27 + 52);
      v62 = *(v61 + 16);
      v63 = v78;
      v64 = v60 + *(v78 + 52);
      *v64 = *v61;
      *(v64 + 16) = v62;
      *(v60 + *(v63 + 56)) = MEMORY[0x277D84F90];

      v65 = v56;
      sub_21D26BC40(v60, v58, v56);
      sub_21D0CF7E0(v60, &qword_27CE581C8);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
      v66 = v28;
      v67 = v80;
      sub_21D0D3954(v66, v80, &qword_27CE5CDA0);
      (*(*(v27 - 8) + 56))(v67, 0, 1, v27);
      swift_beginAccess();
      sub_21D17CA40(v67, v12);
      swift_endAccess();
      sub_21D106918(v59, type metadata accessor for TTRRemindersListViewModel.Item);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A538);
      v69 = *(v68 + 48);
      v70 = v82;
      sub_21D0D523C(v58, v82, &unk_27CE5CD80);
      *(v70 + v69) = v65;
      return (*(*(v68 - 8) + 56))(v70, 0, 1, v68);
    }

    sub_21D0CF7E0(v8, &qword_27CE5A3F8);
    v30 = v81;
    if (qword_27CE56620 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE5A918);
    v32 = v76;
    sub_21D104E74(v30, v76, type metadata accessor for TTRRemindersListViewModel.Item);
    v33 = sub_21DBF84AC();
    v34 = sub_21DBFAE9C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v83[0] = v36;
      *v35 = 136315138;
      v37 = sub_21D25D250();
      v39 = v38;
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
      v40 = sub_21D0CDFB4(v37, v39, v83);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_21D0C9000, v33, v34, "Unable to determine target location for new temporary item {item: %s}", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223D46520](v36, -1, -1);
      MEMORY[0x223D46520](v35, -1, -1);
    }

    else
    {

      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v41 = v30;
  }

  else
  {
    if (qword_27CE56620 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE5A918);
    v43 = v81;
    sub_21D104E74(v81, v23, type metadata accessor for TTRRemindersListViewModel.Item);
    v44 = sub_21DBF84AC();
    v45 = sub_21DBFAE9C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v83[0] = v47;
      *v46 = 136315138;
      v48 = sub_21D25D250();
      v50 = v49;
      sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
      v51 = sub_21D0CDFB4(v48, v50, v83);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_21D0C9000, v44, v45, "Temporary item already exists {item: %s}", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223D46520](v47, -1, -1);
      MEMORY[0x223D46520](v46, -1, -1);
    }

    else
    {

      sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v41 = v43;
  }

  sub_21D106918(v41, type metadata accessor for TTRRemindersListViewModel.Item);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A538);
  return (*(*(v72 - 8) + 56))(v82, 1, 1, v72);
}

uint64_t TTRRemindersListTreeViewModel.resolve(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a1;
  v137 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v2 - 8);
  v133 = (&v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v132 = &v119 - v5;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v121 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v124 = &v119 - v8;
  MEMORY[0x28223BE20](v9);
  v126 = &v119 - v10;
  MEMORY[0x28223BE20](v11);
  v123 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v125 = &v119 - v14;
  v140 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v135 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v120 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v119 - v17;
  MEMORY[0x28223BE20](v19);
  v119 = &v119 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v119 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v119 - v25;
  MEMORY[0x28223BE20](v27);
  v130 = &v119 - v28;
  MEMORY[0x28223BE20](v29);
  v122 = &v119 - v30;
  v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v31 - 8);
  v134 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  MEMORY[0x28223BE20](v33);
  v35 = &v119 - v34;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v119 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v40 - 8);
  v131 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v119 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v119 - v46;
  v48 = type metadata accessor for TTRRemindersListReminderCreationLocation(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v119 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(v139, v50, type metadata accessor for TTRRemindersListReminderCreationLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D2A0DC8(v50, v23, type metadata accessor for TTRRemindersListViewModel.Item);

      v64 = v132;
      sub_21D25F7C0(v132);

      sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
      v65 = v138;
      if ((*(v136 + 48))(v64, 1, v138) == 1)
      {
        sub_21D0CF7E0(v64, &qword_27CE5A3C0);
        v66 = v137;
LABEL_19:
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
        v62 = *(*(v97 - 8) + 56);
        v63 = v66;
LABEL_42:
        v114 = 1;
        return v62(v63, v114, 1, v97);
      }

      v85 = v125;
      sub_21D0D523C(v64, v125, &qword_27CE59D88);
      v86 = v123;
      sub_21D0D3954(v85, v123, &qword_27CE59D88);
      v87 = v135;
      v88 = v140;
      v89 = (*(v135 + 48))(v86, 1, v140);
      v66 = v137;
      if (v89 != 1)
      {
        v90 = v86;
        v91 = v119;
        sub_21D2A0DC8(v90, v119, type metadata accessor for TTRRemindersListViewModel.Item);
        v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48);
        sub_21D2A0DC8(v91, v66, type metadata accessor for TTRRemindersListViewModel.Item);
        (*(v87 + 56))(v66, 0, 1, v88);
        v93 = *(v85 + *(v65 + 48));
        result = sub_21D0CF7E0(v85, &qword_27CE59D88);
        if (!__OFADD__(v93, 1))
        {
          *(v66 + v92) = v93 + 1;
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
          swift_storeEnumTagMultiPayload();
          v62 = *(*(v61 - 8) + 56);
          v63 = v66;
          goto LABEL_44;
        }

        goto LABEL_50;
      }
    }

    else
    {
      sub_21D2A0DC8(v50, v18, type metadata accessor for TTRRemindersListViewModel.Item);

      v80 = v133;
      sub_21D25F7C0(v133);

      sub_21D106918(v18, type metadata accessor for TTRRemindersListViewModel.Item);
      v81 = v138;
      v82 = (*(v136 + 48))(v80, 1, v138);
      v66 = v137;
      if (v82 == 1)
      {
        v83 = &qword_27CE5A3C0;
        v84 = v80;
LABEL_18:
        sub_21D0CF7E0(v84, v83);
        goto LABEL_19;
      }

      v85 = v126;
      sub_21D0D523C(v80, v126, &qword_27CE59D88);
      v86 = v124;
      sub_21D0D3954(v85, v124, &qword_27CE59D88);
      v95 = v135;
      v96 = v140;
      if ((*(v135 + 48))(v86, 1, v140) != 1)
      {
        v99 = v86;
        v100 = v120;
        sub_21D2A0DC8(v99, v120, type metadata accessor for TTRRemindersListViewModel.Item);
        v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48);
        sub_21D2A0DC8(v100, v66, type metadata accessor for TTRRemindersListViewModel.Item);
        (*(v95 + 56))(v66, 0, 1, v96);
        v102 = v121;
        sub_21D0D523C(v85, v121, &qword_27CE59D88);
        *(v66 + v101) = *(v102 + *(v81 + 48));
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
        swift_storeEnumTagMultiPayload();
        (*(*(v103 - 8) + 56))(v66, 0, 1, v103);
        return sub_21D0CF7E0(v102, &unk_27CE5CD80);
      }
    }

    sub_21D0CF7E0(v85, &qword_27CE59D88);
    v83 = &unk_27CE5CD80;
    v84 = v86;
    goto LABEL_18;
  }

  if (!EnumCaseMultiPayload)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
    v53 = *&v50[*(v52 + 48)];
    v138 = v52;
    v139 = v53;
    sub_21D0D523C(v50, v47, &unk_27CE5CD80);
    v54 = *(v141 + 32);
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v47, v44, &unk_27CE5CD80);
    (*(v135 + 56))(v35, 1, 1, v140);
    sub_21D0F02F4(v44, v35, &unk_27CE5CD80);
    *&v35[*(v33 + 36)] = v139;
    v142[0] = 1;
    v56 = (*(v54 + 24))(v35, v142, ObjectType, v54);
    sub_21D0CF7E0(v35, &qword_27CE59D38);
    if (*(v56 + 16))
    {
      v57 = v128;
      sub_21D0D3954(v56 + ((*(v127 + 80) + 32) & ~*(v127 + 80)), v128, &qword_27CE58900);

      sub_21D0CF7E0(v47, &unk_27CE5CD80);
      sub_21D0D523C(v57, v39, &qword_27CE58900);
      v58 = v137;
      v59 = *(v138 + 48);
      sub_21D0D3954(v39, v137, &unk_27CE5CD80);
      v60 = *&v39[*(v129 + 36)];
      sub_21D0CF7E0(v39, &qword_27CE58900);
      *(v58 + v59) = v60;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
      swift_storeEnumTagMultiPayload();
      v62 = *(*(v61 - 8) + 56);
      v63 = v58;
LABEL_44:
      v114 = 0;
      v97 = v61;
      return v62(v63, v114, 1, v97);
    }

    v98 = v47;
    goto LABEL_41;
  }

  v67 = v50;
  v68 = v134;
  sub_21D2A0DC8(v67, v134, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v69 = v140;
  v70 = v135;
  v138 = *(v135 + 56);
  v139 = v135 + 56;
  (v138)(v44, 1, 1, v140);

  v71 = sub_21D263398(v44);

  sub_21D0CF7E0(v44, &unk_27CE5CD80);
  v72 = *(v71 + 16);
  if (!v72)
  {

    v79 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v73 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v74 = v71 + v73;
  v75 = v71 + v73;
  v133 = v71;
  v76 = v130;
  sub_21D104E74(v75, v130, type metadata accessor for TTRRemindersListViewModel.Item);
  v77 = swift_getEnumCaseMultiPayload();
  v78 = sub_21D106918(v76, type metadata accessor for TTRRemindersListViewModel.Item);
  if (v77)
  {
    v79 = v133;
LABEL_39:
    MEMORY[0x28223BE20](v78);
    *(&v119 - 2) = v68;
    v113 = v131;
    sub_21D22D788(sub_21D2F8BAC, v79, v131);

    sub_21D106918(v68, type metadata accessor for TTRRemindersListViewModel.SectionID);
    if ((*(v70 + 48))(v113, 1, v69) != 1)
    {
      v115 = v113;
      v116 = v122;
      sub_21D2A0DC8(v115, v122, type metadata accessor for TTRRemindersListViewModel.Item);
      v117 = v116;
      v118 = v137;
      sub_21D2A0DC8(v117, v137, type metadata accessor for TTRRemindersListViewModel.Item);
      (v138)(v118, 0, 1, v69);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
      swift_storeEnumTagMultiPayload();
      v62 = *(*(v61 - 8) + 56);
      v63 = v118;
      goto LABEL_44;
    }

    v98 = v113;
LABEL_41:
    sub_21D0CF7E0(v98, &unk_27CE5CD80);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
    v62 = *(*(v97 - 8) + 56);
    v63 = v137;
    goto LABEL_42;
  }

  v136 = v73;
  v104 = *(v70 + 72);
  v79 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21D104E74(v74, v26, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v26, v44, type metadata accessor for TTRRemindersListViewModel.Item);
    (v138)(v44, 0, 1, v69);

    v105 = sub_21D263398(v44);

    sub_21D0CF7E0(v44, &unk_27CE5CD80);
    result = sub_21D106918(v26, type metadata accessor for TTRRemindersListViewModel.Item);
    v106 = *(v105 + 16);
    v107 = v79[2];
    v108 = v107 + v106;
    if (__OFADD__(v107, v106))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v108 > v79[3] >> 1)
    {
      if (v107 <= v108)
      {
        v109 = v107 + v106;
      }

      else
      {
        v109 = v107;
      }

      result = sub_21D211A80(result, v109, 1, v79);
      v79 = result;
    }

    v69 = v140;
    if (*(v105 + 16))
    {
      if ((v79[3] >> 1) - v79[2] < v106)
      {
        goto LABEL_48;
      }

      swift_arrayInitWithCopy();

      if (v106)
      {
        v110 = v79[2];
        v111 = __OFADD__(v110, v106);
        v112 = v110 + v106;
        if (v111)
        {
          goto LABEL_49;
        }

        v79[2] = v112;
      }
    }

    else
    {

      if (v106)
      {
        goto LABEL_47;
      }
    }

    v74 += v104;
    if (!--v72)
    {

      v68 = v134;
      v70 = v135;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v14);
  v49 = &v47 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = type metadata accessor for TTRRemindersListSectionCreationLocation(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(a1, v27, type metadata accessor for TTRRemindersListSectionCreationLocation);
  v28 = (v9 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D2A0DC8(v27, v21, type metadata accessor for TTRRemindersListViewModel.Item);

    sub_21D25F7C0(v5);

    sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.Item);
    v29 = v50;
    if ((*v28)(v5, 1, v50) == 1)
    {
      v30 = v5;
LABEL_6:
      sub_21D0CF7E0(v30, &qword_27CE5A3C0);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
      return (*(*(v32 - 8) + 56))(v51, 1, 1, v32);
    }

    sub_21D0D523C(v5, v13, &qword_27CE59D88);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48);
    v35 = v49;
    sub_21D0D3954(v13, v49, &qword_27CE59D88);
    v36 = v35;
    v37 = v51;
    sub_21D0D523C(v36, v51, &unk_27CE5CD80);
    v38 = v13;
    v39 = v48;
    sub_21D0D523C(v38, v48, &qword_27CE59D88);
    *(v37 + v34) = *(v39 + *(v29 + 48));
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
    swift_storeEnumTagMultiPayload();
    (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
    return sub_21D0CF7E0(v39, &unk_27CE5CD80);
  }

  else
  {
    sub_21D2A0DC8(v27, v24, type metadata accessor for TTRRemindersListViewModel.Item);

    sub_21D25F7C0(v8);

    sub_21D106918(v24, type metadata accessor for TTRRemindersListViewModel.Item);
    v31 = v50;
    if ((*v28)(v8, 1, v50) == 1)
    {
      v30 = v8;
      goto LABEL_6;
    }

    sub_21D0D523C(v8, v18, &qword_27CE59D88);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48);
    v42 = v49;
    sub_21D0D3954(v18, v49, &qword_27CE59D88);
    v43 = v42;
    v44 = v51;
    sub_21D0D523C(v43, v51, &unk_27CE5CD80);
    v45 = *&v18[*(v31 + 48)];
    result = sub_21D0CF7E0(v18, &qword_27CE59D88);
    if (__OFADD__(v45, 1))
    {
      __break(1u);
    }

    else
    {
      *(v44 + v41) = v45 + 1;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
    }
  }

  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;

  sub_21D274B48(a1, v6);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A3F8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v19 = *&v6[*(v16 + 48)];
    v20 = *(v7 + 48);
    sub_21D0D523C(v6, v9, &unk_27CE5CD80);
    *&v9[v20] = v19;
    v21 = *&v9[*(v7 + 48)];
    sub_21D0D523C(v9, v15, &unk_27CE5CD80);
    sub_21D0D523C(v15, v12, &unk_27CE5CD80);
    v22 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    sub_21D0F02F4(v12, a2, &unk_27CE5CD80);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    *(a2 + *(v23 + 36)) = v21;
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }
}

uint64_t sub_21D274B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v41 = a1;
  sub_21D0D3954(a1, v11, &qword_27CE5A3A0);
  sub_21D0D523C(v11, v20, &unk_27CE5CD80);
  sub_21D0D523C(v20, v23, &unk_27CE5CD80);
  sub_21D0D3954(v23, v17, &unk_27CE5CD80);
  v24 = *(v6 + 48);
  if (v24(v17, 1, v5) == 1)
  {
    sub_21D0CF7E0(v17, &unk_27CE5CD80);
  }

  else
  {
    v25 = v37;
    sub_21D2A0DC8(v17, v37, type metadata accessor for TTRRemindersListViewModel.Item);
    v26 = v38;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v38);
    sub_21D108408(v26, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v14);
    sub_21D106918(v26, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106918(v25, type metadata accessor for TTRRemindersListViewModel.Item);
    v27 = v24(v14, 1, v5);
    sub_21D0CF7E0(v14, &unk_27CE5CD80);
    if (v27 == 1)
    {
      sub_21D0CF7E0(v23, &unk_27CE5CD80);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
      return (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
    }
  }

  v30 = sub_21D261568(v23);
  v31 = v39;
  sub_21D0D3954(v41, v39, &qword_27CE5A3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48));
    result = sub_21D0CF7E0(v31, &unk_27CE5CD80);
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    if (v30 >= (v32 & ~(v32 >> 63)))
    {
      v30 = v32 & ~(v32 >> 63);
    }
  }

  else
  {
    sub_21D0CF7E0(v31, &unk_27CE5CD80);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
  v34 = *(v33 + 48);
  v35 = v42;
  sub_21D0D523C(v23, v42, &unk_27CE5CD80);
  *(v35 + v34) = v30;
  return (*(*(v33 - 8) + 56))(v35, 0, 1, v33);
}

void *TTRRemindersListTreeViewModel.uncommittedSections.getter()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = &v83 - v4;
  v104 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v104);
  v92 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v106 = (&v83 - v7);
  v105 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v8 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v93 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v83 - v11;
  v116 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v116);
  v94 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = &v83 - v14;
  MEMORY[0x28223BE20](v15);
  v99 = &v83 - v16;
  MEMORY[0x28223BE20](v17);
  v102 = &v83 - v18;
  MEMORY[0x28223BE20](v19);
  v117 = &v83 - v20;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem(0);
  MEMORY[0x28223BE20](v21 - 8);
  v96 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v109 = &v83 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A400);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v83 - v26;
  v110 = type metadata accessor for TTRRemindersListUncommittedSection(0);
  v28 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v101 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v115 = &v83 - v31;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v32 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v83 - v36;

  v38 = sub_21D276254();

  v40 = v38;
  v41 = *(v38 + 16);
  if (!v41)
  {

    return MEMORY[0x277D84F90];
  }

  v89 = v2;
  v90 = v0;
  v42 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v97 = v40;
  v43 = v40 + v42;
  v113 = *(v32 + 72);
  v114 = (v8 + 56);
  v107 = (v8 + 48);
  v112 = (v28 + 56);
  v44 = MEMORY[0x277D84F90];
  v108 = v28;
  v111 = (v28 + 48);
  *&v39 = 136315138;
  v91 = v39;
  v45 = v105;
  v46 = v109;
  v47 = v110;
  do
  {
    v118 = v44;
    sub_21D0D3954(v43, v37, &qword_27CE5CDA0);
    sub_21D0D3954(v37, v34, &qword_27CE5CDA0);
    sub_21D104E74(v34, v117, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload > 8)
      {
        sub_21D0CF7E0(v34, &qword_27CE5CDA0);
        sub_21D0CF7E0(v37, &qword_27CE5CDA0);
      }

      else
      {
LABEL_11:
        sub_21D0CF7E0(v34, &qword_27CE5CDA0);
        sub_21D0CF7E0(v37, &qword_27CE5CDA0);
        sub_21D106918(v117, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      (*v114)(v46, 1, 1, v45);
LABEL_13:
      v44 = v118;
LABEL_14:
      (*v112)(v27, 1, 1, v47);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload)
    {
      sub_21D2A0DC8(v117, v46, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v52 = *v114;
      (*v114)(v46, 0, 1, v45);
    }

    else
    {
      v52 = *v114;
      (*v114)(v46, 1, 1, v45);
      sub_21D106918(v117, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v53 = *v107;
    if ((*v107)(v46, 1, v45) == 1)
    {
      sub_21D0CF7E0(v34, &qword_27CE5CDA0);
      sub_21D0CF7E0(v37, &qword_27CE5CDA0);
      v47 = v110;
      goto LABEL_13;
    }

    v54 = v46;
    v55 = v103;
    sub_21D2A0DC8(v54, v103, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D104E74(v55, v106, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v55, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 <= 4)
    {
      v45 = v105;
      v44 = v118;
      if (v56 <= 1)
      {
        if (v56)
        {
LABEL_42:
        }
      }

      else
      {
LABEL_43:
        sub_21D106918(v106, type metadata accessor for TTRRemindersListViewModel.SectionID);
      }

LABEL_44:
      sub_21D0CF7E0(v34, &qword_27CE5CDA0);
      sub_21D0CF7E0(v37, &qword_27CE5CDA0);
      v46 = v109;
      v47 = v110;
      goto LABEL_14;
    }

    v57 = v52;
    v45 = v105;
    v58 = v102;
    v44 = v118;
    if (v56 <= 6)
    {
      goto LABEL_43;
    }

    if (v56 == 7)
    {
      goto LABEL_44;
    }

    if (v56 == 8)
    {
      goto LABEL_42;
    }

    sub_21D0D3954(&v34[*(v95 + 56)], v100, &qword_27CE5A3A0);
    sub_21D104E74(v34, v58, type metadata accessor for TTRRemindersListViewModel.Item);
    v45 = v105;
    sub_21D0D3954(v100, v101, &qword_27CE5A3A0);
    sub_21D104E74(v58, v101 + *(v110 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v58, v99, type metadata accessor for TTRRemindersListViewModel.Item);
    v59 = swift_getEnumCaseMultiPayload();
    v60 = v96;
    if (v59 > 8)
    {
      goto LABEL_35;
    }

    if ((v59 - 2) < 7)
    {
      sub_21D106918(v99, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_35:
      v57(v60, 1, 1, v45);
      v61 = v98;
      goto LABEL_36;
    }

    if (v59)
    {
      sub_21D2A0DC8(v99, v96, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v57(v60, 0, 1, v45);
    }

    else
    {
      v57(v96, 1, 1, v45);
      sub_21D106918(v99, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    v75 = v53(v60, 1, v45);
    v61 = v98;
    if (v75 != 1)
    {
      v76 = v60;
      v77 = v93;
      sub_21D2A0DC8(v76, v93, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D104E74(v77, v92, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v78 = swift_getEnumCaseMultiPayload();
      if (v78 > 6)
      {
        v47 = v110;
        if (v78 == 7)
        {
          goto LABEL_57;
        }

        if (v78 != 8)
        {
          v80 = *v92;
          sub_21D106918(v93, type metadata accessor for TTRRemindersListViewModel.SectionHeader);

          v74 = type metadata accessor for TTRRemindersListViewModel.Item;
          v73 = v102;
LABEL_48:
          sub_21D106918(v73, v74);
          sub_21D0CF7E0(v100, &qword_27CE5A3A0);
          goto LABEL_49;
        }
      }

      else
      {
        if ((v78 - 2) < 5)
        {
          sub_21D106918(v92, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_57:
          sub_21D106918(v93, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          goto LABEL_36;
        }

        if (!v78)
        {
          goto LABEL_57;
        }
      }

      v81 = *v92;
      sub_21D106918(v93, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    }

LABEL_36:
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v62 = sub_21DBF84BC();
    __swift_project_value_buffer(v62, qword_280D0F190);
    v63 = v102;
    sub_21D104E74(v102, v61, type metadata accessor for TTRRemindersListViewModel.Item);
    v64 = sub_21DBF84AC();
    v65 = sub_21DBFAECC();
    if (os_log_type_enabled(v64, v65))
    {
      v87 = v65;
      v66 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v125 = v86;
      v88 = v66;
      *v66 = v91;
      sub_21D104E74(v61, v94, type metadata accessor for TTRRemindersListViewModel.Item);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380);
      if (swift_dynamicCast())
      {
        sub_21D0D0FD0(v119, &v121);
        v85 = v124;
        __swift_project_boxed_opaque_existential_1(&v121, v123);
        v84 = sub_21DBFC5BC();
        v68 = v67;
        __swift_destroy_boxed_opaque_existential_0(&v121);
      }

      else
      {
        v120 = 0;
        memset(v119, 0, sizeof(v119));
        sub_21D0CF7E0(v119, &qword_27CE5A388);
        v121 = 0;
        v122 = 0xE000000000000000;
        v69 = v89;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v89);
        sub_21DBFC14C();
        v61 = v98;
        sub_21D106918(v69, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v68 = v122;
        v84 = v121;
      }

      v47 = v110;
      v85 = type metadata accessor for TTRRemindersListViewModel.Item;
      sub_21D106918(v61, type metadata accessor for TTRRemindersListViewModel.Item);
      v70 = sub_21D0CDFB4(v84, v68, &v125);

      v71 = v88;
      *(v88 + 1) = v70;
      _os_log_impl(&dword_21D0C9000, v64, v87, "TTRRemindersListUncommittedSection: Invalid item type {item: %s}", v71, 0xCu);
      v72 = v86;
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x223D46520](v72, -1, -1);
      MEMORY[0x223D46520](v71, -1, -1);

      v73 = v102;
      v74 = v85;
      goto LABEL_48;
    }

    sub_21D106918(v63, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v100, &qword_27CE5A3A0);
    sub_21D106918(v61, type metadata accessor for TTRRemindersListViewModel.Item);
    v47 = v110;
LABEL_49:
    sub_21D0CF7E0(v34, &qword_27CE5CDA0);
    sub_21D0CF7E0(v37, &qword_27CE5CDA0);
    sub_21D2A0DC8(v101, v27, type metadata accessor for TTRRemindersListUncommittedSection);
    (*v112)(v27, 0, 1, v47);
    v46 = v109;
    v44 = v118;
LABEL_15:
    if ((*v111)(v27, 1, v47) == 1)
    {
      sub_21D0CF7E0(v27, &qword_27CE5A400);
    }

    else
    {
      sub_21D2A0DC8(v27, v115, type metadata accessor for TTRRemindersListUncommittedSection);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_21D211B80(0, v44[2] + 1, 1, v44);
      }

      v50 = v44[2];
      v49 = v44[3];
      v51 = v108;
      if (v50 >= v49 >> 1)
      {
        v79 = sub_21D211B80(v49 > 1, v50 + 1, 1, v44);
        v51 = v108;
        v44 = v79;
      }

      v44[2] = v50 + 1;
      sub_21D2A0DC8(v115, v44 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50, type metadata accessor for TTRRemindersListUncommittedSection);
      v46 = v109;
      v47 = v110;
    }

    v43 += v113;
    --v41;
  }

  while (v41);

  return v44;
}

uint64_t sub_21D276254()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v55 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A540);
  MEMORY[0x28223BE20](v56);
  v63 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v48 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v62 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v64 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  swift_beginAccess();

  v10 = sub_21DBF8E0C();
  v11 = sub_21D2A3638(v10, v0);

  v53 = v0;
  *(v0 + 32) = v11;

  v12 = v11[2];
  if (v12)
  {
    v66 = MEMORY[0x277D84F90];
    sub_21D18EC2C(0, v12, 0);
    v13 = v66;
    v61 = v11 + 8;
    result = sub_21DBFBCCC();
    v15 = result;
    v16 = 0;
    v65 = *(v11 + 9);
    v50 = v11 + 9;
    v17 = &unk_21DC09B90;
    v58 = v11;
    v51 = v12;
    v52 = v9;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
    {
      v19 = v15 >> 6;
      if ((v61[v15 >> 6] & (1 << v15)) == 0)
      {
        goto LABEL_29;
      }

      if (v65 != *(v11 + 9))
      {
        goto LABEL_30;
      }

      v60 = v13;
      v20 = v17;
      v21 = v56;
      v22 = *(v56 + 48);
      v23 = v54;
      sub_21D104E74(v11[6] + *(v55 + 72) * v15, v54, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v24 = v11[7];
      v59 = *(v62 + 72);
      sub_21D0D3954(v24 + v59 * v15, v23 + v22, &qword_27CE5CDA0);
      v25 = v63;
      sub_21D2A0DC8(v23, v63, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v26 = *(v21 + 48);
      sub_21D0D523C(v23 + v22, v25 + v26, &qword_27CE5CDA0);
      sub_21D0D3954(v25 + v26, v64, &qword_27CE5CDA0);
      v27 = v57;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v57);
      v28 = v53;
      swift_beginAccess();
      v30 = *(v28 + 24);
      if (*(v30 + 16) && (v31 = sub_21D181E00(v27, v29), (v32 & 1) != 0))
      {
        v33 = *(*(v30 + 56) + 8 * v31);
        swift_endAccess();

        sub_21D106918(v27, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v34 = (v33 + *(*v33 + 128));
        swift_beginAccess();
        v35 = *v34;
        v36 = v34[1];
        LOBYTE(v34) = *(v34 + 16);

        v37 = v64 + *(v49 + 52);

        *v37 = v35;
        *(v37 + 8) = v36;
        v17 = v20;
        *(v37 + 16) = v34;
      }

      else
      {
        swift_endAccess();
        sub_21D106918(v27, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      v38 = v52;
      sub_21D0D523C(v64, v52, &qword_27CE5CDA0);
      sub_21D0CF7E0(v63, &qword_27CE5A540);
      v13 = v60;
      v66 = v60;
      v40 = *(v60 + 16);
      v39 = *(v60 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_21D18EC2C(v39 > 1, v40 + 1, 1);
        v13 = v66;
      }

      *(v13 + 16) = v40 + 1;
      result = sub_21D0D523C(v38, v13 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + v40 * v59, &qword_27CE5CDA0);
      v11 = v58;
      v18 = 1 << *(v58 + 32);
      if (v15 >= v18)
      {
        goto LABEL_31;
      }

      v41 = v61[v19];
      if ((v41 & (1 << v15)) == 0)
      {
        goto LABEL_32;
      }

      if (v65 != *(v58 + 9))
      {
        goto LABEL_33;
      }

      v42 = v41 & (-2 << (v15 & 0x3F));
      if (v42)
      {
        v18 = __clz(__rbit64(v42)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v19 << 6;
        v44 = v19 + 1;
        v45 = &v50[v19];
        while (v44 < (v18 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_21D15746C(v15, v65, 0);
            v18 = __clz(__rbit64(v46)) + v43;
            goto LABEL_24;
          }
        }

        result = sub_21D15746C(v15, v65, 0);
LABEL_24:
        v11 = v58;
      }

      ++v16;
      v15 = v18;
      if (v16 == v51)
      {

        return v13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *TTRRemindersListTreeViewModel.uncommittedReminders.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A408);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v24 - v1;
  v3 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;

  v12 = sub_21D276254();

  v13 = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *(v7 + 80);
    v24[1] = v13;
    v16 = v13 + ((v15 + 32) & ~v15);
    v26 = v4;
    v28 = (v4 + 48);
    v17 = MEMORY[0x277D84F90];
    v18 = *(v7 + 72);
    v19 = v3;
    v27 = v3;
    v25 = v18;
    do
    {
      sub_21D0D3954(v16, v11, &qword_27CE5CDA0);
      v20 = v29;
      sub_21D0D3954(v11, v29, &qword_27CE5CDA0);
      sub_21D276CAC(v20, v2);
      sub_21D0CF7E0(v11, &qword_27CE5CDA0);
      if ((*v28)(v2, 1, v19) == 1)
      {
        sub_21D0CF7E0(v2, &qword_27CE5A408);
      }

      else
      {
        sub_21D2A0DC8(v2, v30, type metadata accessor for TTRRemindersListUncommittedReminder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21D211BA8(0, v17[2] + 1, 1, v17);
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          v17 = sub_21D211BA8(v21 > 1, v22 + 1, 1, v17);
        }

        v17[2] = v22 + 1;
        sub_21D2A0DC8(v30, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, type metadata accessor for TTRRemindersListUncommittedReminder);
        v19 = v27;
        v18 = v25;
      }

      v16 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v17;
}

uint64_t sub_21D276CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v66 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v66);
  v69 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_21D104E74(a1, v21, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v63 = v16;
    v64 = v14;
    v61 = v18;
    v62 = v5;
    v65 = v25;
    if (EnumCaseMultiPayload <= 1)
    {
LABEL_11:
      sub_21D0CF7E0(v68, &qword_27CE5CDA0);
      sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_12;
    }

    sub_21D2A0DC8(v21, v69, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v27 = swift_getEnumCaseMultiPayload();
    if ((v27 - 1) >= 2)
    {
      v39 = v67;
      if (v27)
      {
        sub_21D0CF7E0(v68, &qword_27CE5CDA0);
      }

      else
      {
        sub_21D0CF7E0(v68, &qword_27CE5CDA0);
        sub_21D106918(v69, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_13;
    }

    v28 = v15;
    v29 = v65;
    sub_21D2A0DC8(v69, v65, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
    v31 = v68;
    v32 = *(v68 + *(v30 + 52));
    if (v32)
    {
      v33 = *(v32 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);

      v34 = [v33 objectID];
      if (!v34 || (v35 = v34, v36 = *v65, sub_21D0D8CF0(0, &qword_280D17880), v37 = v36, v38 = sub_21DBFB63C(), v37, v29 = v65, v35, (v38 & 1) == 0))
      {
        if (qword_280D0F188 != -1)
        {
          swift_once();
        }

        v43 = sub_21DBF84BC();
        __swift_project_value_buffer(v43, qword_280D0F190);
        v44 = sub_21DBF84AC();
        v45 = sub_21DBFAECC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = v29;
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_21D0C9000, v44, v45, "TTRRemindersListUncommittedReminder: invalid reminderChangeItem", v47, 2u);
          MEMORY[0x223D46520](v47, -1, -1);

          sub_21D0CF7E0(v68, &qword_27CE5CDA0);
          v48 = v46;
        }

        else
        {

          sub_21D0CF7E0(v68, &qword_27CE5CDA0);
          v48 = v29;
        }

        goto LABEL_31;
      }

      v69 = v33;
      v31 = v68;
    }

    else
    {
      v69 = 0;
    }

    v49 = *(v30 + 56);
    sub_21D0D3954(v31 + v49, v8, &qword_27CE5A3A0);
    sub_21D0D523C(v8, v11, &unk_27CE5CD80);
    v50 = v64;
    sub_21D0D523C(v11, v64, &unk_27CE5CD80);
    v51 = (*(v63 + 48))(v50, 1, v28);
    sub_21D0CF7E0(v50, &unk_27CE5CD80);
    if (v51 != 1)
    {
      v58 = v62;
      sub_21D0D3954(v31 + v49, v62, &qword_27CE5A3A0);
      v59 = v61;
      sub_21D104E74(v31, v61, type metadata accessor for TTRRemindersListViewModel.Item);
      v39 = v67;
      TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)(v58, v59, v32, v67);

      sub_21D0CF7E0(v31, &qword_27CE5CDA0);
      sub_21D106918(v65, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v40 = 0;
      goto LABEL_14;
    }

    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v52 = sub_21DBF84BC();
    __swift_project_value_buffer(v52, qword_280D0F190);
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAECC();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v69;
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_21D0C9000, v53, v54, "TTRRemindersListUncommittedReminder: parent should be non-nil", v57, 2u);
      MEMORY[0x223D46520](v57, -1, -1);
    }

    sub_21D0CF7E0(v68, &qword_27CE5CDA0);
    v48 = v65;
LABEL_31:
    sub_21D106918(v48, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v40 = 1;
    v39 = v67;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    goto LABEL_11;
  }

  sub_21D0CF7E0(v68, &qword_27CE5CDA0);
LABEL_12:
  v39 = v67;
  swift_storeEnumTagMultiPayload();
LABEL_13:
  v40 = 1;
LABEL_14:
  v41 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  return (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
}

void *TTRRemindersListTreeViewModel.sortUncommittedRemindersByLocation(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = (&v48 - v13);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58948);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v51 = &v48 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = a1[2];
  if (v20 < 2)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v53 = v8;
    v54 = v4;
    v49 = v11;
    v58 = v5;
    v61 = MEMORY[0x277D84F90];
    sub_21D18ECB0(0, v20, 0);
    v21 = v61;
    v50 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v22 = a1 + v50;
    v23 = (v6 + 48);
    v48 = v6;
    v24 = (v6 + 32);
    v57 = *(v9 + 72);
    do
    {
      v25 = v60;
      sub_21D104E74(v22, v60, type metadata accessor for TTRRemindersListUncommittedReminder);
      v26 = *(v56 + 20);

      v27 = (v25 + v26);
      v28 = v54;
      sub_21D277B50(v27, v54);

      v29 = *v23;
      v30 = v58;
      if ((*v23)(v28, 1, v58) == 1)
      {
        v31 = v53;
        MEMORY[0x223D3E4E0](&unk_282EA65A8);
        if (v29(v28, 1, v30) != 1)
        {
          sub_21D0CF7E0(v28, &unk_27CE58E70);
        }
      }

      else
      {
        v31 = v53;
        (*v24)(v53, v28, v30);
      }

      v32 = *(v59 + 48);
      sub_21D2A0DC8(v60, v19, type metadata accessor for TTRRemindersListUncommittedReminder);
      (*v24)(&v19[v32], v31, v30);
      v61 = v21;
      v34 = v21[2];
      v33 = v21[3];
      if (v34 >= v33 >> 1)
      {
        sub_21D18ECB0(v33 > 1, v34 + 1, 1);
        v21 = v61;
      }

      v21[2] = v34 + 1;
      v35 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v36 = *(v55 + 72);
      sub_21D0D523C(v19, v21 + v35 + v36 * v34, &qword_27CE58948);
      v22 += v57;
      --v20;
    }

    while (v20);
    v61 = v21;
    sub_21DBF8E0C();
    sub_21D27C7A4(&v61);

    v37 = v61;
    v38 = v61[2];
    if (v38)
    {
      v61 = MEMORY[0x277D84F90];
      sub_21D18EC6C(0, v38, 0);
      a1 = v61;
      v60 = v37;
      v39 = v37 + v35;
      v40 = v49;
      v41 = (v48 + 8);
      do
      {
        v42 = v51;
        sub_21D0D3954(v39, v51, &qword_27CE58948);
        v43 = v52;
        sub_21D0D523C(v42, v52, &qword_27CE58948);
        v44 = *(v59 + 48);
        sub_21D2A0DC8(v43, v40, type metadata accessor for TTRRemindersListUncommittedReminder);
        (*v41)(v43 + v44, v58);
        v61 = a1;
        v46 = a1[2];
        v45 = a1[3];
        if (v46 >= v45 >> 1)
        {
          sub_21D18EC6C(v45 > 1, v46 + 1, 1);
          a1 = v61;
        }

        a1[2] = v46 + 1;
        sub_21D2A0DC8(v40, a1 + v50 + v46 * v57, type metadata accessor for TTRRemindersListUncommittedReminder);
        v39 += v36;
        --v38;
      }

      while (v38);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return a1;
}

uint64_t sub_21D277B50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a1;
  v66 = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v65 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v73);
  v72 = &v65 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v80 = &v65 - v24;
  MEMORY[0x28223BE20](v25);
  v78 = &v65 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v65 - v31;
  sub_21D104E74(v81, &v65 - v31, type metadata accessor for TTRRemindersListViewModel.Item);
  v75 = *(v14 + 56);
  v76 = v14 + 56;
  v75(v32, 0, 1, v13);
  v77 = v32;
  sub_21D0D3954(v32, v29, &unk_27CE5CD80);
  v33 = *(v14 + 48);
  v79 = v13;
  v70 = v33;
  v71 = v14 + 48;
  if (v33(v29, 1, v13) == 1)
  {
    v81 = MEMORY[0x277D84F90];
LABEL_3:
    sub_21D0CF7E0(v29, &unk_27CE5CD80);
LABEL_27:
    if (*(v81 + 2))
    {
      v82 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4D8);
      sub_21D0D0F1C(&qword_27CE5A4E0, &qword_27CE5A4D8);
      v62 = v66;
      sub_21DBF5D3C();
      sub_21D0CF7E0(v77, &unk_27CE5CD80);
      v63 = 0;
    }

    else
    {
      sub_21D0CF7E0(v77, &unk_27CE5CD80);

      v63 = 1;
      v62 = v66;
    }

    v64 = sub_21DBF5D5C();
    return (*(*(v64 - 8) + 56))(v62, v63, 1, v64);
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
    v68 = v3;
    v69 = v29;
    v67 = v19;
    while (1)
    {
      sub_21D2A0DC8(v29, v19, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
      v34 = sub_21D2916C8(v9, sub_21D181E00);
      sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v34 && (Strong = swift_weakLoadStrong(), , Strong))
      {
        v36 = *(*Strong + 120);
        swift_beginAccess();
        v37 = Strong + v36;
        v38 = v80;
        sub_21D104E74(v37, v80, type metadata accessor for TTRRemindersListViewModel.Item);

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v38 = v80;
      }

      v75(v38, v39, 1, v79);
      result = sub_21D261568(v38);
      if (result < 0)
      {
        break;
      }

      v41 = result;
      sub_21D0D3954(v38, v22, &unk_27CE5CD80);

      v42 = 0;
      while (1)
      {
        if (v41 == v42)
        {

          sub_21D0CF7E0(v22, &unk_27CE5CD80);
          sub_21D0CF7E0(v80, &unk_27CE5CD80);
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
          v46 = v74;
          (*(*(v45 - 8) + 56))(v74, 1, 1, v45);
          goto LABEL_18;
        }

        sub_21D26181C(v42, v22, v16);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
        v43 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
        sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
        result = sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
        if (v43)
        {
          break;
        }

        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          goto LABEL_31;
        }
      }

      sub_21D0CF7E0(v22, &unk_27CE5CD80);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      v48 = *(v47 + 48);
      v46 = v74;
      sub_21D0D523C(v80, v74, &unk_27CE5CD80);
      *(v46 + v48) = v42;
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
LABEL_18:
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      if ((*(*(v49 - 8) + 48))(v46, 1, v49) == 1)
      {
        sub_21D0CF7E0(v46, &qword_27CE5A3C0);
        sub_21D106918(v19, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_27;
      }

      v50 = *(v46 + *(v49 + 48));
      v51 = v73;
      v52 = *(v73 + 48);
      v53 = v46;
      v54 = v72;
      sub_21D0D523C(v53, v72, &unk_27CE5CD80);
      *(v54 + v52) = v50;
      v55 = *(v54 + *(v51 + 48));
      sub_21D0D523C(v54, v78, &unk_27CE5CD80);
      v56 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_21D211BD0(0, *(v56 + 2) + 1, 1, v56);
      }

      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      if (v58 >= v57 >> 1)
      {
        v81 = sub_21D211BD0((v57 > 1), v58 + 1, 1, v56);
      }

      else
      {
        v81 = v56;
      }

      v59 = v77;
      sub_21D0CF7E0(v77, &unk_27CE5CD80);
      v60 = v81;
      *(v81 + 2) = v58 + 1;
      *&v60[8 * v58 + 32] = v55;
      v61 = v67;
      sub_21D106918(v67, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0D523C(v78, v59, &unk_27CE5CD80);
      v29 = v69;
      v19 = v61;
      sub_21D0D3954(v59, v69, &unk_27CE5CD80);
      if (v70(v29, 1, v79) == 1)
      {
        goto LABEL_3;
      }
    }

LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_21D2784E8(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v90 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v90 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v90 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v93);
  v92 = &v90 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v109 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v90 - v16;
  MEMORY[0x28223BE20](v17);
  v104 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v19 - 8);
  v103 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v90 - v22;
  MEMORY[0x28223BE20](v23);
  v108 = &v90 - v24;
  MEMORY[0x28223BE20](v25);
  v112 = &v90 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v90 - v28;
  MEMORY[0x28223BE20](v30);
  v97 = &v90 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v90 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v90 - v36;
  sub_21D104E74(v113, &v90 - v36, type metadata accessor for TTRRemindersListViewModel.Item);
  v100 = *(v13 + 56);
  v101 = v13 + 56;
  v100(v37, 0, 1, v12);
  v99 = *(*v2 + 104);
  v95 = v37;
  sub_21D0D3954(v37, v34, &unk_27CE5CD80);
  v38 = *(v13 + 48);
  v105 = v12;
  v113 = v38;
  if (v38(v34, 1, v12) == 1)
  {
    v98 = MEMORY[0x277D84F90];
LABEL_3:
    v39 = &unk_27CE5CD80;
    v40 = v34;
LABEL_28:
    sub_21D0CF7E0(v40, v39);
    if (*(v98 + 2))
    {
      v114 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4D8);
      sub_21D0D0F1C(&qword_27CE5A4E0, &qword_27CE5A4D8);
      v81 = v90;
      sub_21DBF5D3C();
      sub_21D0CF7E0(v95, &unk_27CE5CD80);
      v82 = 0;
    }

    else
    {
      sub_21D0CF7E0(v95, &unk_27CE5CD80);

      v82 = 1;
      v81 = v90;
    }

    v83 = sub_21DBF5D5C();
    (*(*(v83 - 8) + 56))(v81, v82, 1, v83);
  }

  else
  {
    v98 = MEMORY[0x277D84F90];
    v107 = v2;
    v41 = v110;
    v42 = v104;
    v96 = v29;
    v91 = v34;
    while (1)
    {
      sub_21D2A0DC8(v34, v42, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D297CFC(v42, v29);
      v111 = sub_21D46F07C(v29);
      if (v111 < 0)
      {
        break;
      }

      sub_21D0D3954(v29, v112, &unk_27CE5CD80);

      v43 = 0;
      v44 = v105;
      while (1)
      {
        if (v111 == v43)
        {

          sub_21D0CF7E0(v112, &unk_27CE5CD80);
          sub_21D0CF7E0(v96, &unk_27CE5CD80);
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
          v65 = v94;
          (*(*(v64 - 8) + 56))(v94, 1, 1, v64);
          goto LABEL_19;
        }

        v45 = v108;
        sub_21D0D3954(v112, v108, &unk_27CE5CD80);
        if (v113(v45, 1, v44) == 1)
        {
          sub_21D0CF7E0(v45, &unk_27CE5CD80);
          if (v43)
          {
            goto LABEL_33;
          }

          v46 = v2[2];
          v48 = *(v46 + 16);
          v47 = *(v46 + 24);
          ObjectType = swift_getObjectType();
          v50 = v2 + v99;
          v51 = v103;
          sub_21D5EF860(v48, v50, v44, ObjectType, v47);
          if (v113(v51, 1, v44) == 1)
          {
            sub_21D0CF7E0(v51, &unk_27CE5CD80);
            if (qword_27CE56BF8 != -1)
            {
              swift_once();
            }

            v88 = sub_21DBF84BC();
            __swift_project_value_buffer(v88, qword_27CE60258);
            v89 = MEMORY[0x277D84F90];
            sub_21D17716C(MEMORY[0x277D84F90]);
            sub_21D17716C(v89);
            v86 = "TTRTreeStorageSubtreeView: missing root item";
            v87 = 44;
            goto LABEL_39;
          }

          sub_21D2A0DC8(v51, v41, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        else
        {
          v52 = v45;
          v53 = v109;
          sub_21D2A0DC8(v52, v109, type metadata accessor for TTRRemindersListViewModel.Item);
          v54 = v2[2];
          v55 = v102;
          sub_21D104E74(v53, v102, type metadata accessor for TTRRemindersListViewModel.Item);
          v100(v55, 0, 1, v44);
          v57 = *(v54 + 16);
          v56 = *(v54 + 24);
          v106 = swift_getObjectType();
          v114 = v57;
          v58 = *(*(v56 + 8) + 8);
          v59 = v8;
          v60 = v5;
          v61 = *(v58 + 32);
          swift_unknownObjectRetain();
          v61(v43, v55, v106, v58);
          v41 = v110;
          v5 = v60;
          v8 = v59;
          v44 = v105;
          sub_21D0CF7E0(v55, &unk_27CE5CD80);
          v42 = v104;
          sub_21D106918(v109, type metadata accessor for TTRRemindersListViewModel.Item);
          swift_unknownObjectRelease();
        }

        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v5);
        v62 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, v5);
        sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v41, type metadata accessor for TTRRemindersListViewModel.Item);
        if (v62)
        {
          break;
        }

        v63 = __OFADD__(v43++, 1);
        v2 = v107;
        if (v63)
        {
          __break(1u);
          goto LABEL_32;
        }
      }

      v2 = v107;

      sub_21D0CF7E0(v112, &unk_27CE5CD80);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      v111 = *(v66 + 48);
      v67 = v94;
      sub_21D0D523C(v96, v94, &unk_27CE5CD80);
      *(v67 + v111) = v43;
      v65 = v67;
      (*(*(v66 - 8) + 56))(v67, 0, 1, v66);
LABEL_19:
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      if ((*(*(v68 - 8) + 48))(v65, 1, v68) == 1)
      {
        sub_21D106918(v42, type metadata accessor for TTRRemindersListViewModel.Item);
        v39 = &qword_27CE5A3C0;
        v40 = v65;
        goto LABEL_28;
      }

      v69 = *(v65 + *(v68 + 48));
      v70 = v93;
      v71 = *(v93 + 48);
      v72 = v65;
      v73 = v92;
      sub_21D0D523C(v72, v92, &unk_27CE5CD80);
      *(v73 + v71) = v69;
      v111 = *(v73 + *(v70 + 48));
      sub_21D0D523C(v73, v97, &unk_27CE5CD80);
      v74 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_21D211BD0(0, *(v74 + 2) + 1, 1, v74);
      }

      v76 = *(v74 + 2);
      v75 = *(v74 + 3);
      if (v76 >= v75 >> 1)
      {
        v98 = sub_21D211BD0((v75 > 1), v76 + 1, 1, v74);
      }

      else
      {
        v98 = v74;
      }

      v77 = v95;
      sub_21D0CF7E0(v95, &unk_27CE5CD80);
      v42 = v104;
      sub_21D106918(v104, type metadata accessor for TTRRemindersListViewModel.Item);
      v78 = v97;
      v79 = v98;
      *(v98 + 2) = v76 + 1;
      *&v79[8 * v76 + 32] = v111;
      sub_21D0D523C(v78, v77, &unk_27CE5CD80);
      v34 = v91;
      sub_21D0D3954(v77, v91, &unk_27CE5CD80);
      v80 = v113(v34, 1, v105);
      v29 = v96;
      if (v80 == 1)
      {
        goto LABEL_3;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    if (qword_27CE56BF8 != -1)
    {
      swift_once();
    }

    v84 = sub_21DBF84BC();
    __swift_project_value_buffer(v84, qword_27CE60258);
    v85 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v85);
    v86 = "TTRTreeStorageSubtreeView: invalid index for top level";
    v87 = 54;
LABEL_39:
    sub_21DAEAB00(v86, v87, 2);
    __break(1u);
  }
}