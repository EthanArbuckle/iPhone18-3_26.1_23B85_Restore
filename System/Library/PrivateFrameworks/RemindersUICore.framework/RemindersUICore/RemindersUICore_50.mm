unint64_t sub_21D596848()
{
  result = qword_27CE5E5E0;
  if (!qword_27CE5E5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE5E5E0);
  }

  return result;
}

void sub_21D596894(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_21D5968AC(a1, a2, a3 & 1);
  }
}

void sub_21D5968AC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21D5968BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D59692C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D596994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D5969F8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E5E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E5E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D596AC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  swift_beginAccess();
  sub_21D597F98(a1, v1 + v6);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D590914(v1 + v6, v5);
    sub_21D58F058(v5);
    swift_unknownObjectRelease();
    sub_21D45DC38(a1);
    v7 = v5;
  }

  else
  {
    v7 = a1;
  }

  return sub_21D45DC38(v7);
}

void (*sub_21D596BBC(uint64_t *a1))(void *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_21D596C88;
}

void sub_21D596C88(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    v4 = v3[4];
    sub_21D590914(v3[3] + v3[5], v4);
    sub_21D58F058(v4);
    swift_unknownObjectRelease();
    sub_21D45DC38(v4);
  }

  free(v3[4]);

  free(v3);
}

uint64_t sub_21D596D1C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D58F6B4((*(v0 + 16) ^ 1u), *(v0 + 16));
    swift_unknownObjectRelease();
  }

  v4 = 1;
  sub_21D596E2C(&v4);
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(ObjectType, v1);
}

uint64_t sub_21D596DAC(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v4 = *(v1 + 16);
    v5 = (v4 ^ 1u);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    LOBYTE(v4) = *(v1 + 16);
    v5 = 0;
  }

  sub_21D58F6B4(v5, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D596E2C(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    v8 = v2;
    (*(v3 + 24))(v1, &off_282EC5A28, &v8, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 48);
    v7 = swift_getObjectType();
    v8 = v2;
    (*(v6 + 8))(v1, &off_282EC5A28, &v8, v7, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21D596F14()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    result = *(Strong + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = [result attributedText];
    swift_unknownObjectRelease();
    if (v2)
    {
      return v2;
    }
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCA898]);

  return [v3 init];
}

uint64_t sub_21D596FAC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D58F6B4(0, *(v0 + 16));
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v3 = sub_21D596F14();
  (*(v1 + 72))(v3, ObjectType, v1);

  v5 = 3;
  return sub_21D596E2C(&v5);
}

id sub_21D597068(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() generalPasteboard];
  v8 = sub_21DBFA12C();
  v9 = [v7 dataForPasteboardType_];

  if (v9)
  {
    v10 = sub_21DBF551C();
    v12 = v11;

    v13 = sub_21D8735B0(v10);
    if (v13)
    {
      v29 = v3;
      v30 = v13;
      v14 = [v13 string];
      sub_21DBFA16C();

      result = [a1 string];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v16 = result;
      v17 = sub_21DBFA12C();
      v28 = v16;
      v18 = [v16 stringByReplacingCharactersInRange:a2 withString:{a3, v17}];

      sub_21DBFA16C();
      v19 = sub_21DBFA28C();
      v20 = [a1 string];
      sub_21DBFA16C();

      v21 = sub_21DBFA28C();

      if (v21 >= v19)
      {
      }

      else
      {
        v22 = sub_21DBFA28C();

        if (v22 > 4000)
        {
          v23 = _sSo17UIAlertControllerC15RemindersUICoreE36notesFieldCharacterLimitReachedAlertABvgZ_0();
          __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router), *(v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router + 24));
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v25 = Strong;
            [Strong presentViewController:v23 animated:1 completion:0];
            sub_21D17B8A8(v10, v12);
          }

          else
          {
            sub_21D17B8A8(v10, v12);
          }

          return 0;
        }
      }

      v26 = *(v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
      ObjectType = swift_getObjectType();
      LOBYTE(v26) = (*(v26 + 104))(v30, a1, a2, a3, ObjectType, v26);

      sub_21D17B8A8(v10, v12);
      return (v26 & 1);
    }

    sub_21D17B8A8(v10, v12);
  }

  return 0;
}

uint64_t sub_21D5974E4()
{
  sub_21D157444(v0 + 24);
  sub_21D157444(v0 + 40);
  sub_21D157444(v0 + 56);
  sub_21D45DC38(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_item);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21D597574()
{
  sub_21D5974E4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellNotesPresenter()
{
  result = qword_280D127A0;
  if (!qword_280D127A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D597620()
{
  sub_21D597728();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D597728()
{
  if (!qword_280D12660)
  {
    type metadata accessor for TTRIReminderCellNotesViewModel();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D12660);
    }
  }
}

uint64_t sub_21D597780@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  swift_beginAccess();
  return sub_21D590914(v1 + v3, a1);
}

void (*sub_21D5977DC(uint64_t **a1))(void *a1)
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
  v2[4] = sub_21D596BBC(v2);
  return sub_21D25A3E8;
}

uint64_t sub_21D597888(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D5978E8(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D59797C;
}

void sub_21D59797C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_21D597A00()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t sub_21D597A5C(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D58EF58(a1);
    swift_unknownObjectRelease();
  }

  v2 = [a1 isEditing];

  return sub_21D596DAC(v2);
}

uint64_t sub_21D597AD0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 48))(v6, ObjectType, a2);
    v5[0] = v6[0];
    v5[1] = v6[1];
    sub_21D58F3D4(v5);
    swift_unknownObjectRelease();
    return sub_21D24A814(*&v5[0], *(&v5[0] + 1));
  }

  return result;
}

char *sub_21D597B9C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = *&result[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView];
    if (result)
    {
      [result resignFirstResponder];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D597C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (v9)
    {
      v10 = v9;
      sub_21D5969F4(a1, a2, a3, a4);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21D597CC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (v5)
    {
      v7[0] = v1;
      v7[1] = v2;
      v7[2] = v3;
      v6 = v5;
      v8.paragraphStylesToAdd._rawValue = v7;
      TTRReminderTextStorage.applyParagraphStyleAttributeUpdate(_:)(v8);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D597D58()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (v1)
    {
      v2 = v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_wantsCapitalizeNextCharacter];
      v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_wantsCapitalizeNextCharacter] = 1;
      if ((v2 & 1) == 0)
      {
        v3 = v1;
        [v3 setAutocapitalizationType_];
        [v3 reloadInputViews];
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_21D597DFC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (!v6)
    {
      __break(1u);
      return result;
    }

    v10[0] = v2;
    v10[1] = v3;
    v10[2] = v4;
    v7 = v6;
    v11.hashtagsToAdd._rawValue = v10;
    TTRReminderTextStorage.applyHashtagUpdate(_:)(v11);

    swift_unknownObjectRelease();
  }

  result = 0xD00000000000001ELL;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_ownerModule) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_ownerModule) == 2)
    {
      v8 = "eminder.Notes.InlineHashtag";
      result = 0xD000000000000022;
    }

    else
    {
      v8 = "isSingleReminderEditingMode";
      result = 0xD00000000000002BLL;
    }
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_ownerModule))
    {
      return result;
    }

    v8 = "otes.InlineHashtag";
  }

  LOBYTE(v10[0]) = 6;
  v9 = v8 | 0x8000000000000000;
  TTRITipKitSignal.donate(signalContext:)(*&result);
}

uint64_t sub_21D597F08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (v5)
    {
      v7[0] = v1;
      v7[1] = v2;
      v7[2] = v3;
      v6 = v5;
      v8.rangeToChange.location = v7;
      TTRReminderTextStorage.applyStyleAttributeUpdate(_:)(v8);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D597F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL sub_21D598008(void *a1)
{
  v2 = sub_21DBF843C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15RemindersUICore33TTRParagraphStyleEditingPresenterC045dataRepresentationWithEncodedParagraphAndFontD03for10Foundation4DataVSgSo18NSAttributedStringC_tFZ_0(a1);
  v8 = v7 >> 60;
  if (v7 >> 60 != 15)
  {
    v26 = v6;
    v9 = v7;
    v27 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E600);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC08D00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    sub_21DBF842C();
    v12 = sub_21DBF836C();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    v15 = [a1 string];
    v16 = sub_21DBFA16C();
    v18 = v17;

    v19 = MEMORY[0x277D837D0];
    *(inited + 48) = v16;
    *(inited + 56) = v18;
    *(inited + 72) = v19;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 120) = MEMORY[0x277CC9318];
    v20 = v26;
    *(inited + 88) = 0x800000021DC61570;
    *(inited + 96) = v20;
    *(inited + 104) = v9;
    sub_21D1BAF70(v20, v9);
    v21 = sub_21D17716C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0);
    swift_arrayDestroy();
    *(v10 + 32) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E608);
    v22 = sub_21DBFA5DC();

    sub_21D178DA8(MEMORY[0x277D84F90]);
    type metadata accessor for OptionsKey(0);
    sub_21D598304();
    v23 = sub_21DBF9E5C();

    v24 = v27;
    [v27 setItems:v22 options:v23];
    sub_21D1BAF38(v20, v9);
  }

  return v8 < 0xF;
}

unint64_t sub_21D598304()
{
  result = qword_27CE57F38;
  if (!qword_27CE57F38)
  {
    type metadata accessor for OptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE57F38);
  }

  return result;
}

void *TTRIDynamicDateGlyphCache.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t TTRIDynamicDateGlyphCache.deinit()
{

  return v0;
}

uint64_t TTRIDynamicDateGlyphCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D59841C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E610);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E610);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D598518()
{
  ObjectType = swift_getObjectType();
  v32.receiver = v0;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  [result setEditing:0 animated:0];

  v4 = &v0[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_style];
  v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_style];
  v6 = v0[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_style + 8];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v30 = 0x800000021DC617B0;
  sub_21DBF516C();
  if (v5 > 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {

    v30 = 0x800000021DC61810;
    sub_21DBF516C();
  }

  v8 = sub_21DBFA12C();

  [v0 setTitle_];

  if (v4[8] == 1)
  {
    v9 = sub_21DBF516C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_21D0D8CF0(0, &qword_280D0C300);
  v31[3] = ObjectType;
  v31[0] = v0;
  v12 = v0;
  v13 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)(v9, v11, v31, sel_didTapCommit_);
  v14 = OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_commitButton;
  v15 = *&v12[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_commitButton];
  *&v12[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_commitButton] = v13;

  v16 = [v12 navigationItem];
  v17 = *&v12[v14];
  [v16 setRightBarButtonItem_];

  v18 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v12 action:sel_didTapCancel_];
  v19 = OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_cancelButton;
  v20 = *&v12[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_cancelButton];
  *&v12[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_cancelButton] = v18;

  v21 = [v12 navigationItem];
  v22 = *&v12[v19];
  [v21 setLeftBarButtonItem_];

  result = [v12 tableView];
  if (!result)
  {
    goto LABEL_16;
  }

  v23 = result;
  v24 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v23 setTableHeaderView_];

  result = [v12 tableView];
  if (result)
  {
    v25 = result;
    v31[0] = result;
    swift_getKeyPath();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = 0x4020000000000000;
    v28 = sub_21DBF530C();

    v29 = *&v12[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_contentSizeObserver];
    *&v12[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_contentSizeObserver] = v28;

    return sub_21D363970();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_21D5989D8(void **a1, double a2)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_style + 8) & 1) == 0 && (*(Strong + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_style))
    {
      v5 = Strong;
      v6 = Strong;
      [v3 contentSize];
      [v6 setPreferredContentSize_];

      Strong = v5;
    }
  }
}

uint64_t sub_21D598AE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v16 - v4;
  v6 = [v0 viewIfLoaded];
  if (v6)
  {
    v7 = v6;
    v8 = UIView.firstResponderDescendant.getter();

    if (v8)
    {
      [v8 resignFirstResponder];
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_presenter];
  if (qword_27CE56A58 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE5E6A8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v11 = sub_21DBFA89C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_21DBFA84C();
  swift_unknownObjectRetain();
  v12 = sub_21DBFA83C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v9;
  *(v13 + 40) = 1;
  sub_21D1B5178(0, 0, v5, &unk_21DC1C948, v13);
}

uint64_t sub_21D598D74()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v17 = xmmword_21DC0E710;
  v18 = 0;
  v19 = sub_21DBF516C();
  v20 = v0;
  v21 = 0;
  v1 = sub_21D5CB094(1, 0, &v17, 2);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + qword_27CE652E0);
  swift_beginAccess();
  v4 = *v3;
  *v3 = sub_21D59B91C;
  v3[1] = v2;

  sub_21D0D0E88(v4);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = (v1 + qword_27CE652D8);
  swift_beginAccess();
  v7 = *v6;
  *v6 = sub_21D59B924;
  v6[1] = v5;

  sub_21D0D0E88(v7);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = (v1 + qword_27CE652F8);
  swift_beginAccess();
  v10 = *v9;
  *v9 = sub_21D59B92C;
  v9[1] = v8;

  sub_21D0D0E88(v10);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v1 + qword_27CE652E8);
  swift_beginAccess();
  v13 = *v12;
  *v12 = sub_21D59B934;
  v12[1] = v11;

  sub_21D0D0E88(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E670);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 1;
  *(v14 + 49) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 32) = v1;
  *(v14 + 40) = 0;
  v15 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  *(v15 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

void sub_21D599118()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21D59916C();
  }
}

void sub_21D59916C()
{
  v1 = sub_21DBF9D2C();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21DBF9D5C();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = *(sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell, sub_21D598D74) + 32);
  v15 = *((*MEMORY[0x277D85000] & *v14) + 0x68);
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = v16;

  if (v16)
  {
    v18 = [v0 tableView];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 indexPathForCell_];

      if (v20)
      {
        sub_21DBF5CAC();

        v32 = v17;
        v21 = *(v5 + 32);
        v21(v13, v10, v4);
        sub_21D0D8CF0(0, &qword_280D1B900);
        v31 = sub_21DBFB12C();
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v5 + 16))(v7, v13, v4);
        v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = v22;
        v21((v24 + v23), v7, v4);
        aBlock[4] = sub_21D59B9D0;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0D74FC;
        aBlock[3] = &block_descriptor_54;
        v25 = _Block_copy(aBlock);

        v26 = v33;
        sub_21DBF9D4C();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_21D0CD898();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
        sub_21D0CD8F0();
        v27 = v35;
        v28 = v38;
        sub_21DBFBCBC();
        v29 = v31;
        MEMORY[0x223D438F0](0, v26, v27, v25);

        _Block_release(v25);
        (*(v37 + 8))(v27, v28);
        (*(v34 + 8))(v26, v36);
        (*(v5 + 8))(v13, v4);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21D599650(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v3)
    {
      v6 = [v2 string];
      v7 = sub_21DBFA16C();
      v9 = v8;

      sub_21D5968AC(v2, v1, 1);
      v2 = v7;
      v1 = v9;
    }

    else
    {
      sub_21DBF8E0C();
    }

    if (qword_27CE56628 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5ADF8);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v11 = sub_21D36407C(v2, v1, 0);
    v13 = v12;

    if (v13)
    {
      if (v13 == 1)
      {
        v14 = *(sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell, sub_21D598D74) + 32);

        v15 = *((*MEMORY[0x277D85000] & *v14) + 0x68);
        swift_beginAccess();
        v16 = *(v14 + v15);
        if (v16)
        {
          v17 = (v16 + qword_27CE65428);
          v18 = *v17;
          v19 = v17[1];
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 16);
          swift_unknownObjectRetain();
          v21(0, 0xE000000000000000, ObjectType, v19);
          sub_21D59B1D8(v18, v19, 0);
          swift_unknownObjectRelease();
        }

        goto LABEL_19;
      }

      sub_21DBF8E0C();
      v24 = *(sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell, sub_21D598D74) + 32);

      v25 = *((*MEMORY[0x277D85000] & *v24) + 0x68);
      swift_beginAccess();
      v26 = *(v24 + v25);
      if (v26)
      {
        v27 = (v26 + qword_27CE65428);
        v28 = *v27;
        v29 = v27[1];
        v30 = swift_getObjectType();
        v31 = *(v29 + 16);
        sub_21D59B9BC(v11, v13);
        swift_unknownObjectRetain();
        v31(v11, v13, v30, v29);
        sub_21D59B1D8(v28, v29, 0);

        sub_21D59B93C(v11, v13);
        sub_21D59B93C(v11, v13);
        swift_unknownObjectRelease();
LABEL_18:
        v14 = v5;
LABEL_19:

        return;
      }

      sub_21D59B93C(v11, v13);
      v22 = v11;
      v23 = v13;
    }

    else
    {
      v22 = v11;
      v23 = 0;
    }

    sub_21D59B93C(v22, v23);
    goto LABEL_18;
  }
}

BOOL sub_21D599A1C(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = qword_27CE56628;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5ADF8);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v7 = sub_21D36407C(a1, a2, 1);
    sub_21D59B93C(v7, v8);
    swift_unknownObjectRelease();
    v9 = *(sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell, sub_21D598D74) + 32);

    v10 = *((*MEMORY[0x277D85000] & *v9) + 0x68);
    swift_beginAccess();
    v11 = *(v9 + v10);
    if (v11)
    {
      v12 = (v11 + qword_27CE65428);
      v13 = *v12;
      v14 = v12[1];
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 16);
      swift_unknownObjectRetain();
      v16(0, 0xE000000000000000, ObjectType, v14);
      sub_21D59B1D8(v13, v14, 0);
      swift_unknownObjectRelease();
    }
  }

  return Strong != 0;
}

void sub_21D599C38(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v3)
    {
      v6 = [v2 string];
      v7 = sub_21DBFA16C();
      v9 = v8;

      sub_21D5968AC(v2, v1, 1);
      v2 = v7;
      v1 = v9;
    }

    else
    {
      sub_21DBF8E0C();
    }

    if (qword_27CE56628 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5ADF8);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v11 = sub_21D36407C(v2, v1, 1);
    sub_21D59B93C(v11, v12);

    v13 = *(sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell, sub_21D598D74) + 32);

    v14 = *((*MEMORY[0x277D85000] & *v13) + 0x68);
    swift_beginAccess();
    v15 = *(v13 + v14);
    if (v15)
    {
      v16 = (v15 + qword_27CE65428);
      v17 = *v16;
      v18 = v16[1];
      ObjectType = swift_getObjectType();
      v20 = *(v18 + 16);
      swift_unknownObjectRetain();
      v20(0, 0xE000000000000000, ObjectType, v18);
      sub_21D59B1D8(v17, v18, 0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D599E98()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___preexistingHashtagsSection;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___preexistingHashtagsSection))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___preexistingHashtagsSection);
  }

  else
  {
    memset(v6, 0, 73);
    memset(v5, 0, 73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_21DC08D00;
    *(v3 + 32) = sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___hashtagCollectionCell, sub_21D59A0A4);
    *(v3 + 40) = &protocol witness table for TTRITableCell<A>;
    type metadata accessor for TTRITableSection();
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
    sub_21D313A24(v6, v2 + 32);
    swift_endAccess();
    swift_beginAccess();
    sub_21D313A24(v5, v2 + 112);
    swift_endAccess();
    *(v2 + 192) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_21D59A03C(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_21D59A0A4()
{
  v0 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  v1 = (v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  sub_21DBF6BDC();
  v7 = v1[11];
  *&v6[v1[7]] = MEMORY[0x277D84F90];
  v8 = &v6[v1[8]];
  *v8 = 0;
  v8[1] = 0;
  v6[v1[9]] = 1;
  v9 = &v6[v7];
  v6[v1[10]] = 0;
  *v9 = 0;
  v9[8] = 1;
  sub_21D59BC10(v6, v3);
  v10 = objc_allocWithZone(type metadata accessor for TTRIHashtagCollectionCellContent(0));
  v11 = TTRIHashtagCollectionCellContent.init(state:)(v3);
  sub_21D59BC74(v6);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = (v11 + qword_27CE8EC00);
  swift_beginAccess();
  v14 = *v13;
  *v13 = sub_21D59BCD0;
  v13[1] = v12;

  sub_21D0D0E88(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E680);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = 1;
  *(v15 + 49) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 32) = v11;
  *(v15 + 40) = 0;
  v16 = v11 + *((*MEMORY[0x277D85000] & *v11) + 0x70);
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v15;
}

uint64_t sub_21D59A2E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(*(result + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_presenterCapability);
    v5 = qword_27CE56628;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5ADF8);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v7 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_selectedHashtagLabels;
    swift_beginAccess();
    v8 = sub_21DBF6C1C();
    (*(*(v8 - 8) + 24))(v4 + v7, a1, v8);
    swift_endAccess();
    v9._object = 0x800000021DC4B070;
    v9._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D59A474(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  sub_21D599E98();
  TTRITableSection.isHidden.setter(v12 == 0);

  if (v12)
  {
    v14 = *(sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___hashtagCollectionCell, sub_21D59A0A4) + 32);

    v15 = *((*MEMORY[0x277D85000] & *v14) + 0x78);
    swift_beginAccess();
    sub_21D59BC10(v14 + v15, v11);

    v16 = sub_21DBF6C1C();
    (*(*(v16 - 8) + 24))(v11, a2, v16);
    v17 = *(v6 + 20);
    sub_21DBF8E0C();

    *&v11[v17] = a1;
    v18 = *(*(v3 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___hashtagCollectionCell) + 32);
    sub_21D59BC10(v11, v8);
    v19 = v18;
    sub_21D5C7A18(v8);

    return sub_21D59BC74(v11);
  }

  return result;
}

void sub_21D59A66C(unsigned __int8 *a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_tableDataController;
  if (!*&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_tableDataController])
  {
    v6 = [v1 tableView];
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58718);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_21DC08D20;
      *(v8 + 32) = sub_21D599E98();
      *(v8 + 40) = &protocol witness table for TTRITableSection;
      memset(v22, 0, 73);
      memset(v21, 0, 73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21DC08D00;
      *(v9 + 32) = sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell, sub_21D598D74);
      *(v9 + 40) = &protocol witness table for TTRITableCell<A>;
      type metadata accessor for TTRITableSection();
      v10 = swift_allocObject();
      *(v10 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v10 + 200) = 0;
      *(v10 + 208) = 0;
      *(v10 + 48) = 0u;
      *(v10 + 64) = 0u;
      *(v10 + 80) = 0u;
      *(v10 + 89) = 0u;
      *(v10 + 32) = 0u;
      *(v10 + 128) = 0u;
      *(v10 + 144) = 0u;
      *(v10 + 160) = 0u;
      *(v10 + 169) = 0u;
      *(v10 + 112) = 0u;
      *(v10 + 216) = 1;
      swift_beginAccess();
      sub_21D313A24(v22, v10 + 32);
      swift_endAccess();
      swift_beginAccess();
      sub_21D313A24(v21, v10 + 112);
      swift_endAccess();
      *(v10 + 192) = v9;
      *(v8 + 48) = v10;
      *(v8 + 56) = &protocol witness table for TTRITableSection;
      v11 = sub_21D5E8D34(v7, v8, 6, 0);
      v12 = &v11[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_customSectionSpacing];
      swift_beginAccess();
      *v12 = 0x4030000000000000;
      v12[8] = 0;
      v13 = *&v1[v2];
      *&v1[v2] = v11;
      v14 = v11;

      v15 = [v1 tableView];
      if (v15)
      {
        v16 = v15;
        [v15 setDelegate_];

        v17 = [v1 tableView];
        if (v17)
        {
          v18 = v17;
          [v17 setDataSource_];

          sub_21D59AA18(a1, 1);
          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (qword_27CE56A50 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5E610);
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAECC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "buildSections is called more than once", v5, 2u);
    MEMORY[0x223D46520](v5, -1, -1);
  }
}

