uint64_t sub_21D62A97C(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_280D0F148);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "cachedView called outside of performSubviewUpdates", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

LABEL_6:
    v8 = v3;
    v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
    swift_beginAccess();
    v9 = *(v2 + v3);
    if (*(v9 + 16) > v8)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v10 = *(v9 + 32 * v8 + 32);
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_21D62AB60(char a1, void (*a2)(void))
{
  v4 = v2;
  LOBYTE(v5) = a1;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F148);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "cachedView called outside of performSubviewUpdates", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

LABEL_6:
    v10 = v5;
    v5 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
    swift_beginAccess();
    v11 = *(v4 + v5);
    if (*(v11 + 16) > v10)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v12 = *(v11 + 32 * v10 + 32);
  if (v12)
  {
    a2(0);
    v13 = v12;
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

_BYTE *sub_21D62ACD0()
{
  v0 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListDescriptionAndTagsView()) init];
  v0[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_textDragAndDropDisabled] = 1;
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 textDragInteraction];
    if (v4)
    {
      v5 = v4;
      [v4 setEnabled_];
      [v3 removeInteraction_];
    }

    [v3 setTextDropDelegate_];
  }

  return v0;
}

void sub_21D62ADC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 144))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21D62AE80(_BYTE *a1)
{
  if (*a1 > 1u)
  {
    if (*a1 != 2)
    {
      v2 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
      swift_getKeyPath();
      swift_retain_n();

      swift_getAtKeyPath();

      if (v8)
      {

        swift_setAtReferenceWritableKeyPath();
      }

      else
      {
      }

      v3 = *(v1 + v2);
      swift_getKeyPath();
      sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

      sub_21DBF5D9C();

      if (*(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);

        sub_21DBF5D8C();
      }

      swift_getKeyPath();

      sub_21DBF5D9C();

      v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
      sub_21DBF8E0C();

      v6 = sub_21D1D56D8(v5, MEMORY[0x277D84F90]);

      if (v6)
      {
      }

      else
      {

        sub_21D23F4D4(MEMORY[0x277D84F90]);
      }
    }
  }

  else if (*a1)
  {
    swift_getKeyPath();
    swift_retain_n();

    swift_getAtKeyPath();

    if (v8 == 1)
    {
    }

    else
    {

      swift_setAtReferenceWritableKeyPath();
    }
  }

  return sub_21D61F4C0(1);
}

void sub_21D62B200(uint64_t a1)
{
  v22 = 0;
  v2 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView());
  v3 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.init(listLayout:)(&v22);
  [v3 setDebugBoundingBoxesEnabled_];
  v4 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView;
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = [v5 numberOfColumns];
  v7 = v3;
  v8 = sub_21D4422C0(v7, v6);

  v9 = *(a1 + v4);
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = [v9 numberOfRows];
  v11 = *(a1 + v4);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v10;
  if (v8 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D176A0);
    v21 = v11;
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    v13 = v11;
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D176A0);
  }

  sub_21D0D8CF0(0, &qword_280D176A0);
  v14 = sub_21DBFA5DC();

  v15 = [v11 addRowWithArrangedSubviews_];
  swift_unknownObjectRelease();

  v16 = *(a1 + v4);
  if (v16)
  {
    v17 = v16;

    v18 = [v17 rowAtIndex_];

    v19 = (a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
    v20 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
    *v19 = v7;
    v19[1] = v18;
    v7;
    swift_unknownObjectRetain();
    sub_21D5C5F74(v20);
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_21D62B430(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
    swift_beginAccess();
    v5.i64[0] = *&v3[v4];
    *&v3[v4] = a1;
    v6.n128_u64[0] = 0x3E50000000000000;
    if ((sub_21D110D14(v5, v6, a1, v7) & 1) == 0)
    {
      [v3 setNeedsLayout];
    }
  }
}

void sub_21D62B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(a1 + 16);
  v29 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates;
  v30 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView;
  v35 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewUpdates;
  v9 = a1 + 32;
  v28 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_listLayout;
  v10 = 7;
  while (v7 >= v8)
  {
    TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeHidden(at:)(v7);
LABEL_3:
    v10 += 4;
    v9 += 192;
    ++v7;
    if (v10 == 19)
    {
      return;
    }
  }

  v34 = v9;
  sub_21D1D9BE4(v9, v42);
  v11 = sub_21D68D3D0(v7);
  [*(a3 + v30) frame];
  MinX = CGRectGetMinX(v43);
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = *(a2 + v28);
    v15 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row());
    if (v14)
    {
      v16 = 16.0;
    }

    else
    {
      v16 = 0.0;
    }

    v13 = sub_21D6ACE54(v16);
    swift_unknownObjectWeakAssign();
    v17 = &v13[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate];
    swift_beginAccess();
    *(v17 + 1) = &protocol witness table for TTRIRemindersListReminderCell_collectionView;
    swift_unknownObjectWeakAssign();
    v11 = 0;
  }

  sub_21D1D9BE4(v42, v37);
  v38 = a4;
  v39 = a5;
  v40 = v8 - 1 == v7;
  v41 = MinX;
  sub_21D6394B8(v37, v36);
  v18 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
  swift_beginAccess();
  v33 = v11;
  sub_21DBF8E0C();
  sub_21D0EB8DC(v36, &v13[v18], &qword_27CE5F290);
  swift_endAccess();
  sub_21D6ACB60();
  sub_21D0CF7E0(v36, &qword_27CE5F290);
  if ((*(a2 + v29) & 1) == 0)
  {
    if (qword_27CE56B90 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE5FD40);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "makeVisible called outside of performSubviewUpdates", v22, 2u);
      MEMORY[0x223D46520](v22, -1, -1);
    }
  }

  swift_beginAccess();
  v23 = *(a2 + v35);
  v24 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v35) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_21D256D44(v23);
    *(a2 + v35) = v23;
  }

  if (v7 < v23[2])
  {
    v26 = &v23[v10];
    v27 = v23[v10 - 3];
    *(v26 - 3) = v24;
    *(v26 - 2) = 0;
    *(v26 - 1) = 0;
    *v26 = 0;
    *(a2 + v35) = v23;
    swift_endAccess();
    sub_21D157878(v27);

    sub_21D639514(v37);
    sub_21D1D9C40(v42);
    v9 = v34;
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t sub_21D62B8B8(char a1, void *a2)
{
  if (a1)
  {
    return 0;
  }

  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = (*(v4 + 88))(v3, v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_21D17A884();
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  sub_21DBFA17C();

  sub_21D176F0C();
  sub_21DBFBB8C();
  v10 = sub_21DBFBB5C();

  return v10;
}

id sub_21D62BAF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  if (qword_280D176B8 != -1)
  {
    v17 = IsBoldTextEnabled;
    swift_once();
    IsBoldTextEnabled = v17;
  }

  if (IsBoldTextEnabled)
  {
    v5 = 9;
  }

  else
  {
    v5 = 8;
  }

  v6 = sub_21D900614(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = v6;
  sub_21DBF8E0C();
  v9 = v8;
  v10 = v6;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D639008(&qword_280D17790, type metadata accessor for Key);
  v13 = sub_21DBF9E5C();

  v14 = [v11 initWithString:v12 attributes:v13];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *a2 = v3;
  a2[1] = v14;
  a2[2] = sub_21D639780;
  a2[3] = v15;
  return v3;
}

void sub_21D62BD50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 160))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21D62BE10(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v160) = a2;
  v5 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v164 = *(v5 - 8);
  v165 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v148 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v153);
  v156 = &v141 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v12 - 8);
  v152 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v149 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  MEMORY[0x28223BE20](v16 - 8);
  v161 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v151 = &v141 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v20 - 8);
  v150 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v158 = &v141 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v141 - v25;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 312))(v27, v28);
  v154 = v9;
  v155 = v8;
  v159 = v26;
  if (v29)
  {
    v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v31 = sub_21DBFA12C();
    v32 = [v30 initWithString_];
  }

  else
  {
    v33 = a1[3];
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v33);
    v32 = (*(v34 + 112))(v33, v34);
  }

  v35 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  v36 = sub_21D62AB60(1, type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView);
  v37 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule;
  swift_beginAccess();
  *&v167 = v37;
  sub_21D0D3954(v37, &v172, &unk_27CE62920);
  v38 = v172;
  sub_21D0CF7E0(&v172, &unk_27CE62920);
  if (!v38)
  {
    goto LABEL_19;
  }

  v39 = sub_21D2413A4();

  if ((v39 & 1) == 0)
  {
    if (!v32)
    {
      goto LABEL_19;
    }

    v40 = [v32 string];
    v41 = sub_21DBFA16C();
    v43 = v42;

    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v44)
    {
LABEL_19:
      if (v36)
      {
        [v36 setAttributedText_];
      }

      sub_21D6A46B0(1u);
      goto LABEL_49;
    }
  }

  v142 = v7;
  v145 = v35;
  v166 = v36;
  v168 = v32;
  v157 = v3;
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v45 = 9;
  }

  else
  {
    v45 = 6;
  }

  if (qword_280D176B8 != -1)
  {
    v140 = v45;
    swift_once();
    v45 = v140;
  }

  v162 = a1;
  v46 = sub_21D900614(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
  inited = swift_initStackObject();
  v48 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v49 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_21DC08D20;
  v50 = *v49;
  *(inited + 40) = v46;
  *(inited + 48) = v50;
  v51 = objc_opt_self();
  v52 = v50;
  v53 = v48;
  v143 = v52;
  v54 = v53;
  v147 = v46;
  *(inited + 56) = [v51 secondaryLabelColor];
  v55 = sub_21D177570(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310);
  swift_arrayDestroy();
  v56 = swift_initStackObject();
  v169 = xmmword_21DC08D00;
  *(v56 + 16) = xmmword_21DC08D00;
  *(v56 + 32) = v54;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *(v56 + 40) = sub_21D900614(7);
  v163 = sub_21D177570(v56);
  swift_setDeallocating();
  sub_21D0CF7E0(v56 + 32, &unk_27CE5F310);
  v57 = v162[3];
  v58 = v162[4];
  __swift_project_boxed_opaque_existential_1(v162, v57);
  v59 = *(v58 + 272);
  v146 = v55;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v59(&v172, v57, v58);
  v144 = v173;

  v60 = swift_initStackObject();
  *(v60 + 16) = v169;
  v61 = v143;
  *(v60 + 32) = v143;
  v62 = v61;
  *(v60 + 40) = [v51 secondaryLabelColor];
  v143 = sub_21D177570(v60);
  swift_setDeallocating();
  sub_21D0CF7E0(v60 + 32, &unk_27CE5F310);
  v63 = swift_initStackObject();
  *(v63 + 16) = v169;
  *(v63 + 32) = v62;
  v64 = v62;
  *(v63 + 40) = [v51 secondaryLabelColor];
  v65 = sub_21D177570(v63);
  swift_setDeallocating();
  sub_21D0CF7E0(v63 + 32, &unk_27CE5F310);
  v66 = swift_initStackObject();
  *(v66 + 16) = v169;
  *(v66 + 32) = v64;
  *(v66 + 40) = [v51 linkColor];
  v67 = sub_21D177570(v66);
  swift_setDeallocating();
  sub_21D0CF7E0(v66 + 32, &unk_27CE5F310);
  v68 = swift_initStackObject();
  *(v68 + 16) = v169;
  *(v68 + 32) = v64;
  *(v68 + 40) = [v51 magentaColor];
  v69 = sub_21D177570(v68);
  swift_setDeallocating();
  sub_21D0CF7E0(v68 + 32, &unk_27CE5F310);
  v70 = type metadata accessor for TTRReminderTextStorage();
  v71 = objc_allocWithZone(v70);
  v72 = v146;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles] = v146;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles] = v143;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles] = v163;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles] = v65;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles] = v67;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility] = v144;
  *&v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles] = v69;
  v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts] = 0;
  v71[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent] = 0;
  v171.receiver = v71;
  v171.super_class = v70;
  v73 = objc_msgSendSuper2(&v171, sel_init);
  v74 = v168;
  if (v168)
  {
    v75 = v168;
    v76 = v157;
    v77 = v166;
    v78 = 0x277CCA000;
  }

  else
  {
    v78 = 0x277CCA000uLL;
    v75 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    v74 = 0;
    v76 = v157;
    v77 = v166;
  }

  v79 = v74;
  [v73 insertAttributedString:v75 atIndex:0];

  v80 = [objc_allocWithZone(*(v78 + 2200)) initWithAttributedString_];
  v168 = v79;
  *&v169 = v80;
  v81 = v162;
  if (v77)
  {
    v82 = v77;
  }

  else
  {
    v82 = sub_21D62E02C(v76, v147);
  }

  v36 = v77;
  v83 = v82;
  sub_21D62E390(v83);
  v84 = *v167;
  if (*v167)
  {
    v85 = *(v167 + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v87 = *(v85 + 64);
    v163 = v84;
    v143 = ObjectType;
    v144 = v85;
    v87(v83);
    v141 = v73;
    v166 = v36;
    *&v167 = v83;
    if (v160)
    {
      v88 = v151;
      (*(v144 + 8))(v143);
      if ((*(v164 + 48))(v88, 1, v165))
      {
        sub_21D0CF7E0(v88, &unk_27CE5F300);
        v89 = 1;
        v90 = v159;
      }

      else
      {
        v94 = v149;
        sub_21D639848(v88, v149, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v88, &unk_27CE5F300);
        v90 = v159;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v159);
        sub_21D6398B0(v94, type metadata accessor for TTRRemindersListViewModel.Item);
        v89 = 0;
      }

      v95 = v154;
      v96 = v155;
      v160 = *(v154 + 56);
      (v160)(v90, v89, 1, v155);
      v97 = v81[3];
      v98 = v81[4];
      __swift_project_boxed_opaque_existential_1(v81, v97);
      v99 = v152;
      (*(v98 + 8))(v97, v98);
      v100 = v158;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v158);
      v101 = v99;
      v102 = v90;
      sub_21D6398B0(v101, type metadata accessor for TTRRemindersListViewModel.Item);
      (v160)(v100, 0, 1, v96);
      v103 = *(v153 + 48);
      v104 = v90;
      v105 = v156;
      sub_21D0D3954(v104, v156, &qword_27CE5FB90);
      v160 = v103;
      sub_21D0D3954(v100, &v103[v105], &qword_27CE5FB90);
      v106 = *(v95 + 48);
      if (v106(v105, 1, v96) == 1)
      {
        sub_21D0CF7E0(v100, &qword_27CE5FB90);
        sub_21D0CF7E0(v102, &qword_27CE5FB90);
        v107 = v106(&v160[v105], 1, v96);
        v72 = v146;
        if (v107 == 1)
        {
          sub_21D0CF7E0(v105, &qword_27CE5FB90);
          v83 = v167;
LABEL_51:
          v110 = [v83 attributedText];

          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v108 = v150;
      sub_21D0D3954(v105, v150, &qword_27CE5FB90);
      v109 = v160;
      if (v106(&v160[v105], 1, v96) == 1)
      {
        sub_21D0CF7E0(v158, &qword_27CE5FB90);
        sub_21D0CF7E0(v159, &qword_27CE5FB90);
        sub_21D6398B0(v108, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v72 = v146;
LABEL_37:
        sub_21D0CF7E0(v105, &qword_27CE5F2E0);
        v83 = v167;
        goto LABEL_38;
      }

      v137 = v148;
      sub_21D6397E0(&v109[v105], v148, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v138 = v108;
      v139 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v108, v137);
      sub_21D6398B0(v137, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v158, &qword_27CE5FB90);
      sub_21D0CF7E0(v159, &qword_27CE5FB90);
      sub_21D6398B0(v138, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v105, &qword_27CE5FB90);
      v72 = v146;
      v83 = v167;
      if (v139)
      {
        goto LABEL_51;
      }
    }

LABEL_38:

    v110 = v169;
LABEL_39:
    v111 = v81[3];
    v112 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v111);
    v113 = v142;
    (*(v112 + 8))(v111, v112);
    v114 = v81[3];
    v115 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v114);
    (*(v115 + 16))(&v172, v114, v115);
    v116 = BYTE2(v172);

    v117 = v81[3];
    v118 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v117);
    (*(v118 + 272))(v170, v117, v118);
    v119 = v170[1];

    v120 = v81[3];
    v121 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v120);
    v122 = (*(v121 + 280))(v120, v121);
    v123 = v165;
    v125 = v165[6];
    v124 = v165[7];
    *(v113 + v165[5]) = v116;
    *(v113 + v125) = v110;
    *(v113 + v124) = v72;
    *(v113 + v123[8]) = v119;
    *(v113 + v123[9]) = v122 & 1;
    v126 = v161;
    sub_21D639848(v113, v161, type metadata accessor for TTRIReminderCellNotesViewModel);
    (*(v164 + 56))(v126, 0, 1, v123);
    (*(v144 + 16))(v126, v143);
    swift_unknownObjectRelease();
    sub_21D6398B0(v113, type metadata accessor for TTRIReminderCellNotesViewModel);
    v76 = v157;
    v36 = v166;
    v83 = v167;
    v73 = v141;
    goto LABEL_40;
  }

  v91 = v81[3];
  v92 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v91);
  (*(v92 + 272))(&v172, v91, v92);
  v93 = v173;

  v170[0] = v93;
  sub_21D6C3690(v169, v72, v163, v170);

  sub_21D62E390(v83);
LABEL_40:
  v167 = *(v76 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing);
  v127 = v145;
  if (*(v145 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_45;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v128 = sub_21DBF84BC();
    __swift_project_value_buffer(v128, qword_280D0F148);
    v129 = sub_21DBF84AC();
    v130 = sub_21DBFAECC();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_21D0C9000, v129, v130, "makeVisible called outside of performSubviewUpdates", v131, 2u);
      MEMORY[0x223D46520](v131, -1, -1);
    }

