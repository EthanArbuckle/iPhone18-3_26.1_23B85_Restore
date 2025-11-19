uint64_t sub_21D22F098(id *a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 URL];
  sub_21DBF546C();

  v8 = sub_21DBF544C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

id sub_21D22F1A4@<X0>(void *a1@<X8>)
{
  result = [*v1 objectID];
  *a1 = result;
  return result;
}

uint64_t sub_21D22F234@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v59 = a3;
  v5 = v4;
  v61[3] = *MEMORY[0x277D85DE8];
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for TTRSharedWithYouHighlight();
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_customFetchShareForSharedList);
  if (v19)
  {

    v19(a1);
    result = sub_21D0D0E88(v19);
    if (!v4)
    {
      return sub_21D23018C(v18, v58, type metadata accessor for TTRSharedWithYouHighlight);
    }

    goto LABEL_9;
  }

  v56 = v14;
  v57 = v8;
  v55 = v16;
  v21 = *(a2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_highlightCenter + 8);
  ObjectType = swift_getObjectType();
  if (((*(v21 + 8))(ObjectType, v21) & 1) == 0)
  {
    sub_21D22FA74();
    v5 = swift_allocError();
    *v26 = 1;
    goto LABEL_8;
  }

  v23 = *(a2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_store);
  v24 = [a1 objectID];
  v61[0] = 0;
  v25 = [v23 fetchShareForListWithID:v24 error:v61];

  if (v61[0])
  {
    v5 = v61[0];

LABEL_8:
    result = swift_willThrow();
LABEL_9:
    *v59 = v5;
    return result;
  }

  if (!v25)
  {
LABEL_15:
    sub_21D22FA74();
    v5 = swift_allocError();
    *v37 = 0;
    goto LABEL_8;
  }

  v27 = [v25 URL];
  if (!v27)
  {

    goto LABEL_15;
  }

  v54 = v25;
  v28 = v27;
  sub_21DBF546C();

  v30 = (v9 + 32);
  v29 = *(v9 + 32);
  v31 = v56;
  v59 = v30;
  v53 = v29;
  v29(v56, v11, v57);
  v32 = [a1 accountID];
  v33 = OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_containerForAccountID;
  swift_beginAccess();
  v34 = sub_21D1AA27C(v32, *(a2 + v33));
  if (v34)
  {
    v35 = v34;
    swift_endAccess();
    v36 = v35;
  }

  else
  {
    swift_endAccess();
    v38 = objc_opt_self();
    v39 = [a1 account];
    v36 = [v38 newCloudContainerForAccount_];

    swift_beginAccess();
    v40 = *(a2 + v33);
    if ((v40 & 0xC000000000000001) != 0)
    {
      if (v40 >= 0)
      {
        v40 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v41 = v36;
      v42 = v32;
      v43 = sub_21DBFBD7C();
      if (__OFADD__(v43, 1))
      {
        __break(1u);
      }

      *(a2 + v33) = sub_21D98447C(v40, v43 + 1);
    }

    else
    {
      v44 = v36;
      v45 = v32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(a2 + v33);
    sub_21D4775F0(v36, v32, isUniquelyReferenced_nonNull_native);
    *(a2 + v33) = v60;

    swift_endAccess();
    v35 = 0;
  }

  v47 = objc_allocWithZone(MEMORY[0x277CCAA88]);
  v48 = v35;
  v49 = [v47 init];
  v50 = [objc_opt_self() rem_remindersAllowedSharingOptions];
  v51 = v54;
  sub_21DBFAF4C();

  v52 = v58;
  result = v53(v58, v31, v57);
  *(v52 + *(v55 + 20)) = v49;
  return result;
}

id TTRSharedWithYouProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRSharedWithYouProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21D22F908()
{
  v1 = [v0 delegate];

  return v1;
}

uint64_t sub_21D22F940(uint64_t a1)
{
  [v1 setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t (*sub_21D22F988(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 delegate];
  return sub_21D22F9E4;
}

uint64_t sub_21D22F9E4(uint64_t a1)
{
  [*(a1 + 8) setDelegate_];

  return swift_unknownObjectRelease();
}

unint64_t sub_21D22FA74()
{
  result = qword_27CE59E88;
  if (!qword_27CE59E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59E88);
  }

  return result;
}

void _s15RemindersUICore24TTRSharedWithYouProviderC34highlightCenterHighlightsDidChangeyySo011SWHighlightH0CF_0()
{
  if (qword_27CE56598 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE59E20);
  oslog = sub_21DBF84AC();
  v1 = sub_21DBFAEDC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v1, "SharedWithYou: Highlights did change", v2, 2u);
    MEMORY[0x223D46520](v2, -1, -1);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRSharedWithYouHighlight(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF54CC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = v9;
  }

  return a1;
}

void destroy for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t initializeWithCopy for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  return a1;
}

uint64_t initializeWithTake for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRSharedWithYouHighlight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF54CC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_21D22FF54()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21D2300E0()
{
  result = qword_27CE59F00;
  if (!qword_27CE59F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F00);
  }

  return result;
}

unint64_t sub_21D230138()
{
  result = qword_27CE59F08;
  if (!qword_27CE59F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F08);
  }

  return result;
}

uint64_t sub_21D23018C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D2301F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D230264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D2302AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRRemindersListImportedContent.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRRemindersListImportedContent.notes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes);
  sub_21DBF8E0C();
  return v1;
}

void *TTRRemindersListImportedContent.userActivity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity);
  v2 = v1;
  return v1;
}

void *TTRRemindersListImportedContent.copyPasteItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem);
  v2 = v1;
  return v1;
}

id TTRRemindersListImportedContent.__allocating_init(title:notes:url:userActivity:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = sub_21D232860(a1, a2);
  v19 = v18;

  v20 = &v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title];
  *v20 = v17;
  v20[1] = v19;
  v21 = sub_21D232860(a3, a4);
  v23 = v22;

  v24 = &v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes];
  *v24 = v21;
  v24[1] = v23;
  sub_21D0D3954(a5, &v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url], &qword_27CE5EA20);
  *&v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity] = a6;
  sub_21D0D3954(a7, &v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image], &qword_27CE59F60);
  *&v16[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem] = 0;
  v27.receiver = v16;
  v27.super_class = v8;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  sub_21D0CF7E0(a7, &qword_27CE59F60);
  sub_21D0CF7E0(a5, &qword_27CE5EA20);
  return v25;
}

id TTRRemindersListImportedContent.init(title:notes:url:userActivity:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v17 = sub_21D232860(a1, a2);
  v19 = v18;

  v20 = &v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title];
  *v20 = v17;
  v20[1] = v19;
  v21 = sub_21D232860(a3, a4);
  v23 = v22;

  v24 = &v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes];
  *v24 = v21;
  v24[1] = v23;
  sub_21D0D3954(a5, &v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url], &qword_27CE5EA20);
  *&v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity] = a6;
  sub_21D0D3954(a7, &v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image], &qword_27CE59F60);
  *&v8[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem] = 0;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  sub_21D0CF7E0(a7, &qword_27CE59F60);
  sub_21D0CF7E0(a5, &qword_27CE5EA20);
  return v25;
}

id TTRRemindersListImportedContent.__allocating_init(copyPasteItem:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url;
  v7 = sub_21DBF54CC();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity] = 0;
  v8 = OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image;
  v9 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  *&v3[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem] = a1;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id TTRRemindersListImportedContent.init(copyPasteItem:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url;
  v7 = sub_21DBF54CC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity] = 0;
  v8 = OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image;
  v9 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_copyPasteItem] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

void TTRRemindersListImportedContent.applyToReminder(with:isForNewReminder:)(uint64_t a1, int a2)
{
  v34 = a2;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v32 = type metadata accessor for TTRDirectlySavableImageData(0);
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_21DBF54CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url, v10, &qword_27CE5EA20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE5EA20);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    TTRReminderEditor.editAttachmentOrUserActivity(_:)(v14);
    (*(v12 + 8))(v14, v11);
  }

  sub_21D0D3954(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image, v5, &qword_27CE59F60);
  if ((*(v6 + 48))(v5, 1, v32) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE59F60);
    if ((v34 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v15 = v31;
    sub_21D232994(v5, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65F10);
    v16 = *(type metadata accessor for TTRUnsavedAttachment(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21DC08D00;
    sub_21D2329F8(v15, v18 + v17);
    swift_storeEnumTagMultiPayload();
    TTRReminderEditor.add(attachments:)(v18);
    swift_setDeallocating();
    sub_21D232A5C(v18 + v17, type metadata accessor for TTRUnsavedAttachment);
    swift_deallocClassInstance();
    sub_21D232A5C(v15, type metadata accessor for TTRDirectlySavableImageData);
    if ((v34 & 1) == 0)
    {
      return;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title + 8))
  {
    v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v20 = sub_21DBFA12C();
    v21 = [v19 initWithString_];

    v22 = sub_21D9CA3E0(v21, 0, 1);
    if (v22)
    {
      v23 = v22;
      swift_retain_n();
      sub_21D182E74(sub_21D233058, v23);
    }
  }

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes + 8))
  {
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v25 = sub_21DBFA12C();
    v26 = [v24 initWithString_];

    v27 = sub_21D9C7928(v26);
    if (v27)
    {
      v28 = v27;
      swift_retain_n();
      sub_21D182E74(sub_21D23298C, v28);
    }
  }

  v29 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity);
  if (v29)
  {
    v30 = v29;
    TTRReminderEditor.edit(userActivity:)(v29);
  }
}

uint64_t sub_21D230EEC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE59F30 = result;
  *algn_27CE59F38 = v1;
  return result;
}

uint64_t (*static TTRRemindersListImportedContent.defaultTitleForReminderWithLink.modify())()
{
  if (qword_27CE565A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21D231088()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE59F40 = result;
  *algn_27CE59F48 = v1;
  return result;
}

uint64_t sub_21D231174(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
  sub_21DBF8E0C();
  return v3;
}

uint64_t sub_21D23120C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = a1;
  *a5 = a2;
}

uint64_t (*static TTRRemindersListImportedContent.defaultTitleForReminderWithImage.modify())()
{
  if (qword_27CE565A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D231310@<X0>(void *a1@<X3>, void *a2@<X4>, uint64_t *a3@<X5>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = *a3;
  *a4 = *a2;
  a4[1] = v7;
  return sub_21DBF8E0C();
}

uint64_t sub_21D231388(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, void *a7)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = *a5;
  sub_21DBF8E0C();
  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v10;
  *a7 = v9;
}

uint64_t static TTRRemindersListImportedContent.undoActionNameForApplyToExistingReminder(_:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F60);
  MEMORY[0x28223BE20](v2 - 8);
  v20 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  if (a1 >> 62)
  {
LABEL_18:
    v8 = sub_21DBFBD7C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v21 = a1;
      v22 = a1 & 0xC000000000000001;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      v11 = v20;
      do
      {
        if (v22)
        {
          v13 = MEMORY[0x223D44740](v9, a1, v5);
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_17;
          }

          v13 = *(a1 + 8 * v9 + 32);
        }

        v14 = v13;
        a1 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        sub_21D0D3954(v13 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url, v7, &qword_27CE5EA20);
        v15 = sub_21DBF54CC();
        if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
        {
          sub_21D0CF7E0(v7, &qword_27CE5EA20);
          sub_21D0D3954(v14 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image, v11, &qword_27CE59F60);

          v16 = type metadata accessor for TTRDirectlySavableImageData(0);
          v17 = (*(*(v16 - 8) + 48))(v11, 1, v16);
          sub_21D0CF7E0(v11, &qword_27CE59F60);
          if (v17 == 1)
          {
            if (qword_280D1BAA8 != -1)
            {
              goto LABEL_21;
            }

            return sub_21DBF516C();
          }
        }

        else
        {

          sub_21D0CF7E0(v7, &qword_27CE5EA20);
        }

        ++v9;
        v12 = a1 == v8;
        a1 = v21;
      }

      while (!v12);
    }
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_21:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRRemindersListImportedContent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - v3;
  v5 = type metadata accessor for TTRDirectlySavableImageData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity);
  if (v9)
  {
    v30[0] = v8;
    strcpy(v31, "userActivity=");
    HIWORD(v31[1]) = -4864;
    v10 = v9;
    v11 = [v10 description];
    v12 = sub_21DBFA16C();
    v14 = v13;

    MEMORY[0x223D42AA0](v12, v14);

    v15 = v31[0];
    v16 = v31[1];
    v17 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_21D210A84((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v16;
    v8 = v30[0];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image, v4, &qword_27CE59F60);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE59F60);
  }

  else
  {
    sub_21D232994(v4, v8);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    MEMORY[0x223D42AA0](0x3D6567616D69, 0xE600000000000000);
    sub_21DBFC14C();
    v21 = v31[0];
    v22 = v31[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_21D210A84(0, *(v17 + 2) + 1, 1, v17);
    }

    v24 = *(v17 + 2);
    v23 = *(v17 + 3);
    if (v24 >= v23 >> 1)
    {
      v17 = sub_21D210A84((v23 > 1), v24 + 1, 1, v17);
    }

    sub_21D232A5C(v8, type metadata accessor for TTRDirectlySavableImageData);
    *(v17 + 2) = v24 + 1;
    v25 = &v17[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
  }

  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  v31[0] = 0xD000000000000021;
  v31[1] = 0x800000021DC46A70;
  v30[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v26 = sub_21DBFA07C();
  v28 = v27;

  MEMORY[0x223D42AA0](v26, v28);

  MEMORY[0x223D42AA0](62, 0xE100000000000000);
  return v31[0];
}

id sub_21D231C3C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21DBFA12C();

  return v5;
}