id sub_21D59AA18(unsigned __int8 *a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_tableDataController))
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v8 = v4;
    MEMORY[0x28223BE20](a1);
    v6 = v5;
    TTRITableDataController.performBatchUpdates(by:updates:)(&v8, sub_21D59BBC8);
  }

  result = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_commitButton);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

void sub_21D59AAF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong tableView];

    if (v2)
    {
      v3 = sub_21DBF5C6C();
      [v2 scrollToRowAtIndexPath:v3 atScrollPosition:0 animated:1];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21D59AC08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_presenter);
  if (qword_27CE56A58 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE5E6A8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v6 = sub_21DBFA89C();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_21DBFA84C();
  swift_unknownObjectRetain();
  v7 = sub_21DBFA83C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v4;
  *(v8 + 40) = 1;
  sub_21D1B5178(0, 0, v3, &unk_21DC1C938, v8);
}

BOOL sub_21D59AF48()
{
  v0 = *(sub_21D59A03C(&OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell, sub_21D598D74) + 32);

  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {

    return 0;
  }

  v3 = *(v2 + qword_27CE65428 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v3);
  v8 = v7;

  swift_unknownObjectRelease();
  if (!v8)
  {
    return 0;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

void sub_21D59B1D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v7 = v6[16];
  ObjectType = swift_getObjectType();
  if (v7)
  {
    v9 = (*(a2 + 32))(ObjectType, a2);
    if (!v9)
    {
      v9 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v10 = v9;
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v13 = (*(a2 + 8))(ObjectType, a2);
    if (v14)
    {
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    if (v14)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    sub_21DBF8E0C();
  }

  v16 = *v6;
  v15 = *(v6 + 1);
  v34 = v6[17];
  v17 = *(v6 + 4);
  v33 = *(v6 + 3);
  v18 = *(v6 + 5);
  v45 = v6[16];
  if (v45)
  {
    if (v7)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      v19 = 1;
      sub_21D59B950(v16, v15, 1);
      v20 = v18;
      sub_21DBF8E0C();
      sub_21D59B950(v16, v15, 1);
      v21 = sub_21DBFB63C();
      sub_21D5968AC(v10, v12, 1);
      sub_21D5968AC(v16, v15, 1);
      if (v21)
      {
        sub_21D5968AC(v10, v12, 1);
        v7 = v45;
LABEL_29:
        v10 = v16;
        v12 = v15;
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    v22 = 0;
    v19 = 1;
LABEL_19:
    sub_21D59B950(v16, v15, v19);
    v23 = v18;
    sub_21DBF8E0C();
    sub_21D5968AC(v10, v12, v22);
    goto LABEL_20;
  }

  if (v7)
  {
    v19 = 0;
    v22 = 1;
    goto LABEL_19;
  }

  if (v16 == v10 && v15 == v12)
  {
    sub_21D59B950(v10, v12, 0);
    v32 = v18;
    sub_21DBF8E0C();
    sub_21D5968AC(v10, v12, 0);
    sub_21D5968AC(v10, v12, 0);
    v7 = 0;
    goto LABEL_31;
  }

  v30 = sub_21DBFC64C();
  sub_21D59B950(v16, v15, 0);
  v31 = v18;
  sub_21DBF8E0C();
  sub_21D5968AC(v10, v12, 0);
  v19 = 0;
  if (v30)
  {
    sub_21D5968AC(v10, v12, 0);
    v7 = 0;
    goto LABEL_29;
  }

LABEL_20:
  sub_21D5968AC(v16, v15, v19);
  v45 = v7;
  *&v46 = v10;
  *(&v46 + 1) = v12;
  v47 = v7;
  v48 = v34;
  v49 = v43;
  v50 = v44;
  v51 = v33;
  v52 = v17;
  v53 = v18;
  v24 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  *(v4 + v24) = 1;
  sub_21D59B960(&v46, &v36);
  sub_21D5C6B34(&v46);
  *(v4 + v24) = 0;
  if (a3)
  {
    v25 = (v4 + qword_27CE652D8);
    swift_beginAccess();
    v26 = *v25;
    if (*v25)
    {
      v36 = v10;
      v37 = v12;
      v38 = v7;
      v39 = v34;
      v40 = v33;
      v41 = v17;
      v42 = v18;
      sub_21D0D0E78(v26);
      sub_21D59B950(v10, v12, v7);
      v27 = v18;
      sub_21DBF8E0C();
      v26(&v36);
      sub_21D0D0E88(v26);
      v28 = v42;
      sub_21D5968AC(v36, v37, v38);
    }
  }

LABEL_31:
  sub_21D5968AC(v10, v12, v7);
}

void sub_21D59B5F8()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_commitButton) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_contentSizeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_tableDataController) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___preexistingHashtagsSection) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___hashtagCollectionCell) = 0;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D59B6A8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_presenter);
  if (qword_27CE56A58 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE5E6A8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v11 = sub_21DBFA89C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_21DBFA84C();
  swift_unknownObjectRetain();
  v12 = sub_21DBFA83C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v9;
  *(v13 + 40) = a2;
  sub_21D1B5178(0, 0, v8, a3, v13);
}

uint64_t sub_21D59B858(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D59D564(a1, v4, v5, v6, v7);
}

uint64_t sub_21D59B93C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id sub_21D59B950(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_21DBF8E0C();
  }
}

uint64_t sub_21D59B9BC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

void sub_21D59B9D0()
{
  sub_21DBF5D5C();

  sub_21D59AAF0();
}

uint64_t sub_21D59BA34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D59D564(a1, v4, v5, v6, v7);
}

uint64_t sub_21D59BAF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D59CDD4(a1, v4, v5, v6, v7);
}

uint64_t sub_21D59BBC8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 8);
  v3 = type metadata accessor for TTRIHashtagEditorViewModel();
  return sub_21D59A474(v2, v1 + *(v3 + 24));
}

uint64_t sub_21D59BC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D59BC74(uint64_t a1)
{
  v2 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_21D59BCE8(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v5 = *(a3 + 24);
    v7 = sub_21DBF6C1C();
    v8 = *(*(v7 - 8) + 16);
    sub_21DBF8E0C();
    v8(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t sub_21D59BDD0(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_21DBF6C1C();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_21D59BE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = sub_21DBF6C1C();
  v7 = *(*(v6 - 8) + 16);
  sub_21DBF8E0C();
  v7(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_21D59BEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v6 = *(a3 + 24);
  v7 = sub_21DBF6C1C();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_21D59BF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_21D59BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 24);
  v7 = sub_21DBF6C1C();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t type metadata accessor for TTRIHashtagEditorViewModel()
{
  result = qword_27CE5E698;
  if (!qword_27CE5E698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D59C0F4()
{
  result = sub_21DBF6C1C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D59C198(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && (sub_21D1D57A4(*(a1 + 1), *(a2 + 1)) & 1) != 0)
  {

    JUMPOUT(0x223D3F370);
  }

  return 0;
}

uint64_t sub_21D59C218()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E6A8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E6A8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D59C2E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D59C338();
  }

  return result;
}

uint64_t sub_21D59C338()
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E700);
  MEMORY[0x28223BE20](v58);
  v59 = &v53 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E6F8);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v53 - v5;
  MEMORY[0x28223BE20](v6);
  v61 = &v53 - v7;
  v56 = sub_21DBF78CC();
  v8 = *(v56 - 1);
  MEMORY[0x28223BE20](v56);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TTRIHashtagEditorViewModel();
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v53 - v13;
  v14 = sub_21DBF6C1C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v62 = v0;
  v21 = &OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_style + 8) == 1)
  {
    v22 = *(v62 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_presenterCapability);
    v23 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_initialSelectedHashtagLabels;
    swift_beginAccess();
    v24 = *(v15 + 16);
    v24(v20, v22 + v23, v14);
    v25 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_selectedHashtagLabels;
    swift_beginAccess();
    v24(v17, v22 + v25, v14);
    sub_21D59E1F4();
    LOBYTE(v22) = sub_21DBFA10C();
    v26 = *(v15 + 8);
    v26(v17, v14);
    v26(v20, v14);
    v21 = &OBJC_IVAR____TtC15RemindersUICore36TTRExtensionCreateReminderInteractor_extensionContextExtractorResult;
    v27 = v22 ^ 1;
  }

  else
  {
    v27 = 1;
  }

  v28 = v62;
  v29 = *(v62 + v21[219]);
  v30 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_hashtagLabelCollection;
  swift_beginAccess();
  v31 = v56;
  (*(v8 + 16))(v10, v29 + v30, v56);
  v32 = sub_21DBF785C();
  (*(v8 + 8))(v10, v31);
  v33 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_selectedHashtagLabels;
  swift_beginAccess();
  v34 = v60;
  v35 = v63;
  (*(v15 + 16))(&v63[*(v60 + 24)], v29 + v33, v14);
  *v35 = v27 & 1;
  *(v35 + 1) = v32;
  v36 = OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_viewModel;
  swift_beginAccess();
  v37 = v61;
  sub_21D59E324(v35, v61, type metadata accessor for TTRIHashtagEditorViewModel);
  v38 = v57;
  v56 = *(v57 + 56);
  (v56)(v37, 0, 1, v34);
  v39 = *(v58 + 48);
  v40 = v59;
  sub_21D59E38C(v28 + v36, v59);
  sub_21D59E38C(v37, v40 + v39);
  v41 = *(v38 + 48);
  if (v41(v40, 1, v34) == 1)
  {
    sub_21D0CF7E0(v37, &qword_27CE5E6F8);
    if (v41(v40 + v39, 1, v34) == 1)
    {
      sub_21D0CF7E0(v40, &qword_27CE5E6F8);
      return sub_21D59E46C(v63, type metadata accessor for TTRIHashtagEditorViewModel);
    }

    goto LABEL_9;
  }

  v42 = v54;
  sub_21D59E38C(v40, v54);
  if (v41(v40 + v39, 1, v34) == 1)
  {
    sub_21D0CF7E0(v61, &qword_27CE5E6F8);
    sub_21D59E46C(v42, type metadata accessor for TTRIHashtagEditorViewModel);
LABEL_9:
    v43 = &qword_27CE5E700;
    v44 = v40;
    goto LABEL_15;
  }

  v45 = v40 + v39;
  v46 = v53;
  sub_21D59E4CC(v45, v53, type metadata accessor for TTRIHashtagEditorViewModel);
  if (*v42 == *v46 && (sub_21D1D57A4(*(v42 + 1), *(v46 + 1)) & 1) != 0)
  {
    v47 = MEMORY[0x223D3F370](&v42[*(v34 + 24)], &v46[*(v34 + 24)]);
    sub_21D0CF7E0(v61, &qword_27CE5E6F8);
    sub_21D59E46C(v46, type metadata accessor for TTRIHashtagEditorViewModel);
    v34 = v60;
    sub_21D59E46C(v42, type metadata accessor for TTRIHashtagEditorViewModel);
    sub_21D0CF7E0(v40, &qword_27CE5E6F8);
    if (v47)
    {
      return sub_21D59E46C(v63, type metadata accessor for TTRIHashtagEditorViewModel);
    }

    goto LABEL_16;
  }

  sub_21D0CF7E0(v61, &qword_27CE5E6F8);
  sub_21D59E46C(v46, type metadata accessor for TTRIHashtagEditorViewModel);
  sub_21D59E46C(v42, type metadata accessor for TTRIHashtagEditorViewModel);
  v44 = v40;
  v43 = &qword_27CE5E6F8;
LABEL_15:
  sub_21D0CF7E0(v44, v43);
LABEL_16:
  v48 = v55;
  sub_21D59E324(v63, v55, type metadata accessor for TTRIHashtagEditorViewModel);
  (v56)(v48, 0, 1, v34);
  v49 = v62;
  swift_beginAccess();
  sub_21D59E3FC(v48, v49 + v36);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    if ([Strong isViewLoaded])
    {
      if (*&v51[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_tableDataController])
      {
        sub_21D59AA18(v63, 0);
      }

      else
      {
        sub_21D59A66C(v63);
      }
    }

    swift_unknownObjectRelease();
  }

  return sub_21D59E46C(v63, type metadata accessor for TTRIHashtagEditorViewModel);
}

uint64_t sub_21D59CBB8()
{
  v1 = v0;
  v2 = sub_21DBF6C1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = sub_21D59AF48();
    swift_unknownObjectRelease();
    v10 = (v1 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_style);
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_style + 8))
    {
      if (v9)
      {
        v11 = 1;
        return v11 & 1;
      }

LABEL_9:
      v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_presenterCapability);
      v14 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_initialSelectedHashtagLabels;
      swift_beginAccess();
      v15 = *(v3 + 16);
      v15(v8, v13 + v14, v2);
      v16 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_selectedHashtagLabels;
      swift_beginAccess();
      v15(v5, v13 + v16, v2);
      sub_21D59E1F4();
      LOBYTE(v13) = sub_21DBFA10C();
      v17 = *(v3 + 8);
      v17(v5, v2);
      v17(v8, v2);
      v11 = v13 ^ 1;
      return v11 & 1;
    }
  }

  else
  {
    v10 = (v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_style);
    if (*(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_style + 8))
    {
      goto LABEL_9;
    }

    v9 = 0;
  }

  v12 = *v10;
  v11 = *v10 | v9;
  if ((v12 & 1) != 0 && !v9)
  {
    goto LABEL_9;
  }

  return v11 & 1;
}

uint64_t sub_21D59CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 32) = a4;
  sub_21DBFA84C();
  *(v5 + 40) = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_21D59CE70, v7, v6);
}

uint64_t sub_21D59CE70()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  *(v0 + 24) = 0;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 16;
  *(v4 + 24) = v2;
  sub_21D36430C(sub_21D59E24C, v3, sub_21D59E254, v4);

  if (v1)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 32) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router), *(*(v0 + 32) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router + 24));
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_21D59D010;

    return sub_21D57AC94();
  }

  else
  {

    v8 = *(v0 + 16);
    if (v8)
    {
      v8(v7);
      sub_21D0D0E88(v8);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_21D59D010()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D59D130, v3, v2);
}

uint64_t sub_21D59D130()
{

  v2 = *(v0 + 16);
  if (v2)
  {
    v2(v1);
    sub_21D0D0E88(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21D59D1B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRHashtagEditorModuleState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_21D59E324(a1, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRHashtagEditorModuleState);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  sub_21D59E4CC(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TTRHashtagEditorModuleState);
  v11 = *a2;
  *a2 = sub_21D59E2C0;
  a2[1] = v10;

  return sub_21D0D0E88(v11);
}

uint64_t sub_21D59D2F0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a2, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D59D378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRHashtagEditorModuleState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_21D59E324(a2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRHashtagEditorModuleState);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a1;
  sub_21D59E4CC(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for TTRHashtagEditorModuleState);
  v13 = *a3;
  *a3 = sub_21D59E25C;
  a3[1] = v12;

  sub_21DBF8E0C();
  return sub_21D0D0E88(v13);
}

void sub_21D59D4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a2, a3, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8.value._object = 0x800000021DC61930;
  v8.value._countAndFlagsBits = 0xD00000000000001FLL;
  TTRITipKitSignal.donate(signalContext:)(v8);
}

uint64_t sub_21D59D564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 73) = a5;
  *(v5 + 104) = a4;
  type metadata accessor for TTRHashtagEditorModuleState();
  *(v5 + 112) = swift_task_alloc();
  sub_21DBFA84C();
  *(v5 + 120) = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  *(v5 + 128) = v7;
  *(v5 + 136) = v6;

  return MEMORY[0x2822009F8](sub_21D59D62C, v7, v6);
}

uint64_t sub_21D59D62C()
{
  v27 = v0;
  if (sub_21D59CBB8())
  {
    if (*(v0 + 73))
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v1 = sub_21DBFA12C();

      v2 = [objc_opt_self() alertControllerWithTitle:0 message:v1 preferredStyle:{0, 0x800000021DC493B0}];
      *(v0 + 144) = v2;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = *(Strong + OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_cancelButton);
        if (v4)
        {
          v5 = v4;
          swift_unknownObjectRelease();
          *(v0 + 16) = v4;
          *(v0 + 24) = 0u;
          *(v0 + 40) = 0u;
          *(v0 + 56) = xmmword_21DC1BE00;
          *(v0 + 72) = 1;
          v6 = *(v0 + 32);
          v22[0] = *(v0 + 16);
          v22[1] = v6;
          v23 = *(v0 + 48);
          v24 = 64;
          v25 = *(v0 + 64);
          v26 = *(v0 + 72);
          UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(v22);
          sub_21D0CF7E0(v0 + 16, &qword_27CE5D558);
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 104) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router), *(*(v0 + 104) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62620);
      v16 = swift_allocObject();
      *(v0 + 152) = v16;
      *(v16 + 16) = xmmword_21DC08D20;
      v17 = sub_21DBF516C();
      *(v16 + 56) = 1;
      *(v16 + 32) = v17;
      *(v16 + 40) = v18;
      *(v16 + 48) = 2;
      v19 = sub_21DBF516C();
      *(v16 + 88) = 0;
      *(v16 + 64) = v19;
      *(v16 + 72) = v20;
      *(v16 + 80) = 1;
      v21 = swift_task_alloc();
      *(v0 + 160) = v21;
      *v21 = v0;
      v21[1] = sub_21D59DB34;

      return sub_21D57B138(v2, v16);
    }

    goto LABEL_12;
  }

  if ((*(v0 + 73) & 1) == 0)
  {
LABEL_12:

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v0 + 104);
      v9 = *(v0 + 112);
      v11 = *(v10 + 40);
      ObjectType = swift_getObjectType();
      v13 = *(v10 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_presenterCapability);
      v14 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_moduleState;
      swift_beginAccess();
      sub_21D59E324(v13 + v14, v9, type metadata accessor for TTRHashtagEditorModuleState);
      (*(v11 + 16))(v9, ObjectType, v11);
      swift_unknownObjectRelease();
      sub_21D59E46C(v9, type metadata accessor for TTRHashtagEditorModuleState);
    }

    v15 = *(v0 + 8);

    return v15();
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router), *(*(v0 + 104) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router + 24));
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_21D59DD84;

  return sub_21D57AC94();
}

uint64_t sub_21D59DB34(char a1)
{
  v2 = *v1;
  *(*v1 + 74) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_21D59DC80, v4, v3);
}

uint64_t sub_21D59DC80()
{
  v1 = *(v0 + 74);

  if (v1 == 2 || (*(v0 + 74) & 1) == 0)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 104) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router), *(*(v0 + 104) + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router + 24));
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_21D59DD84;

    return sub_21D57AC94();
  }
}

uint64_t sub_21D59DD84()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21D59DEA4, v3, v2);
}

uint64_t sub_21D59DEA4()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v0[13];
    v1 = v0[14];
    v3 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_presenterCapability);
    v6 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_moduleState;
    swift_beginAccess();
    sub_21D59E324(v5 + v6, v1, type metadata accessor for TTRHashtagEditorModuleState);
    (*(v3 + 16))(v1, ObjectType, v3);
    swift_unknownObjectRelease();
    sub_21D59E46C(v1, type metadata accessor for TTRHashtagEditorModuleState);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_21D59DFCC()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_viewModel, &qword_27CE5E6F8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIHashtagEditorPresenter()
{
  result = qword_27CE5E6E0;
  if (!qword_27CE5E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D59E0D4()
{
  sub_21D59E19C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D59E19C()
{
  if (!qword_27CE5E6F0)
  {
    type metadata accessor for TTRIHashtagEditorViewModel();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE5E6F0);
    }
  }
}

unint64_t sub_21D59E1F4()
{
  result = qword_27CE63930;
  if (!qword_27CE63930)
  {
    sub_21DBF6C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63930);
  }

  return result;
}

void sub_21D59E25C()
{
  v1 = *(type metadata accessor for TTRHashtagEditorModuleState() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_21D59D4C0(v2, v3, v4);
}

uint64_t sub_21D59E2C0()
{
  v1 = *(type metadata accessor for TTRHashtagEditorModuleState() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21D59D2F0(v2, v3);
}

uint64_t sub_21D59E324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D59E38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D59E3FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E6F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D59E46C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D59E4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id static TTRIHashtagEditorAssembly.createViewController(style:reminderChangeItem:previousModuleState:delegate:undoManager:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v39[0] = a5;
  v39[1] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  v16 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  type metadata accessor for TTRHashtagEditorInteractor();
  swift_allocObject();
  v17 = sub_21D365EC8(a2, a6);
  v18 = type metadata accessor for TTRIHashtagEditorRouter();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D59E968(a3, v15);
  v41[3] = v18;
  v41[4] = &off_282EC6F90;
  v41[0] = v19;
  type metadata accessor for TTRIHashtagEditorPresenter();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v41, v18);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  v40[3] = v18;
  v40[4] = &off_282EC6F90;
  v40[0] = v26;
  *(v20 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + 40) = 0;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_viewModel;
  v28 = type metadata accessor for TTRIHashtagEditorViewModel();
  (*(*(v28 - 8) + 56))(v20 + v27, 1, 1, v28);
  v29 = v20 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_style;
  *v29 = v16;
  *(v29 + 8) = a1;
  v30 = (v20 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_interactor);
  *v30 = v17;
  v30[1] = &off_282EB2E90;
  sub_21D0D32E4(v40, v20 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router);
  sub_21D59E968(v15, v12);
  type metadata accessor for TTRHashtagEditorPresenterCapability();
  v31 = swift_allocObject();
  swift_retain_n();

  v32 = sub_21D59EB9C(v17, 0, v12, v31);
  sub_21D59EF5C(v15);
  __swift_destroy_boxed_opaque_existential_0(v40);
  *(v20 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_presenterCapability) = v32;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = (v32 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater);
  v35 = *(v32 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater);
  *v34 = sub_21D59EFC4;
  v34[1] = v33;

  sub_21D0D0E88(v35);

  __swift_destroy_boxed_opaque_existential_0(v41);
  v36 = objc_allocWithZone(type metadata accessor for TTRIHashtagEditorViewController());

  v37 = sub_21D59EABC(v16, a1, v20, v36);
  v17[3] = &off_282EC5CF8;
  swift_unknownObjectWeakAssign();

  *(v20 + 24) = &off_282EC5AB8;
  swift_unknownObjectWeakAssign();
  *(v20 + 40) = v39[0];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v37;
}

uint64_t sub_21D59E968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id TTRIHashtagEditorAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIHashtagEditorAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRIHashtagEditorAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21D59EABC(uint64_t a1, char a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_cancelButton] = 0;
  *&a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_commitButton] = 0;
  *&a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_contentSizeObserver] = 0;
  *&a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_tableDataController] = 0;
  *&a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___newHashtagCell] = 0;
  *&a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___preexistingHashtagsSection] = 0;
  *&a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController____lazy_storage___hashtagCollectionCell] = 0;
  v9 = &a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_style];
  *v9 = a1;
  v9[8] = a2 & 1;
  v10 = &a4[OBJC_IVAR____TtC15RemindersUICore31TTRIHashtagEditorViewController_presenter];
  *v10 = a3;
  *(v10 + 1) = &off_282EC5CA8;
  v12.receiver = a4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithStyle_, 2);
}