LABEL_45:
    v132 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v133 = *(v127 + v132);
    v134 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v127 + v132) = v133;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v133 = sub_21D256D30(v133);
      *(v127 + v132) = v133;
    }

    if (v133[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v136 = v133[8];
  v133[8] = v134;
  v133[9] = 0;
  *(v133 + 5) = v167;
  *(v127 + v132) = v133;
  swift_endAccess();
  sub_21D157878(v136);

  v32 = v168;
LABEL_49:
}

id sub_21D62D088()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  if (qword_280D176B8 != -1)
  {
    v6 = IsBoldTextEnabled;
    swift_once();
    IsBoldTextEnabled = v6;
  }

  if (IsBoldTextEnabled)
  {
    v3 = 9;
  }

  else
  {
    v3 = 6;
  }

  v4 = sub_21D900614(v3);
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

void sub_21D62D18C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v68 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 288))(v77, v13, v14);
  if (v77[1] < 2uLL)
  {
    goto LABEL_5;
  }

  v73 = v9;
  v72 = v6;
  v74 = v77[0];
  v16 = v77[2];
  v15 = v77[3];
  v17 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  *&v75 = v2;
  v18 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v76 = v18;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v19 = *(v18 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__titleIsEditing);

  if (v19 & 1) != 0 || (v20 = *(v75 + v17), swift_getKeyPath(), v76 = v20, , sub_21DBF5D9C(), , v21 = *(v20 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode), , (v21))
  {

LABEL_5:
    sub_21D6A46B0(0xAu);
    return;
  }

  if (v15)
  {

    v74 = v16;
  }

  v22 = v12;
  v23 = v75;
  v24 = *(v75 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  v25 = sub_21D62A97C(10);
  if (!v25)
  {
    v25 = sub_21D62E6D0(v23);
  }

  v71 = v25;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v69 = v22;
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  v68 = xmmword_21DC08D00;
  *(inited + 16) = xmmword_21DC08D00;
  v27 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v28 = qword_280D176B8;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_21D900614(1);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = v30;
  v70 = sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
  v31 = swift_initStackObject();
  v32 = *MEMORY[0x277CCA298];
  *(v31 + 32) = *MEMORY[0x277CCA298];
  *(v31 + 16) = v68;
  *(v31 + 64) = MEMORY[0x277D83E88];
  *(v31 + 40) = 2;
  v33 = v32;
  sub_21D11274C(v31);
  swift_setDeallocating();
  sub_21D0CF7E0(v31 + 32, &unk_27CE5F2C0);
  v34 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v35 = sub_21DBFA12C();

  v36 = [v34 initWithString_];

  v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v38 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D639008(&qword_280D17790, type metadata accessor for Key);
  v39 = sub_21DBF9E5C();

  v40 = [v37 initWithString:v38 attributes:v39];

  v41 = v36;
  v42 = sub_21DBFA12C();
  v43 = [v41 rangeOfString_];
  v45 = v44;

  if (v43 == sub_21DBF4B4C())
  {

    v46 = v71;
    v47 = v40;
  }

  else
  {
    v48 = sub_21DBFA12C();
    [v41 replaceCharactersInRange:v43 withString:{v45, v48}];

    v49 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v50 = sub_21DBF9E5C();

    v51 = [v49 initWithString:v41 attributes:v50];

    [v51 insertAttributedString:v40 atIndex:v43];
    v47 = v51;
    v46 = v71;
  }

  v52 = v69;
  sub_21DBFB97C();
  v53 = sub_21DBFB95C();
  v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
  v55 = v75;
  if (v54)
  {
    sub_21D0D3954(v52, v73, &unk_27CE5F2F0);
    sub_21DBFB98C();
    sub_21D0CF7E0(v52, &unk_27CE5F2F0);
  }

  else
  {
    v56 = v47;
    v57 = v72;
    sub_21DBF515C();
    v58 = sub_21DBF514C();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    sub_21DBFB86C();
    sub_21DBFB98C();
  }

  v75 = *(v55 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing);
  if (*(v24 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_25;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v59 = sub_21DBF84BC();
    __swift_project_value_buffer(v59, qword_280D0F148);
    v60 = sub_21DBF84AC();
    v61 = sub_21DBFAECC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_21D0C9000, v60, v61, "makeVisible called outside of performSubviewUpdates", v62, 2u);
      MEMORY[0x223D46520](v62, -1, -1);
    }

LABEL_25:
    v63 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v64 = *(v24 + v63);
    v65 = v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + v63) = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v64 = sub_21D256D30(v64);
      *(v24 + v63) = v64;
    }

    if (v64[2] >= 0xBuLL)
    {
      break;
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  v67 = v64[44];
  v64[44] = v65;
  v64[45] = 1;
  *(v64 + 23) = v75;
  *(v24 + v63) = v64;
  swift_endAccess();
  sub_21D157878(v67);
}

int *sub_21D62DB40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 8))(v6, v7);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 16))(v36, v8, v9);
  v34 = BYTE2(v36[0]);

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v33 = (*(v11 + 32))(v10, v11);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v32 = (*(v13 + 40))(v12, v13);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 160))(v14, v15);
  v18 = v17;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 272))(v35, v19, v20);
  v21 = v35[1];

  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = (*(v23 + 216))(v22, v23);
  v25 = *(a2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v36[5] = v25;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v26 = *(v25 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible);

  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v27 = sub_21D900614(1);
  result = type metadata accessor for TTRReminderCellTitleViewModel();
  v29 = result[7];
  v30 = result[9];
  *(a3 + result[5]) = v34;
  *(a3 + v29) = v33;
  *(a3 + result[6]) = v27;
  v31 = a3 + v30;
  *(a3 + result[8]) = v32 & 1;
  *v31 = v16;
  *(v31 + 8) = v18 & 1;
  *(a3 + result[10]) = v21;
  *(a3 + result[11]) = v24;
  *(a3 + result[12]) = v26;
  return result;
}

void sub_21D62DE5C(void *a1)
{
  [a1 setTextContainerInset_];
  v2 = [a1 textContainer];
  [v2 setLineFragmentPadding_];

  v3 = [a1 textLayoutManager];
  if (v3)
  {
    v4 = v3;
    [v3 setUsesFontLeading_];
  }

  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  [a1 setBackgroundColor_];

  [a1 setAdjustsFontForContentSizeCategory_];
  v7 = [v5 secondaryLabelColor];
  [a1 setTextColor_];

  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v8 = sub_21D900614(6);
  [a1 setFont_];

  v9 = [a1 textContainer];
  [v9 setLineBreakMode_];
}

id sub_21D62E02C(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView());
  v22 = 0;
  v5 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 8, 0, &v22, 0);
  sub_21D62DE5C(v5);
  v6 = [v5 textDragInteraction];
  if (v6)
  {
    v7 = v6;
    [v6 setEnabled_];
    [v5 removeInteraction_];
  }

  [v5 setTextDropDelegate_];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 placeholderTextColor];
  v13 = sub_21D0D8CF0(0, &qword_280D1B8F0);
  *(inited + 40) = v12;
  v14 = *MEMORY[0x277D740A8];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 80) = a2;
  v15 = v14;
  v16 = a2;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D639008(&qword_280D17790, type metadata accessor for Key);
  v19 = sub_21DBF9E5C();

  v20 = [v17 initWithString:v18 attributes:v19];

  [v5 setAttributedPlaceholder_];
  return v5;
}

id sub_21D62E390(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;

  v12 = sub_21D2414F0();

  if (v12)
  {
    v13 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule;
    swift_beginAccess();
    if (*(v2 + v13))
    {
      [a1 setUserInteractionEnabled_];
      v14 = *(v2 + v11);
      swift_getKeyPath();
      v18[0] = v14;
      sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

      sub_21DBF5D9C();

      v15 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
      swift_beginAccess();
      sub_21D0D3954(v14 + v15, v6, &qword_27CE5A0B8);

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A0B8);
        v16 = 0;
      }

      else
      {
        sub_21D6397E0(v6, v10, type metadata accessor for TTRRemindersListViewModel.Reminder);
        sub_21DAFD730(v7, v18);
        v16 = BYTE2(v18[0]);

        sub_21D6398B0(v10, type metadata accessor for TTRRemindersListViewModel.Reminder);
      }

      return [a1 setEditable_];
    }

    else
    {
      [a1 setUserInteractionEnabled_];
      return [a1 setEditable_];
    }
  }

  else
  {

    return [a1 setUserInteractionEnabled_];
  }
}

void *sub_21D62E6D0(uint64_t a1)
{
  v2 = sub_21DBFB83C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBFB95C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_21DBFB7CC();
  sub_21DBFB82C();
  (*(v3 + 104))(v5, *MEMORY[0x277D74FF8], v2);
  sub_21DBFB85C();
  sub_21D0D8CF0(0, &qword_280D0C1C0);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_21DBFB96C();
  v14 = [v13 titleLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setNumberOfLines_];
  }

  v16 = [v13 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setLineBreakMode_];
  }

  [v13 addTarget:a1 action:sel_suggestedSectionButtonAction_ forControlEvents:0x2000];
  (*(v7 + 8))(v12, v6);
  return v13;
}

uint64_t sub_21D62E958(unsigned __int8 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16) <= v2)
  {
    __break(1u);
    return result;
  }

  v6 = *(v5 + 32 * v2 + 32);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (([v7 isHidden] & 1) != 0 || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) == 0))
  {

    return 0;
  }

  return result;
}

uint64_t sub_21D62EA00(unsigned __int8 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16) <= v2)
  {
    __break(1u);
    return result;
  }

  v6 = *(v5 + 32 * v2 + 32);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (([v7 isHidden] & 1) != 0 || (type metadata accessor for TTRIRemindersListDescriptionAndTagsView(), (result = swift_dynamicCastClass()) == 0))
  {

    return 0;
  }

  return result;
}

uint64_t sub_21D62EAA4(unsigned __int8 a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 32 * v2 + 32);
    if (v6)
    {
      v7 = v6;
      if ([v7 isHidden])
      {

        return 0;
      }
    }

    return v6;
  }

  return result;
}

uint64_t sub_21D62EB34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v6 = *(v5 + 8), v7 = swift_getObjectType(), LOBYTE(v6) = (*(v6 + 48))(v0, v7, v6), result = swift_unknownObjectRelease(), (v6 & 1) != 0))
  {
    v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
    swift_getKeyPath();
    v23 = v9;
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

    sub_21DBF5D9C();

    v10 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
    swift_beginAccess();
    sub_21D0D3954(v9 + v10, v4, &qword_27CE5A0B8);

    v11 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
    {
      return sub_21D0CF7E0(v4, &qword_27CE5A0B8);
    }

    else
    {
      v25 = v11;
      v26 = &protocol witness table for TTRRemindersListViewModel.Reminder;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
      sub_21D6397E0(v4, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
      sub_21D0D0FD0(&v24, v27);
      __swift_project_boxed_opaque_existential_1(v27, v28);
      sub_21DAFD730(v11, &v24);
      v13 = v24;

      if (v13 >> 6)
      {
        if (v13 >> 6 == 1)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v14 = *(v5 + 8);
            ObjectType = swift_getObjectType();
            v22 = v13 & 1;
            (*(v14 + 120))(v1, &v22, ObjectType, v14);
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v22 = 0;
          TTRIRemindersListReminderCell_collectionView.beginEditingTitle(withInput:)(&v22);
        }
      }

      else if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v5 + 8);
        v17 = swift_getObjectType();
        v18 = v28;
        v19 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v20 = (*(v19 + 40))(v18, v19);
        (*(v16 + 56))(v1, (v20 & 1) == 0, v17, v16);
        swift_unknownObjectRelease();
      }

      return __swift_destroy_boxed_opaque_existential_0(v27);
    }
  }

  return result;
}

void sub_21D62EED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v21[0] = v8;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v9 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v8 + v9, v3, &qword_27CE5A0B8);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5A0B8);
  }

  else
  {
    sub_21D6397E0(v3, v7, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21DAFE90C(v4, v21);
    v10 = v21[0];
    v11 = v21[1];
    sub_21D6398B0(v7, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if (v11 >= 2)
    {

      v16 = v20;
      v17 = v20 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 8);
        ObjectType = swift_getObjectType();
        (*(v18 + 176))(v16, v10, v11, ObjectType, v18);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  if (qword_27CE56AF8 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE5EFD0);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAECC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21D0C9000, v13, v14, "Should not be able to trigger SuggestedSectionButtonAction as button should be hidden when no suggestion available", v15, 2u);
    MEMORY[0x223D46520](v15, -1, -1);
  }
}

uint64_t sub_21D62F2A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_21D0CF7E0(v9, &qword_27CE5C690);
}

void *TTRIRemindersListReminderCell_collectionView.customAccessibilityElement.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIRemindersListReminderCell_collectionView.customAccessibilityElement.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v12[1] = v8;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v9 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v8 + v9, v3, &qword_27CE5A0B8);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5A0B8);
    return 0;
  }

  else
  {
    sub_21D6397E0(v3, v7, type metadata accessor for TTRRemindersListViewModel.Reminder);
    v11 = sub_21DAFD7DC(v4);
    sub_21D6398B0(v7, type metadata accessor for TTRRemindersListViewModel.Reminder);
    return v11;
  }
}

void TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_21DBFA12C();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setAccessibilityIdentifier_, v5);
}

void (*TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = swift_getObjectType();
  *v4 = TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.getter();
  v4[1] = v5;
  return sub_21D62F8B8;
}

void sub_21D62F8B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    if (v3)
    {
      sub_21DBF8E0C();
      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 16) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 16), sel_setAccessibilityIdentifier_, v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_21DBFA12C();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 32) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 32), sel_setAccessibilityIdentifier_, v5);
  }

  free(v2);
}

BOOL TTRIRemindersListReminderCell_collectionView.isAccessibilityElement.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v3)
  {
    return 1;
  }

  if ([*(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) isFirstResponder])
  {
    return 0;
  }

  v5 = sub_21D62E958(1u);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isFirstResponder];

    if (v7)
    {
      return 0;
    }
  }

  v8 = [objc_opt_self() currentRequest];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 technology];

    v11 = sub_21DBFA16C();
    v13 = v12;
    if (v11 == sub_21DBFA16C() && v13 == v14)
    {

      return 1;
    }

    v15 = sub_21DBFC64C();

    if (v15)
    {
      return 1;
    }
  }

  return UIAccessibilityIsSwitchControlRunning();
}

id TTRIRemindersListReminderCell_collectionView.accessibilityAttributedLabel.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!v4 || (v5 = v4, v6 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter(), v5, (result = v6) == 0))
  {
    v8.receiver = v1;
    v8.super_class = ObjectType;
    return objc_msgSendSuper2(&v8, sel_accessibilityAttributedLabel);
  }

  return result;
}

void (*TTRIRemindersListReminderCell_collectionView.accessibilityAttributedLabel.modify(uint64_t *a1))(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!v8 || (v9 = v8, v10 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter(), v9, !v10))
  {
    *(v6 + 24) = v2;
    *(v6 + 32) = ObjectType;
    v10 = objc_msgSendSuper2((v6 + 24), sel_accessibilityAttributedLabel);
  }

  *(v6 + 40) = v10;
  return sub_21D62FE70;
}

void sub_21D62FE70(uint64_t a1)
{
  v1 = *a1;

  free(v1);
}

Swift::String __swiftcall TTRIRemindersListReminderCell_collectionView._accessibilityBriefLabel()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    v6 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v16, sel_accessibilityAttributedLabel);
  if (v7)
  {
    v6 = v7;
LABEL_5:
    v8 = [v6 string];

    goto LABEL_7;
  }

  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, sel__accessibilityBriefLabel);
  v8 = v9;
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_7:
  v11 = sub_21DBFA16C();
  v13 = v12;

  v9 = v11;
  v10 = v13;
LABEL_9:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

char *TTRIRemindersListReminderCell_collectionView.accessibilityElements.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  *&v74 = v2;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v3)
  {
    return 0;
  }

  v5 = sub_21D62E958(1u);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
  if (([v6 isFirstResponder] & 1) == 0 && (!v5 || !objc_msgSend(v5, sel_isFirstResponder)))
  {
    v12 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (!v13)
    {

      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 56) = type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
    *(v14 + 32) = v13;
    v15 = v13;

    return v14;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 56) = type metadata accessor for TTRIReminderTitleTextView();
  *(v8 + 32) = v6;
  v76 = v8;
  if (v5)
  {
    v75 = sub_21D0D8CF0(0, &unk_280D0C330);
    *&v74 = v5;
    v9 = v6;
    v10 = v5;
    v11 = sub_21D213408(1, 2, 1, v8);
    *(v11 + 2) = 2;
    sub_21D0CF2E8(&v74, v11 + 4);
    v76 = v11;
  }

  else
  {
    v16 = v6;
  }

  v17 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
  v18 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
  v19 = *&v17[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
  v20 = v17;

  sub_21D442E44(2u, v19, v20);

  v21 = *&v17[v18];
  swift_beginAccess();
  v22 = *(v21 + 40);
  if (*(v22 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_61;
  }

  sub_21D0D3954(v22 + 160, &v74, &unk_27CE5F120);
  if (v74)
  {
    v23 = v74;
    sub_21D0CF7E0(&v74, &unk_27CE5F120);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21DC08D00;
    v25 = sub_21D0D8CF0(0, &qword_280D176A0);
    v26 = v24;
    *(v24 + 56) = v25;
    *(v24 + 32) = v23;
  }

  else
  {
    sub_21D0CF7E0(&v74, &unk_27CE5F120);
    v26 = MEMORY[0x277D84F90];
  }

  sub_21D562F40(v26);
  v27 = sub_21D62AB60(3, type metadata accessor for TTRIRemindersListReminderCellQuickBarStackView);
  if (v27)
  {
    v28 = v27;
    v75 = type metadata accessor for TTRIRemindersListReminderCellQuickBarStackView();
    *&v74 = v28;
    v29 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_21D213408(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_21D213408((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    sub_21D0CF2E8(&v74, &v29[32 * v31 + 32]);
    v76 = v29;
  }

  v32 = [objc_opt_self() currentRequest];
  if (!v32)
  {
    if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
    {
      goto LABEL_34;
    }

LABEL_30:
    v40 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton);
    v75 = type metadata accessor for TTRIReminderCompletionButton();
    *&v74 = v40;
    v7 = v76;
    v41 = v40;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_31:
      v43 = *(v7 + 16);
      v42 = *(v7 + 24);
      if (v43 >= v42 >> 1)
      {
        v7 = sub_21D213408((v42 > 1), v43 + 1, 1, v7);
      }

      *(v7 + 16) = v43 + 1;
      sub_21D0CF2E8(&v74, (v7 + 32 * v43 + 32));
      v76 = v7;
      goto LABEL_34;
    }

LABEL_61:
    v7 = sub_21D213408(0, *(v7 + 16) + 1, 1, v7);
    goto LABEL_31;
  }

  v33 = v32;
  v34 = [v32 technology];

  v35 = sub_21DBFA16C();
  v37 = v36;
  if (v35 == sub_21DBFA16C() && v37 == v38)
  {
    goto LABEL_24;
  }

  v39 = sub_21DBFC64C();

  if (v39)
  {
    goto LABEL_29;
  }

  v49 = sub_21DBFA16C();
  v51 = v50;
  if (v49 == sub_21DBFA16C() && v51 == v52)
  {
    goto LABEL_24;
  }

  v53 = sub_21DBFC64C();

  if (v53)
  {
    goto LABEL_29;
  }

  v54 = sub_21DBFA16C();
  v56 = v55;
  if (v54 == sub_21DBFA16C() && v56 == v57)
  {
    goto LABEL_24;
  }

  v58 = sub_21DBFC64C();

  if (v58)
  {
    goto LABEL_29;
  }

  v59 = sub_21DBFA16C();
  v61 = v60;
  if (v59 == sub_21DBFA16C() && v61 == v62)
  {
    goto LABEL_24;
  }

  v63 = sub_21DBFC64C();

  if (v63)
  {
    goto LABEL_29;
  }

  v64 = sub_21DBFA16C();
  v66 = v65;
  if (v64 == sub_21DBFA16C() && v66 == v67)
  {
    goto LABEL_24;
  }

  v68 = sub_21DBFC64C();

  if (v68)
  {
LABEL_29:

    goto LABEL_30;
  }

  v69 = sub_21DBFA16C();
  v71 = v70;
  if (v69 == sub_21DBFA16C() && v71 == v72)
  {
LABEL_24:

    goto LABEL_30;
  }

  v73 = sub_21DBFC64C();

  if (v73)
  {
    goto LABEL_30;
  }

LABEL_34:
  v44 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  if (!v44)
  {
LABEL_37:

    return v76;
  }

  v45 = v44;
  if ([swift_unknownObjectRetain() isHidden])
  {

    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v75 = type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView();
  *&v74 = v45;
  v46 = v76;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_21D213408(0, *(v46 + 2) + 1, 1, v46);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_21D213408((v47 > 1), v48 + 1, 1, v46);
  }

  swift_unknownObjectRelease();

  *(v46 + 2) = v48 + 1;
  sub_21D0CF2E8(&v74, &v46[32 * v48 + 32]);
  v76 = v46;
  return v46;
}

Swift::Bool __swiftcall TTRIRemindersListReminderCell_collectionView.accessibilityActivate()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v4 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath();
  v58[0] = v4;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v5 = *(v4 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v5)
  {
    v57.receiver = v1;
    v57.super_class = ObjectType;
    LOBYTE(Strong) = objc_msgSendSuper2(&v57, sel_accessibilityActivate);
    return Strong & 1;
  }

  v7 = *&v1[v3];
  swift_getKeyPath();
  v58[0] = v7;

  sub_21DBF5D9C();

  v8 = *(v7 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isSwiped);

  if ((v8 & 1) == 0)
  {
    v12 = [objc_opt_self() currentRequest];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 technology];

      v15 = sub_21DBFA16C();
      v17 = v16;
      if (v15 == sub_21DBFA16C() && v17 == v18)
      {
        goto LABEL_9;
      }

      v20 = sub_21DBFC64C();

      if (v20)
      {
LABEL_14:

        goto LABEL_15;
      }

      v22 = sub_21DBFA16C();
      v24 = v23;
      if (v22 == sub_21DBFA16C() && v24 == v25)
      {
        goto LABEL_9;
      }

      v26 = sub_21DBFC64C();

      if (v26)
      {
        goto LABEL_14;
      }

      v27 = sub_21DBFA16C();
      v29 = v28;
      if (v27 == sub_21DBFA16C() && v29 == v30)
      {
        goto LABEL_9;
      }

      v31 = sub_21DBFC64C();

      if (v31)
      {
        goto LABEL_14;
      }

      v32 = sub_21DBFA16C();
      v34 = v33;
      if (v32 == sub_21DBFA16C() && v34 == v35)
      {
        goto LABEL_9;
      }

      v36 = sub_21DBFC64C();

      if (v36)
      {
        goto LABEL_14;
      }

      v37 = sub_21DBFA16C();
      v39 = v38;
      if (v37 == sub_21DBFA16C() && v39 == v40)
      {
        goto LABEL_9;
      }

      v41 = sub_21DBFC64C();

      if (v41)
      {
        goto LABEL_14;
      }

      v42 = sub_21DBFA16C();
      v44 = v43;
      if (v42 == sub_21DBFA16C() && v44 == v45)
      {
LABEL_9:

LABEL_15:
        LOBYTE(v58[0]) = 0;
        TTRIRemindersListReminderCell_collectionView.beginEditingTitle(withInput:)(v58);
        goto LABEL_16;
      }

      v46 = sub_21DBFC64C();

      if (v46)
      {
        goto LABEL_14;
      }

      v47 = sub_21DBFA16C();
      v49 = v48;
      if (v47 == sub_21DBFA16C() && v49 == v50)
      {
        goto LABEL_35;
      }

      v51 = sub_21DBFC64C();

      if (v51)
      {

        goto LABEL_12;
      }

      v52 = sub_21DBFA16C();
      v54 = v53;
      if (v52 == sub_21DBFA16C() && v54 == v55)
      {
LABEL_35:
      }

      else
      {
        v56 = sub_21DBFC64C();

        if ((v56 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
    {
      goto LABEL_15;
    }

LABEL_12:
    v58[3] = ObjectType;
    v58[0] = v1;
    v19 = v1;
    sub_21D62EB34();
    sub_21D0CF7E0(v58, &qword_27CE5C690);
LABEL_16:
    LOBYTE(Strong) = 1;
    return Strong & 1;
  }

  v9 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(v9 + 1);
    v11 = swift_getObjectType();
    LOBYTE(v10) = (*(v10 + 240))(v11, v10);
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v10;
  }

  return Strong & 1;
}

id TTRIRemindersListReminderCell_collectionView.accessibilityActivationPoint.getter()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton];
  [v2 frame];
  CGRectGetMidX(v15);
  [v0 accessibilityFrame];
  CGRectGetMidY(v16);
  [*&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView] accessibilityActivationPoint];
  v3 = [objc_opt_self() currentRequest];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 technology];

    v6 = sub_21DBFA16C();
    v8 = v7;
    if (v6 == sub_21DBFA16C() && v8 == v9)
    {

      goto LABEL_10;
    }

    v11 = sub_21DBFC64C();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (!UIAccessibilityIsSwitchControlRunning())
  {
    goto LABEL_11;
  }