uint64_t TTRRemindersListImportedContent.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F60);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v54 - v3;
  v58 = type metadata accessor for TTRDirectlySavableImageData(0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title + 8))
  {
    v13 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_title);
    v60[0] = 0x3D656C746974;
    v60[1] = 0xE600000000000000;
    MEMORY[0x223D42AA0](v13, v10);
    v14 = v60[0];
    v15 = v60[1];
    v16 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_21D210A84((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v15;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes + 8))
  {
    v20 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_notes);
    v60[0] = 0x3D7365746F6ELL;
    v60[1] = 0xE600000000000000;
    MEMORY[0x223D42AA0](v20);
    v21 = v60[0];
    v22 = v60[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
    }

    v24 = *(v16 + 2);
    v23 = *(v16 + 3);
    if (v24 >= v23 >> 1)
    {
      v16 = sub_21D210A84((v23 > 1), v24 + 1, 1, v16);
    }

    *(v16 + 2) = v24 + 1;
    v25 = &v16[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
  }

  sub_21D0D3954(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_url, v7, &qword_27CE5EA20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE5EA20);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v60[0] = 1030517365;
    v60[1] = 0xE400000000000000;
    sub_21D232ABC();
    v26 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v26);

    v28 = v60[0];
    v27 = v60[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
    }

    v30 = *(v16 + 2);
    v29 = *(v16 + 3);
    if (v30 >= v29 >> 1)
    {
      v16 = sub_21D210A84((v29 > 1), v30 + 1, 1, v16);
    }

    (*(v9 + 8))(v12, v8);
    *(v16 + 2) = v30 + 1;
    v31 = &v16[16 * v30];
    *(v31 + 4) = v28;
    *(v31 + 5) = v27;
  }

  v32 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_userActivity);
  if (v32)
  {
    strcpy(v60, "userActivity=");
    HIWORD(v60[1]) = -4864;
    v33 = v32;
    v34 = [v33 description];
    v35 = sub_21DBFA16C();
    v37 = v36;

    MEMORY[0x223D42AA0](v35, v37);

    v38 = v60[0];
    v39 = v60[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
    }

    v41 = *(v16 + 2);
    v40 = *(v16 + 3);
    if (v41 >= v40 >> 1)
    {
      v16 = sub_21D210A84((v40 > 1), v41 + 1, 1, v16);
    }

    *(v16 + 2) = v41 + 1;
    v42 = &v16[16 * v41];
    *(v42 + 4) = v38;
    *(v42 + 5) = v39;
  }

  v43 = v57;
  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRRemindersListImportedContent_image, v57, &qword_27CE59F60);
  if ((*(v56 + 48))(v43, 1, v58) == 1)
  {
    sub_21D0CF7E0(v43, &qword_27CE59F60);
  }

  else
  {
    v44 = v55;
    sub_21D232994(v43, v55);
    v60[0] = 0;
    v60[1] = 0xE000000000000000;
    MEMORY[0x223D42AA0](0x3D6567616D69, 0xE600000000000000);
    sub_21DBFC14C();
    v45 = v60[0];
    v46 = v60[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D210A84(0, *(v16 + 2) + 1, 1, v16);
    }

    v48 = *(v16 + 2);
    v47 = *(v16 + 3);
    if (v48 >= v47 >> 1)
    {
      v16 = sub_21D210A84((v47 > 1), v48 + 1, 1, v16);
    }

    sub_21D232A5C(v44, type metadata accessor for TTRDirectlySavableImageData);
    *(v16 + 2) = v48 + 1;
    v49 = &v16[16 * v48];
    *(v49 + 4) = v45;
    *(v49 + 5) = v46;
  }

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  v60[0] = 0xD000000000000021;
  v60[1] = 0x800000021DC46A70;
  v59 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v50 = sub_21DBFA07C();
  v52 = v51;

  MEMORY[0x223D42AA0](v50, v52);

  MEMORY[0x223D42AA0](62, 0xE100000000000000);
  return v60[0];
}

id TTRRemindersListImportedContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRRemindersListImportedContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TTRRemindersListImportedContentFilter.init(forInsertingAsNewRemindersIn:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 account];
  v5 = [v4 capabilities];

  LODWORD(v4) = [v5 supportsAttachments];
  v6 = 14;
  if (v4)
  {
    v6 = 15;
  }

  *a2 = v6;
}

void TTRRemindersListImportedContentFilter.init(forAddingTo:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = [v5 attachmentContext];

  if (!v6)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    v7 = [v3 attachmentContext];
    if (!v7)
    {
      v8 = 0;
LABEL_11:
      v9 = v3;
      v10 = REMReminder.canAddURL.getter();

      if (v8)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if (v4)
  {
    goto LABEL_10;
  }

LABEL_14:
  v12 = v3;
  v10 = REMReminder.canAddURL.getter();

  if (v6)
  {
LABEL_15:
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_19;
  }

LABEL_12:
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

LABEL_19:
  *a2 = v11;
}

BOOL sub_21D23274C()
{
  v1 = [v0 attachmentContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 urlAttachments];
    sub_21D232B14();
    v4 = sub_21DBFA5EC();

    if (v4 >> 62)
    {
      v5 = sub_21DBFBD7C();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v5 == 0;
  }

  else
  {
    v7 = [v0 userActivity];
    if (v7 || (v7 = [v0 notesAsString]) != 0)
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_21D232860(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12[0] = a1;
    v12[1] = a2;
    sub_21DBF4C5C();
    sub_21D176F0C();
    a1 = sub_21DBFBB3C();
    v9 = v8;
    (*(v5 + 8))(v7, v4);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {

      return 0;
    }
  }

  return a1;
}

uint64_t sub_21D232994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D2329F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D232A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21D232ABC()
{
  result = qword_27CE59F18;
  if (!qword_27CE59F18)
  {
    sub_21DBF54CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F18);
  }

  return result;
}

unint64_t sub_21D232B14()
{
  result = qword_280D17820;
  if (!qword_280D17820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17820);
  }

  return result;
}

unint64_t sub_21D232B64()
{
  result = qword_27CE59F68;
  if (!qword_27CE59F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F68);
  }

  return result;
}

unint64_t sub_21D232BBC()
{
  result = qword_27CE59F70;
  if (!qword_27CE59F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F70);
  }

  return result;
}

unint64_t sub_21D232C14()
{
  result = qword_27CE59F78;
  if (!qword_27CE59F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F78);
  }

  return result;
}

unint64_t sub_21D232C6C()
{
  result = qword_27CE59F80;
  if (!qword_27CE59F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F80);
  }

  return result;
}

unint64_t sub_21D232CC4()
{
  result = qword_27CE59F88;
  if (!qword_27CE59F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F88);
  }

  return result;
}

unint64_t sub_21D232D1C()
{
  result = qword_27CE59F90;
  if (!qword_27CE59F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F90);
  }

  return result;
}

unint64_t sub_21D232D74()
{
  result = qword_27CE59F98;
  if (!qword_27CE59F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59F98);
  }

  return result;
}

unint64_t sub_21D232DCC()
{
  result = qword_27CE59FA0;
  if (!qword_27CE59FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59FA0);
  }

  return result;
}