uint64_t sub_21D59EB9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v24[0]) = a2;
  v7 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for TTRHashtagEditorModuleState();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF6BDC();
  sub_21DBF784C();
  sub_21DBF6BDC();
  v15 = (a4 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability____lazy_storage___newHashtagCommittingCharacters;
  v17 = sub_21DBF4CAC();
  (*(*(v17 - 8) + 56))(a4 + v16, 1, 1, v17);
  v18 = (a4 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_interactor);
  *v18 = a1;
  v18[1] = &off_282EB2E90;
  *(a4 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_savesOnCommit) = v24[0];
  v24[0] = a3;
  sub_21D59E968(a3, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_21DBF78BC();
    if (v19(v10, 1, v11) != 1)
    {
      sub_21D59EF5C(v10);
    }
  }

  else
  {
    sub_21D59F018(v10, v14);
  }

  sub_21D59F018(v14, a4 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_moduleState);
  sub_21D0CE468();
  v20 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v21 = swift_allocObject();
  v21[3] = 0;
  swift_unknownObjectWeakInit();
  v22 = MEMORY[0x277D84F90];
  v24[1] = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v21[5] = sub_21DBF5EEC();
  v21[6] = v22;
  v21[4] = v20;
  sub_21D59EF5C(v24[0]);
  *(a4 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_deferredAction) = v21;
  swift_beginAccess();
  v21[3] = &off_282EB2DE0;
  swift_unknownObjectWeakAssign();
  return a4;
}

uint64_t sub_21D59EF5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D59F018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRHashtagEditorModuleState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D59F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v31 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E740);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E748);
  v13 = *(v12 - 8);
  v27 = v12;
  v28 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 1;
  v32 = v5[4];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A010);
  sub_21D0D0F1C(&qword_280D0C4B0, &qword_27CE5A010);
  sub_21DBF927C();

  sub_21D0D0F1C(&qword_280D0C5D8, &qword_27CE5E740);
  v18 = v25;
  sub_21DBF93AC();
  (*(v26 + 8))(v11, v18);
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  v19[2] = v16;
  v19[3] = v20;
  v19[4] = v21;
  sub_21D0D0F1C(&qword_280D0C5F8, &qword_27CE5E748);

  v22 = v27;
  v23 = sub_21DBF91AC();

  (*(v28 + 8))(v15, v22);
  v5[3] = v23;

  swift_beginAccess();
  *(v16 + 16) = 0;
}

uint64_t sub_21D59F438(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a2;
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v11 = sub_21DBFB12C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_21DBF9DAC();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    swift_beginAccess();
    *(a1 + 16) = a2 & 1;
    result = swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      return a4(&v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static TTRIQuickEntryAssembly.fetchInitialListForReminderCreation(store:style:)(void *a1)
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v2 = qword_280D1AA18;
  swift_getKeyPath();
  v3 = v2;
  swift_getAtKeyPath();

  type metadata accessor for TTRQuickEntryReminderCreationInteractorCapability();
  v8 = v12;
  v9 = 0;
  v10 = 1;
  v11 = 0;
  v4 = v12;
  v5 = static TTRQuickEntryReminderCreationInteractorCapability.fetchInitialListForReminderCreation(store:options:)(a1, &v8);

  v6 = v10;
  sub_21D576B08(v6);
  return v5;
}

uint64_t static TTRIQuickEntryAssembly.createViewController(initialListForReminderCreation:reminderChangeItem:style:delegate:)(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v241 = a5;
  v242 = a4;
  v8 = type metadata accessor for TTRIQuickEntryViewModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v240 = &v225 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v238);
  v239 = &v225 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_21DBF54CC();
  v237 = *(v243 - 1);
  MEMORY[0x28223BE20](v243);
  v236 = &v225 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v12 - 8);
  v235 = &v225 - v13;
  v257 = sub_21DBF582C();
  v254 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v253 = &v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v15 - 8);
  v234 = (&v225 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v251 = (&v225 - v18);
  v252 = sub_21DBF7B0C();
  v244 = *(v252 - 1);
  MEMORY[0x28223BE20](v252);
  v250 = &v225 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF9D8C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v225 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = *a3;
  v259 = sub_21D0D8CF0(0, &qword_280D1B900);
  *v23 = sub_21DBFB12C();
  v27 = *(v21 + 104);
  LODWORD(v260) = *MEMORY[0x277D85200];
  v255 = v27;
  v27(v23);
  LOBYTE(a3) = sub_21DBF9DAC();
  v248 = *(v21 + 8);
  v248(v23, v20);
  if ((a3 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_18;
  }

  v28 = objc_allocWithZone(TTRUndoManager);
  v29 = a2;
  v258 = v26;
  v30 = v29;
  v31 = sub_21DBFA12C();
  v32 = [v28 initWithDebugIdentifier_];

  v249 = v30;
  v294[0] = v30;
  v294[1] = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = v258;
  if ((v25 & 1) != 0 && (v34 = v24, v24))
  {
    v35 = v34;
    v36 = v249;
    v37 = [v35 objectID];
    v38 = v24;
  }

  else
  {
    v39 = v249;
    v38 = 0;
    v37 = 0;
  }

  *&v287 = sub_21D5A3CDC;
  *(&v287 + 1) = v33;
  v288 = 0u;
  v289 = 0u;
  v290 = 1;
  v291 = 0;
  v292 = v38;
  v293 = v37;
  v285 = 0u;
  v286 = 0u;
  v283 = 0u;
  v284 = 0u;
  *&v266 = 0;
  type metadata accessor for TTRReminderDetailInteractor();
  swift_allocObject();
  v25 = v32;
  v40 = TTRReminderDetailInteractor.init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(v294, v25, &v287, &v283, &v266);
  v41 = [v24 store];
  *v23 = sub_21DBFB12C();
  v255(v23, v260, v20);
  v42 = sub_21DBF9DAC();
  v248(v23, v20);
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

  v233 = v25;
  v256 = v40;
  v232 = type metadata accessor for TTRGeoLocationService();
  v43 = sub_21D0D7EE0(objc_allocWithZone(v232), 0, 0);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;

  sub_21DBFB12C();
  v248 = sub_21DBF60DC();
  sub_21DBF60BC();
  v45 = sub_21DBF633C();
  swift_allocObject();
  v255 = v44;
  v46 = sub_21DBF62FC();
  v47 = type metadata accessor for TTRReminderLocationOptionsProvider();
  v48 = swift_allocObject();
  v49 = v41;

  v230 = v43;
  v50 = sub_21D5A4408(v49, v46, v230, v48);

  *&v287 = MEMORY[0x277D84F90];
  sub_21D5A4568(&qword_280D0C7C0, MEMORY[0x277D45750]);
  v246 = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D170);
  sub_21D0D0F1C(&qword_280D0C3B8, &qword_27CE5D170);
  sub_21DBFBCBC();
  v51 = sub_21DBF563C();
  v52 = *(v51 - 8);
  v226 = v51;
  v227 = v52;
  v53 = v251;
  (*(v52 + 56))(v251, 1, 1, v51);
  v228 = sub_21DBFB12C();
  *&v229 = sub_21DBF60CC();
  v54 = v253;
  sub_21DBF575C();
  type metadata accessor for TTRReminderTitleAttributesHarvester(0);
  v55 = swift_allocObject();
  *(&v288 + 1) = v47;
  *&v289 = &protocol witness table for TTRReminderLocationOptionsProvider;
  v245 = v47;
  *&v287 = v50;
  *(&v284 + 1) = v45;
  *&v285 = MEMORY[0x277D44FA8];
  v231 = v45;
  *&v283 = v46;
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  v56 = OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_requestSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFA0);
  swift_allocObject();
  v260 = v46;
  swift_retain_n();
  v248 = v50;
  swift_retain_n();
  *(v55 + v56) = sub_21DBF7D2C();
  *(v55 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_resultsPublisherSelfSubscriptionCancellable) = 0;
  (v254[2])(v55 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_initialParserLocale, v54, v257);
  v247 = v55;
  sub_21D0D3954(v53, v55 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_now, &qword_27CE58D68);
  v57 = v234;
  sub_21D0D3954(v53, v234, &qword_27CE58D68);
  v58 = [objc_opt_self() defaultTimeZone];
  v59 = v235;
  sub_21DBF5C2C();

  v60 = sub_21DBF5C4C();
  v61 = *(v60 - 8);
  (*(v61 + 56))(v59, 0, 1, v60);
  v62 = v226;
  v63 = sub_21DBF574C();
  v64 = v227;
  v65 = 0;
  if ((*(v227 + 48))(v57, 1, v62) != 1)
  {
    v65 = sub_21DBF55BC();
    (*(v64 + 8))(v57, v62);
  }

  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = sub_21DBF5C0C();
    (*(v61 + 8))(v59, v60);
  }

  v67 = [objc_allocWithZone(MEMORY[0x277D45A90]) initWithLocale:v63 referenceDate:v65 referenceTimeZone:v66 forTesting:0];

  v68 = v247;
  v69 = *(v247 + 24);
  *(v247 + 24) = v67;

  sub_21DBF661C();
  sub_21D0D8CF0(0, &qword_280D0C1D8);
  v70 = v236;
  sub_21DBFB69C();
  v71 = sub_21DBF65FC();
  (*(v237 + 8))(v70, v243);
  *(v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_listPredictor) = v71;
  v72 = v229;
  *(v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_queue) = v228;
  *(v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_backgroundQueue) = v72;
  sub_21D0D32E4(&v287, v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_locationOptionsProvider);
  sub_21D0D32E4(&v283, v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_contactsProvider);
  v73 = v246;
  *(v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_store) = v246;
  v74 = v244;
  v75 = v250;
  v76 = v252;
  (*(v244 + 16))(v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_excludedSuggestedAttributes, v250, v252);
  [objc_allocWithZone(MEMORY[0x277D44870]) initWithQueue:v72 store:v73];
  sub_21DBF7CCC();
  swift_allocObject();
  v77 = sub_21DBF7B7C();
  v78 = v248;

  v79 = v260;

  (v254[1])(v253, v257);
  sub_21D0CF7E0(v251, &qword_27CE58D68);
  (*(v74 + 8))(v75, v76);
  __swift_destroy_boxed_opaque_existential_0(&v283);
  __swift_destroy_boxed_opaque_existential_0(&v287);
  *(v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_suggestedAttributesHarvester) = v77;
  v80 = (v68 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderTitleAttributesHarvester_timeZone);
  *v80 = sub_21D4C4CA0;
  v80[1] = 0;
  v81 = type metadata accessor for TTRIReminderTitleAttributesStyler();
  v82 = swift_allocObject();
  type metadata accessor for TTRReminderTitleAttributesInteractor();
  v83 = swift_allocObject();
  v83[7] = v81;
  v83[8] = &protocol witness table for TTRIReminderTitleAttributesStyler;
  v83[4] = v82;
  v84 = v231;
  v83[12] = v231;
  v83[13] = MEMORY[0x277D44FA8];
  v83[9] = v79;
  v83[17] = v245;
  v83[18] = &protocol witness table for TTRReminderLocationOptionsProvider;
  v83[14] = v78;
  v83[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1C8);
  swift_allocObject();

  v83[19] = sub_21DBF7D2C();
  v251 = v83;
  v83[3] = v68;
  type metadata accessor for TTRLocationQuickPicksInteractor();
  v85 = swift_allocObject();
  v86 = v230;

  v243 = v86;
  v87 = sub_21D5A3CE4(v86, v78, v85);
  v88 = v255;

  v89 = sub_21DBFB12C();
  v90 = type metadata accessor for TTRParticipantAvatarProvider();
  v91 = swift_allocObject();
  *(v91 + 40) = v84;
  v92 = MEMORY[0x277D44FA8];
  *(v91 + 16) = v79;
  *(v91 + 64) = v88;
  *(v91 + 72) = 0;
  *(v91 + 88) = 0u;
  *(v91 + 104) = 0u;
  *(v91 + 120) = 0;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_21D5A5248;
  *(v91 + 80) = v89;
  LOBYTE(v287) = v258;
  sub_21D8BD7C8(&v287, &v274);
  LODWORD(v257) = BYTE1(v274);
  sub_21D257D78(*(&v274 + 1), v275);
  *(&v288 + 1) = v90;
  *&v289 = &protocol witness table for TTRParticipantAvatarProvider;
  *&v287 = v91;
  swift_retain_n();

  v93 = v87;
  v254 = v87;

  v237 = v91;

  v94 = sub_21DBFB12C();
  v95 = type metadata accessor for TTRIQuickBarParticipantAvatarProvider();
  v96 = swift_allocObject();

  v97 = sub_21D5A4080(v79, sub_21D5A5248, v88, v94, v96);
  v253 = v97;
  *(&v284 + 1) = v245;
  *&v285 = &protocol witness table for TTRReminderLocationOptionsProvider;
  *&v283 = v78;
  type metadata accessor for TTRIQuickBarInputAccessoryInteractor();
  v98 = swift_allocObject();
  v98[3] = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(&v283, (v98 + 4));
  v98[9] = v93;
  v98[10] = &protocol witness table for TTRLocationQuickPicksInteractor;
  v99 = type metadata accessor for TTRIQuickBarInputAccessoryRouter();
  v100 = swift_allocObject();
  sub_21D0D32E4(&v287, &v283);
  v267 = v99;
  *&v268 = &off_282EBF3B0;
  *&v266 = v100;
  v264 = v95;
  *&v265 = &off_282EC0000;
  *&v262 = v97;
  type metadata accessor for TTRIQuickBarInputAccessoryPresenter();
  v101 = swift_allocObject();
  v102 = __swift_mutable_project_boxed_opaque_existential_1(&v266, v99);
  v252 = &v225;
  v103 = MEMORY[0x28223BE20](v102);
  v105 = (&v225 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v106 + 16))(v105, v103);
  v107 = __swift_mutable_project_boxed_opaque_existential_1(&v262, v264);
  v250 = &v225;
  v108 = MEMORY[0x28223BE20](v107);
  v110 = (&v225 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v111 + 16))(v110, v108);
  v112 = *v105;
  v113 = *v110;
  v282 = &off_282EBF3B0;
  *(&v281 + 1) = v99;
  *&v280 = v112;
  v279 = &off_282EC0000;
  v278 = v95;
  *&v277 = v113;
  *(v101 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v101 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v101 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v101 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v101 + 224) = 0u;
  *(v101 + 240) = 0u;
  *(v101 + 80) = v98;
  *(v101 + 88) = &off_282EBF5D0;
  sub_21D0D0FD0(&v280, v101 + 96);
  sub_21D0D0FD0(&v277, v101 + 136);
  sub_21D0D0FD0(&v283, v101 + 176);
  *(v101 + 216) = v257;

  v114 = v253;

  __swift_destroy_boxed_opaque_existential_0(&v262);
  __swift_destroy_boxed_opaque_existential_0(&v266);
  v115 = type metadata accessor for TTRIQuickBarProvider();
  v116 = swift_allocObject();

  v118 = sub_21D49C0E4(v117, 7, v116);
  swift_beginAccess();
  *(v78 + 24) = &off_282EBF5C0;
  swift_unknownObjectWeakAssign();
  *(v114 + 3) = &off_282EC0388;
  swift_unknownObjectWeakAssign();
  v98[3] = &off_282EC0378;
  swift_unknownObjectWeakAssign();
  *(v101 + 40) = &off_282EBE618;
  v250 = v101;
  swift_unknownObjectWeakAssign();
  v119 = v118[3];
  if ((~v119 & 0xF000000000000006) != 0)
  {
    if (v119 < 0)
    {
      v120 = *((v119 & 0x7FFFFFFFFFFFFFFFLL) + 8);
    }

    else
    {
      v120 = &off_282EBEA80;
    }
  }

  else
  {
    v120 = 0;
  }

  v121 = v250;
  *(v250 + 7) = v120;
  swift_unknownObjectWeakAssign();
  *(&v284 + 1) = v115;

  *&v283 = v118;

  __swift_destroy_boxed_opaque_existential_0(&v287);
  *&v285 = v121;
  *(&v285 + 1) = &off_282EC0338;
  v234 = type metadata accessor for TTRAutoCompleteReminderProvider();
  v122 = swift_allocObject();
  v123 = v246;
  swift_defaultActor_initialize();
  *(v122 + 120) = xmmword_21DC14FC0;
  *(v122 + 136) = 0;
  *(v122 + 144) = 0;
  v236 = v123;
  v244 = v122;
  *(v122 + 112) = v123;
  type metadata accessor for TTRTimeZoneProvider();
  v124 = swift_allocObject();
  *(v124 + 16) = 0;
  sub_21DBFB12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E708);
  swift_allocObject();
  v125 = sub_21DBF6B5C();
  v253 = v124;
  *(v124 + 16) = v125;

  sub_21D0D3954(&v283, &v287, &qword_27CE5E710);
  v126 = swift_allocObject();
  *(v126 + 16) = v251;
  v127 = v288;
  *(v126 + 24) = v287;
  *(v126 + 40) = v127;
  v257 = v126;
  *(v126 + 56) = v289;
  sub_21D0D3954(&v283, &v287, &qword_27CE5E710);
  v128 = swift_allocObject();
  v129 = v288;
  *(v128 + 1) = v287;
  *(v128 + 2) = v129;
  v252 = v128;
  *(v128 + 3) = v289;
  sub_21D0D3954(&v283, &v287, &qword_27CE5E710);
  v130 = swift_allocObject();
  v131 = v288;
  v130[1] = v287;
  v130[2] = v131;
  v246 = v130;
  v130[3] = v289;
  v25 = type metadata accessor for TTRIQuickEntryRouter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIReminderDetailDueDateRouterCapability();
  v132 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v132 + 24) = 0x6E45206B63697551;
  *(v132 + 32) = 0xEB00000000797274;
  v23[3] = v132;
  swift_unknownObjectWeakInit();
  v133 = qword_280D155F0;

  if (v133 != -1)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (qword_280D15600)
  {
    v134 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v135 = sub_21DBFA12C();
    v136 = [v134 initWithBundleIdentifier_];
  }

  else
  {
    v136 = [objc_opt_self() currentNotificationCenter];
  }

  v282 = 0;
  v280 = 0u;
  v281 = 0u;
  v137 = objc_opt_self();
  v138 = v243;
  v139 = v137;
  v140 = v138;
  v141 = [v139 daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  v142 = swift_allocObject();
  v142[3] = 0;
  swift_unknownObjectWeakInit();
  v142[18] = 0;
  swift_beginAccess();
  v142[3] = &off_282EC6398;
  v245 = v23;
  swift_unknownObjectWeakAssign();
  v142[4] = v140;
  v231 = v142 + 4;
  v142[7] = v232;
  v142[8] = &protocol witness table for TTRGeoLocationService;
  type metadata accessor for TTRNotificationsAccessService();
  v143 = swift_allocObject();
  v143[2] = v141;
  v143[3] = &protocol witness table for REMDaemonUserDefaults;
  v143[4] = v136;
  v142[9] = v143;
  v142[10] = &protocol witness table for TTRNotificationsAccessService;
  v142[11] = v141;
  v142[12] = &protocol witness table for REMDaemonUserDefaults;
  sub_21D0D3954(&v280, &v274, &qword_27CE5E0A0);
  v235 = v140;
  if (v276)
  {
    v144 = v141;
    sub_21D0CF7E0(&v280, &qword_27CE5E0A0);
    sub_21D0D0FD0(&v274, &v277);
  }

  else
  {
    v232 = type metadata accessor for TTRUrgentAlarmAuthorizationService();
    v145 = swift_allocObject();
    v146 = sub_21DBF5EAC();
    swift_allocObject();
    v147 = v141;
    v148 = v140;
    v149 = v147;
    v150 = v136;
    v151 = sub_21DBF5E9C();
    v152 = MEMORY[0x277D44D00];
    v145[5] = v146;
    v145[6] = v152;
    v145[2] = v151;
    v278 = v232;
    v279 = &protocol witness table for TTRUrgentAlarmAuthorizationService;

    *&v277 = v145;
    sub_21D0CF7E0(&v280, &qword_27CE5E0A0);
    if (v276)
    {
      sub_21D0CF7E0(&v274, &qword_27CE5E0A0);
    }
  }

  sub_21D0D0FD0(&v277, (v142 + 13));
  sub_21D0D3954(&v283, &v287, &qword_27CE5E710);
  v153 = v289;
  v230 = *(&v289 + 1);
  v232 = v289;
  v273[4] = &off_282EC6338;
  v273[3] = v25;
  v273[0] = v245;
  v272[4] = &protocol witness table for TTRAutoCompleteReminderProvider;
  v272[3] = v234;
  v272[0] = v244;
  type metadata accessor for TTRIQuickEntryPresenter();
  v154 = swift_allocObject();
  v155 = __swift_mutable_project_boxed_opaque_existential_1(v273, v25);
  v234 = &v225;
  v156 = MEMORY[0x28223BE20](v155);
  v158 = (&v225 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v159 + 16))(v158, v156);
  v160 = *v158;
  v271 = &off_282EC6338;
  v270 = v25;
  v269[0] = v160;
  sub_21D0CF2E8(&v287, &v266);
  v268 = v153;
  v154[3] = 0;
  swift_unknownObjectWeakInit();
  v154[5] = 0;
  swift_unknownObjectWeakInit();
  v161 = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_viewModel;
  v233 = v233;

  v162 = v256;

  v163 = v257;

  v164 = v252;

  v165 = v246;

  sub_21D5B4604(v154 + v161);
  v166 = (v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_currentDetailModuleEventHandler);
  *v166 = 0;
  v166[1] = 0;
  v167 = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_editingSessionSharedProperties;
  type metadata accessor for TTRRemindersListEditingSessionPropertiesSharingWrapper();
  v168 = swift_allocObject();
  v169 = MEMORY[0x277D84F98];
  *(v154 + v167) = v168;
  *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState) = 0;
  *(v168 + 16) = v169;
  v170 = (v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_currentAttachImportingContext);
  v170[1] = 0;
  v170[2] = 0;
  *v170 = 0;
  *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = 0;
  v261[0] = v258;
  sub_21D8BD7C8(v261, &v262);
  v171 = BYTE1(v262);
  v172 = *(&v262 + 1);
  v173 = v263;
  v174 = v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_configuration;
  *v174 = v262;
  v174[1] = v171;
  *(v174 + 1) = v172;
  v174[16] = v173;
  v175 = (v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor);
  *v175 = v162;
  v175[1] = &protocol witness table for TTRReminderDetailInteractor;
  sub_21D0D32E4(v269, v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router);
  v176 = (v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_makeCellTitleModule);
  *v176 = sub_21D5A450C;
  v176[1] = v163;
  v177 = (v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_makeCellHashtagModule);
  *v177 = sub_21D5A4518;
  v177[1] = v164;
  v178 = (v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_makeCellNotesModule);
  *v178 = sub_21D5A4560;
  v178[1] = v165;
  sub_21D0D3954(&v266, &v262, &qword_27CE5E710);
  v179 = v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_quickBar;
  v229 = v265;
  sub_21D0CF2E8(&v262, (v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_quickBar));
  *(v179 + 2) = v229;
  *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_contactsProvider) = v260;
  *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_privacyChecker) = v142;
  v180 = v233;
  v154[6] = v233;
  sub_21D0D32E4(v272, v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_autoCompleteReminderProvider);
  v181 = __swift_project_boxed_opaque_existential_1(v269, v270);
  *&v229 = &v225;
  v182 = MEMORY[0x28223BE20](v181);
  v184 = (&v225 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v185 + 16))(v184, v182);
  v186 = *v184;
  v243 = v142;
  swift_retain_n();
  v233 = v180;

  v187 = v256;

  v188 = v253;

  *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_dueDateCapability) = sub_21D5A42AC(v187, v186, v142, v188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E718);
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_21DC08D00;
  v190 = *(v230 + 1);
  *(v189 + 32) = v232;
  *(v189 + 40) = v190;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper();
  swift_allocObject();
  swift_unknownObjectRetain();
  v191 = sub_21DBCEC2C(v189);

  *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_inCellEditingPresenterHelper) = v191;
  v192 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v193 = swift_allocObject();
  v193[3] = 0;
  swift_unknownObjectWeakInit();
  v194 = MEMORY[0x277D84F90];
  *&v262 = MEMORY[0x277D84F90];
  sub_21D5A4568(&qword_280D0C860, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v193[5] = sub_21DBF5EEC();
  v193[6] = v194;
  v193[4] = v192;
  *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredAction) = v193;
  v195 = v231;
  swift_beginAccess();
  v196 = v243[7];
  v197 = v243[8];
  v198 = __swift_project_boxed_opaque_existential_1(v195, v196);
  v199 = *(v196 - 8);
  v200 = MEMORY[0x28223BE20](v198);
  v202 = &v225 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v199 + 16))(v202, v200);
  v203 = (*(v197 + 96))(v196, v197);
  (*(v199 + 8))(v202, v196);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E720);
  v204 = swift_allocObject();
  *(v204 + 16) = 2;
  *(v204 + 40) = 0u;
  *(v204 + 56) = 0u;
  *(v204 + 24) = 0;
  *(v204 + 32) = v203;
  swift_beginAccess();
  *(v204 + 16) = 0;
  *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_observerForShouldShowAsUnauthorizedForPreciseLocation) = v204;
  v205 = swift_allocObject();
  swift_weakInit();

  sub_21D59F07C(sub_21D5BB894, 0, sub_21D5A45B0, v205);

  v206 = *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredAction);
  swift_beginAccess();
  *(v206 + 24) = &off_282EC6998;
  swift_unknownObjectWeakAssign();
  v207 = *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_inCellEditingPresenterHelper);
  swift_beginAccess();
  *(v207 + 24) = &off_282EC6980;
  swift_unknownObjectWeakAssign();
  v208 = *(v154 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_dueDateCapability);
  v209 = swift_allocObject();
  swift_weakInit();

  v210 = *(v208 + 16);
  v211 = *(v208 + 24);
  *(v208 + 16) = sub_21D5A45B8;
  *(v208 + 24) = v209;

  sub_21D0EC9F4(v210, v211);

  v212 = v240;
  sub_21D5BB9E0(v240);

  v213 = v233;

  __swift_destroy_boxed_opaque_existential_0(v272);
  v214 = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_viewModel;
  swift_beginAccess();
  sub_21D5A45C0(v212, v154 + v214);
  swift_endAccess();
  sub_21D0CF7E0(&v266, &qword_27CE5E710);
  __swift_destroy_boxed_opaque_existential_0(v269);
  __swift_destroy_boxed_opaque_existential_0(v273);
  type metadata accessor for TTRIQuickEntryViewController();
  LOBYTE(v266) = v258;

  sub_21DB6D254(&v266, &v288 + 8);
  *&v287 = v154;
  *(&v287 + 1) = &off_282EC68F8;
  *&v288 = v213;
  v215 = v213;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v217 = [objc_opt_self() bundleForClass_];
  v218 = sub_21DBFA12C();
  v219 = [objc_opt_self() storyboardWithName:v218 bundle:v217];

  v220 = sub_21D5A497C(v219, 0xD00000000000001CLL, 0x800000021DC61990, &v287);

  TTRReminderDetailInteractor.delegate.setter(v221, &off_282EC68D8);
  v154[3] = &off_282EC6D20;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v154[5] = v241;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v223 = v250;
  swift_beginAccess();
  *(v223 + 3) = &off_282EC6880;
  swift_unknownObjectWeakAssign();

  sub_21D0CF7E0(&v283, &qword_27CE5E710);

  return v220;
}