LABEL_10:
  v12 = *&v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v13 = *(v12 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v13)
  {
LABEL_11:
    swift_getKeyPath();
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

    sub_21DBF5D9C();
  }

  return [v2 accessibilityActivationPoint];
}

uint64_t (*TTRIRemindersListReminderCell_collectionView.accessibilityActivationPoint.modify(void *a1))(void, void, void)
{
  TTRIRemindersListReminderCell_collectionView.accessibilityActivationPoint.getter();
  *a1 = v2;
  a1[1] = v3;
  return nullsub_1;
}

unint64_t TTRIRemindersListReminderCell_collectionView.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_accessibilityTraits);
  if ([v0 isSelected])
  {
    v2 = *MEMORY[0x277D76598];
    if ((*MEMORY[0x277D76598] & ~v1) == 0)
    {
      v2 = 0;
    }

    v1 |= v2;
  }

  return v1;
}

uint64_t (*TTRIRemindersListReminderCell_collectionView.accessibilityTraits.modify(objc_super *a1))(void, void, void)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  a1->receiver = v1;
  a1->super_class = ObjectType;
  v5 = [(objc_super *)a1 accessibilityTraits];
  if ([v2 isSelected])
  {
    v6 = *MEMORY[0x277D76598];
    if ((*MEMORY[0x277D76598] & ~v5) == 0)
    {
      v6 = 0;
    }

    v5 |= v6;
  }

  a1[1].receiver = v5;
  return nullsub_1;
}

Swift::Bool __swiftcall TTRIRemindersListReminderCell_collectionView.accessibilityPerformEscape()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView];
  if ([v3 isFirstResponder])
  {
    [v3 resignFirstResponder];
    return 1;
  }

  v5 = sub_21D62E958(1u);
  if (v5)
  {
    v6 = v5;
    if ([v5 isFirstResponder])
    {
      [v6 resignFirstResponder];

      return 1;
    }
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_accessibilityPerformEscape);
}

id TTRIRemindersListReminderCell_collectionView.accessibilityDragSourceDescriptors.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath();
  v16 = v9;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v10 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v9 + v10, v4, &qword_27CE5A0B8);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5A0B8);
  }

  else
  {
    sub_21D6397E0(v4, v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21DAFD730(v5, &v16);
    v11 = v17;

    sub_21D6398B0(v8, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v18.receiver = v1;
  v18.super_class = ObjectType;
  result = objc_msgSendSuper2(&v18, sel_accessibilityDragSourceDescriptors, ObjectType);
  if (result)
  {
    v13 = result;
    sub_21D0D8CF0(0, &unk_27CE5FB40);
    v14 = sub_21DBFA5EC();

    return v14;
  }

  return result;
}

id sub_21D6318CC(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  v7 = a3();

  if (v7)
  {
    sub_21D0D8CF0(0, a4);
    v8 = sub_21DBFA5DC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t TTRIRemindersListReminderCell_collectionView.accessibilityCustomActions.getter()
{
  v1 = v0;
  v2 = sub_21DBF54CC();
  v215 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v212 = &v194[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v213 = v3;
  MEMORY[0x28223BE20](v4);
  v216 = &v194[-v5];
  v211 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v214 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v217 = &v194[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v194[-v8];
  v10 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v11 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath();
  *&v250 = v11;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v12 = *(v11 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  result = 0;
  if (v12)
  {
    return result;
  }

  v14 = *&v1[v10];
  swift_getKeyPath();
  *&v248[0] = v14;

  sub_21DBF5D9C();

  v15 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v14 + v15, v9, &qword_27CE5A0B8);

  v16 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5A0B8);
    return 0;
  }

  *(&v251 + 1) = v16;
  *&v252 = &protocol witness table for TTRRemindersListViewModel.Reminder;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v250);
  sub_21D6397E0(v9, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  sub_21D0D0FD0(&v250, v266);
  v18 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_23:
    __swift_destroy_boxed_opaque_existential_0(v266);
    return 0;
  }

  v20 = Strong;
  v21 = *(v18 + 1);
  ObjectType = swift_getObjectType();
  if (((*(v21 + 264))(ObjectType, v21) & 1) != 0 || (v198 = v20, v228 = v1, v23 = v267, v24 = v268, __swift_project_boxed_opaque_existential_1(v266, v267), (*(v24 + 16))(&v250, v23, v24), v25 = BYTE9(v251), , v25 != 1))
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v265 = MEMORY[0x277D84F90];
  if (qword_27CE57310 != -1)
  {
    goto LABEL_121;
  }

  while (1)
  {
    v225 = objc_opt_self();
    v26 = [v225 configurationWithPointSize_];
    v27 = sub_21DBFA12C();
    v224 = objc_opt_self();
    v28 = [v224 _systemImageNamed_withConfiguration_];

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = objc_allocWithZone(MEMORY[0x277D75088]);

    v31 = sub_21DBFA12C();
    *&v252 = sub_21D638838;
    *(&v252 + 1) = v29;
    *&v250 = MEMORY[0x277D85DD0];
    *(&v250 + 1) = 1107296256;
    *&v251 = sub_21D1A62AC;
    *(&v251 + 1) = &block_descriptor_69;
    v32 = _Block_copy(&v250);
    v33 = [v30 initWithName:v31 image:v28 actionHandler:v32];

    _Block_release(v32);

    v34 = v33;
    MEMORY[0x223D42D80]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    v197 = v34;
    sub_21DBFA6CC();
    v35 = v267;
    v36 = v268;
    __swift_project_boxed_opaque_existential_1(v266, v267);
    if ((*(v36 + 224))(v35, v36))
    {
      if (qword_27CE57318 != -1)
      {
        swift_once();
      }

      v37 = [v225 configurationWithPointSize_];
      v38 = sub_21DBFA12C();
      v39 = [v224 _systemImageNamed_withConfiguration_];

      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = objc_allocWithZone(MEMORY[0x277D75088]);

      v42 = sub_21DBFA12C();
      *&v252 = sub_21D63898C;
      *(&v252 + 1) = v40;
      *&v250 = MEMORY[0x277D85DD0];
      *(&v250 + 1) = 1107296256;
      *&v251 = sub_21D1A62AC;
      *(&v251 + 1) = &block_descriptor_64;
      v43 = _Block_copy(&v250);
      v44 = [v41 initWithName:v42 image:v39 actionHandler:v43];

      _Block_release(v43);

      v45 = v44;
      MEMORY[0x223D42D80]();
      if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    v46 = v267;
    v47 = v268;
    __swift_project_boxed_opaque_existential_1(v266, v267);
    v48 = (*(v47 + 112))(v46, v47);
    if (!v48)
    {
      goto LABEL_26;
    }

    v49 = v48;
    v50 = [v48 string];

    v51 = sub_21DBFA16C();
    v53 = v52;

    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54)
    {
LABEL_26:
      if (qword_27CE57320 == -1)
      {
        goto LABEL_27;
      }

LABEL_122:
      swift_once();
      goto LABEL_27;
    }

    if (qword_27CE57328 != -1)
    {
      goto LABEL_122;
    }

LABEL_27:
    sub_21DBF8E0C();
    v55 = [v225 configurationWithPointSize_];
    v56 = sub_21DBFA12C();

    v57 = [v224 _systemImageNamed_withConfiguration_];

    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = objc_allocWithZone(MEMORY[0x277D75088]);

    v60 = sub_21DBFA12C();

    *&v252 = sub_21D638840;
    *(&v252 + 1) = v58;
    *&v250 = MEMORY[0x277D85DD0];
    *(&v250 + 1) = 1107296256;
    *&v251 = sub_21D1A62AC;
    *(&v251 + 1) = &block_descriptor_21;
    v61 = _Block_copy(&v250);
    v62 = [v59 initWithName:v60 image:v57 actionHandler:v61];

    _Block_release(v61);

    v63 = v62;
    MEMORY[0x223D42D80]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    v196 = v63;
    sub_21DBFA6CC();
    v64 = v265;
    v65 = v267;
    v66 = v268;
    __swift_project_boxed_opaque_existential_1(v266, v267);
    v67 = (*(v66 + 160))(v65, v66);
    if ((v68 & 1) != 0 || v67 < 1 || (v69 = v267, v70 = v268, __swift_project_boxed_opaque_existential_1(v266, v267), (*(v70 + 176))(v248, v69, v70), LOBYTE(v248[0]) == 2))
    {
LABEL_32:
      v71 = v64;
      goto LABEL_33;
    }

    if (v248[0])
    {

      sub_21D2416E8(&v250);

      if (!v250)
      {
        goto LABEL_32;
      }

      if (v250 == 1)
      {
        if (qword_27CE57330 == -1)
        {
          goto LABEL_116;
        }
      }

      else if (qword_27CE57338 == -1)
      {
LABEL_116:
        sub_21DBF8E0C();
        UIAccessibilityButtonShapesEnabled();
        v185 = [v225 configurationWithPointSize_];
        v186 = sub_21DBFA12C();

        v187 = [v224 _systemImageNamed_withConfiguration_];

        v188 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v189 = objc_allocWithZone(MEMORY[0x277D75088]);

        v190 = sub_21DBFA12C();

        *&v252 = sub_21D638984;
        *(&v252 + 1) = v188;
        *&v250 = MEMORY[0x277D85DD0];
        *(&v250 + 1) = 1107296256;
        *&v251 = sub_21D1A62AC;
        *(&v251 + 1) = &block_descriptor_60_0;
        v191 = _Block_copy(&v250);
        v192 = [v189 initWithName:v190 image:v187 actionHandler:v191];

        _Block_release(v191);

        v193 = v192;
        MEMORY[0x223D42D80]();
        if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v71 = v265;
        goto LABEL_33;
      }

      swift_once();
      goto LABEL_116;
    }

    if (qword_27CE57340 != -1)
    {
      swift_once();
    }

    v177 = [v225 configurationWithPointSize_];
    v178 = sub_21DBFA12C();
    v179 = [v224 _systemImageNamed_withConfiguration_];

    v180 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v181 = objc_allocWithZone(MEMORY[0x277D75088]);

    v182 = sub_21DBFA12C();
    *&v252 = sub_21D63897C;
    *(&v252 + 1) = v180;
    *&v250 = MEMORY[0x277D85DD0];
    *(&v250 + 1) = 1107296256;
    *&v251 = sub_21D1A62AC;
    *(&v251 + 1) = &block_descriptor_56_1;
    v183 = _Block_copy(&v250);
    [v181 initWithName:v182 image:v179 actionHandler:v183];

    _Block_release(v183);

    MEMORY[0x223D42D80](v184);
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v71 = v265;
LABEL_33:
    v72 = v267;
    v73 = v268;
    __swift_project_boxed_opaque_existential_1(v266, v267);
    (*(v73 + 264))(&v233, v72, v73);
    v248[12] = v245;
    v248[13] = v246;
    v248[8] = v241;
    v248[9] = v242;
    v248[10] = v243;
    v248[11] = v244;
    v248[4] = v237;
    v248[5] = v238;
    v248[6] = v239;
    v248[7] = v240;
    v248[0] = v233;
    v248[1] = v234;
    v248[2] = v235;
    v248[3] = v236;
    v262 = v245;
    v263 = v246;
    v258 = v241;
    v259 = v242;
    v260 = v243;
    v261 = v244;
    v254 = v237;
    v255 = v238;
    v256 = v239;
    v257 = v240;
    v250 = v233;
    v251 = v234;
    v249 = v247;
    v264 = v247;
    v252 = v235;
    v253 = v236;
    if (sub_21D4B9498(&v250) == 1)
    {
      v74 = v216;
    }

    else
    {
      sub_21D0CF7E0(v248, &unk_27CE5FB50);
      v74 = v216;
      if (qword_27CE57360 != -1)
      {
        swift_once();
      }

      v75 = [v225 configurationWithPointSize_];
      v76 = sub_21DBFA12C();
      v77 = [v224 _systemImageNamed_withConfiguration_];

      v78 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v79 = objc_allocWithZone(MEMORY[0x277D75088]);

      v80 = sub_21DBFA12C();
      *&v235 = sub_21D638974;
      *(&v235 + 1) = v78;
      *&v233 = MEMORY[0x277D85DD0];
      *(&v233 + 1) = 1107296256;
      *&v234 = sub_21D1A62AC;
      *(&v234 + 1) = &block_descriptor_52_1;
      v81 = _Block_copy(&v233);
      v82 = [v79 initWithName:v80 image:v77 actionHandler:v81];

      _Block_release(v81);

      v83 = v82;
      MEMORY[0x223D42D80]();
      if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v71 = v265;
    }

    v84 = v267;
    v85 = v268;
    __swift_project_boxed_opaque_existential_1(v266, v267);
    v86 = (*(v85 + 120))(v84, v85);
    if (!v86)
    {
      break;
    }

    v87 = *(v86 + 16);
    v195 = v87 != 0;
    v207 = v87;
    if (!v87)
    {
LABEL_69:

      v138 = v195;
      goto LABEL_71;
    }

    v88 = 0;
    v89 = *&v228[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack];
    v205 = v86 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
    v206 = v89;
    v203 = 0x800000021DC63DF0;
    v204 = "Cell content stack view";
    v210 = (v215 + 16);
    v202 = v215 + 32;
    v223 = &v234;
    v199 = (v215 + 8);
    v222 = xmmword_21DC08D00;
    v200 = v86;
    v201 = v2;
    while (v88 < *(v86 + 16))
    {
      v90 = v217;
      sub_21D639848(v205 + *(v214 + 72) * v88, v217, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      v91 = *v210;
      (*v210)(v74, &v90[*(v211 + 20)], v2);
      v227 = sub_21DBF53EC();
      v229 = v92;
      if (!v92)
      {
        v227 = sub_21DBF535C();
        v229 = v93;
      }

      v209 = v88;
      if (qword_27CE57378 != -1)
      {
        swift_once();
      }

      v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v94 = swift_allocObject();
      *(v94 + 16) = v222;
      *(v94 + 56) = MEMORY[0x277D837D0];
      v220 = sub_21D17A884();
      *(v94 + 64) = v220;
      v95 = v229;
      *(v94 + 32) = v227;
      *(v94 + 40) = v95;
      sub_21DBF8E0C();
      sub_21DBFA17C();
      v96 = [v225 configurationWithPointSize_];
      v97 = sub_21DBFA12C();
      v98 = [v224 _systemImageNamed_withConfiguration_];

      v99 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v100 = v212;
      v91(v212, v74, v2);
      v101 = v215;
      v102 = (*(v215 + 80) + 24) & ~*(v215 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = v99;
      (*(v101 + 32))(v103 + v102, v100, v2);
      v104 = objc_allocWithZone(MEMORY[0x277D75088]);

      v105 = sub_21DBFA12C();

      *&v235 = sub_21D6388F4;
      *(&v235 + 1) = v103;
      *&v233 = MEMORY[0x277D85DD0];
      *(&v233 + 1) = 1107296256;
      *&v234 = sub_21D1A62AC;
      *(&v234 + 1) = &block_descriptor_41_0;
      v106 = _Block_copy(&v233);
      v107 = [v104 initWithName:v105 image:v98 actionHandler:v106];

      _Block_release(v106);

      v108 = v107;
      MEMORY[0x223D42D80]();
      if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      v208 = v108;
      sub_21DBFA6CC();
      v71 = v265;
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v219 = sub_21DBF516C();
      v226 = v109;
      v110 = sub_21D6A4844();
      v111 = v110;
      v112 = v228;
      if (v110 >> 62)
      {
        v113 = sub_21DBFBD7C();
        if (!v113)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v113 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v113)
        {
          goto LABEL_43;
        }
      }

      sub_21D0D8CF0(0, &qword_280D17680);
      if (v113 < 1)
      {
        goto LABEL_120;
      }

      v114 = 0;
      v115 = *v217;
      v230 = v111 & 0xC000000000000001;
      v231 = v115;
      v232 = v113;
      v218 = v111;
      do
      {
        if (v230)
        {
          v116 = MEMORY[0x223D44740](v114, v111);
        }

        else
        {
          v116 = *(v111 + 8 * v114 + 32);
        }

        v117 = v116;
        v118 = *&v116[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID];
        v119 = sub_21DBFB63C();

        if ((v119 & 1) != 0 && (v120 = [v112 superview]) != 0)
        {
          v121 = v120;
          [v117 accessibilityActivationPoint];
          [v121 convertPoint:0 fromView:?];
          v123 = v122;
          v125 = v124;

          v126 = swift_allocObject();
          *(v126 + 16) = v222;
          v127 = v220;
          *(v126 + 56) = MEMORY[0x277D837D0];
          *(v126 + 64) = v127;
          *(v126 + 32) = v227;
          *(v126 + 40) = v229;
          sub_21DBF8E0C();
          sub_21DBFA17C();
          v128 = [v225 configurationWithPointSize_];
          v129 = sub_21DBFA12C();
          v130 = [v224 _systemImageNamed_withConfiguration_];

          v131 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v132 = swift_allocObject();
          v132[2] = v131;
          v132[3] = v123;
          v132[4] = v125;
          v133 = objc_allocWithZone(MEMORY[0x277D75088]);

          v134 = sub_21DBFA12C();

          *&v235 = sub_21D638968;
          *(&v235 + 1) = v132;
          *&v233 = MEMORY[0x277D85DD0];
          *(&v233 + 1) = 1107296256;
          *&v234 = sub_21D1A62AC;
          *(&v234 + 1) = &block_descriptor_48_1;
          v135 = _Block_copy(&v233);
          v136 = [v133 initWithName:v134 image:v130 actionHandler:v135];

          _Block_release(v135);

          v137 = v136;
          MEMORY[0x223D42D80]();
          if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();

          v71 = v265;
          v112 = v228;
          v111 = v218;
        }

        else
        {
        }

        ++v114;
      }

      while (v232 != v114);
LABEL_43:
      v88 = v209 + 1;

      v74 = v216;
      v2 = v201;
      (*v199)(v216, v201);
      sub_21D6398B0(v217, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      v86 = v200;
      if (v88 == v207)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
  }

  v138 = 0;
LABEL_71:
  v139 = v267;
  v140 = v268;
  __swift_project_boxed_opaque_existential_1(v266, v267);
  v141 = (*(v140 + 128))(v139, v140);
  if (v141)
  {
    v142 = *(v141 + 16);

    if (v142)
    {
      if (qword_27CE57358 != -1)
      {
        swift_once();
      }

      v143 = [v225 configurationWithPointSize_];
      v144 = sub_21DBFA12C();
      v145 = [v224 _systemImageNamed_withConfiguration_];

      v146 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v147 = objc_allocWithZone(MEMORY[0x277D75088]);

      v148 = sub_21DBFA12C();
      *&v235 = sub_21D6388EC;
      *(&v235 + 1) = v146;
      *&v233 = MEMORY[0x277D85DD0];
      *(&v233 + 1) = 1107296256;
      *&v234 = sub_21D1A62AC;
      *(&v234 + 1) = &block_descriptor_34_1;
      v149 = _Block_copy(&v233);
      v150 = [v147 initWithName:v148 image:v145 actionHandler:v149];

      _Block_release(v149);

      v151 = v150;
      MEMORY[0x223D42D80]();
      if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

LABEL_79:
      v152 = v267;
      v153 = v268;
      __swift_project_boxed_opaque_existential_1(v266, v267);
      if ((*(v153 + 144))(v152, v153))
      {
        if (qword_27CE57350 == -1)
        {
LABEL_83:
          sub_21DBF8E0C();
          v154 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v155 = objc_allocWithZone(MEMORY[0x277D75088]);

          v156 = sub_21DBFA12C();

          *&v235 = sub_21D6388E4;
          *(&v235 + 1) = v154;
          *&v233 = MEMORY[0x277D85DD0];
          *(&v233 + 1) = 1107296256;
          *&v234 = sub_21D1A62AC;
          *(&v234 + 1) = &block_descriptor_30;
          v157 = _Block_copy(&v233);
          v158 = [v155 initWithName:v156 actionHandler:v157];

          _Block_release(v157);

          v159 = v158;
          MEMORY[0x223D42D80]();
          if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();

          v71 = v265;
          goto LABEL_86;
        }
      }

      else if (qword_27CE57348 == -1)
      {
        goto LABEL_83;
      }

      swift_once();
      goto LABEL_83;
    }
  }

  if (v138)
  {
    goto LABEL_79;
  }

LABEL_86:
  v160 = v267;
  v161 = v268;
  __swift_project_boxed_opaque_existential_1(v266, v267);
  (*(v161 + 240))(&v233, v160, v161);
  v162 = v233;
  if (v233)
  {
    if (v234)
    {
      v163 = *(&v233 + 1);
      v164 = v234;
    }

    else
    {
      if (qword_27CE57388 != -1)
      {
        swift_once();
      }

      v163 = qword_27CE66E50;
      v164 = *algn_27CE66E58;
      sub_21DBF8E0C();
    }

    v165 = qword_27CE57380;
    sub_21DBF8E0C();
    if (v165 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_21DC08D00;
    *(v166 + 56) = MEMORY[0x277D837D0];
    *(v166 + 64) = sub_21D17A884();
    *(v166 + 32) = v163;
    *(v166 + 40) = v164;
    sub_21DBFA17C();
    v167 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v168 = objc_allocWithZone(MEMORY[0x277D75088]);

    v169 = sub_21DBFA12C();

    *&v235 = sub_21D63889C;
    *(&v235 + 1) = v167;
    *&v233 = MEMORY[0x277D85DD0];
    *(&v233 + 1) = 1107296256;
    *&v234 = sub_21D1A62AC;
    *(&v234 + 1) = &block_descriptor_26_0;
    v170 = _Block_copy(&v233);
    v171 = [v168 initWithName:v169 actionHandler:v170];

    _Block_release(v170);

    v172 = v171;
    MEMORY[0x223D42D80]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    sub_21D6388A4(v162);

    v71 = v265;
  }

  if (qword_280D168D8 != -1)
  {
    swift_once();
  }

  v173 = qword_280D168E0;
  v174 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v175 = sub_21D63910C(v266, v173, sub_21D638848, v174, &unk_282EC99F8, sub_21D639AEC, &block_descriptor_210_1);

  if (v175)
  {
    v176 = v175;
    MEMORY[0x223D42D80]();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    swift_unknownObjectRelease();
    v71 = v265;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v266);
  return v71;
}

BOOL sub_21D633E9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = 0;
    TTRIRemindersListReminderCell_collectionView.beginEditingTitle(withInput:)(&v2);
  }

  return Strong != 0;
}

uint64_t sub_21D633F00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (!Strong)
  {
    return v1 != 0;
  }

  v2 = *(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
  v3 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
  v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
  v5 = v2;

  sub_21D442E44(2u, v4, v5);

  v6 = *&v2[v3];
  result = swift_beginAccess();
  v8 = *(v6 + 40);
  if (*(v8 + 16) >= 3uLL)
  {
    sub_21D0D3954(v8 + 160, v13, &unk_27CE5F120);
    if (v13[0])
    {
      v9 = v13[0];
      sub_21D0CF7E0(v13, &unk_27CE5F120);
      v10 = &v5[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 1);
        ObjectType = swift_getObjectType();
        (*(v11 + 16))(v5, v9, ObjectType, v11);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      sub_21D0CF7E0(v13, &unk_27CE5F120);
    }

    return v1 != 0;
  }

  __break(1u);
  return result;
}

id sub_21D63409C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView;
  if (![*(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) canBecomeFirstResponder])
  {
    goto LABEL_9;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack];
  v5 = sub_21D62E958(1u);

  if (v5)
  {
  }

  else
  {
    [*&v1[v2] becomeFirstResponder];
  }

  v7 = *&v1[v3];
  v8 = sub_21D62E958(1u);

  if (v8)
  {
    v6 = [v8 becomeFirstResponder];
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6;
}

uint64_t TTRIRemindersListReminderCell_collectionView.subtasksExpandedState.getter@<X0>(char *a1@<X8>)
{

  sub_21D2416E8(a1);
}

BOOL sub_21D6341F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
    v3 = v2 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(v2, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  return v1 != 0;
}

uint64_t sub_21D6342B4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 144))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

BOOL sub_21D63437C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
    sub_21D6BB93C();
  }

  return v1 != 0;
}

uint64_t sub_21D6343F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v5 = Strong;
  v6 = Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v7 = *(v6 + 8);

  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 232))(a3, ObjectType, v7);
  swift_unknownObjectRelease();
  return v9 & 1;
}

