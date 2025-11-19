uint64_t TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v26);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_21D0D3954(a1, v9, &qword_27CE5A3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)];
    sub_21D0D523C(v9, v15, &unk_27CE5CD80);
  }

  else
  {
    sub_21D0D523C(v9, v12, &unk_27CE5CD80);
    sub_21D0D3954(v12, v15, &unk_27CE5CD80);

    v17 = sub_21D261568(v12);

    result = sub_21D0CF7E0(v12, &unk_27CE5CD80);
    v16 = v17 - 1;
    if (__OFSUB__(v17, 1))
    {
      goto LABEL_17;
    }
  }

  v19 = sub_21D261568(v15);

  if ((v19 & 0x8000000000000000) == 0)
  {
    if ((v16 & 0x8000000000000000) == 0 && v16 < v19)
    {

      sub_21D26181C(v16, v15, v6);

      v20 = sub_21D2795BC();

      if (v20 != 2 && (v20 & 1) != 0)
      {
        v21 = v25;
        TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v25);
        sub_21D0CF7E0(v15, &unk_27CE5CD80);
        if (swift_getEnumCaseMultiPayload() <= 2)
        {
          sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
          v22 = v28;
          sub_21D2A0DC8(v6, v28, type metadata accessor for TTRRemindersListViewModel.Item);
          v23 = v22;
          v24 = 0;
          return (*(v4 + 56))(v23, v24, 1, v27);
        }

        sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_13:
        v24 = 1;
        v23 = v28;
        return (*(v4 + 56))(v23, v24, 1, v27);
      }

      sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    sub_21D0CF7E0(v15, &unk_27CE5CD80);
    goto LABEL_13;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21D2795BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  sub_21D108408(v10, sub_21D181E00, type metadata accessor for TTRRemindersListViewModel.Item, type metadata accessor for TTRRemindersListViewModel.Item, v13);
  sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_21D0CF7E0(v13, &unk_27CE5CD80);
  if (v15 == 1)
  {
    return 2;
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
  swift_beginAccess();
  v18 = *(v1 + 32);
  if (*(v18 + 16) && (v19 = sub_21D181E00(v7, v17), (v20 & 1) != 0))
  {
    v21 = v19;
    v22 = *(v18 + 56);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
    v24 = *(v23 - 8);
    sub_21D0D3954(v22 + *(v24 + 72) * v21, v4, &qword_27CE5CDA0);
    (*(v24 + 56))(v4, 0, 1, v23);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
  }

  swift_endAccess();
  sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v16 = (*(*(v26 - 8) + 48))(v4, 1, v26) != 1;
  sub_21D0CF7E0(v4, &qword_27CE583F0);
  return v16;
}

uint64_t sub_21D279998()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A488);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v10);
  sub_21D108408(v10, sub_21D105CF4, type metadata accessor for TTRAccountsListsViewModel.Item, type metadata accessor for TTRAccountsListsViewModel.Item, v13);
  sub_21D106918(v10, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_21D0CF7E0(v13, &qword_27CE5A490);
  if (v15 == 1)
  {
    return 2;
  }

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v7);
  swift_beginAccess();
  v17 = *(v1 + 32);
  if (*(v17 + 16) && (v18 = sub_21D105CF4(v7), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A0);
    v23 = *(v22 - 8);
    sub_21D0D3954(v21 + *(v23 + 72) * v20, v4, &qword_27CE581A0);
    (*(v23 + 56))(v4, 0, 1, v22);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A0);
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  }

  swift_endAccess();
  sub_21D106918(v7, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A0);
  v16 = (*(*(v25 - 8) + 48))(v4, 1, v25) != 1;
  sub_21D0CF7E0(v4, &qword_27CE5A488);
  return v16;
}

uint64_t TTRRemindersListTreeViewModel.sectionForlocationIfLastChild(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_21D0D3954(a1, &v24 - v16, &qword_27CE5A3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)];
    sub_21D0D523C(v17, v14, &unk_27CE5CD80);
    sub_21D0D3954(v14, v11, &unk_27CE5CD80);
    v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    if ((*(*(v19 - 8) + 48))(v11, 1, v19) == 1)
    {
      sub_21D0CF7E0(v14, &unk_27CE5CD80);
      v20 = v11;
LABEL_6:
      sub_21D0CF7E0(v20, &unk_27CE5CD80);
LABEL_7:
      type metadata accessor for TTRRemindersListViewModel.Item(0);
      return (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D0CF7E0(v14, &unk_27CE5CD80);
      sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_7;
    }

    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);

    v22 = sub_21D261568(v14);

    if (v18 != v22)
    {
      v20 = v14;
      goto LABEL_6;
    }

    v23 = v14;
  }

  else
  {
    sub_21D0D523C(v17, v8, &unk_27CE5CD80);
    sub_21D0D3954(v8, v5, &unk_27CE5CD80);
    v19 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
    {
      sub_21D0CF7E0(v8, &unk_27CE5CD80);
      v20 = v5;
      goto LABEL_6;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D0CF7E0(v8, &unk_27CE5CD80);
      sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_7;
    }

    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    v23 = v8;
  }

  return sub_21D0D523C(v23, v25, &unk_27CE5CD80);
}

uint64_t TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_21D104E74(a1, &v9 - v5, type metadata accessor for TTRRemindersListViewModel.Item);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_storeEnumTagMultiPayload();
  TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(at:)(v6, a2);
  return sub_21D0CF7E0(v6, &qword_27CE5A3A0);
}