uint64_t sub_21D5A1B70(void *a1)
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v2 = qword_280D1AA18;
  swift_getKeyPath();
  v3 = a1;
  v4 = v2;
  swift_setAtReferenceWritableKeyPath();
}

id sub_21D5A1C30(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    swift_beginAccess();
    v5 = *v2;
    *v2 = v4;
    v3 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v3;
}

_OWORD *sub_21D5A1CC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, char **a8@<X8>)
{
  v93 = a5;
  v94 = a4;
  v97 = a3;
  v98 = a2;
  v102 = a1;
  v95 = a8;
  v10 = sub_21DBF9D8C();
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x28223BE20](v10);
  v99 = (&v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116[3] = type metadata accessor for TTRReminderTitleAttributesInteractor();
  v116[4] = &protocol witness table for TTRReminderTitleAttributesInteractor;
  v116[0] = a6;
  sub_21D0D3954(a7, v113, &qword_27CE5E710);
  v92 = v114;
  v90 = v115;
  v15 = type metadata accessor for TTRReminderCellTitleSuggestedAttributeSplitter();
  v16 = swift_allocObject();
  v112[3] = v15;
  v112[4] = &protocol witness table for TTRReminderCellTitleSuggestedAttributeSplitter;
  v112[0] = v16;
  type metadata accessor for TTRReminderCellTitleInteractor();
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  v91 = v17;
  swift_unknownObjectWeakInit();
  v89 = type metadata accessor for TTRIReminderCellTitleRouter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v103 = v18;
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84FA0];
  v20[5] = MEMORY[0x277D84FA0];
  v20[6] = v21;
  v20[7] = 0;

  sub_21DBF78BC();
  v20[2] = v19;
  v20[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v22 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v22 + 16) = swift_allocObject();
  *(v22 + 24) = 75;
  v20[4] = v22;
  v23 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
  v24 = swift_allocObject();
  v24[1] = vdupq_n_s64(0x4043000000000000uLL);
  v24[2].i64[0] = 0x405C800000000000;
  v24[2].i8[8] = 1;
  v96 = sub_21D0D8CF0(0, &qword_280D1B900);
  v25 = sub_21DBFB12C();
  sub_21DBF60DC();
  v26 = sub_21DBF60CC();
  v27 = type metadata accessor for TTRThumbnailGenerator();
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v29 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v30 = v25;
  v31 = [v29 init];
  *(v28 + 24) = v31;
  [v31 setUnderlyingQueue_];

  *(&v110 + 1) = v27;
  v111 = &protocol witness table for TTRThumbnailGenerator;
  *&v109 = v28;
  type metadata accessor for TTRAttachmentThumbnailsManager();
  v32 = swift_allocObject();
  v32[5] = v23;
  v32[6] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
  v32[2] = v24;
  v33 = MEMORY[0x277D84F98];
  v32[12] = 0;
  v32[13] = v33;
  v32[14] = MEMORY[0x277D84FA0];
  sub_21D0D0FD0(&v109, (v32 + 7));
  sub_21D5A5170(v102, v14, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D32E4(v116, &v109);
  type metadata accessor for TTRReminderCellTitleEditingPresenter(0);
  v34 = swift_allocObject();
  *(v34 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v34 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;
  v35 = (v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  *v35 = 0;
  v35[1] = 0;
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance) = v33;
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 0;
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = 0;
  sub_21D5A5170(v14, v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v36 = (v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter);
  *v36 = v20;
  v36[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  sub_21D0D0FD0(&v109, v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) = 1;
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey) = 0;
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType) = 0;
  swift_beginAccess();
  *(v34 + 40) = v97;
  swift_unknownObjectWeakAssign();
  *(v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = v32;
  v37 = v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  v97 = v14;
  sub_21D24BDFC(v14, v34 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state);
  v38 = _s15RemindersUICore12EditingStateVMa_1(0);
  *(v37 + v38[5]) = 0;
  *(v37 + v38[6]) = 0;
  v39 = (v37 + v38[7]);
  *v39 = 0u;
  v39[1] = 0u;
  v40 = (v37 + v38[8]);
  *v40 = 0u;
  v40[1] = 0u;
  *(v37 + v38[9]) = 0;
  *(v37 + v38[10]) = 0;
  *(v37 + v38[11]) = 0;
  v41 = qword_280D155F0;

  v98 = v20;

  if (v41 != -1)
  {
    swift_once();
  }

  if (qword_280D15600)
  {
    v42 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v43 = sub_21DBFA12C();
    v88 = [v42 initWithBundleIdentifier_];
  }

  else
  {
    v88 = [objc_opt_self() currentNotificationCenter];
  }

  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v44 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  v45 = swift_allocObject();
  v45[3] = 0;
  swift_unknownObjectWeakInit();
  v45[18] = 0;
  swift_beginAccess();
  v45[3] = &off_282EC4F60;
  swift_unknownObjectWeakAssign();
  v46 = type metadata accessor for TTRGeoLocationService();
  v107 = v46;
  v108 = &protocol witness table for TTRGeoLocationService;
  v47 = sub_21DBFB12C();
  v49 = v99;
  v48 = v100;
  *v99 = v47;
  v50 = v101;
  (*(v48 + 104))(v49, *MEMORY[0x277D85200], v101);
  v51 = sub_21DBF9DAC();
  result = (*(v48 + 8))(v49, v50);
  if (v51)
  {
    *&v106 = sub_21D0D7EE0(objc_allocWithZone(v46), 0, 0);
    sub_21D0D0FD0(&v106, (v45 + 4));
    type metadata accessor for TTRNotificationsAccessService();
    v53 = swift_allocObject();
    v53[2] = v44;
    v53[3] = &protocol witness table for REMDaemonUserDefaults;
    v54 = v88;
    v53[4] = v88;
    v45[9] = v53;
    v45[10] = &protocol witness table for TTRNotificationsAccessService;
    v45[11] = v44;
    v45[12] = &protocol witness table for REMDaemonUserDefaults;
    sub_21D0D3954(&v109, &v104, &qword_27CE5E0A0);
    if (v105)
    {
      v55 = v44;
      sub_21D0CF7E0(&v109, &qword_27CE5E0A0);
      sub_21D0D0FD0(&v104, &v106);
    }

    else
    {
      v56 = type metadata accessor for TTRUrgentAlarmAuthorizationService();
      v57 = swift_allocObject();
      v58 = sub_21DBF5EAC();
      swift_allocObject();
      v59 = v44;
      v60 = v54;
      v61 = sub_21DBF5E9C();
      v62 = MEMORY[0x277D44D00];
      v57[5] = v58;
      v57[6] = v62;
      v57[2] = v61;
      v107 = v56;
      v108 = &protocol witness table for TTRUrgentAlarmAuthorizationService;

      *&v106 = v57;
      sub_21D0CF7E0(&v109, &qword_27CE5E0A0);
      if (v105)
      {
        sub_21D0CF7E0(&v104, &qword_27CE5E0A0);
      }
    }

    sub_21D0D0FD0(&v106, (v45 + 13));
    v63 = v97;
    sub_21D5A5170(v102, v97, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0D3954(v112, &v109, &qword_27CE5E0A8);
    v64 = v89;
    v107 = v89;
    v108 = &off_282EC4F50;
    *&v106 = v103;
    type metadata accessor for TTRIReminderCellTitlePresenter();
    v65 = swift_allocObject();
    v66 = __swift_mutable_project_boxed_opaque_existential_1(&v106, v64);
    v102 = &v88;
    v67 = MEMORY[0x28223BE20](v66);
    v69 = (&v88 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69, v67);
    v71 = *v69;
    v72 = &v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_router];
    *(v72 + 3) = v64;
    *(v72 + 4) = &off_282EC4F50;
    *v72 = v71;
    *(v65 + 3) = 0;
    swift_unknownObjectWeakInit();
    *(v65 + 5) = 0;
    swift_unknownObjectWeakInit();
    *(v65 + 7) = 0;
    swift_unknownObjectWeakInit();
    v73 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
    v74 = type metadata accessor for TTRReminderCellTitleViewModel();
    (*(*(v74 - 8) + 56))(&v65[v73], 1, 1, v74);
    sub_21D24BDFC(v63, &v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_item]);
    v75 = &v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_interactor];
    v76 = v91;
    v77 = v92;
    *v75 = v91;
    v75[1] = &protocol witness table for TTRReminderCellTitleInteractor;
    v78 = &v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter];
    *v78 = v34;
    v78[1] = &protocol witness table for TTRReminderCellTitleEditingPresenter;
    v79 = &v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar];
    v80 = v90;
    *v79 = v77;
    *(v79 + 1) = v80;
    v81 = &v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_augmentationSplitter];
    *(v81 + 4) = v111;
    v82 = v110;
    *v81 = v109;
    *(v81 + 1) = v82;
    *&v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_privacyChecker] = v45;
    v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule] = 0;
    *&v65[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_returnKeyType] = 0;

    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_0(&v106);
    v83 = type metadata accessor for TTRIReminderCellTitleViewController();
    v84 = objc_allocWithZone(v83);

    v86 = sub_21D57816C(v85, v84);
    swift_beginAccess();
    *(v76 + 24) = &off_282EC5918;
    swift_unknownObjectWeakAssign();
    *(v65 + 3) = &off_282EC5640;
    swift_unknownObjectWeakAssign();
    *(v65 + 7) = v93;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    *(v34 + 24) = &off_282EC58C8;
    swift_unknownObjectWeakAssign();
    *(&v110 + 1) = v83;

    swift_unknownObjectRelease();
    *&v109 = v86;

    sub_21D0CF7E0(v112, &qword_27CE5E0A8);
    __swift_destroy_boxed_opaque_existential_0(v113);
    __swift_destroy_boxed_opaque_existential_0(v116);
    v87 = v95;
    *v95 = v65;
    v87[1] = &off_282EC5888;
    return sub_21D0CF2E8(&v109, v87 + 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5A2924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v44 = a5;
  v45 = a4;
  v46 = a7;
  v41 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v11 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a6, v48, &qword_27CE5E710);
  v42 = v49;
  v43 = v50;
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = type metadata accessor for TTRIReminderCellHashtagRouter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_21D5A5170(a1, v13, type metadata accessor for TTRRemindersListViewModel.Item);
  type metadata accessor for TTRReminderCellHashtagEditingPresenter();
  v17 = swift_allocObject();
  swift_unknownObjectRetain();

  v18 = sub_21D60EE88(v13, v14, a2, a3, v17);
  swift_unknownObjectRelease();
  sub_21D5A5170(a1, v13, type metadata accessor for TTRRemindersListViewModel.Item);
  v47[3] = v15;
  v47[4] = &off_282EC9CC0;
  v47[0] = v16;
  type metadata accessor for TTRIReminderCellHashtagPresenter();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v47, v15);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v26 = (v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_router);
  v26[3] = v15;
  v26[4] = &off_282EC9CC0;
  *v26 = v25;
  v19[3] = 0;
  swift_unknownObjectWeakInit();
  v19[5] = 0;
  swift_unknownObjectWeakInit();
  v19[7] = 0;
  swift_unknownObjectWeakInit();
  (*(v11 + 56))(v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_viewModelItem, 1, 1, v41);
  v27 = (v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_hashtagData);
  v27[1] = 0;
  v27[2] = 0;
  *v27 = 0;
  *(v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_descriptionAttributedText) = 0;
  v28 = (v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_appLinkButtonConfiguration);
  *v28 = 0u;
  v28[1] = 0u;
  v29 = v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_subtaskButtonConfiguration;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  sub_21D24BDFC(v13, v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_item);
  v30 = (v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_interactor);
  *v30 = v14;
  v30[1] = &protocol witness table for TTRReminderCellHashtagInteractor;
  v31 = (v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_editingPresenter);
  *v31 = v18;
  v31[1] = &protocol witness table for TTRReminderCellHashtagEditingPresenter;
  v32 = (v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_quickBar);
  v33 = v43;
  *v32 = v42;
  v32[1] = v33;
  *(v19 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderCellHashtagPresenter_ownerModule) = 0;

  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v47);
  v34 = type metadata accessor for TTRIReminderCellHashtagViewController();
  v35 = objc_allocWithZone(v34);

  v37 = sub_21D60ECE4(v36, v35);
  swift_beginAccess();
  *(v14 + 24) = &off_282EC90D8;
  swift_unknownObjectWeakAssign();
  v19[3] = &off_282EC9C50;
  swift_unknownObjectWeakAssign();
  v19[7] = v44;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v18 + 24) = &off_282EC90A0;
  swift_unknownObjectWeakAssign();
  v38 = v46;
  v46[5] = v34;

  swift_unknownObjectRelease();
  v38[2] = v37;
  result = __swift_destroy_boxed_opaque_existential_0(v48);
  *v38 = v19;
  v38[1] = &off_282EC8FE0;
  return result;
}

uint64_t sub_21D5A2DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v47 = a4;
  v48 = a3;
  v44 = a2;
  v49 = a6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a5, v51, &qword_27CE5E710);
  v45 = v52;
  v46 = v53;
  type metadata accessor for TTRReminderCellNotesInteractor();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  v12 = type metadata accessor for TTRIReminderCellNotesRouter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84FA0];
  v15[5] = MEMORY[0x277D84FA0];
  v15[6] = v16;
  v15[7] = 0;
  sub_21DBF78BC();
  v15[2] = v14;
  v15[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v17 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v17 + 16) = swift_allocObject();
  *(v17 + 24) = 75;
  v15[4] = v17;
  type metadata accessor for TTRParagraphStyleEditingPresenter();
  v18 = swift_allocObject();
  sub_21D5A5170(a1, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  type metadata accessor for TTRReminderCellNotesEditingPresenter();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 40) = 0;
  swift_unknownObjectWeakInit();
  v20 = (v19 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  *v20 = 0;
  v20[1] = 0;
  *(v19 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) = 0;
  v21 = v19 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
  *v21 = 0;
  *(v21 + 24) = 0u;
  *(v21 + 8) = 0u;
  sub_21D24BDFC(v10, v19 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item);
  v22 = (v19 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter);
  *v22 = v15;
  v22[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  v23 = (v19 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter);
  *v23 = v18;
  v23[1] = &protocol witness table for TTRParagraphStyleEditingPresenter;
  swift_beginAccess();
  *(v19 + 40) = v44;
  swift_unknownObjectWeakAssign();
  sub_21D5A5170(a1, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  v50[3] = v12;
  v50[4] = &off_282EC4E18;
  v50[0] = v13;
  type metadata accessor for TTRIReminderCellNotesPresenter();
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v50, v12);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (&v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = *v28;
  v31 = (v24 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router);
  v31[3] = v12;
  v31[4] = &off_282EC4E18;
  *v31 = v30;
  *(v24 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + 64) = 0;
  swift_unknownObjectWeakInit();
  v32 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  v33 = type metadata accessor for TTRIReminderCellNotesViewModel();
  (*(*(v33 - 8) + 56))(v24 + v32, 1, 1, v33);
  sub_21D24BDFC(v10, v24 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_item);
  *(v24 + 16) = 1;
  v34 = (v24 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_interactor);
  *v34 = v11;
  v34[1] = &protocol witness table for TTRReminderCellNotesInteractor;
  v35 = (v24 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter);
  *v35 = v19;
  v35[1] = &protocol witness table for TTRReminderCellNotesEditingPresenter;
  v36 = (v24 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  v37 = v46;
  *v36 = v45;
  v36[1] = v37;
  *(v24 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_ownerModule) = 0;

  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v50);
  v38 = type metadata accessor for TTRIReminderCellNotesViewController();
  v39 = objc_allocWithZone(v38);

  v41 = sub_21D590F80(v40, v39);
  swift_beginAccess();
  *(v11 + 24) = &off_282EC5AB0;
  swift_unknownObjectWeakAssign();
  *(v24 + 32) = &off_282EC56F0;
  swift_unknownObjectWeakAssign();
  *(v24 + 48) = v47;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v19 + 24) = &off_282EC5A70;
  swift_unknownObjectWeakAssign();
  v42 = v49;
  v49[5] = v38;

  swift_unknownObjectRelease();
  v42[2] = v41;

  result = __swift_destroy_boxed_opaque_existential_0(v51);
  *v42 = v24;
  v42[1] = &off_282EC5A28;
  return result;
}

uint64_t sub_21D5A33F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DA52758(3, 4, 480.0);
  *a1 = result;
  return result;
}

void sub_21D5A3430(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  TTRUserDefaults.quickEntryRecentlySelectedListObjectID.setter(v1);
}

uint64_t sub_21D5A3460@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DA536F0(8);
  *a1 = result;
  return result;
}