id sub_21D6344C8(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = [Strong ttriAccessibilityShowContextMenuAtPoint_];

  return v6;
}

uint64_t sub_21D63454C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v25 - v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  v25[0] = v8;
  v13 = *(result + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v25[4] = v13;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v14 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v13 + v14, v2, &qword_27CE5A0B8);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    sub_21D0CF7E0(v2, &qword_27CE5A0B8);
    return 0;
  }

  sub_21D6397E0(v2, v6, type metadata accessor for TTRRemindersListViewModel.Reminder);
  v15 = sub_21DAFE108();
  if (!v15)
  {
LABEL_11:

    sub_21D6398B0(v6, type metadata accessor for TTRRemindersListViewModel.Reminder);
    return 0;
  }

  if (!*(v15 + 16))
  {

    goto LABEL_11;
  }

  sub_21D639848(v15 + ((*(v25[0] + 80) + 32) & ~*(v25[0] + 80)), v10, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);

  v16 = *v10;
  sub_21D6398B0(v10, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
  sub_21D6398B0(v6, type metadata accessor for TTRRemindersListViewModel.Reminder);
  v17 = &v12[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    v19 = *&v12[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack];
    v20 = sub_21D62EAA4(9u);

    if (v20)
    {
      swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v20;
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v18 + 168))(v12, v16, v23, v21, ObjectType, v18);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21D6349F0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 224))(ObjectType, v3);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

BOOL sub_21D634AB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 160))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return v1 != 0;
}

BOOL sub_21D634B78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    memset(v2, 0, sizeof(v2));
    sub_21D62EED0();

    sub_21D0CF7E0(v2, &qword_27CE5C690);
  }

  return Strong != 0;
}

void TTRIRemindersListReminderCell_collectionView._accessibilityInternalTextLinks()()
{
  v1 = [v0 _accessibleSubviews];
  if (!v1)
  {
    goto LABEL_47;
  }

  v2 = v1;
  v3 = sub_21DBFA5EC();

  v4 = *(v3 + 16);
  if (!v4)
  {

    return;
  }

  v5 = 0;
  v6 = v3 + 32;
  v7 = MEMORY[0x277D84F90];
  v30 = *(v3 + 16);
  v31 = v3;
  v29 = v3 + 32;
  while (v5 < *(v3 + 16))
  {
    sub_21D0CEB98(v6 + 32 * v5, v34);
    sub_21D0D8CF0(0, &unk_280D0C330);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = [v33 _accessibilityInternalTextLinks];
    if (!v8)
    {

      goto LABEL_5;
    }

    v9 = v8;
    sub_21D0D8CF0(0, &unk_27CE5F130);
    v10 = sub_21DBFA5EC();

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = sub_21DBFBD7C();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      v14 = sub_21DBFBD7C();
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v12;
    v15 = __OFADD__(v14, v12);
    v16 = v14 + v12;
    if (v15)
    {
      goto LABEL_42;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v13)
      {
LABEL_19:
        sub_21DBFBD7C();
      }

LABEL_20:
      v7 = sub_21DBFBF9C();
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

LABEL_21:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v11)
    {
      v20 = sub_21DBFBD7C();
      if (v20)
      {
LABEL_23:
        if (((v19 >> 1) - v18) < v32)
        {
          goto LABEL_44;
        }

        v21 = v17 + 8 * v18 + 32;
        if (v11)
        {
          if (v20 < 1)
          {
            goto LABEL_46;
          }

          sub_21D0D0F1C(&unk_27CE5F140, &unk_27CE5FB60);
          for (i = 0; i != v20; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB60);
            v24 = sub_21D198D24(v34, i, v10);
            v26 = *v25;
            (v24)(v34, 0);
            *(v21 + 8 * i) = v26;
          }

          v22 = v32;
          if (v32 <= 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v22 = v32;
          swift_arrayInitWithCopy();

          if (v32 <= 0)
          {
LABEL_36:
            v4 = v30;
            v3 = v31;
            v6 = v29;
            goto LABEL_5;
          }
        }

        v27 = *(v17 + 16);
        v15 = __OFADD__(v27, v22);
        v28 = v27 + v22;
        if (v15)
        {
          goto LABEL_45;
        }

        *(v17 + 16) = v28;
        goto LABEL_36;
      }
    }

    else
    {
      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_23;
      }
    }

    v4 = v30;
    v3 = v31;
    v6 = v29;
    if (v32 > 0)
    {
      goto LABEL_43;
    }

LABEL_5:
    if (++v5 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

Swift::OpaquePointer_optional __swiftcall TTRIRemindersListReminderCell_collectionView._privateAccessibilityCustomActions()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath();
  v13 = v3;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v4 & 1) != 0 || (v6 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate], swift_beginAccess(), swift_unknownObjectWeakLoadStrong()) && (v7 = *(v6 + 1), v8 = swift_getObjectType(), LOBYTE(v7) = (*(v7 + 264))(v8, v7), swift_unknownObjectRelease(), (v7))
  {
    v9 = 0;
  }

  else
  {
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v12, sel__privateAccessibilityCustomActions);
    if (v9)
    {
      v10 = v9;
      sub_21D0D8CF0(0, qword_27CE58B18);
      v11 = sub_21DBFA5EC();

      v9 = v11;
    }
  }

  result.value._rawValue = v9;
  result.is_nil = v5;
  return result;
}

void sub_21D635290()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate);
  sub_21D470EDC(*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestionsAnnouncementPertinent));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_21D5C5F74(*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule, &unk_27CE5F240);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule, &unk_27CE62920);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule, &unk_27CE5EB40);
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement);
}

uint64_t TTRIRemindersListReminderCell_collectionView.viewForAnchoringPopover.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
  v2 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
  v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
  v4 = v1;

  sub_21D442E44(2u, v3, v4);

  v5 = *&v1[v2];
  result = swift_beginAccess();
  v7 = *(v5 + 40);
  if (*(v7 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    sub_21D0D3954(v7 + 160, v10, &unk_27CE5F120);
    v8 = v10[0];
    if (v10[0])
    {
      v9 = v10[0];
    }

    sub_21D0CF7E0(v10, &unk_27CE5F120);
    return v8;
  }

  return result;
}

id TTRIRemindersListReminderCell_collectionView.attributedTitle.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) attributedText];

  return v1;
}

void TTRIRemindersListReminderCell_collectionView.rect(for:in:)(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  if (v7 <= 1)
  {
    if (*a1)
    {
      v59 = *&v3[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView];
      [*&v4[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView] bounds];
      [v4 convertRect:v59 fromCoordinateSpace:?];
      v82 = CGRectInset(v81, 0.0, -12.0);
      x = v82.origin.x;
      y = v82.origin.y;
      width = v82.size.width;
      height = v82.size.height;
      [v4 bounds];
      v86.origin.x = v64;
      v86.origin.y = v65;
      v86.size.width = v66;
      v86.size.height = v67;
      v83.origin.x = x;
      v83.origin.y = y;
      v83.size.width = width;
      v83.size.height = height;
      *&v19 = CGRectIntersection(v83, v86);
    }

    else
    {
      [v3 bounds];
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v23 = *&v3[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView];
    v24 = [v23 selectedTextRange];
    if (!v24)
    {
      v39 = 0uLL;
      v8 = 1;
      v70 = 0uLL;
      goto LABEL_17;
    }

    v10 = v24;
    v25 = [v24 end];
    [v23 caretRectForPosition_];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [v4 convertRect:v23 fromCoordinateSpace:{v27, v29, v31, v33}];
    v74 = CGRectInset(v73, 0.0, -12.0);
    v11 = v74.origin.x;
    v12 = v74.origin.y;
    v13 = v74.size.width;
    v14 = v74.size.height;
    [v4 bounds];
    goto LABEL_10;
  }

  if (v7 != 3)
  {
    v8 = 1;
    v38 = sub_21D62E958(1u);
    v39 = 0uLL;
    if (v38)
    {
      v10 = v38;
      v40 = [v38 selectedTextRange];
      if (!v40)
      {

        v70 = 0uLL;
        v39 = 0uLL;
        goto LABEL_17;
      }

      v41 = v40;
      v42 = [v40 end];
      [v10 caretRectForPosition_];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      [v4 convertRect:v10 fromCoordinateSpace:{v44, v46, v48, v50}];
      v78 = CGRectInset(v77, 0.0, -12.0);
      v51 = v78.origin.x;
      v52 = v78.origin.y;
      v53 = v78.size.width;
      v54 = v78.size.height;
      [v4 bounds];
      v85.origin.x = v55;
      v85.origin.y = v56;
      v85.size.width = v57;
      v85.size.height = v58;
      v79.origin.x = v51;
      v79.origin.y = v52;
      v79.size.width = v53;
      v79.size.height = v54;
      v80 = CGRectIntersection(v79, v85);
      v34 = v80.origin.x;
      v35 = v80.origin.y;
      v36 = v80.size.width;
      v37 = v80.size.height;

      goto LABEL_14;
    }

LABEL_20:
    v70 = 0uLL;
    goto LABEL_17;
  }

  v8 = 1;
  v9 = sub_21D62EAA4(1u);
  if (!v9)
  {
    v39 = 0uLL;
    goto LABEL_20;
  }

  v10 = v9;
  [v9 bounds];
  [v4 convertRect:v10 fromCoordinateSpace:?];
  v72 = CGRectInset(v71, 0.0, -12.0);
  v11 = v72.origin.x;
  v12 = v72.origin.y;
  v13 = v72.size.width;
  v14 = v72.size.height;
  [v4 bounds];
LABEL_10:
  v84.origin.x = v15;
  v84.origin.y = v16;
  v84.size.width = v17;
  v84.size.height = v18;
  v75.origin.x = v11;
  v75.origin.y = v12;
  v75.size.width = v13;
  v75.size.height = v14;
  v76 = CGRectIntersection(v75, v84);
  v34 = v76.origin.x;
  v35 = v76.origin.y;
  v36 = v76.size.width;
  v37 = v76.size.height;
LABEL_14:

  v22 = v37;
  v21 = v36;
  v20 = v35;
  v19 = v34;
LABEL_16:
  [a2 convertRect:v4 fromCoordinateSpace:{v19, v20, v21, v22}];
  v8 = 0;
  *(&v39 + 1) = v68;
  *(&v70 + 1) = v69;
LABEL_17:
  *a3 = v39;
  *(a3 + 16) = v70;
  *(a3 + 32) = v8;
}

id sub_21D635B74()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) attributedText];

  return v1;
}