uint64_t type metadata accessor for TTRRemindersListImportedContent()
{
  result = qword_27CE59FA8;
  if (!qword_27CE59FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D232E74()
{
  sub_21D232FC8(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21D232FC8(319, &qword_27CE59FB8, type metadata accessor for TTRDirectlySavableImageData);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D232FC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t TTRListDetailViewModelBadgeDisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D2330EC()
{
  result = qword_27CE59FC0;
  if (!qword_27CE59FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59FC0);
  }

  return result;
}

uint64_t static TTRLocalizableStrings.ListPicker.createOrSelectTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ListPicker.selectListInstructionsForNoSelection.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ListPicker.moveActionButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ListPicker.addActionButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.deleteListUndoAction.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.addListMenuListName(withAccountName:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.ReminderDetail.discardNewReminderAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.GroupDetail.deleteGroupActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.GroupDetail.showGroupInfoActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteListActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteCustomSmartListActionText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.manageSectionsActionText(listLayout:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.editSectionsActionText(listLayout:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.createSmartList.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.selectReminders.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteRemindersConfirmationMessage(withCount:isForGroceries:)(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteRemindersConfirmationText(withCount:isForGroceries:)(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_21DBFA13C();

  return v6;
}

uint64_t static TTRLocalizableStrings.RemindersList.selectedCountText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t static TTRLocalizableStrings.RemindersList.keyCommandTitleForAddingStructuredHashtag(hasExistingStructuredHashtags:)(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.addNotePlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Assignments.assigneeSelectionCellNoneTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.changeRepeat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.deleteGroup.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.addListWithNameFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.removeListWithNameFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.moveListWithNameFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.choosePerson.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.batchChangeDueDate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.batchChangeAssignment.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.UndoAction.batchChangeTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.anyTagText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.showMoreText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.showLessText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.showMoreCountText(withCount:)(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_21DC08D00;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_21DBFA13C();

  return v5;
}

id static TTRLocalizableStrings.ConvertToCustomSmartListAlert.detailsForFooter.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBF516C();
  v0 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v1 = sub_21DBFA12C();
  v2 = [v0 initWithString_];

  v3 = sub_21DBFA12C();

  v4 = sub_21DBFA12C();

  v5 = [v3 rangeOfString_];
  v7 = v6;

  if (v5 != sub_21DBF4B4C())
  {
    v8 = *MEMORY[0x277D740E8];
    v9 = sub_21DBFA12C();
    [v2 addAttribute:v8 value:v9 range:{v5, v7}];
  }

  return v2;
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.inlinePermissionRequestSettingsButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.settingsButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.notificationAccessMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.locationAccessTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.locationAccessMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.contactsAccessMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SpotlightView.commaSeparator.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SpotlightView.dashSeparator.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO0A4ListO31quickbarAssignReminderLabelText14isForGroceriesSSSb_tFZ_0(char a1)
{
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO08createInE12Instructions8listNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO013createInSmartE12Instructions05smartE4NameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO07includeE12Instructions8listNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO10ListPickerO07excludeE12Instructions8listNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO21assignmentPickerTitle9withCount14isForGroceriesSSSi_SbtFZ_0(uint64_t a1, char a2)
{
  if (a1 == 1)
  {
    if (a2)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (a2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO13SpotlightViewO9completed10dateStringS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO13SpotlightViewO3due10dateStringS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21D17A884();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();

  return v5;
}

uint64_t TTRWidgetRefresher.__allocating_init(widgetCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

void sub_21D2367DC()
{
  if (qword_280D0F2E0 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_280D0F2E8);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "TTRWidgetRefresher did receive store change notification", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  TTRWidgetCenter.reloadAllTimelines()();
}

uint64_t TTRWidgetRefresher.deinit()
{

  return v0;
}

uint64_t TTRWidgetRefresher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*TTRUnadjustedIndexPath.adjusted(forOriginalItemIndexPaths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>))(char *, void)
{
  v5 = sub_21DBF5D5C();
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    v11 = 0;
    v12 = *(v6 + 16);
    goto LABEL_12;
  }

  v11 = 0;
  v14 = *(v6 + 16);
  v13 = v6 + 16;
  v12 = v14;
  v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v16 = *(v13 + 56);
  v26 = a2;
  v27 = v16;
  v28 = v13;
  v29 = v2;
  v17 = (v13 - 8);
  v25[1] = v13 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  while (1)
  {
    v18 = v12;
    v12(v9, v15, v5, v7);
    v19 = sub_21DBF5D0C();
    if (v19 == sub_21DBF5D0C())
    {
      break;
    }

    (*v17)(v9, v5);
LABEL_4:
    v12 = v18;
    v15 += v27;
    if (!--v10)
    {
      goto LABEL_10;
    }
  }

  v20 = sub_21DBF5CFC();
  v21 = sub_21DBF5CFC();
  (*v17)(v9, v5);
  if (v20 >= v21)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v11++, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_10:
  a2 = v26;
  v2 = v29;
LABEL_12:
  (v12)(a2, v2, v5);
  result = sub_21DBF5CEC();
  if (__OFSUB__(*v24, v11))
  {
    __break(1u);
  }

  else
  {
    *v24 -= v11;
    return result(v30, 0);
  }

  return result;
}

uint64_t sub_21D236B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF5D5C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_21D236C30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF5D5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21D236C9C(uint64_t a1)
{
  v3 = sub_21DBF5D5C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TTRAdjustedIndexPath.unadjusted(forOriginalItemIndexPaths:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v26 = *(v6 + 16);
  v26(v23 - v11, v2, v5, v10);
  v27[0] = a1;
  sub_21DBF8E0C();
  sub_21D2370A8(v27);
  v13 = v27[0][2];
  if (v13)
  {
    v24 = v6;
    v25 = a2;
    v14 = *(v6 + 80);
    v23[1] = v27[0];
    v15 = v27[0] + ((v14 + 32) & ~v14);
    v16 = *(v6 + 72);
    v17 = (v6 + 8);
    while (1)
    {
      (v26)(v8, v15, v5);
      v18 = sub_21DBF5D0C();
      if (v18 == sub_21DBF5D0C())
      {
        v19 = sub_21DBF5CFC();
        if (v19 < sub_21DBF5CFC())
        {
          v20 = sub_21DBF5CEC();
          if (__OFADD__(*v21, 1))
          {
            __break(1u);

            __break(1u);
            return result;
          }

          ++*v21;
          v20(v27, 0);
        }
      }

      (*v17)(v8, v5);
      v15 += v16;
      if (!--v13)
      {

        v6 = v24;
        a2 = v25;
        return (*(v6 + 32))(a2, v12, v5);
      }
    }
  }

  return (*(v6 + 32))(a2, v12, v5);
}

uint64_t sub_21D236F88(uint64_t a1, uint64_t a2)
{
  sub_21DBF5D5C();
  sub_21D23894C(&qword_27CE59FD0);
  v5 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](a1, a2);
  return v5;
}

uint64_t sub_21D237024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21DBF5D5C();
  sub_21D23894C(&qword_27CE59FD0);
  v7 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](a3, a4);
  return v7;
}

void sub_21D2370A8(void **a1)
{
  v2 = *(sub_21DBF5D5C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21D82E42C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21D2375A8(v5);
  *a1 = v3;
}

uint64_t sub_21D237198(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_21D237204(uint64_t a1)
{
  v2 = sub_21DBF5D5C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_21D237268(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D2372CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D237330(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D237394(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D23751C()
{
  result = sub_21DBF5D5C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_21D2375A8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21DBFC59C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21DBF5D5C();
        v6 = sub_21DBFA69C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21DBF5D5C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21D237984(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21D2376D4(0, v2, 1, a1);
  }
}

void sub_21D2376D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21DBF5D5C();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_21D23894C(&qword_280D17158);
      v26 = sub_21DBFA08C();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D237984(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_21D82E300(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_21D238384(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21D82E300(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_21D82E274(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_21D23894C(&qword_280D17158);
      LODWORD(v133) = sub_21DBFA08C();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_21DBFA08C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_21D210B90(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_21D210B90((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_21D238384(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21D82E300(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_21D82E274(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_21D23894C(&qword_280D17158);
    v109 = sub_21DBFA08C();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_21D238384(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = sub_21DBF5D5C();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v53 = a3;
  v15 = (a2 - a1) / v13;
  v57 = a1;
  v56 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v46 = (v8 + 8);
      v47 = (v8 + 16);
      v28 = a4 + v17;
      v29 = v53;
      v44 = a1;
      v45 = a4;
      v48 = v27;
      do
      {
        v42 = v26;
        v30 = a2 + v27;
        v31 = v26;
        v49 = a2;
        v50 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v57 = a2;
            v26 = v42;
            goto LABEL_59;
          }

          v33 = v29;
          v43 = v31;
          v53 = v29 + v27;
          v34 = v28 + v27;
          v35 = *v47;
          v36 = v51;
          v37 = v28 + v27;
          v38 = v28;
          v39 = v54;
          (*v47)(v51, v37, v54);
          v40 = v52;
          (v35)(v52, v30, v39);
          sub_21D23894C(&qword_280D17158);
          LOBYTE(v35) = sub_21DBFA08C();
          v41 = *v46;
          (*v46)(v40, v39);
          v41(v36, v39);
          if (v35)
          {
            break;
          }

          v31 = v34;
          v29 = v53;
          if (v33 < v38 || v53 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v50;
            a1 = v44;
          }

          else
          {
            v30 = v50;
            a1 = v44;
            if (v33 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v45;
          v27 = v48;
          a2 = v49;
          if (!v32)
          {
            v26 = v31;
            goto LABEL_58;
          }
        }

        v29 = v53;
        if (v33 < v49 || v53 >= v49)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v44;
          v28 = v38;
        }

        else
        {
          a2 = v50;
          a1 = v44;
          v28 = v38;
          if (v33 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v43;
        v27 = v48;
      }

      while (v28 > v45);
    }

LABEL_58:
    v57 = a2;
LABEL_59:
    v55 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v16;
    v55 = a4 + v16;
    if (v16 >= 1 && a2 < v53)
    {
      v48 = *(v8 + 16);
      v49 = v8 + 16;
      v46 = v13;
      v47 = (v8 + 8);
      do
      {
        v19 = v51;
        v20 = v54;
        v21 = v48;
        v48(v51, a2, v54);
        v22 = v52;
        v21(v52, a4, v20);
        sub_21D23894C(&qword_280D17158);
        LOBYTE(v21) = sub_21DBFA08C();
        v23 = *v47;
        (*v47)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v46;
          if (a1 < a2 || a1 >= v46 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v46;
          v25 = v46 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v25;
          a4 += v24;
        }

        a1 += v24;
        v57 = a1;
      }

      while (a4 < v50 && a2 < v53);
    }
  }

  sub_21D65F5E0(&v57, &v56, &v55);
}

uint64_t sub_21D23894C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DBF5D5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D2389C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE59FF8);
  v1 = __swift_project_value_buffer(v0, qword_27CE59FF8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall LSApplicationWorkspace.showDefaultListInSettings()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_21DBFBEEC();

  v21 = 0xD00000000000001ALL;
  v22 = 0x800000021DC488B0;
  v9 = sub_21DBFA16C();
  MEMORY[0x223D42AA0](v9);

  sub_21DBF54BC();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D238E40(v4);
    if (qword_27CE565B8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE59FF8);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Can't create URL for navigating to Settings", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = sub_21DBF53FC();
    sub_21D17716C(MEMORY[0x277D84F90]);
    v15 = sub_21DBF9E5C();

    v16 = [v1 openSensitiveURL:v14 withOptions:v15];

    if ((v16 & 1) == 0)
    {
      if (qword_27CE565B8 != -1)
      {
        swift_once();
      }

      v17 = sub_21DBF84BC();
      __swift_project_value_buffer(v17, qword_27CE59FF8);
      v18 = sub_21DBF84AC();
      v19 = sub_21DBFAEBC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_21D0C9000, v18, v19, "Failed to open Settings", v20, 2u);
        MEMORY[0x223D46520](v20, -1, -1);
      }
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21D238E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.value.setter(uint64_t a1)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.__allocating_init(authorizationStatusPublisher:initialValue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRGeoLocationAuthorizationStatusObserver.init(authorizationStatusPublisher:initialValue:)(a1, a2);
  return v4;
}

char *TTRGeoLocationAuthorizationStatusObserver.init(authorizationStatusPublisher:initialValue:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *(v5 + 96);
  v13 = *(v6 - 8);
  v14 = *(v13 + 56);
  v14(&v2[v12], 1, 1, v6, v9);
  *&v2[*(*v2 + 104)] = 0;
  v15 = &v2[*(*v2 + 120)];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v2[*(*v2 + 128)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v2[*(*v2 + 112)] = a1;
  (*(v13 + 32))(v11, a2, v6);
  (v14)(v11, 0, 1, v6);
  v17 = *(*v2 + 96);
  swift_beginAccess();
  (*(v8 + 40))(&v2[v17], v11, v7);
  swift_endAccess();
  return v2;
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.setUp(transform:valueDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v31 = a2;
  v28 = a1;
  v6 = *v4;
  v37 = v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A010);
  v7 = v6[10];
  v29 = sub_21D2396F8();
  v8 = sub_21DBF8F7C();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_21DBF8F5C();
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = swift_allocObject();
  v26 = v15;
  *(v15 + 16) = 1;
  v16 = (v15 + 16);
  v38 = *(v5 + v6[14]);
  v17 = swift_allocObject();
  v17[2] = v7;
  v18 = v28;
  v17[3] = v6[11];
  v17[4] = v18;
  v17[5] = v31;

  sub_21DBF927C();

  sub_21DBF93AC();
  (*(v32 + 8))(v10, v8);
  v19 = swift_allocObject();
  v20 = v35;
  v21 = v36;
  v19[2] = v26;
  v19[3] = v20;
  v19[4] = v21;

  v22 = v33;
  swift_getWitnessTable();
  v23 = sub_21DBF91AC();

  (*(v34 + 8))(v14, v22);
  *(v5 + *(*v5 + 104)) = v23;

  swift_beginAccess();
  *v16 = 0;
}

unint64_t sub_21D2396F8()
{
  result = qword_280D0C4B0;
  if (!qword_280D0C4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C4B0);
  }

  return result;
}

uint64_t sub_21D23975C(char *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_21D239798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v21 = a5;
  v22 = a4;
  v23 = a2;
  v7 = *(*a1 + 80);
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = sub_21DBF9D8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0CE468();
  *v15 = sub_21DBFB12C();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v16 = sub_21DBF9DAC();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v18 = *(v7 - 8);
    v19 = v23;
    (*(v18 + 16))(v11, v23, v7);
    (*(v18 + 56))(v11, 0, 1, v7);
    v20 = *(*a1 + 96);
    swift_beginAccess();
    (*(v9 + 40))(a1 + v20, v11, v8);
    swift_endAccess();
    result = swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      return v22(v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.deinit()
{
  v1 = *(*v0 + 96);
  v2 = sub_21DBFBA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D0D0E88(*(v0 + *(*v0 + 120)));
  sub_21D0D0E88(*(v0 + *(*v0 + 128)));
  return v0;
}

uint64_t TTRGeoLocationAuthorizationStatusObserver.__deallocating_deinit()
{
  TTRGeoLocationAuthorizationStatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D239BB4()
{
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TTRIShowRemindersDeferredItemUpdates.isEmpty.getter()
{
  if ((*v0 & 1) == 0)
  {
    sub_21D239D18((v0 + 8), &v3);
    if (v7 == 3 && !v6)
    {
      v1 = vorrq_s8(v4, v5);
      if (!(*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v3))
      {
        sub_21D239E34(&v3);
        return 1;
      }
    }

    sub_21D239E34(&v3);
  }

  return 0;
}

uint64_t sub_21D239E34(uint64_t result)
{
  if (*(result + 41) < 3u || (*result + 3) <= 2)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_0(result);
    return v1;
  }

  return result;
}

__n128 TTRIShowRemindersDeferredItemUpdates.init(needsRefreshCellSizes:pendingScrollAction:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 26);
  *(a3 + 34) = result;
  return result;
}

uint64_t destroy for TTRIShowRemindersDeferredItemUpdates(uint64_t result)
{
  if (*(result + 49) <= 2u)
  {
    return __swift_destroy_boxed_opaque_existential_0(result + 8);
  }

  return result;
}

uint64_t initializeWithCopy for TTRIShowRemindersDeferredItemUpdates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  v4 = *(a2 + 49);
  if (v4 == 2)
  {
    v8 = *(a2 + 32);
    *(a1 + 32) = v8;
    (**(v8 - 8))(v3, a2 + 8);
    *(a1 + 49) = 2;
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 32);
    *(a1 + 32) = v6;
    (**(v6 - 8))(v3, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 49) = 1;
  }

  else if (*(a2 + 49))
  {
    v9 = *(a2 + 24);
    *v3 = *(a2 + 8);
    v3[1] = v9;
    *(v3 + 26) = *(a2 + 34);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(v3, a2 + 8);
    *(a1 + 49) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIShowRemindersDeferredItemUpdates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  if (a1 != a2)
  {
    sub_21D239E34(a1 + 8);
    v5 = *(a2 + 49);
    if (v5 == 2)
    {
      v8 = *(a2 + 32);
      *(a1 + 32) = v8;
      *(a1 + 40) = *(a2 + 40);
      (**(v8 - 8))(v3, a2 + 8);
      *(a1 + 49) = 2;
    }

    else if (v5 == 1)
    {
      v7 = *(a2 + 32);
      *(a1 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      (**(v7 - 8))(v3, a2 + 8);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 49) = 1;
    }

    else if (*(a2 + 49))
    {
      v9 = *(a2 + 8);
      v10 = *(a2 + 24);
      *(v3 + 26) = *(a2 + 34);
      *v3 = v9;
      v3[1] = v10;
    }

    else
    {
      v6 = *(a2 + 32);
      *(a1 + 32) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(v3, a2 + 8);
      *(a1 + 49) = 0;
    }
  }

  return a1;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

__n128 assignWithTake for TTRIShowRemindersDeferredItemUpdates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_21D239E34(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    result = *(a2 + 34);
    *(a1 + 34) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersDeferredItemUpdates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[50])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersDeferredItemUpdates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1)
{
  v1 = *(a1 + 41);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1 <= 2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 41);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1);
    *(a1 + 41) = 2;
  }

  else if (v3 == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 41) = 1;
  }

  else if (v3)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 26) = *(a2 + 26);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 41) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = *(a1 + 41);
    if (v3 >= 3)
    {
      v3 = *a1 + 3;
    }

    if (v3 <= 2)
    {
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_0(a1);
      a2 = v4;
    }

    v5 = *(a2 + 41);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v9 = *(a2 + 3);
      *(a1 + 24) = v9;
      *(a1 + 32) = *(a2 + 4);
      (**(v9 - 8))(a1);
      *(a1 + 41) = 2;
    }

    else if (v5 == 1)
    {
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 4);
      v8 = a2;
      (**(v7 - 8))(a1);
      *(a1 + 40) = *(v8 + 40);
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v10 = *a2;
      v11 = a2[1];
      *(a1 + 26) = *(a2 + 26);
      *a1 = v10;
      *(a1 + 16) = v11;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1);
      *(a1 + 41) = 0;
    }
  }

  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 41);
    if (v2 >= 3)
    {
      v2 = *a1 + 3;
    }

    if (v2 <= 2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_0(a1);
      a2 = v4;
      a1 = v3;
    }

    v5 = *(a2 + 41);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      result = *a2;
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 41) = 2;
    }

    else if (v5 == 1)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      result = *(a2 + 25);
      *(a1 + 25) = result;
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      result = *(a2 + 26);
      *(a1 + 26) = result;
    }

    else
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 41) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 42))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 41);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D23A6B4(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_21D23A6D0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_21D23A708(void *a1)
{
  v2 = type metadata accessor for TTRICustomRecurrenceEditorModuleState();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRecurrenceRuleModel.init(sourceRule:)(a1, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_21D23ABF4(v8, v4, type metadata accessor for TTRRecurrenceRuleModel);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_21D23A8F0(v4, v10);
    swift_unknownObjectRelease();
    sub_21D23BB08(v4, type metadata accessor for TTRICustomRecurrenceEditorModuleState);
  }

  return sub_21D23BB08(v8, type metadata accessor for TTRRecurrenceRuleModel);
}

uint64_t type metadata accessor for TTRICustomRecurrenceEditorModuleState()
{
  result = qword_27CE5A020;
  if (!qword_27CE5A020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D23A8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICustomRecurrenceEditorModuleState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v7 = objc_opt_self();
  v8 = sub_21DBFA12C();

  sub_21D23ABF4(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRICustomRecurrenceEditorModuleState);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_21D23AC5C(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21D23ACC0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_6;
  v12 = _Block_copy(aBlock);

  [v7 withActionName:v8 block:v12];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D23ABF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D23AC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICustomRecurrenceEditorModuleState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D23ACC0()
{
  v1 = *(type metadata accessor for TTRICustomRecurrenceEditorModuleState() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D4592CC(v0 + v2, v3);
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRICustomRecurrenceEditorViewModel(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v8 = *(v7 - 1);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = type metadata accessor for TTRRecurrenceEndModel(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v14 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v13 + 64));
      }

      else
      {
        v15 = sub_21DBF563C();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        swift_storeEnumTagMultiPayload();
      }

      (*(v13 + 56))(a1, 0, 1, v12);
    }

    *(a1 + v7[5]) = *(a2 + v7[5]);
    *(a1 + v7[6]) = *(a2 + v7[6]);
    *(a1 + v7[7]) = *(a2 + v7[7]);
    *(a1 + v7[8]) = *(a2 + v7[8]);
    *(a1 + v7[9]) = *(a2 + v7[9]);
    *(a1 + v7[10]) = *(a2 + v7[10]);
    *(a1 + v7[11]) = *(a2 + v7[11]);
    *(a1 + v7[12]) = *(a2 + v7[12]);
    *(a1 + v7[13]) = *(a2 + v7[13]);
    v16 = *(v8 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v16(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TTRICustomRecurrenceEditorViewModel(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = type metadata accessor for TTRRecurrenceEndModel(0);
    if (!(*(*(v4 - 8) + 48))(a1, 1, v4) && !swift_getEnumCaseMultiPayload())
    {
      v5 = sub_21DBF563C();
      (*(*(v5 - 8) + 8))(a1, v5);
    }
  }

  return result;
}

char *initializeWithCopy for TTRICustomRecurrenceEditorViewModel(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRRecurrenceEndModel(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v9 + 64));
      }

      else
      {
        v11 = sub_21DBF563C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        swift_storeEnumTagMultiPayload();
      }

      (*(v9 + 56))(a1, 0, 1, v8);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    v12 = *(v5 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v12(a1, 0, 1, v4);
    return a1;
  }
}

char *sub_21D23B4F0(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_7;
    }

    v14 = type metadata accessor for TTRRecurrenceEndModel(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(a1, 1, v14);
    v18 = v16(a2, 1, v14);
    if (v17)
    {
      if (!v18)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(v15 + 64));
        }

        else
        {
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
        }

        (*(v15 + 56))(a1, 0, 1, v14);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v18)
      {
        if (a1 == a2)
        {
          goto LABEL_28;
        }

        sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceEndModel);
        if (!swift_getEnumCaseMultiPayload())
        {
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v19 = *(v15 + 64);
LABEL_19:
        memcpy(a1, a2, v19);
LABEL_28:
        *&a1[v4[5]] = *&a2[v4[5]];
        *&a1[v4[6]] = *&a2[v4[6]];
        *&a1[v4[7]] = *&a2[v4[7]];
        *&a1[v4[8]] = *&a2[v4[8]];
        sub_21DBF8E0C();

        *&a1[v4[9]] = *&a2[v4[9]];
        sub_21DBF8E0C();

        *&a1[v4[10]] = *&a2[v4[10]];
        sub_21DBF8E0C();

        *&a1[v4[11]] = *&a2[v4[11]];
        sub_21DBF8E0C();

        *&a1[v4[12]] = *&a2[v4[12]];
        sub_21DBF8E0C();

        *&a1[v4[13]] = *&a2[v4[13]];
        sub_21DBF8E0C();

        return a1;
      }

      sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceEndModel);
    }

    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8) + 64);
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRecurrenceEndModel(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v10 + 64));
      }

      else
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    v21 = *(v5 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v21(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_21D23BB08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for TTRICustomRecurrenceEditorViewModel(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRRecurrenceEndModel(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v9 + 64));
      }

      else
      {
        v11 = sub_21DBF563C();
        (*(*(v11 - 8) + 32))(a1, a2, v11);
        swift_storeEnumTagMultiPayload();
      }

      (*(v9 + 56))(a1, 0, 1, v8);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

char *sub_21D23BE28(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_7;
    }

    v14 = type metadata accessor for TTRRecurrenceEndModel(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(a1, 1, v14);
    v18 = v16(a2, 1, v14);
    if (v17)
    {
      if (!v18)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(v15 + 64));
        }

        else
        {
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 32))(a1, a2, v21);
          swift_storeEnumTagMultiPayload();
        }

        (*(v15 + 56))(a1, 0, 1, v14);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v18)
      {
        if (a1 == a2)
        {
          goto LABEL_28;
        }

        sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceEndModel);
        if (!swift_getEnumCaseMultiPayload())
        {
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 32))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v19 = *(v15 + 64);
LABEL_19:
        memcpy(a1, a2, v19);