uint64_t sub_21D5A34BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v27 = sub_21DBF9D8C();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  sub_21D5A5170(a4, boxed_opaque_existential_0, type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument);
  if (qword_280D19D68 != -1)
  {
    swift_once();
  }

  v9 = off_280D19D70;
  sub_21DBF8E0C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_21D213408(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_21D213408((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  sub_21D0CF2E8(v28, &v9[32 * v11 + 32]);
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v7 = sub_21DBFB12C();
  v12 = *MEMORY[0x277D85200];
  v13 = *(v5 + 104);
  v14 = v27;
  v13(v7, v12, v27);
  v15 = sub_21DBF9DAC();
  v16 = *(v5 + 8);
  v16(v7, v14);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  off_280D19D70 = v9;

  sub_21D5A3ADC(v24, v25, v26, type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController, &qword_27CE5E728);
  v14 = off_280D19D70;
  if (!*(off_280D19D70 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v17;
  sub_21DBF8E0C();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v19 = v14[2];
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  result = sub_21D256CF4(v14);
  v14 = result;
  v19 = *(result + 16);
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_11:
  v20 = v19 - 1;
  __swift_destroy_boxed_opaque_existential_0(&v14[4 * v19]);
  v14[2] = v20;
  *v7 = sub_21DBFB12C();
  v21 = v12;
  v22 = v27;
  v13(v7, v21, v27);
  v23 = sub_21DBF9DAC();
  result = v16(v7, v22);
  if (v23)
  {
    off_280D19D70 = v14;

    return v9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21D5A37D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v29 = sub_21DBF9D8C();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = &type metadata for TTRIReminderLocationPickerViewController.Argument;
  *&v30 = a4;
  *(&v30 + 1) = a5;
  v10 = qword_280D19D68;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = off_280D19D70;
  sub_21DBF8E0C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_21D213408(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_21D213408((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  sub_21D0CF2E8(&v30, &v11[32 * v13 + 32]);
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v9 = sub_21DBFB12C();
  v14 = *MEMORY[0x277D85200];
  v15 = *(v7 + 104);
  v16 = v29;
  v15(v9, v14, v29);
  v17 = sub_21DBF9DAC();
  v18 = *(v7 + 8);
  v18(v9, v16);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  off_280D19D70 = v11;

  sub_21D5A3ADC(v26, v27, v28, type metadata accessor for TTRIReminderLocationPickerViewController, &qword_27CE5E768);
  v16 = off_280D19D70;
  if (!*(off_280D19D70 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v19;
  sub_21DBF8E0C();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v21 = v16[2];
    if (v21)
    {
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  result = sub_21D256CF4(v16);
  v16 = result;
  v21 = *(result + 16);
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_11:
  v22 = v21 - 1;
  __swift_destroy_boxed_opaque_existential_0(&v16[4 * v21]);
  v16[2] = v22;
  *v9 = sub_21DBFB12C();
  v23 = v14;
  v24 = v29;
  v15(v9, v23, v29);
  v25 = sub_21DBF9DAC();
  result = v18(v9, v24);
  if (v25)
  {
    off_280D19D70 = v16;

    return v11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_21D5A3ADC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v8 = sub_21DBFA12C();
  v9 = [a1 instantiateViewControllerWithIdentifier_];

  v19[3] = sub_21D0D8CF0(0, &qword_280D17818);
  v19[0] = v9;
  sub_21D0CEB98(v19, v18);
  v10 = a4(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    if (qword_27CE56AD0 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_27CE5EEE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v18[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v13 = sub_21DBFA1AC();
    v14 = MEMORY[0x277D837D0];
    *(inited + 48) = v13;
    *(inited + 56) = v15;
    *(inited + 72) = v14;
    *(inited + 80) = 49;
    *(inited + 88) = 0xE100000000000000;
    sub_21D0CEB98(v19, v18);
    v16 = sub_21DBFA1AC();
    *(inited + 120) = v14;
    *(inited + 96) = v16;
    *(inited + 104) = v17;
    sub_21D17716C(inited);

    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEAB00("Unexpected Controller type loaded from Storyboard {expected: %@, actual: %@}", 76, 2);
    __break(1u);
  }
}

void *sub_21D5A3CE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E750);
  v10 = *(v9 - 8);
  v18 = v9;
  v19 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v23[3] = type metadata accessor for TTRGeoLocationService();
  v23[4] = &protocol witness table for TTRGeoLocationService;
  v23[0] = a1;
  v22[3] = type metadata accessor for TTRReminderLocationOptionsProvider();
  v22[4] = &protocol witness table for TTRReminderLocationOptionsProvider;
  v22[0] = a2;
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = MEMORY[0x277D84F90];
  a3[15] = 0;
  a3[16] = 0;
  sub_21D0D32E4(v23, (a3 + 5));
  sub_21D0D32E4(v22, (a3 + 10));
  sub_21D6E3B40(0);
  v21 = off_282ECBA20[0]();
  v13 = [objc_opt_self() mainRunLoop];
  v20 = v13;
  v14 = sub_21DBFBA0C();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E758);
  sub_21D0D8CF0(0, &qword_280D17650);
  sub_21D0D0F1C(&qword_280D0C4B8, &qword_27CE5E758);
  sub_21D5A51D8();
  sub_21DBF936C();
  sub_21D0CF7E0(v8, &qword_27CE5A0F0);

  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D0C518, &qword_27CE5E750);
  v15 = v18;
  v16 = sub_21DBF93CC();

  (*(v19 + 8))(v12, v15);
  __swift_destroy_boxed_opaque_existential_0(v23);
  a3[15] = v16;

  __swift_destroy_boxed_opaque_existential_0(v22);
  return a3;
}

void *sub_21D5A4080(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v10);
  v15[3] = sub_21DBF633C();
  v15[4] = MEMORY[0x277D44FA8];
  v15[0] = a1;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[11] = 0;
  a5[12] = 0;
  a5[15] = MEMORY[0x277D84F98];
  sub_21D0D32E4(v15, (a5 + 4));
  a5[9] = a2;
  a5[10] = a3;
  a5[14] = a4;
  type metadata accessor for TTRDeferredAction();
  v11 = swift_allocObject();
  v11[3] = 0;
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x277D84F90];
  sub_21D5A4568(&qword_280D0C860, MEMORY[0x277D44D10]);
  v13 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v11[5] = sub_21DBF5EEC();
  v11[6] = v12;
  v11[4] = v13;
  __swift_destroy_boxed_opaque_existential_0(v15);
  a5[13] = v11;
  swift_beginAccess();
  v11[3] = &off_282EBFFF0;
  swift_unknownObjectWeakAssign();
  return a5;
}

uint64_t sub_21D5A42AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for TTRIQuickEntryRouter();
  v18 = &off_282EC6310;
  *&v16 = a2;
  type metadata accessor for TTRIReminderDetailDueDatePresenterCapability();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 3;
  *(v8 + 34) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 2;
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v9 = qword_280D1AA18;
  type metadata accessor for TTRTimeZoneOverrideMenuPresenterCapability();
  v10 = swift_allocObject();
  v14 = type metadata accessor for TTRUserDefaults();
  v15 = &protocol witness table for TTRUserDefaults;
  *&v13 = v9;
  sub_21D0D0FD0(&v13, (v10 + 2));
  v10[7] = sub_21D4C4CA0;
  v10[8] = 0;
  v10[9] = sub_21D8B7CAC;
  v10[10] = 0;
  *(v8 + 136) = v10;
  *(v8 + 64) = a1;
  *(v8 + 72) = &protocol witness table for TTRReminderDetailInteractor;
  sub_21D0D0FD0(&v16, v8 + 80);
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  v11 = v9;
  return v8;
}

void *sub_21D5A4408(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10[3] = sub_21DBF633C();
  v10[4] = MEMORY[0x277D44FA8];
  v10[0] = a2;
  v9[3] = type metadata accessor for TTRGeoLocationService();
  v9[4] = &protocol witness table for TTRGeoLocationService;
  v9[0] = a3;
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[15] = 0;
  sub_21D0D32E4(v9, (a4 + 4));
  sub_21D0D32E4(v10, (a4 + 9));
  [a1 everConnectedToCar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E760);
  swift_allocObject();
  a4[14] = sub_21DBF90AC();
  sub_21D68A53C();
  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return a4;
}

uint64_t objectdestroy_12Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D5A4568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D5A45C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIQuickEntryViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D5A4624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v28 = a2;
  v27 = a1;
  v30 = sub_21DBF9D8C();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = &type metadata for TTRIReminderDetailViewController.Argument;
  v8 = swift_allocObject();
  *&v32 = v8;
  v9 = *(a4 + 80);
  *(v8 + 80) = *(a4 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a4 + 96);
  *(v8 + 128) = *(a4 + 112);
  v10 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v10;
  v11 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v11;
  sub_21D5A505C(a4, v31);
  if (qword_280D19D68 != -1)
  {
    swift_once();
  }

  v12 = off_280D19D70;
  sub_21DBF8E0C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_21D213408(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_21D213408((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  sub_21D0CF2E8(&v32, &v12[32 * v14 + 32]);
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v7 = sub_21DBFB12C();
  v15 = *MEMORY[0x277D85200];
  v16 = *(v5 + 104);
  v17 = v30;
  v16(v7, v15, v30);
  v18 = sub_21DBF9DAC();
  v19 = *(v5 + 8);
  v19(v7, v17);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  off_280D19D70 = v12;

  sub_21D5A3ADC(v27, v28, v29, type metadata accessor for TTRIReminderDetailViewController, &qword_27CE5E730);
  v17 = off_280D19D70;
  if (!*(off_280D19D70 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v20;
  sub_21DBF8E0C();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v22 = v17[2];
    if (v22)
    {
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  result = sub_21D256CF4(v17);
  v17 = result;
  v22 = *(result + 16);
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_11:
  v23 = v22 - 1;
  __swift_destroy_boxed_opaque_existential_0(&v17[4 * v22]);
  v17[2] = v23;
  *v7 = sub_21DBFB12C();
  v24 = v15;
  v25 = v30;
  v16(v7, v24, v30);
  v26 = sub_21DBF9DAC();
  result = v19(v7, v25);
  if (v26)
  {
    off_280D19D70 = v17;

    return v12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21D5A497C(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v28 = sub_21DBF9D8C();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = &type metadata for TTRIQuickEntryViewController.Argument;
  v8 = swift_allocObject();
  *&v30 = v8;
  v9 = a4[1];
  v8[1] = *a4;
  v8[2] = v9;
  v8[3] = a4[2];
  *(v8 + 57) = *(a4 + 41);
  sub_21D5A50B8(a4, v29);
  if (qword_280D19D68 != -1)
  {
    swift_once();
  }

  v10 = off_280D19D70;
  sub_21DBF8E0C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_21D213408(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_21D213408((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  sub_21D0CF2E8(&v30, &v10[32 * v12 + 32]);
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v7 = sub_21DBFB12C();
  v13 = *MEMORY[0x277D85200];
  v14 = *(v5 + 104);
  v15 = v28;
  v14(v7, v13, v28);
  v16 = sub_21DBF9DAC();
  v17 = *(v5 + 8);
  v17(v7, v15);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  off_280D19D70 = v10;

  sub_21D5A3ADC(v25, v26, v27, type metadata accessor for TTRIQuickEntryViewController, &qword_27CE5E738);
  v15 = off_280D19D70;
  if (!*(off_280D19D70 + 2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v18;
  sub_21DBF8E0C();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v20 = v15[2];
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  result = sub_21D256CF4(v15);
  v15 = result;
  v20 = *(result + 16);
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_11:
  v21 = v20 - 1;
  __swift_destroy_boxed_opaque_existential_0(&v15[4 * v20]);
  v15[2] = v21;
  *v7 = sub_21DBFB12C();
  v22 = v13;
  v23 = v28;
  v14(v7, v22, v28);
  v24 = sub_21DBF9DAC();
  result = v17(v7, v23);
  if (v24)
  {
    off_280D19D70 = v15;

    return v10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of TTRIQuickEntryModuleInterface.commitEditing(dismissalState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 88) + **(a4 + 88));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRIQuickEntryModuleInterface.cancelEditing(dismissalState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D1B795C;

  return v11(a1, a2, a3, a4);
}

void *sub_21D5A5114@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *a1;
  result = v4(&v7, &v6);
  *a2 = v7;
  return result;
}

uint64_t sub_21D5A5170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D5A51D8()
{
  result = qword_280D17660;
  if (!qword_280D17660)
  {
    sub_21D0D8CF0(255, &qword_280D17650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17660);
  }

  return result;
}

id sub_21D5A524C(uint64_t a1)
{
  v3 = (v1 + qword_27CE5E778);
  *v3 = 0;
  v3[1] = 0;
  sub_21D1D9BE4(a1, v9);
  v4 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v4 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v4 & *v1) + 0x90)) = 0;
  sub_21D1D9BE4(v9, v1 + *((*v4 & *v1) + 0x78));
  *(v1 + *((*v4 & *v1) + 0x80)) = 0;
  v5 = v1 + *((*v4 & *v1) + 0x88);
  strcpy(v5, "SuggestionCell");
  v5[15] = -18;
  v8.receiver = v1;
  v8.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E7C0);
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_21D1D9C40(a1);
  sub_21D1D9C40(v9);
  return v6;
}

uint64_t sub_21D5A53D4()
{
  v1 = *(v0 + qword_27CE5E778);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
    swift_beginAccess();
    sub_21D1D9BE4(v0 + v2, v4);

    v1(v4);
    sub_21D0D0E88(v1);
    return sub_21D1D9C40(v4);
  }

  return result;
}

uint64_t sub_21D5A5490(uint64_t a1)
{
  v5[3] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21D5A8844;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_55;
  v3 = _Block_copy(aBlock);

  [v1 performBatchUpdates_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5A55C8(void *a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x78);
  swift_beginAccess();
  v5 = sub_21D1D9BE4(a1 + v4, v41);
  v6 = v42(v5);
  v8 = v7;
  v9 = v43;
  v10 = v43();
  v11 = [v10 string];

  v37 = sub_21DBFA16C();
  v13 = v12;

  v14 = v44();
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = v14;
LABEL_14:
    v28 = *(a2 + qword_27CE65590);
    v29 = v14;
    sub_21DBF8E0C();
    v30 = v28;
    v25 = sub_21DBFA12C();

    [v30 setText_];

    v26 = 0;
    goto LABEL_15;
  }

  v45(&v38);
  v17 = v38;
  v15 = v39;
  if (v40 <= 1u)
  {
    if (v40)
    {
      v15 = 0;
      v16 = 1;
      goto LABEL_12;
    }

    v18 = v39;
    v19 = v17;
    sub_21D19BAFC(v17, v15, 0);
    v20 = v19;
    v16 = 2;
LABEL_13:
    v27 = v18;
    v14 = 0;
    goto LABEL_14;
  }

  if (v40 == 2)
  {
    v16 = 3;
    v18 = v39;
    goto LABEL_13;
  }

  if (v40 == 3)
  {
    v15 = 0;
    v16 = 4;
LABEL_12:
    v18 = v38;
    goto LABEL_13;
  }

  v36 = v47(v21);
  v22 = sub_21DBF8E0C();
  v6 = (v9)(v22);

  v37 = v46(v23);
  v13 = v24;
  sub_21D19BAFC(v17, v15, 4u);
  v25 = v6;
  sub_21DA7C084(v6);
  v15 = 0;
  v8 = 0;
  v26 = 1;
  v16 = 5;
  v17 = v36;
LABEL_15:

  sub_21DA7B5A0(v37, v13);
  v31 = a2 + qword_27CE5E790;
  v32 = *(a2 + qword_27CE5E790);
  v33 = *(a2 + qword_27CE5E790 + 8);
  *v31 = v17;
  *(v31 + 8) = v15;
  v34 = *(v31 + 16);
  *(v31 + 16) = v16;
  sub_21D5A8188(v17, v15, v16);
  sub_21D5A823C(v32, v33, v34);
  sub_21D5A5E74();
  sub_21D5A823C(v17, v15, v16);
  sub_21D5968AC(v6, v8, v26);
  sub_21D5A823C(v17, v15, v16);
  return sub_21D1D9C40(v41);
}

void sub_21D5A5994(void *a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (!a1 || !a2)
        {
          goto LABEL_10;
        }

        *a4 = a1;
        *(a4 + 8) = 0;
        *(a4 + 16) = a2;
        *(a4 + 24) = 0;
        v18 = a1;
        v11 = a2;
        a1 = v18;
LABEL_17:

        v14 = a1;
        return;
      }

      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = a1;
    }

    else
    {
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = a1;
      v4 = 2;
    }

    *(a4 + 24) = v4;
    goto LABEL_17;
  }

  if (a3 > 4u)
  {
LABEL_10:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = -1;
    return;
  }

  v17 = a1;
  if (a3 != 3)
  {
    v12 = sub_21DBFA12C();
    v13 = [objc_opt_self() _systemImageNamed_];

    *a4 = v13;
    *(a4 + 8) = 0;
    a1 = v17;
    *(a4 + 16) = v17;
    *(a4 + 24) = 0;
    goto LABEL_17;
  }

  v7 = a2;
  v8 = REMReminderPriorityLevelForPriority();
  if (v8 <= 0)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_21;
  }

  if (v8 < 4)
  {
    v9 = qword_21DC1CE98[v8 - 1];
    v10 = ((v8 - 1) << 56) - 0x1F00000000000000;
LABEL_21:
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 16) = a2;
    *(a4 + 24) = 3;
    return;
  }

  if (qword_27CE56D68 != -1)
  {
    swift_once();
  }

  v15 = sub_21DBF84BC();
  __swift_project_value_buffer(v15, qword_27CE62E48);
  v16 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v16);
  sub_21DAEAB00("unknown priority level", 22, 2);
  __break(1u);
}

char *sub_21D5A5B98(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 5u)
  {
    if (a3 == 5)
    {
      v12[0] = 38;
      v12[1] = 0x4018000000000000;
      v12[2] = 28;
      v12[3] = 0x4010000000000000;
      v12[4] = 2;
      v7 = objc_allocWithZone(type metadata accessor for TTRAutoCompleteReminderStackedImagesView());
      sub_21DBF8E0C();
      v3 = TTRAutoCompleteReminderStackedImagesView.init(configuration:)(v12);
      v8 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
      swift_beginAccess();
      v9 = *&v3[v8];
      *&v3[v8] = a1;
      if (!v9 || (v10 = sub_21DBF8E0C(), v11 = sub_21D1D6D70(v10, v9), sub_21D5A823C(a1, a2, 5u), (v11 & 1) == 0))
      {
        sub_21DAA13E4();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_27CE56A60 != -1)
    {
      swift_once();
    }

    return [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  }

  return v3;
}

void sub_21D5A5D10()
{
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v0 = sub_21D900614(1);
  v1.super.isa = UIFont.withCustomWeight(_:)(*MEMORY[0x277D743F8]).super.isa;

  v2 = [objc_opt_self() configurationWithFont:v1.super.isa scale:3];
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v4)
  {
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 imageWithTintColor:v5 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_21D5A5E74()
{
  v1 = v0;
  v2 = &v0[qword_27CE5E790];
  if (v0[qword_27CE5E790 + 16] == 5)
  {
    v3 = &selRef_secondaryLabelColor;
  }

  else
  {
    v3 = &selRef_secondaryLabelColor;
    *&v40 = [objc_opt_self() secondaryLabelColor];
    v4 = v40;
    sub_21DA7B9D0(&v40);

    v5 = v2[16];
    if (v5 != 5)
    {
      v6 = *v2;
      v7 = *(v2 + 1);
      sub_21D5A8188(*v2, v7, v2[16]);
      if (qword_280D176B8 != -1)
      {
        swift_once();
      }

      v8 = sub_21D900614(4);
      sub_21D5A823C(v6, v7, v5);
      [*&v1[qword_27CE65590] setFont_];

      if (v2[16] != 5)
      {
        v3 = &selRef_labelColor;
      }
    }
  }

  *&v40 = [objc_opt_self() *v3];
  sub_21DA7BAF4(&v40);
  v9 = *v2;
  v10 = *(v2 + 1);
  v11 = v2[16];
  if (v11 == 5)
  {
    v12 = qword_280D176B8;
    sub_21DBF8E0C();
    v13 = 6;
    if (v12 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_21D5A8188(*v2, *(v2 + 1), v2[16]);
  v13 = 1;
  if (qword_280D176B8 != -1)
  {
LABEL_10:
    v14 = v13;
    swift_once();
    v13 = v14;
  }

LABEL_12:
  v15 = sub_21D900614(v13);
  sub_21D5A823C(v9, v10, v11);
  sub_21DA7BEA0(v15);
  LODWORD(v15) = v2[16];
  v16 = objc_opt_self();
  v17 = &selRef_quaternarySystemFillColor;
  if (v15 != 5)
  {
    v17 = &selRef_clearColor;
  }

  v18 = [v16 *v17];
  [v1 setBackgroundColor_];

  v19 = *v2;
  v20 = *(v2 + 1);
  v21 = v2[16];
  sub_21D5A8188(*v2, v20, v21);
  sub_21D5A5994(v19, v20, v21, &v40);
  sub_21D5A823C(v19, v20, v21);
  v22 = v41;
  v23 = v42;
  v24 = &v1[qword_27CE5E7A8];
  v25 = *&v1[qword_27CE5E7A8];
  v26 = *&v1[qword_27CE5E7A8 + 8];
  v27 = *&v1[qword_27CE5E7A8 + 16];
  *v24 = v40;
  *(v24 + 2) = v22;
  v28 = v24[24];
  v24[24] = v23;
  sub_21D5A884C(v25, v26, v27, v28);
  sub_21D5A8830(v25, v26, v27, v28);
  v45[0] = v25;
  v45[1] = v26;
  v45[2] = v27;
  v46 = v28;
  sub_21D5A6564(v45);
  sub_21D5A8830(v25, v26, v27, v28);
  v29 = *v2;
  v30 = *(v2 + 1);
  LOBYTE(v26) = v2[16];
  sub_21D5A8188(*v2, v30, v26);
  v31 = sub_21D5A5B98(v29, v30, v26);
  sub_21D5A823C(v29, v30, v26);
  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

  v33 = &v1[qword_27CE65610];
  swift_beginAccess();
  v34 = *v33;
  v35 = *(v33 + 1);
  v36 = *(v33 + 2);
  v37 = *(v33 + 3);
  v38 = *(v33 + 4);
  *v33 = v31;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v39 = v33[40];
  v33[40] = v32;
  sub_21D361B20(v34, v35, v36, v37, v38, v39);
  sub_21D361BB4(v34, v35, v36, v37, v38, v39);
  *&v40 = v34;
  *(&v40 + 1) = v35;
  v41 = v36;
  v42 = v37;
  v43 = v38;
  v44 = v39;
  sub_21DA7F6B4(&v40);
  sub_21D361BB4(v34, v35, v36, v37, v38, v39);
}

id sub_21D5A62A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[qword_27CE5E790];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 6;
  *&v3[qword_27CE5E798] = 0;
  *&v3[qword_27CE5E7A0] = 0;
  v8 = &v3[qword_27CE5E7A8];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v8[24] = -1;
  if (a3)
  {
    v9 = sub_21DBFA12C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, a1, v9);

  [v10 setSelectionStyle_];
  return v10;
}

id sub_21D5A639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D5A62A4(a3, a4, v6);
}

void sub_21D5A63E8(uint64_t a1)
{
  v1 = a1 + qword_27CE5E790;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 6;
  *(a1 + qword_27CE5E798) = 0;
  *(a1 + qword_27CE5E7A0) = 0;
  v2 = a1 + qword_27CE5E7A8;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 24) = -1;
  sub_21DBFC31C();
  __break(1u);
}

id sub_21D5A64EC()
{
  v1 = qword_27CE5E7A0;
  v2 = *(v0 + qword_27CE5E7A0);
  if (v2)
  {
    v3 = *(v0 + qword_27CE5E7A0);
  }

  else
  {
    type metadata accessor for TTRListBadgeView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21D5A6564(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v1 + qword_27CE5E7A8;
  v8 = *(v1 + qword_27CE5E7A8);
  v7 = *(v1 + qword_27CE5E7A8 + 8);
  v9 = *(v1 + qword_27CE5E7A8 + 16);
  v10 = *(v1 + qword_27CE5E7A8 + 24);
  if (v10 != 255)
  {
    *&v62 = *(v1 + qword_27CE5E7A8);
    *(&v62 + 1) = v7;
    *&v63 = v9;
    BYTE8(v63) = v10;
    if (v5 != 255)
    {
      *&v57 = v3;
      *(&v57 + 1) = v2;
      *&v58 = v4;
      BYTE8(v58) = v5;
      sub_21D5A884C(v8, v7, v9, v10);
      sub_21D5A884C(v3, v2, v4, v5);
      sub_21D5A884C(v8, v7, v9, v10);
      v11 = sub_21D5A8498(&v62, &v57);
      sub_21D5A7F34(v57, *(&v57 + 1), v58, BYTE8(v58));
      sub_21D5A7F34(v62, *(&v62 + 1), v63, BYTE8(v63));
      sub_21D5A8830(v8, v7, v9, v10);
      if (v11)
      {
        return;
      }

LABEL_9:
      v13 = *v6;
      v12 = *(v6 + 8);
      v14 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v15 <= 1)
      {
        if (*(v6 + 24))
        {
          sub_21D5A7E98(*v6, *(v6 + 8), *(v6 + 16), 1u);
          sub_21D5A6BFC(v13, &v52);
          v40 = (v1 + qword_27CE655A0);
          swift_beginAccess();
          v41 = v40[3];
          v59 = v40[2];
          v60 = v41;
          v61 = *(v40 + 64);
          v42 = v40[1];
          v57 = *v40;
          v58 = v42;
          v64 = v59;
          v65 = v41;
          v66 = v61;
          v62 = v57;
          v63 = v42;
          v43 = v52;
          v44 = v53;
          v45 = v54;
          v46 = v55;
          *(v40 + 64) = v56;
          v40[2] = v45;
          v40[3] = v46;
          *v40 = v43;
          v40[1] = v44;
          sub_21D1ADB0C(&v57, &v47);
          sub_21D0CF7E0(&v62, &unk_27CE5EA00);
          v49 = v59;
          v50 = v60;
          v51 = v61;
          v47 = v57;
          v48 = v58;
          sub_21DA7EF48(&v47);
          v26 = v13;
          v27 = v12;
          v28 = v14;
          v29 = 1;
        }

        else
        {
          v23 = (v1 + qword_27CE655A0);
          swift_beginAccess();
          v24 = v23[3];
          v59 = v23[2];
          v60 = v24;
          v61 = *(v23 + 64);
          v25 = v23[1];
          v57 = *v23;
          v58 = v25;
          v64 = v59;
          v65 = v24;
          v66 = v61;
          v62 = v57;
          v63 = v25;
          *v23 = v13;
          *(v23 + 1) = v12;
          *(v23 + 2) = v14;
          *(v23 + 3) = 0;
          *(v23 + 64) = 0;
          sub_21D5A884C(v13, v12, v14, 0);
          sub_21D5A884C(v13, v12, v14, 0);
          sub_21D1ADB0C(&v57, &v52);
          sub_21D0CF7E0(&v62, &unk_27CE5EA00);
          v54 = v59;
          v55 = v60;
          v56 = v61;
          v52 = v57;
          v53 = v58;
          sub_21DA7EF48(&v52);
          v26 = v13;
          v27 = v12;
          v28 = v14;
          v29 = 0;
        }
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 == 3)
          {
            sub_21D5A7E98(*v6, *(v6 + 8), *(v6 + 16), 3u);
            sub_21D5A7250(v14, &v52);

            v16 = (v1 + qword_27CE655A0);
            swift_beginAccess();
            v17 = v16[3];
            v59 = v16[2];
            v60 = v17;
            v61 = *(v16 + 64);
            v18 = v16[1];
            v57 = *v16;
            v58 = v18;
            v64 = v59;
            v65 = v17;
            v66 = v61;
            v62 = v57;
            v63 = v18;
            v19 = v52;
            v20 = v53;
            v21 = v54;
            v22 = v55;
            *(v16 + 64) = v56;
            v16[2] = v21;
            v16[3] = v22;
            *v16 = v19;
            v16[1] = v20;
            sub_21D1ADB0C(&v57, &v47);
            sub_21D0CF7E0(&v62, &unk_27CE5EA00);
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v47 = v57;
            v48 = v58;
            sub_21DA7EF48(&v47);
          }

          else
          {
            v37 = (v1 + qword_27CE655A0);
            swift_beginAccess();
            v38 = v37[3];
            v59 = v37[2];
            v60 = v38;
            v61 = *(v37 + 64);
            v39 = v37[1];
            v57 = *v37;
            v58 = v39;
            v64 = v59;
            v65 = v38;
            v66 = v61;
            v62 = v57;
            v63 = v39;
            *v37 = 0;
            *(v37 + 1) = 0;
            *(v37 + 2) = 0;
            *(v37 + 3) = 0x1FFFFFFFELL;
            *(v37 + 64) = 0;
            v37[2] = 0u;
            v37[3] = 0u;
            sub_21D1ADB0C(&v57, &v52);
            sub_21D0CF7E0(&v62, &unk_27CE5EA00);
            v54 = v59;
            v55 = v60;
            v56 = v61;
            v52 = v57;
            v53 = v58;
            sub_21DA7EF48(&v52);
          }

          goto LABEL_22;
        }

        sub_21D5A7E98(*v6, *(v6 + 8), *(v6 + 16), 2u);
        sub_21D5A70DC(v13, &v52);
        v30 = (v1 + qword_27CE655A0);
        swift_beginAccess();
        v31 = v30[3];
        v59 = v30[2];
        v60 = v31;
        v61 = *(v30 + 64);
        v32 = v30[1];
        v57 = *v30;
        v58 = v32;
        v64 = v59;
        v65 = v31;
        v66 = v61;
        v62 = v57;
        v63 = v32;
        v33 = v52;
        v34 = v53;
        v35 = v54;
        v36 = v55;
        *(v30 + 64) = v56;
        v30[2] = v35;
        v30[3] = v36;
        *v30 = v33;
        v30[1] = v34;
        sub_21D1ADB0C(&v57, &v47);
        sub_21D0CF7E0(&v62, &unk_27CE5EA00);
        v49 = v59;
        v50 = v60;
        v51 = v61;
        v47 = v57;
        v48 = v58;
        sub_21DA7EF48(&v47);
        v26 = v13;
        v27 = v12;
        v28 = v14;
        v29 = 2;
      }

      sub_21D5A8830(v26, v27, v28, v29);
LABEL_22:
      sub_21D0CF7E0(&v57, &unk_27CE5EA00);
      return;
    }

    sub_21D5A884C(v8, v7, v9, v10);
    sub_21D5A884C(v3, v2, v4, 0xFFu);
    sub_21D5A884C(v8, v7, v9, v10);
    sub_21D5A7F34(v8, v7, v9, v10);
LABEL_8:
    sub_21D5A8830(v8, v7, v9, v10);
    sub_21D5A8830(v3, v2, v4, v5);
    goto LABEL_9;
  }

  sub_21D5A884C(*(v1 + qword_27CE5E7A8), *(v1 + qword_27CE5E7A8 + 8), *(v1 + qword_27CE5E7A8 + 16), 0xFFu);
  if (v5 != 255)
  {
    sub_21D5A884C(v3, v2, v4, v5);
    goto LABEL_8;
  }

  sub_21D5A884C(v3, v2, v4, 0xFFu);

  sub_21D5A8830(v8, v7, v9, 0xFFu);
}

id sub_21D5A6BFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = &selRef__setContentViewMarginType_;
  v7 = [a1 appearanceContext];
  v8 = [v7 badge];

  if (v8)
  {
    v9 = [v8 emoji];
    if (v9)
    {
      v10 = v9;
      v11 = sub_21DBFA16C();
      v13 = v12;

      v14 = sub_21D5A64EC();
      v15 = &v14[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji];
      swift_beginAccess();
      v16 = *v15;
      v17 = v15[1];
      *v15 = v11;
      v15[1] = v13;
      sub_21D1136D0(v16, v17);

      v6 = &selRef__setContentViewMarginType_;

      v18 = *(v3 + qword_27CE5E7A0);
      v19 = objc_opt_self();
      v20 = v18;
      v21 = [v19 clearColor];
      [v20 setTintColor_];
      goto LABEL_14;
    }

    v22 = sub_21D5A64EC();
    v24 = [v8 emblem];
    if (v24)
    {
      v25 = v24;
      v26 = REMListBadgeEmblem.image.getter(v24);

      v23 = v26;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = sub_21D5A64EC();
  }

  v23 = REMListBadgeEmblem.image.getter(*MEMORY[0x277D44960]);
LABEL_8:
  sub_21D112D3C(v23);

  v21 = *(v3 + qword_27CE5E7A0);
  v27 = [a1 color];
  if (v27)
  {
    v28 = v27;
    [v27 red];
    v30 = v29;
    [v28 green];
    v32 = v31;
    [v28 blue];
    v34 = v33;
    [v28 alpha];
    v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v30 green:v32 blue:v34 alpha:v35];
  }

  else
  {
    if (qword_280D1BAC0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = xmmword_280D1BAC8;
    v56 = xmmword_280D1BAD8;
    v57 = xmmword_280D1BAE8;
    v58 = byte_280D1BAF8;
    v20 = TTRListColors.Color.nativeColor.getter();
  }

  [v21 setTintColor_];
LABEL_14:

  v36 = sub_21D5A64EC();
  v37 = [a1 v6[53]];
  if (!v37)
  {
LABEL_18:
    v39 = 0;
    goto LABEL_19;
  }

  v38 = v37;
  v39 = [v37 badge];

  if (v39)
  {
    v40 = [v39 emblem];

    if (v40)
    {
      v39 = REMListBadgeEmblem.name.getter();
      v42 = v41;

      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_19:
  v42 = 0;
LABEL_20:
  v43 = &v36[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName];
  swift_beginAccess();
  *v43 = v39;
  *(v43 + 1) = v42;

  v44 = qword_27CE5E7A0;
  v45 = *(v3 + qword_27CE5E7A0);
  v46 = &v45[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji];
  swift_beginAccess();
  if (!*(v46 + 1))
  {
    type metadata accessor for TTRListColors();
    *(&v52 + 1) = sub_21D0D8CF0(0, &qword_280D17690);
    *&v53 = &protocol witness table for REMList;
    *&v51 = a1;
    v47 = v45;
    v48 = a1;
    static TTRListColors.color(for:)(&v51, &v55);
    sub_21D0CF7E0(&v51, &qword_27CE59DC0);
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v54 = v58;
    sub_21D113E3C(&v51);
  }

  v49 = *(v3 + v44);
  LOBYTE(v55) = 1;
  LOBYTE(v51) = 1;
  *a2 = v49;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 65;

  return v49;
}

double sub_21D5A70DC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = qword_27CE5E798;
  v6 = *(v2 + qword_27CE5E798);
  if (v6)
  {
    v7 = *(v2 + qword_27CE5E798);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
    [v8 setThreeDTouchEnabled_];
    v9 = *(v2 + v5);
    *(v2 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC09CF0;
  *(v10 + 32) = a1;
  sub_21D0D8CF0(0, &qword_280D0C1A0);
  v11 = v6;
  v12 = a1;
  v13 = sub_21DBFA5DC();

  [v7 setContacts_];

  v14 = [v7 view];
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 65;
  return result;
}

double sub_21D5A7250@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v5 = sub_21D900614(1);
  [v4 setFont_];

  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setTextAlignment_];
  v6 = *MEMORY[0x277CEC620];
  v7 = *(MEMORY[0x277CEC620] + 8);
  v8 = v4;
  LODWORD(v9) = 1148846080;
  [v8 setLayoutSize:v6 withContentPriority:{v7, v9}];
  v10 = [v8 layer];
  [v10 setCornerRadius_];

  v11 = [v8 layer];
  [v11 setMasksToBounds_];

  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](41154, 0xA200000000000000);
  v12 = sub_21DBFA12C();

  [v8 setText_];

  v13 = objc_opt_self();
  v14 = [v13 clearColor];
  [v8 setTintColor_];

  [v8 setBackgroundColor_];
  v15 = [v13 whiteColor];
  [v8 setTextColor_];

  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 65;
  return result;
}

id sub_21D5A750C(char *a1)
{
  v1 = *&a1[qword_27CE65590];
  v2 = a1;
  v3 = [v1 text];
  if (v3)
  {
    v4 = v3;
    sub_21DBFA16C();

    v5 = sub_21DBFA12C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

id sub_21D5A75B4(void *a1)
{
  v1 = a1;
  v2 = sub_21D5A75F8();

  return v2;
}

id sub_21D5A75F8()
{
  v1 = v0;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF516C();
  v4 = v3;
  v5 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_21D210A84((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v4;
  v9 = sub_21D5A64EC();
  v10 = &v9[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName];
  swift_beginAccess();
  v12 = *v10;
  v11 = *(v10 + 1);
  sub_21DBF8E0C();

  if (v11)
  {
    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_21D210A84((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v12;
    *(v15 + 5) = v11;
    v16 = *(v1 + qword_27CE5E7A0) + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_listColorInfo;
    swift_beginAccess();
    v17 = *(v16 + 48);
    if (v17 < 0)
    {
      v20 = TTRListType.PredefinedSmartListType.color.getter();
      v21 = [v20 accessibilityName];
    }

    else
    {
      v18 = *(v16 + 32);
      v19 = *(v16 + 40);
      if ((v17 & 1) == 0)
      {
        sub_21DBF8E0C();
        goto LABEL_14;
      }

      v20 = TTRListColors.Color.nativeColor.getter();
      v21 = [v20 accessibilityName];
    }

    v22 = v21;

    v18 = sub_21DBFA16C();
    v19 = v23;

LABEL_14:
    v25 = *(v5 + 2);
    v24 = *(v5 + 3);
    if (v25 >= v24 >> 1)
    {
      v5 = sub_21D210A84((v24 > 1), v25 + 1, 1, v5);
    }

    *(v5 + 2) = v25 + 1;
    v26 = &v5[16 * v25];
    *(v26 + 4) = v18;
    *(v26 + 5) = v19;
  }

  v27 = (*(v1 + qword_27CE5E7A0) + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
  swift_beginAccess();
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v30 = *(v5 + 2);
    v31 = *(v5 + 3);
    sub_21DBF8E0C();
    if (v30 >= v31 >> 1)
    {
      v5 = sub_21D210A84((v31 > 1), v30 + 1, 1, v5);
    }

    *(v5 + 2) = v30 + 1;
    v32 = &v5[16 * v30];
    *(v32 + 4) = v29;
    *(v32 + 5) = v28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  if (qword_280D177A8 != -1)
  {
    swift_once();
  }

  v34 = qword_280D177B0;
  *(inited + 32) = qword_280D177B0;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v35 = v34;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
  v36 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v37 = v1 + qword_27CE655C8;
  swift_beginAccess();
  if (*(v37 + 8))
  {
    v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_21DBF8E0C();
    v39 = sub_21DBFA12C();

    v40 = [v38 initWithString_];

    [v36 appendAttributedString_];
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v42 = sub_21DBFA12C();
    v43 = [v41 initWithString_];

    [v36 appendAttributedString_];
  }

  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  sub_21DBFA07C();

  v44 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v45 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D112874();
  v46 = sub_21DBF9E5C();

  v47 = [v44 initWithString:v45 attributes:v46];

  [v36 appendAttributedString_];
  return v36;
}

id sub_21D5A7C38()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v0 = sub_21DBFA12C();

  return v0;
}

void sub_21D5A7D24()
{
  sub_21D5A823C(*(v0 + qword_27CE5E790), *(v0 + qword_27CE5E790 + 8), *(v0 + qword_27CE5E790 + 16));

  v1 = *(v0 + qword_27CE5E7A8);
  v2 = *(v0 + qword_27CE5E7A8 + 8);
  v3 = *(v0 + qword_27CE5E7A8 + 16);
  v4 = *(v0 + qword_27CE5E7A8 + 24);

  sub_21D5A8830(v1, v2, v3, v4);
}

void sub_21D5A7D98(uint64_t a1)
{
  sub_21D5A823C(*(a1 + qword_27CE5E790), *(a1 + qword_27CE5E790 + 8), *(a1 + qword_27CE5E790 + 16));

  v2 = *(a1 + qword_27CE5E7A8);
  v3 = *(a1 + qword_27CE5E7A8 + 8);
  v4 = *(a1 + qword_27CE5E7A8 + 16);
  v5 = *(a1 + qword_27CE5E7A8 + 24);

  sub_21D5A8830(v2, v3, v4, v5);
}

id sub_21D5A7E98(id result, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 2)
  {
    if (a4 == 3)
    {
      sub_21DBF8E0C();
      result = a3;
    }

    else
    {
      if (a4)
      {
        return result;
      }

      v4 = result;
      v5 = a3;
      v6 = v4;
      result = a2;
    }
  }

  return result;
}

void sub_21D5A7F34(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 2)
  {
    if (a4 == 3)
    {
      v5 = a3;
    }

    else
    {
      if (a4)
      {
        return;
      }

      v5 = a3;
    }

    a1 = v5;
  }
}

uint64_t initializeWithCopy for TTRIQuickEntrySuggestionTableViewCell.Configuration.SuggestionIcon(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D5A7E98(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for TTRIQuickEntrySuggestionTableViewCell.Configuration.SuggestionIcon(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D5A7E98(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_21D5A7F34(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for TTRIQuickEntrySuggestionTableViewCell.Configuration.SuggestionIcon(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_21D5A7F34(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickEntrySuggestionTableViewCell.Configuration.SuggestionIcon(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIQuickEntrySuggestionTableViewCell.Configuration.SuggestionIcon(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

id sub_21D5A8188(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 >= 2u)
    {
      if (a3 != 2)
      {
        return result;
      }

      v5 = result;
      v4 = a2;
      result = v5;

      return result;
    }

LABEL_13:

    return result;
  }

  switch(a3)
  {
    case 3u:

      return a2;
    case 4u:
      goto LABEL_13;
    case 5u:

      return sub_21DBF8E0C();
  }

  return result;
}

void sub_21D5A823C(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 >= 2u)
    {
      if (a3 != 2)
      {
        return;
      }

      a1 = a2;

      goto LABEL_6;
    }

LABEL_13:

LABEL_6:

    return;
  }

  switch(a3)
  {
    case 3u:

      break;
    case 4u:
      goto LABEL_13;
    case 5u:

      break;
  }
}

uint64_t sub_21D5A82E0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D5A8188(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRIQuickEntrySuggestionTableViewCell.Configuration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D5A8188(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D5A823C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRIQuickEntrySuggestionTableViewCell.Configuration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D5A823C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickEntrySuggestionTableViewCell.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIQuickEntrySuggestionTableViewCell.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D5A8458(uint64_t a1)
{
  if (*(a1 + 16) <= 5u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_21D5A8470(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_21D5A8498(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v9 == 2)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        sub_21D5A7E98(v3, v2, v4, 2u);
        sub_21D5A7E98(v7, v6, v8, 2u);
        LOBYTE(v10) = sub_21DBFB63C();
        sub_21D5A7F34(v3, v2, v4, 2u);
        sub_21D5A7F34(v7, v6, v8, 2u);
        return v10 & 1;
      }
    }

    else if (v9 == 3)
    {
      v11 = v3 == v7 && v2 == v6;
      if (v11 || (sub_21DBFC64C() & 1) != 0)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        sub_21D5A7E98(v3, v2, v4, 3u);
        sub_21D5A7E98(v7, v6, v8, 3u);
        LOBYTE(v10) = sub_21DBFB63C();
        sub_21D5A7F34(v3, v2, v4, 3u);
        sub_21D5A7F34(v7, v6, v8, 3u);
        return v10 & 1;
      }

      sub_21D5A7E98(v3, v2, v4, 3u);
      sub_21D5A7E98(v7, v6, v8, 3u);
      sub_21D5A7F34(v3, v2, v4, 3u);
      v12 = v7;
      v13 = v6;
      v14 = v8;
      v15 = 3;
LABEL_18:
      sub_21D5A7F34(v12, v13, v14, v15);
      LOBYTE(v10) = 0;
      return v10 & 1;
    }

    goto LABEL_17;
  }

  if (*(a1 + 24))
  {
    if (v9 == 1)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D5A7E98(v3, v2, v4, 1u);
      sub_21D5A7E98(v7, v6, v8, 1u);
      LOBYTE(v10) = sub_21DBFB63C();
      sub_21D5A7F34(v3, v2, v4, 1u);
      sub_21D5A7F34(v7, v6, v8, 1u);
      return v10 & 1;
    }

    goto LABEL_17;
  }

  if (*(a2 + 24))
  {
LABEL_17:
    sub_21D5A7E98(*a1, v2, v4, v5);
    sub_21D5A7E98(v7, v6, v8, v9);
    sub_21D5A7F34(v3, v2, v4, v5);
    v12 = v7;
    v13 = v6;
    v14 = v8;
    v15 = v9;
    goto LABEL_18;
  }

  v18[0] = *a1;
  v18[1] = v2;
  v18[2] = v4;
  v17[0] = v7;
  v17[1] = v6;
  v17[2] = v8;
  sub_21D5A7E98(v7, v6, v8, 0);
  sub_21D5A7E98(v3, v2, v4, 0);
  sub_21D5A7E98(v3, v2, v4, 0);
  sub_21D5A7E98(v7, v6, v8, 0);
  v10 = sub_21DA823C8(v18, v17);
  sub_21D5A7F34(v3, v2, v4, 0);
  sub_21D5A7F34(v7, v6, v8, 0);
  sub_21D5A7F34(v7, v6, v8, 0);
  sub_21D5A7F34(v3, v2, v4, 0);
  return v10 & 1;
}

void sub_21D5A8830(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_21D5A7F34(a1, a2, a3, a4);
  }
}

id sub_21D5A884C(id result, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_21D5A7E98(result, a2, a3, a4);
  }

  return result;
}

void **sub_21D5A8864(void **a1, void **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    v12 = &v11[(v5 + 16) & ~v5];

    return v12;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v204 = a1;
  v203 = v3;
  v205 = v6;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v26 = *(v18 + 48);
        v27 = v25;
        if (v26(v3 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v15 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v19 = *(v18 + 48);
        v20 = v15;
        if (v19(v3 + v16, 1, v17))
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

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_65:
          v54 = sub_21DBF563C();
          (*(*(v54 - 8) + 16))(a1, v3, v54);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v55 = *v3;
        *a1 = *v3;
        v56 = v55;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v13 - 8) + 64));
LABEL_92:
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v61 = v60[5];
      v62 = a1 + v61;
      v63 = v3 + v61;
      v64 = *(v3 + v61 + 8);
      if (v64)
      {
        *v62 = *v63;
        *(v62 + 1) = v64;
        v65 = *(v63 + 2);
        v66 = *(v63 + 3);
        v67 = *(v63 + 4);
        v68 = *(v63 + 5);
        v69 = *(v63 + 6);
        v70 = *(v63 + 7);
        v71 = v63[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v65, v66, v67, v68, v69, v70, v71);
        *(v62 + 2) = v65;
        *(v62 + 3) = v66;
        *(v62 + 4) = v67;
        *(v62 + 5) = v68;
        *(v62 + 6) = v69;
        *(v62 + 7) = v70;
        v62[64] = v71;
        *(v62 + 65) = *(v63 + 65);
        v72 = v63[120];
        if (v72 == 255)
        {
          *(v62 + 72) = *(v63 + 72);
          *(v62 + 88) = *(v63 + 88);
          *(v62 + 104) = *(v63 + 104);
          v62[120] = v63[120];
        }

        else
        {
          v73 = *(v63 + 9);
          v74 = *(v63 + 10);
          v75 = *(v63 + 11);
          v76 = *(v63 + 12);
          v77 = *(v63 + 13);
          v78 = *(v63 + 14);
          v79 = v72 & 1;
          sub_21D0FB960(v73, v74, v75, v76, v77, v78, v72 & 1);
          *(v62 + 9) = v73;
          *(v62 + 10) = v74;
          *(v62 + 11) = v75;
          *(v62 + 12) = v76;
          *(v62 + 13) = v77;
          *(v62 + 14) = v78;
          v62[120] = v79;
        }

        a1 = v204;
        v6 = v205;
        v3 = v203;
        v62[121] = v63[121];
        goto LABEL_98;
      }

LABEL_95:
      v80 = *(v63 + 5);
      *(v62 + 4) = *(v63 + 4);
      *(v62 + 5) = v80;
      *(v62 + 6) = *(v63 + 6);
      *(v62 + 106) = *(v63 + 106);
      v81 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v81;
      v82 = *(v63 + 3);
      *(v62 + 2) = *(v63 + 2);
      *(v62 + 3) = v82;
LABEL_98:
      *(a1 + v60[6]) = *(v3 + v60[6]);
      *(a1 + v60[7]) = *(v3 + v60[7]);
      *(a1 + v60[8]) = *(v3 + v60[8]);
      *(a1 + v60[9]) = *(v3 + v60[9]);
      *(a1 + v60[10]) = *(v3 + v60[10]);
      v83 = v60[11];
      v84 = *(v3 + v83);
      *(a1 + v83) = v84;
      v85 = v84;
      goto LABEL_129;
    }

    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 4)
    {
      if (v24 > 2)
      {
LABEL_69:
        v57 = sub_21DBF563C();
        (*(*(v57 - 8) + 16))(a1, v3, v57);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v58 = *v3;
      *a1 = *v3;
      v59 = v58;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v24 > 7)
    {
      if (v24 == 8 || v24 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v24 == 5 || v24 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v23 - 8) + 64));
LABEL_100:
    v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v86 = v60[5];
    v62 = a1 + v86;
    v63 = v3 + v86;
    v87 = *(v3 + v86 + 8);
    if (v87)
    {
      *v62 = *v63;
      *(v62 + 1) = v87;
      v88 = *(v63 + 2);
      v89 = *(v63 + 3);
      v90 = *(v63 + 4);
      v91 = *(v63 + 5);
      v93 = *(v63 + 6);
      v92 = *(v63 + 7);
      v94 = v63[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v88, v89, v90, v91, v93, v92, v94);
      *(v62 + 2) = v88;
      *(v62 + 3) = v89;
      *(v62 + 4) = v90;
      *(v62 + 5) = v91;
      *(v62 + 6) = v93;
      *(v62 + 7) = v92;
      v62[64] = v94;
      *(v62 + 65) = *(v63 + 65);
      v95 = v63[120];
      if (v95 == 255)
      {
        *(v62 + 72) = *(v63 + 72);
        *(v62 + 88) = *(v63 + 88);
        *(v62 + 104) = *(v63 + 104);
        v62[120] = v63[120];
      }

      else
      {
        v96 = *(v63 + 9);
        v97 = *(v63 + 10);
        v98 = *(v63 + 11);
        v99 = *(v63 + 12);
        v100 = *(v63 + 13);
        v101 = *(v63 + 14);
        v102 = v95 & 1;
        sub_21D0FB960(v96, v97, v98, v99, v100, v101, v95 & 1);
        *(v62 + 9) = v96;
        *(v62 + 10) = v97;
        *(v62 + 11) = v98;
        *(v62 + 12) = v99;
        *(v62 + 13) = v100;
        *(v62 + 14) = v101;
        v62[120] = v102;
      }

      a1 = v204;
      v6 = v205;
      v3 = v203;
      v62[121] = v63[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v3;
      *(a1 + 8) = *(v3 + 8);
      *(a1 + 9) = *(v3 + 9);
      v21 = v3[2];
      a1[2] = v21;
      v22 = v21;
      goto LABEL_129;
    }

    v32 = *v3;
    *a1 = *v3;
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = *(v17 - 8);
    v33 = *(v18 + 48);
    v34 = v32;
    if (v33(v3 + v16, 1, v17))
    {
LABEL_28:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v16, v3 + v16, *(*(v28 - 8) + 64));
      goto LABEL_129;
    }

    v51 = swift_getEnumCaseMultiPayload();
    if (v51 > 4)
    {
      if (v51 <= 7)
      {
        if (v51 == 5 || v51 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v51 != 8 && v51 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v103 = *(v3 + v16);
      *(a1 + v16) = v103;
      v104 = v103;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
      goto LABEL_129;
    }

    if (v51 <= 2)
    {
      if (v51 != 1)
      {
        if (v51 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(a1 + v16, v3 + v16, *(v18 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v105 = sub_21DBF563C();
    (*(*(v105 - 8) + 16))(a1 + v16, v3 + v16, v105);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v29 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v3, 1, v29))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, v3, *(*(v31 - 8) + 64));
      }

      else
      {
        *a1 = *v3;
        v40 = *(v29 + 20);
        v41 = sub_21DBF6C1C();
        v42 = *(*(v41 - 8) + 16);
        sub_21DBF8E0C();
        v43 = a1 + v40;
        v44 = v3 + v40;
        v6 = v205;
        v42(v43, v44, v41);
        (*(v30 + 56))(a1, 0, 1, v29);
      }

      v45 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v46 = (a1 + v45);
      v47 = (v3 + v45);
      v48 = v47[1];
      if (v48)
      {
        *v46 = *v47;
        v46[1] = v48;
        v49 = v47[2];
        v46[2] = v49;
        sub_21DBF8E0C();
        v50 = v49;
      }

      else
      {
        *v46 = *v47;
        v46[2] = v47[2];
      }

      goto LABEL_129;
    case 7:
      v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v3, 1, v35))
      {
        v37 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, v3, *(*(v37 - 8) + 64));
      }

      else
      {
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(a1, v3, v52);
        *(a1 + *(v35 + 20)) = *(v3 + *(v35 + 20));
        (*(v36 + 56))(a1, 0, 1, v35);
      }

      v53 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v53 + 20)) = *(v3 + *(v53 + 20));
      goto LABEL_129;
    case 8:
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v10 = sub_21DBF8D7C();
      (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
  }

LABEL_35:
  memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_130:
  v106 = v6[6];
  *(a1 + v6[5]) = *(v3 + v6[5]);
  v107 = *(v3 + v106);
  *(a1 + v106) = v107;
  v108 = v6[7];
  v109 = v6[8];
  v110 = a1 + v108;
  v111 = v3 + v108;
  *v110 = *v111;
  v112 = *(v111 + 2);
  *(v110 + 1) = *(v111 + 1);
  *(v110 + 2) = v112;
  *(a1 + v109) = *(v3 + v109);
  v113 = v6[9];
  v114 = v6[10];
  v115 = *(v3 + v113);
  *(a1 + v113) = v115;
  __dst = a1 + v114;
  v116 = v3 + v114;
  v117 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v118 = *(v117 - 8);
  v119 = *(v118 + 48);
  v120 = v107;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v121 = v115;
  if (v119(v116, 1, v117))
  {
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
    memcpy(__dst, v116, *(*(v122 - 8) + 64));
    v12 = v204;
  }

  else
  {
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
    v201 = *(v123 - 8);
    v12 = v204;
    if ((*(v201 + 48))(v116, 1, v123))
    {
      memcpy(__dst, v116, *(v118 + 64));
    }

    else
    {
      v199 = v117;
      v124 = sub_21DBF563C();
      v195 = *(v124 - 8);
      v196 = v124;
      v194 = *(v195 + 16);
      v194(__dst, v116);
      v125 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
      __dst[v125[5]] = v116[v125[5]];
      v126 = v125[6];
      v127 = sub_21DBF509C();
      (*(*(v127 - 8) + 16))(&__dst[v126], &v116[v126], v127);
      __dst[v125[7]] = v116[v125[7]];
      v128 = v125[8];
      v129 = &__dst[v128];
      v130 = &v116[v128];
      v129[16] = v130[16];
      *v129 = *v130;
      __dst[v125[9]] = v116[v125[9]];
      __dst[v125[10]] = v116[v125[10]];
      __dst[v125[11]] = v116[v125[11]];
      v131 = v125[12];
      v132 = &__dst[v131];
      v133 = &v116[v131];
      v134 = *(v133 + 1);
      *v132 = *v133;
      *(v132 + 1) = v134;
      v135 = *(v123 + 48);
      v136 = &__dst[v135];
      v137 = &v116[v135];
      *v136 = *v137;
      v136[8] = v137[8];
      v138 = *(v137 + 3);
      *(v136 + 2) = *(v137 + 2);
      *(v136 + 3) = v138;
      v139 = *(v137 + 5);
      *(v136 + 4) = *(v137 + 4);
      *(v136 + 5) = v139;
      v197 = v123;
      v198 = v116;
      v140 = *(v123 + 64);
      v200 = &__dst[v140];
      v141 = &v116[v140];
      v142 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v143 = *(v142 - 8);
      v144 = *(v143 + 48);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v144(v141, 1, v142))
      {
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
        memcpy(v200, v141, *(*(v145 - 8) + 64));
        v12 = v204;
        v146 = v198;
        v117 = v199;
      }

      else
      {
        v193 = v142;
        v147 = *(v141 + 1);
        *v200 = *v141;
        *(v200 + 1) = v147;
        v148 = *(v142 + 20);
        v149 = *(v195 + 48);
        sub_21DBF8E0C();
        if (v149(&v141[v148], 1, v196))
        {
          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy(&v200[v148], &v141[v148], *(*(v150 - 8) + 64));
        }

        else
        {
          (v194)(&v200[v148], &v141[v148], v196);
          (*(v195 + 56))(&v200[v148], 0, 1, v196);
        }

        v12 = v204;
        v146 = v198;
        (*(v143 + 56))(v200, 0, 1, v193);
        v117 = v199;
      }

      __dst[*(v197 + 80)] = v146[*(v197 + 80)];
      __dst[*(v197 + 96)] = v146[*(v197 + 96)];
      (*(v201 + 56))(__dst, 0, 1);
    }

    (*(v118 + 56))(__dst, 0, 1, v117);
  }

  v151 = v203;
  v152 = v205;
  v153 = v205[12];
  *(v12 + v205[11]) = *(v203 + v205[11]);
  v154 = v12 + v153;
  v155 = v203 + v153;
  v156 = *(v203 + v153 + 48);
  sub_21DBF8E0C();
  if (v156 == 255)
  {
    v163 = *(v155 + 1);
    *v154 = *v155;
    *(v154 + 16) = v163;
    *(v154 + 32) = *(v155 + 2);
    *(v154 + 48) = v155[48];
  }

  else
  {
    v157 = *v155;
    v158 = *(v155 + 1);
    v159 = *(v155 + 2);
    v160 = *(v155 + 3);
    v161 = *(v155 + 4);
    v162 = *(v155 + 5);
    sub_21D0FB960(*v155, v158, v159, v160, v161, v162, v156 & 1);
    *v154 = v157;
    *(v154 + 8) = v158;
    *(v154 + 16) = v159;
    *(v154 + 24) = v160;
    v151 = v203;
    *(v154 + 32) = v161;
    *(v154 + 40) = v162;
    *(v154 + 48) = v156 & 1;
    v12 = v204;
    v152 = v205;
  }

  v164 = v152[13];
  v165 = v152[14];
  v166 = (v12 + v164);
  v167 = (v151 + v164);
  v168 = v167[1];
  *v166 = *v167;
  v166[1] = v168;
  v169 = v12 + v165;
  v170 = v151 + v165;
  v171 = *(v151 + v165 + 8);
  sub_21DBF8E0C();
  if (v171 == 1)
  {
    v172 = *(v170 + 48);
    *(v169 + 32) = *(v170 + 32);
    *(v169 + 48) = v172;
    *(v169 + 64) = *(v170 + 64);
    *(v169 + 73) = *(v170 + 73);
    v173 = *(v170 + 16);
    *v169 = *v170;
    *(v169 + 16) = v173;
  }

  else
  {
    *v169 = *v170;
    *(v169 + 8) = v171;
    v174 = *(v170 + 16);
    v175 = *(v170 + 24);
    v176 = *(v170 + 32);
    v177 = *(v170 + 40);
    v178 = *(v170 + 48);
    v179 = *(v170 + 56);
    v180 = *(v170 + 64);
    sub_21DBF8E0C();
    sub_21D0FB960(v174, v175, v176, v177, v178, v179, v180);
    *(v169 + 16) = v174;
    *(v169 + 24) = v175;
    *(v169 + 32) = v176;
    *(v169 + 40) = v177;
    v151 = v203;
    *(v169 + 48) = v178;
    *(v169 + 56) = v179;
    v12 = v204;
    v152 = v205;
    *(v169 + 64) = v180;
    v181 = *(v170 + 72);
    v182 = *(v170 + 80);
    LOBYTE(v174) = *(v170 + 88);
    sub_21D0FB9BC(v181, v182, v174);
    *(v169 + 72) = v181;
    *(v169 + 80) = v182;
    *(v169 + 88) = v174;
  }

  v183 = v152[16];
  *(v12 + v152[15]) = *(v151 + v152[15]);
  *(v12 + v183) = *(v151 + v183);
  v184 = v152[18];
  *(v12 + v152[17]) = *(v151 + v152[17]);
  *(v12 + v184) = *(v151 + v184);
  v185 = v152[19];
  sub_21DBF8E0C();
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v187 = *(v186 - 8);
  if ((*(v187 + 48))(v151 + v185, 1, v186))
  {
    v188 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
    memcpy(v12 + v185, v151 + v185, *(*(v188 - 8) + 64));
  }

  else
  {
    v189 = sub_21DBF54CC();
    v190 = *(v189 - 8);
    if ((*(v190 + 48))(v151 + v185, 1, v189))
    {
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(v12 + v185, v151 + v185, *(*(v191 - 8) + 64));
    }

    else
    {
      (*(v190 + 16))(v12 + v185, v151 + v185, v189);
      (*(v190 + 56))(v12 + v185, 0, 1, v189);
    }

    (*(v187 + 56))(v12 + v185, 0, 1, v186);
  }

  return v12;
}

uint64_t sub_21D5AA714(id *a1, int *a2)
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
      if (v10 > 7)
      {
        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_46;
        }

        goto LABEL_63;
      }

      if (v10 != 5 && v10 != 6)
      {
        goto LABEL_46;
      }
    }

    else if (v10 <= 2)
    {
      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

LABEL_63:

      goto LABEL_46;
    }

LABEL_45:
    v21 = sub_21DBF563C();
    (*(*(v21 - 8) + 8))(a1 + v8, v21);
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

  v22 = a1 + a2[10];
  v23 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
    if (!(*(*(v24 - 8) + 48))(v22, 1, v24))
    {
      v25 = sub_21DBF563C();
      v26 = *(v25 - 8);
      v27 = *(v26 + 8);
      v27(v22, v25);
      v28 = *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 24);
      v29 = sub_21DBF509C();
      (*(*(v29 - 8) + 8))(&v22[v28], v29);

      v30 = &v22[*(v24 + 64)];
      v31 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
      {

        v32 = *(v31 + 20);
        if (!(*(v26 + 48))(&v30[v32], 1, v25))
        {
          v27(&v30[v32], v25);
        }
      }
    }
  }

  v33 = a1 + a2[12];
  v34 = v33[48];
  if (v34 != 255)
  {
    sub_21D1078C0(*v33, *(v33 + 1), *(v33 + 2), *(v33 + 3), *(v33 + 4), *(v33 + 5), v34 & 1);
  }

  v35 = a1 + a2[14];
  if (*(v35 + 1) != 1)
  {

    sub_21D1078C0(*(v35 + 2), *(v35 + 3), *(v35 + 4), *(v35 + 5), *(v35 + 6), *(v35 + 7), v35[64]);
    sub_21D0FB9F4(*(v35 + 9), *(v35 + 10), v35[88]);
  }

  v36 = a2[19];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  result = (*(*(v37 - 8) + 48))(a1 + v36, 1, v37);
  if (!result)
  {
    v39 = sub_21DBF54CC();
    v41 = *(v39 - 8);
    result = (*(v41 + 48))(a1 + v36, 1, v39);
    if (!result)
    {
      v40 = *(v41 + 8);

      return v40(a1 + v36, v39);
    }
  }

  return result;
}

void **sub_21D5AAF28(void **a1, void **a2, int *a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v198 = a1;
  v197 = a2;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v22 = *(v14 + 48);
        v23 = v21;
        if (v22(a2 + v12, 1, v13))
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
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v11 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(a2 + v12, 1, v13))
        {
          goto LABEL_26;
        }

        v34 = swift_getEnumCaseMultiPayload();
        if (v34 > 4)
        {
          if (v34 <= 7)
          {
            if (v34 == 5 || v34 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v34 != 8 && v34 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v34 > 2)
        {
          goto LABEL_112;
        }

        if (v34 == 1)
        {
          goto LABEL_111;
        }

        if (v34 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 <= 4)
      {
        if (v10 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v49 = *a2;
        *a1 = *a2;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v10 > 7)
      {
        if (v10 == 8 || v10 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v10 == 5 || v10 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v9 - 8) + 64));
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
        v64 = *(v57 + 7);
        v65 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v63, v64, v65);
        *(v56 + 2) = v59;
        *(v56 + 3) = v60;
        *(v56 + 4) = v61;
        *(v56 + 5) = v62;
        *(v56 + 6) = v63;
        *(v56 + 7) = v64;
        v56[64] = v65;
        *(v56 + 65) = *(v57 + 65);
        v66 = v57[120];
        if (v66 == 255)
        {
          *(v56 + 72) = *(v57 + 72);
          *(v56 + 88) = *(v57 + 88);
          *(v56 + 104) = *(v57 + 104);
          v56[120] = v57[120];
        }

        else
        {
          v67 = *(v57 + 9);
          v68 = *(v57 + 10);
          v69 = *(v57 + 11);
          v70 = *(v57 + 12);
          v71 = *(v57 + 13);
          v72 = *(v57 + 14);
          v73 = v66 & 1;
          sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
          *(v56 + 9) = v67;
          *(v56 + 10) = v68;
          *(v56 + 11) = v69;
          *(v56 + 12) = v70;
          *(v56 + 13) = v71;
          *(v56 + 14) = v72;
          v56[120] = v73;
        }

        a2 = v197;
        v56[121] = v57[121];
        a1 = v198;
        goto LABEL_96;
      }

LABEL_93:
      v74 = *(v57 + 5);
      *(v56 + 4) = *(v57 + 4);
      *(v56 + 5) = v74;
      *(v56 + 6) = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      v75 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v75;
      v76 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v76;
LABEL_96:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v77 = v54[11];
      v78 = *(a2 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_127;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 <= 4)
    {
      if (v20 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v20 > 7)
    {
      if (v20 == 8 || v20 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v20 == 5 || v20 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v19 - 8) + 64));
LABEL_98:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v54[5];
    v56 = a1 + v80;
    v57 = a2 + v80;
    v81 = *(a2 + v80 + 8);
    if (v81)
    {
      *v56 = *v57;
      *(v56 + 1) = v81;
      v82 = *(v57 + 2);
      v83 = *(v57 + 3);
      v84 = *(v57 + 4);
      v85 = *(v57 + 5);
      v87 = *(v57 + 6);
      v86 = *(v57 + 7);
      v88 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v87, v86, v88);
      *(v56 + 2) = v82;
      *(v56 + 3) = v83;
      *(v56 + 4) = v84;
      *(v56 + 5) = v85;
      *(v56 + 6) = v87;
      *(v56 + 7) = v86;
      v56[64] = v88;
      *(v56 + 65) = *(v57 + 65);
      v89 = v57[120];
      if (v89 == 255)
      {
        *(v56 + 72) = *(v57 + 72);
        *(v56 + 88) = *(v57 + 88);
        *(v56 + 104) = *(v57 + 104);
        v56[120] = v57[120];
      }

      else
      {
        v90 = *(v57 + 9);
        v91 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v89 & 1;
        sub_21D0FB960(v90, v91, v92, v93, v94, v95, v89 & 1);
        *(v56 + 9) = v90;
        *(v56 + 10) = v91;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a2 = v197;
      v56[121] = v57[121];
      a1 = v198;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v17 = a2[2];
      a1[2] = v17;
      v18 = v17;
      goto LABEL_127;
    }

    v28 = *a2;
    *a1 = *a2;
    v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    v29 = *(v14 + 48);
    v30 = v28;
    if (v29(a2 + v12, 1, v13))
    {
LABEL_26:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v12, a2 + v12, *(*(v24 - 8) + 64));
      goto LABEL_127;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v97 = *(a2 + v12);
      *(a1 + v12) = v97;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v14 + 56))(a1 + v12, 0, 1, v13);
      goto LABEL_127;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v12, a2 + v12, *(v14 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v99 = sub_21DBF563C();
    (*(*(v99 - 8) + 16))(a1 + v12, a2 + v12, v99);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  if (EnumCaseMultiPayload == 6)
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
      v36 = *(v25 + 20);
      v37 = sub_21DBF6C1C();
      v38 = *(*(v37 - 8) + 16);
      sub_21DBF8E0C();
      v38(a1 + v36, a2 + v36, v37);
      (*(v26 + 56))(a1, 0, 1, v25);
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

    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(a2, 1, v31))
    {
      v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v33 - 8) + 64));
    }

    else
    {
      v46 = sub_21DBF563C();
      (*(*(v46 - 8) + 16))(a1, a2, v46);
      *(a1 + *(v31 + 20)) = *(a2 + *(v31 + 20));
      (*(v32 + 56))(a1, 0, 1, v31);
    }

    v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_33:
    memcpy(a1, a2, *(*(v5 - 8) + 64));
    goto LABEL_128;
  }

  *a1 = *a2;
  v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v8 = sub_21DBF8D7C();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_127:
  swift_storeEnumTagMultiPayload();