double sub_21D635BE0@<D0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  TTRIRemindersListReminderCell_collectionView.rect(for:in:)(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView.cellTitleDidUpdateAutoCompleteReminderSuggestions(_:query:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_21DBFA85C();
  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_21DBFA84C();
  v13 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v14 = sub_21DBFA83C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  sub_21D1B5178(0, 0, v11, &unk_21DC1FAF0, v15);
}

uint64_t sub_21D635DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  sub_21DBFA84C();
  v7[7] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D635E58, v9, v8);
}

uint64_t sub_21D635E58()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v0[2] = v3;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);
  swift_retain_n();
  sub_21DBF5D9C();

  v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8);
  sub_21DBF8E0C();

  if (!v4)
  {
LABEL_7:
    v8 = v0[4];

    sub_21DBF8E0C();
    sub_21D23F2C4(v8, v1);

    goto LABEL_9;
  }

  if (v5 != v0[4] || v4 != v1)
  {
    v7 = sub_21DBFC64C();

    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = v0[6];
  swift_getKeyPath();
  v0[2] = v3;

  sub_21DBF5D9C();

  v10 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
  sub_21DBF8E0C();

  v11 = sub_21D1D56D8(v10, v9);

  if ((v11 & 1) == 0)
  {

    v12 = sub_21DBF8E0C();
    sub_21D23F4D4(v12);
  }

  sub_21D61F4C0(2);
  v13 = v0[1];

  return v13();
}

uint64_t TTRIRemindersListReminderCell_collectionView.handleIfNecessary(_:for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)(a1);
  v6 = v5;

  return v6 & 1;
}

uint64_t sub_21D63613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_21DBFA85C();
  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_21DBFA84C();
  v13 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v14 = sub_21DBFA83C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  sub_21D1B5178(0, 0, v11, &unk_21DC1FEE0, v15);
}

uint64_t sub_21D636298(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)(a1);
  v6 = v5;

  return v6 & 1;
}

void *TTRIRemindersListReminderCell_collectionView.nextKeyViewForCellNotes(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
  v2 = v1;
  return v1;
}

void *sub_21D636364()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
  v2 = v1;
  return v1;
}

uint64_t sub_21D636414(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 152))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D6364AC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 128))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView.largeImageAttachmentsView(_:didTapImage:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 168))(v2, a2, a1, &protocol witness table for TTRIRemindersListLargeImageAttachmentsView, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D636610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 168))(v5, a2, a1, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView._scribbleInteraction(_:willBeginWritingInElement:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 192))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView._scribbleInteraction(_:didFinishWritingInElement:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 200))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell_collectionView.autoCompleteReminderSuggestionTapped(suggestion:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = &v2[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule];
  result = swift_beginAccess();
  if (*v7)
  {
    v9 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 56);
    swift_unknownObjectRetain();
    v11(a1, ObjectType, v9);
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
    sub_21D1B5178(0, 0, v6, &unk_21DC1FB00, v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D636AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_21DBFA84C();
  *(v4 + 32) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D636B80, v6, v5);
}

uint64_t sub_21D636B80()
{
  v1 = v0[3];

  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v0[2] = v2;
  v3 = v0 + 2;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8))
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    v4[3] = 0;
    v4[4] = 0;
    v4[2] = v2;
    *v3 = v2;

    sub_21DBF5D8C();
  }

  swift_getKeyPath();
  *v3 = v2;

  sub_21DBF5D9C();

  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
  sub_21DBF8E0C();

  v6 = sub_21D1D56D8(v5, MEMORY[0x277D84F90]);

  if ((v6 & 1) == 0)
  {

    sub_21D23F4D4(MEMORY[0x277D84F90]);
  }

  sub_21D61F4C0(2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_21D636DF4(uint64_t a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v5 = *(v4 + *a2);

  return v5;
}

uint64_t TTRIRemindersListReminderCell_collectionView.completed.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v12[1] = v8;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v9 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v8 + v9, v3, &qword_27CE5A0B8);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5A0B8);
    v10 = 0;
  }

  else
  {
    sub_21D6397E0(v3, v7, type metadata accessor for TTRRemindersListViewModel.Reminder);
    v10 = sub_21DAFD898(v4);
    sub_21D6398B0(v7, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  return v10 & 1;
}

uint64_t TTRIRemindersListReminderCell_collectionView.ttrAccessibilitySectionName.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 248))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t TTRIRemindersListReminderCell_collectionView.ttrAccessibilityIsGroceryList.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 256))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t TTRIRemindersListReminderCell_collectionView.reminderListCellAccessibilityCustomRotors()()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 208))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void *sub_21D637300()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21D63734C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21D637450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v7 = *(v6 + *a4);

  return v7;
}

uint64_t sub_21D637520@<X0>(char *a1@<X8>)
{

  sub_21D2416E8(a1);
}

uint64_t sub_21D637570()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 248))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21D63761C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 256))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21D6376BC()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 208))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_21D6378DC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForContentGridView;
  result = sub_21D63815C();
  *(a1 + 32) = result;
  return result;
}

void (*sub_21D637928(uint64_t *a1))(uint64_t *a1)
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
  *(v2 + 24) = &type metadata for ContentConfigurationForContentGridView;
  *(v2 + 32) = sub_21D63815C();
  return sub_21D6379A0;
}

void sub_21D6379A0(uint64_t *a1)
{
  v1 = *a1;
  __swift_destroy_boxed_opaque_existential_0(*a1);

  free(v1);
}

uint64_t sub_21D6379DC(uint64_t a1)
{
  sub_21D0D32E4(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E90);
  return swift_dynamicCast();
}

id sub_21D637A2C()
{
  type metadata accessor for ContentGridView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_21D639008(&unk_280D16850, type metadata accessor for ContentGridView);
  return v0;
}

unint64_t sub_21D637AC4(unint64_t result, void *a2)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    return sub_21D637AD8(result, a2);
  }

  return result;
}

unint64_t sub_21D637AD8(unint64_t result, void *a2)
{
  if (!(result >> 62))
  {
    return a2;
  }

  return result;
}

void sub_21D637AE8(unint64_t a1, void *a2)
{
  if (a1 >> 1 != 0xFFFFFFFF)
  {
    sub_21D637AFC(a1, a2);
  }
}

void sub_21D637AFC(unint64_t a1, void *a2)
{
  if (!(a1 >> 62))
  {
  }
}

uint64_t (*sub_21D637B0C(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  sub_21DBF8E0C();
  return sub_21D6395C0;
}

uint64_t sub_21D637B9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D637BFC();
  }

  return result;
}

uint64_t sub_21D637BFC()
{
  if (v0[7])
  {
    swift_beginAccess();
    v1 = qword_27CE56F50;
    sub_21DBF8E0C();
    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE64A20);
    sub_21DBF8E0C();

    sub_21DBF8E0C();
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEBC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v5 = 136315650;
      if (v0[6])
      {
        v6 = v0[5];
        v7 = v0[6];
      }

      else
      {
        v7 = 0x800000021DC64200;
        v6 = 0xD000000000000055;
      }

      sub_21DBF8E0C();
      v8 = sub_21D0CDFB4(v6, v7, &v18);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      sub_21D19FAB0();
      v9 = sub_21DBFAABC();
      v11 = sub_21D0CDFB4(v9, v10, &v18);

      *(v5 + 14) = v11;
      *(v5 + 22) = 2080;
      v12 = sub_21DBFAABC();
      v14 = v13;

      v15 = sub_21D0CDFB4(v12, v14, &v18);

      *(v5 + 24) = v15;
      _os_log_impl(&dword_21D0C9000, v3, v4, "%s: @Observable object changed during update unexpectedly. This may result in an update loop {tryingToAdd: %s, whileUpdating: %s}", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    else
    {
    }
  }

  return sub_21D6380AC();
}

BOOL sub_21D637E90()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(*(v0 + 16) + 16);
  if (v2)
  {
    if (qword_27CE56F50 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE64A20);

    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315394;
      if (*(v1 + 48))
      {
        v8 = *(v1 + 40);
        v9 = *(v1 + 48);
      }

      else
      {
        v9 = 0x800000021DC64200;
        v8 = 0xD000000000000055;
      }

      sub_21DBF8E0C();
      v10 = sub_21D0CDFB4(v8, v9, &v16);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      sub_21D19FAB0();
      sub_21DBF8E0C();
      v11 = sub_21DBFAABC();
      v13 = v12;

      v14 = sub_21D0CDFB4(v11, v13, &v16);

      *(v6 + 14) = v14;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }
  }

  return v2 == 0;
}

uint64_t sub_21D6380AC()
{
  swift_beginAccess();
  v1 = sub_21DBF8E0C();
  sub_21D3235FC(v1);
  result = swift_endAccess();
  if (*(v0[2] + 16) && !v0[8])
  {
    result = swift_beginAccess();
    v3 = v0[3];
    if (v3)
    {

      v3(v4);
      return sub_21D0D0E88(v3);
    }
  }

  return result;
}

unint64_t sub_21D63815C()
{
  result = qword_280D16FB8[0];
  if (!qword_280D16FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D16FB8);
  }

  return result;
}