LABEL_28:
        *&a1[v4[5]] = *&a2[v4[5]];
        *&a1[v4[6]] = *&a2[v4[6]];
        *&a1[v4[7]] = *&a2[v4[7]];
        *&a1[v4[8]] = *&a2[v4[8]];

        *&a1[v4[9]] = *&a2[v4[9]];

        *&a1[v4[10]] = *&a2[v4[10]];

        *&a1[v4[11]] = *&a2[v4[11]];

        *&a1[v4[12]] = *&a2[v4[12]];

        *&a1[v4[13]] = *&a2[v4[13]];

        return a1;
      }

      sub_21D23BB08(a1, type metadata accessor for TTRRecurrenceEndModel);
    }

    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8) + 64);
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRecurrenceEndModel(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v10 + 64));
      }

      else
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8) + 64);

  return memcpy(a1, a2, v12);
}

void sub_21D23C400()
{
  sub_21D23C48C();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D23C48C()
{
  if (!qword_27CE5A030)
  {
    type metadata accessor for TTRRecurrenceRuleModel(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE5A030);
    }
  }
}

uint64_t TTRReminderDetailPendingMoveSingleItemProvider.reminderChangeItems.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC09CF0;
  *(v2 + 32) = v1;
  v3 = v1;
  return v2;
}

uint64_t sub_21D23C56C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC09CF0;
  *(v2 + 32) = v1;
  v3 = v1;
  return v2;
}

uint64_t sub_21D23C5C8(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_21D23C848;
  a2[1] = v5;
  return result;
}

uint64_t TTRReminderDetailPendingMoveDynamicItemProvider.provider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRReminderDetailPendingMoveDynamicItemProvider.provider.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRReminderDetailPendingMoveDynamicItemProvider.init(provider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *assignWithCopy for TTRReminderDetailPendingMoveDynamicItemProvider(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *assignWithTake for TTRReminderDetailPendingMoveDynamicItemProvider(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRDataViewMonitorEnvironmentInfo.ApplicationActivationNotificationNames(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D23C880@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_21D23C8F0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A038);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A038);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NSDiffableDataSourceSnapshot.itemIdentifier(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20[0] = a2;
  v3 = *(a1 + 16);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5D0C();
  NSDiffableDataSourceSnapshot.sectionIdentifier(at:)(a1, v7);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return (*(*(*(a1 + 24) - 8) + 56))(v20[0], 1, 1);
  }

  else
  {
    v13 = v20[0];
    (*(v8 + 32))(v11, v7, v3);
    v14 = sub_21DBF8AAC();
    v15 = sub_21DBF5CFC();
    v23 = v14;
    v16 = *(a1 + 24);
    sub_21DBFA74C();
    swift_getWitnessTable();
    sub_21DBFAC2C();
    v21 = v22;
    v20[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050);
    if (sub_21DBFAD8C())
    {
      sub_21DBFA78C();

      (*(v8 + 8))(v11, v3);
      v17 = *(*(v16 - 8) + 56);
      v18 = v13;
      v19 = 0;
    }

    else
    {
      (*(v8 + 8))(v11, v3);

      v17 = *(*(v16 - 8) + 56);
      v18 = v13;
      v19 = 1;
    }

    return v17(v18, v19, 1);
  }
}

uint64_t NSDiffableDataSourceSnapshot.sectionIdentifier(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_21DBF8AEC();
  v4 = *(a1 + 16);
  sub_21DBFA74C();
  swift_getWitnessTable();
  sub_21DBFAC2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050);
  if (sub_21DBFAD8C())
  {
    sub_21DBFA78C();

    return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  }

  else
  {
    (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }
}

uint64_t sub_21D23CE60(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  }

  else
  {

    return sub_21DBFC5CC();
  }
}

uint64_t TTRIRecurrenceRuleWeekday.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D23CF6C()
{
  result = qword_27CE5A058;
  if (!qword_27CE5A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A058);
  }

  return result;
}

unint64_t sub_21D23CFC4()
{
  result = qword_27CE5A060;
  if (!qword_27CE5A060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A060);
  }

  return result;
}

char *assignWithCopy for TTRICustomRecurrenceEditorViewModel(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_7;
    }

    v14 = type metadata accessor for TTRRecurrenceEndModel(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(a1, 1, v14);
    v18 = v16(a2, 1, v14);
    if (v17)
    {
      if (!v18)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(v15 + 64));
        }

        else
        {
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
        }

        (*(v15 + 56))(a1, 0, 1, v14);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v18)
      {
        if (a1 == a2)
        {
          goto LABEL_28;
        }

        sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
        if (!swift_getEnumCaseMultiPayload())
        {
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v19 = *(v15 + 64);
LABEL_19:
        memcpy(a1, a2, v19);
LABEL_28:
        *&a1[v4[5]] = *&a2[v4[5]];
        *&a1[v4[6]] = *&a2[v4[6]];
        *&a1[v4[7]] = *&a2[v4[7]];
        *&a1[v4[8]] = *&a2[v4[8]];
        sub_21DBF8E0C();

        *&a1[v4[9]] = *&a2[v4[9]];
        sub_21DBF8E0C();

        *&a1[v4[10]] = *&a2[v4[10]];
        sub_21DBF8E0C();

        *&a1[v4[11]] = *&a2[v4[11]];
        sub_21DBF8E0C();

        *&a1[v4[12]] = *&a2[v4[12]];
        sub_21DBF8E0C();

        *&a1[v4[13]] = *&a2[v4[13]];
        sub_21DBF8E0C();

        return a1;
      }

      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
    }

    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8) + 64);
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRecurrenceEndModel(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v10 + 64));
      }

      else
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    v21 = *(v5 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v21(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_21D23D650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *assignWithTake for TTRICustomRecurrenceEditorViewModel(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceRuleModel);
      goto LABEL_7;
    }

    v14 = type metadata accessor for TTRRecurrenceEndModel(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(a1, 1, v14);
    v18 = v16(a2, 1, v14);
    if (v17)
    {
      if (!v18)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(v15 + 64));
        }

        else
        {
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 32))(a1, a2, v21);
          swift_storeEnumTagMultiPayload();
        }

        (*(v15 + 56))(a1, 0, 1, v14);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v18)
      {
        if (a1 == a2)
        {
          goto LABEL_28;
        }

        sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
        if (!swift_getEnumCaseMultiPayload())
        {
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 32))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v19 = *(v15 + 64);
LABEL_19:
        memcpy(a1, a2, v19);
LABEL_28:
        *&a1[v4[5]] = *&a2[v4[5]];
        *&a1[v4[6]] = *&a2[v4[6]];
        *&a1[v4[7]] = *&a2[v4[7]];
        *&a1[v4[8]] = *&a2[v4[8]];

        *&a1[v4[9]] = *&a2[v4[9]];

        *&a1[v4[10]] = *&a2[v4[10]];

        *&a1[v4[11]] = *&a2[v4[11]];

        *&a1[v4[12]] = *&a2[v4[12]];

        *&a1[v4[13]] = *&a2[v4[13]];

        return a1;
      }

      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
    }

    v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8) + 64);
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRecurrenceEndModel(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v10 + 64));
      }

      else
      {
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
      }

      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *&a1[v4[5]] = *&a2[v4[5]];
    *&a1[v4[6]] = *&a2[v4[6]];
    *&a1[v4[7]] = *&a2[v4[7]];
    *&a1[v4[8]] = *&a2[v4[8]];
    *&a1[v4[9]] = *&a2[v4[9]];
    *&a1[v4[10]] = *&a2[v4[10]];
    *&a1[v4[11]] = *&a2[v4[11]];
    *&a1[v4[12]] = *&a2[v4[12]];
    *&a1[v4[13]] = *&a2[v4[13]];
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8) + 64);

  return memcpy(a1, a2, v12);
}

void sub_21D23DCA8()
{
  sub_21D23E16C(319, &qword_27CE5A030, type metadata accessor for TTRRecurrenceRuleModel);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t getEnumTagSinglePayload for TTRListType.PredefinedSmartListType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRListType.PredefinedSmartListType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21D23DEA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v5) = (*(v5 + 8))(ObjectType, v5);
    result = swift_unknownObjectRelease();
    if (v5)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = *(v0 + 24);
        v8 = swift_getObjectType();
        v9 = OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_viewModel;
        swift_beginAccess();
        sub_21D23E1C0(v0 + v9, v3);
        (*(v7 + 16))(v3, v8, v7);
        swift_unknownObjectRelease();
        return sub_21D23E230(v3);
      }
    }
  }

  return result;
}

uint64_t sub_21D23DFD8()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D23E230(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_viewModel);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_router);

  return swift_deallocClassInstance();
}

void sub_21D23E094()
{
  sub_21D23E16C(319, &qword_27CE5A0A8, type metadata accessor for TTRICustomRecurrenceEditorViewModel);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D23E16C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21D23E1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D23E230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D23E2BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__itemID;
  swift_beginAccess();
  sub_21D0D3954(v1 + v6, v5, &qword_27CE5FB90);
  v7 = sub_21D241C54(v5, a1);
  sub_21D0CF7E0(v5, &qword_27CE5FB90);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  else
  {
    swift_beginAccess();
    sub_21D0EB8DC(a1, v1 + v6, &qword_27CE5FB90);
    swift_endAccess();
  }

  return sub_21D0CF7E0(a1, &qword_27CE5FB90);
}

uint64_t sub_21D23E488@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a1 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);
  return result;
}

uint64_t sub_21D23E508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);
  return result;
}

unsigned __int8 *sub_21D23E5C0(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);
  if (v3 == 3)
  {
    if (v2 != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21D23FFBC();
      sub_21DBF5D8C();
    }
  }

  else if (v3 != v2)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel) = v2;
  return result;
}

uint64_t sub_21D23E6B8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  a1[1] = v4;
  return result;
}

uint64_t sub_21D23E744@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags + 1);
  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  a2[1] = v5;
  return result;
}

unsigned __int8 *sub_21D23E7D0(unsigned __int8 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return sub_21D23E810(v3);
}

unsigned __int8 *sub_21D23E810(unsigned __int8 *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  if (v2 != *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags) || ((v3 ^ v4[1]) & 1) != 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  else
  {
    *v4 = v2;
    v4[1] = v3;
  }

  return result;
}

uint64_t sub_21D23EA94@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a2 = *(v2 + *a1);
  return result;
}

unsigned __int8 *sub_21D23EB84(unsigned __int8 *result, void *a2)
{
  v3 = *result;
  if (v3 == *(v2 + *a2))
  {
    *(v2 + *a2) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  return result;
}

uint64_t sub_21D23ED80()
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  return *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel);
}

uint64_t sub_21D23EDF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel);
  return result;
}

uint64_t sub_21D23EEA0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  return result;
}

uint64_t sub_21D23F014@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_21D23FFBC();
  sub_21DBF5D9C();

  v7 = *a1;
  swift_beginAccess();
  return sub_21D0D3954(v9 + v7, a3, a2);
}

uint64_t sub_21D23F0F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_21D23F238()
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D23F2C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  v6 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_21DBFC64C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21D23F410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  *v3 = a2;
  v3[1] = a3;
  sub_21DBF8E0C();
}

uint64_t sub_21D23F458()
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  return sub_21DBF8E0C();
}

uint64_t sub_21D23F4D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions;
  v4 = sub_21DBF8E0C();
  v5 = sub_21D1D56D8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }
}

uint64_t sub_21D23F628@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_21D23F70C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  return *(v2 + *a2);
}

uint64_t sub_21D23F7A4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21D23FFBC();
    sub_21DBF5D8C();
  }

  return result;
}

uint64_t sub_21D23F888(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v11 - 8);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v30 = v2;

  v28 = a1;
  v19 = v29;
  swift_getAtKeyPath();

  v20 = *(v8 + 56);
  sub_21D0D3954(v18, v10, &qword_27CE5FB90);
  sub_21D0D3954(v19, &v10[v20], &qword_27CE5FB90);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5FB90);
    if (v21(&v10[v20], 1, v4) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5FB90);
    }

    goto LABEL_6;
  }

  sub_21D0D3954(v10, v15, &qword_27CE5FB90);
  if (v21(&v10[v20], 1, v4) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5FB90);
    sub_21D1068B8(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v10, &qword_27CE5F2E0);
LABEL_7:
    sub_21D0D3954(v19, v27, &qword_27CE5FB90);
    v30 = v2;

    swift_setAtReferenceWritableKeyPath();
  }

  v23 = v26;
  sub_21D241B94(&v10[v20], v26);
  v24 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v15, v23);
  sub_21D1068B8(v23, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v18, &qword_27CE5FB90);
  sub_21D1068B8(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = sub_21D0CF7E0(v10, &qword_27CE5FB90);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D23FC64()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__itemID, &qword_27CE5FB90);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel, &qword_27CE5A0B8);

  v1 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel___observationRegistrar;
  v2 = sub_21DBF5DBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListReminderCellObservableViewModel()
{
  result = qword_280D0D480;
  if (!qword_280D0D480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D23FDB8()
{
  sub_21D23FF50(319, &qword_280D14240, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v0 <= 0x3F)
  {
    sub_21D23FF50(319, qword_280D14120, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if (v1 <= 0x3F)
    {
      sub_21DBF5DBC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21D23FF50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_21D23FFBC()
{
  result = qword_280D0D490;
  if (!qword_280D0D490)
  {
    type metadata accessor for TTRIRemindersListReminderCellObservableViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0D490);
  }

  return result;
}

uint64_t sub_21D240014()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__itemID;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel) = 3;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isUserInteractionEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__infoButtonState) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__cellQuickBarState) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isSwiped) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass) = 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  v5 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v6(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__titleIsEditing) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__notesIsEditing) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing) = 0;
  v7 = (v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hasEditingAccessories) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__skipsEditableTextViewContentUpdate_transient) = 0;
  sub_21DBF5DAC();
  return v0;
}