LABEL_128:
  v100 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v101 = *(a2 + v100);
  *(a1 + v100) = v101;
  v102 = a3[7];
  v103 = a3[8];
  v104 = a1 + v102;
  v105 = a2 + v102;
  *v104 = *v105;
  v106 = *(v105 + 2);
  *(v104 + 1) = *(v105 + 1);
  *(v104 + 2) = v106;
  *(a1 + v103) = *(a2 + v103);
  v107 = a3[9];
  v108 = a3[10];
  v109 = *(a2 + v107);
  *(a1 + v107) = v109;
  __dst = a1 + v108;
  v110 = a2 + v108;
  v111 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v112 = *(v111 - 8);
  v113 = *(v112 + 48);
  v114 = v101;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v115 = v109;
  if (v113(v110, 1, v111))
  {
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
    memcpy(__dst, v110, *(*(v116 - 8) + 64));
    v117 = v198;
  }

  else
  {
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
    v195 = *(v118 - 8);
    v117 = v198;
    if ((*(v195 + 48))(v110, 1, v118))
    {
      memcpy(__dst, v110, *(v112 + 64));
    }

    else
    {
      v193 = v111;
      v119 = sub_21DBF563C();
      v189 = *(v119 - 8);
      v190 = v119;
      v188 = *(v189 + 16);
      v188(__dst, v110);
      v120 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
      __dst[v120[5]] = v110[v120[5]];
      v121 = v120[6];
      v122 = sub_21DBF509C();
      (*(*(v122 - 8) + 16))(&__dst[v121], &v110[v121], v122);
      __dst[v120[7]] = v110[v120[7]];
      v123 = v120[8];
      v124 = &__dst[v123];
      v125 = &v110[v123];
      v124[16] = v125[16];
      *v124 = *v125;
      __dst[v120[9]] = v110[v120[9]];
      __dst[v120[10]] = v110[v120[10]];
      __dst[v120[11]] = v110[v120[11]];
      v126 = v120[12];
      v127 = &__dst[v126];
      v128 = &v110[v126];
      v129 = *(v128 + 1);
      *v127 = *v128;
      *(v127 + 1) = v129;
      v130 = *(v118 + 48);
      v131 = &__dst[v130];
      v132 = &v110[v130];
      *v131 = *v132;
      v131[8] = v132[8];
      v133 = *(v132 + 3);
      *(v131 + 2) = *(v132 + 2);
      *(v131 + 3) = v133;
      v134 = *(v132 + 5);
      *(v131 + 4) = *(v132 + 4);
      *(v131 + 5) = v134;
      v191 = v118;
      v192 = v110;
      v135 = *(v118 + 64);
      v194 = &__dst[v135];
      v136 = &v110[v135];
      v137 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v138 = *(v137 - 8);
      v139 = *(v138 + 48);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v139(v136, 1, v137))
      {
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
        memcpy(v194, v136, *(*(v140 - 8) + 64));
        v117 = v198;
        v141 = v192;
        v111 = v193;
      }

      else
      {
        v187 = v137;
        v142 = *(v136 + 1);
        *v194 = *v136;
        *(v194 + 1) = v142;
        v143 = *(v137 + 20);
        v144 = *(v189 + 48);
        sub_21DBF8E0C();
        if (v144(&v136[v143], 1, v190))
        {
          v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy(&v194[v143], &v136[v143], *(*(v145 - 8) + 64));
        }

        else
        {
          (v188)(&v194[v143], &v136[v143], v190);
          (*(v189 + 56))(&v194[v143], 0, 1, v190);
        }

        v117 = v198;
        v141 = v192;
        (*(v138 + 56))(v194, 0, 1, v187);
        v111 = v193;
      }

      __dst[*(v191 + 80)] = v141[*(v191 + 80)];
      __dst[*(v191 + 96)] = v141[*(v191 + 96)];
      (*(v195 + 56))(__dst, 0, 1);
    }

    (*(v112 + 56))(__dst, 0, 1, v111);
  }

  v146 = v197;
  v147 = a3[12];
  *(v117 + a3[11]) = *(v197 + a3[11]);
  v148 = v117 + v147;
  v149 = v197 + v147;
  v150 = *(v197 + v147 + 48);
  sub_21DBF8E0C();
  if (v150 == 255)
  {
    v157 = *(v149 + 1);
    *v148 = *v149;
    *(v148 + 16) = v157;
    *(v148 + 32) = *(v149 + 2);
    *(v148 + 48) = v149[48];
  }

  else
  {
    v151 = *v149;
    v152 = *(v149 + 1);
    v153 = *(v149 + 2);
    v154 = *(v149 + 3);
    v155 = *(v149 + 4);
    v156 = *(v149 + 5);
    sub_21D0FB960(*v149, v152, v153, v154, v155, v156, v150 & 1);
    *v148 = v151;
    *(v148 + 8) = v152;
    *(v148 + 16) = v153;
    *(v148 + 24) = v154;
    v146 = v197;
    *(v148 + 32) = v155;
    *(v148 + 40) = v156;
    *(v148 + 48) = v150 & 1;
    v117 = v198;
  }

  v158 = a3[13];
  v159 = a3[14];
  v160 = (v117 + v158);
  v161 = (v146 + v158);
  v162 = v161[1];
  *v160 = *v161;
  v160[1] = v162;
  v163 = v117 + v159;
  v164 = v146 + v159;
  v165 = *(v146 + v159 + 8);
  sub_21DBF8E0C();
  if (v165 == 1)
  {
    v166 = *(v164 + 48);
    *(v163 + 32) = *(v164 + 32);
    *(v163 + 48) = v166;
    *(v163 + 64) = *(v164 + 64);
    *(v163 + 73) = *(v164 + 73);
    v167 = *(v164 + 16);
    *v163 = *v164;
    *(v163 + 16) = v167;
  }

  else
  {
    *v163 = *v164;
    *(v163 + 8) = v165;
    v168 = *(v164 + 16);
    v169 = *(v164 + 24);
    v170 = *(v164 + 32);
    v171 = *(v164 + 40);
    v172 = *(v164 + 48);
    v173 = *(v164 + 56);
    v174 = *(v164 + 64);
    sub_21DBF8E0C();
    sub_21D0FB960(v168, v169, v170, v171, v172, v173, v174);
    *(v163 + 16) = v168;
    *(v163 + 24) = v169;
    *(v163 + 32) = v170;
    *(v163 + 40) = v171;
    v146 = v197;
    *(v163 + 48) = v172;
    *(v163 + 56) = v173;
    v117 = v198;
    *(v163 + 64) = v174;
    v175 = *(v164 + 72);
    v176 = *(v164 + 80);
    LOBYTE(v168) = *(v164 + 88);
    sub_21D0FB9BC(v175, v176, v168);
    *(v163 + 72) = v175;
    *(v163 + 80) = v176;
    *(v163 + 88) = v168;
  }

  v177 = a3[16];
  *(v117 + a3[15]) = *(v146 + a3[15]);
  *(v117 + v177) = *(v146 + v177);
  v178 = a3[18];
  *(v117 + a3[17]) = *(v146 + a3[17]);
  *(v117 + v178) = *(v146 + v178);
  v179 = a3[19];
  sub_21DBF8E0C();
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v181 = *(v180 - 8);
  if ((*(v181 + 48))(v146 + v179, 1, v180))
  {
    v182 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
    memcpy(v117 + v179, v146 + v179, *(*(v182 - 8) + 64));
  }

  else
  {
    v183 = sub_21DBF54CC();
    v184 = *(v183 - 8);
    if ((*(v184 + 48))(v146 + v179, 1, v183))
    {
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(v117 + v179, v146 + v179, *(*(v185 - 8) + 64));
    }

    else
    {
      (*(v184 + 16))(v117 + v179, v146 + v179, v183);
      (*(v184 + 56))(v117 + v179, 0, 1, v183);
    }

    (*(v181 + 56))(v117 + v179, 0, 1, v180);
  }

  return v117;
}