void sub_21D638208(void *a1, uint64_t (*a2)(void))
{
  v4 = a2();
  if (v4)
  {
    v6 = v5;
    sub_21D470EDC(v4);
    if (v6 == 1)
    {
      v7 = *MEMORY[0x277D76438];
      if (qword_27CE57420 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBFA12C();
      UIAccessibilityPostNotification(v7, v8);

      v9 = a2();
      if (v9)
      {
        if (qword_27CE56928 != -1)
        {
          v14 = v9;
          swift_once();
          v9 = v14;
        }

        v10 = qword_27CE5C838;
        v11 = v9;

        v12 = sub_21DBFC69C();
        objc_setAssociatedObject(a1, v10, v12, 1);
        swift_unknownObjectRelease();
        sub_21D470EDC(v11);
      }

      else
      {
        if (qword_27CE56928 != -1)
        {
          swift_once();
        }

        v13 = qword_27CE5C838;

        objc_setAssociatedObject(a1, v13, 0, 1);
      }
    }
  }
}

uint64_t sub_21D6383DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded);

  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 136))(v0, v2 ^ 1u, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void _s15RemindersUICore44TTRIRemindersListReminderCell_collectionViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  *v2 = 0;
  *(v2 + 2) = 0;
  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestionsAnnouncementPertinent;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  type metadata accessor for TTRIRemindersListReminderCellObservableViewModel();
  swift_allocObject();
  *(v0 + v4) = sub_21D240014();
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_reminderViewModelUpdater;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F040);
  v6 = swift_allocObject();
  v7 = *(*v6 + 104);
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010);
  swift_storeEnumTagMultiPayload();
  *(v1 + v5) = v6;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_updateHelper;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F050);
  v10 = swift_allocObject();
  *(v10 + 40) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 40) = 0xD000000000000018;
  *(v10 + 48) = 0x800000021DC63D90;
  if (qword_280D0E1F0 != -1)
  {
    swift_once();
  }

  *(v10 + 16) = qword_280D0E1F8;
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_indentationColumn) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStackRow) = 0;
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_unsupportedTextDropHandler;
  v12 = objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler());
  sub_21DBF8E0C();
  *(v1 + v11) = [v12 init];
  v13 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing) = xmmword_21DC1F990;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___plusOneDescriptionAttachment) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___minusOneDescriptionAttachment) = 0;
  v14 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v15 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule);
  *v15 = 0u;
  v15[1] = 0u;
  v15[2] = 0u;
  v16 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule);
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement) = 0;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D638850()
{
  v0 = sub_21DBFC45C();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

void *sub_21D6388A4(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21D6388F4(uint64_t a1)
{
  v3 = *(sub_21DBF54CC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21D6343F0(a1, v4, v5);
}

uint64_t sub_21D638994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D0F00D0;

  return sub_21D635DBC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21D638A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D636AE8(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListReminderCell_collectionView.UpdateFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListReminderCell_collectionView.UpdateFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21D638F44(uint64_t a1)
{
  result = sub_21D19FAB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D638FB4()
{
  result = qword_280D0E1D8;
  if (!qword_280D0E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0E1D8);
  }

  return result;
}

uint64_t sub_21D639008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_66Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_21D63910C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 288))(&v29, v13, v14);
  v15 = v30;
  if (v30 < 2)
  {
    return 0;
  }

  v25 = a7;
  v26 = a2;
  v17 = v32;
  if (v32)
  {
    v18 = v31;

    v15 = v17;
  }

  else
  {
    v18 = v29;
  }

  if (qword_27CE57390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_21D17A884();
  *(v19 + 32) = v18;
  *(v19 + 40) = v15;
  sub_21DBF8E0C();
  sub_21DBFA13C();

  sub_21D0D32E4(a1, v28);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  sub_21D0D0FD0(v28, (v20 + 4));
  v20[9] = v18;
  v20[10] = v15;
  v21 = objc_allocWithZone(MEMORY[0x277D75088]);

  v22 = sub_21DBFA12C();

  aBlock[4] = a6;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A62AC;
  aBlock[3] = v25;
  v23 = _Block_copy(aBlock);
  v24 = [v21 initWithName:v22 image:v26 actionHandler:v23];

  _Block_release(v23);

  return v24;
}

uint64_t objectdestroy_164Tm()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

void *sub_21D639460(void *result)
{
  if (result)
  {
    v1 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t objectdestroy_142Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

void sub_21D6396C0(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_21D639710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_21D639788(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_21D6397E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D639848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D6398B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_21D639910(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  return result;
}

void sub_21D639AF0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_29;
  }

  v3 = v0;
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5 || ([v5 isEditing] & 1) == 0)
  {
    v6 = *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_hashtagsAttributedText);
    if (v6)
    {
      v7 = *(v3 + v1);
      if (v7)
      {
        v8 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
        swift_beginAccess();
        v9 = *(v7 + v8);
        if (v9)
        {
          v10 = v6;
          v11 = [v9 attributedText];
          if (v11)
          {
            v12 = v11;
            sub_21D0D8CF0(0, &qword_280D177E0);
            v13 = v10;
            v14 = sub_21DBFB63C();

            if (v14)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v15 = v6;
        }

        v16 = *(v3 + v1);
        if (v16)
        {
          v17 = v16;
          v18 = sub_21D639E18();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21DC08D00;
          v20 = *MEMORY[0x277D740A8];
          *(inited + 32) = *MEMORY[0x277D740A8];
          v21 = v20;
          if (UIAccessibilityIsBoldTextEnabled())
          {
            v22 = sub_21D639F14();
          }

          else
          {
            v22 = *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_committedHashtagsFont);
          }

          *(inited + 40) = v22;
          v23 = sub_21D177570(inited);
          swift_setDeallocating();
          sub_21D63B658(inited + 32);
          TTRIRemindersListDescriptionAndTagsView.setHashtagsAttributedText(_:baseTextStyleOverrides:committedHashtagTextStyleOverrides:)(v6, v18, v23);

          v24 = *(v3 + v1);
          if (v24)
          {
            v25 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
            swift_beginAccess();
            v26 = *(v24 + v25);
            if (v26)
            {
              v27 = v26;
              if ([v27 isHidden])
              {
                v28 = [v6 string];
                v29 = sub_21DBFA16C();
                v31 = v30;

                v32 = HIBYTE(v31) & 0xF;
                if ((v31 & 0x2000000000000000) == 0)
                {
                  v32 = v29 & 0xFFFFFFFFFFFFLL;
                }

                if (v32)
                {
                  [v27 setHidden_];
                }
              }
            }

            v33 = *(v3 + v1);
            if (v33)
            {
              v34 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
              swift_beginAccess();
              v35 = v33[v34];
              v33[v34] = 1;
              v13 = v6;
              if ((v35 & 1) == 0)
              {
                v13 = v33;
                [v13 setNeedsLayout];
                [v13 invalidateIntrinsicContentSize];
              }

LABEL_26:

              return;
            }

LABEL_32:
            __break(1u);
            return;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }
}

unint64_t sub_21D639E18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = v2;
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v5 = &OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedHashtagsBoldFont;
  if (!IsBoldTextEnabled)
  {
    v5 = &OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedHashtagsFont;
  }

  v6 = *(v0 + *v5);
  v7 = *MEMORY[0x277D740C0];
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_uncommittedTagsColor);
  *(inited + 56) = v8;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v12 = sub_21D177570(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310);
  swift_arrayDestroy();
  return v12;
}

objc_class *sub_21D639F14()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController____lazy_storage___committedHashtagsBoldFont;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController____lazy_storage___committedHashtagsBoldFont);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController____lazy_storage___committedHashtagsBoldFont);
  }

  else
  {
    v4 = v0;
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v5 = sub_21D900614(6);
    isa = UIFont.withCustomWeight(_:)(*MEMORY[0x277D743F8]).super.isa;

    v7 = *(v4 + v1);
    *(v4 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_21D63A0FC(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (v3)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
    swift_beginAccess();
    v6 = *(v3 + v5);
    if (v6 && (sub_21D0D8CF0(0, &unk_280D0C330), v7 = v4, v8 = v6, v9 = sub_21DBFB63C(), v8, v7, (v9 & 1) != 0))
    {
      v10 = (*(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_quickBar);
      if (*v10)
      {
        v11 = v10[1];
        ObjectType = swift_getObjectType();
        (*(v11 + 16))(v7, &protocol witness table for UITextView, ObjectType, v11);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D63A270(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    sub_21D0D8CF0(0, &unk_280D0C330);
    v7 = a1;
    v8 = v6;
    v9 = sub_21DBFB63C();

    if (v9)
    {
      *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_userPressedReturn) = 0;
      v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
      v11 = [v7 attributedText];
      if (v11)
      {
        v12 = v11;
        v23 = 1;
        sub_21D60D50C(&v23);
        v13 = v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter;
        v14 = *(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        (*(v14 + 48))(v12, ObjectType, v14);

        v16 = [v7 attributedText];
        if (v16)
        {
          v17 = v16;
          v18 = [v7 selectedRange];
          v20 = v19;
          v21 = *(v13 + 8);
          v22 = swift_getObjectType();
          (*(v21 + 72))(v17, v18, v20, 0, v22, v21);

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

void sub_21D63A498(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    sub_21D0D8CF0(0, &unk_280D0C330);
    v7 = a1;
    v8 = v6;
    v9 = sub_21DBFB63C();

    if (v9)
    {
      v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
      v11 = [v7 attributedText];
      if (v11)
      {
        v12 = v11;
        v13 = *(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        (*(v13 + 56))(v12, ObjectType, v13);
        sub_21D60CBE4();
        v17 = 3;
        sub_21D60D50C(&v17);

        if (*(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_quickBar))
        {
          v15 = *(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_quickBar + 8);
          v16 = swift_getObjectType();
          (*(v15 + 24))(v7, &protocol witness table for UITextView, v16, v15);
        }

        return;
      }

LABEL_9:
      __break(1u);
    }
  }
}

void sub_21D63A68C(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    sub_21D0D8CF0(0, &unk_280D0C330);
    v7 = a1;
    v8 = v6;
    v9 = sub_21DBFB63C();

    if (v9)
    {
      v10 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail;
      v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail);
      v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail + 8);
      v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail + 16);
      v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail + 24);
      v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail + 32);
      *v10 = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0;
      sub_21D300ED0(v11);
      sub_21D300F14(v11);
      v16 = [v7 markedTextRange];
      v17 = v16;
      if (v16)
      {
      }

      v34 = v15;
      v18 = v13;
      v19 = v12;
      v20 = v11;
      v21 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
      v22 = [v7 attributedText];
      if (v22)
      {
        v23 = v22;
        LOBYTE(v35[0]) = 2;
        sub_21D60D50C(v35);
        v24 = v21 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter;
        v25 = *(v21 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        v35[0] = v20;
        v35[1] = v19;
        v35[2] = v18;
        v35[3] = v14;
        v35[4] = v34;
        (*(v25 + 88))(v23, v35, v17 != 0, ObjectType, v25);

        v27 = [v7 attributedText];
        if (v27)
        {
          v28 = v27;
          v29 = [v7 selectedRange];
          v31 = v30;
          v32 = *(v24 + 8);
          v33 = swift_getObjectType();
          (*(v32 + 72))(v28, v29, v31, 0, v33, v32);

          sub_21D300F14(v20);
          return;
        }

LABEL_12:
        __break(1u);
        return;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }
}

void sub_21D63A97C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    return;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  v5 = v4;
  if (sub_21DBFB63C())
  {
    v6 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
    swift_beginAccess();
    if ((*(v5 + v6) & 1) == 0)
    {
      v7 = [v5 selectedRange];
      v9 = v8;
      v10 = [v5 textStorage];
      v11.location = v7;
      v11.length = v9;
      v12 = TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(v11, v10);

      if (v12.location != v7 || v12.length != v9)
      {
        [v5 setSelectedRange_];
      }
    }

    v14 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
    v15 = v5;
    v16 = [v15 attributedText];
    if (v16)
    {
      v5 = v16;
      v17 = [v15 selectedRange];
      v19 = v18;

      v20 = *(v14 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
      ObjectType = swift_getObjectType();
      (*(v20 + 72))(v5, v17, v19, 0, ObjectType, v20);

      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_12:
}

uint64_t sub_21D63ABE4(uint64_t result, uint64_t a2, NSUInteger a3, uint64_t a4, unint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v6)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5;
  v12 = result;
  v13 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v14 = *(v6 + v13);
  if (v14)
  {
    sub_21D0D8CF0(0, &qword_280D17680);
    v15 = v14;
    if ((sub_21DBFB63C() & 1) == 0)
    {
LABEL_8:

      return 0;
    }

    if (a4 == 10 && a5 == 0xE100000000000000 || (sub_21DBFC64C() & 1) != 0)
    {
      *(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_userPressedReturn) = 1;
      v16 = *(*(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 64))(ObjectType, v16);
      goto LABEL_8;
    }

    v18 = *(*(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
    result = [v15 attributedText];
    if (result)
    {
      v19 = result;
      v20 = swift_getObjectType();
      v21 = (*(v18 + 80))(v19, a2, a3, a4, a5, v20, v18);

      v22 = [v12 textStorage];
      TTRHashtagTokenTextInteraction.adjustTextReplacement(in:affectedRange:replacementText:)(v22, a2, a3, a4, a5, &v26);

      if (v27 - 1 < 2)
      {
        [v12 setSelectedRange_];
        goto LABEL_8;
      }

      if (!v27)
      {
        sub_21D6C4004(v26, *(&v26 + 1));
        goto LABEL_8;
      }

      if (v26 != 0 || (v21 & 1) == 0)
      {
        goto LABEL_8;
      }

      result = [v12 attributedText];
      if (result)
      {
        v23 = result;

        v24 = (v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail);
        v25 = *(v7 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_lastTextChangeDetail);
        *v24 = v23;
        v24[1] = a2;
        v24[2] = a3;
        v24[3] = a4;
        v24[4] = a5;
        sub_21DBF8E0C();
        sub_21D300F14(v25);
        return 1;
      }

LABEL_22:
      __break(1u);
      return result;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_21D63AF48(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView) = result;
    v4 = result;

    v5 = &v4[OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextViewDelegate];
    swift_beginAccess();
    *(v5 + 1) = &off_282EC9BF0;
    swift_unknownObjectWeakAssign();
    v6 = v4;
    return sub_21D6B4200();
  }

  return result;
}

void sub_21D63AFE0(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (a1)
  {
    if (v5)
    {
      v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v5;
  v8 = sub_21D639E18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v11 = v10;
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v12 = sub_21D639F14();
  }

  else
  {
    v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_committedHashtagsFont);
  }

  *(inited + 40) = v12;
  v13 = sub_21D177570(inited);
  swift_setDeallocating();
  sub_21D63B658(inited + 32);
  v14 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v15 = *&v7[v14];
  if (v15)
  {
    v16 = *&v7[v14];
  }

  else
  {
    v16 = sub_21D6B5BE0();
    v17 = [v16 attributedText];
    if (!v17)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v18 = v17;
    if (qword_280D0F940 != -1)
    {
      swift_once();
    }

    v21[0] = qword_280D0F948;
    sub_21DBF8E0C();
    sub_21D6C3690(v18, v8, v13, v21);

    sub_21D6C39DC();
    v15 = 0;
  }

  v19 = v15;
  [v16 setHidden_];

  v5 = *(v2 + v4);
  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
LABEL_16:
  swift_beginAccess();
  v20 = *&v5[v6];
  if (v20)
  {
    [v20 setHidden_];
  }
}

void sub_21D63B22C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v13 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    if (v13)
    {
      v6 = v5;
      if ([v6 isEditing])
      {
        v7 = [*&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage] string];
        v8 = sub_21DBFA16C();
        v10 = v9;

        TTRReminderCellTextHighlights.rebased(forCurrentText:)(v8, v10, v14);

        sub_21D98115C(v14[2]);

        sub_21D6C4EA8(v3);
        v11 = *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions];
        if (v11 >> 62)
        {
          sub_21D0D8CF0(0, &qword_280D0C2B0);
          sub_21DBF8E0C();
          v12 = sub_21DBFC33C();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_21DBFC65C();
          sub_21D0D8CF0(0, &qword_280D0C2B0);
          v12 = v11;
        }

        sub_21D6C5B68(v12);

        return;
      }
    }

    else
    {
      v6 = v5;
      sub_21D98115C(MEMORY[0x277D84FA0]);
      sub_21D6C4EA8(MEMORY[0x277D84F90]);
    }
  }
}

void sub_21D63B43C(uint64_t *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (v3)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
    swift_beginAccess();
    v8 = *(v3 + v7);
    if (v8)
    {
      v19 = v4;
      v20 = v5;
      v21 = v6;
      v9 = v8;
      v22.hashtagsToAdd._rawValue = &v19;
      TTRReminderTextStorage.applyHashtagUpdate(_:)(v22);
      v10 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
      v11 = v9;
      v12 = [v11 attributedText];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 selectedRange];
        v16 = v15;

        v17 = *(v10 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        (*(v17 + 72))(v13, v14, v16, 0, ObjectType, v17);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_21D63B658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D63B6C0(void *a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v1;
  v6 = a1;
  v7 = v3;
  TTRIRemindersListDescriptionAndTagsView.descriptionAttributedText.setter(a1);

  v8 = *(v4 + v2);
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  TTRIRemindersListDescriptionAndTagsView.updateDescriptionHiddenState()();

  v10 = *(v4 + v2);
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_needsUpdate;
  swift_beginAccess();
  v12 = v10[v11];
  v10[v11] = 1;
  if (v12 != 1)
  {
    v13 = v10;
    [v13 setNeedsLayout];
    [v13 invalidateIntrinsicContentSize];
  }
}

void sub_21D63B7A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_descriptionAndTagsView);
  if (!v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellHashtagViewController_presenter);
  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!v7 || (v8 = [v7 attributedText]) == 0)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  v9 = *(v1 + v2);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (v11)
  {
    v12 = [*(v9 + v10) selectedRange];
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  (*(v15 + 96))(a1, v8, v12, v14, v11 == 0, ObjectType, v15);
}

uint64_t sub_21D63B934@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF96CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21D0D3954(v2, &v14 - v9, &qword_27CE5F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21DBF97BC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21DBFAECC();
    v13 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21D63BB34()
{
  v1 = sub_21DBF96CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TTRAutoCategorizationOverlayView() + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_21DBFAECC();
    v7 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t TTRAutoCategorizationOverlayView.init(titleString:subtitleString:shouldShowArrow:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for TTRAutoCategorizationOverlayView();
  v17 = a8 + v16[5];
  result = swift_getKeyPath();
  *v17 = result;
  v17[8] = 0;
  v19 = (a8 + v16[6]);
  *v19 = a1;
  v19[1] = a2;
  v20 = (a8 + v16[7]);
  *v20 = a3;
  v20[1] = a4;
  *(a8 + v16[8]) = a5;
  v21 = (a8 + v16[9]);
  *v21 = a6;
  v21[1] = a7;
  return result;
}

uint64_t TTRAutoCategorizationOverlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F390);
  MEMORY[0x28223BE20](v100);
  v101 = &v71 - v2;
  v76 = sub_21DBF9A0C();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F398);
  MEMORY[0x28223BE20](v99);
  v77 = &v71 - v4;
  v5 = sub_21DBF95AC();
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3A0);
  MEMORY[0x28223BE20](v90);
  v92 = &v71 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3A8);
  MEMORY[0x28223BE20](v91);
  v73 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3B0);
  MEMORY[0x28223BE20](v9);
  v79 = &v71 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3B8);
  MEMORY[0x28223BE20](v81);
  v72 = &v71 - v11;
  v12 = type metadata accessor for TTRAutoCategorizationOverlayView();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3C0);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3C8);
  MEMORY[0x28223BE20](v83);
  v78 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v84 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3D0);
  MEMORY[0x28223BE20](v22 - 8);
  v82 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v85 = &v71 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3D8);
  MEMORY[0x28223BE20](v87);
  v80 = &v71 - v26;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3E0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v71 - v27;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3E8);
  MEMORY[0x28223BE20](v93);
  v94 = &v71 - v28;
  sub_21D63D8A8(v1, &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v30 = swift_allocObject();
  sub_21D63D90C(&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  v103 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F3F0);
  sub_21D0D0F1C(&qword_27CE5F3F8, &qword_27CE5F3F0);
  sub_21DBF9B8C();
  v31 = sub_21DBF985C();
  v32 = &v18[*(v16 + 36)];
  *v32 = v31;
  *(v32 + 8) = xmmword_21DC201F0;
  *(v32 + 24) = xmmword_21DC201F0;
  v32[40] = 0;
  v33 = *(v13 + 40);
  v98 = v1;
  v34 = *(v1 + v33);
  if (v34)
  {
    v35 = v72;
    v36 = &v72[*(v81 + 36)];
    sub_21DBF9C6C();
    v37 = sub_21DBF985C();
    v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F428) + 36)] = v37;
    sub_21D0D3954(v18, v35, &qword_27CE5F3C0);
    sub_21D0D3954(v35, v79, &qword_27CE5F3B8);
    swift_storeEnumTagMultiPayload();
    sub_21D63D9E4();
    sub_21D63DA9C();
    v38 = v78;
    sub_21DBF97FC();
    sub_21D0CF7E0(v35, &qword_27CE5F3B8);
    sub_21D0CF7E0(v18, &qword_27CE5F3C0);
    v39 = v84;
    sub_21D0D523C(v38, v84, &qword_27CE5F3C8);
    sub_21D0D3954(v39, v92, &qword_27CE5F3C8);
    swift_storeEnumTagMultiPayload();
    sub_21D63DB54();
    sub_21D63DC0C();
    v40 = v82;
    sub_21DBF97FC();
  }

  else
  {
    sub_21D0D3954(v18, v79, &qword_27CE5F3C0);
    swift_storeEnumTagMultiPayload();
    sub_21D63D9E4();
    sub_21D63DA9C();
    v41 = v78;
    sub_21DBF97FC();
    sub_21D0CF7E0(v18, &qword_27CE5F3C0);
    v39 = v84;
    sub_21D0D523C(v41, v84, &qword_27CE5F3C8);
    v42 = [objc_opt_self() tertiarySystemBackgroundColor];
    v43 = sub_21DBF9ABC();
    v44 = sub_21DBF985C();
    v45 = v73;
    sub_21D0D3954(v39, v73, &qword_27CE5F3C8);
    v46 = v45 + *(v91 + 36);
    *v46 = v43;
    *(v46 + 8) = v44;
    sub_21D0D3954(v45, v92, &qword_27CE5F3A8);
    swift_storeEnumTagMultiPayload();
    sub_21D63DB54();
    sub_21D63DC0C();
    v40 = v82;
    sub_21DBF97FC();
    sub_21D0CF7E0(v45, &qword_27CE5F3A8);
  }

  sub_21D0CF7E0(v39, &qword_27CE5F3C8);
  v47 = v40;
  v48 = v85;
  sub_21D0D523C(v47, v85, &qword_27CE5F3D0);
  v49 = v87;
  v50 = v80;
  v51 = &v80[*(v87 + 36)];
  v52 = *(sub_21DBF95BC() + 20);
  v53 = *MEMORY[0x277CE0118];
  v54 = sub_21DBF979C();
  (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
  __asm { FMOV            V0.2D, #14.0 }

  *v51 = _Q0;
  *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B678) + 36)] = 256;
  sub_21D0D523C(v48, v50, &qword_27CE5F3D0);
  v60 = v95;
  sub_21DBF959C();
  v61 = sub_21D63DC98();
  v62 = sub_21D63DFB0(&qword_27CE5F460, MEMORY[0x277CDDB18]);
  v63 = v86;
  v64 = v97;
  sub_21DBF99AC();
  (*(v96 + 8))(v60, v64);
  sub_21D0CF7E0(v50, &qword_27CE5F3D8);
  sub_21D63BB34();
  v104 = v49;
  v105 = v64;
  v106 = v61;
  v107 = v62;
  swift_getOpaqueTypeConformance2();
  v65 = v94;
  v66 = v89;
  sub_21DBF99EC();
  (*(v88 + 8))(v63, v66);
  if (v34)
  {
    sub_21D0D3954(v65, v101, &qword_27CE5F3E8);
    swift_storeEnumTagMultiPayload();
    sub_21D63DDDC();
    sub_21D63DE68();
    sub_21DBF97FC();
  }

  else
  {
    (*(v75 + 104))(v74, *MEMORY[0x277CE0EE0], v76);
    v67 = sub_21DBF9A9C();
    v68 = v77;
    sub_21D0D3954(v65, v77, &qword_27CE5F3E8);
    v69 = v68 + *(v99 + 36);
    *v69 = v67;
    *(v69 + 8) = xmmword_21DC20200;
    *(v69 + 24) = 0x4000000000000000;
    sub_21D0D3954(v68, v101, &qword_27CE5F398);
    swift_storeEnumTagMultiPayload();
    sub_21D63DDDC();
    sub_21D63DE68();
    sub_21DBF97FC();
    sub_21D0CF7E0(v68, &qword_27CE5F398);
  }

  return sub_21D0CF7E0(v65, &qword_27CE5F3E8);
}

uint64_t sub_21D63CB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21DBF97CC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4B0);
  return sub_21D63CBEC(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_21D63CBEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4B8);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = (&v42 - v6);
  v7 = sub_21DBF987C();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_21DBF98DC();
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF97BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  type metadata accessor for TTRAutoCategorizationOverlayView();
  sub_21DBF8E0C();
  v47 = a1;
  sub_21D63B934(v18);
  (*(v13 + 104))(v15, *MEMORY[0x277CE0220], v12);
  LOBYTE(a1) = sub_21DBF94CC();
  v19 = *(v13 + 8);
  v19(v15, v12);
  v19(v18, v12);
  if (a1)
  {
    sub_21DBF9A7C();
  }

  else
  {
    sub_21DBF9A8C();
  }

  v20 = sub_21DBF993C();
  v22 = v21;
  v24 = v23;

  v25 = v43;
  (*(v9 + 104))(v11, *MEMORY[0x277CE0A58], v43);
  v26 = v44;
  sub_21DBF986C();
  sub_21DBF98BC();
  (*(v45 + 8))(v26, v46);
  (*(v9 + 8))(v11, v25);
  v27 = sub_21DBF994C();
  v29 = v28;
  LODWORD(v46) = v30;
  v32 = v31;

  sub_21D3CE120(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v34 = sub_21DBF972C();
  v35 = v48;
  *v48 = v34;
  *(v35 + 8) = 0;
  *(v35 + 16) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4C0);
  sub_21D63D0F8(v47, (v35 + *(v36 + 44)));
  v37 = v49;
  sub_21D0D3954(v35, v49, &qword_27CE5F4B8);
  v38 = v42;
  *v42 = v27;
  v38[1] = v29;
  v39 = v46 & 1;
  *(v38 + 16) = v46 & 1;
  v38[3] = v32;
  v38[4] = KeyPath;
  v38[5] = 1;
  *(v38 + 48) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4C8);
  sub_21D0D3954(v37, v38 + *(v40 + 48), &qword_27CE5F4B8);
  sub_21D3D0EA8(v27, v29, v39);
  sub_21DBF8E0C();

  sub_21D0CF7E0(v35, &qword_27CE5F4B8);
  sub_21D0CF7E0(v37, &qword_27CE5F4B8);
  sub_21D3CE120(v27, v29, v39);
}

uint64_t sub_21D63D0F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a1;
  v73 = a2;
  v2 = sub_21DBF97BC();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = &v59 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B750);
  MEMORY[0x28223BE20](v59);
  v70 = (&v59 - v6);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B760);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4D0);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v59 - v13;
  v69 = sub_21DBF987C();
  v14 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF98DC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TTRAutoCategorizationOverlayView();
  sub_21DBF8E0C();
  sub_21DBF9A7C();
  v21 = sub_21DBF993C();
  v23 = v22;
  v25 = v24;
  KeyPath = v26;

  (*(v18 + 104))(v20, *MEMORY[0x277CE0AC0], v17);
  sub_21DBF986C();
  v27 = 1;
  sub_21DBF98BC();
  (*(v14 + 8))(v16, v69);
  (*(v18 + 8))(v20, v17);
  v28 = sub_21DBF994C();
  v30 = v29;
  v32 = v31;
  v69 = v33;

  sub_21D3CE120(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  if (*(v66 + *(v67 + 32)) == 1)
  {
    v34 = sub_21DBF9ADC();
    v35 = v70;
    v36 = (v70 + *(v59 + 36));
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B758) + 28);
    v38 = *MEMORY[0x277CE1050];
    v39 = sub_21DBF9B1C();
    (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
    *v36 = swift_getKeyPath();
    *v35 = v34;
    v40 = v62;
    sub_21D63B934(v62);
    v42 = v63;
    v41 = v64;
    v43 = v65;
    (*(v64 + 104))(v63, *MEMORY[0x277CE0220], v65);
    LOBYTE(v34) = sub_21DBF94CC();
    v44 = *(v41 + 8);
    v44(v42, v43);
    v44(v40, v43);
    if (v34)
    {
      v45 = sub_21DBF9A7C();
    }

    else
    {
      v45 = sub_21DBF9A8C();
    }

    v46 = v45;
    v47 = v75;
    v48 = swift_getKeyPath();
    v49 = v61;
    sub_21D0D523C(v70, v61, &qword_27CE5B750);
    v50 = (v49 + *(v74 + 36));
    *v50 = v48;
    v50[1] = v46;
    v51 = v49;
    v52 = v60;
    sub_21D0D523C(v51, v60, &qword_27CE5B760);
    sub_21D0D523C(v52, v47, &qword_27CE5B760);
    v27 = 0;
  }

  v53 = v75;
  (*(v71 + 56))(v75, v27, 1, v74);
  v54 = v72;
  sub_21D0D3954(v53, v72, &qword_27CE5F4D0);
  v55 = v73;
  *v73 = v28;
  v55[1] = v30;
  *(v55 + 16) = v32 & 1;
  v56 = KeyPath;
  v55[3] = v69;
  v55[4] = v56;
  v55[5] = 1;
  *(v55 + 48) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F4D8);
  sub_21D0D3954(v54, v55 + *(v57 + 48), &qword_27CE5F4D0);
  sub_21D3D0EA8(v28, v30, v32 & 1);
  sub_21DBF8E0C();

  sub_21D0CF7E0(v53, &qword_27CE5F4D0);
  sub_21D0CF7E0(v54, &qword_27CE5F4D0);
  sub_21D3CE120(v28, v30, v32 & 1);
}