uint64_t sub_21D24021C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v54 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v56);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - v10;
  KeyPath = swift_getKeyPath();
  sub_21D241B2C(a1, v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_21D23F888(KeyPath, v11);

  sub_21D0CF7E0(v11, &qword_27CE5FB90);
  v14 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v15 = *(a1 + v14[5]);
  swift_getKeyPath();
  v60 = v1;
  sub_21D23FFBC();

  sub_21DBF5D9C();

  v16 = *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);

  if (v16 == 3)
  {
    if (v15 == 3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v15 == 3 || v16 != v15)
  {
LABEL_6:
    LOBYTE(v60) = v15;

    sub_21D23E5C0(&v60);
  }

LABEL_7:
  v17 = (a1 + v14[6]);
  v18 = *v17;
  v19 = v17[1];
  swift_getKeyPath();
  v60 = v2;

  sub_21DBF5D9C();

  v20 = (v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  v21 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  v22 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags + 1);

  if (v18 != v21 || ((v19 ^ v22) & 1) != 0)
  {
    if (v18 != *v20 || ((v19 ^ v20[1]) & 1) != 0)
    {
      v23 = swift_getKeyPath();
      v55 = &v54;
      MEMORY[0x28223BE20](v23);
      *(&v54 - 2) = v2;
      *(&v54 - 8) = v18;
      *(&v54 - 7) = v19;
      v60 = v2;

      sub_21DBF5D8C();
    }

    else
    {
      *v20 = v18;
      v20[1] = v19;
    }
  }

  v24 = *(a1 + v14[7]);
  swift_getKeyPath();
  v60 = v2;

  sub_21DBF5D9C();

  v25 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isUserInteractionEnabled;
  v26 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isUserInteractionEnabled);

  if (v24 != v26)
  {
    if (v24 == *(v2 + v25))
    {
      *(v2 + v25) = v24;
    }

    else
    {
      v27 = swift_getKeyPath();
      v55 = &v54;
      MEMORY[0x28223BE20](v27);
      *(&v54 - 2) = v2;
      *(&v54 - 8) = v24;
      v60 = v2;

      sub_21DBF5D8C();
    }
  }

  v28 = *(a1 + v14[8]);
  swift_getKeyPath();
  v60 = v2;

  sub_21DBF5D9C();

  v29 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem;
  v30 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem);

  if (v28 != v30)
  {
    if (v28 == *(v2 + v29))
    {
      *(v2 + v29) = v28;
    }

    else
    {
      v31 = swift_getKeyPath();
      v55 = &v54;
      MEMORY[0x28223BE20](v31);
      *(&v54 - 2) = v2;
      *(&v54 - 8) = v28;
      v60 = v2;

      sub_21DBF5D8C();
    }
  }

  v32 = *(a1 + v14[10]);
  swift_getKeyPath();
  v60 = v2;

  sub_21DBF5D9C();

  v33 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__infoButtonState;
  v34 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__infoButtonState);

  if (v32 != v34)
  {
    if (v32 == *(v2 + v33))
    {
      *(v2 + v33) = v32;
    }

    else
    {
      v35 = swift_getKeyPath();
      v55 = &v54;
      MEMORY[0x28223BE20](v35);
      *(&v54 - 2) = v2;
      *(&v54 - 8) = v32;
      v60 = v2;

      sub_21DBF5D8C();
    }
  }

  v36 = *(a1 + v14[11]);
  swift_getKeyPath();
  v60 = v2;

  sub_21DBF5D9C();

  v37 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__cellQuickBarState;
  v38 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__cellQuickBarState);

  if (v36 != v38)
  {
    if (v36 == *(v2 + v37))
    {
      *(v2 + v37) = v36;
    }

    else
    {
      v39 = swift_getKeyPath();
      v55 = &v54;
      MEMORY[0x28223BE20](v39);
      *(&v54 - 2) = v2;
      *(&v54 - 8) = v36;
      v60 = v2;

      sub_21DBF5D8C();
    }
  }

  v40 = *(a1 + v14[12]);
  swift_getKeyPath();
  v60 = v2;

  sub_21DBF5D9C();

  v41 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible;
  v42 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible);

  if (v40 != v42)
  {
    if (v40 == *(v2 + v41))
    {
      *(v2 + v41) = v40;
    }

    else
    {
      v43 = swift_getKeyPath();
      v55 = &v54;
      MEMORY[0x28223BE20](v43);
      *(&v54 - 2) = v2;
      *(&v54 - 8) = v40;
      v60 = v2;

      sub_21DBF5D8C();
    }
  }

  v44 = v59;
  sub_21D0D3954(a1 + v14[13], v59, &qword_27CE5A0C0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8);
  if ((*(*(v45 - 8) + 48))(v44, 1, v45) != 1)
  {
    v46 = v57;
    sub_21D241B2C(v44, v57, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v44, &qword_27CE5A0C8);
    v47 = v58;
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v58);
    sub_21D1068B8(v46, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_40;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_21D1068B8(v47, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      v49 = 1;
      goto LABEL_41;
    }

    sub_21D1068B8(v47, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    goto LABEL_40;
  }

  sub_21D0CF7E0(v44, &qword_27CE5A0C0);
LABEL_40:
  v49 = 0;
LABEL_41:
  swift_getKeyPath();
  v60 = v2;

  sub_21DBF5D9C();

  v50 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hasEditingAccessories;
  v51 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hasEditingAccessories);

  if (v49 != v51)
  {
    if (v49 == *(v2 + v50))
    {
      *(v2 + v50) = v49;
    }

    else
    {
      v53 = swift_getKeyPath();
      MEMORY[0x28223BE20](v53);
      *(&v54 - 2) = v2;
      *(&v54 - 8) = v49;
      v60 = v2;

      sub_21DBF5D8C();
    }
  }

  return result;
}

uint64_t sub_21D240DC8(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = sub_21DBF87BC();
  v5 = v4 & 1;
  swift_getKeyPath();
  v30 = v2;
  sub_21D23FFBC();

  sub_21DBF5D9C();

  v6 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode;
  v7 = *(v30 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  if (v5 != v7)
  {
    if (v5 == *(v3 + v6))
    {
      *(v3 + v6) = v4 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);

      sub_21DBF5D8C();
    }
  }

  v9 = sub_21DBF87AC();
  v10 = v9 & 1;
  swift_getKeyPath();

  sub_21DBF5D9C();

  v11 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isSwiped;
  v12 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isSwiped);

  if (v10 != v12)
  {
    if (v10 == *(v3 + v11))
    {
      *(v3 + v11) = v9 & 1;
    }

    else
    {
      v13 = swift_getKeyPath();
      MEMORY[0x28223BE20](v13);

      sub_21DBF5D8C();
    }
  }

  v14 = sub_21DBF875C();
  v15 = v14 & 1;
  swift_getKeyPath();

  sub_21DBF5D9C();

  v16 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded;
  v17 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded);

  if (v15 != v17)
  {
    if (v15 == *(v3 + v16))
    {
      *(v3 + v16) = v14 & 1;
    }

    else
    {
      v18 = swift_getKeyPath();
      MEMORY[0x28223BE20](v18);

      sub_21DBF5D8C();
    }
  }

  v19 = [a2 indentationLevel];
  swift_getKeyPath();

  sub_21DBF5D9C();

  v20 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel;
  v21 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__indentationLevel);

  if (v21 != v19 && *(v3 + v20) != v19)
  {
    v22 = swift_getKeyPath();
    MEMORY[0x28223BE20](v22);

    sub_21DBF5D8C();
  }

  v23 = sub_21DBF877C();
  v24 = [v23 horizontalSizeClass];

  swift_getKeyPath();

  sub_21DBF5D9C();

  v25 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass;
  v26 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass);

  if ((v24 == 1) != v26)
  {
    if (((v24 == 1) ^ *(v3 + v25)))
    {
      v28 = swift_getKeyPath();
      MEMORY[0x28223BE20](v28);

      sub_21DBF5D8C();
    }

    else
    {
      *(v3 + v25) = v24 == 1;
    }
  }

  return result;
}

uint64_t sub_21D2413A4()
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__titleIsEditing))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__notesIsEditing))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_21DBF5D9C();

  return *(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing);
}

uint64_t sub_21D2414F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  v10 = v0;
  sub_21D23FFBC();
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode))
  {
    return 0;
  }

  swift_getKeyPath();
  v10 = v0;
  sub_21DBF5D9C();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isPonderingTextEffectVisible))
  {
    return 0;
  }

  swift_getKeyPath();
  v10 = v0;
  sub_21DBF5D9C();

  v6 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v1 + v6, v4, &qword_27CE5A0B8);
  v7 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = v4[*(v7 + 24) + 2];
  }

  sub_21D0CF7E0(v4, &qword_27CE5A0B8);
  return v8;
}

uint64_t sub_21D2416E8@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_21D23FFBC();
  sub_21DBF5D9C();

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel) == 1)
  {
    swift_getKeyPath();
    sub_21DBF5D9C();

    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21D2417CC()
{
  v1 = v0;
  v2 = sub_21DBF604C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D44DC8], v2, v4);
  v7 = sub_21DBF603C();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  v10 = v1;
  sub_21D23FFBC();
  sub_21DBF5D9C();

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass))
  {
    return 0;
  }

  if (sub_21D2413A4())
  {
    return 1;
  }

  swift_getKeyPath();
  v10 = v1;
  sub_21DBF5D9C();

  return *(v1 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__cellQuickBarState);
}

uint64_t sub_21D241970()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions) = *(v0 + 24);
  sub_21DBF8E0C();
}

uint64_t sub_21D2419B4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  *v2 = v0[3];
  v2[1] = v1;
  sub_21DBF8E0C();
}

void sub_21D241A78()
{
  v1 = *(v0 + 25);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags);
  *v2 = *(v0 + 24);
  v2[1] = v1;
}

uint64_t sub_21D241B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D241B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D241C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_21D0D3954(a1, &v20 - v12, &qword_27CE5FB90);
  sub_21D0D3954(a2, &v13[v15], &qword_27CE5FB90);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &qword_27CE5FB90);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21D241B94(&v13[v15], v7);
      v18 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_21D1068B8(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D1068B8(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v13, &qword_27CE5FB90);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_21D1068B8(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE5F2E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_21D0CF7E0(v13, &qword_27CE5FB90);
  v17 = 0;
  return v17 & 1;
}

uint64_t TTRListSharingUIType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void REMAccount.listSharingUIType.getter(char *a1@<X8>)
{
  v3 = [v1 accountTypeHost];
  sub_21DBFB2CC();

  v4 = v5;
  if (v5 == 3)
  {
    v4 = 2;
  }

  *a1 = v4;
}

unint64_t sub_21D2421F0()
{
  result = qword_27CE5A0D0;
  if (!qword_27CE5A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A0D0);
  }

  return result;
}

uint64_t sub_21D242254(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_21DBFA2AC();
  return sub_21DBFA3CC();
}

uint64_t sub_21D2422D4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A0D8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A0D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderCellHashtagEditingPresenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*TTRReminderCellHashtagEditingPresenter.delegate.modify(uint64_t *a1))()
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
  return sub_21D2424CC;
}

uint64_t TTRReminderCellHashtagEditingPresenter.presenterManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellHashtagEditingPresenter.presenterManager.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

void sub_21D242600(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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

uint64_t sub_21D2426D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a2, a4, a5, v6, ObjectType, a3);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t TTRReminderCellHashtagEditingPresenter.augmentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_21D24A7C4(v4, v5);
}

uint64_t sub_21D2427B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21D24A7C4(v4, v5);
}

uint64_t sub_21D242818(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_21D24A7C4(v2, v3);
  sub_21D24A7C4(v7, v8);
  sub_21D24A814(v7, v8);
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v13 = v9;
  v14 = v10;
  sub_21D2429B4(&v12);
  return sub_21D24A814(v7, v8);
}

uint64_t TTRReminderCellHashtagEditingPresenter.augmentation.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v8;
  sub_21D24A7C4(v4, v5);
  sub_21D24A814(v4, v5);
  *&v10 = v4;
  *(&v10 + 1) = v5;
  v11 = v6;
  v12 = v7;
  sub_21D2429B4(&v10);
  return sub_21D24A814(v4, v5);
}

uint64_t sub_21D2429B4(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v12 = *v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v7 = *a1;
  v11[1] = a1[1];
  v11[0] = v7;
  sub_21D24A7C4(v12, v4);
  LOBYTE(a1) = _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO2eeoiySbAC_ACtFZ_0(&v12, v11);
  result = sub_21D24A814(v12, v13);
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 48))(v1, &protocol witness table for TTRReminderCellHashtagEditingPresenter, ObjectType, v9);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*TTRReminderCellHashtagEditingPresenter.augmentation.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v4 = *v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  sub_21D24A7C4(v7, v8);
  return sub_21D242B48;
}