void *sub_21D5ACD4C(void *a1, void *a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D106BB8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
              __dstc = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              __dstc(a1 + v37, v4 + v37, v38);
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

LABEL_34:
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
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
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        __dstd = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, __dstd);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = __dstd;
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
          v65 = *(v57 + 10);
          __dste = *(v57 + 9);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(__dste, v65, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = __dste;
          *(v56 + 10) = v65;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        v4 = a2;
        v3 = a3;
        v56[121] = v57[121];
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
      v3 = a3;
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
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      __dstf = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, __dstf);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = __dstf;
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
        v91 = *(v57 + 10);
        __dstg = *(v57 + 9);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(__dstg, v91, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = __dstg;
        *(v56 + 10) = v91;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      v4 = a2;
      v3 = a3;
      v56[121] = v57[121];
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + v3[5]) = *(v4 + v3[5]);
  v103 = v3[6];
  v104 = *(v4 + v103);
  v105 = *(a1 + v103);
  *(a1 + v103) = v104;
  v106 = v104;

  v107 = v3[7];
  v108 = a1 + v107;
  v109 = v4 + v107;
  *v108 = *(v4 + v107);
  *(v108 + 1) = *(v4 + v107 + 8);
  sub_21DBF8E0C();

  *(v108 + 2) = *(v109 + 2);
  sub_21DBF8E0C();

  *(a1 + v3[8]) = *(v4 + v3[8]);
  sub_21DBF8E0C();

  v110 = v3[9];
  v111 = *(v4 + v110);
  v112 = *(a1 + v110);
  *(a1 + v110) = v111;
  v113 = v111;

  v114 = v3[10];
  v115 = a1 + v114;
  v116 = v4 + v114;
  v117 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v118 = *(v117 - 8);
  v119 = *(v118 + 48);
  v120 = v119(v115, 1, v117);
  v121 = v119(v116, 1, v117);
  if (!v120)
  {
    if (v121)
    {
      sub_21D106BB8(v115, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
      goto LABEL_135;
    }

    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
    __src = *(v125 - 1);
    v126 = __src[6];
    v127 = v126(v115, 1, v125);
    v128 = v126(v116, 1, v125);
    if (v127)
    {
      if (!v128)
      {
        v129 = sub_21DBF563C();
        v303 = *(v129 - 8);
        v307 = v129;
        v301 = *(v303 + 16);
        (v301)(v115, v116);
        v130 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
        v115[v130[5]] = v116[v130[5]];
        v131 = v130[6];
        v132 = sub_21DBF509C();
        (*(*(v132 - 8) + 16))(&v115[v131], &v116[v131], v132);
        v115[v130[7]] = v116[v130[7]];
        v133 = v130[8];
        v134 = &v115[v133];
        v135 = &v116[v133];
        v136 = v135[16];
        *v134 = *v135;
        v134[16] = v136;
        v115[v130[9]] = v116[v130[9]];
        v115[v130[10]] = v116[v130[10]];
        v115[v130[11]] = v116[v130[11]];
        v137 = v130[12];
        v138 = &v115[v137];
        v139 = &v116[v137];
        *v138 = *v139;
        v138[1] = v139[1];
        v140 = v125[12];
        v141 = &v115[v140];
        v142 = &v116[v140];
        *v141 = *v142;
        v141[8] = v142[8];
        *(v141 + 2) = *(v142 + 2);
        *(v141 + 3) = *(v142 + 3);
        *(v141 + 4) = *(v142 + 4);
        *(v141 + 5) = *(v142 + 5);
        v143 = v125[16];
        v310 = v125;
        __dst = &v115[v143];
        v144 = &v116[v143];
        v145 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
        v146 = *(v145 - 8);
        v147 = *(v146 + 48);
        v148 = v145;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        if (v147(v144, 1, v148))
        {
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
          memcpy(__dst, v144, *(*(v149 - 8) + 64));
          v4 = a2;
          v3 = a3;
          v150 = v310;
        }

        else
        {
          v299 = v148;
          *__dst = *v144;
          __dst[1] = v144[1];
          v196 = *(v148 + 20);
          v197 = *(v303 + 48);
          sub_21DBF8E0C();
          if (v197(v144 + v196, 1, v307))
          {
            v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
            memcpy(__dst + v196, v144 + v196, *(*(v198 - 8) + 64));
          }

          else
          {
            v301(__dst + v196, v144 + v196, v307);
            (*(v303 + 56))(__dst + v196, 0, 1, v307);
          }

          v4 = a2;
          v150 = v310;
          (*(v146 + 56))(__dst, 0, 1, v299);
          v3 = a3;
        }

        v115[v150[20]] = v116[v150[20]];
        v115[v150[24]] = v116[v150[24]];
        (__src[7])(v115, 0, 1, v150);
        goto LABEL_157;
      }

      goto LABEL_145;
    }

    if (v128)
    {
      sub_21D0CF7E0(v115, &qword_27CE5C678);
LABEL_145:
      v124 = *(v118 + 64);
      goto LABEL_136;
    }

    v173 = sub_21DBF563C();
    v309 = *(v173 - 8);
    v312 = v173;
    v305 = *(v309 + 24);
    (v305)(v115, v116);
    v174 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v115[v174[5]] = v116[v174[5]];
    v175 = v174[6];
    v176 = sub_21DBF509C();
    (*(*(v176 - 8) + 24))(&v115[v175], &v116[v175], v176);
    v115[v174[7]] = v116[v174[7]];
    v177 = v174[8];
    v178 = &v115[v177];
    v179 = &v116[v177];
    v180 = v179[16];
    *v178 = *v179;
    v178[16] = v180;
    v115[v174[9]] = v116[v174[9]];
    v115[v174[10]] = v116[v174[10]];
    v115[v174[11]] = v116[v174[11]];
    v181 = v174[12];
    v182 = &v115[v181];
    v183 = &v116[v181];
    *v182 = *v183;
    v182[1] = v183[1];
    sub_21DBF8E0C();

    v184 = v125[12];
    v185 = &v115[v184];
    v186 = &v116[v184];
    *v185 = *&v116[v184];
    v185[8] = v116[v184 + 8];
    *(v185 + 2) = *&v116[v184 + 16];
    *(v185 + 3) = *&v116[v184 + 24];
    sub_21DBF8E0C();

    *(v185 + 4) = *(v186 + 4);
    *(v185 + 5) = *(v186 + 5);
    sub_21DBF8E0C();

    v187 = v125[16];
    v188 = &v115[v187];
    v189 = &v116[v187];
    v190 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v191 = *(v190 - 8);
    v192 = *(v191 + 48);
    __dstb = v188;
    LODWORD(v188) = v192(v188, 1, v190);
    __srcb = v189;
    v193 = v192(v189, 1, v190);
    if (v188)
    {
      if (!v193)
      {
        *__dstb = *v189;
        *(__dstb + 1) = *(v189 + 1);
        v289 = *(v190 + 20);
        v306 = *(v309 + 48);
        sub_21DBF8E0C();
        if (v306(&v189[v289], 1, v312))
        {
          v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy(&__dstb[v289], &v189[v289], *(*(v290 - 8) + 64));
        }

        else
        {
          (*(v309 + 16))(&__dstb[v289], &v189[v289], v312);
          (*(v309 + 56))(&__dstb[v289], 0, 1, v312);
        }

        v4 = a2;
        (*(v191 + 56))(__dstb, 0, 1, v190);
        goto LABEL_202;
      }

      v194 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v195 = __dstb;
    }

    else
    {
      if (!v193)
      {
        *__dstb = *v189;
        *(__dstb + 1) = *(v189 + 1);
        sub_21DBF8E0C();

        v291 = *(v190 + 20);
        v292 = *(v309 + 48);
        v293 = v292(&__dstb[v291], 1, v312);
        v294 = v292(&__srcb[v291], 1, v312);
        if (v293)
        {
          v4 = a2;
          v3 = a3;
          if (!v294)
          {
            (*(v309 + 16))(&__dstb[v291], &__srcb[v291], v312);
            (*(v309 + 56))(&__dstb[v291], 0, 1, v312);
            goto LABEL_203;
          }

          v295 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v296 = &__dstb[v291];
        }

        else
        {
          v4 = a2;
          v3 = a3;
          if (!v294)
          {
            v305(&__dstb[v291], &__srcb[v291], v312);
            goto LABEL_203;
          }

          (*(v309 + 8))(&__dstb[v291], v312);
          v295 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v296 = &__dstb[v291];
        }

        memcpy(v296, &__srcb[v291], v295);
LABEL_203:
        v115[v125[20]] = v116[v125[20]];
        v115[v125[24]] = v116[v125[24]];
        goto LABEL_157;
      }

      sub_21D106BB8(__dstb, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      v194 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v195 = __dstb;
    }

    memcpy(v195, v189, v194);
    v4 = a2;
LABEL_202:
    v3 = a3;
    goto LABEL_203;
  }

  if (v121)
  {
LABEL_135:
    v124 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998) - 8) + 64);