uint64_t type metadata accessor for TTRAutoCategorizationOverlayView()
{
  result = qword_27CE5F488;
  if (!qword_27CE5F488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D63D8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAutoCategorizationOverlayView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D63D90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAutoCategorizationOverlayView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D63D9E4()
{
  result = qword_27CE5F400;
  if (!qword_27CE5F400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3B8);
    sub_21D63DA9C();
    sub_21D0D0F1C(&qword_27CE5F420, &qword_27CE5F428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F400);
  }

  return result;
}

unint64_t sub_21D63DA9C()
{
  result = qword_27CE5F408;
  if (!qword_27CE5F408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3C0);
    sub_21D0D0F1C(&qword_27CE5F410, &qword_27CE5F418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F408);
  }

  return result;
}

unint64_t sub_21D63DB54()
{
  result = qword_27CE5F430;
  if (!qword_27CE5F430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3A8);
    sub_21D63DC0C();
    sub_21D0D0F1C(&qword_27CE5F440, &qword_27CE5F448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F430);
  }

  return result;
}

unint64_t sub_21D63DC0C()
{
  result = qword_27CE5F438;
  if (!qword_27CE5F438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3C8);
    sub_21D63D9E4();
    sub_21D63DA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F438);
  }

  return result;
}

unint64_t sub_21D63DC98()
{
  result = qword_27CE5F450;
  if (!qword_27CE5F450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3D8);
    sub_21D63DD50();
    sub_21D0D0F1C(&qword_27CE5B8F0, &qword_27CE5B678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F450);
  }

  return result;
}

unint64_t sub_21D63DD50()
{
  result = qword_27CE5F458;
  if (!qword_27CE5F458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3D0);
    sub_21D63DB54();
    sub_21D63DC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F458);
  }

  return result;
}

unint64_t sub_21D63DDDC()
{
  result = qword_27CE5F468;
  if (!qword_27CE5F468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F398);
    sub_21D63DE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F468);
  }

  return result;
}

unint64_t sub_21D63DE68()
{
  result = qword_27CE5F470;
  if (!qword_27CE5F470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F3D8);
    sub_21DBF95AC();
    sub_21D63DC98();
    sub_21D63DFB0(&qword_27CE5F460, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21D63DFB0(&qword_27CE5F478, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F470);
  }

  return result;
}

uint64_t sub_21D63DFB0(unint64_t *a1, void (*a2)(uint64_t))
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

void *initializeBufferWithCopyOfBuffer for TTRAutoCategorizationOverlayView(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    v4 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_21DBF97BC();
      (*(*(v7 - 8) + 16))(v4, a2, v7);
    }

    else
    {
      *v4 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[5];
    v10 = v4 + v9;
    v11 = a2 + v9;
    v12 = *v11;
    v13 = v11[8];
    sub_21D3C890C(*v11, v13);
    *v10 = v12;
    v10[8] = v13;
    v14 = a3[6];
    v15 = a3[7];
    v16 = (v4 + v14);
    v17 = (a2 + v14);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
    v19 = (v4 + v15);
    v20 = (a2 + v15);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = a3[9];
    *(v4 + a3[8]) = *(a2 + a3[8]);
    v23 = (v4 + v22);
    v24 = (a2 + v22);
    v25 = v24[1];
    *v23 = *v24;
    v23[1] = v25;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return v4;
}

uint64_t destroy for TTRAutoCategorizationOverlayView(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21DBF97BC();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
  }

  sub_21D3C8A88(*(a1 + *(a2 + 20)), *(a1 + *(a2 + 20) + 8));
}

void *initializeWithCopy for TTRAutoCategorizationOverlayView(void *a1, void *a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21DBF97BC();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *v9;
  v11 = v9[8];
  sub_21D3C890C(*v9, v11);
  *v8 = v10;
  v8[8] = v11;
  v12 = a3[6];
  v13 = a3[7];
  v14 = (a1 + v12);
  v15 = (a2 + v12);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = (a1 + v13);
  v18 = (a2 + v13);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;
  v20 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return a1;
}

void *assignWithCopy for TTRAutoCategorizationOverlayView(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5F388);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_21DBF97BC();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *v9;
  v11 = v9[8];
  sub_21D3C890C(*v9, v11);
  v12 = *v8;
  v13 = v8[8];
  *v8 = v10;
  v8[8] = v11;
  sub_21D3C8A88(v12, v13);
  v14 = a3[6];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  *v15 = *v16;
  v15[1] = v16[1];
  sub_21DBF8E0C();

  v17 = a3[7];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  *v18 = *v19;
  v18[1] = v19[1];
  sub_21DBF8E0C();

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v20 = a3[9];
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;

  return a1;
}

char *initializeWithTake for TTRAutoCategorizationOverlayView(char *a1, char *a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21DBF97BC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v8 = a3[5];
  v9 = a3[6];
  v10 = &a1[v8];
  v11 = &a2[v8];
  *v10 = *v11;
  v10[8] = v11[8];
  *&a1[v9] = *&a2[v9];
  v12 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  a1[v12] = a2[v12];
  *&a1[a3[9]] = *&a2[a3[9]];
  return a1;
}

char *assignWithTake for TTRAutoCategorizationOverlayView(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5F388);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F388);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_21DBF97BC();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v8 = a3[5];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *v10;
  LOBYTE(v10) = v10[8];
  v12 = *v9;
  v13 = v9[8];
  *v9 = v11;
  v9[8] = v10;
  sub_21D3C8A88(v12, v13);
  v14 = a3[6];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v18 = *v16;
  v17 = *(v16 + 1);
  *v15 = v18;
  *(v15 + 1) = v17;

  v19 = a3[7];
  v20 = &a1[v19];
  v21 = &a2[v19];
  v23 = *v21;
  v22 = *(v21 + 1);
  *v20 = v23;
  *(v20 + 1) = v22;

  v24 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v24] = *&a2[v24];

  return a1;
}

void sub_21D63E834()
{
  sub_21D63E8EC();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D63E8EC()
{
  if (!qword_27CE5F498)
  {
    sub_21DBF97BC();
    v0 = sub_21DBF94EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE5F498);
    }
  }
}

unint64_t sub_21D63E944()
{
  result = qword_27CE5F4A0;
  if (!qword_27CE5F4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F4A8);
    sub_21D63DDDC();
    sub_21D63DE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F4A0);
  }

  return result;
}

id TTRSingleColorGradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRSingleColorGradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  v10 = objc_opt_self();
  *&v4[v9] = [v10 clearColor];
  v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient] = 0;
  v11 = &v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient];
  v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0392156863 alpha:1.0];
  v13 = [v10 blackColor];
  *v11 = v12;
  v11[1] = v13;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode] = 27;
  v14 = &v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient];
  v15 = [v10 whiteColor];
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.980392157 alpha:1.0];
  *v14 = v15;
  v14[1] = v16;
  *&v4[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode] = 26;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for TTRSingleColorGradientView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v17 setClipsToBounds_];
  return v17;
}

id TTRSingleColorGradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRSingleColorGradientView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  v4 = objc_opt_self();
  *&v1[v3] = [v4 clearColor];
  v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient] = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0392156863 alpha:1.0];
  v7 = [v4 blackColor];
  *v5 = v6;
  v5[1] = v7;
  *&v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode] = 27;
  v8 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient];
  v9 = [v4 whiteColor];
  v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.980392157 alpha:1.0];
  *v8 = v9;
  v8[1] = v10;
  *&v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode] = 26;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TTRSingleColorGradientView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    [v13 setClipsToBounds_];
  }

  return v12;
}

id TTRSingleColorGradientView.GradientSettings.lighteningGradient.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return sub_21D10EC0C(v2, v3);
}

id TTRSingleColorGradientView.GradientSettings.darkeningGradient.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_21D10EC0C(v2, v3);
}

void sub_21D63EDE8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  sub_21D0D8CF0(0, &qword_280D1B8F0);
  v6 = v2;
  if ((sub_21DBFB63C() & 1) == 0)
  {
    [v3 setNeedsDisplay];
  }
}

id sub_21D63EE8C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21D63EEE0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  sub_21D0D8CF0(0, &qword_280D1B8F0);
  v6 = a1;
  if ((sub_21DBFB63C() & 1) == 0)
  {
    [v2 setNeedsDisplay];
  }
}

void (*sub_21D63EF8C(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21D63F028;
}

void sub_21D63F028(id **a1, char a2)
{
  v3 = *a1;
  v5 = *a1 + 3;
  v4 = *v5;
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = *&v6[v7];
  *&v6[v7] = *v5;
  sub_21D0D8CF0(0, &qword_280D1B8F0);
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    if ((sub_21DBFB63C() & 1) == 0)
    {
      [v3[4] setNeedsDisplay];
    }

    v10 = *v5;
  }

  else
  {
    if ((sub_21DBFB63C() & 1) == 0)
    {
      [v3[4] setNeedsDisplay];
    }
  }

  free(v3);
}

id sub_21D63F108(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsDisplay];
  }

  return result;
}

uint64_t sub_21D63F178()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D63F1BC(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsDisplay];
  }

  return result;
}

void (*sub_21D63F22C(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D63F2C0;
}

void sub_21D63F2C0(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsDisplay];
  }

  free(v1);
}

RemindersUICore::TTRSingleColorGradientView::LinearGradient __swiftcall TTRSingleColorGradientView.LinearGradient.init(from:to:)(UIColor from, UIColor to)
{
  v2->super.isa = from.super.isa;
  v2[1].super.isa = to.super.isa;
  result.to = to;
  result.from = from;
  return result;
}

uint64_t static TTRSingleColorGradientView.LinearGradient.== infix(_:_:)()
{
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C())
  {
    return sub_21DBFB63C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D63F468()
{
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C())
  {
    return sub_21DBFB63C() & 1;
  }

  else
  {
    return 0;
  }
}

void (*sub_21D63F4F8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  sub_21D10EC0C(v7, v8);
  return sub_21D63F594;
}

uint64_t sub_21D63F5A0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_21D63F5F0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D640D1C;
}

id sub_21D63F684@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *a3 = *v4;
  a3[1] = v6;
  return sub_21D10EC0C(v5, v6);
}

void sub_21D63F6D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *a2 + *a5;
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 8);
  *v8 = v7;
  *(v8 + 8) = v6;
  sub_21D10EC0C(v7, v6);
  sub_21D10EC0C(v9, v10);
  sub_21D0D9834(v9, v10);
  v11[0] = v9;
  v11[1] = v10;
  sub_21D63F784(v11, a5);
  sub_21D0D9834(v9, v10);
}

void sub_21D63F784(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = &v2[*a2];
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  if (!*v6)
  {
    sub_21D10EC0C(0, v6[1]);
    if (!v5)
    {
      sub_21D10EC0C(0, v4);
      sub_21D0D9834(0, v7);
      return;
    }

    sub_21D10EC0C(v5, v4);
    goto LABEL_9;
  }

  if (!v5)
  {
    sub_21D10EC0C(*v6, v6[1]);
    sub_21D10EC0C(0, v4);
    sub_21D10EC0C(v8, v7);

LABEL_9:
    sub_21D0D9834(v8, v7);
    v10 = v5;
    v11 = v4;
    goto LABEL_11;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  sub_21D10EC0C(v8, v7);
  sub_21D10EC0C(v8, v7);
  sub_21D10EC0C(v5, v4);
  sub_21D10EC0C(v8, v7);
  if (sub_21DBFB63C())
  {
    v9 = sub_21DBFB63C();
    sub_21D0D9834(v8, v7);
    sub_21D0D9834(v5, v4);

    sub_21D0D9834(v8, v7);
    if (v9)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_21D0D9834(v8, v7);
  sub_21D0D9834(v5, v4);

  v10 = v8;
  v11 = v7;
LABEL_11:
  sub_21D0D9834(v10, v11);
LABEL_12:
  [v3 setNeedsDisplay];
}

id sub_21D63F950@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *a2 = *v4;
  a2[1] = v6;
  return sub_21D10EC0C(v5, v6);
}

void sub_21D63F9AC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2 + *a2;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  sub_21D10EC0C(v7, v8);
  sub_21D0D9834(v7, v8);
  v9[0] = v7;
  v9[1] = v8;
  sub_21D63F784(v9, a2);
  sub_21D0D9834(v7, v8);
}

void (*sub_21D63FA48(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  sub_21D10EC0C(v7, v8);
  return sub_21D63FAE4;
}

void sub_21D63FAF0(uint64_t a1, char a2, void *a3)
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  v7 = v5[4];
  v8 = v5[5] + v5[6];
  v10 = *v8;
  v9 = *(v8 + 8);
  *v8 = v6;
  *(v8 + 8) = v7;
  if (a2)
  {
    sub_21D10EC0C(v6, v7);
    sub_21D10EC0C(v10, v9);
    sub_21D0D9834(v10, v9);
    v13 = v10;
    v14 = v9;
    sub_21D63F784(&v13, a3);
    sub_21D0D9834(v10, v9);
    v11 = v5[3];
    v12 = v5[4];
  }

  else
  {
    sub_21D10EC0C(v10, v9);
    sub_21D0D9834(v10, v9);
    v13 = v10;
    v14 = v9;
    sub_21D63F784(&v13, a3);
    v11 = v10;
    v12 = v9;
  }

  sub_21D0D9834(v11, v12);

  free(v5);
}

id sub_21D63FBDC(int *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  v9 = *&v6[v7];
  *&v6[v7] = v5;
  if (v5 != v9)
  {
    return [v6 setNeedsDisplay];
  }

  return result;
}

uint64_t sub_21D63FC48()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D63FC98(int a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  *&v2[v4] = a1;
  if (v6 != a1)
  {
    return [v2 setNeedsDisplay];
  }

  return result;
}

uint64_t (*sub_21D63FD00(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D63FD94;
}

void sub_21D63FD98(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsDisplay];
  }

  free(v1);
}

id sub_21D63FDF8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v18 = *(a1 + 40);
  v7 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient];
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  *v7 = v2;
  *(v7 + 1) = v3;
  sub_21D10EC0C(v2, v3);
  sub_21D10EC0C(v5, v6);
  sub_21D10EC0C(v8, v9);
  sub_21D0D9834(v8, v9);
  v20[0] = v8;
  v20[1] = v9;
  sub_21D63F784(v20, &OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient);
  sub_21D0D9834(v8, v9);
  v10 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode;
  swift_beginAccess();
  v11 = *&v1[v10];
  *&v1[v10] = v4;
  if (v4 != v11)
  {
    [v1 setNeedsDisplay];
  }

  v12 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient];
  swift_beginAccess();
  v13 = *v12;
  v14 = *(v12 + 1);
  *v12 = v5;
  *(v12 + 1) = v6;
  sub_21D10EC0C(v13, v14);
  sub_21D0D9834(v13, v14);
  v19[0] = v13;
  v19[1] = v14;
  sub_21D63F784(v19, &OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient);
  sub_21D0D9834(v13, v14);
  v15 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode;
  result = swift_beginAccess();
  v17 = *&v1[v15];
  *&v1[v15] = v18;
  if (v18 != v17)
  {
    return [v1 setNeedsDisplay];
  }

  return result;
}

id TTRSingleColorGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSingleColorGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21D6400AC(CGContext *a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_color;
  swift_beginAccess();
  [*&v1[v11] setFill];
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  CGContextFillRect(a1, v40);
  v12 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_hasGradient;
  swift_beginAccess();
  if (v1[v12] == 1)
  {
    CGContextSaveGState(a1);
    v13 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lighteningGradient];
    swift_beginAccess();
    v14 = *v13;
    if (*v13)
    {
      v15 = *(v13 + 1);
      v16 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_lightenBlendMode;
      swift_beginAccess();
      LODWORD(v16) = *&v1[v16];
      v17 = v14;
      v18 = v15;
      CGContextSetBlendMode(a1, v16);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21DC0AA00;
      v21 = DeviceRGB;
      *(v20 + 32) = [v17 CGColor];
      *(v20 + 40) = [v18 CGColor];
      type metadata accessor for CGColor(0);
      v22 = sub_21DBFA5DC();

      v23 = CGGradientCreateWithColors(v21, v22, dbl_282EA73F8);

      if (v23)
      {
        v38.y = v6 + v10;
        v36.x = v4;
        v36.y = v6;
        v38.x = v4;
        CGContextDrawLinearGradient(a1, v23, v36, v38, 0);
      }

      sub_21D0D9834(v14, v15);
    }

    v24 = &v1[OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkeningGradient];
    swift_beginAccess();
    v25 = *v24;
    if (*v24)
    {
      v26 = *(v24 + 1);
      v27 = OBJC_IVAR____TtC15RemindersUICore26TTRSingleColorGradientView_darkenBlendMode;
      swift_beginAccess();
      v28 = *&v1[v27];
      v29 = v25;
      v30 = v26;
      CGContextSetBlendMode(a1, v28);
      v31 = CGColorSpaceCreateDeviceRGB();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_21DC0AA00;
      v33 = v31;
      *(v32 + 32) = [v29 CGColor];
      *(v32 + 40) = [v30 CGColor];
      type metadata accessor for CGColor(0);
      v34 = sub_21DBFA5DC();

      v35 = CGGradientCreateWithColors(v33, v34, dbl_282EA7428);

      if (v35)
      {
        v39.y = v6 + v10;
        v37.x = v4;
        v37.y = v6;
        v39.x = v4;
        CGContextDrawLinearGradient(a1, v35, v37, v39, 0);
      }

      sub_21D0D9834(v25, v26);
    }

    CGContextRestoreGState(a1);
  }
}

uint64_t keypath_get_8Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

void destroy for TTRListBadgeView.GradientSettings(uint64_t a1)
{
  if (*a1)
  {
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    v3 = *(a1 + 32);
  }
}