void sub_21D242B48(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = ((*a1)[7] + (*a1)[8]);
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v10 = *v4;
  v9 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  if (a2)
  {
    sub_21D24A7C4(v5, v6);
    sub_21D24A7C4(v10, v9);
    sub_21D24A814(v10, v9);
    *&v15 = v10;
    *(&v15 + 1) = v9;
    v16 = v12;
    v17 = v11;
    sub_21D2429B4(&v15);
    sub_21D24A814(v10, v9);
    v13 = *v3;
    v14 = v3[1];
  }

  else
  {
    sub_21D24A7C4(v10, v9);
    sub_21D24A814(v10, v9);
    *&v15 = v10;
    *(&v15 + 1) = v9;
    v16 = v12;
    v17 = v11;
    sub_21D2429B4(&v15);
    v13 = v10;
    v14 = v9;
  }

  sub_21D24A814(v13, v14);

  free(v3);
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.requestAbortEditing()()
{
  if (qword_27CE565C8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5A0D8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_shouldSkipSavingEditingSession) = 1;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, &protocol witness table for TTRReminderCellHashtagEditingPresenter, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.requestHandleBeginEditingHashtags(attributedText:)(NSAttributedString attributedText)
{
  v2 = v1;
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = sub_21DBFBA3C();
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v99 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  MEMORY[0x28223BE20](v16 - 8);
  v95 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F8);
  v90 = *(v18 - 8);
  v91 = v18;
  MEMORY[0x28223BE20](v18);
  v89 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A100);
  v93 = *(v20 - 8);
  v94 = v20;
  MEMORY[0x28223BE20](v20);
  v92 = &v77 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A108);
  v97 = *(v22 - 8);
  v98 = v22;
  MEMORY[0x28223BE20](v22);
  v96 = &v77 - v23;
  if (qword_27CE565C8 != -1)
  {
    swift_once();
  }

  v24 = sub_21DBF84BC();
  __swift_project_value_buffer(v24, qword_27CE5A0D8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  sub_21D243970();
  *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels) = 0;

  v25 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession);
  if (v25)
  {
    v78 = v5;
    v79 = v7;
    v80 = v10;
    v81 = v13;
    v82 = v4;
    v26 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
    v27 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_interactor + 8);
    v101 = v2;
    ObjectType = swift_getObjectType();
    isa = attributedText.super.isa;
    v29 = ObjectType;
    v30 = swift_getObjectType();
    v31 = *(v26 + 32);
    swift_unknownObjectRetain();
    v87 = v25;
    v31(v103, v30, v26);
    v32 = v104;
    v33 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v34 = (*(v33 + 176))(v32, v33);
    v35 = (*(v27 + 8))(v34, v29, v27);

    __swift_destroy_boxed_opaque_existential_0(v103);
    v102 = *(v101 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_textSelectionPassthroughSubject);
    v103[0] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A118);
    v86 = v14;
    sub_21D0D0F1C(&qword_280D0C498, &qword_27CE5A110);
    sub_21D0D0F1C(&qword_27CE5A120, &qword_27CE5A118);
    v36 = v89;
    sub_21DBF923C();

    v85 = objc_opt_self();
    v37 = [v85 mainRunLoop];
    v103[0] = v37;
    v38 = sub_21DBFBA0C();
    v84 = *(*(v38 - 8) + 56);
    v39 = v95;
    v84(v95, 1, 1, v38);
    v83 = sub_21D0D8CF0(0, &qword_280D17650);
    sub_21D0D0F1C(&qword_27CE5A128, &qword_27CE5A0F8);
    sub_21D0D65DC(&qword_280D17660, &qword_280D17650);
    v40 = v91;
    v41 = v92;
    sub_21DBF936C();
    sub_21D0CF7E0(v39, &qword_27CE5A0F0);

    (*(v90 + 8))(v36, v40);
    v42 = v99;
    sub_21DBFBA1C();
    v43 = [v85 mainRunLoop];
    v103[0] = v43;
    v84(v39, 1, 1, v38);
    sub_21D0D0F1C(&qword_27CE5A130, &qword_27CE5A100);
    v44 = v96;
    v45 = v94;
    v46 = isa;
    v47 = v101;
    sub_21DBF937C();
    sub_21D0CF7E0(v39, &qword_27CE5A0F0);

    (*(v100 + 8))(v42, v86);
    (*(v93 + 8))(v41, v45);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_21D24A864;
    *(v49 + 24) = v48;
    sub_21D0D0F1C(&qword_27CE5A138, &qword_27CE5A108);
    v50 = v98;
    v51 = sub_21DBF92AC();

    (*(v97 + 8))(v44, v50);
    *(v47 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagLabelsCancellable) = v51;

    v52 = [(objc_class *)v46 string];
    v53 = sub_21DBFA16C();
    v55 = v54;

    sub_21D242254(v53, v55);
    v57 = v56;

    if (!v57)
    {
LABEL_10:
      swift_unknownObjectRelease();
      return;
    }

    v58 = v46;
    v59 = v81;
    sub_21DBF4C1C();
    v60 = v80;
    sub_21DBF4C2C();
    v61 = v79;
    sub_21DBF4BDC();
    if (sub_21DBF4BFC())
    {
      swift_unknownObjectRelease();

      v62 = *(v78 + 8);
      v63 = v82;
      v62(v61, v82);
      v62(v60, v63);
      v62(v59, v63);
      return;
    }

    v64 = sub_21DBF4BFC();
    v65 = (v78 + 8);
    if (v64)
    {
      sub_21DBF4BFC();

      v66 = *v65;
      v67 = v82;
      (*v65)(v61, v82);
      v66(v60, v67);
      v66(v59, v67);
      v68 = [(objc_class *)v58 string];
      v69 = sub_21DBFA16C();
      v71 = v70;

      v72 = MEMORY[0x223D42B30](v69, v71);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v73 = *(v47 + 24);
        v74 = swift_getObjectType();
        (*(v73 + 24))(v47, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v72, 0, 32, 0xE100000000000000, v74, v73);
        swift_unknownObjectRelease();
      }

      goto LABEL_10;
    }

    swift_unknownObjectRelease();

    v75 = *v65;
    v76 = v82;
    (*v65)(v61, v82);
    v75(v60, v76);
    v75(v59, v76);
  }
}

uint64_t sub_21D243970()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession);
  if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
    swift_beginAccess();
    *(v1 + v3) = MEMORY[0x277D84FA0];

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v6 = (*(v4 + 16))(v1, &protocol witness table for TTRReminderCellHashtagEditingPresenter, ObjectType, v4);
      v8 = v7;
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *v2 = v6;
    v2[1] = v8;
    swift_unknownObjectRelease();
    if (!*v2)
    {
      if (qword_27CE565C8 != -1)
      {
        swift_once();
      }

      v9 = sub_21DBF84BC();
      __swift_project_value_buffer(v9, qword_27CE5A0D8);

      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAEBC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20[0] = v13;
        *v12 = 136315138;
        v14 = sub_21D25D250();
        v16 = sub_21D0CDFB4(v14, v15, v20);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_21D0C9000, v10, v11, "TTRReminderCellHashtagEditingPresenter: Could not acquire editing session to begin editing. {item: %s}", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x223D46520](v13, -1, -1);
        MEMORY[0x223D46520](v12, -1, -1);
      }
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *(v1 + 40);
    v19 = swift_getObjectType();
    (*(v18 + 88))(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_item, v19, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D243BF8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (qword_27CE565C8 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE5A0D8);
    v3 = v1;
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_21DBFC75C();
      v10 = v9;

      v11 = sub_21D0CDFB4(v8, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v4, v5, "fetchAllHashtagLabels failed {error: %s}", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D243DAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v10 = a2;
  if (Strong)
  {
    v11 = sub_21DBF6ABC();
    v12 = sub_21DBF6ACC();
    sub_21D5623AC(v12);
    *(Strong + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels) = v11;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = sub_21DBF6ABC();
    sub_21D243ED4(v10, a3, a4, a5 & 1, v13);
  }
}

uint64_t sub_21D243ED4(void *a1, uint64_t a2, uint64_t a3, char a4, int64_t a5)
{
  v6 = v5;
  v91 = a5;
  v11 = sub_21DBF4CAC();
  v89 = *(v11 - 8);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 string];
  v15 = sub_21DBFA16C();
  v17 = v16;

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v18 = *(v6 + 24), ObjectType = swift_getObjectType(), v20 = *(v18 + 8), v92 = v6, v21 = v20(ObjectType, v18), v6 = v92, v22 = v21, swift_unknownObjectRelease(), !v22))
  {

    goto LABEL_11;
  }

  v85 = v11;
  v23 = [v22 string];

  v24 = sub_21DBFA16C();
  v26 = v25;

  if (v15 == v24 && v17 == v26)
  {

    if ((a4 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    v29 = (v6 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    *v29 = 0u;
    *(v29 + 1) = 0u;
    sub_21D24A7C4(v30, v31);
    sub_21D24A814(v30, v31);
    *&aBlock = v30;
    *(&aBlock + 1) = v31;
    v95 = v32;
    v96 = v33;
    sub_21D2429B4(&aBlock);
    v34 = v30;
    v35 = v31;
    return sub_21D24A814(v34, v35);
  }

  v28 = sub_21DBFC64C();

  if (v28 & 1) == 0 || (a4)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (a3 || sub_21DBF4B4C() == a2)
  {
    goto LABEL_11;
  }

  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v88 = a1;
  v37 = [a1 string];
  v38 = sub_21DBFA16C();
  v40 = v39;

  v41 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v38, v40, 0, a2);

  v42 = v41;
  v43 = *(v41 + 16);
  if (v43)
  {
    v44 = 0;
    v87 = &v95;
    v45 = (v41 + 24 * v43 + 24);
    v86 = v42;
    while (1)
    {
      if (v43 > *(v42 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v93 = v44;
      v46 = *(v45 - 2);
      v47 = *(v45 - 1);
      v48 = *v45;
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      v50 = (v49 + 16);
      v97 = sub_21D24BDA4;
      v98 = v49;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v95 = sub_21D472974;
      v96 = &block_descriptor_68;
      v51 = _Block_copy(&aBlock);

      [v88 rem:v46 enumerateHashtagInRange:v47 options:0x100000 usingBlock:v51];
      _Block_release(v51);
      swift_beginAccess();
      LOBYTE(v50) = *v50;

      if ((v50 & 1) != 0 || v48 == 3)
      {
        break;
      }

      if (v48 == 2)
      {

        v54 = a2 + v93;
        if (__OFADD__(a2, v93))
        {
          __break(1u);
        }

        else
        {
          v53 = v88;
          if (!__OFADD__(v46, v47))
          {
            if (v54 <= v46 + v47)
            {
              v54 = v46 + v47;
            }

            if (a2 >= v46)
            {
              a2 = v46;
            }

            v44 = v54 - a2;
            if (!__OFSUB__(v54, a2))
            {
              goto LABEL_40;
            }

LABEL_57:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

      v52 = a2 + v93;
      if (__OFADD__(a2, v93))
      {
        goto LABEL_51;
      }

      if (__OFADD__(v46, v47))
      {
        goto LABEL_52;
      }

      if (v52 <= v46 + v47)
      {
        v52 = v46 + v47;
      }

      if (a2 >= v46)
      {
        a2 = v46;
      }

      v44 = v52 - a2;
      if (__OFSUB__(v52, a2))
      {
        goto LABEL_53;
      }

      v45 -= 24;
      --v43;
      v42 = v86;
      if (!v43)
      {
        goto LABEL_32;
      }
    }

    v44 = v93;
LABEL_32:

    v53 = v88;
LABEL_40:
    if (v44 < 1)
    {
      v64 = 0;
      v65 = 0xE000000000000000;
      goto LABEL_49;
    }

    v55 = [v53 string];
    if (!v55)
    {
      sub_21DBFA16C();
      v55 = sub_21DBFA12C();
    }

    v56 = [v55 substringWithRange_];

    v57 = sub_21DBFA16C();
    v59 = v58;

    v60 = v90;
    v61 = sub_21DBF4C1C();
    MEMORY[0x28223BE20](v61);
    *(&v85 - 2) = v60;
    v62 = sub_21D3F7414(sub_21D24BE88, (&v85 - 4), v57, v59);
    if (v63)
    {

      v64 = 0;
      v65 = 0xE000000000000000;
    }

    else
    {
      v66 = sub_21D3F7BA8(v62, v57, v59);
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v60 = v90;
      v64 = MEMORY[0x223D429B0](v66, v68, v70, v72);
      v65 = v73;
    }

    (*(v89 + 8))(v60, v85);
  }

  else
  {
LABEL_54:

    v44 = 0;
    v64 = 0;
    v65 = 0xE000000000000000;
  }

  v53 = v88;
LABEL_49:
  v74 = v92;
  v75 = sub_21D248840(v64, v65, v53, a2, v44, v91);

  v76 = [v53 string];
  v77 = sub_21DBFA16C();
  v79 = v78;

  v80 = (v74 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = v80[2];
  v84 = v80[3];
  *v80 = v77;
  v80[1] = v79;
  v80[2] = MEMORY[0x277D84FA0];
  v80[3] = v75;
  sub_21D24A7C4(v81, v82);
  sub_21D24A814(v81, v82);
  *&aBlock = v81;
  *(&aBlock + 1) = v82;
  v95 = v83;
  v96 = v84;
  sub_21D2429B4(&aBlock);
  v34 = v81;
  v35 = v82;
  return sub_21D24A814(v34, v35);
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.requestHandleEditingHashtagsDidEnd(attributedText:)(NSAttributedString attributedText)
{
  if (qword_27CE565C8 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5A0D8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v4 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
    swift_beginAccess();
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    *v4 = 0u;
    *(v4 + 1) = 0u;
    swift_unknownObjectRetain();
    sub_21D24A7C4(v5, v6);
    sub_21D24A814(v5, v6);
    *&v12 = v5;
    *(&v12 + 1) = v6;
    v13 = v7;
    v14 = v8;
    sub_21D2429B4(&v12);
    sub_21D24A814(v5, v6);
    *&v12 = 0;
    sub_21D24A8D0(attributedText.super.isa, &v12);
    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Missing editing session for editing hashtags", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }
  }
}

uint64_t _s15RemindersUICore38TTRReminderCellHashtagEditingPresenterC010requestEndF0yyF_0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, &protocol witness table for TTRReminderCellHashtagEditingPresenter, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.requestHandleSelectionDidChange(attributedText:newSelection:)(NSAttributedString attributedText, __C::_NSRange_optional newSelection)
{
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    is_nil = newSelection.is_nil;
    length = newSelection.value.length;
    location = newSelection.value.location;
    v7 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);
    swift_unknownObjectRetain();
    v9(v13, ObjectType, v7);
    swift_unknownObjectRelease();
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v11 + 216))(&v16, v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v13);
    if (*(&v17 + 1))
    {
      sub_21D0CF7E0(&v16, &qword_27CE5A140);
      *&v16 = attributedText;
      *(&v16 + 1) = location;
      *&v17 = length;
      BYTE8(v17) = is_nil;
      v12 = attributedText.super.isa;
      sub_21DBF906C();

      return;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  sub_21D0CF7E0(&v16, &qword_27CE5A140);
}

Swift::Void __swiftcall TTRReminderCellHashtagEditingPresenter.request(handleEditingTextChange:detail:hasMarkedText:)(NSAttributedString handleEditingTextChange, RemindersUICore::TTRReminderTextChangeDetail_optional *detail, Swift::Bool hasMarkedText)
{
  if (hasMarkedText)
  {
    return;
  }

  if (!*(v3 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_12;
  }

  isa = detail->value.originalText.super.isa;
  countAndFlagsBits = detail->value.replacementText.value._countAndFlagsBits;
  object = detail->value.replacementText.value._object;
  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 32);
  swift_unknownObjectRetain();
  v9(v14, ObjectType, v7);
  swift_unknownObjectRelease();
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v11 + 216))(&v17, v10, v11);
  __swift_destroy_boxed_opaque_existential_0(v14);
  if (!*(&v18 + 1))
  {
LABEL_12:
    sub_21D0CF7E0(&v17, &qword_27CE5A140);
    return;
  }

  sub_21D0CF7E0(&v17, &qword_27CE5A140);
  if (isa && object)
  {
    v12 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v12 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      type metadata accessor for TTRHashtagEditingPresenterCapability();
      if (static TTRHashtagEditingPresenterCapability.tokenDelimiterExists(in:)(countAndFlagsBits, object))
      {
      }
    }
  }
}

id sub_21D244BB4(void *a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);
    swift_unknownObjectRetain();
    v6(v20, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_21D0D0FD0(v20, v21);
    v7 = v22;
    v8 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v8 + 216))(&v18, v7, v8);
    if (v19)
    {
      sub_21D0D0FD0(&v18, v20);
      v9 = a1;

      v10 = sub_21D479D70(v9, v9, v2);

      v11 = v10;
      v12 = sub_21D479D88(v11, v11, v2);

      v13 = v12;
      v14 = sub_21D479F54(v13, v13);

      v15 = sub_21D246CC4(v14);
      MEMORY[0x28223BE20](v15);
      v16 = NSAttributedString.withMutations(_:)(sub_21D24B374);

      __swift_destroy_boxed_opaque_existential_0(v20);
      __swift_destroy_boxed_opaque_existential_0(v21);
      return v16;
    }

    sub_21D0CF7E0(&v18, &qword_27CE5A140);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  return 0;
}

void sub_21D244DC4(id *a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = [*a1 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = sub_21DBFA12C();
    v11 = [v9 initWithString_];

    [v3 appendAttributedString_];
  }

  v12 = [objc_opt_self() attributeFromHashtag_];
  v13 = sub_21DBFA23C();
  v15 = v14;
  v16 = [v2 name];
  v17 = sub_21DBFA16C();
  v19 = v18;

  v28 = v15;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v17, v19);

  v20 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v21 = sub_21DBFA12C();

  v22 = [v20 initWithString_];

  v23 = [v22 string];
  v24 = sub_21DBFA16C();
  v26 = v25;

  v27 = MEMORY[0x223D42B30](v24, v26);

  [v22 rem:v12 addHashtag:0 range:v27];
  [v3 appendAttributedString_];
}