LABEL_136:
    memcpy(v115, v116, v124);
    goto LABEL_157;
  }

  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v123 = *(v122 - 8);
  if ((*(v123 + 48))(v116, 1, v122))
  {
    memcpy(v115, v116, *(v118 + 64));
  }

  else
  {
    v308 = v123;
    v151 = sub_21DBF563C();
    v300 = *(v151 - 8);
    v302 = v151;
    v297 = *(v300 + 16);
    (v297)(v115, v116);
    v152 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v115[v152[5]] = v116[v152[5]];
    v153 = v152[6];
    v154 = sub_21DBF509C();
    (*(*(v154 - 8) + 16))(&v115[v153], &v116[v153], v154);
    v115[v152[7]] = v116[v152[7]];
    v155 = v152[8];
    v156 = &v115[v155];
    v157 = &v116[v155];
    v158 = v157[16];
    *v156 = *v157;
    v156[16] = v158;
    v115[v152[9]] = v116[v152[9]];
    v115[v152[10]] = v116[v152[10]];
    v115[v152[11]] = v116[v152[11]];
    v159 = v152[12];
    v160 = &v115[v159];
    v161 = &v116[v159];
    *v160 = *v161;
    v160[1] = v161[1];
    v162 = *(v122 + 48);
    v163 = &v115[v162];
    v164 = &v116[v162];
    *v163 = *v164;
    v163[8] = v164[8];
    *(v163 + 2) = *(v164 + 2);
    *(v163 + 3) = *(v164 + 3);
    *(v163 + 4) = *(v164 + 4);
    *(v163 + 5) = *(v164 + 5);
    v165 = *(v122 + 64);
    __srca = &v115[v165];
    v311 = v122;
    __dsta = &v116[v165];
    v166 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v298 = *(v166 - 8);
    v167 = *(v298 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v167(__dsta, 1, v166))
    {
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__srca, __dsta, *(*(v168 - 8) + 64));
      v4 = a2;
      v3 = a3;
      v169 = v311;
    }

    else
    {
      *__srca = *__dsta;
      __srca[1] = __dsta[1];
      v304 = v166;
      v170 = *(v166 + 20);
      v171 = *(v300 + 48);
      sub_21DBF8E0C();
      if (v171(__dsta + v170, 1, v302))
      {
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(__srca + v170, __dsta + v170, *(*(v172 - 8) + 64));
      }

      else
      {
        v297(__srca + v170, __dsta + v170, v302);
        (*(v300 + 56))(__srca + v170, 0, 1, v302);
      }

      v4 = a2;
      v3 = a3;
      v169 = v311;
      (*(v298 + 56))(__srca, 0, 1, v304);
    }

    v115[*(v169 + 80)] = v116[*(v169 + 80)];
    v115[*(v169 + 96)] = v116[*(v169 + 96)];
    (*(v308 + 56))(v115, 0, 1, v169);
  }

  (*(v118 + 56))(v115, 0, 1, v117);
LABEL_157:
  *(a1 + v3[11]) = *(v4 + v3[11]);
  sub_21DBF8E0C();

  v199 = v3[12];
  v200 = a1 + v199;
  v201 = v4 + v199;
  v202 = *(a1 + v199 + 48);
  v203 = *(v4 + v199 + 48);
  if (v202 == 255)
  {
    if (v203 == 255)
    {
      v228 = *v201;
      v229 = *(v201 + 1);
      v230 = *(v201 + 2);
      *(v200 + 48) = v201[48];
      *(v200 + 16) = v229;
      *(v200 + 32) = v230;
      *v200 = v228;
    }

    else
    {
      v218 = *v201;
      v219 = *(v201 + 1);
      v220 = *(v201 + 2);
      v221 = *(v201 + 3);
      v222 = *(v201 + 4);
      v223 = *(v201 + 5);
      v224 = v203 & 1;
      sub_21D0FB960(*v201, v219, v220, v221, v222, v223, v203 & 1);
      *v200 = v218;
      *(v200 + 8) = v219;
      *(v200 + 16) = v220;
      *(v200 + 24) = v221;
      *(v200 + 32) = v222;
      *(v200 + 40) = v223;
      *(v200 + 48) = v224;
      v4 = a2;
      v3 = a3;
    }
  }

  else if (v203 == 255)
  {
    sub_21D2E979C(v200);
    v226 = *(v201 + 1);
    v225 = *(v201 + 2);
    v227 = *v201;
    *(v200 + 48) = v201[48];
    *(v200 + 16) = v226;
    *(v200 + 32) = v225;
    *v200 = v227;
  }

  else
  {
    v204 = *v201;
    v205 = *(v201 + 1);
    v206 = *(v201 + 2);
    v207 = *(v201 + 3);
    v208 = *(v201 + 4);
    v209 = *(v201 + 5);
    v210 = v203 & 1;
    sub_21D0FB960(*v201, v205, v206, v207, v208, v209, v203 & 1);
    v211 = *v200;
    v212 = *(v200 + 8);
    v213 = *(v200 + 16);
    v214 = *(v200 + 24);
    v215 = *(v200 + 32);
    v216 = *(v200 + 40);
    v217 = *(v200 + 48);
    *v200 = v204;
    *(v200 + 8) = v205;
    *(v200 + 16) = v206;
    *(v200 + 24) = v207;
    *(v200 + 32) = v208;
    *(v200 + 40) = v209;
    v4 = a2;
    v3 = a3;
    *(v200 + 48) = v210;
    sub_21D1078C0(v211, v212, v213, v214, v215, v216, v217);
  }

  v231 = v3[13];
  v232 = (a1 + v231);
  v233 = (v4 + v231);
  *v232 = *v233;
  v232[1] = v233[1];
  sub_21DBF8E0C();

  v234 = v3[14];
  v235 = a1 + v234;
  v236 = v4 + v234;
  v237 = *(a1 + v234 + 8);
  v238 = *(v4 + v234 + 8);
  if (v237 == 1)
  {
    if (v238 == 1)
    {
      v239 = *(v236 + 1);
      *v235 = *v236;
      *(v235 + 16) = v239;
      v240 = *(v236 + 2);
      v241 = *(v236 + 3);
      v242 = *(v236 + 4);
      *(v235 + 73) = *(v236 + 73);
      *(v235 + 48) = v241;
      *(v235 + 64) = v242;
      *(v235 + 32) = v240;
    }

    else
    {
      *v235 = *v236;
      *(v235 + 8) = *(v236 + 1);
      v247 = *(v236 + 2);
      v248 = *(v236 + 3);
      v249 = *(v236 + 4);
      v250 = *(v236 + 5);
      v251 = *(v236 + 6);
      v252 = *(v236 + 7);
      v253 = v236[64];
      sub_21DBF8E0C();
      sub_21D0FB960(v247, v248, v249, v250, v251, v252, v253);
      *(v235 + 16) = v247;
      *(v235 + 24) = v248;
      *(v235 + 32) = v249;
      *(v235 + 40) = v250;
      *(v235 + 48) = v251;
      *(v235 + 56) = v252;
      *(v235 + 64) = v253;
      v4 = a2;
      v3 = a3;
      v254 = *(v236 + 9);
      v255 = *(v236 + 10);
      LOBYTE(v249) = v236[88];
      sub_21D0FB9BC(v254, v255, v249);
      *(v235 + 72) = v254;
      *(v235 + 80) = v255;
      *(v235 + 88) = v249;
    }
  }

  else if (v238 == 1)
  {
    sub_21D5AF8C8(v235);
    v243 = *(v236 + 1);
    *v235 = *v236;
    *(v235 + 16) = v243;
    v245 = *(v236 + 3);
    v244 = *(v236 + 4);
    v246 = *(v236 + 2);
    *(v235 + 73) = *(v236 + 73);
    *(v235 + 48) = v245;
    *(v235 + 64) = v244;
    *(v235 + 32) = v246;
  }

  else
  {
    *v235 = *v236;
    *(v235 + 8) = *(v236 + 1);
    sub_21DBF8E0C();

    v256 = *(v236 + 2);
    v257 = *(v236 + 3);
    v258 = *(v236 + 4);
    v259 = *(v236 + 5);
    v260 = *(v236 + 6);
    v261 = *(v236 + 7);
    v262 = v236[64];
    sub_21D0FB960(v256, v257, v258, v259, v260, v261, v262);
    v263 = *(v235 + 16);
    v264 = *(v235 + 24);
    v265 = *(v235 + 32);
    v266 = *(v235 + 40);
    v267 = *(v235 + 48);
    v268 = *(v235 + 56);
    v269 = *(v235 + 64);
    *(v235 + 16) = v256;
    *(v235 + 24) = v257;
    *(v235 + 32) = v258;
    *(v235 + 40) = v259;
    *(v235 + 48) = v260;
    *(v235 + 56) = v261;
    *(v235 + 64) = v262;
    v4 = a2;
    v3 = a3;
    sub_21D1078C0(v263, v264, v265, v266, v267, v268, v269);
    v270 = *(v236 + 9);
    v271 = *(v236 + 10);
    LOBYTE(v258) = v236[88];
    sub_21D0FB9BC(v270, v271, v258);
    v272 = *(v235 + 72);
    v273 = *(v235 + 80);
    v274 = *(v235 + 88);
    *(v235 + 72) = v270;
    *(v235 + 80) = v271;
    *(v235 + 88) = v258;
    sub_21D0FB9F4(v272, v273, v274);
  }

  *(a1 + v3[15]) = *(v4 + v3[15]);
  *(a1 + v3[16]) = *(v4 + v3[16]);
  sub_21DBF8E0C();

  *(a1 + v3[17]) = *(v4 + v3[17]);
  *(a1 + v3[18]) = *(v4 + v3[18]);
  v275 = v3[19];
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v277 = *(v276 - 8);
  v278 = *(v277 + 48);
  v279 = v278(a1 + v275, 1, v276);
  v280 = v278(v4 + v275, 1, v276);
  if (v279)
  {
    if (!v280)
    {
      v281 = sub_21DBF54CC();
      v282 = *(v281 - 8);
      if ((*(v282 + 48))(v4 + v275, 1, v281))
      {
        v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(a1 + v275, v4 + v275, *(*(v283 - 8) + 64));
      }

      else
      {
        (*(v282 + 16))(a1 + v275, v4 + v275, v281);
        (*(v282 + 56))(a1 + v275, 0, 1, v281);
      }

      goto LABEL_183;
    }

    goto LABEL_177;
  }

  if (v280)
  {
    sub_21D0CF7E0(a1 + v275, &unk_27CE62230);
LABEL_177:
    v284 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
    goto LABEL_178;
  }

  v276 = sub_21DBF54CC();
  v277 = *(v276 - 8);
  v285 = *(v277 + 48);
  v286 = v285(a1 + v275, 1, v276);
  v287 = v285(v4 + v275, 1, v276);
  if (v286)
  {
    if (!v287)
    {
      (*(v277 + 16))(a1 + v275, v4 + v275, v276);
LABEL_183:
      (*(v277 + 56))(a1 + v275, 0, 1, v276);
      return a1;
    }
  }

  else
  {
    if (!v287)
    {
      (*(v277 + 24))(a1 + v275, v4 + v275, v276);
      return a1;
    }

    (*(v277 + 8))(a1 + v275, v276);
  }

  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
LABEL_178:
  memcpy(a1 + v275, v4 + v275, *(*(v284 - 8) + 64));
  return a1;
}