size_t TTRRemindersListTreeViewModel.transferTemporaryItemsAndAuxiliaryData(to:)(void *a1)
{
  v243 = a1;
  v227 = 0;
  v215 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v215);
  v218 = &v199 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v233 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v240 = &v199 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A410);
  MEMORY[0x28223BE20](v7 - 8);
  v220 = &v199 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v9 - 8);
  v239 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v228 = &v199 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v199 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A8);
  MEMORY[0x28223BE20](v16 - 8);
  v209 = &v199 - v17;
  v230 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v230);
  v206 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v214 = (&v199 - v20);
  MEMORY[0x28223BE20](v21);
  v234 = (&v199 - v22);
  v208 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v23 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v235 = &v199 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v219 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v241 = (&v199 - v29);
  MEMORY[0x28223BE20](v30);
  v226 = &v199 - v31;
  MEMORY[0x28223BE20](v32);
  v207 = &v199 - v33;
  MEMORY[0x28223BE20](v34);
  v210 = &v199 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v199 - v37;
  v225 = type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  MEMORY[0x28223BE20](v225);
  v246 = (&v199 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v238 = *(v40 - 8);
  MEMORY[0x28223BE20](v40 - 8);
  v211 = (&v199 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v223 = &v199 - v43;
  MEMORY[0x28223BE20](v44);
  v237 = &v199 - v45;
  MEMORY[0x28223BE20](v46);
  v236 = (&v199 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = (&v199 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52);
  v242 = (&v199 - v53);
  MEMORY[0x28223BE20](v54);
  v213 = &v199 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v199 - v57;
  v255 = MEMORY[0x277D84FA0];
  v232 = v1;

  p_isa = sub_21D276254();

  v61 = p_isa[2];
  v244 = v25;
  v250 = v61;
  v251 = v49;
  v224 = v26;
  if (!v61)
  {

    v62 = MEMORY[0x277D84F90];
LABEL_98:
    p_isa = v243;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v251;
    v64 = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_99;
  }

  v204 = v15;
  v62 = 0;
  v231 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  *&v249 = p_isa + v231;
  v221 = (v26 + 56);
  v203 = (v26 + 48);
  v202 = (v23 + 56);
  v201 = (v23 + 48);
  *&v60 = 138412290;
  v205 = v60;
  v245 = MEMORY[0x277D84F90];
  v63 = v25;
  v64 = v246;
  v248 = v51;
  v247 = p_isa;
  while (1)
  {
    if (v62 >= p_isa[2])
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v65 = *(v251 + 72);
    sub_21D0D3954(v249 + v65 * v62, v58, &qword_27CE5CDA0);
    sub_21D104E74(v58, v38, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v67 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
    if (EnumCaseMultiPayload > 3)
    {
      if ((EnumCaseMultiPayload - 5) < 4)
      {
        sub_21D106918(v38, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        goto LABEL_30;
      }

      if ((EnumCaseMultiPayload - 9) < 2)
      {
        goto LABEL_14;
      }

LABEL_15:
      v67 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_15;
    }

LABEL_16:
    sub_21D2A0DC8(v38, v64, v67);
    swift_storeEnumTagMultiPayload();
    v68 = swift_getEnumCaseMultiPayload();
    if (v68 <= 2)
    {
      break;
    }

    if ((v68 - 3) >= 2)
    {
      goto LABEL_30;
    }

    v71 = v236;
    sub_21D2A0DC8(v64, v236, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v72 = *v71;
    sub_21D106918(v71, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v73 = v243;
    swift_beginAccess();
    v74 = v73[12];
    if (!*(v74 + 16) || (v75 = sub_21D17E07C(v72), (v76 & 1) == 0))
    {
      swift_endAccess();
LABEL_35:
      sub_21D0D3954(v58, v242, &qword_27CE5CDA0);
      v94 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v245 = sub_21D211CD4(0, v245[2] + 1, 1, v245);
      }

      v96 = v245[2];
      v95 = v245[3];
      if (v96 >= v95 >> 1)
      {
        v245 = sub_21D211CD4(v95 > 1, v96 + 1, 1, v245);
      }

      sub_21D0CF7E0(v58, &qword_27CE5CDA0);
      v97 = v245;
      v245[2] = v96 + 1;
      sub_21D0D523C(v242, v97 + v231 + v96 * v65, &qword_27CE5CDA0);
      v51 = v248;
      v63 = v94;
      v64 = v246;
      p_isa = v247;
      goto LABEL_6;
    }

    v77 = *(*(v74 + 56) + 8 * v75);
    swift_endAccess();
    if (!*(v77 + 16))
    {
      goto LABEL_35;
    }

    v78 = v63;
    v79 = v72;
    sub_21D29B0D0(&v253, v79);

    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v80 = sub_21DBF84BC();
    __swift_project_value_buffer(v80, qword_280D0F190);
    v81 = v79;
    v82 = sub_21DBF84AC();
    v83 = sub_21DBFAEAC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = v205;
      *(v84 + 4) = v81;
      *v85 = v81;
      v86 = v81;
      _os_log_impl(&dword_21D0C9000, v82, v83, "Removing uncommittedReminder at model update {objectID: %@}", v84, 0xCu);
      sub_21D0CF7E0(v85, &unk_27CE60070);
      MEMORY[0x223D46520](v85, -1, -1);
      MEMORY[0x223D46520](v84, -1, -1);
    }

    else
    {
    }

    sub_21D0CF7E0(v58, &qword_27CE5CDA0);
    v51 = v248;
    v63 = v78;
    v64 = v246;
LABEL_5:
    p_isa = v247;
LABEL_6:
    if (++v62 == v250)
    {

      v62 = v245;
      goto LABEL_98;
    }
  }

  if (v68 != 1)
  {
    sub_21D106918(v64, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
LABEL_30:
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v87 = sub_21DBF84BC();
    __swift_project_value_buffer(v87, qword_280D0F190);
    v88 = sub_21DBF84AC();
    v89 = sub_21DBFAECC();
    v90 = os_log_type_enabled(v88, v89);
    v51 = v248;
    if (v90)
    {
      v91 = v63;
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_21D0C9000, v88, v89, "temporary item should be uncommittedReminder, placeholderReminder or section(uncommittedEditingSection)", v92, 2u);
      v93 = v92;
      v63 = v91;
      v64 = v246;
      MEMORY[0x223D46520](v93, -1, -1);
    }

LABEL_4:
    sub_21D0CF7E0(v58, &qword_27CE5CDA0);
    goto LABEL_5;
  }

  v69 = v235;
  sub_21D2A0DC8(v64, v235, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D104E74(v69, v234, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v70 = swift_getEnumCaseMultiPayload();
  if (v70 <= 4)
  {
    if (v70 > 1)
    {
LABEL_48:
      sub_21D106918(v234, type metadata accessor for TTRRemindersListViewModel.SectionID);
      goto LABEL_49;
    }

    if (!v70)
    {
      goto LABEL_49;
    }

LABEL_47:

    goto LABEL_49;
  }

  if (v70 <= 6)
  {
    goto LABEL_48;
  }

  if (v70 == 7)
  {
LABEL_49:
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v107 = sub_21DBF84BC();
    __swift_project_value_buffer(v107, qword_280D0F190);
    v108 = sub_21DBF84AC();
    v109 = sub_21DBFAECC();
    v110 = os_log_type_enabled(v108, v109);
    v51 = v248;
    if (v110)
    {
      v111 = v63;
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_21D0C9000, v108, v109, "temporary section item can only be uncommittedEditingSection", v112, 2u);
      v113 = v112;
      v63 = v111;
      v64 = v246;
      MEMORY[0x223D46520](v113, -1, -1);
    }

    sub_21D106918(v235, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    goto LABEL_4;
  }

  if (v70 == 8)
  {
    goto LABEL_47;
  }

  v98 = *v234;
  *v214 = *v234;
  swift_storeEnumTagMultiPayload();
  v99 = v63;
  v100 = v228;
  v216 = *v221;
  v216(v228, 1, 1, v99);
  v200 = v98;

  v101 = sub_21D263398(v100);

  sub_21D0CF7E0(v100, &unk_27CE5CD80);
  if (!v101[2])
  {

    v101 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v229 = v101[2];
  v217 = v38;
  v102 = (*(v224 + 80) + 32) & ~*(v224 + 80);
  v103 = v101 + v102;
  v104 = v210;
  sub_21D104E74(v101 + v102, v210, type metadata accessor for TTRRemindersListViewModel.Item);
  v105 = swift_getEnumCaseMultiPayload();
  v106 = sub_21D106918(v104, type metadata accessor for TTRRemindersListViewModel.Item);
  if (v105)
  {
    v38 = v217;
LABEL_57:
    v64 = v246;
LABEL_74:
    v229 = &v199;
    MEMORY[0x28223BE20](v106);
    v122 = v214;
    *(&v199 - 2) = v214;
    v123 = v204;
    v124 = v227;
    sub_21D22D788(sub_21D2F8BAC, v101, v204);

    sub_21D106918(v122, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v125 = v244;
    v126 = (*v203)(v123, 1, v244);
    v227 = v124;
    if (v126 == 1)
    {
      sub_21D0CF7E0(v123, &unk_27CE5CD80);
      v63 = v125;
    }

    else
    {
      v127 = v123;
      v128 = v207;
      sub_21D104E74(v127, v207, type metadata accessor for TTRRemindersListViewModel.Item);
      v129 = swift_getEnumCaseMultiPayload();
      v130 = v209;
      if (v129 == 1)
      {
        sub_21D2A0DC8(v128, v209, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v131 = 0;
      }

      else
      {
        sub_21D106918(v128, type metadata accessor for TTRRemindersListViewModel.Item);
        v131 = 1;
      }

      v132 = v208;
      (*v202)(v130, v131, 1, v208);
      sub_21D106918(v204, type metadata accessor for TTRRemindersListViewModel.Item);
      if ((*v201)(v130, 1, v132) != 1)
      {
        v133 = v206;
        sub_21D104E74(v130, v206, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D106918(v130, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v253);
        sub_21D106918(v133, type metadata accessor for TTRRemindersListViewModel.SectionID);
        if (v254 > 1u)
        {
          v63 = v244;
          if (v254 != 2)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v63 = v244;
          if (!v254)
          {

            if (qword_280D0F188 != -1)
            {
              swift_once();
            }

            v134 = sub_21DBF84BC();
            __swift_project_value_buffer(v134, qword_280D0F190);
            v135 = v200;
            v136 = sub_21DBF84AC();
            v137 = sub_21DBFAEAC();

            if (os_log_type_enabled(v136, v137))
            {
              v138 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              v229 = v136;
              v140 = v139;
              *v138 = v205;
              *(v138 + 4) = v135;
              *v139 = v135;
              v141 = v135;
              v142 = v137;
              v143 = v229;
              _os_log_impl(&dword_21D0C9000, v229, v142, "Removing uncommittedEditingSection at model update {objectID: %@}", v138, 0xCu);
              sub_21D0CF7E0(v140, &unk_27CE60070);
              MEMORY[0x223D46520](v140, -1, -1);
              MEMORY[0x223D46520](v138, -1, -1);
            }

            else
            {
            }

            sub_21D106918(v235, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            sub_21D0CF7E0(v58, &qword_27CE5CDA0);
            v51 = v248;
            v63 = v244;
            goto LABEL_5;
          }
        }

        goto LABEL_89;
      }

      sub_21D0CF7E0(v130, &qword_27CE5A3A8);
      v63 = v244;
    }

LABEL_89:
    sub_21D0D3954(v58, v213, &qword_27CE5CDA0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_21D211CD4(0, v245[2] + 1, 1, v245);
    }

    v145 = v245[2];
    v144 = v245[3];
    v229 = (v145 + 1);
    if (v145 >= v144 >> 1)
    {
      v245 = sub_21D211CD4(v144 > 1, v145 + 1, 1, v245);
    }

    sub_21D106918(v235, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D0CF7E0(v58, &qword_27CE5CDA0);
    v146 = v245;
    v245[2] = v229;
    sub_21D0D523C(v213, v146 + v231 + v145 * v65, &qword_27CE5CDA0);
    v51 = v248;
    goto LABEL_5;
  }

  v212 = v102;
  v199 = v101;
  v222 = *(v224 + 72);
  v101 = MEMORY[0x277D84F90];
  while (1)
  {
    v114 = v226;
    sub_21D104E74(v103, v226, type metadata accessor for TTRRemindersListViewModel.Item);
    v115 = v228;
    sub_21D104E74(v114, v228, type metadata accessor for TTRRemindersListViewModel.Item);
    v216(v115, 0, 1, v244);

    p_isa = sub_21D263398(v115);

    sub_21D0CF7E0(v115, &unk_27CE5CD80);
    sub_21D106918(v114, type metadata accessor for TTRRemindersListViewModel.Item);
    v63 = p_isa[2];
    v116 = v101[2];
    v64 = (v116 + v63);
    if (__OFADD__(v116, v63))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v64 > v101[3] >> 1)
    {
      if (v116 <= v64)
      {
        v118 = v116 + v63;
      }

      else
      {
        v118 = v116;
      }

      result = sub_21D211A80(result, v118, 1, v101);
      v101 = result;
    }

    v38 = v217;
    v64 = v246;
    if (p_isa[2])
    {
      if ((v101[3] >> 1) - v101[2] < v63)
      {
        __break(1u);
LABEL_153:
        __break(1u);
        return result;
      }

      swift_arrayInitWithCopy();

      if (v63)
      {
        v119 = v101[2];
        v120 = __OFADD__(v119, v63);
        v121 = v119 + v63;
        if (v120)
        {
          goto LABEL_153;
        }

        v101[2] = v121;
      }
    }

    else
    {

      if (v63)
      {
        goto LABEL_150;
      }
    }

    v103 += v222;
    v229 = (v229 - 1);
    if (!v229)
    {

      goto LABEL_74;
    }
  }

LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  v62 = sub_21D256C54(v62);
LABEL_99:
  v148 = *(v62 + 16);
  v149 = (v62 + ((*(v63 + 80) + 32) & ~*(v63 + 80)));
  v253 = v149;
  v254 = v148;
  sub_21D29801C(&v253, &qword_27CE5CDA0, &unk_21DC09B90, sub_21D299118, sub_21D2983D0);
  v245 = v62;
  v150 = *(v62 + 16);
  v151 = v220;
  if (v150)
  {
    v152 = p_isa;
    v153 = *(v63 + 72);
    do
    {
      sub_21D0D3954(v149, v64, &qword_27CE5CDA0);
      p_isa = v152[10];

      sub_21D272718(v64, v151);

      sub_21D0CF7E0(v151, &qword_27CE5A410);
      sub_21D0CF7E0(v64, &qword_27CE5CDA0);
      v149 += v153;
      --v150;
    }

    while (v150);
  }

  v154 = v232;
  swift_beginAccess();
  v155 = *(v154 + 88);
  v62 = v155 + 56;
  v156 = 1 << *(v155 + 32);
  v157 = -1;
  if (v156 < 64)
  {
    v157 = ~(-1 << v156);
  }

  v158 = v157 & *(v155 + 56);
  v159 = (v156 + 63) >> 6;
  v250 = (v224 + 56);
  v251 = v155;
  v64 = (v224 + 48);
  sub_21DBF8E0C();
  v160 = 0;
  *&v161 = 138412290;
  v249 = v161;
  v162 = v233;
  v63 = v241;
  v163 = v223;
  while (2)
  {
    if (v158)
    {
LABEL_111:
      v166 = v237;
      sub_21D104E74(*(v251 + 48) + *(v238 + 72) * (__clz(__rbit64(v158)) | (v160 << 6)), v237, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D2A0DC8(v166, v163, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v167 = v163;
      sub_21D104E74(v163, v63, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      swift_storeEnumTagMultiPayload();
      v168 = v243[10];

      v169 = v240;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v240);
      swift_beginAccess();
      v171 = *(v168 + 24);
      if (*(v171 + 16) && (v172 = sub_21D181E00(v169, v170), (v173 & 1) != 0))
      {
        v174 = *(*(v171 + 56) + 8 * v172);
        swift_endAccess();

        sub_21D106918(v169, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v175 = *(*v174 + 120);
        swift_beginAccess();
        v176 = v174 + v175;
        v162 = v233;
        v177 = v239;
        sub_21D104E74(v176, v239, type metadata accessor for TTRRemindersListViewModel.Item);

        v178 = 0;
      }

      else
      {
        swift_endAccess();
        sub_21D106918(v169, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v178 = 1;
        v177 = v239;
      }

      v158 &= v158 - 1;
      v179 = v244;
      (*v250)(v177, v178, 1, v244);

      if ((*v64)(v177, 1, v179) == 1)
      {
        p_isa = v241;
        sub_21D106918(v241, type metadata accessor for TTRRemindersListViewModel.Item);
        v163 = v167;
        sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v164 = v177;
        v63 = p_isa;
        sub_21D0CF7E0(v164, &unk_27CE5CD80);
        continue;
      }

      sub_21D0CF7E0(v177, &unk_27CE5CD80);
      v180 = *(v232 + 80);

      v63 = v241;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v162);
      swift_beginAccess();
      p_isa = *(v180 + 24);
      if (!p_isa[2] || (v182 = sub_21D181E00(v162, v181), (v183 & 1) == 0))
      {
        swift_endAccess();
        sub_21D106918(v162, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v63, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v163 = v167;

        continue;
      }

      p_isa = *(p_isa[7] + 8 * v182);
      swift_endAccess();

      sub_21D106918(v162, type metadata accessor for TTRRemindersListViewModel.ItemID);

      v184 = *(*p_isa + 128);
      swift_beginAccess();
      v185 = *(p_isa + v184);

      if (!v185)
      {
        sub_21D106918(v63, type metadata accessor for TTRRemindersListViewModel.Item);
        v163 = v167;
        sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v162 = v233;
        continue;
      }

      sub_21D104E74(v185 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v219, type metadata accessor for TTRRemindersListViewModel.Item);
      v186 = swift_getEnumCaseMultiPayload();
      if (v186 <= 3)
      {
        v162 = v233;
        if (v186 >= 2)
        {
          if (v186 == 2)
          {
            LODWORD(v248) = 0;
LABEL_140:
            v197 = v218;
            sub_21D2A0DC8(v219, v218, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            swift_storeEnumTagMultiPayload();
            v198 = swift_getEnumCaseMultiPayload();
            if ((v198 - 1) < 2)
            {
              sub_21D106918(v197, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
              v162 = v233;
LABEL_142:
              p_isa = v243;
              TTRRemindersListTreeViewModel.setEditingSessionState(_:for:)(v185);
LABEL_143:

              sub_21D106918(v63, type metadata accessor for TTRRemindersListViewModel.Item);
              v163 = v167;
              sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ReminderID);
              continue;
            }

            v162 = v233;
            if (!v198)
            {
              sub_21D106918(v218, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
            }

            goto LABEL_128;
          }

          v187 = 1;
LABEL_139:
          LODWORD(v248) = v187;
          goto LABEL_140;
        }
      }

      else
      {
        v162 = v233;
        if ((v186 - 5) >= 4)
        {
          if ((v186 - 9) >= 2)
          {
            v187 = 2;
            goto LABEL_139;
          }

LABEL_127:
          swift_storeEnumTagMultiPayload();
LABEL_128:
          p_isa = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState;
          swift_beginAccess();
          if (*(p_isa + v185) != 1)
          {
            if (!*(p_isa + v185))
            {
              goto LABEL_142;
            }

            goto LABEL_143;
          }

          sub_21D29B0D0(&v252, *v167);

          if (qword_280D0F188 != -1)
          {
            swift_once();
          }

          v188 = sub_21DBF84BC();
          __swift_project_value_buffer(v188, qword_280D0F190);
          sub_21D104E74(v167, v211, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v189 = sub_21DBF84AC();
          v190 = sub_21DBFAEAC();
          v248 = v189;
          if (os_log_type_enabled(v189, v190))
          {
            v191 = swift_slowAlloc();
            v247 = v191;
            v242 = swift_slowAlloc();
            *v191 = v249;
            v192 = v211;
            v193 = *v211;
            v246 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
            sub_21D106918(v192, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v194 = v247;
            *(v247 + 4) = v193;
            v195 = v242;
            *v242 = v193;
            v162 = v233;
            v196 = v190;
            p_isa = &v248->isa;
            _os_log_impl(&dword_21D0C9000, v248, v196, "Removing disposable editingSessionState at model update {objectID: %@}", v194, 0xCu);
            sub_21D0CF7E0(v195, &unk_27CE60070);
            MEMORY[0x223D46520](v195, -1, -1);
            MEMORY[0x223D46520](v247, -1, -1);

            sub_21D106918(v63, type metadata accessor for TTRRemindersListViewModel.Item);
            v163 = v223;
            sub_21D106918(v223, v246);
          }

          else
          {

            p_isa = type metadata accessor for TTRRemindersListViewModel.ReminderID;
            sub_21D106918(v211, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v63, type metadata accessor for TTRRemindersListViewModel.Item);
            v163 = v223;
            sub_21D106918(v223, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          }

          continue;
        }
      }

      sub_21D106918(v219, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_127;
    }

    break;
  }

  while (1)
  {
    v165 = v160 + 1;
    if (__OFADD__(v160, 1))
    {
      __break(1u);
      goto LABEL_148;
    }

    if (v165 >= v159)
    {
      break;
    }

    v158 = *(v62 + 8 * v165);
    ++v160;
    if (v158)
    {
      v160 = v165;
      goto LABEL_111;
    }
  }

  return v255;
}

BOOL sub_21D27C5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  sub_21D0D3954(a1 + *(v10 + 56), v9, &qword_27CE5A3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)];
  }

  else
  {
    v11 = 0;
  }

  sub_21D0CF7E0(v9, &unk_27CE5CD80);
  sub_21D0D3954(a2 + *(v10 + 56), v6, &qword_27CE5A3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)];
  }

  else
  {
    v12 = 0;
  }

  sub_21D0CF7E0(v6, &unk_27CE5CD80);
  return v11 < v12;
}

uint64_t sub_21D27C7A4(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58948) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21D82E440(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21D29801C(v6, &qword_27CE58948, &unk_21DC09BA8, sub_21D2987B0, sub_21D298170);
  *a1 = v3;
  return result;
}

void TTRRemindersListTreeViewModel.setEditingSessionState(_:for:)(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v48 - v13);
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
  v51 = a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v48 - v19);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
  v22 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v20, v17);
  sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D106918(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if ((v22 & 1) == 0)
  {
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v33 = sub_21DBF84BC();
    __swift_project_value_buffer(v33, qword_280D0F190);
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAECC();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_14;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "TTRRemindersListTreeViewModel: Invalid editingSessionState.item";
    goto LABEL_13;
  }

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v43 = sub_21DBF84BC();
      __swift_project_value_buffer(v43, qword_280D0F190);
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAECC();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_14;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "TTRRemindersListTreeViewModel: Invalid item type";
      goto LABEL_13;
    }

    v34 = v50;
    sub_21D2A0DC8(v4, v50, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D0D8CF0(0, &qword_280D17680);
    v35 = [v21 objectID];
    v36 = sub_21DBFB63C();

    if (v36)
    {
      v27 = v51;
      if ((TTRRemindersListEditingSessionState.isForNewReminder.getter() & 1) == 0)
      {
        sub_21D104E74(v34, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        swift_beginAccess();
        v45 = v49;
        sub_21D29BEAC(v49, v7);
        swift_endAccess();
        sub_21D106918(v45, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        sub_21D106918(v34, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        goto LABEL_38;
      }

      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v37 = sub_21DBF84BC();
      __swift_project_value_buffer(v37, qword_280D0F190);
      v38 = sub_21DBF84AC();
      v39 = sub_21DBFAECC();
      if (!os_log_type_enabled(v38, v39))
      {
LABEL_36:

        sub_21D106918(v34, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        return;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "TTRRemindersListTreeViewModel: isForNewReminder is set to true for editing an existing reminder, expect false";
    }

    else
    {
      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v44 = sub_21DBF84BC();
      __swift_project_value_buffer(v44, qword_280D0F190);
      v38 = sub_21DBF84AC();
      v39 = sub_21DBFAECC();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_36;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "TTRRemindersListTreeViewModel: Invalid reminderID";
    }

    _os_log_impl(&dword_21D0C9000, v38, v39, v41, v40, 2u);
    MEMORY[0x223D46520](v40, -1, -1);
    goto LABEL_36;
  }

  sub_21D2A0DC8(v4, v14, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D0D8CF0(0, &qword_280D17680);
  v24 = [v21 objectID];
  v25 = *v14;
  sub_21D106918(v14, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v26 = sub_21DBFB63C();

  if ((v26 & 1) == 0)
  {
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_280D0F190);
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAECC();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_14;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "TTRRemindersListTreeViewModel: Invalid objectID";
    goto LABEL_13;
  }

  v27 = v51;
  if ((TTRRemindersListEditingSessionState.isForNewReminder.getter() & 1) == 0)
  {
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_280D0F190);
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAECC();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_14;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "TTRRemindersListTreeViewModel: isForNewReminder is set to false for editing a new reminder, expect true";
LABEL_13:
    _os_log_impl(&dword_21D0C9000, v29, v30, v32, v31, 2u);
    MEMORY[0x223D46520](v31, -1, -1);
LABEL_14:

    return;
  }

LABEL_38:

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v20);
  v46 = sub_21D2916C8(v20, sub_21D181E00);

  sub_21D106918(v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v46)
  {
    v47 = *(*v46 + 128);
    swift_beginAccess();
    *(v46 + v47) = v27;
  }
}

void sub_21D27D10C(uint64_t a1, char a2, void *a3)
{
  v463 = a3;
  v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08);
  v408 = *(v432 - 8);
  MEMORY[0x28223BE20](v432);
  v449 = &v379 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v417 = &v379 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D18);
  v402 = *(v8 - 8);
  v403 = v8;
  MEMORY[0x28223BE20](v8);
  v414 = &v379 - v9;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  MEMORY[0x28223BE20](v441);
  v440 = &v379 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8);
  MEMORY[0x28223BE20](v11 - 8);
  v428 = &v379 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v410 = &v379 - v14;
  MEMORY[0x28223BE20](v15);
  v418 = &v379 - v16;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  v496 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v448 = &v379 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v415 = &v379 - v19;
  MEMORY[0x28223BE20](v20);
  v445 = &v379 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v22 - 8);
  v473 = &v379 - v23;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v469);
  v468 = &v379 - v24;
  v467 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v407 = *(v467 - 8);
  MEMORY[0x28223BE20](v467);
  v447 = &v379 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v453 = &v379 - v27;
  MEMORY[0x28223BE20](v28);
  v406 = &v379 - v29;
  MEMORY[0x28223BE20](v30);
  v409 = &v379 - v31;
  MEMORY[0x28223BE20](v32);
  v422 = &v379 - v33;
  MEMORY[0x28223BE20](v34);
  v427 = &v379 - v35;
  MEMORY[0x28223BE20](v36);
  v484 = &v379 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v38 - 8);
  v413 = &v379 - v39;
  v454 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v454);
  v430 = &v379 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v411 = &v379 - v42;
  MEMORY[0x28223BE20](v43);
  v446 = &v379 - v44;
  v466 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v491 = *(v466 - 8);
  MEMORY[0x28223BE20](v466);
  v442 = &v379 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v472 = &v379 - v47;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v479);
  v49 = &v379 - v48;
  v434 = sub_21DBF5B4C();
  v486 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v421 = &v379 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150);
  MEMORY[0x28223BE20](v420);
  v435 = &v379 - v51;
  v500 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v460 = *(v500 - 8);
  MEMORY[0x28223BE20](v500);
  v401 = &v379 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v404 = &v379 - v54;
  MEMORY[0x28223BE20](v55);
  v489 = &v379 - v56;
  MEMORY[0x28223BE20](v57);
  v488 = (&v379 - v58);
  MEMORY[0x28223BE20](v59);
  v492 = &v379 - v60;
  MEMORY[0x28223BE20](v61);
  v487 = &v379 - v62;
  MEMORY[0x28223BE20](v63);
  v499 = &v379 - v64;
  MEMORY[0x28223BE20](v65);
  v495 = &v379 - v66;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A418);
  v485 = *(v490 - 8);
  MEMORY[0x28223BE20](v490);
  v470 = (&v379 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A420);
  MEMORY[0x28223BE20](v68 - 8);
  v444 = &v379 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v431 = (&v379 - v71);
  MEMORY[0x28223BE20](v72);
  v481 = &v379 - v73;
  MEMORY[0x28223BE20](v74);
  v482 = (&v379 - v75);
  v419 = sub_21DBF5B9C();
  v474 = *(v419 - 8);
  MEMORY[0x28223BE20](v419);
  v438 = &v379 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v77 - 8);
  v426 = &v379 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v480 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v498 = (&v379 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v81);
  v400 = &v379 - v82;
  MEMORY[0x28223BE20](v83);
  v398 = &v379 - v84;
  MEMORY[0x28223BE20](v85);
  v399 = &v379 - v86;
  MEMORY[0x28223BE20](v87);
  v397 = &v379 - v88;
  MEMORY[0x28223BE20](v89);
  v429 = &v379 - v90;
  MEMORY[0x28223BE20](v91);
  v455 = &v379 - v92;
  MEMORY[0x28223BE20](v93);
  v412 = &v379 - v94;
  MEMORY[0x28223BE20](v95);
  v443 = &v379 - v96;
  MEMORY[0x28223BE20](v97);
  v424 = &v379 - v98;
  MEMORY[0x28223BE20](v99);
  v436 = &v379 - v100;
  MEMORY[0x28223BE20](v101);
  v456 = &v379 - v102;
  MEMORY[0x28223BE20](v103);
  v105 = &v379 - v104;
  MEMORY[0x28223BE20](v106);
  v477 = &v379 - v107;
  MEMORY[0x28223BE20](v108);
  v110 = &v379 - v109;
  MEMORY[0x28223BE20](v111);
  v113 = &v379 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v114 - 8);
  v405 = &v379 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v416 = &v379 - v117;
  MEMORY[0x28223BE20](v118);
  v120 = &v379 - v119;
  v502[0] = a1;
  v501 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
  sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v121 = sub_21DBFA42C();
  v425 = 0;
  v503 = v121;
  v122 = v480;
  v123 = *(v480 + 56);
  v493 = v480 + 56;
  v457 = v123;
  v123(v120, 1, 1, v79);

  v124 = sub_21D263398(v120);
  v125 = v105;

  v450 = v120;
  sub_21D0CF7E0(v120, &unk_27CE5CD80);
  v126 = *(v124 + 16);
  v494 = v110;
  v483 = v79;
  v478 = v125;
  if (v126)
  {
    v127 = v122;
    v128 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v437 = v124;
    v129 = v124 + v128;
    sub_21D104E74(v129, v113, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v113, type metadata accessor for TTRRemindersListViewModel.Item);
    v132 = v482;
    if (EnumCaseMultiPayload)
    {
      v133 = v437;
    }

    else
    {
      v465 = v49;
      v502[0] = MEMORY[0x277D84F90];
      v497 = *(v127 + 72);
      v134 = v483;
      v135 = v450;
      v136 = v457;
      v137 = v498;
      do
      {
        sub_21D104E74(v129, v137, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v498, v135, type metadata accessor for TTRRemindersListViewModel.Item);
        v136(v135, 0, 1, v134);

        v138 = sub_21D263398(v135);
        v137 = v498;

        sub_21D0CF7E0(v135, &unk_27CE5CD80);
        sub_21D106918(v137, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D5624CC(v138);
        v129 += v497;
        --v126;
      }

      while (v126);

      v133 = v502[0];
      v132 = v482;
      v49 = v465;
    }
  }

  else
  {

    v133 = MEMORY[0x277D84F90];
    v132 = v482;
  }

  v139 = v490;
  v140 = v481;
  if (!*(v503 + 16))
  {
    v461 = MEMORY[0x277D84F90];
LABEL_243:

    sub_21D1E41E8(v461);
    return;
  }

  v141 = v133[2];
  if (!v141)
  {
    v423 = 0;
    v461 = MEMORY[0x277D84F90];
    v433 = MEMORY[0x277D84F90];
    goto LABEL_243;
  }

  v423 = 0;
  v394 = 0;
  v476 = (v485 + 56);
  v475 = (v485 + 48);
  v452 = 0x800000021DC43E30;
  v451 = 0x800000021DC43E00;
  v471 = 0x800000021DC43DE0;
  v142 = (v491 + 48);
  v396 = (v496 + 48);
  v388 = (v480 + 48);
  v389 = (v474 + 8);
  v390 = (v486 + 8);
  v491 = (*(v480 + 80) + 32) & ~*(v480 + 80);
  *&v131 = 136315138;
  v395 = v131;
  v433 = MEMORY[0x277D84F90];
  v461 = MEMORY[0x277D84F90];
  v462 = v142;
  while (1)
  {
LABEL_11:
    sub_21D104E74(v133 + v491, v494, type metadata accessor for TTRRemindersListViewModel.Item);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v141 - 1) > v133[3] >> 1)
    {
      v133 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v141, 1, v133);
    }

    v144 = v133 + v491;
    sub_21D106918(v133 + v491, type metadata accessor for TTRRemindersListViewModel.Item);
    v145 = v133[2] - 1;
    v485 = *(v480 + 72);
    if (v485 > 0 || v144 >= &v144[v485 + v145 * v485])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v485)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    --v133[2];
    v146 = v477;
    sub_21D104E74(v494, v477, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_21D106918(v146, type metadata accessor for TTRRemindersListViewModel.Item);
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v147 = sub_21DBF84BC();
    __swift_project_value_buffer(v147, qword_280D0F190);
    v148 = sub_21DBF84AC();
    v149 = sub_21DBFAECC();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_21D0C9000, v148, v149, "Unexpected item type", v150, 2u);
      MEMORY[0x223D46520](v150, -1, -1);
    }

    sub_21D106918(v494, type metadata accessor for TTRRemindersListViewModel.Item);
    if (*(v503 + 16))
    {
      v141 = v133[2];
      v139 = v490;
      if (v141)
      {
        continue;
      }
    }

    goto LABEL_243;
  }

  sub_21D2A0DC8(v146, v426, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21DBF5B8C();
  v151 = v450;
  sub_21D104E74(v494, v450, type metadata accessor for TTRRemindersListViewModel.Item);
  v457(v151, 0, 1, v483);

  v152 = sub_21D263398(v151);

  sub_21D0CF7E0(v151, &unk_27CE5CD80);
  v153 = 0;
  v154 = *(v152 + 16);
  v459 = v152;
  v458 = v152 + v491;
  v437 = v133;
  v155 = v478;
  v474 = v154;
  v465 = v49;
  if (!v154)
  {
    goto LABEL_31;
  }

LABEL_28:
  if ((v153 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_248;
  }

  if (v153 >= *(v459 + 16))
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  v156 = v155;
  v157 = v153 + 1;
  v158 = v458 + v153 * v485;
  v159 = *(v139 + 48);
  v160 = v470;
  *v470 = v153;
  sub_21D104E74(v158, v160 + v159, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D523C(v160, v140, &qword_27CE5A418);
  v161 = 0;
  v486 = v157;
  v155 = v156;
  while (1)
  {
    v162 = *v476;
    (*v476)(v140, v161, 1, v139);
    sub_21D0D523C(v140, v132, &qword_27CE5A420);
    v163 = *v475;
    if ((*v475)(v132, 1, v139) == 1)
    {
      break;
    }

    v164 = *v132;
    sub_21D2A0DC8(v132 + *(v139 + 48), v155, type metadata accessor for TTRRemindersListViewModel.Item);
    v165 = v495;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v495);
    v166 = v503;
    if (!*(v503 + 16) || (ObjectType = v164, sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(), v167 = sub_21DBFC82C(), v168 = -1 << *(v166 + 32), v169 = v167 & ~v168, v498 = (v166 + 56), v170 = v479, ((*(v166 + 56 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0))
    {
LABEL_103:
      sub_21D106918(v165, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v155 = v478;
      sub_21D106918(v478, type metadata accessor for TTRRemindersListViewModel.Item);
      v139 = v490;
      v140 = v481;
      v132 = v482;
      goto LABEL_104;
    }

    v496 = ~v168;
    v497 = *(v460 + 72);
    while (1)
    {
      v173 = v499;
      sub_21D104E74(*(v166 + 48) + v497 * v169, v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v174 = *(v170 + 48);
      sub_21D104E74(v173, v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D104E74(v165, &v49[v174], type metadata accessor for TTRRemindersListViewModel.ItemID);
      v175 = swift_getEnumCaseMultiPayload();
      if (v175 <= 1)
      {
        break;
      }

      if (v175 != 2)
      {
        v192 = v489;
        sub_21D104E74(v49, v489, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v177 = type metadata accessor for TTRRemindersListViewModel.ItemID;
          v178 = v499;
LABEL_66:
          sub_21D106918(v178, v177);
LABEL_67:
          sub_21D0CF7E0(v49, &qword_27CE58AD0);
          goto LABEL_38;
        }

        v193 = *v192;
        if (v193 > 2)
        {
          if (v193 == 3)
          {
            v196 = 0xD00000000000001FLL;
            v197 = v451;
          }

          else if (v193 == 4)
          {
            v197 = 0xE700000000000000;
            v196 = 0x6D657449706974;
          }

          else
          {
            v196 = 0xD00000000000001DLL;
            v197 = v452;
          }
        }

        else
        {
          v194 = 0xD000000000000012;
          if (v193 == 1)
          {
            v194 = 0x7367617468736168;
          }

          v195 = v471;
          if (v193 == 1)
          {
            v195 = 0xEC0000006D657449;
          }

          if (*v192)
          {
            v196 = v194;
          }

          else
          {
            v196 = 0x6574656C706D6F63;
          }

          if (*v192)
          {
            v197 = v195;
          }

          else
          {
            v197 = 0xED00006D65744964;
          }
        }

        v201 = v49[v174];
        if (v201 > 2)
        {
          if (v201 == 3)
          {
            v203 = v451;
            if (v196 != 0xD00000000000001FLL)
            {
              goto LABEL_99;
            }
          }

          else if (v201 == 4)
          {
            v203 = 0xE700000000000000;
            if (v196 != 0x6D657449706974)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v203 = v452;
            if (v196 != 0xD00000000000001DLL)
            {
              goto LABEL_99;
            }
          }
        }

        else if (v49[v174])
        {
          if (v201 == 1)
          {
            v202 = 0x7367617468736168;
          }

          else
          {
            v202 = 0xD000000000000012;
          }

          if (v201 == 1)
          {
            v203 = 0xEC0000006D657449;
          }

          else
          {
            v203 = v471;
          }

          if (v196 != v202)
          {
LABEL_99:
            v204 = sub_21DBFC64C();

            sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v204)
            {
              goto LABEL_109;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v203 = 0xED00006D65744964;
          if (v196 != 0x6574656C706D6F63)
          {
            goto LABEL_99;
          }
        }

        if (v197 == v203)
        {

          v208 = type metadata accessor for TTRRemindersListViewModel.ItemID;
          v209 = v499;
          goto LABEL_108;
        }

        goto LABEL_99;
      }

      v179 = v488;
      sub_21D104E74(v49, v488, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v180 = *v179;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);

        goto LABEL_67;
      }

      v171 = *&v49[v174];
      sub_21D0D8CF0(0, &qword_280D17680);
      v172 = sub_21DBFB63C();

      sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v172)
      {
        goto LABEL_109;
      }

LABEL_37:
      sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v165 = v495;
LABEL_38:
      v169 = (v169 + 1) & v496;
      if (((*(v498 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0)
      {
        goto LABEL_103;
      }
    }

    if (!v175)
    {
      v176 = v487;
      sub_21D104E74(v49, v487, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v177 = type metadata accessor for TTRRemindersListViewModel.SectionID;
        v178 = v176;
        goto LABEL_66;
      }

      v198 = &v49[v174];
      v199 = v472;
      sub_21D2A0DC8(v198, v472, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v200 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v176, v199);
      sub_21D106918(v199, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v176, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (v200)
      {
        goto LABEL_109;
      }

      goto LABEL_37;
    }

    v181 = v492;
    sub_21D104E74(v49, v492, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v177 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v178 = v181;
      goto LABEL_66;
    }

    v182 = v484;
    sub_21D2A0DC8(&v49[v174], v484, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D0D8CF0(0, &qword_280D17680);
    v183 = v181;
    if ((sub_21DBFB63C() & 1) == 0)
    {
      sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v210 = v182;
      goto LABEL_102;
    }

    v184 = *(v467 + 20);
    v185 = *(v469 + 48);
    v186 = v183 + v184;
    v187 = v468;
    sub_21D0D3954(v186, v468, &unk_27CE5CD70);
    v188 = v466;
    sub_21D0D3954(v182 + v184, v187 + v185, &unk_27CE5CD70);
    v189 = *v462;
    if ((*v462)(v187, 1, v188) != 1)
    {
      sub_21D0D3954(v187, v473, &unk_27CE5CD70);
      if (v189(v187 + v185, 1, v188) == 1)
      {
        sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D106918(v473, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v191 = v187;
        v170 = v479;
        v49 = v465;
        goto LABEL_76;
      }

      v205 = v442;
      sub_21D2A0DC8(v187 + v185, v442, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v206 = v473;
      v207 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v473, v205);
      sub_21D106918(v205, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v206, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v187, &unk_27CE5CD70);
      v210 = v484;
      v170 = v479;
      v183 = v492;
      v49 = v465;
      if (v207)
      {
        goto LABEL_107;
      }

LABEL_102:
      sub_21D106918(v210, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v183, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_38;
    }

    sub_21D106918(v499, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v190 = v189(v187 + v185, 1, v188) == 1;
    v191 = v187;
    v170 = v479;
    v49 = v465;
    if (!v190)
    {
LABEL_76:
      sub_21D0CF7E0(v191, &qword_27CE58388);
      v210 = v484;
      v183 = v492;
      goto LABEL_102;
    }

    sub_21D0CF7E0(v187, &unk_27CE5CD70);
    v210 = v484;
    v183 = v492;
LABEL_107:
    sub_21D106918(v210, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v209 = v183;
    v208 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_108:
    sub_21D106918(v209, v208);
LABEL_109:
    sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v211 = v478;
    sub_21D104E74(v478, v456, type metadata accessor for TTRRemindersListViewModel.Item);
    v212 = swift_getEnumCaseMultiPayload();
    if (v212 <= 3)
    {
      v140 = v481;
      v132 = v482;
      if (v212 >= 2)
      {
        goto LABEL_122;
      }

LABEL_114:
      sub_21D106918(v456, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_115:
      swift_storeEnumTagMultiPayload();
      goto LABEL_116;
    }

    v140 = v481;
    v132 = v482;
    if ((v212 - 5) < 4)
    {
      goto LABEL_114;
    }

    if ((v212 - 9) < 2)
    {
      goto LABEL_115;
    }

LABEL_122:
    v225 = v446;
    sub_21D2A0DC8(v456, v446, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v226 = swift_getEnumCaseMultiPayload();
    if (v226 < 2)
    {
      sub_21D106918(v225, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      sub_21DBF5AFC();
      v227 = v413;
      v228 = v495;
      sub_21D1AAD70(v495, v413);
      sub_21D0CF7E0(v227, &qword_27CE5FB90);
      sub_21D106918(v228, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v155 = v211;
      sub_21D106918(v211, type metadata accessor for TTRRemindersListViewModel.Item);
      v139 = v490;
      goto LABEL_104;
    }

    if (v226 == 2)
    {
      sub_21D106918(v446, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

LABEL_116:
    v213 = v436;
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v214 = sub_21DBF84BC();
    __swift_project_value_buffer(v214, qword_280D0F190);
    v215 = v478;
    sub_21D104E74(v478, v213, type metadata accessor for TTRRemindersListViewModel.Item);
    v216 = sub_21DBF84AC();
    v217 = sub_21DBFAECC();
    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v502[0] = v219;
      *v218 = v395;
      v220 = sub_21D25D250();
      v222 = v221;
      sub_21D106918(v213, type metadata accessor for TTRRemindersListViewModel.Item);
      v223 = sub_21D0CDFB4(v220, v222, v502);

      *(v218 + 4) = v223;
      _os_log_impl(&dword_21D0C9000, v216, v217, "TTRRemindersListTreeViewModel: item does not support indent {item: %s}", v218, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v219);
      v224 = v219;
      v132 = v482;
      MEMORY[0x223D46520](v224, -1, -1);
      MEMORY[0x223D46520](v218, -1, -1);
    }

    else
    {

      sub_21D106918(v213, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    sub_21D106918(v495, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106918(v215, type metadata accessor for TTRRemindersListViewModel.Item);
    v139 = v490;
    v140 = v481;
    v155 = v215;
LABEL_104:
    v154 = v474;
    v153 = v486;
    if (v486 != v474)
    {
      goto LABEL_28;
    }

LABEL_31:
    v161 = 1;
    v486 = v154;
  }

  sub_21DBF5B0C();
  v229 = v421;
  sub_21DBF5B6C();
  v230 = v435;
  sub_21DBF5B3C();
  (*v390)(v229, v434);
  v383 = *(v420 + 36);
  v231 = sub_21D2F89FC(&qword_280D1B838, MEMORY[0x277CC9A18]);
  sub_21DBFACAC();
  if (*(v230 + v383) == v502[0])
  {
    goto LABEL_127;
  }

  v459 = v231;
LABEL_131:
  v232 = sub_21DBFAD3C();
  v234 = *v233;
  v381 = v233[1];
  v232(v502, 0);
  sub_21DBFACBC();
  v458 = v234;
  if (__OFSUB__(v234, 1))
  {
    goto LABEL_251;
  }

  v498 = type metadata accessor for TTRRemindersListViewModel.Item;
  v235 = v450;
  sub_21D104E74(v494, v450, type metadata accessor for TTRRemindersListViewModel.Item);
  v457(v235, 0, 1, v483);

  v236 = v424;
  sub_21D26181C(v234 - 1, v235, v424);

  sub_21D0CF7E0(v235, &unk_27CE5CD80);
  sub_21D104E74(v236, v235, v498);
  v457(v235, 0, 1, v483);

  v498 = sub_21D261568(v235);

  sub_21D0CF7E0(v235, &unk_27CE5CD80);
  v237 = v425;
  sub_21D285AF8(v427);
  v425 = v237;
  if (v237)
  {
    sub_21D106918(v236, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v435, &qword_27CE5A150);
    (*v389)(v438, v419);
    sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D106918(v494, type metadata accessor for TTRRemindersListViewModel.Item);

    v49 = v425;
    goto LABEL_239;
  }

  v238 = v463[4];
  v486 = v463[3];
  v474 = v238;
  ObjectType = swift_getObjectType();
  sub_21D104E74(v236, v235, type metadata accessor for TTRRemindersListViewModel.Item);
  v239 = v483;
  v240 = v457;
  v457(v235, 0, 1, v483);
  v241 = v440;
  v240(v440, 1, 1, v239);
  sub_21D0F02F4(v235, v241, &unk_27CE5CD80);
  *(v241 + *(v441 + 36)) = v498;
  v242 = v418;
  v392 = *(v474 + 32);
  v393 = v474 + 32;
  v392(v241, ObjectType);
  sub_21D0CF7E0(v241, &qword_27CE58900);
  v391 = *v396;
  if (v391(v242, 1, v439) == 1)
  {

    sub_21D0CF7E0(v242, &qword_27CE5A3E8);
    sub_21D2A0F60();
    v49 = swift_allocError();
    *v367 = 0;
    swift_willThrow();
    sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v365 = v424;
LABEL_237:
    sub_21D106918(v365, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v435, &qword_27CE5A150);
    (*v389)(v438, v419);
    sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v368 = v494;
    goto LABEL_238;
  }

  sub_21D0D523C(v242, v445, &qword_27CE59D38);
  v243 = v458;
  v244 = v381;
  if (v458 == v381)
  {
    v498 = MEMORY[0x277D84F90];
    goto LABEL_136;
  }

  if (v381 < v458)
  {
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    swift_endAccess();
    v502[0] = 0;
    v502[1] = 0xE000000000000000;
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    sub_21DBFC31C();
    __break(1u);
    return;
  }

  v423 = v394 + v381 - v458;
  v498 = MEMORY[0x277D84F90];
  v252 = v450;
  while (1)
  {
    if (v243 == v244)
    {
      goto LABEL_252;
    }

    v253 = v243;
    v497 = type metadata accessor for TTRRemindersListViewModel.Item;
    sub_21D104E74(v494, v252, type metadata accessor for TTRRemindersListViewModel.Item);
    v457(v252, 0, 1, v483);

    v254 = v443;
    v458 = v253;
    sub_21D26181C(v253, v252, v443);

    sub_21D0CF7E0(v252, &unk_27CE5CD80);
    v255 = v412;
    sub_21D104E74(v254, v412, v497);
    v256 = swift_getEnumCaseMultiPayload();
    if (v256 > 3)
    {
      v257 = v411;
      if (v256 != 4)
      {
        if ((v256 - 5) < 4)
        {
LABEL_232:
          sub_21D106918(v255, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        swift_storeEnumTagMultiPayload();
LABEL_234:
        sub_21D2A0F60();
        v49 = swift_allocError();
        *v366 = 1;
        swift_willThrow();
        sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v445, &qword_27CE59D38);
        v363 = v427;
        goto LABEL_227;
      }
    }

    else
    {
      v257 = v411;
      if (v256 != 2 && v256 != 3)
      {
        goto LABEL_232;
      }
    }

    sub_21D2A0DC8(v255, v257, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v258 = swift_getEnumCaseMultiPayload();
    if (v258 >= 2)
    {
      if (v258 == 2)
      {
        sub_21D106918(v257, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_234;
    }

    v259 = v409;
    sub_21D2A0DC8(v257, v409, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D2A0DC8(v259, v422, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v260 = v450;
    sub_21D104E74(v494, v450, type metadata accessor for TTRRemindersListViewModel.Item);
    v261 = v483;
    v262 = v457;
    v457(v260, 0, 1, v483);
    v263 = v440;
    v262(v440, 1, 1, v261);
    v264 = v410;
    sub_21D0F02F4(v260, v263, &unk_27CE5CD80);
    *(v263 + *(v441 + 36)) = v458;
    (v392)(v263, ObjectType, v474);
    sub_21D0CF7E0(v263, &qword_27CE58900);
    if (v391(v264, 1, v439) == 1)
    {

      sub_21D0CF7E0(v264, &qword_27CE5A3E8);
      sub_21D2A0F60();
      v49 = swift_allocError();
      *v378 = 0;
      swift_willThrow();
      sub_21D106918(v422, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v445, &qword_27CE59D38);
      sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v435, &qword_27CE5A150);
      (*v389)(v438, v419);
      sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v368 = v494;
LABEL_238:
      sub_21D106918(v368, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_239;
    }

    v265 = v264;
    v266 = v415;
    sub_21D0D523C(v265, v415, &qword_27CE59D38);
    v267 = *(v432 + 48);
    v268 = *(v432 + 64);
    v269 = v417;
    sub_21D104E74(v443, v417, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v266, v269 + v267, &qword_27CE59D38);
    sub_21D0D3954(v445, v269 + v268, &qword_27CE59D38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v461 = sub_21D211B38(0, v461[2] + 1, 1, v461);
    }

    v270 = v406;
    v272 = v461[2];
    v271 = v461[3];
    v273 = v498;
    if (v272 >= v271 >> 1)
    {
      v461 = sub_21D211B38(v271 > 1, v272 + 1, 1, v461);
    }

    v274 = v461;
    v461[2] = v272 + 1;
    v387 = (*(v408 + 80) + 32) & ~*(v408 + 80);
    v386 = *(v408 + 72);
    sub_21D0D523C(v417, v274 + v387 + v386 * v272, &qword_27CE59D08);
    sub_21D104E74(v422, v270, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v273 = sub_21D211D1C(0, v273[2] + 1, 1, v273);
    }

    v276 = v273[2];
    v275 = v273[3];
    if (v276 >= v275 >> 1)
    {
      v273 = sub_21D211D1C(v275 > 1, v276 + 1, 1, v273);
    }

    v273[2] = v276 + 1;
    v277 = (*(v407 + 80) + 32) & ~*(v407 + 80);
    v498 = v273;
    v385 = v277;
    v384 = *(v407 + 72);
    sub_21D2A0DC8(v270, v273 + v277 + v384 * v276, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if (__OFADD__(v394++, 1))
    {
      __break(1u);
      goto LABEL_255;
    }

    v382 = v463[10];
    v279 = v416;
    sub_21D104E74(v443, v416, type metadata accessor for TTRRemindersListViewModel.Item);
    v280 = v483;
    v457(v279, 0, 1, v483);
    v281 = v279;
    v282 = v405;
    sub_21D0D3954(v281, v405, &unk_27CE5CD80);
    LODWORD(v280) = (*v388)(v282, 1, v280);
    v283 = v382;

    if (v280 != 1)
    {
      v295 = v282;
      v296 = v401;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v401);
      sub_21D106918(v295, type metadata accessor for TTRRemindersListViewModel.Item);
      v297 = v296;
      v298 = v404;
      sub_21D2A0DC8(v297, v404, type metadata accessor for TTRRemindersListViewModel.ItemID);
      swift_beginAccess();
      v300 = *(v283 + 24);
      if (!*(v300 + 16))
      {
        goto LABEL_258;
      }

      v301 = sub_21D181E00(v298, v299);
      if ((v302 & 1) == 0)
      {
        goto LABEL_258;
      }

      v303 = *(*(v300 + 56) + 8 * v301);
      swift_endAccess();
      v304 = *(*v303 + 136);
      swift_beginAccess();
      v496 = *(v303 + v304);
      if (v496 >> 62)
      {
        v305 = sub_21DBFBD7C();
      }

      else
      {
        v305 = *((v496 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v285 = v444;
      if (v305)
      {
        v502[0] = MEMORY[0x277D84F90];
        v306 = v496;
        sub_21DBF8E0C();
        sub_21D18EBA4(0, v305 & ~(v305 >> 63), 0);
        v497 = v305;
        if (v305 < 0)
        {
          goto LABEL_257;
        }

        v287 = v502[0];
        v307 = v399;
        if ((v306 & 0xC000000000000001) != 0)
        {
          v308 = v306;
          v309 = 0;
          do
          {
            v310 = MEMORY[0x223D44740](v309, v308);
            v311 = *(*v310 + 120);
            swift_beginAccess();
            sub_21D104E74(v310 + v311, v307, type metadata accessor for TTRRemindersListViewModel.Item);
            swift_unknownObjectRelease();
            v502[0] = v287;
            v313 = *(v287 + 16);
            v312 = *(v287 + 24);
            if (v313 >= v312 >> 1)
            {
              sub_21D18EBA4(v312 > 1, v313 + 1, 1);
              v287 = v502[0];
            }

            v309 = (v309 + 1);
            *(v287 + 16) = v313 + 1;
            sub_21D2A0DC8(v307, v287 + v491 + v313 * v485, type metadata accessor for TTRRemindersListViewModel.Item);
            v308 = v496;
          }

          while (v497 != v309);
        }

        else
        {
          v320 = 32;
          v321 = v397;
          do
          {
            v322 = *(v496 + v320);
            v323 = *(*v322 + 120);
            swift_beginAccess();
            sub_21D104E74(v322 + v323, v321, type metadata accessor for TTRRemindersListViewModel.Item);
            v502[0] = v287;
            v325 = *(v287 + 16);
            v324 = *(v287 + 24);
            if (v325 >= v324 >> 1)
            {
              sub_21D18EBA4(v324 > 1, v325 + 1, 1);
              v321 = v397;
              v287 = v502[0];
            }

            *(v287 + 16) = v325 + 1;
            sub_21D2A0DC8(v321, v287 + v491 + v325 * v485, type metadata accessor for TTRRemindersListViewModel.Item);
            v320 += 8;
            --v497;
          }

          while (v497);
        }

        sub_21D106918(v404, type metadata accessor for TTRRemindersListViewModel.ItemID);
        goto LABEL_197;
      }

      sub_21D106918(v404, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_186:
      sub_21D0CF7E0(v416, &unk_27CE5CD80);
      v287 = MEMORY[0x277D84F90];
      goto LABEL_198;
    }

    sub_21D0CF7E0(v282, &unk_27CE5CD80);
    swift_beginAccess();
    v496 = *(v283 + 16);
    if (v496 >> 62)
    {
      v284 = sub_21DBFBD7C();
    }

    else
    {
      v284 = *((v496 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v285 = v444;
    if (!v284)
    {

      goto LABEL_186;
    }

    v502[0] = MEMORY[0x277D84F90];
    v286 = v496;
    sub_21DBF8E0C();
    sub_21D18EBA4(0, v284 & ~(v284 >> 63), 0);
    v497 = v284;
    if (v284 < 0)
    {
      goto LABEL_256;
    }

    v287 = v502[0];
    v288 = v400;
    if ((v286 & 0xC000000000000001) != 0)
    {
      v289 = v286;
      v290 = 0;
      do
      {
        v291 = MEMORY[0x223D44740](v290, v289);
        v292 = *(*v291 + 120);
        swift_beginAccess();
        sub_21D104E74(v291 + v292, v288, type metadata accessor for TTRRemindersListViewModel.Item);
        swift_unknownObjectRelease();
        v502[0] = v287;
        v294 = *(v287 + 16);
        v293 = *(v287 + 24);
        if (v294 >= v293 >> 1)
        {
          sub_21D18EBA4(v293 > 1, v294 + 1, 1);
          v287 = v502[0];
        }

        v290 = (v290 + 1);
        *(v287 + 16) = v294 + 1;
        sub_21D2A0DC8(v288, v287 + v491 + v294 * v485, type metadata accessor for TTRRemindersListViewModel.Item);
        v289 = v496;
      }

      while (v497 != v290);
    }

    else
    {
      v314 = 32;
      v315 = v398;
      do
      {
        v316 = *(v496 + v314);
        v317 = *(*v316 + 120);
        swift_beginAccess();
        sub_21D104E74(v316 + v317, v315, type metadata accessor for TTRRemindersListViewModel.Item);
        v502[0] = v287;
        v319 = *(v287 + 16);
        v318 = *(v287 + 24);
        if (v319 >= v318 >> 1)
        {
          sub_21D18EBA4(v318 > 1, v319 + 1, 1);
          v315 = v398;
          v287 = v502[0];
        }

        *(v287 + 16) = v319 + 1;
        sub_21D2A0DC8(v315, v287 + v491 + v319 * v485, type metadata accessor for TTRRemindersListViewModel.Item);
        v314 += 8;
        --v497;
      }

      while (v497);
    }

LABEL_197:
    sub_21D0CF7E0(v416, &unk_27CE5CD80);
    v285 = v444;
    v132 = v482;
LABEL_198:
    v326 = 0;
    ++v458;
    v327 = *(v287 + 16);
    v382 = v287;
    v380 = v287 + v491;
    v328 = v485;
    v496 = v327;
    if (v327)
    {
LABEL_199:
      if ((v326 & 0x8000000000000000) == 0)
      {
        if (v326 < *(v382 + 16))
        {
          v329 = (v326 + 1);
          v330 = v380 + v326 * v328;
          v331 = v490;
          v332 = *(v490 + 48);
          v333 = v470;
          *v470 = v326;
          sub_21D104E74(v330, v333 + v332, type metadata accessor for TTRRemindersListViewModel.Item);
          v334 = v333;
          v335 = v444;
          sub_21D0D523C(v334, v444, &qword_27CE5A418);
          v336 = 0;
          v497 = v329;
          v285 = v335;
          v132 = v482;
          goto LABEL_203;
        }

LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        swift_once();
        goto LABEL_240;
      }

LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

LABEL_202:
    v336 = 1;
    v497 = v327;
    v331 = v490;
LABEL_203:
    v162(v285, v336, 1, v331);
    v337 = v285;
    v338 = v431;
    sub_21D0D523C(v337, v431, &qword_27CE5A420);
    if (v163(v338, 1, v331) != 1)
    {
      break;
    }

    sub_21D0CF7E0(v415, &qword_27CE59D38);
    sub_21D106918(v422, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
    v243 = v458;
    v244 = v381;
    v252 = v450;
    if (v458 == v381)
    {
      v394 = v423;
LABEL_136:
      v245 = *(v403 + 48);
      v246 = v414;
      sub_21D104E74(v427, v414, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      *(v246 + v245) = v498;
      v247 = v433;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v247 = sub_21D211CF8(0, v247[2] + 1, 1, v247);
      }

      v249 = v247[2];
      v248 = v247[3];
      v433 = v247;
      if (v249 >= v248 >> 1)
      {
        v433 = sub_21D211CF8(v248 > 1, v249 + 1, 1, v433);
      }

      sub_21D0CF7E0(v445, &qword_27CE59D38);
      sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.Item);
      v250 = v433;
      v433[2] = v249 + 1;
      sub_21D0D523C(v414, v250 + ((*(v402 + 80) + 32) & ~*(v402 + 80)) + *(v402 + 72) * v249, &qword_27CE59D18);
      v251 = v435;
      sub_21DBFACAC();
      if (*(v251 + v383) == v502[0])
      {
LABEL_127:
        sub_21D0CF7E0(v435, &qword_27CE5A150);
        (*v389)(v438, v419);
        sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        sub_21D106918(v494, type metadata accessor for TTRRemindersListViewModel.Item);
        if (!*(v503 + 16))
        {
          goto LABEL_243;
        }

        v133 = v437;
        v141 = v437[2];
        v139 = v490;
        v140 = v481;
        if (!v141)
        {
          goto LABEL_243;
        }

        goto LABEL_11;
      }

      goto LABEL_131;
    }
  }

  v339 = *v338;
  v340 = v338 + *(v331 + 48);
  v341 = v455;
  sub_21D2A0DC8(v340, v455, type metadata accessor for TTRRemindersListViewModel.Item);
  v342 = v429;
  sub_21D104E74(v341, v429, type metadata accessor for TTRRemindersListViewModel.Item);
  v343 = swift_getEnumCaseMultiPayload();
  if (v343 <= 3)
  {
    if (v343 != 2 && v343 != 3)
    {
      goto LABEL_224;
    }

LABEL_209:
    v344 = v430;
    sub_21D2A0DC8(v342, v430, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v345 = swift_getEnumCaseMultiPayload();
    if (v345 >= 2)
    {
      if (v345 == 2)
      {
        sub_21D106918(v430, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_226;
    }

    sub_21D2A0DC8(v344, v453, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v346 = v450;
    sub_21D104E74(v443, v450, type metadata accessor for TTRRemindersListViewModel.Item);
    v347 = v483;
    v348 = v339;
    v349 = v457;
    v457(v346, 0, 1, v483);
    v350 = v440;
    v349(v440, 1, 1, v347);
    sub_21D0F02F4(v346, v350, &unk_27CE5CD80);
    *(v350 + *(v441 + 36)) = v348;
    v351 = v428;
    (v392)(v350, ObjectType, v474);
    sub_21D0CF7E0(v350, &qword_27CE58900);
    if (v391(v351, 1, v439) == 1)
    {

      sub_21D0CF7E0(v351, &qword_27CE5A3E8);
      sub_21D2A0F60();
      v49 = swift_allocError();
      *v364 = 0;
      swift_willThrow();
      sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v455, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v415, &qword_27CE59D38);
      sub_21D106918(v422, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v445, &qword_27CE59D38);
      sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v365 = v424;
      goto LABEL_237;
    }

    v352 = v448;
    sub_21D0D523C(v351, v448, &qword_27CE59D38);
    v353 = *(v432 + 48);
    v354 = *(v432 + 64);
    v355 = v449;
    sub_21D104E74(v455, v449, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v352, v355 + v353, &qword_27CE59D38);
    sub_21D0D3954(v445, v355 + v354, &qword_27CE59D38);
    v357 = v461[2];
    v356 = v461[3];
    if (v357 >= v356 >> 1)
    {
      v461 = sub_21D211B38(v356 > 1, v357 + 1, 1, v461);
    }

    v358 = v461;
    v461[2] = v357 + 1;
    sub_21D0D523C(v449, v358 + v387 + v357 * v386, &qword_27CE59D08);
    sub_21D104E74(v453, v447, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v360 = v498[2];
    v359 = v498[3];
    if (v360 >= v359 >> 1)
    {
      v498 = sub_21D211D1C(v359 > 1, v360 + 1, 1, v498);
    }

    sub_21D0CF7E0(v448, &qword_27CE59D38);
    sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v455, type metadata accessor for TTRRemindersListViewModel.Item);
    v361 = v498;
    v498[2] = v360 + 1;
    sub_21D2A0DC8(v447, v361 + v385 + v360 * v384, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v285 = v444;
    v132 = v482;
    v328 = v485;
    v327 = v496;
    v326 = v497;
    if (v497 != v496)
    {
      goto LABEL_199;
    }

    goto LABEL_202;
  }

  if (v343 == 4)
  {
    goto LABEL_209;
  }

  if ((v343 - 5) < 4)
  {
LABEL_224:
    sub_21D106918(v342, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  swift_storeEnumTagMultiPayload();
LABEL_226:
  sub_21D2A0F60();
  v49 = swift_allocError();
  *v362 = 1;
  swift_willThrow();

  sub_21D106918(v455, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v415, &qword_27CE59D38);
  sub_21D106918(v422, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v443, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v445, &qword_27CE59D38);
  v363 = v427;
LABEL_227:
  sub_21D106918(v363, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v435, &qword_27CE5A150);
  (*v389)(v438, v419);
  sub_21D106918(v426, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D106918(v494, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_239:
  if (qword_280D0F188 != -1)
  {
    goto LABEL_253;
  }

LABEL_240:
  v369 = sub_21DBF84BC();
  __swift_project_value_buffer(v369, qword_280D0F190);
  v370 = v49;
  v371 = sub_21DBF84AC();
  v372 = sub_21DBFAEBC();

  if (os_log_type_enabled(v371, v372))
  {
    v373 = swift_slowAlloc();
    v374 = swift_slowAlloc();
    v502[0] = v374;
    *v373 = v395;
    swift_getErrorValue();
    v375 = sub_21DBFC74C();
    v377 = sub_21D0CDFB4(v375, v376, v502);

    *(v373 + 4) = v377;
    _os_log_impl(&dword_21D0C9000, v371, v372, "Cannot compute move steps for indenting items {error: %s}", v373, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v374);
    MEMORY[0x223D46520](v374, -1, -1);
    MEMORY[0x223D46520](v373, -1, -1);
  }

  else
  {
  }
}

void TTRRemindersListTreeViewModel.moveSteps(forIndentingReminders:canIndentUncommittedReminder:supportsIndentOutdentInSection:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v481 = a4;
  v480 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D18);
  v407 = *(v6 - 8);
  v408 = v6;
  MEMORY[0x28223BE20](v6);
  v418 = &v385 - v7;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08);
  v411 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v452 = &v385 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v422 = &v385 - v10;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  MEMORY[0x28223BE20](v441);
  v440 = &v385 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8);
  MEMORY[0x28223BE20](v12 - 8);
  v431 = &v385 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v413 = &v385 - v15;
  MEMORY[0x28223BE20](v16);
  v423 = &v385 - v17;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  v503 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v451 = &v385 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v419 = &v385 - v20;
  MEMORY[0x28223BE20](v21);
  v449 = &v385 - v22;
  v432 = sub_21DBF5B4C();
  v502 = *(v432 - 8);
  MEMORY[0x28223BE20](v432);
  v426 = &v385 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150);
  MEMORY[0x28223BE20](v425);
  v437 = &v385 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v25 - 8);
  v416 = &v385 - v26;
  v458 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v458);
  v436 = &v385 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v415 = &v385 - v29;
  MEMORY[0x28223BE20](v30);
  v446 = &v385 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v32 - 8);
  v469 = &v385 - v33;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v473);
  v472 = &v385 - v34;
  v471 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v410 = *(v471 - 8);
  MEMORY[0x28223BE20](v471);
  v450 = &v385 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v457 = &v385 - v37;
  MEMORY[0x28223BE20](v38);
  v421 = &v385 - v39;
  MEMORY[0x28223BE20](v40);
  v412 = &v385 - v41;
  MEMORY[0x28223BE20](v42);
  v427 = &v385 - v43;
  MEMORY[0x28223BE20](v44);
  v430 = &v385 - v45;
  MEMORY[0x28223BE20](v46);
  v484 = &v385 - v47;
  v470 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  ObjectType = *(v470 - 8);
  MEMORY[0x28223BE20](v470);
  v444 = &v385 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v477 = &v385 - v50;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v501);
  v507 = &v385 - v51;
  v52 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v467 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v406 = &v385 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v417 = &v385 - v55;
  MEMORY[0x28223BE20](v56);
  v490 = &v385 - v57;
  MEMORY[0x28223BE20](v58);
  v489 = (&v385 - v59);
  MEMORY[0x28223BE20](v60);
  v488 = &v385 - v61;
  MEMORY[0x28223BE20](v62);
  v487 = &v385 - v63;
  MEMORY[0x28223BE20](v64);
  v492 = &v385 - v65;
  MEMORY[0x28223BE20](v66);
  v505 = &v385 - v67;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A418);
  v498 = *(v493 - 8);
  MEMORY[0x28223BE20](v493);
  v474 = (&v385 - v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A420);
  MEMORY[0x28223BE20](v69 - 8);
  v445 = &v385 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v453 = &v385 - v72;
  MEMORY[0x28223BE20](v73);
  v483 = &v385 - v74;
  MEMORY[0x28223BE20](v75);
  v506 = &v385 - v76;
  v424 = sub_21DBF5B9C();
  v495 = *(v424 - 8);
  MEMORY[0x28223BE20](v424);
  v438 = &v385 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v78 - 8);
  v482 = &v385 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v81 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v433 = &v385 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v459 = &v385 - v84;
  MEMORY[0x28223BE20](v85);
  v404 = &v385 - v86;
  MEMORY[0x28223BE20](v87);
  v402 = &v385 - v88;
  MEMORY[0x28223BE20](v89);
  v403 = &v385 - v90;
  MEMORY[0x28223BE20](v91);
  v405 = &v385 - v92;
  MEMORY[0x28223BE20](v93);
  v414 = &v385 - v94;
  MEMORY[0x28223BE20](v95);
  v448 = &v385 - v96;
  MEMORY[0x28223BE20](v97);
  v428 = &v385 - v98;
  MEMORY[0x28223BE20](v99);
  v454 = &v385 - v100;
  MEMORY[0x28223BE20](v101);
  v460 = &v385 - v102;
  MEMORY[0x28223BE20](v103);
  v486 = &v385 - v104;
  MEMORY[0x28223BE20](v105);
  v491 = &v385 - v106;
  MEMORY[0x28223BE20](v107);
  v468 = &v385 - v108;
  MEMORY[0x28223BE20](v109);
  v111 = &v385 - v110;
  MEMORY[0x28223BE20](v112);
  v114 = &v385 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v115 - 8);
  v409 = &v385 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v420 = &v385 - v118;
  MEMORY[0x28223BE20](v119);
  v121 = &v385 - v120;
  v509[0] = a1;
  v508 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
  sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v497 = v52;
  v122 = v80;
  v123 = sub_21DBFA42C();
  v429 = 0;
  v510 = v123;
  v124 = *(v81 + 56);
  v462 = v81 + 56;
  v465 = v124;
  v124(v121, 1, 1, v80);

  v125 = sub_21D263398(v121);

  v461 = v121;
  sub_21D0CF7E0(v121, &unk_27CE5CD80);
  v126 = v125[2];
  v499 = v122;
  v494 = v81;
  if (v126)
  {
    v127 = v125 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    sub_21D104E74(v127, v114, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v114, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!EnumCaseMultiPayload)
    {
      v400 = v125;
      v509[0] = MEMORY[0x277D84F90];
      v504 = *(v81 + 72);
      v130 = v461;
      v131 = v465;
      do
      {
        sub_21D104E74(v127, v111, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v111, v130, type metadata accessor for TTRRemindersListViewModel.Item);
        v131(v130, 0, 1, v499);

        v132 = sub_21D263398(v130);

        sub_21D0CF7E0(v130, &unk_27CE5CD80);
        sub_21D106918(v111, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D5624CC(v132);
        v127 += v504;
        --v126;
      }

      while (v126);

      v125 = v509[0];
    }
  }

  else
  {

    v125 = MEMORY[0x277D84F90];
  }

  v133 = v482;
  v134 = v468;
  v135 = v505;
  v136 = v483;
  v137 = v506;
  v138 = v486;
  if (!*(v510 + 16))
  {
    v367 = MEMORY[0x277D84F90];
LABEL_250:

    goto LABEL_251;
  }

  v139 = v125[2];
  if (!v139)
  {
    v435 = 0;
    v464 = MEMORY[0x277D84F90];
    v447 = MEMORY[0x277D84F90];
    goto LABEL_228;
  }

  v435 = 0;
  v398 = 0;
  v479 = (v498 + 56);
  v478 = (v498 + 48);
  v442 = 0x800000021DC43E00;
  v443 = 0x800000021DC43E30;
  v475 = 0x800000021DC43DE0;
  v466 = (ObjectType + 48);
  v401 = v503 + 48;
  v395 = (v494 + 48);
  v396 = (v495 + 8);
  v397 = (v502 + 8);
  v498 = (*(v494 + 80) + 32) & ~*(v494 + 80);
  *&v129 = 136315138;
  v399 = v129;
  v447 = MEMORY[0x277D84F90];
  v464 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      sub_21D104E74(v125 + v498, v134, type metadata accessor for TTRRemindersListViewModel.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v139 - 1) > v125[3] >> 1)
      {
        v125 = sub_21D211A80(isUniquelyReferenced_nonNull_native, v139, 1, v125);
      }

      v141 = v125 + v498;
      sub_21D106918(v125 + v498, type metadata accessor for TTRRemindersListViewModel.Item);
      v142 = v125[2] - 1;
      v495 = *(v494 + 72);
      if (v495 > 0 || v141 >= &v141[v495 + v142 * v495])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v495)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --v125[2];
      v143 = v491;
      sub_21D104E74(v134, v491, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_21D106918(v143, type metadata accessor for TTRRemindersListViewModel.Item);
      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v144 = sub_21DBF84BC();
      __swift_project_value_buffer(v144, qword_280D0F190);
      v145 = sub_21DBF84AC();
      v146 = sub_21DBFAECC();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_21D0C9000, v145, v146, "Unexpected item type", v147, 2u);
        v148 = v147;
        v135 = v505;
        MEMORY[0x223D46520](v148, -1, -1);
      }

      v137 = v506;
LABEL_26:
      sub_21D106918(v134, type metadata accessor for TTRRemindersListViewModel.Item);
      if (!*(v510 + 16))
      {
        goto LABEL_249;
      }

      v139 = v125[2];
      if (!v139)
      {
        goto LABEL_228;
      }
    }

    sub_21D2A0DC8(v143, v133, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    if ((v480(v133) & 1) == 0)
    {
      sub_21D106918(v133, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_26;
    }

    sub_21DBF5B8C();
    v149 = v134;
    v150 = v461;
    sub_21D104E74(v149, v461, type metadata accessor for TTRRemindersListViewModel.Item);
    v465(v150, 0, 1, v499);

    v151 = sub_21D263398(v150);

    sub_21D0CF7E0(v150, &unk_27CE5CD80);
    v152 = 0;
    v153 = *(v151 + 16);
    v456 = v151;
    v455 = (v151 + v498);
    v400 = v125;
    v476 = v153;
    while (2)
    {
      v154 = v493;
      if (v152 == v153)
      {
        v155 = 1;
        v485 = v153;
      }

      else
      {
        if ((v152 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
          goto LABEL_261;
        }

        if (v152 >= *(v456 + 16))
        {
          goto LABEL_256;
        }

        v156 = (v152 + 1);
        v157 = v455 + v152 * v495;
        v158 = *(v493 + 48);
        v159 = v474;
        *v474 = v152;
        sub_21D104E74(v157, v159 + v158, type metadata accessor for TTRRemindersListViewModel.Item);
        v160 = v159;
        v137 = v506;
        sub_21D0D523C(v160, v136, &qword_27CE5A418);
        v155 = 0;
        v485 = v156;
        v154 = v493;
      }

      v161 = *v479;
      (*v479)(v136, v155, 1, v154);
      sub_21D0D523C(v136, v137, &qword_27CE5A420);
      v162 = *v478;
      if ((*v478)(v137, 1, v154) != 1)
      {
        v163 = *v137;
        sub_21D2A0DC8(v137 + *(v154 + 48), v138, type metadata accessor for TTRRemindersListViewModel.Item);
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v135);
        v151 = v510;
        if (!*(v510 + 16) || (v463 = v163, sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(), v164 = sub_21DBFC82C(), v165 = (v151 + 56), v504 = v151, v166 = -1 << *(v151 + 32), v151 = v164 & ~v166, v503 = v165, v167 = v492, ((*(v165 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0))
        {
LABEL_30:
          v135 = v505;
          sub_21D106918(v505, type metadata accessor for TTRRemindersListViewModel.ItemID);
          sub_21D106918(v138, type metadata accessor for TTRRemindersListViewModel.Item);
          v133 = v482;
          v136 = v483;
          goto LABEL_31;
        }

        ObjectType = ~v166;
        v502 = *(v467 + 72);
        while (1)
        {
          sub_21D104E74(*(v504 + 48) + v502 * v151, v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v171 = *(v501 + 48);
          v172 = v507;
          sub_21D104E74(v167, v507, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v173 = v172;
          sub_21D104E74(v505, v172 + v171, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v174 = swift_getEnumCaseMultiPayload();
          if (v174 <= 1)
          {
            break;
          }

          if (v174 != 2)
          {
            v193 = v172;
            v194 = v490;
            sub_21D104E74(v193, v490, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              v195 = *v194;
              if (v195 > 2)
              {
                if (v195 == 3)
                {
                  v198 = 0xD00000000000001FLL;
                  v199 = v442;
                }

                else if (v195 == 4)
                {
                  v199 = 0xE700000000000000;
                  v198 = 0x6D657449706974;
                }

                else
                {
                  v198 = 0xD00000000000001DLL;
                  v199 = v443;
                }
              }

              else
              {
                v196 = 0xD000000000000012;
                if (v195 == 1)
                {
                  v196 = 0x7367617468736168;
                }

                v197 = v475;
                if (v195 == 1)
                {
                  v197 = 0xEC0000006D657449;
                }

                if (*v194)
                {
                  v198 = v196;
                }

                else
                {
                  v198 = 0x6574656C706D6F63;
                }

                if (*v194)
                {
                  v199 = v197;
                }

                else
                {
                  v199 = 0xED00006D65744964;
                }
              }

              v206 = *(v507 + v171);
              if (v206 > 2)
              {
                if (v206 == 3)
                {
                  v208 = v442;
                  if (v198 == 0xD00000000000001FLL)
                  {
                    goto LABEL_104;
                  }
                }

                else if (v206 == 4)
                {
                  v208 = 0xE700000000000000;
                  if (v198 == 0x6D657449706974)
                  {
                    goto LABEL_104;
                  }
                }

                else
                {
                  v208 = v443;
                  if (v198 == 0xD00000000000001DLL)
                  {
                    goto LABEL_104;
                  }
                }
              }

              else if (*(v507 + v171))
              {
                if (v206 == 1)
                {
                  v207 = 0x7367617468736168;
                }

                else
                {
                  v207 = 0xD000000000000012;
                }

                if (v206 == 1)
                {
                  v208 = 0xEC0000006D657449;
                }

                else
                {
                  v208 = v475;
                }

                if (v198 != v207)
                {
                  goto LABEL_105;
                }

LABEL_104:
                if (v199 == v208)
                {

                  sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  goto LABEL_112;
                }
              }

              else
              {
                v208 = 0xED00006D65744964;
                if (v198 == 0x6574656C706D6F63)
                {
                  goto LABEL_104;
                }
              }

LABEL_105:
              v209 = sub_21DBFC64C();

              sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
              v181 = v507;
              if (v209)
              {
                goto LABEL_113;
              }

LABEL_106:
              v210 = v181;
LABEL_109:
              sub_21D106918(v210, type metadata accessor for TTRRemindersListViewModel.ItemID);
              goto LABEL_45;
            }

            v169 = type metadata accessor for TTRRemindersListViewModel.ItemID;
            v170 = v167;
LABEL_43:
            sub_21D106918(v170, v169);
            goto LABEL_44;
          }

          v177 = v172;
          v178 = v489;
          sub_21D104E74(v177, v489, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v179 = *v178;
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v180 = *(v173 + v171);
            sub_21D0D8CF0(0, &qword_280D17680);
            v181 = v173;
            v182 = sub_21DBFB63C();

            sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v182)
            {
              goto LABEL_113;
            }

            goto LABEL_106;
          }

          sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_44:
          sub_21D0CF7E0(v173, &qword_27CE58AD0);
LABEL_45:
          v137 = v506;
          v151 = (v151 + 1) & ObjectType;
          if (((*(v503 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        if (v174)
        {
          v183 = v172;
          v176 = v488;
          sub_21D104E74(v183, v488, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v184 = v173 + v171;
            v185 = v484;
            sub_21D2A0DC8(v184, v484, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D0D8CF0(0, &qword_280D17680);
            if (sub_21DBFB63C())
            {
              v186 = v185;
              v187 = *(v471 + 20);
              v188 = *(v473 + 48);
              v189 = v472;
              sub_21D0D3954(v176 + v187, v472, &unk_27CE5CD70);
              sub_21D0D3954(v186 + v187, v189 + v188, &unk_27CE5CD70);
              v190 = *v466;
              v191 = v470;
              if ((*v466)(v189, 1, v470) == 1)
              {
                sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v226 = v190(v189 + v188, 1, v191) == 1;
                v192 = v189;
                if (v226)
                {
                  sub_21D0CF7E0(v189, &unk_27CE5CD70);
                  v185 = v484;
                  v138 = v486;
LABEL_111:
                  sub_21D106918(v185, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  sub_21D106918(v176, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_112:
                  v181 = v507;
LABEL_113:
                  sub_21D106918(v181, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D104E74(v138, v460, type metadata accessor for TTRRemindersListViewModel.Item);
                  v214 = swift_getEnumCaseMultiPayload();
                  if (v214 <= 3)
                  {
                    v133 = v482;
                    v136 = v483;
                    v137 = v506;
                    v215 = v454;
                    if (v214 >= 2)
                    {
                      goto LABEL_126;
                    }

LABEL_118:
                    sub_21D106918(v460, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_119:
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_120;
                  }

                  v133 = v482;
                  v136 = v483;
                  v137 = v506;
                  v215 = v454;
                  if ((v214 - 5) < 4)
                  {
                    goto LABEL_118;
                  }

                  if ((v214 - 9) < 2)
                  {
                    goto LABEL_119;
                  }

LABEL_126:
                  v224 = v446;
                  sub_21D2A0DC8(v460, v446, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  swift_storeEnumTagMultiPayload();
                  v225 = swift_getEnumCaseMultiPayload();
                  v226 = v225 == 2;
                  if (v225 < 2)
                  {
                    sub_21D106918(v224, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                    sub_21DBF5AFC();
                    v227 = v416;
                    v135 = v505;
                    sub_21D1AAD70(v505, v416);
                    sub_21D0CF7E0(v227, &qword_27CE5FB90);
                    sub_21D106918(v135, type metadata accessor for TTRRemindersListViewModel.ItemID);
                    sub_21D106918(v138, type metadata accessor for TTRRemindersListViewModel.Item);
                    v137 = v506;
                    goto LABEL_31;
                  }

                  v228 = v224;
                  v137 = v506;
                  v215 = v454;
                  if (v226)
                  {
                    sub_21D106918(v228, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                  }

LABEL_120:
                  if (qword_280D0F188 != -1)
                  {
                    swift_once();
                  }

                  v216 = sub_21DBF84BC();
                  __swift_project_value_buffer(v216, qword_280D0F190);
                  sub_21D104E74(v138, v215, type metadata accessor for TTRRemindersListViewModel.Item);
                  v217 = sub_21DBF84AC();
                  v151 = sub_21DBFAECC();
                  if (os_log_type_enabled(v217, v151))
                  {
                    v218 = swift_slowAlloc();
                    v504 = swift_slowAlloc();
                    v509[0] = v504;
                    *v218 = v399;
                    v219 = sub_21D25D250();
                    v221 = v220;
                    sub_21D106918(v215, type metadata accessor for TTRRemindersListViewModel.Item);
                    v222 = sub_21D0CDFB4(v219, v221, v509);

                    *(v218 + 4) = v222;
                    v136 = v483;
                    _os_log_impl(&dword_21D0C9000, v217, v151, "TTRRemindersListTreeViewModel: item does not support indent {item: %s}", v218, 0xCu);
                    v223 = v504;
                    __swift_destroy_boxed_opaque_existential_0(v504);
                    MEMORY[0x223D46520](v223, -1, -1);
                    MEMORY[0x223D46520](v218, -1, -1);
                  }

                  else
                  {

                    sub_21D106918(v215, type metadata accessor for TTRRemindersListViewModel.Item);
                  }

                  v135 = v505;
                  sub_21D106918(v505, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  v138 = v486;
                  sub_21D106918(v486, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_31:
                  v153 = v476;
                  v152 = v485;
                  continue;
                }

LABEL_82:
                sub_21D0CF7E0(v192, &qword_27CE58388);
                v185 = v484;
                v138 = v486;
              }

              else
              {
                sub_21D0D3954(v189, v469, &unk_27CE5CD70);
                if (v190(v189 + v188, 1, v191) == 1)
                {
                  sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v469, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v192 = v189;
                  goto LABEL_82;
                }

                v211 = v444;
                sub_21D2A0DC8(v189 + v188, v444, type metadata accessor for TTRRemindersListViewModel.SectionID);
                v212 = v469;
                v213 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v469, v211);
                sub_21D106918(v211, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
                sub_21D106918(v212, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D0CF7E0(v189, &unk_27CE5CD70);
                v185 = v484;
                v138 = v486;
                if (v213)
                {
                  goto LABEL_111;
                }
              }
            }

            else
            {
              sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
            }

            sub_21D106918(v185, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v176, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v210 = v507;
            goto LABEL_109;
          }

          sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v168 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        }

        else
        {
          v175 = v172;
          v176 = v487;
          sub_21D104E74(v175, v487, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (!swift_getEnumCaseMultiPayload())
          {
            v200 = v477;
            sub_21D2A0DC8(v173 + v171, v477, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v201 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v176, v200);
            v202 = v176;
            v181 = v173;
            v203 = v201;
            v204 = v200;
            v138 = v486;
            sub_21D106918(v204, type metadata accessor for TTRRemindersListViewModel.SectionID);
            sub_21D106918(v492, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v205 = v202;
            v167 = v492;
            sub_21D106918(v205, type metadata accessor for TTRRemindersListViewModel.SectionID);
            if (v203)
            {
              goto LABEL_113;
            }

            goto LABEL_106;
          }

          sub_21D106918(v167, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v168 = type metadata accessor for TTRRemindersListViewModel.SectionID;
        }

        v169 = v168;
        v170 = v176;
        goto LABEL_43;
      }

      break;
    }

    sub_21DBF5B0C();
    v229 = v426;
    sub_21DBF5B6C();
    v230 = v437;
    sub_21DBF5B3C();
    (*v397)(v229, v432);
    v231 = *(v425 + 36);
    v232 = sub_21D2F89FC(&qword_280D1B838, MEMORY[0x277CC9A18]);
    sub_21DBFACAC();
    if (*(v230 + v231) == v509[0])
    {
      v135 = v505;
      goto LABEL_133;
    }

    v385 = v232;
    v386 = v231;
LABEL_137:
    v233 = sub_21DBFAD3C();
    v235 = *v234;
    v388 = v234[1];
    v233(v509, 0);
    sub_21DBFACBC();
    v476 = v235;
    if (__OFSUB__(v235, 1))
    {
      goto LABEL_259;
    }

    v504 = type metadata accessor for TTRRemindersListViewModel.Item;
    v236 = v461;
    sub_21D104E74(v468, v461, type metadata accessor for TTRRemindersListViewModel.Item);
    v237 = v465;
    v465(v236, 0, 1, v499);

    v238 = v428;
    sub_21D26181C(v235 - 1, v236, v428);

    sub_21D0CF7E0(v236, &unk_27CE5CD80);
    sub_21D104E74(v238, v236, v504);
    v237(v236, 0, 1, v499);

    v239 = sub_21D261568(v236);

    sub_21D0CF7E0(v236, &unk_27CE5CD80);
    v240 = v429;
    sub_21D285AF8(v430);
    v429 = v240;
    if (v240)
    {
      sub_21D106918(v238, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v437, &qword_27CE5A150);
      (*v396)(v438, v424);
      sub_21D106918(v482, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D106918(v468, type metadata accessor for TTRRemindersListViewModel.Item);

      v151 = v429;
      goto LABEL_245;
    }

    v241 = v496[3];
    v502 = v496[4];
    ObjectType = swift_getObjectType();
    sub_21D104E74(v238, v236, type metadata accessor for TTRRemindersListViewModel.Item);
    v504 = v239;
    v242 = v499;
    v243 = v465;
    v465(v236, 0, 1, v499);
    v244 = v440;
    v243(v440, 1, 1, v242);
    sub_21D0F02F4(v236, v244, &unk_27CE5CD80);
    *(v244 + *(v441 + 36)) = v504;
    v245 = *(v502 + 32);
    v246 = v423;
    v463 = v241;
    v456 = v502 + 32;
    v455 = v245;
    v245(v244, ObjectType);
    sub_21D0CF7E0(v244, &qword_27CE58900);
    v394 = *v401;
    if (v394(v246, 1, v439) == 1)
    {

      sub_21D0CF7E0(v246, &qword_27CE5A3E8);
      sub_21D2A0F60();
      v151 = swift_allocError();
      *v373 = 0;
      swift_willThrow();
      sub_21D106918(v430, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v371 = v428;
LABEL_243:
      sub_21D106918(v371, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v437, &qword_27CE5A150);
      (*v396)(v438, v424);
      sub_21D106918(v482, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v374 = v468;
      goto LABEL_244;
    }

    sub_21D0D523C(v246, v449, &qword_27CE59D38);
    v247 = v476;
    v248 = v388;
    v133 = v482;
    if (v476 == v388)
    {
      v151 = MEMORY[0x277D84F90];
      v135 = v505;
      goto LABEL_142;
    }

    if (v388 < v476)
    {
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      swift_endAccess();
      v509[0] = 0;
      v509[1] = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
      sub_21DBFC14C();
      MEMORY[0x223D42AA0](125, 0xE100000000000000);
      sub_21DBFC31C();
      __break(1u);
      return;
    }

    v435 = v398 + v388 - v476;
    v151 = MEMORY[0x277D84F90];
LABEL_150:
    v504 = v151;
    if (v247 == v248)
    {
      goto LABEL_260;
    }

    v258 = v247;
    v503 = type metadata accessor for TTRRemindersListViewModel.Item;
    v259 = v461;
    sub_21D104E74(v468, v461, type metadata accessor for TTRRemindersListViewModel.Item);
    v243(v259, 0, 1, v499);

    v260 = v448;
    v476 = v258;
    sub_21D26181C(v258, v259, v448);

    sub_21D0CF7E0(v259, &unk_27CE5CD80);
    v261 = v414;
    sub_21D104E74(v260, v414, v503);
    v262 = swift_getEnumCaseMultiPayload();
    if (v262 > 3)
    {
      if (v262 == 4)
      {
        goto LABEL_156;
      }

      if ((v262 - 5) < 4)
      {
LABEL_238:
        sub_21D106918(v261, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      swift_storeEnumTagMultiPayload();
LABEL_240:
      sub_21D2A0F60();
      v151 = swift_allocError();
      *v372 = 1;
      swift_willThrow();
      sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v449, &qword_27CE59D38);
      sub_21D106918(v430, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v437, &qword_27CE5A150);
      (*v396)(v438, v424);
      v369 = v133;
      goto LABEL_233;
    }

    if (v262 != 2 && v262 != 3)
    {
      goto LABEL_238;
    }

LABEL_156:
    v263 = v415;
    sub_21D2A0DC8(v261, v415, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v264 = swift_getEnumCaseMultiPayload();
    if (v264 >= 2)
    {
      if (v264 == 2)
      {
        sub_21D106918(v263, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_240;
    }

    v265 = v412;
    sub_21D2A0DC8(v263, v412, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D2A0DC8(v265, v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v266 = v461;
    sub_21D104E74(v468, v461, type metadata accessor for TTRRemindersListViewModel.Item);
    v267 = v499;
    v268 = v465;
    v465(v266, 0, 1, v499);
    v269 = v440;
    v268(v440, 1, 1, v267);
    sub_21D0F02F4(v266, v269, &unk_27CE5CD80);
    *(v269 + *(v441 + 36)) = v476;
    v270 = v413;
    v455(v269, ObjectType, v502);
    sub_21D0CF7E0(v269, &qword_27CE58900);
    if (v394(v270, 1, v439) == 1)
    {

      sub_21D0CF7E0(v270, &qword_27CE5A3E8);
      sub_21D2A0F60();
      v151 = swift_allocError();
      *v384 = 0;
      swift_willThrow();
      sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v449, &qword_27CE59D38);
      sub_21D106918(v430, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v437, &qword_27CE5A150);
      (*v396)(v438, v424);
      sub_21D106918(v133, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v374 = v468;
LABEL_244:
      sub_21D106918(v374, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_245;
    }

    v271 = v419;
    sub_21D0D523C(v270, v419, &qword_27CE59D38);
    v272 = *(v434 + 48);
    v273 = *(v434 + 64);
    v274 = v422;
    sub_21D104E74(v448, v422, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v271, v274 + v272, &qword_27CE59D38);
    sub_21D0D3954(v449, v274 + v273, &qword_27CE59D38);
    v275 = v464;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v275 = sub_21D211B38(0, v275[2] + 1, 1, v275);
    }

    v276 = v453;
    v277 = v499;
    v279 = v275[2];
    v278 = v275[3];
    v464 = v275;
    v280 = v504;
    if (v279 >= v278 >> 1)
    {
      v464 = sub_21D211B38(v278 > 1, v279 + 1, 1, v464);
    }

    v281 = v464;
    v464[2] = v279 + 1;
    v393 = (*(v411 + 80) + 32) & ~*(v411 + 80);
    v392 = *(v411 + 72);
    sub_21D0D523C(v422, v281 + v393 + v392 * v279, &qword_27CE59D08);
    sub_21D104E74(v427, v421, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v280 = sub_21D211D1C(0, v280[2] + 1, 1, v280);
    }

    v283 = v280[2];
    v282 = v280[3];
    if (v283 >= v282 >> 1)
    {
      v280 = sub_21D211D1C(v282 > 1, v283 + 1, 1, v280);
    }

    v280[2] = v283 + 1;
    v284 = (*(v410 + 80) + 32) & ~*(v410 + 80);
    v504 = v280;
    v391 = v284;
    v390 = *(v410 + 72);
    sub_21D2A0DC8(v421, v280 + v284 + v390 * v283, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if (__OFADD__(v398++, 1))
    {
      __break(1u);
      goto LABEL_263;
    }

    v286 = v496[10];
    v287 = v420;
    sub_21D104E74(v448, v420, type metadata accessor for TTRRemindersListViewModel.Item);
    v465(v287, 0, 1, v277);
    v288 = v287;
    v289 = v409;
    sub_21D0D3954(v288, v409, &unk_27CE5CD80);
    v290 = v277;
    v291 = v286;
    LODWORD(v286) = (*v395)(v289, 1, v290);

    v226 = v286 == 1;
    v292 = v417;
    if (v226)
    {
      sub_21D0CF7E0(v289, &unk_27CE5CD80);
      swift_beginAccess();
      v293 = *(v291 + 16);
      if (v293 >> 62)
      {
        v294 = sub_21DBFBD7C();
        v295 = MEMORY[0x277D84F90];
        if (v294)
        {
          goto LABEL_171;
        }
      }

      else
      {
        v294 = *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v295 = MEMORY[0x277D84F90];
        if (v294)
        {
LABEL_171:
          v389 = v291;
          v509[0] = v295;
          sub_21DBF8E0C();
          sub_21D18EBA4(0, v294 & ~(v294 >> 63), 0);
          if (v294 < 0)
          {
            goto LABEL_264;
          }

          v296 = v509[0];
          v297 = v293;
          v503 = v293;
          if ((v293 & 0xC000000000000001) != 0)
          {
            v485 = v294;
            v298 = 0;
            v299 = v404;
            do
            {
              v300 = MEMORY[0x223D44740](v298, v297);
              v301 = *(*v300 + 120);
              swift_beginAccess();
              sub_21D104E74(v300 + v301, v299, type metadata accessor for TTRRemindersListViewModel.Item);
              swift_unknownObjectRelease();
              v509[0] = v296;
              v303 = *(v296 + 16);
              v302 = *(v296 + 24);
              if (v303 >= v302 >> 1)
              {
                sub_21D18EBA4(v302 > 1, v303 + 1, 1);
                v296 = v509[0];
              }

              v298 = (v298 + 1);
              *(v296 + 16) = v303 + 1;
              sub_21D2A0DC8(v299, v296 + v498 + v303 * v495, type metadata accessor for TTRRemindersListViewModel.Item);
              v297 = v503;
            }

            while (v485 != v298);
            v322 = v296;
          }

          else
          {
            v323 = 32;
            v324 = v402;
            do
            {
              v325 = *(v297 + v323);
              v326 = *(*v325 + 120);
              swift_beginAccess();
              sub_21D104E74(v325 + v326, v324, type metadata accessor for TTRRemindersListViewModel.Item);
              v509[0] = v296;
              v328 = *(v296 + 16);
              v327 = *(v296 + 24);
              if (v328 >= v327 >> 1)
              {
                sub_21D18EBA4(v327 > 1, v328 + 1, 1);
                v324 = v402;
                v296 = v509[0];
              }

              *(v296 + 16) = v328 + 1;
              sub_21D2A0DC8(v324, v296 + v498 + v328 * v495, type metadata accessor for TTRRemindersListViewModel.Item);
              v323 += 8;
              --v294;
              v297 = v503;
            }

            while (v294);
            v322 = v296;

            v138 = v486;
          }

          sub_21D0CF7E0(v420, &unk_27CE5CD80);
          v329 = v493;
          v330 = v445;
          v276 = v453;
          v151 = v504;
          goto LABEL_205;
        }
      }

      sub_21D0CF7E0(v420, &unk_27CE5CD80);
      v322 = MEMORY[0x277D84F90];
      v329 = v493;
      v330 = v445;
      v151 = v504;
      goto LABEL_205;
    }

    v304 = v406;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v406);
    sub_21D106918(v289, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v304, v292, type metadata accessor for TTRRemindersListViewModel.ItemID);
    swift_beginAccess();
    v389 = v291;
    v306 = *(v291 + 24);
    if (!*(v306 + 16))
    {
      goto LABEL_266;
    }

    v307 = sub_21D181E00(v292, v305);
    if ((v308 & 1) == 0)
    {
      goto LABEL_266;
    }

    v309 = *(*(v306 + 56) + 8 * v307);
    swift_endAccess();
    v310 = *(*v309 + 136);
    swift_beginAccess();
    v311 = *(v309 + v310);
    v276 = v453;
    v312 = v405;
    v151 = v504;
    if (v311 >> 62)
    {
      v313 = sub_21DBFBD7C();
      v314 = MEMORY[0x277D84F90];
      if (!v313)
      {
        goto LABEL_204;
      }

LABEL_182:
      v509[0] = v314;
      sub_21DBF8E0C();
      sub_21D18EBA4(0, v313 & ~(v313 >> 63), 0);
      v503 = v313;
      if (v313 < 0)
      {
        goto LABEL_265;
      }

      v322 = v509[0];
      v315 = v311;
      v485 = v311;
      if ((v311 & 0xC000000000000001) != 0)
      {
        v316 = 0;
        v317 = v403;
        do
        {
          v318 = MEMORY[0x223D44740](v316, v315);
          v319 = *(*v318 + 120);
          swift_beginAccess();
          sub_21D104E74(v318 + v319, v317, type metadata accessor for TTRRemindersListViewModel.Item);
          swift_unknownObjectRelease();
          v509[0] = v322;
          v321 = *(v322 + 16);
          v320 = *(v322 + 24);
          if (v321 >= v320 >> 1)
          {
            sub_21D18EBA4(v320 > 1, v321 + 1, 1);
            v322 = v509[0];
          }

          v316 = (v316 + 1);
          *(v322 + 16) = v321 + 1;
          sub_21D2A0DC8(v317, v322 + v498 + v321 * v495, type metadata accessor for TTRRemindersListViewModel.Item);
          v315 = v485;
        }

        while (v503 != v316);

        v151 = v504;
      }

      else
      {
        v331 = 32;
        do
        {
          v332 = *(v315 + v331);
          v333 = *(*v332 + 120);
          swift_beginAccess();
          sub_21D104E74(v332 + v333, v312, type metadata accessor for TTRRemindersListViewModel.Item);
          v509[0] = v322;
          v335 = *(v322 + 16);
          v334 = *(v322 + 24);
          if (v335 >= v334 >> 1)
          {
            sub_21D18EBA4(v334 > 1, v335 + 1, 1);
            v322 = v509[0];
          }

          *(v322 + 16) = v335 + 1;
          sub_21D2A0DC8(v312, v322 + v498 + v335 * v495, type metadata accessor for TTRRemindersListViewModel.Item);
          v331 += 8;
          v503 = (v503 - 1);
          v315 = v485;
        }

        while (v503);

        v138 = v486;
      }

      sub_21D106918(v417, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v420, &unk_27CE5CD80);
      v329 = v493;
      v330 = v445;
      v276 = v453;
    }

    else
    {
      v313 = *((v311 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v314 = MEMORY[0x277D84F90];
      if (v313)
      {
        goto LABEL_182;
      }

LABEL_204:

      sub_21D106918(v417, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v420, &unk_27CE5CD80);
      v322 = MEMORY[0x277D84F90];
      v329 = v493;
      v330 = v445;
    }

LABEL_205:
    v336 = 0;
    ++v476;
    v485 = *(v322 + 16);
    v389 = v322;
    v387 = v322 + v498;
    v337 = v495;
LABEL_206:
    if (v336 == v485)
    {
      v338 = 1;
      v503 = v485;
    }

    else
    {
      if ((v336 & 0x8000000000000000) != 0)
      {
        goto LABEL_257;
      }

      if (v336 >= *(v389 + 16))
      {
        goto LABEL_258;
      }

      v339 = (v336 + 1);
      v340 = v387 + v336 * v337;
      v341 = v493;
      v342 = *(v493 + 48);
      v343 = v474;
      *v474 = v336;
      sub_21D104E74(v340, v343 + v342, type metadata accessor for TTRRemindersListViewModel.Item);
      v344 = v343;
      v330 = v445;
      sub_21D0D523C(v344, v445, &qword_27CE5A418);
      v338 = 0;
      v503 = v339;
      v329 = v341;
      v276 = v453;
    }

    v161(v330, v338, 1, v329);
    sub_21D0D523C(v330, v276, &qword_27CE5A420);
    if (v162(v276, 1, v329) != 1)
    {
      break;
    }

    sub_21D0CF7E0(v419, &qword_27CE59D38);
    sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.Item);
    v247 = v476;
    v248 = v388;
    v133 = v482;
    v135 = v505;
    v243 = v465;
    if (v476 != v388)
    {
      goto LABEL_150;
    }

    v398 = v435;
LABEL_142:
    v249 = *(v408 + 48);
    v250 = v418;
    sub_21D104E74(v430, v418, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    *(v250 + v249) = v151;
    v251 = v447;
    v252 = swift_isUniquelyReferenced_nonNull_native();
    v253 = v386;
    if ((v252 & 1) == 0)
    {
      v251 = sub_21D211CF8(0, v251[2] + 1, 1, v251);
    }

    v255 = v251[2];
    v254 = v251[3];
    v447 = v251;
    if (v255 >= v254 >> 1)
    {
      v447 = sub_21D211CF8(v254 > 1, v255 + 1, 1, v447);
    }

    sub_21D0CF7E0(v449, &qword_27CE59D38);
    sub_21D106918(v430, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.Item);
    v256 = v447;
    v447[2] = v255 + 1;
    sub_21D0D523C(v418, v256 + ((*(v407 + 80) + 32) & ~*(v407 + 80)) + *(v407 + 72) * v255, &qword_27CE59D18);
    v257 = v437;
    sub_21DBFACAC();
    if (*(v257 + v253) != v509[0])
    {
      goto LABEL_137;
    }

LABEL_133:
    sub_21D0CF7E0(v437, &qword_27CE5A150);
    (*v396)(v438, v424);
    sub_21D106918(v133, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v134 = v468;
    sub_21D106918(v468, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!*(v510 + 16))
    {
LABEL_249:
      v367 = v464;
      goto LABEL_250;
    }

    v125 = v400;
    v139 = v400[2];
    v136 = v483;
    v137 = v506;
    if (!v139)
    {
LABEL_228:

      v367 = v464;
LABEL_251:
      sub_21D1E41E8(v367);
      return;
    }
  }

  v345 = *v276;
  v346 = v276 + *(v329 + 48);
  v347 = v459;
  sub_21D2A0DC8(v346, v459, type metadata accessor for TTRRemindersListViewModel.Item);
  v348 = v433;
  sub_21D104E74(v347, v433, type metadata accessor for TTRRemindersListViewModel.Item);
  v349 = swift_getEnumCaseMultiPayload();
  v504 = v151;
  if (v349 <= 3)
  {
    v350 = v436;
    if (v349 != 2 && v349 != 3)
    {
      goto LABEL_230;
    }

    goto LABEL_217;
  }

  v350 = v436;
  if (v349 == 4)
  {
LABEL_217:
    v351 = v350;
    sub_21D2A0DC8(v348, v350, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v352 = swift_getEnumCaseMultiPayload();
    if (v352 >= 2)
    {
      if (v352 == 2)
      {
        sub_21D106918(v436, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      goto LABEL_232;
    }

    sub_21D2A0DC8(v351, v457, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v353 = v461;
    sub_21D104E74(v448, v461, type metadata accessor for TTRRemindersListViewModel.Item);
    v354 = v499;
    v355 = v465;
    v465(v353, 0, 1, v499);
    v356 = v440;
    v355(v440, 1, 1, v354);
    sub_21D0F02F4(v353, v356, &unk_27CE5CD80);
    *(v356 + *(v441 + 36)) = v345;
    v357 = v431;
    v455(v356, ObjectType, v502);
    sub_21D0CF7E0(v356, &qword_27CE58900);
    if (v394(v357, 1, v439) == 1)
    {

      sub_21D0CF7E0(v357, &qword_27CE5A3E8);
      sub_21D2A0F60();
      v151 = swift_allocError();
      *v370 = 0;
      swift_willThrow();
      sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v419, &qword_27CE59D38);
      sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v449, &qword_27CE59D38);
      sub_21D106918(v430, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v371 = v428;
      goto LABEL_243;
    }

    v358 = v451;
    sub_21D0D523C(v357, v451, &qword_27CE59D38);
    v359 = *(v434 + 48);
    v360 = *(v434 + 64);
    v361 = v452;
    sub_21D104E74(v459, v452, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v358, v361 + v359, &qword_27CE59D38);
    sub_21D0D3954(v449, v361 + v360, &qword_27CE59D38);
    v363 = v464[2];
    v362 = v464[3];
    if (v363 >= v362 >> 1)
    {
      v464 = sub_21D211B38(v362 > 1, v363 + 1, 1, v464);
    }

    v276 = v453;
    v151 = v504;
    v364 = v464;
    v464[2] = v363 + 1;
    sub_21D0D523C(v452, v364 + v393 + v363 * v392, &qword_27CE59D08);
    sub_21D104E74(v457, v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v366 = *(v151 + 16);
    v365 = *(v151 + 24);
    if (v366 >= v365 >> 1)
    {
      v151 = sub_21D211D1C(v365 > 1, v366 + 1, 1, v151);
    }

    sub_21D0CF7E0(v451, &qword_27CE59D38);
    sub_21D106918(v457, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v151 + 16) = v366 + 1;
    sub_21D2A0DC8(v450, v151 + v391 + v366 * v390, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v329 = v493;
    v330 = v445;
    v337 = v495;
    v336 = v503;
    goto LABEL_206;
  }

  if ((v349 - 5) < 4)
  {
LABEL_230:
    sub_21D106918(v348, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  swift_storeEnumTagMultiPayload();
LABEL_232:
  sub_21D2A0F60();
  v151 = swift_allocError();
  *v368 = 1;
  swift_willThrow();

  sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v419, &qword_27CE59D38);
  sub_21D106918(v427, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v448, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v449, &qword_27CE59D38);
  sub_21D106918(v430, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v428, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0CF7E0(v437, &qword_27CE5A150);
  (*v396)(v438, v424);
  v369 = v482;
LABEL_233:
  sub_21D106918(v369, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  sub_21D106918(v468, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_245:
  if (qword_280D0F188 != -1)
  {
LABEL_261:
    swift_once();
  }

  v375 = sub_21DBF84BC();
  __swift_project_value_buffer(v375, qword_280D0F190);
  v376 = v151;
  v377 = sub_21DBF84AC();
  v378 = sub_21DBFAEBC();

  if (os_log_type_enabled(v377, v378))
  {
    v379 = swift_slowAlloc();
    v380 = swift_slowAlloc();
    v509[0] = v380;
    *v379 = v399;
    swift_getErrorValue();
    v381 = sub_21DBFC74C();
    v383 = sub_21D0CDFB4(v381, v382, v509);

    *(v379 + 4) = v383;
    _os_log_impl(&dword_21D0C9000, v377, v378, "Cannot compute move steps for indenting items {error: %s}", v379, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v380);
    MEMORY[0x223D46520](v380, -1, -1);
    MEMORY[0x223D46520](v379, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D28582C@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(v2, v7, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
LABEL_8:
    v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

LABEL_10:
  sub_21D2A0DC8(v7, v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v14 = swift_getEnumCaseMultiPayload();
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    goto LABEL_8;
  }

  if (v14)
  {
    if (a1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(a2);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(a2);
    v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  return sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
}

uint64_t sub_21D285AF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
LABEL_8:
    sub_21D2A0F60();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

LABEL_9:
  sub_21D2A0DC8(v6, v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 >= 2)
  {
    if (v13 == 2)
    {
      sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    }

    goto LABEL_8;
  }

  return sub_21D2A0DC8(v9, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
}

void *sub_21D285D24(uint64_t a1, char a2, void *a3)
{
  v514 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v5 - 8);
  v490 = v399 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v474 = v399 - v8;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D00);
  v405 = *(v406 - 1);
  MEMORY[0x28223BE20](v406);
  v407 = v399 - v9;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08);
  v409 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v450 = v399 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v423 = v399 - v12;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  MEMORY[0x28223BE20](v456);
  v442 = v399 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8);
  MEMORY[0x28223BE20](v14 - 8);
  v431 = v399 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v432 = v399 - v17;
  MEMORY[0x28223BE20](v18);
  v410 = v399 - v19;
  MEMORY[0x28223BE20](v20);
  v411 = v399 - v21;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  v416 = *(v454 - 8);
  MEMORY[0x28223BE20](v454);
  v449 = v399 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v451 = v399 - v24;
  MEMORY[0x28223BE20](v25);
  v422 = v399 - v26;
  MEMORY[0x28223BE20](v27);
  v427 = v399 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v29 - 8);
  v470 = v399 - v30;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v469);
  v468 = v399 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v32 - 8);
  v508 = v399 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v417 = v399 - v35;
  v457 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v457);
  v438 = v399 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v447 = v399 - v38;
  v488 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v415 = *(v488 - 8);
  MEMORY[0x28223BE20](v488);
  v489 = (v399 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v478 = (v399 - v41);
  MEMORY[0x28223BE20](v42);
  v445 = v399 - v43;
  MEMORY[0x28223BE20](v44);
  v479 = v399 - v45;
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v505);
  v491 = v399 - v46;
  v436 = sub_21DBF5A5C();
  v414 = *(v436 - 8);
  MEMORY[0x28223BE20](v436);
  v408 = v399 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v426 = v399 - v49;
  MEMORY[0x28223BE20](v50);
  v428 = v399 - v51;
  MEMORY[0x28223BE20](v52);
  v412 = v399 - v53;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A430);
  MEMORY[0x28223BE20](v420);
  v419 = v399 - v54;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A438);
  MEMORY[0x28223BE20](v418);
  v435 = v399 - v55;
  v56 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v463 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v497 = (v399 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v58);
  v495 = v399 - v59;
  MEMORY[0x28223BE20](v60);
  v494 = (v399 - v61);
  MEMORY[0x28223BE20](v62);
  v496 = v399 - v63;
  MEMORY[0x28223BE20](v64);
  v493 = v399 - v65;
  MEMORY[0x28223BE20](v66);
  v519 = v399 - v67;
  MEMORY[0x28223BE20](v68);
  v517 = v399 - v69;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A418);
  v425 = *(v516 - 8);
  MEMORY[0x28223BE20](v516);
  v500 = (v399 - v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A420);
  MEMORY[0x28223BE20](v71 - 8);
  v498 = v399 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v75 = (v399 - v74);
  MEMORY[0x28223BE20](v76);
  v484 = v399 - v77;
  MEMORY[0x28223BE20](v78);
  v483 = (v399 - v79);
  v434 = sub_21DBF5B9C();
  v413 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v452 = v399 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v430 = *(v467 - 8);
  MEMORY[0x28223BE20](v467);
  v487 = v399 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v448 = v399 - v83;
  MEMORY[0x28223BE20](v84);
  v433 = v399 - v85;
  MEMORY[0x28223BE20](v86);
  v458 = v399 - v87;
  MEMORY[0x28223BE20](v88);
  v424 = v399 - v89;
  MEMORY[0x28223BE20](v90);
  v492 = v399 - v91;
  MEMORY[0x28223BE20](v92);
  v429 = v399 - v93;
  MEMORY[0x28223BE20](v94);
  v441 = v399 - v95;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59CF0);
  v461 = *(v462 - 1);
  MEMORY[0x28223BE20](v462);
  v471 = v399 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v421 = v399 - v98;
  v99 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v512 = v399 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v504 = v399 - v103;
  MEMORY[0x28223BE20](v104);
  v106 = v399 - v105;
  MEMORY[0x28223BE20](v107);
  v475 = (v399 - v108);
  MEMORY[0x28223BE20](v109);
  v481 = (v399 - v110);
  MEMORY[0x28223BE20](v111);
  v455 = v399 - v112;
  MEMORY[0x28223BE20](v113);
  v440 = (v399 - v114);
  MEMORY[0x28223BE20](v115);
  v444 = v399 - v116;
  MEMORY[0x28223BE20](v117);
  v446 = v399 - v118;
  MEMORY[0x28223BE20](v119);
  v459 = v399 - v120;
  MEMORY[0x28223BE20](v121);
  v486 = (v399 - v122);
  MEMORY[0x28223BE20](v123);
  v453 = v399 - v124;
  MEMORY[0x28223BE20](v125);
  v437 = v399 - v126;
  MEMORY[0x28223BE20](v127);
  v511 = v399 - v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v129 - 8);
  v131 = (v399 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v132);
  v134 = v399 - v133;
  MEMORY[0x28223BE20](v135);
  v137 = v399 - v136;
  v521 = a1;
  v520 = a2;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
  sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v518 = v56;
  v138 = sub_21DBFA42C();
  v443 = 0;
  v523 = v138;
  v139 = *(v100 + 56);
  v515 = v100 + 56;
  v513 = v139;
  v139(v137, 1, 1, v99);

  v140 = sub_21D263398(v137);

  v477 = v137;
  sub_21D0CF7E0(v137, &unk_27CE5CD80);
  v141 = v140;
  v142 = *(v140 + 16);
  v480 = v100;
  v503 = v99;
  if (!v142)
  {

    v148 = MEMORY[0x277D84F90];
LABEL_8:
    v147 = v498;
    goto LABEL_9;
  }

  v143 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v476 = v141;
  v144 = v141 + v143;
  v145 = v511;
  sub_21D104E74(v141 + v143, v511, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21D106918(v145, type metadata accessor for TTRRemindersListViewModel.Item);
  v147 = v498;
  if (!EnumCaseMultiPayload)
  {
    v521 = MEMORY[0x277D84F90];
    v510 = *(v100 + 72);
    v149 = v477;
    v150 = v513;
    v151 = v512;
    do
    {
      sub_21D104E74(v144, v151, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104E74(v512, v149, type metadata accessor for TTRRemindersListViewModel.Item);
      v150(v149, 0, 1, v503);

      v511 = sub_21D263398(v149);
      v151 = v512;

      sub_21D0CF7E0(v149, &unk_27CE5CD80);
      sub_21D106918(v151, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D5624CC(v511);
      v144 += v510;
      --v142;
    }

    while (v142);

    v148 = v521;
    v99 = v503;
    goto LABEL_8;
  }

  v148 = v476;
LABEL_9:
  v152 = v516;
  v153 = v480;
  v154 = v481;
  v473 = *(v148 + 16);
  if (!v473)
  {

    v482 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v155 = 0;
  v460 = (*(v480 + 80) + 32) & ~*(v480 + 80);
  v472 = v148 + v460;
  v512 = (v425 + 56);
  v511 = (v425 + 48);
  v507 = (v480 + 48);
  v482 = MEMORY[0x277D84F90];
  v506 = (v463 + 56);
  v476 = v148;
  do
  {
    if (v155 >= *(v148 + 16))
    {
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
      goto LABEL_276;
    }

    v157 = v153;
    v158 = *(v153 + 72);
    v485 = v155;
    v502 = v158;
    sub_21D104E74(v472 + v158 * v155, v154, type metadata accessor for TTRRemindersListViewModel.Item);
    v159 = v475;
    sub_21D104E74(v154, v475, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D2A0DC8(v159, v474, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v160 = v154;
      v161 = v477;
      sub_21D104E74(v160, v477, type metadata accessor for TTRRemindersListViewModel.Item);
      v513(v161, 0, 1, v99);

      v162 = sub_21D263398(v161);

      sub_21D0CF7E0(v161, &unk_27CE5CD80);
      v163 = 0;
      v164 = *(v162 + 16);
      v501 = v162;
      v499 = v162 + v460;
      v510 = v164;
      if (v164)
      {
LABEL_16:
        if ((v163 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v163 < *(v501 + 16))
        {
          v165 = v499 + v163 * v502;
          v166 = *(v152 + 48);
          v167 = v500;
          *v500 = v163;
          sub_21D104E74(v165, v167 + v166, type metadata accessor for TTRRemindersListViewModel.Item);
          v168 = v167;
          v99 = v503;
          sub_21D0D523C(v168, v147, &qword_27CE5A418);
          v169 = 0;
          ++v163;
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_253;
      }

      while (1)
      {
        v169 = 1;
        v163 = v164;
LABEL_20:
        (*v512)(v147, v169, 1, v152);
        sub_21D0D523C(v147, v75, &qword_27CE5A420);
        if ((*v511)(v75, 1, v152) == 1)
        {

          sub_21D106918(v474, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          v157 = v480;
          goto LABEL_12;
        }

        v509 = *v75;
        sub_21D2A0DC8(v75 + *(v152 + 48), v106, type metadata accessor for TTRRemindersListViewModel.Item);
        v170 = v514[10];
        sub_21D104E74(v106, v134, type metadata accessor for TTRRemindersListViewModel.Item);
        v513(v134, 0, 1, v99);
        sub_21D0D3954(v134, v131, &unk_27CE5CD80);
        if ((*v507)(v131, 1, v99) != 1)
        {
          break;
        }

        sub_21D0CF7E0(v131, &unk_27CE5CD80);
        v171 = v508;
        (*v506)(v508, 1, 1, v518);
        sub_21D0CF7E0(v171, &qword_27CE5FB90);
        swift_beginAccess();
        v172 = *(v170 + 16);
        if (v172 >> 62)
        {
          v173 = sub_21DBFBD7C();
        }

        else
        {
          v173 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

LABEL_55:
        sub_21D0CF7E0(v134, &unk_27CE5CD80);

        if (v173 >= 1)
        {
          v195 = v477;
          sub_21D104E74(v106, v477, type metadata accessor for TTRRemindersListViewModel.Item);
          v513(v195, 0, 1, v99);

          *&v466 = sub_21D263398(v195);

          sub_21D0CF7E0(v195, &unk_27CE5CD80);
          v196 = v462[12];
          v465 = v462[16];
          v464 = v462[20];
          v197 = v471;
          sub_21D104E74(v481, v471, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D104E74(v106, v197 + v196, type metadata accessor for TTRRemindersListViewModel.Item);
          *(v465 + v197) = v509;
          *(v197 + v464) = v466;
          v198 = v482;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v198 = sub_21D211D68(0, v198[2] + 1, 1, v198);
          }

          v482 = v198;
          v200 = v198[2];
          v199 = v198[3];
          if (v200 >= v199 >> 1)
          {
            v482 = sub_21D211D68(v199 > 1, v200 + 1, 1, v482);
          }

          sub_21D106918(v106, type metadata accessor for TTRRemindersListViewModel.Item);
          v201 = v482;
          v482[2] = v200 + 1;
          sub_21D0D523C(v471, v201 + ((*(v461 + 80) + 32) & ~*(v461 + 80)) + *(v461 + 72) * v200, &qword_27CE59CF0);
        }

        else
        {
          sub_21D106918(v106, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        v152 = v516;
        v164 = v510;
        if (v163 != v510)
        {
          goto LABEL_16;
        }
      }

      sub_21D104E74(v131, v504, type metadata accessor for TTRRemindersListViewModel.Item);
      v174 = swift_getEnumCaseMultiPayload();
      if (v174 <= 5)
      {
        if ((v174 - 2) < 3)
        {
          v175 = v487;
          sub_21D2A0DC8(v504, v487, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v176 = v175;
          v177 = v508;
          sub_21D2A0DC8(v176, v508, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v178 = v518;
LABEL_41:
          swift_storeEnumTagMultiPayload();

          goto LABEL_48;
        }

        if (v174 >= 2)
        {

          sub_21D106918(v504, type metadata accessor for TTRRemindersListViewModel.Item);
          v177 = v508;
          *v508 = 0;
          v178 = v518;
LABEL_47:
          swift_storeEnumTagMultiPayload();
LABEL_48:
          sub_21D106918(v131, type metadata accessor for TTRRemindersListViewModel.Item);
          (*v506)(v177, 0, 1, v178);
          v186 = v177;
          v187 = v497;
          sub_21D2A0DC8(v186, v497, type metadata accessor for TTRRemindersListViewModel.ItemID);
          swift_beginAccess();
          v189 = *(v170 + 24);
          if (*(v189 + 16) && (v190 = sub_21D181E00(v187, v188), (v191 & 1) != 0))
          {
            v192 = *(*(v189 + 56) + 8 * v190);
            swift_endAccess();
            v193 = *(*v192 + 136);
            swift_beginAccess();
            v194 = *(v192 + v193);
            if (v194 >> 62)
            {
              v173 = sub_21DBFBD7C();
            }

            else
            {
              v173 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v99 = v503;
          }

          else
          {
            swift_endAccess();
            v173 = 0;
          }

          sub_21D106918(v187, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v147 = v498;
          goto LABEL_55;
        }

        v180 = v490;
        sub_21D2A0DC8(v504, v490, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        sub_21D104E74(v180, v489, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v181 = swift_getEnumCaseMultiPayload();

        if (((1 << v181) & 0x17E) != 0)
        {
          sub_21D106918(v489, type metadata accessor for TTRRemindersListViewModel.SectionID);
        }

        else if (((1 << v181) & 0x81) == 0)
        {
          sub_21D106918(v490, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          v184 = v478;
          *v478 = *v489;
          swift_storeEnumTagMultiPayload();
          goto LABEL_46;
        }

        v183 = v490;
        v184 = v478;
        sub_21D104E74(v490, v478, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D106918(v183, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
LABEL_46:
        v185 = v184;
        v177 = v508;
        sub_21D2A0DC8(v185, v508, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v178 = v518;
        goto LABEL_47;
      }

      if (v174 <= 7)
      {
        v177 = v508;
        if (v174 != 6)
        {
          *v508 = 2;
          goto LABEL_43;
        }

        v182 = 1;
      }

      else
      {
        v177 = v508;
        if (v174 != 8)
        {
          if (v174 == 9)
          {
            v179 = 3;
          }

          else
          {
            v179 = 5;
          }

          *v508 = v179;
          v178 = v518;
          goto LABEL_41;
        }

        v182 = 4;
      }

      *v177 = v182;
LABEL_43:
      v178 = v518;
      swift_storeEnumTagMultiPayload();

      sub_21D106918(v504, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_48;
    }

    sub_21D106918(v159, type metadata accessor for TTRRemindersListViewModel.Item);
    if (qword_280D0F188 != -1)
    {
      swift_once();
    }

    v202 = sub_21DBF84BC();
    __swift_project_value_buffer(v202, qword_280D0F190);
    v203 = sub_21DBF84AC();
    v204 = sub_21DBFAECC();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&dword_21D0C9000, v203, v204, "Unexpected item type", v205, 2u);
      MEMORY[0x223D46520](v205, -1, -1);
    }

    v152 = v516;
LABEL_12:
    v156 = v485 + 1;
    v154 = v481;
    sub_21D106918(v481, type metadata accessor for TTRRemindersListViewModel.Item);
    v155 = v156;
    v148 = v476;
    v153 = v157;
  }

  while (v156 != v473);

LABEL_74:
  v207 = v443;
  if (!*(v523 + 16))
  {
    v497 = MEMORY[0x277D84F90];
    v464 = MEMORY[0x277D84F90];
    goto LABEL_233;
  }

  v509 = v425 + 56;
  v508 = v425 + 48;
  v499 = 0x800000021DC43E30;
  v498 = 0x800000021DC43E00;
  v504 = 0x800000021DC43DE0;
  v208 = (v415 + 6);
  v415 = (v413 + 16);
  v465 = (v414 + 16);
  v404 = (v414 + 32);
  v478 = v416 + 6;
  v425 = v414 + 8;
  v416 = (v413 + 8);
  *&v206 = 136315138;
  v466 = v206;
  v464 = MEMORY[0x277D84F90];
  v497 = MEMORY[0x277D84F90];
  v501 = v208;
  while (2)
  {
    if (!v482[2])
    {
      goto LABEL_233;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v482 = sub_21D256C7C(v482);
    }

    v209 = v482[2];
    if (!v209)
    {
      goto LABEL_267;
    }

    v210 = v209 - 1;
    v211 = v482 + ((*(v461 + 80) + 32) & ~*(v461 + 80)) + *(v461 + 72) * v210;
    v482[2] = v210;
    v212 = v421;
    sub_21D0D523C(v211, v421, &qword_27CE59CF0);
    v213 = v462[12];
    v214 = *(v212 + v462[16]);
    v215 = *(v212 + v462[20]);
    sub_21D2A0DC8(v212, v437, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v212 + v213, v453, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D285AF8(v441);
    v131 = v207;
    if (v207)
    {

      sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v437, type metadata accessor for TTRRemindersListViewModel.Item);

      goto LABEL_239;
    }

    v490 = v214;
    v443 = 0;
    sub_21DBF5B8C();
    v216 = 0;
    v217 = *(v215 + 16);
    v218 = v491;
    v219 = v484;
    v131 = v486;
    v502 = v215;
    v507 = v217;
LABEL_84:
    if (v216 == v217)
    {
      v220 = 1;
      v510 = v217;
      v221 = v516;
      v222 = v483;
    }

    else
    {
      v222 = v483;
      if ((v216 & 0x8000000000000000) != 0)
      {
        goto LABEL_261;
      }

      if (v216 >= *(v215 + 16))
      {
        goto LABEL_262;
      }

      v223 = v216 + 1;
      v224 = v215 + ((*(v480 + 80) + 32) & ~*(v480 + 80)) + *(v480 + 72) * v216;
      v221 = v516;
      v225 = *(v516 + 48);
      v226 = v500;
      *v500 = v216;
      sub_21D104E74(v224, v226 + v225, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0D523C(v226, v219, &qword_27CE5A418);
      v220 = 0;
      v510 = v223;
      v218 = v491;
    }

    (*v509)(v219, v220, 1, v221);
    sub_21D0D523C(v219, v222, &qword_27CE5A420);
    if ((*v508)(v222, 1, v221) != 1)
    {
      v506 = *v222;
      sub_21D2A0DC8(v222 + *(v221 + 48), v131, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v517);
      v227 = v523;
      if (!*(v523 + 16) || (sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(), v228 = sub_21DBFC82C(), v229 = -1 << *(v227 + 32), v230 = v228 & ~v229, ((*(v227 + 56 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v230) & 1) == 0))
      {
LABEL_82:
        sub_21D106918(v517, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v131 = v486;
        sub_21D106918(v486, type metadata accessor for TTRRemindersListViewModel.Item);
        v219 = v484;
        goto LABEL_83;
      }

      v511 = ~v229;
      v512 = *(v463 + 72);
      while (2)
      {
        v233 = v519;
        sub_21D104E74(*(v227 + 48) + v512 * v230, v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v234 = *(v505 + 48);
        sub_21D104E74(v233, v218, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D104E74(v517, v218 + v234, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v235 = swift_getEnumCaseMultiPayload();
        if (v235 <= 1)
        {
          if (!v235)
          {
            v236 = v493;
            sub_21D104E74(v218, v493, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
              v237 = type metadata accessor for TTRRemindersListViewModel.SectionID;
              v238 = v236;
              goto LABEL_123;
            }

            v257 = v218 + v234;
            v258 = v479;
            sub_21D2A0DC8(v257, v479, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v259 = v236;
            v260 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v236, v258);
            v261 = v258;
            v218 = v491;
            sub_21D106918(v261, type metadata accessor for TTRRemindersListViewModel.SectionID);
            sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D106918(v259, type metadata accessor for TTRRemindersListViewModel.SectionID);
            if (v260)
            {
              goto LABEL_163;
            }

LABEL_94:
            sub_21D106918(v218, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_95:
            v230 = (v230 + 1) & v511;
            if (((*(v227 + 56 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v230) & 1) == 0)
            {
              goto LABEL_82;
            }

            continue;
          }

          v241 = v496;
          sub_21D104E74(v218, v496, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v242 = v218 + v234;
            v243 = v492;
            sub_21D2A0DC8(v242, v492, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D0D8CF0(0, &qword_280D17680);
            if (sub_21DBFB63C())
            {
              v244 = *(v467 + 20);
              v245 = *(v469 + 48);
              v246 = v468;
              sub_21D0D3954(v241 + v244, v468, &unk_27CE5CD70);
              sub_21D0D3954(v243 + v244, v246 + v245, &unk_27CE5CD70);
              v247 = *v501;
              v248 = v488;
              if ((*v501)(v246, 1, v488) == 1)
              {
                sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v249 = v247(v246 + v245, 1, v248) == 1;
                v250 = v246;
                v215 = v502;
                if (v249)
                {
                  sub_21D0CF7E0(v246, &unk_27CE5CD70);
                  v218 = v491;
LABEL_162:
                  sub_21D106918(v492, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_163:
                  sub_21D106918(v218, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  v131 = v486;
                  sub_21D104E74(v486, v459, type metadata accessor for TTRRemindersListViewModel.Item);
                  v272 = swift_getEnumCaseMultiPayload();
                  if (v272 <= 3)
                  {
                    v219 = v484;
                    v273 = v446;
                    if (v272 >= 2)
                    {
                      goto LABEL_176;
                    }

LABEL_168:
                    sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_169:
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_170;
                  }

                  v219 = v484;
                  v273 = v446;
                  if ((v272 - 5) < 4)
                  {
                    goto LABEL_168;
                  }

                  if ((v272 - 9) < 2)
                  {
                    goto LABEL_169;
                  }

LABEL_176:
                  v285 = v447;
                  sub_21D2A0DC8(v459, v447, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  swift_storeEnumTagMultiPayload();
                  v286 = swift_getEnumCaseMultiPayload();
                  if (v286 < 2)
                  {
                    sub_21D106918(v285, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                    sub_21DBF5AFC();
                    v287 = v417;
                    v288 = v517;
                    sub_21D1AAD70(v517, v417);
                    sub_21D0CF7E0(v287, &qword_27CE5FB90);
                    sub_21D106918(v288, type metadata accessor for TTRRemindersListViewModel.ItemID);
                    sub_21D106918(v131, type metadata accessor for TTRRemindersListViewModel.Item);
                    v218 = v491;
                    goto LABEL_83;
                  }

                  if (v286 == 2)
                  {
                    sub_21D106918(v447, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                  }

LABEL_170:
                  if (qword_280D0F188 != -1)
                  {
                    swift_once();
                  }

                  v274 = sub_21DBF84BC();
                  __swift_project_value_buffer(v274, qword_280D0F190);
                  sub_21D104E74(v131, v273, type metadata accessor for TTRRemindersListViewModel.Item);
                  v275 = sub_21DBF84AC();
                  v276 = sub_21DBFAECC();
                  if (os_log_type_enabled(v275, v276))
                  {
                    v277 = swift_slowAlloc();
                    v278 = v273;
                    v279 = swift_slowAlloc();
                    v521 = v279;
                    *v277 = v466;
                    v280 = sub_21D25D250();
                    v282 = v281;
                    v283 = v278;
                    v131 = v486;
                    sub_21D106918(v283, type metadata accessor for TTRRemindersListViewModel.Item);
                    v284 = sub_21D0CDFB4(v280, v282, &v521);
                    v215 = v502;

                    *(v277 + 4) = v284;
                    _os_log_impl(&dword_21D0C9000, v275, v276, "TTRRemindersListTreeViewModel: item does not support outdent {item: %s}", v277, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v279);
                    MEMORY[0x223D46520](v279, -1, -1);
                    MEMORY[0x223D46520](v277, -1, -1);
                  }

                  else
                  {

                    sub_21D106918(v273, type metadata accessor for TTRRemindersListViewModel.Item);
                  }

                  sub_21D106918(v517, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v131, type metadata accessor for TTRRemindersListViewModel.Item);
                  v218 = v491;
LABEL_83:
                  v217 = v507;
                  v216 = v510;
                  goto LABEL_84;
                }

LABEL_133:
                sub_21D0CF7E0(v250, &qword_27CE58388);
                v218 = v491;
              }

              else
              {
                sub_21D0D3954(v246, v470, &unk_27CE5CD70);
                if (v247(v246 + v245, 1, v248) == 1)
                {
                  sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v470, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v250 = v246;
                  v215 = v502;
                  goto LABEL_133;
                }

                v269 = v445;
                sub_21D2A0DC8(v246 + v245, v445, type metadata accessor for TTRRemindersListViewModel.SectionID);
                v270 = v470;
                v271 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v470, v269);
                sub_21D106918(v269, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
                sub_21D106918(v270, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D0CF7E0(v246, &unk_27CE5CD70);
                v218 = v491;
                v215 = v502;
                if (v271)
                {
                  goto LABEL_162;
                }
              }
            }

            else
            {
              sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
            }

            sub_21D106918(v492, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            goto LABEL_94;
          }

          sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v237 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
          v238 = v241;
LABEL_123:
          sub_21D106918(v238, v237);
LABEL_124:
          sub_21D0CF7E0(v218, &qword_27CE58AD0);
          goto LABEL_95;
        }

        break;
      }

      if (v235 == 2)
      {
        v239 = v494;
        sub_21D104E74(v218, v494, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v240 = *v239;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v231 = *(v218 + v234);
          sub_21D0D8CF0(0, &qword_280D17680);
          v232 = sub_21DBFB63C();

          sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (v232)
          {
            goto LABEL_163;
          }

          goto LABEL_94;
        }

        sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);

        goto LABEL_124;
      }

      v251 = v495;
      sub_21D104E74(v218, v495, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v237 = type metadata accessor for TTRRemindersListViewModel.ItemID;
        v238 = v519;
        goto LABEL_123;
      }

      v252 = *v251;
      if (v252 > 2)
      {
        if (v252 == 3)
        {
          v255 = 0xD00000000000001FLL;
          v262 = &v521;
        }

        else
        {
          if (v252 == 4)
          {
            v256 = 0xE700000000000000;
            v255 = 0x6D657449706974;
            goto LABEL_137;
          }

          v255 = 0xD00000000000001DLL;
          v262 = &v522;
        }

        v256 = *(v262 - 32);
      }

      else
      {
        v253 = 0xD000000000000012;
        if (v252 == 1)
        {
          v253 = 0x7367617468736168;
        }

        v254 = 0xEC0000006D657449;
        if (v252 != 1)
        {
          v254 = v504;
        }

        if (*v251)
        {
          v255 = v253;
        }

        else
        {
          v255 = 0x6574656C706D6F63;
        }

        if (*v251)
        {
          v256 = v254;
        }

        else
        {
          v256 = 0xED00006D65744964;
        }
      }

LABEL_137:
      v263 = *(v218 + v234);
      if (v263 <= 2)
      {
        if (*(v218 + v234))
        {
          if (v263 == 1)
          {
            v264 = 0x7367617468736168;
          }

          else
          {
            v264 = 0xD000000000000012;
          }

          if (v263 == 1)
          {
            v265 = 0xEC0000006D657449;
          }

          else
          {
            v265 = v504;
          }

          if (v255 != v264)
          {
LABEL_157:
            v268 = sub_21DBFC64C();

            sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v268)
            {
              goto LABEL_163;
            }

            goto LABEL_94;
          }
        }

        else
        {
          v265 = 0xED00006D65744964;
          if (v255 != 0x6574656C706D6F63)
          {
            goto LABEL_157;
          }
        }

LABEL_156:
        if (v256 == v265)
        {

          sub_21D106918(v519, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_163;
        }

        goto LABEL_157;
      }

      if (v263 == 3)
      {
        v266 = 0xD00000000000001FLL;
        v267 = &v521;
      }

      else
      {
        if (v263 == 4)
        {
          v265 = 0xE700000000000000;
          if (v255 != 0x6D657449706974)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

        v266 = 0xD00000000000001DLL;
        v267 = &v522;
      }

      v265 = *(v267 - 32);
      if (v255 != v266)
      {
        goto LABEL_157;
      }

      goto LABEL_156;
    }

    sub_21D104E74(v441, v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v289 = v419;
    (*v415)(v419, v452, v434);
    v290 = v420;
    v291 = *(v420 + 36);
    v131 = sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28]);
    sub_21DBFAC3C();
    sub_21DBFACAC();
    v292 = v435;
    sub_21D0D3954(v289, v435, &qword_27CE5A430);
    v293 = *(v418 + 36);
    v414 = *v465;
    (v414)(v292 + v293, v289 + v291, v436);
    v294 = v293;
    sub_21D0CF7E0(v289, &qword_27CE5A430);
    v295 = *(v290 + 40);
    v296 = sub_21D2F89FC(&qword_280D1B840, MEMORY[0x277CC9A08]);
    if (sub_21DBFA10C())
    {
      v207 = v443;
LABEL_182:

      sub_21D0CF7E0(v435, &qword_27CE5A438);
      sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      (*v416)(v452, v434);
      sub_21D106918(v441, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v437, type metadata accessor for TTRRemindersListViewModel.Item);
      if (!*(v523 + 16))
      {
LABEL_233:

        return v497;
      }

      continue;
    }

    break;
  }

  v511 = 0;
  v460 = 0;
  v402 = v490 + 1;
  v297 = __OFADD__(v490, 1);
  v403 = v297;
  v207 = v443;
  v298 = v477;
  v401 = v131;
  v400 = v294;
  v399[1] = v295;
  v399[0] = v296;
  while (2)
  {
    v299 = v412;
    v300 = v436;
    (v414)(v412, v435 + v294, v436);
    sub_21DBFACBC();
    (*v404)(v428, v299, v300);
    v301 = sub_21DBF5BAC();
    if ((v301 & 0x8000000000000000) != 0)
    {
      goto LABEL_268;
    }

    v302 = v301;
    if (v301 >= *(v502 + 16))
    {
      goto LABEL_269;
    }

    v303 = ((*(v480 + 80) + 32) & ~*(v480 + 80));
    v474 = *(v480 + 72);
    sub_21D104E74(v303 + v502 + v474 * v301, v444, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D285AF8(v424);
    v443 = v207;
    if (v207)
    {

      sub_21D106918(v444, type metadata accessor for TTRRemindersListViewModel.Item);
      (*v425)(v428, v436);
      sub_21D0CF7E0(v435, &qword_27CE5A438);
      sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      (*v416)(v452, v434);
      sub_21D106918(v441, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v437, type metadata accessor for TTRRemindersListViewModel.Item);

      v131 = v443;
      goto LABEL_246;
    }

    v512 = v303;
    v305 = v514[3];
    v304 = v514[4];
    ObjectType = swift_getObjectType();
    sub_21D104E74(v453, v298, type metadata accessor for TTRRemindersListViewModel.Item);
    v307 = v298;
    v308 = v298;
    v309 = v503;
    v131 = v513;
    v513(v307, 0, 1, v503);
    v310 = v302 - v511;
    if (__OFSUB__(v302, v511))
    {
      goto LABEL_270;
    }

    v510 = v302;
    v311 = v442;
    (v131)(v442, 1, 1, v309);
    sub_21D0F02F4(v308, v311, &unk_27CE5CD80);
    v312 = v456;
    *(v311 + *(v456 + 36)) = v310;
    v313 = v304 + 32;
    v314 = *(v304 + 32);
    v315 = v304;
    v316 = v411;
    v476 = v305;
    v506 = v315;
    v490 = v313;
    v489 = v314;
    (v314)(v311, ObjectType);
    v317 = v316;
    sub_21D0CF7E0(v311, &qword_27CE58900);
    v318 = *v478;
    v319 = v316;
    v320 = v454;
    if ((*v478)(v319, 1, v454) == 1)
    {

      sub_21D0CF7E0(v317, &qword_27CE5A3E8);
      sub_21D2A0F60();
      v131 = swift_allocError();
      *v397 = 0;
      swift_willThrow();
LABEL_259:
      sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v444, type metadata accessor for TTRRemindersListViewModel.Item);
      (*v425)(v428, v436);
      sub_21D0CF7E0(v435, &qword_27CE5A438);
      sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      (*v416)(v452, v434);
      sub_21D106918(v441, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.Item);
      v387 = v437;
      goto LABEL_245;
    }

    sub_21D0D523C(v317, v427, &qword_27CE59D38);
    sub_21D104E74(v437, v308, type metadata accessor for TTRRemindersListViewModel.Item);
    (v131)(v308, 0, 1, v309);
    if (v403)
    {
      goto LABEL_271;
    }

    v321 = v402 + v460;
    if (__OFADD__(v402, v460))
    {
      goto LABEL_272;
    }

    v475 = v318;
    v322 = v442;
    v513(v442, 1, 1, v503);
    sub_21D0F02F4(v477, v322, &unk_27CE5CD80);
    *(v322 + *(v312 + 36)) = v321;
    v323 = v410;
    v489(v322, ObjectType, v506);
    sub_21D0CF7E0(v322, &qword_27CE58900);
    if ((v475)(v323, 1, v320) == 1)
    {

      sub_21D0CF7E0(v323, &qword_27CE5A3E8);
      sub_21D2A0F60();
      v131 = swift_allocError();
      *v398 = 0;
      swift_willThrow();
      sub_21D0CF7E0(v427, &qword_27CE59D38);
      goto LABEL_259;
    }

    v324 = v422;
    v131 = &qword_27CE59D38;
    sub_21D0D523C(v323, v422, &qword_27CE59D38);
    v325 = *(v439 + 48);
    v326 = *(v439 + 64);
    v327 = v423;
    sub_21D104E74(v444, v423, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v427, v327 + v325, &qword_27CE59D38);
    sub_21D0D3954(v324, v327 + v326, &qword_27CE59D38);
    v328 = v497;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v328 = sub_21D211B38(0, v328[2] + 1, 1, v328);
    }

    v329 = v438;
    v331 = v328[2];
    v330 = v328[3];
    v332 = v456;
    if (v331 >= v330 >> 1)
    {
      v328 = sub_21D211B38(v330 > 1, v331 + 1, 1, v328);
    }

    v328[2] = v331 + 1;
    v473 = (*(v409 + 80) + 32) & ~*(v409 + 80);
    v472 = *(v409 + 72);
    sub_21D0D523C(v423, v328 + v473 + v472 * v331, &qword_27CE59D08);
    v333 = __OFADD__(v460++, 1);
    if (v333)
    {
      goto LABEL_273;
    }

    v333 = __OFADD__(v511++, 1);
    if (v333)
    {
      goto LABEL_274;
    }

    sub_21DBF5ACC();
    v334 = v408;
    sub_21DBF5A3C();
    v335 = sub_21DBF5A4C();
    v413 = *v425;
    v413(v334, v436);
    v336 = v507;
    if ((v335 & 1) == 0)
    {
      v336 = sub_21DBF5BAC();
    }

    v75 = v440;
    if (v336 <= v510)
    {
      goto LABEL_275;
    }

    v487 = ObjectType;
    v337 = v510 + 1;
    v338 = v502;
    v339 = (v502 + v512 + v474 * (v510 + 1));
    v512 = MEMORY[0x277D84F90];
    v340 = v511;
    v471 = v336;
LABEL_206:
    if (v336 == v337)
    {
      v497 = v328;
      v366 = v406[12];
      v367 = v406[16];
      v368 = v406[20];
      v369 = v407;
      sub_21D104E74(v437, v407, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104E74(v429, v369 + v366, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D104E74(v424, v369 + v367, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      *(v369 + v368) = v512;
      v370 = v464;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v370 = sub_21D211D44(0, v370[2] + 1, 1, v370);
      }

      v207 = v443;
      v371 = v370;
      v372 = v370[2];
      v464 = v371;
      v373 = v371[3];
      v511 = v340;
      if (v372 >= v373 >> 1)
      {
        v464 = sub_21D211D44(v373 > 1, v372 + 1, 1, v464);
      }

      v374 = v436;
      v375 = v413;
      v413(v426, v436);
      sub_21D0CF7E0(v422, &qword_27CE59D38);
      sub_21D0CF7E0(v427, &qword_27CE59D38);
      sub_21D106918(v444, type metadata accessor for TTRRemindersListViewModel.Item);
      v375(v428, v374);
      v376 = v429;
      sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v377 = v464;
      *(v464 + 16) = v372 + 1;
      sub_21D0D523C(v407, v377 + ((*(v405 + 80) + 32) & ~*(v405 + 80)) + *(v405 + 72) * v372, &qword_27CE59D00);
      sub_21D2A0DC8(v424, v376, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v294 = v400;
      v378 = sub_21DBFA10C();
      v298 = v477;
      v131 = v401;
      if (v378)
      {
        goto LABEL_182;
      }

      continue;
    }

    break;
  }

  if (v337 >= v336)
  {
    goto LABEL_263;
  }

  if (v337 >= *(v338 + 16))
  {
    goto LABEL_264;
  }

  v510 = v337;
  v485 = v339;
  sub_21D104E74(v339, v75, type metadata accessor for TTRRemindersListViewModel.Item);
  v131 = *(v512 + 16);
  sub_21D104E74(v75, v455, type metadata accessor for TTRRemindersListViewModel.Item);
  v341 = swift_getEnumCaseMultiPayload();
  if (v341 >= 4)
  {
    if (v341 <= 4)
    {
      goto LABEL_213;
    }

    if (v341 <= 8)
    {
LABEL_236:

      sub_21D106918(v455, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_238;
  }

  if (v341 <= 1)
  {
    goto LABEL_236;
  }

LABEL_213:
  sub_21D2A0DC8(v455, v329, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v342 = swift_getEnumCaseMultiPayload();
  if (v342 >= 2)
  {
    if (v342 != 2)
    {
LABEL_253:

      goto LABEL_238;
    }

    sub_21D106918(v329, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
LABEL_238:
    v380 = v413;
    sub_21D2A0F60();
    v131 = swift_allocError();
    *v381 = 1;
    swift_willThrow();
    sub_21D106918(v75, type metadata accessor for TTRRemindersListViewModel.Item);
    v382 = v436;
    v380(v426, v436);
    sub_21D0CF7E0(v422, &qword_27CE59D38);
    sub_21D0CF7E0(v427, &qword_27CE59D38);
    sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v444, type metadata accessor for TTRRemindersListViewModel.Item);
    v380(v428, v382);
    sub_21D0CF7E0(v435, &qword_27CE5A438);
    sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    (*v416)(v452, v434);
    sub_21D106918(v441, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106918(v437, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_239:

    goto LABEL_246;
  }

  v497 = v328;
  v343 = v329;
  v344 = v433;
  sub_21D2A0DC8(v343, v433, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D2A0DC8(v344, v458, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v345 = v477;
  sub_21D104E74(v453, v477, type metadata accessor for TTRRemindersListViewModel.Item);
  v346 = v503;
  v347 = v513;
  v513(v345, 0, 1, v503);
  v348 = v510 - v340;
  if (__OFSUB__(v510, v340))
  {
    goto LABEL_265;
  }

  v481 = v131;
  v511 = v340;
  v349 = v442;
  v347(v442, 1, 1, v346);
  sub_21D0F02F4(v345, v349, &unk_27CE5CD80);
  *(v349 + *(v332 + 36)) = v348;
  v350 = v432;
  v489(v349, v487, v506);
  sub_21D0CF7E0(v349, &qword_27CE58900);
  v351 = v475;
  if ((v475)(v350, 1, v454) == 1)
  {

    sub_21D0CF7E0(v350, &qword_27CE5A3E8);
    sub_21D2A0F60();
    v131 = swift_allocError();
    *v383 = 0;
    swift_willThrow();
    sub_21D106918(v458, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.Item);
    v384 = v436;
    v385 = v413;
    v413(v426, v436);
    goto LABEL_244;
  }

  v131 = &qword_27CE59D38;
  sub_21D0D523C(v350, v451, &qword_27CE59D38);
  sub_21D104E74(v444, v345, type metadata accessor for TTRRemindersListViewModel.Item);
  v347(v345, 0, 1, v346);
  v347(v349, 1, 1, v346);
  sub_21D0F02F4(v345, v349, &unk_27CE5CD80);
  *(v349 + *(v456 + 36)) = v481;
  v352 = v431;
  v489(v349, v487, v506);
  sub_21D0CF7E0(v349, &qword_27CE58900);
  if (v351(v352, 1, v454) != 1)
  {
    v353 = v449;
    sub_21D0D523C(v352, v449, &qword_27CE59D38);
    v354 = *(v439 + 48);
    v355 = *(v439 + 64);
    v75 = v440;
    v356 = v450;
    sub_21D104E74(v440, v450, type metadata accessor for TTRRemindersListViewModel.Item);
    v357 = v451;
    sub_21D0D3954(v451, v356 + v354, &qword_27CE59D38);
    sub_21D0D3954(v353, v356 + v355, &qword_27CE59D38);
    v328 = v497;
    v359 = v497[2];
    v358 = v497[3];
    v360 = v357;
    if (v359 >= v358 >> 1)
    {
      v328 = sub_21D211B38(v358 > 1, v359 + 1, 1, v497);
    }

    v329 = v438;
    v361 = v511;
    v328[2] = v359 + 1;
    sub_21D0D523C(v450, v328 + v473 + v359 * v472, &qword_27CE59D08);
    sub_21D104E74(v458, v448, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v332 = v456;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v512 = sub_21D211D1C(0, *(v512 + 16) + 1, 1, v512);
    }

    v364 = *(v512 + 16);
    v363 = *(v512 + 24);
    if (v364 >= v363 >> 1)
    {
      v512 = sub_21D211D1C(v363 > 1, v364 + 1, 1, v512);
    }

    sub_21D0CF7E0(v449, &qword_27CE59D38);
    sub_21D0CF7E0(v360, &qword_27CE59D38);
    sub_21D106918(v458, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v75, type metadata accessor for TTRRemindersListViewModel.Item);
    v365 = v512;
    *(v512 + 16) = v364 + 1;
    sub_21D2A0DC8(v448, v365 + ((*(v430 + 80) + 32) & ~*(v430 + 80)) + *(v430 + 72) * v364, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v337 = v510 + 1;
    v339 = &v485[v474];
    v333 = __OFADD__(v361, 1);
    v340 = v361 + 1;
    v338 = v502;
    v336 = v471;
    if (v333)
    {
      goto LABEL_266;
    }

    goto LABEL_206;
  }

  sub_21D0CF7E0(v352, &qword_27CE5A3E8);
  sub_21D2A0F60();
  v131 = swift_allocError();
  *v386 = 0;
  swift_willThrow();
  sub_21D0CF7E0(v451, &qword_27CE59D38);
  sub_21D106918(v458, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v440, type metadata accessor for TTRRemindersListViewModel.Item);
  v384 = v436;
  v385 = v413;
  v413(v426, v436);
LABEL_244:
  sub_21D0CF7E0(v422, &qword_27CE59D38);
  sub_21D0CF7E0(v427, &qword_27CE59D38);
  sub_21D106918(v424, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v444, type metadata accessor for TTRRemindersListViewModel.Item);
  v385(v428, v384);
  sub_21D0CF7E0(v435, &qword_27CE5A438);
  sub_21D106918(v429, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  (*v416)(v452, v434);
  sub_21D106918(v441, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v453, type metadata accessor for TTRRemindersListViewModel.Item);
  v387 = v437;
LABEL_245:
  sub_21D106918(v387, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_246:
  if (qword_280D0F188 != -1)
  {
LABEL_276:
    swift_once();
  }

  v388 = sub_21DBF84BC();
  __swift_project_value_buffer(v388, qword_280D0F190);
  v389 = v131;
  v390 = sub_21DBF84AC();
  v391 = sub_21DBFAEBC();

  if (os_log_type_enabled(v390, v391))
  {
    v392 = swift_slowAlloc();
    v393 = swift_slowAlloc();
    v521 = v393;
    *v392 = v466;
    swift_getErrorValue();
    v394 = sub_21DBFC74C();
    v396 = sub_21D0CDFB4(v394, v395, &v521);

    *(v392 + 4) = v396;
    _os_log_impl(&dword_21D0C9000, v390, v391, "Cannot compute move steps for indenting items {error: %s}", v392, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v393);
    MEMORY[0x223D46520](v393, -1, -1);
    MEMORY[0x223D46520](v392, -1, -1);
  }

  else
  {
  }

  return 0;
}

void *TTRRemindersListTreeViewModel.moveSteps(forOutdentingReminders:canOutdentUncommittedReminder:supportsIndentOutdentInSection:)(uint64_t a1, char a2, uint64_t (*a3)(void (**)(char *, uint64_t)), char **a4)
{
  v5 = v4;
  v487 = a4;
  v486 = a3;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D00);
  v426 = *(v427 - 1);
  MEMORY[0x28223BE20](v427);
  v428 = v422 - v8;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08);
  v430 = *(v461 - 8);
  MEMORY[0x28223BE20](v461);
  v470 = v422 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v444 = v422 - v11;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
  MEMORY[0x28223BE20](v478);
  v484 = v422 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3E8);
  MEMORY[0x28223BE20](v13 - 8);
  v452 = v422 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v453 = v422 - v16;
  MEMORY[0x28223BE20](v17);
  v431 = v422 - v18;
  MEMORY[0x28223BE20](v19);
  v432 = v422 - v20;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  v437 = *(v475 - 8);
  MEMORY[0x28223BE20](v475);
  v469 = v422 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v480 = v422 - v23;
  MEMORY[0x28223BE20](v24);
  v443 = v422 - v25;
  MEMORY[0x28223BE20](v26);
  v448 = v422 - v27;
  v458 = sub_21DBF5A5C();
  v436 = *(v458 - 8);
  MEMORY[0x28223BE20](v458);
  v429 = v422 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v447 = v422 - v30;
  MEMORY[0x28223BE20](v31);
  v449 = v422 - v32;
  MEMORY[0x28223BE20](v33);
  v433 = v422 - v34;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A430);
  MEMORY[0x28223BE20](v441);
  v440 = v422 - v35;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A438);
  MEMORY[0x28223BE20](v439);
  v456 = v422 - v36;
  v479 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v479);
  v460 = v422 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v467 = v422 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v40 - 8);
  v496 = v422 - v41;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v495);
  v494 = v422 - v42;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v536);
  v542 = v422 - v43;
  v455 = sub_21DBF5B9C();
  v435 = *(v455 - 8);
  MEMORY[0x28223BE20](v455);
  v472 = v422 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59CF0);
  v476 = *(v477 - 1);
  MEMORY[0x28223BE20](v477);
  v442 = v422 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v485 = v422 - v47;
  v505 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v434 = *(v505 - 8);
  MEMORY[0x28223BE20](v505);
  v464 = v422 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v502 = v422 - v50;
  MEMORY[0x28223BE20](v51);
  v501 = (v422 - v52);
  MEMORY[0x28223BE20](v53);
  v490 = v422 - v54;
  v493 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v451 = *(v493 - 8);
  MEMORY[0x28223BE20](v493);
  v468 = v422 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v454 = v422 - v57;
  MEMORY[0x28223BE20](v58);
  v481 = v422 - v59;
  MEMORY[0x28223BE20](v60);
  v445 = v422 - v61;
  MEMORY[0x28223BE20](v62);
  v450 = v422 - v63;
  MEMORY[0x28223BE20](v64);
  v515 = v422 - v65;
  MEMORY[0x28223BE20](v66);
  v462 = v422 - v67;
  MEMORY[0x28223BE20](v68);
  v499 = v422 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v70 - 8);
  v438 = v422 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v504 = v422 - v73;
  v74 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v491 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v514 = v422 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v513 = (v422 - v77);
  MEMORY[0x28223BE20](v78);
  v521 = v422 - v79;
  MEMORY[0x28223BE20](v80);
  v512 = v422 - v81;
  MEMORY[0x28223BE20](v82);
  v541 = v422 - v83;
  MEMORY[0x28223BE20](v84);
  v540 = v422 - v85;
  MEMORY[0x28223BE20](v86);
  v527 = v422 - v87;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A418);
  v446 = *(v534 - 8);
  MEMORY[0x28223BE20](v534);
  v519 = (v422 - v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A420);
  MEMORY[0x28223BE20](v89 - 8);
  v507 = v422 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v506 = (v422 - v92);
  MEMORY[0x28223BE20](v93);
  v516 = v422 - v94;
  MEMORY[0x28223BE20](v95);
  v539 = v422 - v96;
  v97 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v97 - 8);
  v503 = v422 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v474 = (v422 - v100);
  v101 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v457 = v422 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v482 = v422 - v105;
  MEMORY[0x28223BE20](v106);
  v463 = v422 - v107;
  MEMORY[0x28223BE20](v108);
  v471 = v422 - v109;
  MEMORY[0x28223BE20](v110);
  v483 = v422 - v111;
  MEMORY[0x28223BE20](v112);
  v508 = v422 - v113;
  MEMORY[0x28223BE20](v114);
  v473 = v422 - v115;
  MEMORY[0x28223BE20](v116);
  v459 = v422 - v117;
  MEMORY[0x28223BE20](v118);
  v523 = v422 - v119;
  MEMORY[0x28223BE20](v120);
  v538 = v422 - v121;
  MEMORY[0x28223BE20](v122);
  *&v488 = v422 - v123;
  MEMORY[0x28223BE20](v124);
  v511 = (v422 - v125);
  MEMORY[0x28223BE20](v126);
  v128 = v422 - v127;
  MEMORY[0x28223BE20](v129);
  v131 = v422 - v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v132 - 8);
  v526 = v422 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v134);
  v136 = v422 - v135;
  MEMORY[0x28223BE20](v137);
  v139 = v422 - v138;
  v545 = a1;
  v543 = a2;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
  sub_21D2F89FC(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v537 = v74;
  v140 = sub_21DBFA42C();
  v466 = 0;
  v141 = v102;
  v547 = v140;
  v142 = v102 + 56;
  v532 = *(v102 + 56);
  v532(v139, 1, 1, v101);

  v143 = sub_21D263398(v139);

  v489 = v139;
  sub_21D0CF7E0(v139, &unk_27CE5CD80);
  v144 = v143;
  v145 = *(v143 + 16);
  v533 = v5;
  v522 = v101;
  v510 = v141;
  if (v145)
  {
    v146 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v147 = v141;
    v500 = v144;
    v148 = v144 + v146;
    sub_21D104E74(v144 + v146, v131, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21D106918(v131, type metadata accessor for TTRRemindersListViewModel.Item);
    if (EnumCaseMultiPayload)
    {
      v150 = v500;
    }

    else
    {
      v545 = MEMORY[0x277D84F90];
      v151 = *(v147 + 72);
      v152 = v142;
      v153 = v489;
      do
      {
        sub_21D104E74(v148, v128, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D104E74(v128, v153, type metadata accessor for TTRRemindersListViewModel.Item);
        v532(v153, 0, 1, v522);

        v154 = sub_21D263398(v153);
        v5 = v533;

        sub_21D0CF7E0(v153, &unk_27CE5CD80);
        sub_21D106918(v128, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D5624CC(v154);
        v148 += v151;
        --v145;
      }

      while (v145);

      v150 = v545;
      v142 = v152;
    }
  }

  else
  {

    v150 = MEMORY[0x277D84F90];
  }

  v531 = v142;
  v155 = v534;
  v156 = v522;
  v157 = v488;
  v498 = *(v150 + 16);
  if (v498)
  {
    v158 = 0;
    v465 = ((*(v510 + 80) + 32) & ~*(v510 + 80));
    v497 = v465 + v150;
    v530 = (v446 + 7);
    v529 = (v446 + 6);
    v525 = (v510 + 48);
    v492 = MEMORY[0x277D84F90];
    v524 = (v491 + 56);
    v159 = v474;
    v500 = v150;
    while (v158 < *(v150 + 16))
    {
      v161 = v5;
      v162 = *(v510 + 72);
      v509 = v158;
      v520 = v162;
      v163 = v511;
      sub_21D104E74(v497 + v162 * v158, v511, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104E74(v163, v157, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D2A0DC8(v157, v159, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v5 = v161;
        if ((v486(v159) & 1) == 0)
        {
          sub_21D106918(v159, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          goto LABEL_11;
        }

        v164 = v489;
        sub_21D104E74(v511, v489, type metadata accessor for TTRRemindersListViewModel.Item);
        v532(v164, 0, 1, v156);

        v165 = sub_21D263398(v164);

        v166 = v164;
        v167 = v504;
        sub_21D0CF7E0(v166, &unk_27CE5CD80);
        v168 = 0;
        v535 = *(v165 + 16);
        v518 = v165;
        v517 = v465 + v165;
        v169 = v516;
        while (2)
        {
          if (v168 == v535)
          {
            v170 = 1;
            v171 = v535;
          }

          else
          {
            if ((v168 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_259:
              __break(1u);
LABEL_260:

              sub_21D106918(v473, type metadata accessor for TTRRemindersListViewModel.Item);
              sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_252:

              goto LABEL_253;
            }

            if (v168 >= v518[2])
            {
              goto LABEL_259;
            }

            v171 = v168 + 1;
            v172 = &v517[v168 * v520];
            v173 = *(v155 + 48);
            v174 = v519;
            *v519 = v168;
            sub_21D104E74(v172, v174 + v173, type metadata accessor for TTRRemindersListViewModel.Item);
            v156 = v522;
            sub_21D0D523C(v174, v169, &qword_27CE5A418);
            v170 = 0;
          }

          (*v530)(v169, v170, 1, v155);
          v175 = v539;
          sub_21D0D523C(v169, v539, &qword_27CE5A420);
          if ((*v529)(v175, 1, v155) == 1)
          {

            v159 = v474;
            sub_21D106918(v474, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            v5 = v533;
            v157 = v488;
            goto LABEL_11;
          }

          v176 = v169;
          v177 = v167;
          v528 = *v539;
          v178 = v538;
          sub_21D2A0DC8(v539 + *(v155 + 48), v538, type metadata accessor for TTRRemindersListViewModel.Item);
          v179 = v533[10];
          sub_21D104E74(v178, v136, type metadata accessor for TTRRemindersListViewModel.Item);
          v532(v136, 0, 1, v156);
          v180 = v136;
          v181 = v136;
          v182 = v526;
          sub_21D0D3954(v181, v526, &unk_27CE5CD80);
          if ((*v525)(v182, 1, v156) == 1)
          {

            sub_21D0CF7E0(v182, &unk_27CE5CD80);
            (*v524)(v177, 1, 1, v537);
            sub_21D0CF7E0(v177, &qword_27CE5FB90);
            swift_beginAccess();
            v183 = *(v179 + 16);
            if (v183 >> 62)
            {
              v184 = sub_21DBFBD7C();
            }

            else
            {
              v184 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v136 = v180;
            v168 = v171;
            v167 = v177;
            v169 = v176;
LABEL_56:
            sub_21D0CF7E0(v136, &unk_27CE5CD80);

            if (v184 > 0)
            {
              v205 = v538;
              v206 = v489;
              sub_21D104E74(v538, v489, type metadata accessor for TTRRemindersListViewModel.Item);
              v532(v206, 0, 1, v156);

              v207 = sub_21D263398(v206);

              sub_21D0CF7E0(v206, &unk_27CE5CD80);
              v208 = v477[12];
              v209 = v477[16];
              v210 = v477[20];
              v211 = v485;
              sub_21D104E74(v511, v485, type metadata accessor for TTRRemindersListViewModel.Item);
              sub_21D104E74(v205, v211 + v208, type metadata accessor for TTRRemindersListViewModel.Item);
              *(v211 + v209) = v528;
              *(v211 + v210) = v207;
              v212 = v492;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v212 = sub_21D211D68(0, v212[2] + 1, 1, v212);
              }

              v492 = v212;
              v214 = v212[2];
              v213 = v212[3];
              v156 = v522;
              v167 = v504;
              if (v214 >= v213 >> 1)
              {
                v492 = sub_21D211D68(v213 > 1, v214 + 1, 1, v492);
              }

              sub_21D106918(v538, type metadata accessor for TTRRemindersListViewModel.Item);
              v215 = v492;
              v492[2] = v214 + 1;
              sub_21D0D523C(v485, v215 + ((*(v476 + 80) + 32) & ~*(v476 + 80)) + *(v476 + 72) * v214, &qword_27CE59CF0);
            }

            else
            {
              sub_21D106918(v538, type metadata accessor for TTRRemindersListViewModel.Item);
            }

            v155 = v534;
            continue;
          }

          break;
        }

        sub_21D104E74(v182, v523, type metadata accessor for TTRRemindersListViewModel.Item);
        v185 = swift_getEnumCaseMultiPayload();
        v186 = v182;
        if (v185 <= 5)
        {
          v136 = v180;
          if ((v185 - 2) < 3)
          {
            v168 = v171;
            v187 = v499;
            sub_21D2A0DC8(v523, v499, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v188 = v187;
            v167 = v504;
            sub_21D2A0DC8(v188, v504, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            v189 = v537;
            swift_storeEnumTagMultiPayload();
            v190 = v179;

            goto LABEL_49;
          }

          if (v185 >= 2)
          {
            v168 = v171;
            v190 = v179;

            sub_21D106918(v523, type metadata accessor for TTRRemindersListViewModel.Item);
            v167 = v177;
            *v177 = 0;
            v189 = v537;
          }

          else
          {
            v192 = v503;
            sub_21D2A0DC8(v523, v503, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            sub_21D104E74(v192, v501, type metadata accessor for TTRRemindersListViewModel.SectionID);
            LOBYTE(v192) = swift_getEnumCaseMultiPayload();

            v167 = v177;
            v193 = 1 << v192;
            v168 = v171;
            if (((1 << v192) & 0x17E) != 0)
            {
              sub_21D106918(v501, type metadata accessor for TTRRemindersListViewModel.SectionID);
              v194 = v490;
              v190 = v179;
              goto LABEL_46;
            }

            v194 = v490;
            v190 = v179;
            if ((v193 & 0x81) != 0)
            {
LABEL_46:
              v196 = v503;
              sub_21D104E74(v503, v194, type metadata accessor for TTRRemindersListViewModel.SectionID);
              sub_21D106918(v196, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            }

            else
            {
              sub_21D106918(v503, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
              *v194 = *v501;
              swift_storeEnumTagMultiPayload();
            }

            sub_21D2A0DC8(v194, v177, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v189 = v537;
          }

          swift_storeEnumTagMultiPayload();
LABEL_49:
          sub_21D106918(v186, type metadata accessor for TTRRemindersListViewModel.Item);
          (*v524)(v167, 0, 1, v189);
          v197 = v527;
          sub_21D2A0DC8(v167, v527, type metadata accessor for TTRRemindersListViewModel.ItemID);
          swift_beginAccess();
          v199 = *(v190 + 24);
          if (*(v199 + 16) && (v200 = sub_21D181E00(v197, v198), (v201 & 1) != 0))
          {
            v202 = *(*(v199 + 56) + 8 * v200);
            swift_endAccess();
            v203 = *(*v202 + 136);
            swift_beginAccess();
            v204 = *(v202 + v203);
            if (v204 >> 62)
            {
              v184 = sub_21DBFBD7C();
            }

            else
            {
              v184 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v156 = v522;
          }

          else
          {
            swift_endAccess();
            v184 = 0;
          }

          v169 = v516;
          sub_21D106918(v527, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_56;
        }

        v136 = v180;
        if (v185 <= 7)
        {
          v168 = v171;
          v167 = v177;
          if (v185 == 6)
          {
            v195 = 1;
            goto LABEL_39;
          }

          *v177 = 2;
        }

        else
        {
          v167 = v177;
          v168 = v171;
          if (v185 != 8)
          {
            v190 = v179;
            if (v185 == 9)
            {
              v191 = 3;
            }

            else
            {
              v191 = 5;
            }

            *v177 = v191;
            v189 = v537;
            swift_storeEnumTagMultiPayload();

            goto LABEL_49;
          }

          v195 = 4;
LABEL_39:
          *v167 = v195;
        }

        v189 = v537;
        swift_storeEnumTagMultiPayload();
        v190 = v179;

        sub_21D106918(v523, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_49;
      }

      sub_21D106918(v157, type metadata accessor for TTRRemindersListViewModel.Item);
      v5 = v161;
      if (qword_280D0F188 != -1)
      {
        swift_once();
      }

      v216 = sub_21DBF84BC();
      __swift_project_value_buffer(v216, qword_280D0F190);
      v217 = sub_21DBF84AC();
      v218 = sub_21DBFAECC();
      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        *v219 = 0;
        _os_log_impl(&dword_21D0C9000, v217, v218, "Unexpected item type", v219, 2u);
        v157 = v488;
        MEMORY[0x223D46520](v219, -1, -1);
      }

      v155 = v534;
LABEL_11:
      v160 = v509 + 1;
      sub_21D106918(v511, type metadata accessor for TTRRemindersListViewModel.Item);
      v158 = v160;
      v150 = v500;
      if (v160 == v498)
      {

        v221 = v492;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    swift_once();
    goto LABEL_254;
  }

  v221 = MEMORY[0x277D84F90];
LABEL_75:
  v222 = v507;
  v223 = v508;
  if (!*(v547 + 16))
  {
LABEL_234:
    v518 = MEMORY[0x277D84F90];
    v486 = MEMORY[0x277D84F90];
LABEL_235:

    return v518;
  }

  v529 = (v446 + 7);
  v528 = (v446 + 6);
  v523 = 0x800000021DC43E30;
  v520 = 0x800000021DC43E00;
  v525 = 0x800000021DC43DE0;
  v224 = (v434 + 6);
  v465 = (v435 + 16);
  v487 = (v436 + 16);
  v434 = (v436 + 32);
  v517 = (v437 + 48);
  v474 = (v436 + 8);
  v446 = (v435 + 8);
  *&v220 = 136315138;
  v488 = v220;
  v486 = MEMORY[0x277D84F90];
  v518 = MEMORY[0x277D84F90];
  v524 = v224;
  while (1)
  {
    if (!v221[2])
    {
      goto LABEL_235;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v225 = v221[2];
      if (!v225)
      {
        goto LABEL_233;
      }

      goto LABEL_80;
    }

    v221 = sub_21D256C7C(v221);
    v225 = v221[2];
    if (!v225)
    {
LABEL_233:
      __break(1u);
      goto LABEL_234;
    }

LABEL_80:
    v226 = v225 - 1;
    v227 = v221 + ((*(v476 + 80) + 32) & ~*(v476 + 80)) + *(v476 + 72) * v226;
    v492 = v221;
    v221[2] = v226;
    v228 = v442;
    sub_21D0D523C(v227, v442, &qword_27CE59CF0);
    v229 = v477[12];
    v516 = *(v228 + v477[16]);
    v230 = *(v228 + v477[20]);
    sub_21D2A0DC8(v228, v459, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D2A0DC8(v228 + v229, v473, type metadata accessor for TTRRemindersListViewModel.Item);
    v231 = v466;
    sub_21D285AF8(v462);
    v466 = v231;
    if (v231)
    {
      goto LABEL_260;
    }

    sub_21DBF5B8C();
    v232 = 0;
    v233 = v230[2];
    v530 = v230;
    v527 = v233;
LABEL_84:
    if (v232 == v233)
    {
      v234 = 1;
      v535 = v233;
      v235 = v534;
    }

    else
    {
      if ((v232 & 0x8000000000000000) != 0)
      {
        goto LABEL_266;
      }

      if (v232 >= v230[2])
      {
        goto LABEL_267;
      }

      v236 = v232 + 1;
      v237 = v230 + ((*(v510 + 80) + 32) & ~*(v510 + 80)) + *(v510 + 72) * v232;
      v235 = v534;
      v238 = *(v534 + 48);
      v239 = v519;
      *v519 = v232;
      sub_21D104E74(v237, v239 + v238, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0D523C(v239, v222, &qword_27CE5A418);
      v234 = 0;
      v535 = v236;
    }

    v240 = v506;
    (*v529)(v222, v234, 1, v235);
    sub_21D0D523C(v222, v240, &qword_27CE5A420);
    if ((*v528)(v240, 1, v235) != 1)
    {
      v526 = *v240;
      sub_21D2A0DC8(v240 + *(v235 + 48), v223, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v540);
      v241 = v547;
      if (!*(v547 + 16) || (sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(), v242 = sub_21DBFC82C(), v243 = -1 << *(v241 + 32), v244 = v242 & ~v243, ((*(v241 + 56 + ((v244 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v244) & 1) == 0))
      {
LABEL_82:
        sub_21D106918(v540, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v223 = v508;
        sub_21D106918(v508, type metadata accessor for TTRRemindersListViewModel.Item);
        v222 = v507;
        goto LABEL_83;
      }

      v538 = ~v243;
      v539 = *(v491 + 72);
      while (2)
      {
        v247 = v541;
        sub_21D104E74(*(v241 + 48) + v539 * v244, v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v248 = *(v536 + 48);
        v249 = v542;
        sub_21D104E74(v247, v542, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D104E74(v540, v249 + v248, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v250 = swift_getEnumCaseMultiPayload();
        if (v250 <= 1)
        {
          if (!v250)
          {
            v251 = v512;
            sub_21D104E74(v542, v512, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
              v252 = type metadata accessor for TTRRemindersListViewModel.SectionID;
              goto LABEL_122;
            }

            v273 = v542 + v248;
            v274 = v502;
            sub_21D2A0DC8(v273, v502, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v275 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v251, v274);
            sub_21D106918(v274, type metadata accessor for TTRRemindersListViewModel.SectionID);
            sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D106918(v251, type metadata accessor for TTRRemindersListViewModel.SectionID);
            if (v275)
            {
              goto LABEL_164;
            }

LABEL_94:
            sub_21D106918(v542, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_95:
            v244 = (v244 + 1) & v538;
            if (((*(v241 + 56 + ((v244 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v244) & 1) == 0)
            {
              goto LABEL_82;
            }

            continue;
          }

          v251 = v521;
          sub_21D104E74(v542, v521, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v255 = v542 + v248;
            v256 = v515;
            sub_21D2A0DC8(v255, v515, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D0D8CF0(0, &qword_280D17680);
            if (sub_21DBFB63C())
            {
              v257 = *(v493 + 20);
              v258 = *(v495 + 48);
              v259 = v251 + v257;
              v260 = v494;
              sub_21D0D3954(v259, v494, &unk_27CE5CD70);
              sub_21D0D3954(v256 + v257, v260 + v258, &unk_27CE5CD70);
              v261 = *v524;
              v262 = v505;
              if ((*v524)(v260, 1, v505) == 1)
              {
                sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v263 = v261(v260 + v258, 1, v262) == 1;
                v264 = v260;
                if (v263)
                {
                  sub_21D0CF7E0(v260, &unk_27CE5CD70);
LABEL_163:
                  sub_21D106918(v515, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  sub_21D106918(v521, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_164:
                  sub_21D106918(v542, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  v223 = v508;
                  sub_21D104E74(v508, v483, type metadata accessor for TTRRemindersListViewModel.Item);
                  v286 = swift_getEnumCaseMultiPayload();
                  if (v286 <= 3)
                  {
                    v222 = v507;
                    v287 = v471;
                    if (v286 >= 2)
                    {
                      goto LABEL_177;
                    }

LABEL_169:
                    sub_21D106918(v483, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_170:
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_171;
                  }

                  v222 = v507;
                  v287 = v471;
                  if ((v286 - 5) < 4)
                  {
                    goto LABEL_169;
                  }

                  if ((v286 - 9) < 2)
                  {
                    goto LABEL_170;
                  }

LABEL_177:
                  v297 = v467;
                  sub_21D2A0DC8(v483, v467, type metadata accessor for TTRRemindersListViewModel.ReminderID);
                  swift_storeEnumTagMultiPayload();
                  v298 = swift_getEnumCaseMultiPayload();
                  if (v298 < 2)
                  {
                    sub_21D106918(v297, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                    sub_21DBF5AFC();
                    v299 = v438;
                    v300 = v540;
                    sub_21D1AAD70(v540, v438);
                    sub_21D0CF7E0(v299, &qword_27CE5FB90);
                    sub_21D106918(v300, type metadata accessor for TTRRemindersListViewModel.ItemID);
                    sub_21D106918(v223, type metadata accessor for TTRRemindersListViewModel.Item);
                    goto LABEL_83;
                  }

                  v287 = v471;
                  if (v298 == 2)
                  {
                    sub_21D106918(v467, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
                  }

LABEL_171:
                  if (qword_280D0F188 != -1)
                  {
                    swift_once();
                  }

                  v288 = sub_21DBF84BC();
                  __swift_project_value_buffer(v288, qword_280D0F190);
                  sub_21D104E74(v223, v287, type metadata accessor for TTRRemindersListViewModel.Item);
                  v289 = sub_21DBF84AC();
                  v290 = sub_21DBFAECC();
                  if (os_log_type_enabled(v289, v290))
                  {
                    v291 = swift_slowAlloc();
                    v292 = swift_slowAlloc();
                    v545 = v292;
                    *v291 = v488;
                    v293 = sub_21D25D250();
                    v295 = v294;
                    sub_21D106918(v287, type metadata accessor for TTRRemindersListViewModel.Item);
                    v296 = sub_21D0CDFB4(v293, v295, &v545);
                    v223 = v508;

                    *(v291 + 4) = v296;
                    _os_log_impl(&dword_21D0C9000, v289, v290, "TTRRemindersListTreeViewModel: item does not support outdent {item: %s}", v291, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v292);
                    MEMORY[0x223D46520](v292, -1, -1);
                    MEMORY[0x223D46520](v291, -1, -1);
                  }

                  else
                  {

                    sub_21D106918(v287, type metadata accessor for TTRRemindersListViewModel.Item);
                  }

                  sub_21D106918(v540, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v223, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_83:
                  v230 = v530;
                  v233 = v527;
                  v232 = v535;
                  goto LABEL_84;
                }

LABEL_134:
                sub_21D0CF7E0(v264, &qword_27CE58388);
              }

              else
              {
                sub_21D0D3954(v260, v496, &unk_27CE5CD70);
                if (v261(v260 + v258, 1, v262) == 1)
                {
                  sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
                  sub_21D106918(v496, type metadata accessor for TTRRemindersListViewModel.SectionID);
                  v264 = v260;
                  goto LABEL_134;
                }

                v283 = v464;
                sub_21D2A0DC8(v260 + v258, v464, type metadata accessor for TTRRemindersListViewModel.SectionID);
                v284 = v496;
                v285 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v496, v283);
                sub_21D106918(v283, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
                sub_21D106918(v284, type metadata accessor for TTRRemindersListViewModel.SectionID);
                sub_21D0CF7E0(v260, &unk_27CE5CD70);
                if (v285)
                {
                  goto LABEL_163;
                }
              }
            }

            else
            {
              sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
            }

            sub_21D106918(v515, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            sub_21D106918(v521, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            goto LABEL_94;
          }

          sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v252 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_122:
          v271 = v252;
          v272 = v251;
LABEL_124:
          sub_21D106918(v272, v271);
LABEL_125:
          sub_21D0CF7E0(v542, &qword_27CE58AD0);
          goto LABEL_95;
        }

        break;
      }

      if (v250 == 2)
      {
        v253 = v513;
        sub_21D104E74(v542, v513, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v254 = *v253;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v245 = *(v542 + v248);
          sub_21D0D8CF0(0, &qword_280D17680);
          v246 = sub_21DBFB63C();

          sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (v246)
          {
            goto LABEL_164;
          }

          goto LABEL_94;
        }

        sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);

        goto LABEL_125;
      }

      v265 = v514;
      sub_21D104E74(v542, v514, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v271 = type metadata accessor for TTRRemindersListViewModel.ItemID;
        v272 = v541;
        goto LABEL_124;
      }

      v266 = *v265;
      if (v266 > 2)
      {
        if (v266 == 3)
        {
          v269 = 0xD00000000000001FLL;
          v276 = &v544;
        }

        else
        {
          if (v266 == 4)
          {
            v270 = 0xE700000000000000;
            v269 = 0x6D657449706974;
            goto LABEL_138;
          }

          v269 = 0xD00000000000001DLL;
          v276 = &v546;
        }

        v270 = *(v276 - 32);
      }

      else
      {
        v267 = 0xD000000000000012;
        if (v266 == 1)
        {
          v267 = 0x7367617468736168;
        }

        v268 = 0xEC0000006D657449;
        if (v266 != 1)
        {
          v268 = v525;
        }

        if (*v265)
        {
          v269 = v267;
        }

        else
        {
          v269 = 0x6574656C706D6F63;
        }

        if (*v265)
        {
          v270 = v268;
        }

        else
        {
          v270 = 0xED00006D65744964;
        }
      }

LABEL_138:
      v277 = *(v542 + v248);
      if (v277 <= 2)
      {
        if (*(v542 + v248))
        {
          if (v277 == 1)
          {
            v278 = 0x7367617468736168;
          }

          else
          {
            v278 = 0xD000000000000012;
          }

          if (v277 == 1)
          {
            v279 = 0xEC0000006D657449;
          }

          else
          {
            v279 = v525;
          }

          if (v269 != v278)
          {
LABEL_158:
            v282 = sub_21DBFC64C();

            sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v282)
            {
              goto LABEL_164;
            }

            goto LABEL_94;
          }
        }

        else
        {
          v279 = 0xED00006D65744964;
          if (v269 != 0x6574656C706D6F63)
          {
            goto LABEL_158;
          }
        }

LABEL_157:
        if (v270 == v279)
        {

          sub_21D106918(v541, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_164;
        }

        goto LABEL_158;
      }

      if (v277 == 3)
      {
        v280 = 0xD00000000000001FLL;
        v281 = &v544;
      }

      else
      {
        if (v277 == 4)
        {
          v279 = 0xE700000000000000;
          if (v269 != 0x6D657449706974)
          {
            goto LABEL_158;
          }

          goto LABEL_157;
        }

        v280 = 0xD00000000000001DLL;
        v281 = &v546;
      }

      v279 = *(v281 - 32);
      if (v269 != v280)
      {
        goto LABEL_158;
      }

      goto LABEL_157;
    }

    sub_21D104E74(v462, v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v301 = v440;
    (*v465)(v440, v472, v455);
    v302 = v441;
    v303 = *(v441 + 36);
    v304 = sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28]);
    sub_21DBFAC3C();
    v437 = v304;
    sub_21DBFACAC();
    v305 = v456;
    sub_21D0D3954(v301, v456, &qword_27CE5A430);
    v306 = *(v439 + 36);
    v436 = *v487;
    (v436)(v305 + v306, v301 + v303, v458);
    v307 = v301;
    v308 = v306;
    sub_21D0CF7E0(v307, &qword_27CE5A430);
    v309 = *(v302 + 40);
    v310 = sub_21D2F89FC(&qword_280D1B840, MEMORY[0x277CC9A08]);
    if ((sub_21DBFA10C() & 1) == 0)
    {
      break;
    }

LABEL_182:

    sub_21D0CF7E0(v456, &qword_27CE5A438);
    sub_21D106918(v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    (*v446)(v472, v455);
    sub_21D106918(v462, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v473, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);
    v221 = v492;
    if (!*(v547 + 16))
    {
      goto LABEL_235;
    }
  }

  v535 = 0;
  v485 = 0;
  v424 = v516 + 1;
  v311 = __OFADD__(v516, 1);
  v425 = v311;
  v423 = v308;
  v422[2] = v309;
  v422[1] = v310;
LABEL_188:
  v312 = v433;
  v313 = v458;
  (v436)(v433, v456 + v308, v458);
  sub_21DBFACBC();
  (*v434)(v449, v312, v313);
  v314 = sub_21DBF5BAC();
  if ((v314 & 0x8000000000000000) != 0)
  {
    goto LABEL_272;
  }

  v315 = v314;
  if (v314 >= v530[2])
  {
    goto LABEL_273;
  }

  v316 = (*(v510 + 80) + 32) & ~*(v510 + 80);
  v499 = *(v510 + 72);
  sub_21D104E74(v530 + v316 + v499 * v314, v463, type metadata accessor for TTRRemindersListViewModel.Item);
  v317 = v466;
  sub_21D285AF8(v445);
  v466 = v317;
  if (v317)
  {

    sub_21D106918(v463, type metadata accessor for TTRRemindersListViewModel.Item);
    (*v474)(v449, v458);
    sub_21D0CF7E0(v456, &qword_27CE5A438);
    sub_21D106918(v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    (*v446)(v472, v455);
    sub_21D106918(v462, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v473, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);

    goto LABEL_251;
  }

  v538 = v316;
  v319 = v533[3];
  v318 = v533[4];
  ObjectType = swift_getObjectType();
  v321 = v489;
  sub_21D104E74(v473, v489, type metadata accessor for TTRRemindersListViewModel.Item);
  v322 = v522;
  v323 = v532;
  v532(v321, 0, 1, v522);
  v539 = v315;
  v324 = __OFSUB__(v315, v535);
  v325 = v315 - v535;
  if (v324)
  {
    goto LABEL_274;
  }

  v326 = v484;
  v323(v484, 1, 1, v322);
  sub_21D0F02F4(v321, v326, &unk_27CE5CD80);
  *(v326 + *(v478 + 36)) = v325;
  v327 = v326;
  v328 = *(v318 + 32);
  v329 = v432;
  v526 = v319;
  v516 = ObjectType;
  v330 = ObjectType;
  v331 = v318 + 32;
  v500 = v328;
  v328(v326, v330, v318);
  v332 = v329;
  sub_21D0CF7E0(v327, &qword_27CE58900);
  v333 = *v517;
  v334 = v329;
  v335 = v475;
  if ((*v517)(v334, 1, v475) == 1)
  {

    sub_21D0CF7E0(v332, &qword_27CE5A3E8);
    sub_21D2A0F60();
    v418 = swift_allocError();
    *v419 = 0;
    v466 = v418;
    swift_willThrow();
LABEL_264:
    sub_21D106918(v445, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v463, type metadata accessor for TTRRemindersListViewModel.Item);
    (*v474)(v449, v458);
    sub_21D0CF7E0(v456, &qword_27CE5A438);
    sub_21D106918(v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    (*v446)(v472, v455);
    sub_21D106918(v462, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v473, type metadata accessor for TTRRemindersListViewModel.Item);
    v403 = v459;
    goto LABEL_247;
  }

  v336 = v318;
  sub_21D0D523C(v332, v448, &qword_27CE59D38);
  sub_21D104E74(v459, v321, type metadata accessor for TTRRemindersListViewModel.Item);
  v323(v321, 0, 1, v522);
  if (v425)
  {
    goto LABEL_275;
  }

  v511 = v333;
  v337 = &v424[v485];
  if (__OFADD__(v424, v485))
  {
    goto LABEL_276;
  }

  v338 = v484;
  v532(v484, 1, 1, v522);
  sub_21D0F02F4(v321, v338, &unk_27CE5CD80);
  *(v338 + *(v478 + 36)) = v337;
  v339 = v431;
  v500(v338, v516, v336);
  sub_21D0CF7E0(v338, &qword_27CE58900);
  if ((v511)(v339, 1, v335) == 1)
  {

    sub_21D0CF7E0(v339, &qword_27CE5A3E8);
    sub_21D2A0F60();
    v420 = swift_allocError();
    *v421 = 0;
    v466 = v420;
    swift_willThrow();
    sub_21D0CF7E0(v448, &qword_27CE59D38);
    goto LABEL_264;
  }

  v509 = v331;
  v340 = v443;
  sub_21D0D523C(v339, v443, &qword_27CE59D38);
  v341 = *(v461 + 48);
  v342 = *(v461 + 64);
  v343 = v444;
  sub_21D104E74(v463, v444, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v448, v343 + v341, &qword_27CE59D38);
  sub_21D0D3954(v340, v343 + v342, &qword_27CE59D38);
  v344 = v518;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v344 = sub_21D211B38(0, v344[2] + 1, 1, v344);
  }

  v346 = v344[2];
  v345 = v344[3];
  v347 = v478;
  if (v346 >= v345 >> 1)
  {
    v344 = sub_21D211B38(v345 > 1, v346 + 1, 1, v344);
  }

  v344[2] = v346 + 1;
  v497 = (*(v430 + 80) + 32) & ~*(v430 + 80);
  v498 = *(v430 + 72);
  sub_21D0D523C(v444, v344 + v497 + v498 * v346, &qword_27CE59D08);
  v324 = __OFADD__(v485++, 1);
  if (v324)
  {
    goto LABEL_277;
  }

  v348 = v535 + 1;
  if (__OFADD__(v535, 1))
  {
    goto LABEL_278;
  }

  sub_21DBF5ACC();
  v349 = v429;
  sub_21DBF5A3C();
  v350 = sub_21DBF5A4C();
  v435 = *v474;
  v435(v349, v458);
  v351 = v527;
  if ((v350 & 1) == 0)
  {
    v351 = sub_21DBF5BAC();
  }

  if (v351 <= v539)
  {
    goto LABEL_279;
  }

  v504 = v336;
  v352 = (v539 + 1);
  v353 = v530;
  v354 = (v530 + v538 + v499 * (v539 + 1));
  v539 = MEMORY[0x277D84F90];
  v355 = v348;
  v356 = v460;
  v490 = v351;
  while (1)
  {
    v518 = v344;
    if (v351 == v352)
    {
      v535 = v355;
      v385 = v427[12];
      v386 = v427[16];
      v387 = v427[20];
      v388 = v428;
      sub_21D104E74(v459, v428, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104E74(v450, v388 + v385, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D104E74(v445, v388 + v386, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      *(v388 + v387) = v539;
      v389 = v486;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v389 = sub_21D211D44(0, *(v389 + 2) + 1, 1, v389);
      }

      v222 = v507;
      v223 = v508;
      v486 = v389;
      v391 = *(v389 + 2);
      v390 = *(v389 + 3);
      if (v391 >= v390 >> 1)
      {
        v486 = sub_21D211D44(v390 > 1, v391 + 1, 1, v486);
      }

      v392 = v458;
      v393 = v435;
      v435(v447, v458);
      sub_21D0CF7E0(v443, &qword_27CE59D38);
      sub_21D0CF7E0(v448, &qword_27CE59D38);
      sub_21D106918(v463, type metadata accessor for TTRRemindersListViewModel.Item);
      v393(v449, v392);
      v394 = v450;
      sub_21D106918(v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v395 = v486;
      *(v486 + 2) = v391 + 1;
      sub_21D0D523C(v428, v395 + ((*(v426 + 80) + 32) & ~*(v426 + 80)) + *(v426 + 72) * v391, &qword_27CE59D00);
      sub_21D2A0DC8(v445, v394, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v308 = v423;
      if (sub_21DBFA10C())
      {
        goto LABEL_182;
      }

      goto LABEL_188;
    }

    if (v352 >= v351)
    {
      goto LABEL_268;
    }

    if (v352 >= v353[2])
    {
      goto LABEL_269;
    }

    v538 = v352;
    v357 = v482;
    sub_21D104E74(v354, v482, type metadata accessor for TTRRemindersListViewModel.Item);
    v358 = *(v539 + 16);
    v359 = v357;
    v360 = v457;
    sub_21D104E74(v359, v457, type metadata accessor for TTRRemindersListViewModel.Item);
    v361 = swift_getEnumCaseMultiPayload();
    if (v361 >= 4)
    {
      if (v361 > 4)
      {
        if (v361 > 7)
        {
          v404 = v435;
          if (v361 != 8)
          {

            goto LABEL_248;
          }
        }

        else
        {
          v404 = v435;
        }

        sub_21D106918(v360, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_248;
      }
    }

    else if (v361 <= 1)
    {

      sub_21D106918(v360, type metadata accessor for TTRRemindersListViewModel.Item);
      v404 = v435;
LABEL_248:
      swift_storeEnumTagMultiPayload();
LABEL_250:
      sub_21D2A0F60();
      v405 = swift_allocError();
      *v406 = 1;
      v466 = v405;
      swift_willThrow();
      sub_21D106918(v482, type metadata accessor for TTRRemindersListViewModel.Item);
      v407 = v458;
      v404(v447, v458);
      sub_21D0CF7E0(v443, &qword_27CE59D38);
      sub_21D0CF7E0(v448, &qword_27CE59D38);
      sub_21D106918(v445, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v463, type metadata accessor for TTRRemindersListViewModel.Item);
      v404(v449, v407);
      sub_21D0CF7E0(v456, &qword_27CE5A438);
      sub_21D106918(v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      (*v446)(v472, v455);
      sub_21D106918(v462, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v473, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v459, type metadata accessor for TTRRemindersListViewModel.Item);

LABEL_251:

      goto LABEL_252;
    }

    sub_21D2A0DC8(v360, v356, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    v362 = swift_getEnumCaseMultiPayload();
    if (v362 >= 2)
    {
      if (v362 == 2)
      {

        sub_21D106918(v356, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }

      else
      {
      }

      v404 = v435;
      goto LABEL_250;
    }

    v503 = v358;
    v363 = v454;
    sub_21D2A0DC8(v356, v454, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D2A0DC8(v363, v481, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v364 = v489;
    sub_21D104E74(v473, v489, type metadata accessor for TTRRemindersListViewModel.Item);
    v365 = v522;
    v366 = v532;
    v532(v364, 0, 1, v522);
    v367 = v538 - v355;
    if (__OFSUB__(v538, v355))
    {
      goto LABEL_270;
    }

    v501 = v354;
    v535 = v355;
    v368 = v484;
    v366(v484, 1, 1, v365);
    sub_21D0F02F4(v364, v368, &unk_27CE5CD80);
    *(v368 + *(v347 + 36)) = v367;
    v369 = v453;
    v370 = v500;
    v500(v484, v516, v504);
    v371 = v484;
    sub_21D0CF7E0(v484, &qword_27CE58900);
    if ((v511)(v369, 1, v475) == 1)
    {

      sub_21D0CF7E0(v369, &qword_27CE5A3E8);
      sub_21D2A0F60();
      v397 = swift_allocError();
      *v398 = 0;
      v466 = v397;
      swift_willThrow();
      sub_21D106918(v481, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D106918(v482, type metadata accessor for TTRRemindersListViewModel.Item);
      v399 = v458;
      v400 = v435;
      v435(v447, v458);
      goto LABEL_246;
    }

    sub_21D0D523C(v369, v480, &qword_27CE59D38);
    sub_21D104E74(v463, v364, type metadata accessor for TTRRemindersListViewModel.Item);
    v366(v364, 0, 1, v365);
    v366(v371, 1, 1, v365);
    sub_21D0F02F4(v364, v371, &unk_27CE5CD80);
    *(v371 + *(v478 + 36)) = v503;
    v372 = v452;
    v370(v371, v516, v504);
    sub_21D0CF7E0(v371, &qword_27CE58900);
    if ((v511)(v372, 1, v475) == 1)
    {
      break;
    }

    v373 = v469;
    sub_21D0D523C(v372, v469, &qword_27CE59D38);
    v374 = *(v461 + 48);
    v375 = *(v461 + 64);
    v376 = v470;
    sub_21D104E74(v482, v470, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v480, v376 + v374, &qword_27CE59D38);
    sub_21D0D3954(v373, v376 + v375, &qword_27CE59D38);
    v344 = v518;
    v378 = v518[2];
    v377 = v518[3];
    if (v378 >= v377 >> 1)
    {
      v344 = sub_21D211B38(v377 > 1, v378 + 1, 1, v518);
    }

    v356 = v460;
    v379 = v538;
    v380 = v501;
    v344[2] = v378 + 1;
    sub_21D0D523C(v470, v344 + v497 + v378 * v498, &qword_27CE59D08);
    sub_21D104E74(v481, v468, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v347 = v478;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v539 = sub_21D211D1C(0, *(v539 + 16) + 1, 1, v539);
    }

    v383 = *(v539 + 16);
    v382 = *(v539 + 24);
    if (v383 >= v382 >> 1)
    {
      v539 = sub_21D211D1C(v382 > 1, v383 + 1, 1, v539);
    }

    sub_21D0CF7E0(v469, &qword_27CE59D38);
    sub_21D0CF7E0(v480, &qword_27CE59D38);
    sub_21D106918(v481, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v482, type metadata accessor for TTRRemindersListViewModel.Item);
    v384 = v539;
    *(v539 + 16) = v383 + 1;
    sub_21D2A0DC8(v468, v384 + ((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v383, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v352 = (v379 + 1);
    v354 = (v380 + v499);
    v355 = v535 + 1;
    v353 = v530;
    v351 = v490;
    if (__OFADD__(v535, 1))
    {
      goto LABEL_271;
    }
  }

  sub_21D0CF7E0(v372, &qword_27CE5A3E8);
  sub_21D2A0F60();
  v401 = swift_allocError();
  *v402 = 0;
  v466 = v401;
  swift_willThrow();
  sub_21D0CF7E0(v480, &qword_27CE59D38);
  sub_21D106918(v481, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v482, type metadata accessor for TTRRemindersListViewModel.Item);
  v399 = v458;
  v400 = v435;
  v435(v447, v458);
LABEL_246:
  sub_21D0CF7E0(v443, &qword_27CE59D38);
  sub_21D0CF7E0(v448, &qword_27CE59D38);
  sub_21D106918(v445, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v463, type metadata accessor for TTRRemindersListViewModel.Item);
  v400(v449, v399);
  sub_21D0CF7E0(v456, &qword_27CE5A438);
  sub_21D106918(v450, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  (*v446)(v472, v455);
  sub_21D106918(v462, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v473, type metadata accessor for TTRRemindersListViewModel.Item);
  v403 = v459;
LABEL_247:
  sub_21D106918(v403, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_253:
  if (qword_280D0F188 != -1)
  {
    goto LABEL_280;
  }

LABEL_254:
  v408 = sub_21DBF84BC();
  __swift_project_value_buffer(v408, qword_280D0F190);
  v409 = v466;
  v410 = v466;
  v411 = sub_21DBF84AC();
  v412 = sub_21DBFAEBC();

  if (os_log_type_enabled(v411, v412))
  {
    v413 = swift_slowAlloc();
    v414 = swift_slowAlloc();
    v545 = v414;
    *v413 = v488;
    swift_getErrorValue();
    v415 = sub_21DBFC74C();
    v417 = sub_21D0CDFB4(v415, v416, &v545);

    *(v413 + 4) = v417;
    _os_log_impl(&dword_21D0C9000, v411, v412, "Cannot compute move steps for indenting items {error: %s}", v413, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v414);
    MEMORY[0x223D46520](v414, -1, -1);
    MEMORY[0x223D46520](v413, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t TTRRemindersListTreeViewModel.diff(with:updatedReminderObjectIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v15[5] = v7;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v15[3] = swift_getObjectType();
  v15[4] = *(v11 + 8);
  v15[0] = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v3;
  v12[4] = a1;
  v13 = *(v8 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_21DBF8E0C();

  TTRTreeContentsQueryable<>.diff(with:contentEqualityChecker:)(v15, sub_21D2A0FB4, v12, ObjectType, v13, &protocol witness table for TTRRemindersListViewModel.Item, &v16);
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_0(v15);
  *a3 = v16;
  return result;
}

BOOL sub_21D2902C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29[-v13];
  v16 = *(v15 + 56);
  sub_21D104E74(a1, &v29[-v13], type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D104E74(a2, &v14[v16], type metadata accessor for TTRRemindersListViewModel.Item);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  if (swift_getEnumCaseMultiPayload() == 2 && swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D2A0DC8(&v14[v16], v11, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v17 = sub_21D1E21BC(*v11, a3);
    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D106918(v14, type metadata accessor for TTRRemindersListViewModel.Item);
    if (v17)
    {
      return 0;
    }
  }

  else
  {
    v18 = _s15RemindersUICore25TTRRemindersListViewModelC4ItemO13contentsEqualySbAE_AEtFZ_0(a1, a2);
    sub_21D0CF7E0(v14, &qword_27CE5A530);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
  v19 = sub_21D2916C8(v8, sub_21D181E00);

  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v19)
  {
    v20 = v19 + *(*v19 + 128);
    swift_beginAccess();
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
    v23 = sub_21D2916C8(v8, sub_21D181E00);

    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v23)
    {
      v24 = v23 + *(*v23 + 128);
      swift_beginAccess();
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);

      if (v22)
      {
        return (v26 & 1) != 0;
      }

      if (v21 == v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t TTRRemindersListTreeViewModel.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(v0 + 80);
  v9 = MEMORY[0x277D84F90];
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  sub_21D345F70(v3, v4, v4, &v9);
  sub_21D0CF7E0(v3, &unk_27CE5CD80);
  v8 = v9;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v6 = sub_21DBFA07C();

  swift_bridgeObjectRelease_n();
  return v6;
}

uint64_t sub_21D290848(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void, __n128), void (*a4)(char *, uint64_t, uint64_t, uint64_t *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v16 = MEMORY[0x277D84F90];
  v12 = a3(0, v9);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  a4(v11, v4, v4, &v16);

  sub_21D0CF7E0(v11, a1);
  v15 = v16;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v13 = sub_21DBFA07C();
  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t sub_21D2909DC()
{

  v0 = sub_21D290848(&unk_27CE5CD80, &unk_21DC0CE80, type metadata accessor for TTRRemindersListViewModel.Item, sub_21D345F70);

  return v0;
}

uint64_t TTRRemindersListTreeViewModel.editingSessionState(for:)()
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

  v4 = *(*v3 + 128);
  swift_beginAccess();
  v5 = *(v3 + v4);

  return v5;
}

uint64_t TTRRemindersListTreeViewModel.removeEditingSessionState(for:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v3 = sub_21D2916C8(v2, sub_21D181E00);

  result = sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v3)
  {
    v5 = *(*v3 + 128);
    swift_beginAccess();
    *(v3 + v5) = 0;
  }

  return result;
}

uint64_t sub_21D290CA4()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v3 = sub_21D2916C8(v2, sub_21D181E00);

  result = sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v3)
  {
    v5 = *(*v3 + 128);
    swift_beginAccess();
    *(v3 + v5) = 0;
  }

  return result;
}

uint64_t TTRRemindersListUncommittedReminder.init(placeholderReminder:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D0D523C(a2, a3, &qword_27CE5A3A0);
  v5 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  *(a3 + *(v5 + 24)) = 0;
  return sub_21D2A0DC8(a1, a3 + *(v5 + 20), type metadata accessor for TTRRemindersListViewModel.Item);
}

id TTRRemindersListObjectIDOnlyReminderIDProvider.makeReminderID(objectID:sectionID:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  *a2 = a1;

  return a1;
}

id sub_21D290EE0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  *a2 = a1;

  return a1;
}

id TTRRemindersListObjectIDAndSectionIDCombinedReminderIDProvider.makeReminderID(objectID:sectionID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  sub_21D104E74(a2, &a3[v5], type metadata accessor for TTRRemindersListViewModel.SectionID);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 0, 1, v6);
  *a3 = a1;

  return a1;
}

id sub_21D29103C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  sub_21D104E74(a2, &a3[v5], type metadata accessor for TTRRemindersListViewModel.SectionID);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 0, 1, v6);
  *a3 = a1;

  return a1;
}

uint64_t sub_21D2910F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v7 = v4;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  if (qword_27CE565F0 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5A660);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "newChild.parentNode should be nil.", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }

LABEL_6:
    v14 = *(*v7 + 136);
    swift_beginAccess();
    v15 = *(v7 + v14);
    if (v15 >> 62)
    {
      if (sub_21DBFBD7C() < a2)
      {
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < a2)
    {
      goto LABEL_11;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
  }

  a3(a2, a2, a1);
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a1;

  a4(inited, v7);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_21D291324(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v5 = v4;
  v7 = sub_21DBF5A5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v25 = a1;
  sub_21DBF5A6C();
  v14 = *v5;
  v32 = v5;
  v31 = *(v14 + 136);
  sub_21DBF5B9C();
  sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28]);
  v30 = (v8 + 8);
  v29 = xmmword_21DC09CF0;
  while (1)
  {
    sub_21DBFACAC();
    sub_21D2F89FC(&qword_280D1B840, MEMORY[0x277CC9A08]);
    v15 = sub_21DBFA10C();
    (*v30)(v10, v7);
    if (v15)
    {
      sub_21D0CF7E0(v13, &qword_27CE5EA80);
      swift_beginAccess();
      sub_21D25CF18(v25, v26, v27);
      return swift_endAccess();
    }

    v16 = sub_21DBFAD3C();
    v18 = *v17;
    v16(v33, 0);
    sub_21DBFACBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = v29;
    v21 = v31;
    v20 = v32;
    result = swift_beginAccess();
    v23 = *(v20 + v21);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x223D44740](v18);
      goto LABEL_7;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_7:
    *(inited + 32) = v24;
    swift_endAccess();
    v28(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21D2916C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (*(v5 + 16) && (v6 = a2(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_21D291750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_21D0D3954(a2, v11, &unk_27CE5CD80);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5CD80);
    swift_beginAccess();
    v18 = *(v3 + 16);
    if (v18 >> 62)
    {
      if (sub_21DBFBD7C() >= a3)
      {
LABEL_4:
        if ((a3 & 0x8000000000000000) == 0)
        {
          v19 = v34;

          sub_21DBD1550(a3, a3, v19);
          swift_endAccess();

          return 1;
        }

        goto LABEL_16;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_10;
  }

  sub_21D2A0DC8(v11, v17, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
  v20 = sub_21D2916C8(v8, sub_21D181E00);
  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v20)
  {
    sub_21D2910F8(v34, a3, sub_21DBD1550, sub_21D107568);

    sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.Item);
    return 1;
  }

  if (qword_27CE56620 != -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE5A918);
  v23 = v33;
  sub_21D104E74(v17, v33, type metadata accessor for TTRRemindersListViewModel.Item);
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEBC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35[0] = v27;
    *v26 = 136315138;
    v28 = sub_21D25D250();
    v30 = v29;
    sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
    v31 = sub_21D0CDFB4(v28, v30, v35);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v24, v25, "Cannot find node {item: %s}", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D46520](v27, -1, -1);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  else
  {

    sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.Item);
  return 0;
}

uint64_t sub_21D291C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  sub_21D0D3954(a2, v11, &qword_27CE5A490);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE5A490);
    swift_beginAccess();
    v18 = *(v3 + 16);
    if (v18 >> 62)
    {
      if (sub_21DBFBD7C() >= a3)
      {
LABEL_4:
        if ((a3 & 0x8000000000000000) == 0)
        {
          v19 = v34;

          sub_21DBD157C(a3, a3, v19);
          swift_endAccess();

          return 1;
        }

        goto LABEL_16;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_10;
  }

  sub_21D2A0DC8(v11, v17, type metadata accessor for TTRAccountsListsViewModel.Item);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v8);
  v20 = sub_21D2916C8(v8, sub_21D105CF4);
  sub_21D106918(v8, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if (v20)
  {
    sub_21D2910F8(v34, a3, sub_21DBD157C, sub_21D107568);

    sub_21D106918(v17, type metadata accessor for TTRAccountsListsViewModel.Item);
    return 1;
  }

  if (qword_27CE56620 != -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE5A918);
  v23 = v33;
  sub_21D104E74(v17, v33, type metadata accessor for TTRAccountsListsViewModel.Item);
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEBC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35[0] = v27;
    *v26 = 136315138;
    v28 = sub_21D25D428();
    v30 = v29;
    sub_21D106918(v23, type metadata accessor for TTRAccountsListsViewModel.Item);
    v31 = sub_21D0CDFB4(v28, v30, v35);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v24, v25, "Cannot find node {item: %s}", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D46520](v27, -1, -1);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  else
  {

    sub_21D106918(v23, type metadata accessor for TTRAccountsListsViewModel.Item);
  }

  sub_21D106918(v17, type metadata accessor for TTRAccountsListsViewModel.Item);
  return 0;
}

uint64_t sub_21D2920E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF5A5C();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v55 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  sub_21D0D3954(a2, v14, &unk_27CE5CD80);
  v24 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v24 - 8) + 48))(v14, 1, v24) == 1)
  {
    sub_21D0CF7E0(v14, &unk_27CE5CD80);
    v23 = sub_21DBF5B9C();
    sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28]);
    v25 = sub_21DBFAC8C();
    v26 = MEMORY[0x277D84F90];
    if (!v25)
    {
LABEL_22:
      swift_beginAccess();
      sub_21D25CF18(a1, sub_21DBD14F8, sub_21D256E5C);
      swift_endAccess();
      return v26;
    }

    v27 = v25;
    v59 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21DBFAC3C();
    if ((v27 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v28 = sub_21DBFAD3C();
        v30 = *v29;
        v28(v61, 0);
        swift_beginAccess();
        v31 = *(v3 + 16);
        if ((v31 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D44740](v30);
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }
        }

        swift_endAccess();
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21DBFACBC();
        if (!--v27)
        {
          (*(v57 + 8))(v11, v58);
          v26 = v59;
          goto LABEL_22;
        }
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v20);
  sub_21D106918(v14, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D2A0DC8(v20, v23, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v32 = sub_21D2916C8(v23, sub_21D181E00);
  if (v32)
  {
    v33 = v32;
    sub_21DBF5B9C();
    sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28]);
    v34 = sub_21DBFAC8C();
    v26 = MEMORY[0x277D84F90];
    if (!v34)
    {
LABEL_23:
      sub_21D291324(a1, sub_21DBD14F8, sub_21D256E5C, sub_21D107550);

      sub_21D106918(v23, type metadata accessor for TTRRemindersListViewModel.ItemID);
      return v26;
    }

    v35 = v34;
    v56 = v23;
    v60 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21DBFAC3C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = *(*v33 + 136);
      swift_beginAccess();
      while (1)
      {
        v37 = sub_21DBFAD3C();
        v39 = *v38;
        v37(v61, 0);
        v23 = *(v33 + v36);
        if ((v23 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          MEMORY[0x223D44740](v39, v23);
        }

        else
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          if (v39 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21DBFACBC();
        if (!--v35)
        {
          (*(v57 + 8))(v8, v58);
          v26 = v60;
          v23 = v56;
          goto LABEL_23;
        }
      }
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_27CE56620 != -1)
  {
LABEL_36:
    swift_once();
  }

  v40 = sub_21DBF84BC();
  __swift_project_value_buffer(v40, qword_27CE5A918);
  v41 = v56;
  sub_21D104E74(v23, v56, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v42 = sub_21DBF84AC();
  v43 = sub_21DBFAEBC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61[0] = v45;
    *v44 = 136315138;
    sub_21D104E74(v41, v54, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v46 = v23;
    v47 = sub_21DBFA1AC();
    v49 = v48;
    sub_21D106918(v41, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v50 = sub_21D0CDFB4(v47, v49, v61);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_21D0C9000, v42, v43, "Cannot find node {itemID: %s}", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223D46520](v45, -1, -1);
    MEMORY[0x223D46520](v44, -1, -1);

    v51 = v46;
  }

  else
  {

    sub_21D106918(v41, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v51 = v23;
  }

  sub_21D106918(v51, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return 0;
}

uint64_t sub_21D292980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF5A5C();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v55 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v53 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v53 - v22;
  sub_21D0D3954(a2, v14, &qword_27CE5A490);
  v24 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v24 - 8) + 48))(v14, 1, v24) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5A490);
    v23 = sub_21DBF5B9C();
    sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28]);
    v25 = sub_21DBFAC8C();
    v26 = MEMORY[0x277D84F90];
    if (!v25)
    {
LABEL_22:
      swift_beginAccess();
      sub_21D25CF18(a1, sub_21DBD1524, sub_21D256E5C);
      swift_endAccess();
      return v26;
    }

    v27 = v25;
    v59 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21DBFAC3C();
    if ((v27 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v28 = sub_21DBFAD3C();
        v30 = *v29;
        v28(v61, 0);
        swift_beginAccess();
        v31 = *(v3 + 16);
        if ((v31 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D44740](v30);
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }
        }

        swift_endAccess();
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21DBFACBC();
        if (!--v27)
        {
          (*(v57 + 8))(v11, v58);
          v26 = v59;
          goto LABEL_22;
        }
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v20);
  sub_21D106918(v14, type metadata accessor for TTRAccountsListsViewModel.Item);
  sub_21D2A0DC8(v20, v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v32 = sub_21D2916C8(v23, sub_21D105CF4);
  if (v32)
  {
    v33 = v32;
    sub_21DBF5B9C();
    sub_21D2F89FC(&qword_280D1B820, MEMORY[0x277CC9A28]);
    v34 = sub_21DBFAC8C();
    v26 = MEMORY[0x277D84F90];
    if (!v34)
    {
LABEL_23:
      sub_21D291324(a1, sub_21DBD1524, sub_21D256E5C, sub_21D107550);

      sub_21D106918(v23, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      return v26;
    }

    v35 = v34;
    v56 = v23;
    v60 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21DBFAC3C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = *(*v33 + 136);
      swift_beginAccess();
      while (1)
      {
        v37 = sub_21DBFAD3C();
        v39 = *v38;
        v37(v61, 0);
        v23 = *(v33 + v36);
        if ((v23 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          MEMORY[0x223D44740](v39, v23);
        }

        else
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          if (v39 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21DBFACBC();
        if (!--v35)
        {
          (*(v57 + 8))(v8, v58);
          v26 = v60;
          v23 = v56;
          goto LABEL_23;
        }
      }
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_27CE56620 != -1)
  {
LABEL_36:
    swift_once();
  }

  v40 = sub_21DBF84BC();
  __swift_project_value_buffer(v40, qword_27CE5A918);
  v41 = v56;
  sub_21D104E74(v23, v56, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v42 = sub_21DBF84AC();
  v43 = sub_21DBFAEBC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61[0] = v45;
    *v44 = 136315138;
    sub_21D104E74(v41, v54, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v46 = v23;
    v47 = sub_21DBFA1AC();
    v49 = v48;
    sub_21D106918(v41, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v50 = sub_21D0CDFB4(v47, v49, v61);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_21D0C9000, v42, v43, "Cannot find node {itemID: %s}", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x223D46520](v45, -1, -1);
    MEMORY[0x223D46520](v44, -1, -1);

    v51 = v46;
  }

  else
  {

    sub_21D106918(v41, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v51 = v23;
  }

  sub_21D106918(v51, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  return 0;
}

uint64_t sub_21D293244(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70);
  v65 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x28223BE20](v4);
  v69 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  v18 = 0;
  v19 = 0;
  v68 = 0;
  v20 = MEMORY[0x277D84F98];
  v21 = *(a1 + 16);
  v59 = v14;
  v57 = a1;
  v58 = v21;
  while (1)
  {
    v66 = v19;
    v67 = v18;
    if (v68 == v21)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
      v68 = v21;
    }

    else
    {
      if (v68 >= v21)
      {
        goto LABEL_26;
      }

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
      v24 = *(v23 - 8);
      v25 = v68;
      sub_21D0D3954(v57 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v68, v14, &qword_27CE59D88);
      v68 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_27;
      }

      (*(v24 + 56))(v14, 0, 1, v23);
    }

    sub_21D0D523C(v14, v17, &qword_27CE5A3C0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
    if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
    {
      v49 = v20[2];
      if (v49)
      {
        v50 = sub_21D9D6480(v20[2], 0);
        sub_21D9D5368(&v70, v50 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v49, v20);
        v52 = v51;
        sub_21DBF8E0C();
        sub_21D0CFAF8();
        if (v52 != v49)
        {
          goto LABEL_29;
        }

        sub_21D0D0E88(v67);
      }

      else
      {

        sub_21D0D0E88(v67);
        return MEMORY[0x277D84F90];
      }

      return v50;
    }

    v27 = v17;
    sub_21D0D523C(v17, v11, &unk_27CE5CD80);
    v28 = v69;
    swift_getAtKeyPath();
    v29 = v11;
    v30 = v11;
    v31 = v28;
    v32 = v61;
    sub_21D0D3954(v30, v61, &unk_27CE5CD80);
    v33 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v34 = swift_allocObject();
    sub_21D0D523C(v32, v34 + v33, &unk_27CE5CD80);
    sub_21D0D0E88(v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v20;
    v36 = sub_21D17E4D8(v31);
    v38 = v20[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      break;
    }

    v42 = v37;
    if (v20[3] >= v41)
    {
      v11 = v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v37)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v48 = v36;
        sub_21D221CF8();
        v36 = v48;
        v20 = v70;
        if (v42)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      sub_21D21809C(v41, isUniquelyReferenced_nonNull_native);
      v20 = v70;
      v36 = sub_21D17E4D8(v69);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_30;
      }

      v11 = v29;
      if (v42)
      {
        goto LABEL_2;
      }
    }

    v44 = v56;
    v45 = v36;
    sub_21D2F8A44(v56);
    v20[(v45 >> 6) + 8] |= 1 << v45;
    sub_21D0D3954(v69, v20[6] + *(v55 + 72) * v45, &qword_27CE5FB90);
    sub_21D0D523C(v44, v20[7] + *(v65 + 72) * v45, &qword_27CE59D70);
    v46 = v20[2];
    v40 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v40)
    {
      goto LABEL_28;
    }

    v20[2] = v47;
LABEL_2:
    sub_21DBF5AFC();
    sub_21D0CF7E0(v69, &qword_27CE5FB90);
    sub_21D0CF7E0(v11, &unk_27CE5CD80);
    v18 = sub_21D2F8A44;
    v19 = v34;
    v21 = v58;
    v14 = v59;
    v17 = v27;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D293978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a2;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  if (a1 < 1)
  {
    return (*(v14 + 56))(a4, 1, 1, v20);
  }

  v28 = v18;
  v30 = &v27 - v19;
  sub_21D26181C(a1 - 1, v29, &v27 - v19);
  v21 = a4;
  if (a3)
  {
    v22 = 0;
    v29 = *(a3 + 16);
    while (v29 != v22)
    {
      sub_21D104E74(a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22++, v16, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
      v23 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v12, v9);
      sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v23)
      {
        (*(v14 + 56))(v21, 1, 1, v28);
        v24 = v30;
        return sub_21D106918(v24, type metadata accessor for TTRRemindersListViewModel.Item);
      }
    }
  }

  v25 = v30;
  sub_21D104E74(v30, v21, type metadata accessor for TTRRemindersListViewModel.Item);
  (*(v14 + 56))(v21, 0, 1, v28);
  v24 = v25;
  return sub_21D106918(v24, type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t sub_21D293C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a2;
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  if (a1 <= 0)
  {
    return (*(v14 + 56))(a4, 1, 1, v20);
  }

  v28 = v18;
  v30 = &v27 - v19;
  sub_21D107A34(a1 - 1, v29, &v27 - v19);
  v21 = a4;
  if (a3)
  {
    v22 = 0;
    v29 = *(a3 + 16);
    while (v29 != v22)
    {
      sub_21D104E74(a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22++, v16, type metadata accessor for TTRAccountsListsViewModel.Item);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v12);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v9);
      v23 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v12, v9);
      sub_21D106918(v9, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D106918(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D106918(v16, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (v23)
      {
        (*(v14 + 56))(v21, 1, 1, v28);
        v24 = v30;
        return sub_21D106918(v24, type metadata accessor for TTRAccountsListsViewModel.Item);
      }
    }
  }

  v25 = v30;
  sub_21D104E74(v30, v21, type metadata accessor for TTRAccountsListsViewModel.Item);
  (*(v14 + 56))(v21, 0, 1, v28);
  v24 = v25;
  return sub_21D106918(v24, type metadata accessor for TTRAccountsListsViewModel.Item);
}