uint64_t TTRReminderCellHashtagEditingPresenter.requestSelect(_:currentAttributedText:currentSelection:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(v5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    v6 = v5;
    v7 = result;
    v8 = *(v5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 32);
    swift_unknownObjectRetain();
    v10(&v69, ObjectType, v8);
    v12 = v71;
    v11 = v72;
    __swift_project_boxed_opaque_existential_1(&v69, v71);
    (*(v11 + 216))(&v66, v12, v11);
    if (!v68)
    {
      swift_unknownObjectRelease();
      sub_21D0CF7E0(&v66, &qword_27CE5A140);
      v41 = &v69;
      return __swift_destroy_boxed_opaque_existential_0(v41);
    }

    sub_21D0D0FD0(&v66, v73);
    __swift_destroy_boxed_opaque_existential_0(&v69);
    sub_21D0CEB98(v7, &v69);
    if (swift_dynamicCast())
    {
      v13 = v66;
      v57 = v67;
      v58 = v68;
      if (qword_27CE565C8 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_27CE5A0D8);
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC();

      sub_21DBF8E0C();
      v10(&v69, ObjectType, v8);
      v15 = v74;
      v16 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v17 = (*(v16 + 8))(v15, v16);
      sub_21D24857C(v13, *(&v13 + 1), v17);
      v19 = v18;

      if (!v19)
      {
        v20 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
        swift_beginAccess();
        v21 = *(v6 + v20);
        sub_21DBF8E0C();
        sub_21D24857C(v13, *(&v13 + 1), v21);
        v19 = v22;

        if (!v19)
        {
          v19 = sub_21D248408(&v69);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v69);
      v23 = sub_21DBFA23C();
      v25 = v24;
      v56 = v19;
      v26 = [v19 name];
      v27 = sub_21DBFA16C();
      v29 = v28;

      v69 = v23;
      v70 = v25;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v27, v29);

      v30 = v69;
      v31 = v70;
      v64 = v69;
      v65 = v70;
      sub_21DBF8E0C();
      v32 = sub_21DBF4B4C();

      v33 = &selRef_setAttributedText_;
      if (v57 == v32)
      {
        v34 = a3;
      }

      else
      {
        v34 = v57;
      }

      if (v57 == v32)
      {
        v35 = a4;
      }

      else
      {
        v35 = v58;
      }

      if (v57 == v32)
      {
        v42 = a2;
        if (a5)
        {
          v36 = [a2 string];
          v37 = sub_21DBFA16C();
          v39 = v38;

          v40 = v37;
          v33 = &selRef_setAttributedText_;
          v34 = MEMORY[0x223D42B30](v40, v39);

          v35 = 0;
        }
      }

      else
      {
        v42 = a2;
      }

      v43 = MEMORY[0x223D42B30](v30, v31);

      v44 = [v42 v33[155]];
      sub_21DBFA16C();

      LOBYTE(v44) = sub_21D24AD90(v34);

      if (v44)
      {
        v45 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          return result;
        }

        v43 = MEMORY[0x223D42B30](v30, v31);
        v69 = 32;
        v70 = 0xE100000000000000;
        MEMORY[0x223D42AA0](v30, v31);

        v64 = v69;
        v65 = v70;
      }

      else
      {
        v45 = v34;
      }

      MEMORY[0x223D42AA0](32, 0xE100000000000000);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v46 = *(v6 + 24);
        v47 = swift_getObjectType();
        (*(v46 + 32))(v6, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v34, v35, v64, v65, v47, v46);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v48 = *(v6 + 24);
        v49 = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_21DC08D00;
        *(v50 + 32) = v56;
        *(v50 + 40) = v45;
        *(v50 + 48) = v43;
        v51 = v56;
        v52 = [a2 string];
        v53 = sub_21DBFA16C();
        v55 = v54;

        v63[0] = v50;
        v63[1] = v53;
        v63[2] = v55;
        (*(v48 + 40))(v6, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v63, v49, v48);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_31:
        v41 = v73;
        return __swift_destroy_boxed_opaque_existential_0(v41);
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  return result;
}

unint64_t sub_21D245604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v49 = a5;
  v48 = a4;
  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348);
    sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348);
    result = sub_21DBFAB5C();
    v9 = v66;
    v11 = v67;
    v12 = v68;
    v13 = v69;
    v14 = v70;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);
    result = sub_21DBF8E0C();
    v13 = 0;
  }

  v18 = (v12 + 64) >> 6;
  v50 = v9;
  v51 = v11;
  if (v9 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v13;
  v20 = v14;
  v21 = v13;
  if (v14)
  {
LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
LABEL_22:
      sub_21D0CFAF8();
      if (v48)
      {
        v47 = v48;
      }

      else
      {
        v47 = v49;
      }

      return sub_21D245B28(v47);
    }

    while (1)
    {
      v60 = 0x6E756F4372616863;
      v61 = 0xE900000000000074;
      v25 = [v23 name];
      sub_21DBFA16C();

      sub_21DBFA28C();

      v62 = sub_21DBFABEC();
      v63 = 1701869940;
      v64 = 0xE400000000000000;
      sub_21D0D8CF0(0, &qword_27CE5A168);
      v65 = sub_21DBFB66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E0);
      v26 = sub_21DBFC40C();

      v27 = v60;
      v28 = v61;
      v29 = v62;
      sub_21DBF8E0C();
      v30 = v29;
      result = sub_21D0CEF70(v27, v28);
      if (v31)
      {
        break;
      }

      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v32 = (v26[6] + 16 * result);
      *v32 = v27;
      v32[1] = v28;
      *(v26[7] + 8 * result) = v30;
      v33 = v26[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      v26[2] = v35;
      v36 = v63;
      v37 = v64;
      v38 = v65;
      sub_21DBF8E0C();
      v39 = v38;
      result = sub_21D0CEF70(v36, v37);
      if (v40)
      {
        break;
      }

      *(v26 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v41 = (v26[6] + 16 * result);
      *v41 = v36;
      v41[1] = v37;
      *(v26[7] + 8 * result) = v39;
      v42 = v26[2];
      v34 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      v26[2] = v43;

      sub_21DBF835C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220);
      swift_arrayDestroy();
      MEMORY[0x223D40B00](0xD00000000000001DLL, 0x800000021DC48F50, v26, 0, 1);

      ObjectType = swift_getObjectType();
      (*(a3 + 72))(v57, ObjectType);
      v45 = v58;
      v46 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v53 = v23;
      v54 = 0;
      v55 = 0;
      v56 = 1;
      (*(v46 + 80))(&v53, v45, v46);
      sub_21D24B434(v53, v54, v55, v56);
      result = __swift_destroy_boxed_opaque_existential_0(v57);
      v13 = v21;
      v14 = v22;
      v9 = v50;
      v11 = v51;
      v18 = (v12 + 64) >> 6;
      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v24 = sub_21DBFBDBC();
      if (v24)
      {
        v53 = v24;
        sub_21D0D8CF0(0, &qword_280D0C348);
        swift_dynamicCast();
        v23 = v57[0];
        v21 = v13;
        v22 = v14;
        if (v57[0])
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_22;
      }

      v20 = *(v11 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21D245B28(uint64_t result)
{
  if (!*(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession))
  {
    return result;
  }

  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 32);
  swift_unknownObjectRetain();
  v38 = ObjectType;
  v39 = v3;
  v5(v50, ObjectType, v3);
  v6 = v51;
  v7 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v7 + 216))(&aBlock, v6, v7);
  v8 = v47;
  if (!v47)
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v50);
    return sub_21D0CF7E0(&aBlock, &qword_27CE5A140);
  }

  v9 = v48;
  __swift_project_boxed_opaque_existential_1(&aBlock, v47);
  v10 = (*(v9 + 1))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  __swift_destroy_boxed_opaque_existential_0(v50);
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = [v2 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = MEMORY[0x223D42B30](v12, v14);

  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84FA0];
  v17 = (v16 + 16);
  v48 = sub_21D24B444;
  v49 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_21D472974;
  v47 = &block_descriptor_61;
  v18 = _Block_copy(&aBlock);

  [v2 rem:0 enumerateHashtagInRange:v15 options:0x100000 usingBlock:v18];
  _Block_release(v18);
  swift_beginAccess();
  v19 = *v17;
  sub_21DBF8E0C();

  v20 = sub_21D24BA90(v10, v19);

  if ((v20 & 0xC000000000000001) != 0)
  {
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348);
    sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348);
    result = sub_21DBFAB5C();
    v20 = aBlock;
    v21 = v45;
    v22 = v46;
    v23 = v47;
    v24 = v48;
  }

  else
  {
    v23 = 0;
    v25 = -1 << *(v20 + 32);
    v21 = v20 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v20 + 56);
  }

  v28 = (v22 + 64) >> 6;
  if (v20 < 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29 = v23;
    v30 = v24;
    v31 = v23;
    if (!v24)
    {
      break;
    }

LABEL_19:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
LABEL_27:
      sub_21D0CFAF8();
      return swift_unknownObjectRelease();
    }

    while (1)
    {
      if (qword_27CE565C8 != -1)
      {
        swift_once();
      }

      v35 = sub_21DBF84BC();
      __swift_project_value_buffer(v35, qword_27CE5A0D8);
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC();

      (*(v39 + 72))(v50, v38);
      v36 = v51;
      v37 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      v40 = v33;
      v41 = 0;
      v42 = 0;
      v43 = 1;
      (*(v37 + 88))(&v40, v36, v37);
      sub_21D24B434(v40, v41, v42, v43);
      result = __swift_destroy_boxed_opaque_existential_0(v50);
      v23 = v31;
      v24 = v32;
      if ((v20 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_21:
      v34 = sub_21DBFBDBC();
      if (v34)
      {
        v40 = v34;
        sub_21D0D8CF0(0, &qword_280D0C348);
        swift_dynamicCast();
        v33 = v50[0];
        v31 = v23;
        v32 = v24;
        if (v50[0])
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v31 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_27;
    }

    v30 = *(v21 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *sub_21D2460A8(void *a1, void *a2, uint64_t a3)
{
  v67 = a1;
  v65 = sub_21DBF4CAC();
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v66 = type metadata accessor for TTRHashtagEditingPresenterCapability();
  v14 = [a2 string];
  v64 = sub_21DBFA16C();
  v16 = v15;

  v17 = [a2 string];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = MEMORY[0x223D42B30](v18, v20);

  v22 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v64, v16, 0, v21);

  v23 = *(v22 + 16);
  if (v23)
  {
    v66 = v7;
    v24 = v5;
    v25 = 0;
    v26 = v22 + 32;
    v27 = (v24 + 8);
    v28 = MEMORY[0x277D84F90];
    v61 = v22;
    v62 = a2;
    result = a2;
    v59 = v22 + 32;
    v60 = v23;
    while (v25 < *(v22 + 16))
    {
      v30 = v26 + 24 * v25;
      v31 = *v30;
      if (*(v30 + 16) == 2 && v31 > 0)
      {
        v33 = [result string];
        if (!v33)
        {
          sub_21DBFA16C();
          v34 = sub_21DBFA12C();

          v33 = v34;
        }

        v63 = v31;
        v35 = [v33 rangeOfComposedCharacterSequenceAtIndex_];
        v64 = v33;
        v37 = [v33 substringWithRange_];
        v38 = sub_21DBFA16C();
        v40 = v39;

        v41 = HIBYTE(v40) & 0xF;
        v68 = v38;
        v69 = v40;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }

        v70 = 0;
        v71 = v41;
        sub_21DBFA30C();
        if (v42)
        {
          while (1)
          {
            sub_21DBF4C1C();
            sub_21DBF4C2C();
            sub_21DBF4BDC();
            if (sub_21DBF4BFC())
            {
              break;
            }

            if (sub_21DBF4BFC())
            {
              sub_21DBF4BFC();
              break;
            }

            v43 = *v27;
            v44 = v65;
            (*v27)(v66, v65);
            v43(v10, v44);
            v43(v13, v44);
            sub_21DBFA30C();
            if (!v45)
            {
              goto LABEL_3;
            }
          }

          v46 = *v27;
          v47 = v65;
          (*v27)(v66, v65);
          v46(v10, v47);
          v46(v13, v47);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_21D211158(0, *(v28 + 2) + 1, 1, v28);
          }

          v23 = v60;
          v22 = v61;
          v49 = *(v28 + 2);
          v48 = *(v28 + 3);
          if (v49 >= v48 >> 1)
          {
            v28 = sub_21D211158((v48 > 1), v49 + 1, 1, v28);
          }

          *(v28 + 2) = v49 + 1;
          v50 = &v28[16 * v49];
          result = v62;
          *(v50 + 4) = v63;
          *(v50 + 5) = 0;
        }

        else
        {
LABEL_3:

          v22 = v61;
          result = v62;
          v23 = v60;
        }

        v26 = v59;
      }

      if (++v25 == v23)
      {

        v51 = *(v28 + 2);
        if (v51)
        {
          goto LABEL_29;
        }
      }
    }
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
    v51 = *(MEMORY[0x277D84F90] + 16);
    if (!v51)
    {
    }

LABEL_29:
    result = swift_beginAccess();
    v52 = &v28[16 * v51 + 24];
    while (v51 <= *(v28 + 2))
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      v55 = sub_21DBFA12C();
      [v67 replaceCharactersInRange:v53 withString:{v54, v55}];

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v56 = *(a3 + 24);
        ObjectType = swift_getObjectType();
        (*(v56 + 32))(a3, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v53, v54, 32, 0xE100000000000000, ObjectType, v56);
        result = swift_unknownObjectRelease();
      }

      v52 -= 16;
      if (!--v51)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21D246618(void *a1, void *a2, uint64_t a3)
{
  v64 = a3;
  v72 = a1;
  v4 = sub_21DBF4CAC();
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = sub_21DBF5B4C();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x28223BE20](v13);
  v59 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF5B9C();
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x28223BE20](v15);
  v67 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5B8C();
  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v17 = [a2 string];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v69 = a2;
  v21 = [a2 string];
  v22 = sub_21DBFA16C();
  v24 = v23;

  v25 = MEMORY[0x223D42B30](v22, v24);

  v26 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v18, v20, 0, v25);

  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_22:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150);
    v47 = swift_allocBox();
    v48 = v59;
    sub_21DBF5B6C();
    sub_21DBF5B3C();
    (*(v60 + 8))(v48, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A158);
    v49 = swift_allocObject();
    *(v49 + 16) = sub_21D24B41C;
    *(v49 + 24) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A160);
    *(swift_allocObject() + 16) = v49;
    v50 = sub_21D1E4118();
    v51 = *(v50 + 16);
    v52 = v64;
    if (v51)
    {
      swift_beginAccess();
      v53 = (v50 + 40);
      do
      {
        v54 = *(v53 - 1);
        v55 = *v53;
        v56 = sub_21DBFA12C();
        [v72 replaceCharactersInRange:v54 withString:{v55, v56}];

        if (swift_unknownObjectWeakLoadStrong())
        {
          v57 = *(v52 + 24);
          ObjectType = swift_getObjectType();
          (*(v57 + 32))(v52, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v54, v55, 0, 0xE000000000000000, ObjectType, v57);
          swift_unknownObjectRelease();
        }

        v53 += 2;
        --v51;
      }

      while (v51);
    }

    (*(v62 + 8))(v67, v63);
    return;
  }

  v28 = 0;
  v29 = v26 + 32;
  v30 = (v71 + 8);
  v65 = v26;
  v66 = v27;
  v68 = v26 + 32;
  while (v28 < *(v26 + 16))
  {
    v31 = v29 + 24 * v28;
    if (*(v31 + 16) != 2)
    {
      goto LABEL_5;
    }

    v32 = *v31;
    v70 = *(v31 + 8);
    v33 = [v69 string];
    v71 = v32;
    if (v33)
    {
      v34 = v32 - 1;
      if (v32 >= 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_21DBFA16C();
      v33 = sub_21DBFA12C();
      v35 = v71;

      v34 = v35 - 1;
      if (v35 >= 1)
      {
LABEL_12:
        v36 = [v33 rangeOfComposedCharacterSequenceAtIndex_];
        v38 = [v33 substringWithRange_];
        v39 = sub_21DBFA16C();
        v41 = v40;

        v42 = HIBYTE(v41) & 0xF;
        v73 = v39;
        v74 = v41;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v42 = v39 & 0xFFFFFFFFFFFFLL;
        }

        v75 = 0;
        v76 = v42;
        sub_21DBFA30C();
        if (v43)
        {
          while (1)
          {
            sub_21DBF4C1C();
            sub_21DBF4C2C();
            sub_21DBF4BDC();
            if ((sub_21DBF4BFC() & 1) == 0)
            {
              break;
            }

            v44 = *v30;
            (*v30)(v6, v4);
            v44(v9, v4);
            v44(v12, v4);
            sub_21DBFA30C();
            if (!v45)
            {
              goto LABEL_17;
            }
          }

          if (sub_21DBF4BFC())
          {
            sub_21DBF4BFC();
          }

          v46 = *v30;
          (*v30)(v6, v4);
          v46(v9, v4);
          v46(v12, v4);

          v26 = v65;
          v27 = v66;
        }

        else
        {
LABEL_17:

          v27 = v66;
          if (v70 + v71 < v71)
          {
            goto LABEL_29;
          }

          sub_21DBF5ADC();
          v26 = v65;
        }

        goto LABEL_4;
      }
    }

LABEL_4:
    v29 = v68;
LABEL_5:
    if (++v28 == v27)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_21D246CC4(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v6 = sub_21DBFBD7C();

    if (!v6)
    {
      return result;
    }
  }

  else if (!*(v5 + 16))
  {
    return result;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84FA0];
  v8 = [a1 string];
  v9 = sub_21DBFA16C();
  v11 = v10;

  v12 = MEMORY[0x223D42B30](v9, v11);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = v7;
  aBlock[4] = sub_21D24B408;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472974;
  aBlock[3] = &block_descriptor_36;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  [v16 rem:0 enumerateHashtagInRange:v12 options:0 usingBlock:v15];
  _Block_release(v15);
  v17 = sub_21DBF8E0C();
  *(v1 + v3) = sub_21D249A40(v17, (v7 + 16));
}