uint64_t initializeWithCopy for TTRListBadgeView.GradientSettings(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(a2 + 8);
    *a1 = v4;
    *(a1 + 8) = v5;
    v6 = v4;
    v7 = v5;
  }

  else
  {
    *a1 = *a2;
  }

  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  if (v8)
  {
    v9 = *(a2 + 32);
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    v10 = v8;
    v11 = v9;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for TTRListBadgeView.GradientSettings(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v6 = v5;

      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      *(a1 + 8) = v7;
      v9 = v7;

      goto LABEL_8;
    }

    sub_21D640A9C(a1);
  }

  else if (v5)
  {
    *a1 = v5;
    v10 = *(a2 + 8);
    *(a1 + 8) = v10;
    v11 = v5;
    v12 = v10;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v13 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  v14 = *(a2 + 24);
  if (!v13)
  {
    if (v14)
    {
      *(a1 + 24) = v14;
      v19 = *(a2 + 32);
      *(a1 + 32) = v19;
      v20 = v14;
      v21 = v19;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_15;
  }

  if (!v14)
  {
    sub_21D640A9C((a1 + 24));
    goto LABEL_14;
  }

  *(a1 + 24) = v14;
  v15 = v14;

  v16 = *(a2 + 32);
  v17 = *(a1 + 32);
  *(a1 + 32) = v16;
  v18 = v16;

LABEL_15:
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRListBadgeView.GradientSettings(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (*a2)
    {
      *a1 = *a2;

      v5 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);

      goto LABEL_6;
    }

    sub_21D640A9C(a1);
  }

  *a1 = *a2;
LABEL_6:
  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  if (!v7)
  {
LABEL_10:
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_11;
  }

  if (!v6)
  {
    sub_21D640A9C((a1 + 24));
    goto LABEL_10;
  }

  *(a1 + 24) = v6;

  v8 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

LABEL_11:
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.GradientSettings(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 44))
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

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.GradientSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t sub_21D640D20()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F510);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F510);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMAlarmProximity.localizedString.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    case 1:
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    case 0:
      if (qword_280D1BAA8 == -1)
      {
LABEL_9:
        sub_21DBF516C();
        return;
      }

LABEL_10:
      swift_once();
      goto LABEL_9;
  }

  if (qword_27CE56B08 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5F510);
  v2 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v2);
  sub_21DAEAB00("unknown alarm proximity level", 29, 2);
  __break(1u);
}

unint64_t sub_21D6410AC()
{
  result = qword_27CE5F528;
  if (!qword_27CE5F528)
  {
    type metadata accessor for REMAlarmProximity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F528);
  }

  return result;
}

unint64_t sub_21D641108()
{
  result = qword_27CE5F530;
  if (!qword_27CE5F530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5F538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F530);
  }

  return result;
}

void sub_21D64116C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F578);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  swift_beginAccess();
  v12 = *(v6 + 56);
  sub_21D10521C(a1, v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
  *v11 = sub_21D29B520(&v11[v12], v4) & 1;
  sub_21D0D523C(v11, v8, &qword_27CE5F578);
  LODWORD(a1) = *v8;
  sub_21D30D8FC(&v8[*(v6 + 56)], type metadata accessor for TTRRemindersListViewModel.ItemID);
  swift_endAccess();
  if (a1 == 1)
  {
    v13._object = 0x800000021DC49D80;
    v13._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v13);
  }
}

uint64_t sub_21D641330()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F540);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F540);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D6413F8()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  __swift_allocate_value_buffer(v0, qword_27CE5F558);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F558);
  if (qword_27CE56E88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CE8EC18);
  return sub_21D10521C(v2, v1, type metadata accessor for TTRRemindersListViewModel.SectionID);
}

char *sub_21D64149C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    sub_21D0CE468();
    v3 = sub_21DBFB12C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F580);
    swift_allocObject();
    v1 = sub_21D1DD9E0(sub_21D64B370, v2, v3);

    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_21D64157C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D6415DC(v1);
  }

  return result;
}

uint64_t sub_21D6415DC(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  sub_21DBF8E0C();

  sub_21D64C634(v4, a1, v1, (v3 + 16));

  if (*(*(v3 + 16) + 16))
  {
    v5 = objc_opt_self();
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v6 = sub_21DBFA12C();

    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v3;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21D64CA88;
    *(v8 + 24) = v7;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_47_0;
    v9 = _Block_copy(aBlock);

    [v5 withActionName:v6 block:{v9, 0x800000021DC4F4C0}];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_21D6418B8(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F588);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext();
  v8 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 160);
  if (v11)
  {
    v12 = *(v1 + 160);
  }

  else
  {
    v12 = sub_21D641CD4(v1);
  }

  a1(v12);
  if (v11)
  {
  }

  else
  {
    if (*(v1 + 72))
    {
      if (qword_27CE56B10 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_27CE5F540);
      v15 = sub_21DBF84AC();
      v16 = sub_21DBFAE9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_21D0C9000, v15, v16, "TTRSECreateRemindersViewModelSource: not adding placeholder cell", v17, 2u);
        MEMORY[0x223D46520](v17, -1, -1);
      }
    }

    else
    {
      v18 = *(v12 + 16);
      v19 = *(v18 + 104);
      v20 = *(v18 + 112);

      v21 = sub_21D25E9D8(v19, v20);

      LOBYTE(v18) = sub_21D64B378(v21);
      *(v12 + 16) = v21;

      *(v12 + 24) = (*(v12 + 24) | v18) & 1;
      v22 = *(v12 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
      if (v22)
      {

        v22(v12);

        sub_21D0D0E88(v22);
      }

      else
      {
      }
    }

    *(v2 + 160) = 0;

    sub_21DABA628(v6);
    if ((*(v8 + 48))(v6, 1, updated) == 1)
    {

      return sub_21D0CF7E0(v6, &qword_27CE5F588);
    }

    else
    {
      sub_21D105834(v6, v10, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v25 = *(v24 + 24);
          ObjectType = swift_getObjectType();
          (*(v25 + 8))(v24, v10, ObjectType, v25);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D30D8FC(v10, type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext);
    }
  }
}

uint64_t sub_21D641CD4(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  type metadata accessor for TTRSECreateRemindersPresentationTreeTransaction();
  swift_allocObject();
  v7 = sub_21DABA99C(v3, v2, v4, v5, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = (v7 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  v10 = *(v7 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  *v9 = sub_21D64CA98;
  v9[1] = v8;

  sub_21D24A7C4(v2, v4);

  sub_21D0D0E88(v10);

  a1[20] = v7;

  return v7;
}

uint64_t sub_21D641DF4(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 16) = a1[2];
    v3 = result;

    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = v3[3];
    v9 = v3[4];
    v3[3] = v4;
    v3[4] = v5;
    v3[5] = v6;
    v3[6] = v7;
    sub_21D24A7C4(v4, v5);
    sub_21D24A814(v8, v9);
  }

  return result;
}

uint64_t sub_21D641EA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 + 104);
  v8 = *(v6 + 112);

  v9 = sub_21D25E9D8(v7, v8);

  LOBYTE(v6) = sub_21D641FBC(v9, a1, v3);
  *(a2 + 16) = v9;

  *(a2 + 24) = (*(a2 + 24) | v6) & 1;
  v10 = *(a2 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (v10)
  {

    v10(a2);

    return sub_21D0D0E88(v10);
  }

  else
  {
  }
}

BOOL sub_21D641FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  v61 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v61);
  v62 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v52 - v16;
  MEMORY[0x28223BE20](v17);
  v54 = &v52 - v18;
  MEMORY[0x28223BE20](v19);
  v55 = &v52 - v20;
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - v23;
  v25 = *(a2 + 16);
  v57 = a2;
  if (v25)
  {
    v59 = v7;
    v53 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v26 = a2 + v53;
    v27 = *(v22 + 72);
    v60 = MEMORY[0x277D84F90];
    v58 = a1;
    while (1)
    {
      sub_21D10521C(v26, v24, type metadata accessor for TTRRemindersListViewModel.Item);
      v29 = *(a1 + 80);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
      swift_beginAccess();
      if (*(*(v29 + 24) + 16) && (sub_21D181E00(v10, v30), (v31 & 1) != 0))
      {
        swift_endAccess();

        sub_21D30D8FC(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
        Strong = swift_weakLoadStrong();

        if (Strong)
        {
          v33 = *(*Strong + 120);
          swift_beginAccess();
          v34 = Strong + v33;
          v35 = v63;
          sub_21D10521C(v34, v63, type metadata accessor for TTRRemindersListViewModel.Item);

          sub_21D10521C(v35, v62, type metadata accessor for TTRRemindersListViewModel.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload <= 3)
          {
            if (EnumCaseMultiPayload >= 2)
            {
              goto LABEL_27;
            }
          }

          else if ((EnumCaseMultiPayload - 5) >= 4)
          {
            if ((EnumCaseMultiPayload - 9) >= 2)
            {
LABEL_27:
              sub_21D105834(v62, v13, type metadata accessor for TTRRemindersListViewModel.ReminderID);
            }

LABEL_16:
            v37 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
            swift_storeEnumTagMultiPayload();
            sub_21D30D8FC(v63, type metadata accessor for TTRRemindersListViewModel.Item);
            (*(*(v37 - 8) + 56))(v13, 0, 1, v37);
            if (swift_getEnumCaseMultiPayload() >= 3)
            {
              sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);
            }

            else
            {
              sub_21D30D8FC(v13, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
              v38 = *(a1 + 80);

              v39 = v59;
              TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v59);
              swift_beginAccess();
              if (*(*(v38 + 24) + 16) && (sub_21D181E00(v39, v40), (v41 & 1) != 0))
              {
                swift_endAccess();

                sub_21D30D8FC(v39, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v42 = swift_weakLoadStrong();

                sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);

                if (v42)
                {
                  v43 = *(*v42 + 120);
                  swift_beginAccess();
                  v44 = v54;
                  sub_21D10521C(v42 + v43, v54, type metadata accessor for TTRRemindersListViewModel.Item);

                  sub_21D105834(v44, v55, type metadata accessor for TTRRemindersListViewModel.Item);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  a1 = v58;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v60 = sub_21D211A80(0, v60[2] + 1, 1, v60);
                  }

                  v47 = v60[2];
                  v46 = v60[3];
                  if (v47 >= v46 >> 1)
                  {
                    v60 = sub_21D211A80(v46 > 1, v47 + 1, 1, v60);
                  }

                  v48 = v60;
                  v60[2] = v47 + 1;
                  sub_21D105834(v55, v48 + v53 + v47 * v27, type metadata accessor for TTRRemindersListViewModel.Item);
                }

                else
                {
                  a1 = v58;
                }
              }

              else
              {
                swift_endAccess();
                sub_21D30D8FC(v39, type metadata accessor for TTRRemindersListViewModel.ItemID);
                sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);

                a1 = v58;
              }
            }

            goto LABEL_5;
          }

          sub_21D30D8FC(v62, type metadata accessor for TTRRemindersListViewModel.Item);
          goto LABEL_16;
        }

        sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      else
      {
        swift_endAccess();
        sub_21D30D8FC(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D30D8FC(v24, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      v28 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
      (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
LABEL_5:
      v26 += v27;
      if (!--v25)
      {
        goto LABEL_30;
      }
    }
  }

  v60 = MEMORY[0x277D84F90];
LABEL_30:
  v64[0] = 1;
  sub_21D897284(v64, v60);

  v49 = sub_21D26C578(v57);

  v50 = *(v49 + 16);

  return v50 != 0;
}

uint64_t sub_21D642814(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  if (a2)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = v17 - 1;
      v19 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
      sub_21D10521C(a1 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * v18 + *(v19 + 20), v13, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D105834(v13, v16, type metadata accessor for TTRRemindersListViewModel.Item);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
      v21 = *(v20 + 48);
      sub_21D105834(v16, v10, type metadata accessor for TTRRemindersListViewModel.Item);
      v10[v21] = 0;
      (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
      v22 = OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_itemToStartEditing;
      swift_beginAccess();
      sub_21D0F02F4(v10, a3 + v22, &qword_27CE5E4C0);
      swift_endAccess();
    }
  }

  v23 = *(a3 + 16);
  v24 = *(v23 + 104);
  v25 = *(v23 + 112);

  v26 = sub_21D25E9D8(v24, v25);

  LOBYTE(v23) = sub_21D642B24(v26, a1, v4);
  *(a3 + 16) = v26;

  *(a3 + 24) = (*(a3 + 24) | v23) & 1;
  v27 = *(a3 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (!v27)
  {
  }

  v27(a3);

  return sub_21D0D0E88(v27);
}

uint64_t sub_21D642B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v91 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B8);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = v91 - v12;
  v107 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v97 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = v91 - v16;
  MEMORY[0x28223BE20](v17);
  v95 = v91 - v18;
  MEMORY[0x28223BE20](v19);
  v96 = v91 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A410);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v91 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v106);
  v105 = v91 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v25 - 8);
  v104 = v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v103 = v91 - v28;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  MEMORY[0x28223BE20](v109);
  v30 = v91 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F590);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v91 - v32;
  v34 = type metadata accessor for TTRRemindersListUncommittedReminder(0);
  MEMORY[0x28223BE20](v34);
  v116 = v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v110 = v91 - v39;
  v115 = *(a2 + 16);
  if (!v115)
  {
    v89 = 0;
    v63 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v92 = v10;
  v93 = v7;
  v94 = a3;
  v114 = 0;
  v40 = a2 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v91[0] = v13;
  v101 = (v13 + 56);
  v91[1] = v37;
  v41 = *(v37 + 24);
  v108 = *(v37 + 20);
  v113 = *(v38 + 72);
  v117 = v40;
  v42 = v115;
  v102 = v30;
  v100 = v41;
  do
  {
    v112 = v42;
    v47 = v110;
    sub_21D10521C(v40, v110, type metadata accessor for TTRRemindersListUncommittedReminder);
    v48 = *(v47 + v41);
    sub_21D105834(v47 + v108, v30, type metadata accessor for TTRRemindersListViewModel.Item);
    v49 = v109;
    sub_21D0D523C(v47, &v30[*(v109 + 56)], &qword_27CE5A3A0);
    v50 = &v30[*(v49 + 52)];
    *v50 = v48;
    *(v50 + 1) = 0;
    v50[16] = 1;

    sub_21D272718(v30, v23);

    sub_21D0CF7E0(v30, &qword_27CE5CDA0);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A538);
    if ((*(*(v51 - 8) + 48))(v23, 1, v51) == 1)
    {
      sub_21D0CF7E0(v23, &qword_27CE5A410);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
      (*(*(v43 - 8) + 56))(v33, 1, 1, v43);
    }

    else
    {
      v52 = *&v23[*(v51 + 48)];
      v53 = v106;
      v54 = *(v106 + 48);
      v55 = v33;
      v56 = v105;
      sub_21D0D523C(v23, v105, &unk_27CE5CD80);
      *(v56 + v54) = v52;
      v30 = v102;
      v57 = *(v56 + *(v53 + 48));
      v58 = v56;
      v33 = v55;
      v41 = v100;
      v59 = v103;
      sub_21D0D523C(v58, v103, &unk_27CE5CD80);
      v60 = v59;
      v61 = v104;
      sub_21D0D523C(v60, v104, &unk_27CE5CD80);
      (*v101)(v33, 1, 1, v107);
      sub_21D0F02F4(v61, v33, &unk_27CE5CD80);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
      *&v33[*(v62 + 36)] = v57;
      (*(*(v62 - 8) + 56))(v33, 0, 1, v62);
    }

    v44 = v112;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58900);
    v46 = (*(*(v45 - 8) + 48))(v33, 1, v45) != 1;
    sub_21D0CF7E0(v33, &qword_27CE5F590);
    v114 |= v46;
    v40 += v113;
    v42 = v44 - 1;
  }

  while (v42);
  v63 = MEMORY[0x277D84F90];
  v64 = v111;
  v65 = v93;
  v66 = v92;
  v67 = v98;
  do
  {
    sub_21D10521C(v117, v116, type metadata accessor for TTRRemindersListUncommittedReminder);
    v69 = *(v64 + 80);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v66);
    swift_beginAccess();
    if (!*(*(v69 + 24) + 16) || (sub_21D181E00(v66, v70), (v71 & 1) == 0))
    {
      swift_endAccess();
      sub_21D30D8FC(v66, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D30D8FC(v116, type metadata accessor for TTRRemindersListUncommittedReminder);

LABEL_9:
      v68 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
      (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
      goto LABEL_10;
    }

    swift_endAccess();

    sub_21D30D8FC(v66, type metadata accessor for TTRRemindersListViewModel.ItemID);
    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      sub_21D30D8FC(v116, type metadata accessor for TTRRemindersListUncommittedReminder);
      v67 = v98;
      goto LABEL_9;
    }

    v73 = *(*Strong + 120);
    swift_beginAccess();
    v74 = Strong + v73;
    v75 = v99;
    sub_21D10521C(v74, v99, type metadata accessor for TTRRemindersListViewModel.Item);

    sub_21D10521C(v75, v97, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      v67 = v98;
      if (EnumCaseMultiPayload < 2)
      {
LABEL_20:
        sub_21D30D8FC(v97, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_21;
      }
    }

    else
    {
      v67 = v98;
      if ((EnumCaseMultiPayload - 5) < 4)
      {
        goto LABEL_20;
      }

      if ((EnumCaseMultiPayload - 9) < 2)
      {
        goto LABEL_21;
      }
    }

    sub_21D105834(v97, v98, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_21:
    v77 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
    swift_storeEnumTagMultiPayload();
    sub_21D30D8FC(v99, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(*(v77 - 8) + 56))(v67, 0, 1, v77);
    if (swift_getEnumCaseMultiPayload() >= 3)
    {
      sub_21D30D8FC(v116, type metadata accessor for TTRRemindersListUncommittedReminder);
    }

    else
    {
      sub_21D30D8FC(v67, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      v78 = *(v64 + 80);

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v65);
      swift_beginAccess();
      if (*(*(v78 + 24) + 16) && (sub_21D181E00(v65, v79), (v80 & 1) != 0))
      {
        swift_endAccess();

        sub_21D30D8FC(v65, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v81 = swift_weakLoadStrong();

        sub_21D30D8FC(v116, type metadata accessor for TTRRemindersListUncommittedReminder);

        if (v81)
        {
          v82 = *(*v81 + 120);
          swift_beginAccess();
          v83 = v81 + v82;
          v84 = v95;
          sub_21D10521C(v83, v95, type metadata accessor for TTRRemindersListViewModel.Item);

          sub_21D105834(v84, v96, type metadata accessor for TTRRemindersListViewModel.Item);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_21D211A80(0, v63[2] + 1, 1, v63);
          }

          v67 = v98;
          v86 = v63[2];
          v85 = v63[3];
          v87 = v91[0];
          if (v86 >= v85 >> 1)
          {
            v88 = sub_21D211A80(v85 > 1, v86 + 1, 1, v63);
            v87 = v91[0];
            v63 = v88;
          }

          v63[2] = v86 + 1;
          sub_21D105834(v96, v63 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v86, type metadata accessor for TTRRemindersListViewModel.Item);
        }

        else
        {
          v67 = v98;
        }
      }

      else
      {
        swift_endAccess();
        sub_21D30D8FC(v65, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D30D8FC(v116, type metadata accessor for TTRRemindersListUncommittedReminder);
      }
    }

LABEL_10:
    v117 += v113;
    --v115;
  }

  while (v115);
  v89 = v114;
LABEL_36:
  v118 = 1;
  sub_21D897284(&v118, v63);

  return v89 & 1;
}