uint64_t sub_21D246EE4(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280D177B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280D177C0;
  v11 = [a2 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  v15 = MEMORY[0x223D42B30](v12, v14);

  sub_21D0D32E4(a4, v25);
  sub_21D0D32E4(a5, v24);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  sub_21D0D0FD0(v25, (v16 + 4));
  sub_21D0D0FD0(v24, (v16 + 9));
  v16[14] = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D24B380;
  *(v17 + 24) = v16;
  v23[4] = sub_21D24B3B4;
  v23[5] = v17;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_21D1A6068;
  v23[3] = &block_descriptor_7;
  v18 = _Block_copy(v23);
  v19 = a2;

  v20 = a1;

  [v19 enumerateAttribute:v10 inRange:0 options:v15 usingBlock:{2, v18}];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D247128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v155 = a8;
  v145 = a7;
  v168 = a2;
  v153 = sub_21DBF78CC();
  v13 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v146 = &v143 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v143 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v143 - v21;
  v158 = sub_21DBF4CAC();
  *&v24 = MEMORY[0x28223BE20](v158).n128_u64[0];
  v169 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 24))
  {
    return;
  }

  v157 = v23;
  v159 = v13;
  v150 = v22;
  v151 = v19;
  v160 = a9;
  v26 = [a5 string];
  if (!v26)
  {
    sub_21DBFA16C();
    v26 = sub_21DBFA12C();
  }

  v27 = v168;
  v28 = [v26 substringWithRange_];

  v29 = sub_21DBFA16C();
  v31 = v30;

  v32 = swift_allocObject();
  v144 = v32;
  *(v32 + 16) = v27;
  v33 = (v32 + 16);
  swift_beginAccess();
  v34 = HIBYTE(v31) & 0xF;
  v167 = v29;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v34 = v29;
  }

  v162 = (v34 << 16) | 7;
  v166 = (a3 + v27);
  v35 = MEMORY[0x277D84F90];
  v164 = &v172;
  v170 = a6;
  v165 = a5;
  v163 = v31;
  v36 = *v33;
  if ((v31 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  for (i = sub_21DBFA36C(); ; i = sub_21DBFA35C())
  {
    if (__OFADD__(v168, i))
    {
      goto LABEL_64;
    }

    v161 = v35;
    if (v36 >= v168 + i)
    {

      v56 = *(v35 + 2);
      if (!v56)
      {
LABEL_60:

        return;
      }

      v156 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels;
      v57 = (a6 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
      v163 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
      swift_beginAccess();
      v154 = v57;
      swift_beginAccess();
      swift_beginAccess();
      v58 = 0;
      ++v157;
      v149 = (v159 + 8);
      v59 = &v35[16 * v56 + 24];
      v147 = xmmword_21DC08D00;
      v60 = v165;
      v148 = (v159 + 32);
      while (1)
      {
        if (v56 > *(v35 + 2))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v62 = *(v59 - 1);
        v61 = *v59;
        v166 = v59;
        v63 = [v60 string];
        if (!v63)
        {
          sub_21DBFA16C();
          v63 = sub_21DBFA12C();
        }

        v168 = v56;
        v164 = v61;
        v64 = [v63 substringWithRange_];

        v65 = sub_21DBFA16C();
        v67 = v66;

        v68 = v169;
        v69 = sub_21DBF4C1C();
        MEMORY[0x28223BE20](v69);
        *(&v143 - 2) = v68;
        v70 = sub_21D3F7414(sub_21D24B3BC, (&v143 - 4), v65, v67);
        v167 = v58;
        if (v71)
        {

          v72 = 0;
          v73 = 0xE000000000000000;
        }

        else
        {
          v74 = sub_21D3F7BA8(v70, v65, v67);
          v76 = v75;
          v78 = v77;
          v80 = v79;

          v72 = MEMORY[0x223D429B0](v74, v76, v78, v80);
          v73 = v81;
        }

        (*v157)(v169, v158);
        v82 = HIBYTE(v73) & 0xF;
        if ((v73 & 0x2000000000000000) == 0)
        {
          v82 = v72 & 0xFFFFFFFFFFFFLL;
        }

        if (!v82)
        {

          v58 = v167;
          v60 = v165;
          goto LABEL_25;
        }

        v83 = *(a6 + v163);
        if ((v83 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          v84 = sub_21DBFBD7C();

          if (v84)
          {
            goto LABEL_41;
          }
        }

        else if (*(v83 + 16))
        {
          goto LABEL_41;
        }

        v85 = *(a6 + v156);
        if (v85 && *(v85 + 16))
        {
LABEL_41:
          v162 = v62;
          v86 = v150;
          sub_21DBF78BC();
          v87 = *(a6 + v156);
          v88 = v153;
          v89 = v151;
          v90 = v149;
          v91 = v148;
          if (v87)
          {
            sub_21DBF8E0C();
            sub_21DBF784C();
            v92 = v146;
            sub_21DBF782C();
            v93 = *v90;
            (*v90)(v89, v88);
            v93(v86, v88);
            (*v91)(v86, v92, v88);
          }

          *&aBlock = *(v170 + v163);
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A148);
          sub_21D0D0F1C(&qword_280D0C370, &qword_27CE5A148);
          v94 = v152;
          sub_21DBF789C();
          sub_21DBF782C();
          v95 = *v90;
          (*v90)(v86, v88);
          (*v91)(v86, v89, v88);
          v96 = sub_21DBF781C();
          v98 = v97;
          v95(v94, v88);
          v95(v86, v88);
          if (v98)
          {

            v72 = v96;
            v73 = v98;
          }

          a6 = v170;
          v62 = v162;
        }

        v99 = v155[3];
        v100 = v155[4];
        __swift_project_boxed_opaque_existential_1(v155, v99);
        v101 = (*(v100 + 8))(v99, v100);
        sub_21D24857C(v72, v73, v101);
        v103 = v102;

        if (!v103)
        {
          v104 = *(a6 + v163);
          sub_21DBF8E0C();
          sub_21D24857C(v72, v73, v104);
          v103 = v105;

          if (!v103)
          {
            v103 = sub_21D248408(v145);
          }
        }

        v106 = sub_21DBFA23C();
        v108 = v107;
        v109 = [v103 name];
        v110 = sub_21DBFA16C();
        v112 = v111;

        *&aBlock = v106;
        *(&aBlock + 1) = v108;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v110, v112);

        v113 = *(&aBlock + 1);
        v114 = aBlock;
        v115 = MEMORY[0x223D42B30](aBlock, *(&aBlock + 1));
        v116 = [v165 string];
        sub_21DBFA16C();

        LOBYTE(v116) = sub_21D24AD90(v62);

        if (v116)
        {
          v117 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_63;
          }

          *&aBlock = 32;
          *(&aBlock + 1) = 0xE100000000000000;
          MEMORY[0x223D42AA0](v114, v113);

          v113 = *(&aBlock + 1);
          v114 = aBlock;
        }

        else
        {
          v117 = v62;
        }

        v118 = sub_21DBFA12C();
        v119 = v160;
        v120 = v164;
        [v160 replaceCharactersInRange:v62 withString:{v164, v118}];

        v121 = [objc_opt_self() attributeFromHashtag_];
        v159 = v117;
        v162 = v115;
        [v119 rem:v121 addHashtag:v117 range:v115];

        v122 = v154;
        v124 = *v154;
        v123 = v154[1];
        v125 = v62;
        v127 = v154[2];
        v126 = v154[3];
        *v154 = 0u;
        *(v122 + 1) = 0u;
        sub_21D24A7C4(v124, v123);
        sub_21D24A814(v124, v123);
        *&aBlock = v124;
        *(&aBlock + 1) = v123;
        v172 = v127;
        v173 = v126;
        v128 = v170;
        sub_21D2429B4(&aBlock);
        v129 = v124;
        a6 = v128;
        sub_21D24A814(v129, v123);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v130 = *(v128 + 24);
          ObjectType = swift_getObjectType();
          (*(v130 + 32))(v128, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v125, v120, v114, v113, ObjectType, v130);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v133 = v162;
        if (Strong)
        {
          v134 = *(v128 + 24);
          v135 = swift_getObjectType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828);
          v136 = swift_allocObject();
          *(v136 + 16) = v147;
          v137 = v159;
          *(v136 + 32) = v103;
          *(v136 + 40) = v137;
          *(v136 + 48) = v133;
          v138 = v103;
          v139 = [v160 string];
          v140 = sub_21DBFA16C();
          v142 = v141;

          a6 = v170;
          *&aBlock = v136;
          *(&aBlock + 1) = v140;
          v172 = v142;
          (*(v134 + 40))(v170, &protocol witness table for TTRReminderCellHashtagEditingPresenter, &aBlock, v135, v134);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v60 = v165;
        v58 = v167;
LABEL_25:
        v59 = v166 - 2;
        v56 = v168 - 1;
        v35 = v161;
        if (v168 == 1)
        {
          goto LABEL_60;
        }
      }
    }

    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v40 = [v165 string];
    if (!v40)
    {
      goto LABEL_68;
    }

    v41 = *v33;
    v42 = v166 - *v33;
    if (__OFSUB__(v166, *v33))
    {
      goto LABEL_65;
    }

    v43 = v40;
    v44 = v33;
    v45 = swift_allocObject();
    v45[2] = v38;
    v45[3] = v39;
    v45[4] = v144;
    v174 = sub_21D24B3DC;
    v175 = v45;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v172 = sub_21D8682A8;
    v173 = &block_descriptor_26;
    v46 = _Block_copy(&aBlock);

    [v43 enumerateSubstringsInRange:v41 options:v42 usingBlock:{2, v46}];
    _Block_release(v46);
    swift_beginAccess();
    v47 = *(v39 + 16);
    v48 = v41 + v47;
    if (__OFADD__(v41, v47))
    {
      break;
    }

    v49 = *v44;
    v50 = v48 - *v44;
    if (__OFSUB__(v48, *v44))
    {
      goto LABEL_67;
    }

    v51 = v161;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_21D211158(0, *(v51 + 2) + 1, 1, v51);
    }

    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    v54 = v51;
    if (v53 >= v52 >> 1)
    {
      v54 = sub_21D211158((v52 > 1), v53 + 1, 1, v51);
    }

    *(v54 + 2) = v53 + 1;
    v35 = v54;
    v55 = &v54[16 * v53];
    *(v55 + 4) = v49;
    *(v55 + 5) = v50;
    v33 = v44;
    *v44 = v48;

    a6 = v170;
    v36 = *v44;
    if ((v163 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_8:
    ;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}