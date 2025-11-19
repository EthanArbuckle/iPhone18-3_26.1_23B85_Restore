uint64_t TTRReminderDetailInteractor.remove(attachment:)(void *a1)
{
  v3 = *(*(v1 + 56) + 16);

  v4 = [v3 attachmentContext];
  if (v4)
  {
    v5 = v4;
    [v4 removeAttachment_];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = a1;
    sub_21D182E74(sub_21D228D5C, v6);
  }

  return sub_21D9A6950(1);
}

uint64_t TTRReminderDetailInteractor.move(attachment:siblingTo:isAfter:)(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v4 = (a3 & 1);
  if (a2)
  {
    v4 = a2;
    v5 = a3;
  }

  else
  {
    v5 = 2;
  }

  v8 = v4;
  v9 = v5;
  v6 = a2;

  TTRReminderEditor.move(attachment:position:)(a1, &v8);

  sub_21D157478(v8, v9);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9A87B4(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);

  return sub_21D9A6950(1);
}

void TTRReminderDetailInteractor.newSubtask(at:didCreateSubtaskID:)(uint64_t a1, void (*a2)(void))
{
  v5 = v2;
  v8 = v2[11];
  if (!*(v2 + 96))
  {
    if (!v8)
    {
      v8 = MEMORY[0x277D84F90];
      v2[11] = MEMORY[0x277D84F90];
      *(v2 + 96) = 1;
      v10 = 0;
      v11 = 0;
LABEL_7:
      sub_21D9B10D8(v10, v11);
      v9 = v8 >> 62;
      if (!a1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

LABEL_6:
    sub_21D9A5668(&v22);
    v8 = v22;
    v2 = v2[11];
    v5[11] = v22;
    v3 = *(v5 + 96);
    *(v5 + 96) = 1;
    sub_21DBF8E0C();
    v10 = v2;
    v11 = v3;
    goto LABEL_7;
  }

  if (*(v2 + 96) != 1)
  {
    goto LABEL_6;
  }

  sub_21DBF8E0C();
  v9 = v8 >> 62;
  if (!a1)
  {
LABEL_4:
    v3 = 0;
    v4 = 2;
    goto LABEL_16;
  }

LABEL_8:
  if (!v9)
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= 1)
    {
      goto LABEL_10;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = sub_21DBFBD7C();
  if (v12 < 1)
  {
    goto LABEL_31;
  }

LABEL_10:
  v13 = a1 - 1;
  if (a1 < 1 || v12 < a1)
  {

    if (qword_27CE56F30 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x223D44740](v13, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
    {
      __break(1u);
      return;
    }

    v14 = *(v8 + 8 * v13 + 32);
  }

  v3 = v14;
  v4 = 1;
LABEL_16:
  v22 = v3;
  v23 = v4;

  sub_21D157850(v3, v4);
  v2 = sub_21D9D6DF4(0, 0xE000000000000000, &v22);

  sub_21D157478(v22, v23);
  if (v2)
  {
    v22 = v8;
    if (!v9)
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
      {
LABEL_19:
        v21 = v2;
        sub_21DBD15A8(a1, a1, v21);

        v15 = v5[11];
        v5[11] = v22;
        v16 = *(v5 + 96);
        *(v5 + 96) = 1;
        sub_21D9B10D8(v15, v16);
        v17 = [v21 objectID];
        a2();

        sub_21D9A6950(1);
        sub_21D157478(v3, v4);
LABEL_23:

        return;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (sub_21DBFBD7C() >= a1)
    {
      goto LABEL_19;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_21:
    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE64808);
    v21 = sub_21DBF84AC();
    v19 = sub_21DBFAECC();
    if (os_log_type_enabled(v21, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a1;
      _os_log_impl(&dword_21D0C9000, v21, v19, "Invalid index %ld for newSubtask", v20, 0xCu);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_23;
  }

  sub_21D157478(v3, v4);
}

uint64_t TTRReminderDetailInteractor.update(title:for:)(void *a1, void *a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_21D0D3954(v10, v9, &unk_27CE60D80);
  type metadata accessor for TTRReminderEditor();
  v4 = swift_allocObject();
  *(v4 + 72) = 0;
  *(v4 + 16) = a2;
  sub_21D0D3954(v9, v4 + 24, &unk_27CE60D80);
  *(v4 + 64) = 0;
  v5 = [a2 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v10, &unk_27CE60D80);
  sub_21D0CF7E0(v9, &unk_27CE60D80);
  *(v4 + 72) = v5;
  v6 = sub_21D9CA3E0(a1, 0, 1);
  if (v6)
  {
    v7 = v6;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v7);
  }

  sub_21D9A6950(1);
}

uint64_t sub_21D9A8D08(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);

  return sub_21D9A6950(1);
}

uint64_t TTRReminderDetailInteractor.update(edits:)(void (*a1)(uint64_t))
{

  a1(v2);

  return sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.registerUndo(byDraining:)(NSUndoManager *byDraining)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = v3;
  v6 = v4;
  v7 = [v6 saveRequest];
  v8 = [v7 store];

  if ([(NSUndoManager *)byDraining canUndo])
  {
    v9 = swift_allocObject();
    *(v9 + 16) = byDraining;
    *(v9 + 24) = v8;
    sub_21D0D8CF0(0, &unk_280D17840);
    v10 = byDraining;
    v11 = v8;
    sub_21DBFAE8C();
  }
}

void TTRReminderDetailInteractor.save()(void *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_21DBF4CAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v1 + 40);
  v8 = [v7 titleAsString];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = sub_21DBFA16C();
  v12 = v11;

  v51[0] = v10;
  v51[1] = v12;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v13 = sub_21DBFBB3C();
  v15 = v14;
  (*(v4 + 8))(v6, v3);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_5:
    v17 = *(v2 + 72);
    v18 = v17[20];
    v19 = v17[14];
    v20 = v17[8];
    v52[0] = v18;
    v52[1] = v19;
    v52[2] = v20;
    v21 = v20;
    v22 = v18;
    v23 = v19;
    TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v51);

    _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(v51);
    sub_21D0CF7E0(v51, &qword_27CE59DC0);
    v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v25 = sub_21DBFA12C();

    v26 = [v24 initWithString_];

    v27 = sub_21D9CA3E0(v26, 0, 1);
    if (v27)
    {
      v28 = v27;
      swift_retain_n();
      sub_21D182E74(sub_21D233058, v28);
    }

    sub_21D9A6950(1);
  }

  v29 = *(v2 + 72);

  v31 = sub_21DB4DCD4(v30, v29, v2);

  v32 = *(v2 + 72);
  v33 = *(v32 + 160);
  if (v33)
  {
    v34 = 1;
    v35 = *(v32 + 160);
  }

  else
  {
    v35 = *(v32 + 112);
    if (v35)
    {
      v36 = v35;
      v34 = 0;
    }

    else
    {
      v34 = -1;
    }
  }

  v37 = *(v32 + 120);
  v38 = *(v32 + 128);
  v39 = *(v32 + 136);
  v40 = *(v32 + 144);
  v41 = *(v32 + 152);
  v42 = v31;
  sub_21D575E44(v37, v38, v39, v40);
  sub_21D575E44(v37, v38, v39, v40);
  v43 = v33;
  sub_21D157864(v35, v34);
  sub_21D575DF4(v37, v38, v39, v40);
  if (v40 != 1)
  {
    if (v38 == 1)
    {
      if (v40)
      {
        v51[0] = v37;
        swift_bridgeObjectRetain_n();
        sub_21D15751C(v37);
        TTRReminderDetailInteractor.addSection(withDisplayName:originalSectionID:isFromSuggestion:)(v39, v40, v51, v41 & 1);
        swift_bridgeObjectRelease_n();
        sub_21D575DF4(v37, 1, v39, v40);
        sub_21D157878(v37);
      }

      else
      {
        sub_21D575DF4(v37, 1, v39, 0);
      }
    }

    else
    {
      v51[0] = v38;
      v52[0] = v37;
      sub_21D15751C(v38);
      sub_21D15751C(v37);
      sub_21D9A9454(v51, v52);
      sub_21D575DF4(v37, v38, v39, v40);
      sub_21D157878(v52[0]);
      sub_21D157878(v38);
    }
  }

  *(swift_allocObject() + 16) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();
  v44 = v42;
  v45 = sub_21DBF911C();
  v46 = [v44 saveRequest];
  v47 = [v46 store];

  v48 = [v47 optimisticallyMaterializeReminderChangeItem_];
  v49 = v50;
  *v50 = v48;
  v49[1] = v45;
}

void sub_21D9A9454(void **a1, void **a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  v5 = [*(v2 + 40) listChangeItem];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 objectID];
    v8 = [v7 entityName];

    v9 = sub_21DBFA16C();
    v11 = v10;

    v12 = [objc_opt_self() cdEntityName];
    v13 = sub_21DBFA16C();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
    }

    else
    {
      v17 = sub_21DBFC64C();

      if ((v17 & 1) == 0)
      {
        v35 = v4;
        v36[0] = v3;
        sub_21D9AAFE8(v6, v36, &v35);

        return;
      }
    }

    v18 = [*(v2 + 40) saveRequest];
    v19 = [v18 store];

    v20 = [v6 objectID];
    v36[0] = 0;
    v21 = [v19 fetchTemplateWithObjectID:v20 error:v36];

    v22 = v36[0];
    if (v21)
    {
      v35 = v4;
      v36[0] = v3;
      v23 = v22;
      sub_21D9AA810(v21, v36, &v35);
    }

    else
    {
      v24 = v36[0];
      v25 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE56F30 != -1)
      {
        swift_once();
      }

      v26 = sub_21DBF84BC();
      __swift_project_value_buffer(v26, qword_27CE64808);
      v27 = v25;
      v28 = sub_21DBF84AC();
      v29 = sub_21DBFAEBC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v36[0] = v31;
        *v30 = 136315138;
        swift_getErrorValue();
        v32 = sub_21DBFC75C();
        v34 = sub_21D0CDFB4(v32, v33, v36);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_21D0C9000, v28, v29, "Unable to fetch Template {error: %s}", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x223D46520](v31, -1, -1);
        MEMORY[0x223D46520](v30, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_21D9A9800(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = [a3 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v8 = sub_21DBFB12C();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D1D1AB4;
  *(v9 + 24) = v6;
  v11[4] = sub_21D9B187C;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D11E5E4;
  v11[3] = &block_descriptor_126;
  v10 = _Block_copy(v11);

  [v7 saveWithQueue:v8 completion:v10];
  _Block_release(v10);
}

void sub_21D9A9958(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE64808);
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_21DBFC74C();
      v13 = sub_21D0CDFB4(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Error saving reminder: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    v14 = a1;
    a2(a1, 1);
  }

  else
  {
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE64808);
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAE9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Reminder saved!", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    a2(0, 0);
  }
}

Swift::Void __swiftcall TTRReminderDetailInteractor.discardChanges()()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    swift_beginAccess();
    v4 = *(v0 + 40);
    sub_21D9B1170(v1, v2, v3);
    v5 = v4;
    v6 = [v5 saveRequest];
    v7 = [v6 store];

    v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v8 setSaveIsNoopIfNoChangedKeys_];

    sub_21D25AAE4(v8, v1, v2, v3);
    v12 = *(v0 + 72);
    v14 = v13;

    sub_21DB4CD48(0);
    v15 = *(v12 + 120);
    v16 = *(v12 + 128);
    v17 = *(v12 + 136);
    v18 = *(v12 + 144);
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
    *(v12 + 136) = 0;
    *(v12 + 144) = 1;
    *(v12 + 152) = 0;
    sub_21D575DF4(v15, v16, v17, v18);
    v19 = *(v12 + 160);
    *(v12 + 160) = 0;

    swift_beginAccess();
    [*(v0 + 32) removeAllActions];
    sub_21D9A497C(v14, 0x4364726163736964, 0xEE007365676E6168);
  }

  else
  {
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE64808);
    oslog = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v10, "TTRReminderDetailInteractor#discardChanges: missing initialReminderSnapshot", v11, 2u);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }
}

void TTRReminderDetailInteractor.applySavedResult(_:)(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v3 = *(v1 + 40);
    v4 = v2;
    v5 = v3;
    v6 = [v5 saveRequest];
    v7 = [v6 store];

    v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v8 setSaveIsNoopIfNoChangedKeys_];
    v9 = [v8 updateReminder_];
    v10 = *(v1 + 72);

    v11 = v1;
    sub_21DB4CD48(0);
    v12 = *(v10 + 120);
    v13 = *(v10 + 128);
    v14 = *(v10 + 136);
    v15 = *(v10 + 144);
    *(v10 + 120) = 0;
    *(v10 + 128) = 0;
    *(v10 + 136) = 0;
    *(v10 + 144) = 1;
    *(v10 + 152) = 0;
    sub_21D575DF4(v12, v13, v14, v15);
    v16 = *(v10 + 160);
    *(v10 + 160) = 0;

    sub_21DBFBEEC();
    sub_21DBFC8EC();

    MEMORY[0x223D42AA0](0xD000000000000011, 0x800000021DC72380);
    v17 = objc_allocWithZone(TTRUndoManager);
    v18 = sub_21DBFA12C();

    v19 = [v17 initWithDebugIdentifier_];

    swift_beginAccess();
    v20 = *(v11 + 32);
    *(v11 + 32) = v19;
    v21 = v19;

    sub_21D550F48(v21, v11, sub_21D9AA3B0, 0);
    sub_21DBF902C();
    swift_allocObject();
    *(v11 + 64) = sub_21DBF903C();

    sub_21D9A497C(v9, 0xD000000000000010, 0x800000021DC723A0);
  }

  else
  {
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_27CE64808);
    oslog = sub_21DBF84AC();
    v23 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v23, "TTRReminderDetailInteractor#discardChanges: missing optimistic reminder", v24, 2u);
      MEMORY[0x223D46520](v24, -1, -1);
    }
  }
}

uint64_t sub_21D9AA3B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v5 = *(*(a1 + 56) + 16);
    v6 = *(v3 + 8);
    v7 = v5;
    v6(v5, sub_21D9B1E38, a1, 1, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D9AA478(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [v3 removeObserver_];

  swift_unknownObjectRelease();
  v4 = [v2 defaultCenter];
  __swift_project_boxed_opaque_existential_1(a1 + 6, a1[9]);
  [v4 removeObserver_];

  return swift_unknownObjectRelease();
}

void sub_21D9AA568()
{
  swift_beginAccess();
  v1 = sub_21D25ACE4(*(v0 + 40));
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  *(v0 + 184) = v1;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;
  sub_21D6396C0(v2, v3, v4);
}

uint64_t sub_21D9AA74C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!*(a1 + 96))
  {
    if (!v2)
    {
      v2 = MEMORY[0x277D84F90];
      *(a1 + 88) = MEMORY[0x277D84F90];
      *(a1 + 96) = 1;
      v5 = 0;
      v6 = 0;
      goto LABEL_6;
    }

LABEL_5:
    sub_21D9A5668(&v9);
    v2 = v9;
    v3 = *(a1 + 88);
    *(a1 + 88) = v9;
    v4 = *(a1 + 96);
    *(a1 + 96) = 1;
    sub_21DBF8E0C();
    v5 = v3;
    v6 = v4;
LABEL_6:
    sub_21D9B10D8(v5, v6);
    goto LABEL_7;
  }

  if (*(a1 + 96) != 1)
  {
    goto LABEL_5;
  }

  sub_21DBF8E0C();
LABEL_7:
  v9 = v2;
  v7 = TTRReminderDetailSubtaskChangeItemsIncludingUnsupported.allExceptUnsupported.getter();

  return v7;
}

void sub_21D9AA810(uint64_t a1, void **a2, void **a3)
{
  v4 = v3;
  v81 = *MEMORY[0x277D85DE8];
  v8 = sub_21DBF6D7C();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *a2;
  v10 = *a3;
  swift_beginAccess();
  v11 = [*(v4 + 40) saveRequest];
  swift_beginAccess();
  v12 = *(v4 + 32);
  v13 = type metadata accessor for TTRBasicUndoContext();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(&v75 + 1) = v13;
  *&v76 = &protocol witness table for TTRBasicUndoContext;
  *&v74 = v14;
  sub_21D0D3954(&v74, &v78, &unk_27CE60D80);
  v15 = v12;
  v16 = [v11 updateTemplate_];
  sub_21D0CF7E0(&v74, &unk_27CE60D80);
  type metadata accessor for TTRTemplateEditor();
  v17 = swift_allocObject();
  v18 = 0;
  *(v17 + 16) = v16;
  v19 = v79;
  *(v17 + 24) = v78;
  *(v17 + 40) = v19;
  *(v17 + 56) = v80;
  *(v17 + 64) = 0;
  if (v10 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64848);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    v21 = *(v4 + 40);
    v22 = v10;
    *(inited + 32) = [v21 remObjectID];
    *(inited + 40) = v10;
    v18 = sub_21D1778CC(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE64850);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v23 = swift_initStackObject();
  v69 = xmmword_21DC09CF0;
  *(v23 + 16) = xmmword_21DC09CF0;
  *(v23 + 32) = [*(v4 + 40) remObjectID];
  sub_21D1CE198(v23);
  v25 = v24;
  swift_setDeallocating();
  swift_arrayDestroy();
  *&v74 = v73;
  TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v25, &v74, v18);

  v26 = *(v4 + 160);
  v76 = *(v4 + 144);
  v77 = v26;
  v27 = *(v4 + 128);
  v74 = *(v4 + 112);
  v75 = v27;
  v28 = v17;
  v29 = v74;
  if (v74)
  {
    v68 = v28;
    v30 = v76;
    v67 = WORD4(v76);
    v31 = *(&v77 + 1);
    v66 = v77;
    v32 = v11;
    v33 = *(&v74 + 1);
    v34 = v75;
    v35 = v30;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v73 = v32;
    v36 = [v32 store];
    v37 = [*(v4 + 40) remObjectID];
    *&v78 = 0;
    v38 = [v36 fetchReminderWithObjectID:v37 error:&v78];

    v39 = v78;
    if (v38)
    {
      v40 = swift_initStackObject();
      *(v40 + 16) = v69;
      *(v40 + 32) = v38;
      *&v78 = MEMORY[0x277D84F90];
      v41 = v39;
      v63 = v35;
      v65 = v31;
      sub_21DBF8E0C();
      v64 = v29;
      sub_21DBF8E0C();
      *&v69 = v33;
      sub_21DBF8E0C();
      v42 = v38;
      sub_21D18E718(0, 1, 0);
      v43 = v78;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x223D44740](0, v40);
      }

      else
      {
        v44 = *(v40 + 32);
      }

      v45 = v44;
      v46 = v70;

      v47 = [v45 remObjectID];
      sub_21DBFADFC();

      [v45 isCompleted];
      sub_21DBF6D4C();

      v49 = v43[2];
      v48 = v43[3];
      v50 = v65;
      if (v49 >= v48 >> 1)
      {
        sub_21D18E718(v48 > 1, v49 + 1, 1);
        v43 = v78;
      }

      sub_21D0D8CF0(0, &qword_27CE59830);
      v43[2] = v49 + 1;
      (*(v71 + 32))(v43 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v49, v46, v72);
      v78 = xmmword_21DC08D00;
      *&v79 = 0;
      v51 = sub_21D39D1B0(v63, v67, v66, v50, v64, v69, v43, 0, &v78);
      LOBYTE(v78) = 1;
      sub_21D866814(v51);

      sub_21D0CF7E0(&v74, &qword_27CE59DD8);
      v11 = v73;
    }

    else
    {
      v52 = v78;
      v53 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE56F30 != -1)
      {
        swift_once();
      }

      v54 = sub_21DBF84BC();
      __swift_project_value_buffer(v54, qword_27CE64808);
      v55 = v53;
      v56 = sub_21DBF84AC();
      v57 = sub_21DBFAEBC();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v78 = v59;
        *v58 = 136315138;
        swift_getErrorValue();
        v60 = sub_21DBFC75C();
        v62 = sub_21D0CDFB4(v60, v61, &v78);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_21D0C9000, v56, v57, "Unable to fetch reminders {error: %s}", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x223D46520](v59, -1, -1);
        MEMORY[0x223D46520](v58, -1, -1);

        sub_21D0CF7E0(&v74, &qword_27CE59DD8);
      }

      else
      {

        sub_21D0CF7E0(&v74, &qword_27CE59DD8);
      }

      v11 = v73;
    }
  }

  sub_21D9A6950(1);
}

uint64_t sub_21D9AAFE8(void *a1, void **a2, void **a3)
{
  v5 = *a2;
  v6 = *a3;
  swift_beginAccess();
  v7 = *(v3 + 32);
  v8 = a1;
  v9 = v7;
  v10 = sub_21D9B0C90(v8, v7);

  v11 = 0;
  if (v6 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64848);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    swift_beginAccess();
    v13 = *(v3 + 40);
    v14 = v6;
    *(inited + 32) = [v13 remObjectID];
    *(inited + 40) = v6;
    v11 = sub_21D1778CC(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE64850);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_21DC09CF0;
  swift_beginAccess();
  *(v15 + 32) = [*(v3 + 40) remObjectID];
  sub_21D1CE198(v15);
  v17 = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  v25 = v5;
  TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v17, &v25, v11);

  v18 = *(v3 + 40);
  v19 = *(v10 + 16);
  LOBYTE(v25) = 0;
  v20 = v18;
  v21 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v20, MEMORY[0x277D84F90], v19, 0, 0, &v25);
  v25 = 1;
  v26 = 2;
  sub_21D1BF7A0(v21, v22, &v25);

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21DC09CF0;
  *(v23 + 32) = [v20 objectID];
  sub_21D1BF9F4();

  sub_21D9A6950(1);
}

uint64_t sub_21D9AB294(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 208);
    if (v5 != (a3 & 1))
    {
      *(result + 208) = a3 & 1;
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      sub_21D182E74(sub_21D9B1E48, v7);
    }
  }

  return result;
}

uint64_t TTRReminderDetailInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  sub_21D9B10D8(*(v0 + 88), *(v0 + 96));

  sub_21D9B11C0(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_21D22BF80(*(v0 + 176));
  sub_21D6396C0(*(v0 + 184), *(v0 + 192), *(v0 + 200));
  return v0;
}

uint64_t TTRReminderDetailInteractor.__deallocating_deinit()
{
  TTRReminderDetailInteractor.deinit();

  return swift_deallocClassInstance();
}

id sub_21D9AB448()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

id sub_21D9AB490()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

id sub_21D9AB4DC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = v2[20];
  v8 = v2[14];
  v4 = v2[8];
  *a1 = v3;
  a1[1] = v8;
  a1[2] = v4;
  v5 = v4;
  v6 = v3;

  return v8;
}

uint64_t sub_21D9AB540()
{

  v1 = TTRReminderDetailPendingMoveInteractorCapability.hasUncommittedChanges.getter();

  if (v1)
  {
    return 1;
  }

  return sub_21D9B0EC0(v0);
}

void sub_21D9AB5B4(void *a1@<X8>)
{
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    if (*(v1 + 208))
    {
      v2 = 0;
    }

    else
    {
      v3 = a1;
      v4 = v2;
      a1 = v3;
    }

    *a1 = v2;
  }

  else
  {
    *a1 = v2;

    sub_21D568328(v2);
  }
}

uint64_t sub_21D9AB620(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  TTRReminderDetailPendingMoveInteractorCapability.update(parentList:)(&v3);
}

uint64_t sub_21D9AB680(int a1)
{

  TTRReminderEditor.edit(completed:trackEditedUsing:)(a1, 0);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9AB6E4()
{

  v0 = REMReminderDefaultPriorityForPriorityLevel();
  TTRReminderEditor.edit(priority:)(v0);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9AB748(Swift::Bool a1)
{

  TTRReminderEditor.edit(isFlagged:)(a1);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9AB7C4(void *a1)
{

  TTRReminderEditor.edit(dueDateDeltaAlertInterval:)(a1);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9AB824(char a1)
{
  v2 = v1;
  v4 = *(v2 + 56);
  v5 = *(v4 + 16);

  LOBYTE(v5) = [v5 prefersUrgentPresentationStyleForDateAlarms];
  [*(v4 + 16) setPrefersUrgentPresentationStyleForDateAlarms_];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_21D182E74(sub_21D9B1E4C, v6);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9AB94C()
{

  TTRReminderEditor.removeAllAssignments()();

  return sub_21D9A6950(1);
}

uint64_t sub_21D9AB9A0(uint64_t a1, uint64_t a2, char a3, void **a4)
{
  v8 = *a4;

  TTRReminderDetailPendingMoveInteractorCapability.updateSection(sectionDisplayName:isFromSuggestion:originalSectionID:)(a1, a2, a3, &v8);
}

uint64_t sub_21D9ABA54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a1);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9ABADC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a1);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9ABB44(void (*a1)(uint64_t))
{

  a1(v2);

  return sub_21D9A6950(1);
}

uint64_t sub_21D9ABBBC(uint64_t result, unint64_t a2, char a3)
{
  v31 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_75;
  }

  if (a3)
  {
    sub_21D8AC658();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_21D8B14F4();
      goto LABEL_75;
    }

    sub_21D8B2954();
  }

  v7 = *v3;
  sub_21DBFC7DC();
  sub_21D621F3C(v31);
  sub_21DBFA27C();

  result = sub_21DBFC82C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = ~v8;
    do
    {
      v9 = *(*(v7 + 48) + a2);
      if (v9 > 5)
      {
        if (*(*(v7 + 48) + a2) > 8u)
        {
          if (v9 == 9)
          {
            v10 = 0xD00000000000001DLL;
            v11 = 0x800000021DC43890;
          }

          else if (v9 == 10)
          {
            v10 = 0xD000000000000017;
            v11 = 0x800000021DC438B0;
          }

          else
          {
            v10 = 0x726F737365636361;
            v11 = 0xEB00000000736569;
          }
        }

        else if (v9 == 6)
        {
          v10 = 0xD000000000000017;
          v11 = 0x800000021DC43840;
        }

        else if (v9 == 7)
        {
          v10 = 0xD000000000000013;
          v11 = 0x800000021DC43860;
        }

        else
        {
          v10 = 0x53746E65746E6F63;
          v11 = 0xEC0000006B636174;
        }
      }

      else if (*(*(v7 + 48) + a2) > 2u)
      {
        if (v9 == 3)
        {
          v11 = 0xE500000000000000;
          v10 = 0x656C746974;
        }

        else if (v9 == 4)
        {
          v10 = 0x6F6E6E4177656976;
          v11 = 0xEE006E6F69746174;
        }

        else
        {
          v10 = 0x65646E496C6C6563;
          v11 = 0xEF6E6F697461746ELL;
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v9 == 1)
        {
          v10 = 0x6574656C706D6F63;
        }

        else
        {
          v10 = 0x797469726F697270;
        }

        if (v9 == 1)
        {
          v11 = 0xEF6E6F7474754264;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }

      else
      {
        v10 = 0x656E6961746E6F63;
        v11 = 0xED00007765695672;
      }

      v12 = 0xD00000000000001DLL;
      v13 = 0x726F737365636361;
      if (v31 == 10)
      {
        v13 = 0xD000000000000017;
      }

      v14 = 0xEB00000000736569;
      if (v31 == 10)
      {
        v14 = 0x800000021DC438B0;
      }

      if (v31 == 9)
      {
        v15 = 0x800000021DC43890;
      }

      else
      {
        v12 = v13;
        v15 = v14;
      }

      v16 = 0xD000000000000013;
      if (v31 != 7)
      {
        v16 = 0x53746E65746E6F63;
      }

      v17 = 0xEC0000006B636174;
      if (v31 == 7)
      {
        v17 = 0x800000021DC43860;
      }

      if (v31 == 6)
      {
        v16 = 0xD000000000000017;
        v17 = 0x800000021DC43840;
      }

      if (v31 <= 8u)
      {
        v12 = v16;
        v15 = v17;
      }

      v18 = 0x6F6E6E4177656976;
      if (v31 != 4)
      {
        v18 = 0x65646E496C6C6563;
      }

      v19 = 0xEF6E6F697461746ELL;
      if (v31 == 4)
      {
        v19 = 0xEE006E6F69746174;
      }

      if (v31 == 3)
      {
        v18 = 0x656C746974;
        v19 = 0xE500000000000000;
      }

      v20 = 0x797469726F697270;
      if (v31 == 1)
      {
        v20 = 0x6574656C706D6F63;
      }

      v21 = 0xEF6E6F7474754264;
      if (v31 != 1)
      {
        v21 = 0xE800000000000000;
      }

      if (!v31)
      {
        v20 = 0x656E6961746E6F63;
        v21 = 0xED00007765695672;
      }

      if (v31 <= 2u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v31 <= 5u ? v18 : v12;
      v23 = v31 <= 5u ? v19 : v15;
      if (v10 == v22 && v11 == v23)
      {
        goto LABEL_78;
      }

      v24 = sub_21DBFC64C();

      if (v24)
      {
        goto LABEL_79;
      }

      a2 = (a2 + 1) & v30;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_75:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v31;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_78:

LABEL_79:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

void sub_21D9AC0C0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8ACA8C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B1508();
      goto LABEL_12;
    }

    sub_21D8B2D58(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21D0D8CF0(0, &qword_280D17880);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

void sub_21D9AC230(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8ACAA0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B151C();
      goto LABEL_12;
    }

    sub_21D8B2D6C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21DBF634C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AC390(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_21D8ACAB4();
  }

  else
  {
    if (v14 > v13)
    {
      sub_21D8B1530();
      goto LABEL_12;
    }

    v26 = v10;
    sub_21D8B2D80();
  }

  v15 = *v4;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)();
  v16 = sub_21DBFC82C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_21D9B1D60(*(v15 + 48) + v19 * a2, v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v20 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v12, a1);
      sub_21D9B1DC8(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AC5D4(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_21D8ACDBC();
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a4;
      result = sub_21D8B156C();
      a4 = v11;
      goto LABEL_18;
    }

    sub_21D8B3058();
  }

  v12 = *v5;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v8);
  MEMORY[0x223D44FA0](a2);
  MEMORY[0x223D44FA0](a3 & 1);
  result = sub_21DBFC82C();
  v13 = -1 << *(v12 + 32);
  a4 = result & ~v13;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    while (1)
    {
      v15 = *(v12 + 48) + 24 * a4;
      v16 = *v15 == v8 && *(v15 + 8) == a2;
      if (v16 && ((*(v15 + 16) ^ a3) & 1) == 0)
      {
        break;
      }

      a4 = (a4 + 1) & v14;
      if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = sub_21DBFC6FC();
    __break(1u);
  }

LABEL_18:
  v17 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v18 = *(v17 + 48) + 24 * a4;
  *v18 = v8;
  *(v18 + 8) = a2;
  *(v18 + 16) = a3 & 1;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_21D9AC810(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21D8AD06C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21D8B16EC();
      goto LABEL_16;
    }

    sub_21D8B32D8();
  }

  v10 = *v4;
  sub_21DBFC7DC();
  sub_21DBFA27C();
  result = sub_21DBFC82C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21DBFC64C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

void sub_21D9AC990(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AD2CC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B1848();
      goto LABEL_12;
    }

    sub_21D8B3510(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21D0D8CF0(0, &qword_280D0C348);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9ACB00(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_21D8AD2E0();
  }

  else
  {
    if (v14 > v13)
    {
      sub_21D8B185C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_21D8B3524();
  }

  v15 = *v4;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.SectionID.hash(into:)();
  v16 = sub_21DBFC82C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_21D9B1D60(*(v15 + 48) + v19 * a2, v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v20 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v12, a1);
      sub_21D9B1DC8(v12, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9ACD44(void *a1, unint64_t a2, char a3)
{
  v59 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v57);
  v43 = &v43 - v6;
  v58 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v7 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v45 = v3;
  v44 = v7;
  if (v19 <= v18 || (a3 & 1) == 0)
  {
    v47 = v15;
    if (a3)
    {
      sub_21D8AD5E8();
    }

    else
    {
      if (v19 > v18)
      {
        sub_21D8B1AA0();
        goto LABEL_22;
      }

      sub_21D8B37FC();
    }

    v48 = *v3;
    sub_21DBFC7DC();
    v20 = v59;
    v21 = *v59;
    sub_21DBFB64C();
    v56 = *(v58 + 20);
    sub_21D0D3954(v20 + v56, v17, &unk_27CE5CD70);
    v23 = *(v11 + 48);
    v22 = v11 + 48;
    v55 = v23;
    if (v23(v17, 1, v10) == 1)
    {
      sub_21DBFC7FC();
    }

    else
    {
      v24 = v46;
      sub_21D8B7748(v17, v46, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DBFC7FC();
      TTRRemindersListViewModel.SectionID.hash(into:)();
      sub_21D9B1DC8(v24, type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    v25 = sub_21DBFC82C();
    v26 = v48;
    v27 = v48 + 56;
    v28 = -1 << *(v48 + 32);
    a2 = v25 & ~v28;
    if ((*(v48 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v53 = v22;
      v54 = v10;
      v29 = ~v28;
      v60 = sub_21D0D8CF0(0, &qword_280D17680);
      v30 = *(v7 + 72);
      v17 = v43;
      v51 = v30;
      v52 = v29;
      v49 = v21;
      v50 = v27;
      do
      {
        sub_21D9B1D60(*(v26 + 48) + v30 * a2, v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        if (sub_21DBFB63C())
        {
          v33 = *(v57 + 48);
          sub_21D0D3954(&v9[*(v58 + 20)], v17, &unk_27CE5CD70);
          sub_21D0D3954(v59 + v56, &v17[v33], &unk_27CE5CD70);
          v34 = v54;
          v35 = v55;
          if (v55(v17, 1, v54) == 1)
          {
            v36 = v35(&v17[v33], 1, v34);
            v29 = v52;
            if (v36 == 1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v37 = v47;
            sub_21D0D3954(v17, v47, &unk_27CE5CD70);
            if (v35(&v17[v33], 1, v34) != 1)
            {
              v31 = v46;
              sub_21D8B7748(&v17[v33], v46, type metadata accessor for TTRRemindersListViewModel.SectionID);
              v32 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v37, v31);
              sub_21D9B1DC8(v31, type metadata accessor for TTRRemindersListViewModel.SectionID);
              sub_21D9B1DC8(v37, type metadata accessor for TTRRemindersListViewModel.SectionID);
              sub_21D0CF7E0(v17, &unk_27CE5CD70);
              v26 = v48;
              v27 = v50;
              v30 = v51;
              v29 = v52;
              if (v32)
              {
                goto LABEL_26;
              }

              goto LABEL_14;
            }

            sub_21D9B1DC8(v37, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v26 = v48;
            v29 = v52;
          }

          sub_21D0CF7E0(v17, &qword_27CE58388);
          v27 = v50;
          v30 = v51;
        }

LABEL_14:
        sub_21D9B1DC8(v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        a2 = (a2 + 1) & v29;
      }

      while (((*(v27 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v38 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(v59, *(v38 + 48) + *(v44 + 72) * a2, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_25:
    sub_21D0CF7E0(v17, &unk_27CE5CD70);
LABEL_26:
    sub_21D9B1DC8(v9, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    result = sub_21DBFC6FC();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

uint64_t sub_21D9AD3D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_21D8ADAB4();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_21D8B1ADC();
      a3 = v9;
      goto LABEL_15;
    }

    sub_21D8B3C94();
  }

  v10 = *v4;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v6);
  MEMORY[0x223D44FA0](a2);
  result = sub_21DBFC82C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

void sub_21D9AD544(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8ADD1C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B1C20();
      goto LABEL_12;
    }

    sub_21D8B3ECC(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21D0D8CF0(0, &qword_280D176A0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AD6B4(uint64_t a1, unint64_t a2, char a3)
{
  v52 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v51);
  v7 = &v39 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = *(*v3 + 16);
  v21 = *(*v3 + 24);
  v41 = v3;
  if (v21 <= v20 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v40 = v17;
      sub_21D8ADD30();
    }

    else
    {
      if (v21 > v20)
      {
        sub_21D8B1C34();
        goto LABEL_21;
      }

      v40 = v17;
      sub_21D8B3EE0();
    }

    v22 = *v3;
    sub_21DBFC7DC();
    sub_21D0D3954(v52, v19, &qword_27CE5FB90);
    v24 = *(v9 + 48);
    v23 = v9 + 48;
    v49 = v24;
    if (v24(v19, 1, v8) == 1)
    {
      sub_21DBFC7FC();
    }

    else
    {
      v25 = v44;
      sub_21D8B7748(v19, v44, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DBFC7FC();
      TTRRemindersListViewModel.ItemID.hash(into:)();
      sub_21D9B1DC8(v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

    v26 = sub_21DBFC82C();
    v27 = -1 << *(v22 + 32);
    a2 = v26 & ~v27;
    v48 = v22 + 56;
    if ((*(v22 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v47 = ~v27;
      v46 = *(v43 + 72);
      v42 = v8;
      do
      {
        sub_21D0D3954(*(v22 + 48) + v46 * a2, v15, &qword_27CE5FB90);
        v32 = *(v51 + 48);
        sub_21D0D3954(v15, v7, &qword_27CE5FB90);
        sub_21D0D3954(v52, &v7[v32], &qword_27CE5FB90);
        v33 = v49;
        if (v49(v7, 1, v8) == 1)
        {
          sub_21D0CF7E0(v15, &qword_27CE5FB90);
          if (v33(&v7[v32], 1, v8) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_21D0D3954(v7, v50, &qword_27CE5FB90);
          if (v33(&v7[v32], 1, v8) != 1)
          {
            v28 = v50;
            v29 = v23;
            v30 = v44;
            sub_21D8B7748(&v7[v32], v44, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v45 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v28, v30);
            v31 = v30;
            v23 = v29;
            v8 = v42;
            sub_21D9B1DC8(v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D0CF7E0(v15, &qword_27CE5FB90);
            sub_21D9B1DC8(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
            sub_21D0CF7E0(v7, &qword_27CE5FB90);
            if (v45)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_21D0CF7E0(v15, &qword_27CE5FB90);
          sub_21D9B1DC8(v50, type metadata accessor for TTRRemindersListViewModel.ItemID);
        }

        sub_21D0CF7E0(v7, &qword_27CE5F2E0);
LABEL_14:
        a2 = (a2 + 1) & v47;
      }

      while (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v34 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D66A69C(v52, *(v34 + 48) + *(v43 + 72) * a2);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_24:
    sub_21D0CF7E0(v7, &qword_27CE5FB90);
LABEL_25:
    result = sub_21DBFC6FC();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

uint64_t sub_21D9ADC54(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_21D8AE190();
  }

  else
  {
    if (v14 > v13)
    {
      sub_21D8B1E4C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_21D8B4308();
  }

  v15 = *v4;
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)();
  v16 = sub_21DBFC82C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_21D9B1D60(*(v15 + 48) + v19 * a2, v12, type metadata accessor for TTRRecurrenceRuleModel);
      v20 = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_21D9B1DC8(v12, type metadata accessor for TTRRecurrenceRuleModel);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for TTRRecurrenceRuleModel);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9ADEE0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v42 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a3)
  {
    sub_21D8AE440();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_21D8B1E9C();
      goto LABEL_54;
    }

    sub_21D8B4584();
  }

  v8 = *v3;
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)();
  result = sub_21DBFC82C();
  v9 = v8 + 56;
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v5[1];
    v49 = *v5;
    v13 = v5[3];
    v43 = v5[2];
    v39 = v5[4];
    v44 = v5[5];
    v37 = v5[6];
    v40 = v5[7];
    v36 = v5[8];
    v38 = v5[9];
    v14 = *(v8 + 48);
    v46 = ~v10;
    v47 = v8 + 56;
    v48 = v13;
    v45 = v14;
    do
    {
      v15 = (v14 + 80 * a2);
      v16 = v15[1];
      v17 = v15[2];
      v19 = v15[3];
      v18 = v15[4];
      v20 = v15[5];
      v21 = v15[6];
      v22 = v15[7];
      v23 = v15[8];
      v24 = v15[9];
      if (v16)
      {
        if (!v12)
        {
          goto LABEL_11;
        }

        result = *v15;
        if (*v15 != v49 || v16 != v12)
        {
          result = sub_21DBFC64C();
          v14 = v45;
          v11 = v46;
          v9 = v47;
          v13 = v48;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v12)
      {
        goto LABEL_11;
      }

      if (v19)
      {
        if (!v13)
        {
          goto LABEL_11;
        }

        if (v17 != v43 || v19 != v13)
        {
          result = sub_21DBFC64C();
          v14 = v45;
          v11 = v46;
          v9 = v47;
          v13 = v48;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v13)
      {
        goto LABEL_11;
      }

      if (v20)
      {
        if (!v44)
        {
          goto LABEL_11;
        }

        if (v18 != v39 || v20 != v44)
        {
          result = sub_21DBFC64C();
          v14 = v45;
          v11 = v46;
          v9 = v47;
          v13 = v48;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v44)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        if (!v40)
        {
          goto LABEL_11;
        }

        if (v21 != v37 || v22 != v40)
        {
          result = sub_21DBFC64C();
          v14 = v45;
          v11 = v46;
          v9 = v47;
          v13 = v48;
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v40)
      {
        goto LABEL_11;
      }

      if (v24)
      {
        if (v38)
        {
          if (v23 == v36 && v24 == v38 || (result = sub_21DBFC64C(), v14 = v45, v11 = v46, v9 = v47, v13 = v48, (result & 1) != 0))
          {
LABEL_53:
            result = sub_21DBFC6FC();
            __break(1u);
            break;
          }
        }
      }

      else if (!v38)
      {
        goto LABEL_53;
      }

LABEL_11:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_54:
  v29 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = (*(v29 + 48) + 80 * a2);
  v31 = v42[4];
  v30[3] = v42[3];
  v30[4] = v31;
  v32 = v42[2];
  v30[1] = v42[1];
  v30[2] = v32;
  *v30 = *v42;
  v33 = *(v29 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v35;
  }

  return result;
}

uint64_t sub_21D9AE2A0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_55;
  }

  if (a3)
  {
    sub_21D8AE80C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_21D8B2038();
      goto LABEL_55;
    }

    sub_21D8B4930();
  }

  v8 = *v3;
  result = sub_21D1018B0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v8 + 48) + a2);
      if (v11 <= 2)
      {
        if (*(*(v8 + 48) + a2))
        {
          if (v11 == 1)
          {
            v12 = 0x656C756465686373;
          }

          else
          {
            v12 = 7105633;
          }

          if (v11 == 1)
          {
            v13 = 0xE900000000000064;
          }

          else
          {
            v13 = 0xE300000000000000;
          }
        }

        else
        {
          v13 = 0xE500000000000000;
          v12 = 0x7961646F74;
        }
      }

      else if (*(*(v8 + 48) + a2) > 4u)
      {
        if (v11 == 5)
        {
          v12 = 0x6E756F4669726973;
          v13 = 0xEF737070416E4964;
        }

        else
        {
          v12 = 0x6574656C706D6F63;
          v13 = 0xE900000000000064;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x64656767616C66;
        }

        else
        {
          v12 = 0x64656E6769737361;
        }

        if (v11 == 3)
        {
          v13 = 0xE700000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
        }
      }

      v14 = 0x6E756F4669726973;
      if (v5 != 5)
      {
        v14 = 0x6574656C706D6F63;
      }

      v15 = 0xEF737070416E4964;
      if (v5 != 5)
      {
        v15 = 0xE900000000000064;
      }

      v16 = 0x64656E6769737361;
      if (v5 == 3)
      {
        v16 = 0x64656767616C66;
      }

      v17 = 0xE700000000000000;
      if (v5 != 3)
      {
        v17 = 0xE800000000000000;
      }

      if (v5 <= 4u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x656C756465686373;
      if (v5 != 1)
      {
        v18 = 7105633;
      }

      v19 = 0xE300000000000000;
      if (v5 == 1)
      {
        v19 = 0xE900000000000064;
      }

      if (!v5)
      {
        v18 = 0x7961646F74;
        v19 = 0xE500000000000000;
      }

      v20 = v5 <= 2u ? v18 : v14;
      v21 = v5 <= 2u ? v19 : v15;
      if (v12 == v20 && v13 == v21)
      {
        goto LABEL_58;
      }

      v22 = sub_21DBFC64C();

      if (v22)
      {
        goto LABEL_59;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_55:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v5;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_58:

LABEL_59:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AE5C8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21DBF70DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AEB34();
  }

  else
  {
    if (v12 > v11)
    {
      sub_21D8B204C();
      goto LABEL_12;
    }

    sub_21D8B4C28();
  }

  v13 = *v3;
  sub_21D9B182C(&qword_27CE58AC0, MEMORY[0x277D45430]);
  v14 = sub_21DBF9FFC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21D9B182C(&qword_27CE58DB0, MEMORY[0x277D45430]);
      v22 = sub_21DBFA10C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

void sub_21D9AE86C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AEE90();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_21D8B2074();
      a2 = v7;
      goto LABEL_12;
    }

    sub_21D8B4F44();
  }

  v8 = *v3;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a1);
  v9 = sub_21DBFC82C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for REMReminderPriorityLevel(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AE9C8(uint64_t result, unint64_t a2, char a3)
{
  v25 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    sub_21D8AF0E0();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_21D8B21B4();
      goto LABEL_48;
    }

    sub_21D8B5164();
  }

  v7 = *v3;
  sub_21DBFC7DC();
  sub_21DBFA27C();

  result = sub_21DBFC82C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v12 = 0xE700000000000000;
          v11 = 0x646E656B656577;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 0x57664F7472617473;
          }

          else
          {
            v11 = 0x6D6F74737563;
          }

          if (v10 == 4)
          {
            v12 = 0xEE007961646B6565;
          }

          else
          {
            v12 = 0xE600000000000000;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x7961646F74;
        }

        else
        {
          v11 = 0x776F72726F6D6F74;
        }

        if (v10 == 1)
        {
          v12 = 0xE500000000000000;
        }

        else
        {
          v12 = 0xE800000000000000;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        v11 = 1701736302;
      }

      v13 = 0x57664F7472617473;
      if (v25 != 4)
      {
        v13 = 0x6D6F74737563;
      }

      v14 = 0xEE007961646B6565;
      if (v25 != 4)
      {
        v14 = 0xE600000000000000;
      }

      if (v25 == 3)
      {
        v13 = 0x646E656B656577;
        v14 = 0xE700000000000000;
      }

      v15 = 0x776F72726F6D6F74;
      if (v25 == 1)
      {
        v15 = 0x7961646F74;
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE800000000000000;
      }

      if (!v25)
      {
        v15 = 1701736302;
        v16 = 0xE400000000000000;
      }

      v17 = v25 <= 2u ? v15 : v13;
      v18 = v25 <= 2u ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        goto LABEL_51;
      }

      v19 = sub_21DBFC64C();

      if (v19)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v25;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AED7C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v31 = v7;
  v32 = v3;
  if (v17 > v16 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AF3E4();
  }

  else
  {
    if (v17 > v16)
    {
      sub_21D8B21C8();
      goto LABEL_12;
    }

    sub_21D8B5438();
  }

  v18 = *v3;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v15);
  TTRRemindersListViewModel.ItemID.hash(into:)();
  sub_21D9B1DC8(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v19 = sub_21DBFC82C();
  v20 = -1 << *(v18 + 32);
  a2 = v19 & ~v20;
  if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30[1] = v6;
    v21 = ~v20;
    v22 = *(v7 + 72);
    do
    {
      sub_21D9B1D60(*(v18 + 48) + v22 * a2, v9, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v15);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v12);
      v23 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v15, v12);
      sub_21D9B1DC8(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D9B1DC8(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D9B1DC8(v9, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v33;
  v25 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(v24, *(v25 + 48) + *(v31 + 72) * a2, type metadata accessor for TTRRemindersListViewModel.Item);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AF088(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_21DBF686C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AF75C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_21D8B2218();
      goto LABEL_12;
    }

    sub_21D8B5780();
  }

  v12 = *v3;
  sub_21D9B182C(&unk_280D0C7E8, MEMORY[0x277D45298]);
  v13 = sub_21DBF9FFC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_21D9B182C(&qword_280D0C7E0, MEMORY[0x277D45298]);
      v21 = sub_21DBFA10C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AF32C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AFAB8();
  }

  else
  {
    if (v12 > v11)
    {
      sub_21D8B2240();
      goto LABEL_12;
    }

    sub_21D8B5A9C();
  }

  v13 = *v3;
  sub_21D9B182C(&qword_280D17160, MEMORY[0x277CC9AF8]);
  v14 = sub_21DBF9FFC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21D9B182C(&qword_280D17150, MEMORY[0x277CC9AF8]);
      v22 = sub_21DBFA10C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

void sub_21D9AF5D0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21D8AFE14(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21D8B2268();
      goto LABEL_12;
    }

    sub_21D8B5DB8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21DBFB62C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21D0D8CF0(0, &qword_280D0C1A0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21DBFC6FC();
  __break(1u);
}

uint64_t sub_21D9AF740(uint64_t result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_21D8B0048();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_21D8B23BC();
      goto LABEL_47;
    }

    sub_21D8B5FD8();
  }

  v7 = 0xED0000736E6F6974;
  v8 = *v3;
  sub_21DBFC7DC();
  sub_21DBFA27C();

  result = sub_21DBFC82C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v33 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = v8;
    v32 = ~v9;
    v10 = 0xEC000000736D7261;
    v11 = 0x6E6F697461636F6CLL;
    v12 = 0x6C41746E65677275;
    do
    {
      v13 = *(*(v8 + 48) + a2);
      if (v13 <= 1)
      {
        if (*(*(v8 + 48) + a2))
        {
          v14 = v11;
        }

        else
        {
          v14 = 0x6163696669746F6ELL;
        }

        if (*(*(v8 + 48) + a2))
        {
          v15 = 0xE800000000000000;
        }

        else
        {
          v15 = v7;
        }
      }

      else if (v13 == 2)
      {
        v15 = 0xE800000000000000;
        v14 = 0x73746361746E6F63;
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 0xD000000000000010;
        }

        else
        {
          v14 = v12;
        }

        if (v13 == 3)
        {
          v15 = 0x800000021DC43740;
        }

        else
        {
          v15 = v10;
        }
      }

      v16 = 0xD000000000000010;
      v17 = v12;
      if (v34 != 3)
      {
        v16 = v12;
      }

      v18 = v10;
      if (v34 == 3)
      {
        v10 = 0x800000021DC43740;
      }

      if (v34 == 2)
      {
        v16 = 0x73746361746E6F63;
        v10 = 0xE800000000000000;
      }

      v19 = v11;
      v20 = v34 ? v11 : 0x6163696669746F6ELL;
      v21 = v7;
      v22 = v34 ? 0xE800000000000000 : v7;
      v23 = v34 <= 1u ? v20 : v16;
      v24 = v34 <= 1u ? v22 : v10;
      if (v14 == v23 && v15 == v24)
      {
        goto LABEL_50;
      }

      v25 = sub_21DBFC64C();

      if (v25)
      {
        goto LABEL_51;
      }

      a2 = (a2 + 1) & v32;
      v7 = v21;
      v8 = v31;
      v10 = v18;
      v11 = v19;
      v12 = v17;
    }

    while (((*(v33 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_47:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v34;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_50:

LABEL_51:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9AFAA4(uint64_t a1, unint64_t a2, char a3)
{
  v53 = a1;
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v38 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8);
  MEMORY[0x28223BE20](v51);
  v12 = &v38 - v11;
  v46 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID();
  v42 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v39 = v3;
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_21D8B034C();
  }

  else
  {
    if (v16 > v15)
    {
      sub_21D8B23D0();
      goto LABEL_27;
    }

    sub_21D8B62AC();
  }

  v17 = *v3;
  sub_21DBFC7DC();
  sub_21D838EC4();
  v18 = sub_21DBFC82C();
  v49 = v17 + 56;
  v50 = v17;
  v19 = -1 << *(v17 + 32);
  a2 = v18 & ~v19;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v48 = ~v19;
    v20 = (v7 + 48);
    v47 = *(v42 + 72);
    v41 = (v7 + 32);
    v45 = (v7 + 8);
    v21 = &qword_27CE5DBF8;
    v40 = v14;
    do
    {
      sub_21D9B1D60(*(v50 + 48) + v47 * a2, v14, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      v22 = *(v51 + 48);
      sub_21D0D3954(v14, v12, &unk_27CE58E70);
      sub_21D0D3954(v53, &v12[v22], &unk_27CE58E70);
      v23 = *v20;
      if ((*v20)(v12, 1, v6) == 1)
      {
        if (v23(&v12[v22], 1, v6) != 1)
        {
          goto LABEL_11;
        }

        sub_21D0CF7E0(v12, &unk_27CE58E70);
      }

      else
      {
        sub_21D0D3954(v12, v52, &unk_27CE58E70);
        if (v23(&v12[v22], 1, v6) == 1)
        {
          (*v45)(v52, v6);
LABEL_11:
          sub_21D0CF7E0(v12, v21);
          goto LABEL_12;
        }

        v24 = v43;
        (*v41)(v43, &v12[v22], v6);
        sub_21D9B182C(&qword_280D17150, MEMORY[0x277CC9AF8]);
        v44 = sub_21DBFA10C();
        v25 = v21;
        v26 = v20;
        v27 = *v45;
        (*v45)(v24, v6);
        v27(v52, v6);
        v20 = v26;
        v21 = v25;
        v14 = v40;
        sub_21D0CF7E0(v12, &unk_27CE58E70);
        if ((v44 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (*&v14[*(v46 + 20)] == *(v53 + *(v46 + 20)))
      {
        v28 = *(v46 + 24);
        v29 = &v14[v28];
        v30 = *&v14[v28 + 8];
        v31 = (v53 + v28);
        v32 = v31[1];
        if (v30)
        {
          if (v32 && (*v29 == *v31 && v30 == v32 || (sub_21DBFC64C() & 1) != 0))
          {
LABEL_26:
            sub_21D9B1DC8(v14, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
            sub_21DBFC6FC();
            __break(1u);
            break;
          }
        }

        else if (!v32)
        {
          goto LABEL_26;
        }
      }

LABEL_12:
      sub_21D9B1DC8(v14, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      a2 = (a2 + 1) & v48;
    }

    while (((*(v49 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v33 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(v53, *(v33 + 48) + *(v42 + 72) * a2, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

uint64_t sub_21D9B010C(uint64_t result, unint64_t a2, char a3, void (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v8 = v7;
  v10 = result;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v13 = a5;
    a4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = a7();
      goto LABEL_16;
    }

    v13 = a5;
    a6(v11 + 1);
  }

  v14 = *v7;
  sub_21DBFA16C();
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v15 = sub_21DBFC82C();

  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v13(0);
    do
    {
      v18 = sub_21DBFA16C();
      v20 = v19;
      if (v18 == sub_21DBFA16C() && v20 == v21)
      {
        goto LABEL_19;
      }

      v23 = sub_21DBFC64C();

      if (v23)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v24 = *v8;
  *(*v8 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + 8 * a2) = v10;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9B039C(uint64_t result, unint64_t a2, char a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    a4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a2;
      result = a7();
      a2 = v11;
      goto LABEL_12;
    }

    a6(v9 + 1);
  }

  v12 = *v7;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v8);
  result = sub_21DBFC82C();
  v13 = -1 << *(v12 + 32);
  a2 = result & ~v13;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v12 + 48) + a2) != v8)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v8;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DBFC6FC();
  __break(1u);
  return result;
}

uint64_t sub_21D9B0500(void *a1, unint64_t a2, char a3)
{
  v60 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v58);
  v56 = &v43 - v6;
  v59 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  v7 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v49 = v3;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v44 = v7;
  if (v19 <= v18 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21D8B0FF8();
    }

    else
    {
      if (v19 > v18)
      {
        sub_21D8B26B8();
        goto LABEL_22;
      }

      sub_21D8B6EBC();
    }

    v62 = *v49;
    sub_21DBFC7DC();
    v20 = v60;
    v61 = *v60;
    sub_21DBFB64C();
    v55 = *(v59 + 20);
    sub_21D0D3954(v20 + v55, v17, &qword_27CE5EA20);
    v53 = *(v11 + 48);
    v54 = v11 + 48;
    if (v53(v17, 1, v10) == 1)
    {
      sub_21DBFC7FC();
    }

    else
    {
      v21 = v48;
      (*(v11 + 32))(v48, v17, v10);
      sub_21DBFC7FC();
      sub_21D9B182C(&qword_280D171E0, MEMORY[0x277CC9260]);
      sub_21DBFA00C();
      (*(v11 + 8))(v21, v10);
    }

    v22 = sub_21DBFC82C();
    v23 = v62 + 56;
    v24 = -1 << *(v62 + 32);
    a2 = v22 & ~v24;
    if ((*(v62 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v25 = ~v24;
      v26 = sub_21D0D8CF0(0, &qword_280D17680);
      v43 = (v11 + 32);
      v7 = *(v7 + 72);
      v46 = (v11 + 8);
      v27 = &qword_27CE5EA20;
      v28 = v10;
      v47 = v26;
      v51 = v7;
      v52 = v25;
      v45 = v9;
      v50 = v23;
      do
      {
        sub_21D9B1D60(*(v62 + 48) + v7 * a2, v9, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
        if (sub_21DBFB63C())
        {
          v32 = *(v58 + 48);
          v7 = v56;
          sub_21D0D3954(&v9[*(v59 + 20)], v56, v27);
          sub_21D0D3954(v60 + v55, v7 + v32, v27);
          v33 = v53;
          if (v53(v7, 1, v28) == 1)
          {
            v34 = v33(v7 + v32, 1, v28);
            v23 = v50;
            v25 = v52;
            if (v34 == 1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v35 = v27;
            v36 = v28;
            v37 = v57;
            sub_21D0D3954(v7, v57, v35);
            if (v33(v7 + v32, 1, v36) != 1)
            {
              v29 = v48;
              (*v43)(v48, v7 + v32, v36);
              sub_21D9B182C(&qword_280D171D0, MEMORY[0x277CC9260]);
              v30 = sub_21DBFA10C();
              v31 = *v46;
              (*v46)(v29, v36);
              v31(v57, v36);
              sub_21D0CF7E0(v7, v35);
              v23 = v50;
              v7 = v51;
              v25 = v52;
              v28 = v36;
              v27 = v35;
              v9 = v45;
              if (v30)
              {
                goto LABEL_26;
              }

              goto LABEL_14;
            }

            (*v46)(v37, v36);
            v23 = v50;
            v25 = v52;
            v28 = v36;
            v27 = v35;
            v9 = v45;
          }

          sub_21D0CF7E0(v7, &unk_27CE5F2A0);
          v7 = v51;
        }

LABEL_14:
        sub_21D9B1DC8(v9, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
        a2 = (a2 + 1) & v25;
      }

      while (((*(v23 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v38 = *v49;
  *(*v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21D8B7748(v60, *(v38 + 48) + *(v44 + 72) * a2, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_25:
    sub_21D0CF7E0(v7, &qword_27CE5EA20);
LABEL_26:
    sub_21D9B1DC8(v9, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    result = sub_21DBFC6FC();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

uint64_t sub_21D9B0C90(uint64_t a1, void *a2)
{
  v4 = 0;
  if (a2)
  {
    v5 = type metadata accessor for TTRBasicUndoContext();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v6 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v4;
  v19[3] = v5;
  v19[4] = v6;
  sub_21D0D3954(v19, v17, &unk_27CE60D80);
  v7 = qword_280D1AA10;
  v8 = a2;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_280D1AA18;
  sub_21D0CF7E0(v19, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  v10 = swift_allocObject();
  v15 = type metadata accessor for TTRUserDefaults();
  v16 = &protocol witness table for TTRUserDefaults;
  *&v14 = v9;
  *(v10 + 64) = 0;
  *(v10 + 16) = a1;
  v11 = v17[1];
  *(v10 + 24) = v17[0];
  *(v10 + 40) = v11;
  *(v10 + 56) = v18;
  swift_beginAccess();
  *(v10 + 64) = 0;
  sub_21D0D15E0(&v14, v10 + 72);
  v12 = v9;
  return v10;
}

uint64_t _s15RemindersUICore27TTRReminderDetailInteractorC43pendingMoveCapabilityEffectiveListDidChangeyyAA0cd7PendinggeH0CF_0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = *(*(v0 + 56) + 16);
    v5 = *(v2 + 8);
    v6 = v4;
    v5(v4, sub_21D9B1874, v0, 1, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D9B0EC0(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = v2;
  }

  swift_beginAccess();
  v4 = [*(a1 + 40) storage];
  v5 = v4;
  if (v2)
  {
    v6 = v2;

    sub_21D0D8CF0(0, &qword_27CE5A390);
    v7 = sub_21DBFB63C();

    v8 = v7 ^ 1;
  }

  else
  {

    v8 = 1;
  }

  return v8 & 1;
}

id sub_21D9B0FE8(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v9[0] = 0;
  v5 = [a2 fetchReminderWithObjectID:a1 fetchOptions:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_21D9B10D8(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_21D9B10EC()
{
  result = qword_27CE64840;
  if (!qword_27CE64840)
  {
    sub_21D0D8CF0(255, &qword_280D17828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64840);
  }

  return result;
}

id sub_21D9B1170(id result, void *a2, void *a3)
{
  if (result)
  {
    v3 = result;
    v4 = a3;
    v5 = v3;

    return a2;
  }

  return result;
}

void sub_21D9B11C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

uint64_t assignWithCopy for TTRReminderDetailOptimisticReminder(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailSubject(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_21D9B1764(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t assignWithCopy for SubtasksLoadState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D9B1764(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D9B10D8(v5, v6);
  return a1;
}

uint64_t assignWithTake for SubtasksLoadState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D9B10D8(v4, v5);
  return a1;
}

uint64_t sub_21D9B182C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21D9B1884(void *a1)
{
  v2 = v1;
  if (qword_27CE56F30 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE64808);
  v5 = a1;
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = [v5 objectID];
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRReminderDetailInteractor: received updated REMReminderChangeItem from database monitor {objectID: %@}", v8, 0xCu);
    sub_21D0CF7E0(v9, &unk_27CE60070);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  v11 = TTRReminderDetailPendingMoveInteractorCapability.hasUncommittedChanges.getter();

  if (v11 & 1) != 0 || (sub_21D9B0EC0(v2))
  {
    v12 = v5;
    oslog = sub_21DBF84AC();
    v13 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = [v12 objectID];
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_21D0C9000, oslog, v13, "TTRReminderDetailInteractor: not applying REMReminderChangeItem from database monitor because hasUncommittedChanges is true {objectID: %@}", v14, 0xCu);
      sub_21D0CF7E0(v15, &unk_27CE60070);
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }
  }

  else
  {
    v17 = [v5 store];
    v18 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v18 setSaveIsNoopIfNoChangedKeys_];

    oslog = [v18 updateReminder_];
    sub_21D9A497C();
  }
}

uint64_t sub_21D9B1BA4()
{
  v1 = v0;
  if (qword_27CE56F30 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE64808);

  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_beginAccess();
    v7 = [*(v1 + 40) objectID];
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_21D0C9000, v3, v4, "TTRReminderDetailInteractor: database monitor reported reminderDidBecomeNotFound {objectID: %@}", v5, 0xCu);
    sub_21D0CF7E0(v6, &unk_27CE60070);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D9B1D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D9B1DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D9B1E50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v40 - v4;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v54 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v5 & ~(v5 >> 63), 0);
  v6 = v54;
  if (v47)
  {
    result = sub_21DBFBD0C();
  }

  else
  {
    result = sub_21DBFBCCC();
    v8 = *(a1 + 36);
  }

  v51 = result;
  v52 = v8;
  v53 = v47 != 0;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v10 = a1;
    }

    v42 = a1 + 56;
    v43 = v10;
    v40[1] = v1;
    v41 = a1 + 64;
    v44 = v5;
    v45 = a1;
    while (v9 < v5)
    {
      if (__OFADD__(v9++, 1))
      {
        goto LABEL_37;
      }

      v13 = v51;
      v48 = v52;
      v49 = v53;
      sub_21D3656F4(v51, v52, v53, a1);
      v15 = v14;
      v16 = [v14 name];
      v17 = sub_21DBFA16C();
      v19 = v18;

      v50[0] = v17;
      v50[1] = v19;
      v20 = v6;
      v21 = v46;
      sub_21DBF57AC();
      v22 = sub_21DBF582C();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      sub_21D176F0C();
      v23 = sub_21DBFBBEC();
      v25 = v24;
      v26 = v21;
      v6 = v20;
      sub_21D0CF7E0(v26, &unk_27CE65010);

      v54 = v20;
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_21D18E678((v27 > 1), v28 + 1, 1);
        v6 = v54;
      }

      *(v6 + 16) = v28 + 1;
      v29 = v6 + 16 * v28;
      *(v29 + 32) = v23;
      *(v29 + 40) = v25;
      if (v47)
      {
        a1 = v45;
        if (!v49)
        {
          goto LABEL_42;
        }

        if (sub_21DBFBD2C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v5 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58);
        v11 = sub_21DBFAAEC();
        sub_21DBFBDEC();
        result = v11(v50, 0);
        if (v9 == v5)
        {
LABEL_34:
          sub_21D15746C(v51, v52, v53);
          return v6;
        }
      }

      else
      {
        a1 = v45;
        if (v49)
        {
          goto LABEL_43;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v30 = 1 << *(v45 + 32);
        if (v13 >= v30)
        {
          goto LABEL_38;
        }

        v31 = v13 >> 6;
        v32 = *(v42 + 8 * (v13 >> 6));
        if (((v32 >> v13) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v45 + 36) != v48)
        {
          goto LABEL_40;
        }

        v33 = v32 & (-2 << (v13 & 0x3F));
        if (v33)
        {
          v30 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v34 = v31 << 6;
          v35 = v31 + 1;
          v36 = (v41 + 8 * v31);
          while (v35 < (v30 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              result = sub_21D15746C(v13, v48, 0);
              v30 = __clz(__rbit64(v37)) + v34;
              goto LABEL_33;
            }
          }

          result = sub_21D15746C(v13, v48, 0);
        }

LABEL_33:
        v39 = *(a1 + 36);
        v51 = v30;
        v52 = v39;
        v53 = 0;
        v5 = v44;
        if (v9 == v44)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_21D9B2298(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_21DBFBD0C();
    }

    else
    {
      v3 = sub_21DBFBCCC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_21D3656F4(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_21DBFA16C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21D18E678((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58);
          v6 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_21D15746C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_21D15746C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_21D15746C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void TTRReminderEditor.remove(subtask:)(uint64_t a1)
{
  v3 = [*(v1 + 16) saveRequest];
  v4 = [v3 updateReminder_];

  TTRReminderEditor.remove(subtask:)(v4);
}

uint64_t sub_21D9B26A0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x223D44740](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        v4 = v15;
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

void static TTRReminderEditor.dueDateComponents(from:isAllDay:timeZone:)(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_21DBF509C();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_21DBF5C4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF55BC();
  sub_21D0D3954(a2, v9, &unk_27CE60DB0);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    v16 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v15(v9, 1, v10) != 1)
    {
      sub_21D0CF7E0(v9, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v17 = objc_opt_self();
  v18 = sub_21DBF5C0C();
  (*(v11 + 8))(v13, v10);
  v19 = [v17 rem:v14 dateComponentsWithDate:v18 timeZone:a1 & 1 isAllDay:?];

  v20 = v29;
  sub_21DBF4EFC();

  if (a1)
  {
    v21 = sub_21DBF4EDC();
    v22 = [v21 rem_strippingTimeZone];

    v23 = v26;
    sub_21DBF4EFC();

    v25 = v27;
    v24 = v28;
    (*(v27 + 8))(v20, v28);
    (*(v25 + 32))(v20, v23, v24);
  }
}

Swift::Void __swiftcall TTRReminderEditor.edit(title:locale:registeringUndo:)(NSAttributedString title, Swift::String_optional locale, Swift::Bool registeringUndo)
{
  if (locale.value._object)
  {
    countAndFlagsBits = locale.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (locale.value._object <= 1)
  {
    object = 1;
  }

  else
  {
    object = locale.value._object;
  }

  sub_21DBF8E0C();
  v7 = sub_21D9CA3E0(title.super.isa, countAndFlagsBits, object);

  if (registeringUndo)
  {
    if (v7)
    {
      swift_retain_n();
      sub_21D182E74(sub_21D23298C, v7);
    }
  }

  else
  {
  }
}

id TTRReminderEditor.moveAsSubtask(_:position:)(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(v2 + 16);
  v7 = [v6 subtaskContext];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 listChangeItem];
    if (v9)
    {
      v10 = v9;
      v11 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(a1, v9, v8, 0);

      if (v5)
      {
LABEL_4:
        if (v5 == 1)
        {
          v12 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
          v13 = v4;
LABEL_12:
          sub_21D157850(v4, v5);
          [v8 *v12];

          return v11;
        }

        v13 = 0;
        if (v4)
        {
          v12 = &selRef_insertReminderChangeItem_afterReminderChangeItem_;
          goto LABEL_12;
        }

LABEL_11:
        v12 = &selRef_insertReminderChangeItem_beforeReminderChangeItem_;
        goto LABEL_12;
      }
    }

    else
    {
      v11 = a1;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v13 = v4;
    goto LABEL_11;
  }

  return 0;
}

uint64_t TTRReminderEditor.edit(dueDateComponents:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  LOBYTE(a1) = sub_21D9C50E0(a1, v4);
  sub_21D0CF7E0(v4, &unk_27CE60DA0);
  return a1 & 1;
}

id TTRReminderEditor.edit(url:)(uint64_t a1)
{
  v53 = a1;
  v2 = sub_21DBF54CC();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v48 = &v43[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v13);
  v50 = &v43[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v43[-v16];
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v43[-v20];
  v51 = v1;
  result = [*(v1 + 16) attachmentContext];
  if (result)
  {
    v46 = v11;
    v47 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v49 = result;
    v23 = [result urlAttachments];
    sub_21D0D8CF0(0, &qword_280D17820);
    v24 = sub_21DBFA5EC();

    if (v24 >> 62)
    {
      result = sub_21DBFBD7C();
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v52;
    v45 = v4;
    if (result)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x223D44740](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v26 = *(v24 + 32);
      }

      v27 = v26;

      v28 = [v27 url];

      sub_21DBF546C();
      (*(v25 + 56))(v21, 0, 1, v2);
    }

    else
    {

      (*(v25 + 56))(v21, 1, 1, v2);
    }

    v29 = *(v7 + 48);
    sub_21D0D3954(v53, v9, &qword_27CE5EA20);
    sub_21D0D3954(v21, &v9[v29], &qword_27CE5EA20);
    v30 = *(v25 + 48);
    if (v30(v9, 1, v2) == 1)
    {
      if (v30(&v9[v29], 1, v2) == 1)
      {

        sub_21D0CF7E0(v9, &qword_27CE5EA20);
        return sub_21D0CF7E0(v21, &qword_27CE5EA20);
      }
    }

    else
    {
      v31 = v17;
      sub_21D0D3954(v9, v17, &qword_27CE5EA20);
      if (v30(&v9[v29], 1, v2) != 1)
      {
        v41 = v48;
        (*(v25 + 32))(v48, &v9[v29], v2);
        sub_21D9D77FC(&qword_280D171D0, 255, MEMORY[0x277CC9260]);
        v44 = sub_21DBFA10C();
        v42 = *(v25 + 8);
        v42(v41, v2);
        v42(v31, v2);
        sub_21D0CF7E0(v9, &qword_27CE5EA20);
        if (v44)
        {

          return sub_21D0CF7E0(v21, &qword_27CE5EA20);
        }

LABEL_16:
        v32 = v50;
        sub_21D0D3954(v53, v50, &qword_27CE5EA20);
        if (v30(v32, 1, v2) == 1)
        {
          sub_21D0CF7E0(v32, &qword_27CE5EA20);
          v33 = v49;
          [v49 removeURLAttachments];
        }

        else
        {
          v34 = v52;
          v35 = v45;
          (*(v52 + 32))(v45, v32, v2);
          v36 = sub_21DBF53FC();
          v33 = v49;

          (*(v34 + 8))(v35, v2);
        }

        v37 = v46;
        v38 = v47;
        sub_21D0D3954(v21, v47, &qword_27CE5EA20);
        v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
        v40 = swift_allocObject();
        sub_21D0D523C(v38, v40 + v39, &qword_27CE5EA20);
        sub_21D182E74(sub_21D9D70F4, v40);

        return sub_21D0CF7E0(v21, &qword_27CE5EA20);
      }

      (*(v25 + 8))(v17, v2);
    }

    sub_21D0CF7E0(v9, &unk_27CE5F2A0);
    goto LABEL_16;
  }

  return result;
}

Swift::Void __swiftcall TTRReminderEditor.add(attachments:)(Swift::OpaquePointer attachments)
{
  v3 = type metadata accessor for TTRDirectlySavableImageData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v217 = &v187[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v208 = &v187[-v6];
  MEMORY[0x28223BE20](v7);
  v9 = &v187[-v8];
  v231 = sub_21DBF843C();
  v10 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v195 = &v187[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v200 = &v187[-v13];
  MEMORY[0x28223BE20](v14);
  v194 = &v187[-v15];
  MEMORY[0x28223BE20](v16);
  v209 = &v187[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v187[-v19];
  MEMORY[0x28223BE20](v21);
  v206 = &v187[-v22];
  v205 = sub_21DBF518C();
  v23 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v216 = &v187[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  MEMORY[0x28223BE20](v25 - 8);
  v199 = &v187[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v197 = &v187[-v28];
  MEMORY[0x28223BE20](v29);
  v204 = &v187[-v30];
  v232 = sub_21DBF54CC();
  v31 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v192 = &v187[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v190 = &v187[-v34];
  MEMORY[0x28223BE20](v35);
  v198 = &v187[-v36];
  MEMORY[0x28223BE20](v37);
  v215 = &v187[-v38];
  MEMORY[0x28223BE20](v39);
  v230 = &v187[-v40];
  v235 = type metadata accessor for TTRUnsavedAttachment(0);
  v41 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v227 = &v187[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43);
  v218 = &v187[-v44];
  MEMORY[0x28223BE20](v45);
  v226 = &v187[-v46];
  *&v48 = MEMORY[0x28223BE20](v47).n128_u64[0];
  v229 = &v187[-v49];
  v211 = *(v1 + 16);
  v212 = v1;
  v214 = [v211 attachmentContext];
  if (!v214)
  {
    return;
  }

  v50 = *(attachments._rawValue + 2);
  if (!v50)
  {
    v182 = v214;

    return;
  }

  v193 = v9;
  v51 = 0;
  v52 = attachments._rawValue + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v220 = (v31 + 32);
  v213 = *MEMORY[0x277CBE7B8];
  v201 = (v10 + 48);
  v202 = (v23 + 8);
  v222 = (v10 + 8);
  v53 = (v10 + 32);
  v210 = (v31 + 16);
  v219 = (v31 + 8);
  v191 = (v10 + 16);
  v196 = (v10 + 56);
  v225 = *(v41 + 72);
  *(&v54 + 1) = 2;
  v224 = xmmword_21DC08D00;
  *&v54 = 136315394;
  v189 = v54;
  *&v54 = 136315138;
  v207 = v54;
  v55 = v232;
  v57 = v229;
  v56 = v230;
  v58 = v226;
  v221 = (v10 + 32);
  v223 = v20;
  while (1)
  {
    v233 = v52;
    v234 = v50;
    sub_21D1074E8(v52, v57, type metadata accessor for TTRUnsavedAttachment);
    sub_21D1074E8(v57, v58, type metadata accessor for TTRUnsavedAttachment);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      (*v220)(v56, v58, v55);
      sub_21DBF547C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64858);
      inited = swift_initStackObject();
      *(inited + 16) = v224;
      v77 = v213;
      *(inited + 32) = v213;
      v78 = v77;
      sub_21D1D0D5C(inited);
      swift_setDeallocating();
      sub_21D9D9170(inited + 32, type metadata accessor for URLResourceKey);
      v79 = v216;
      sub_21DBF538C();
      if (v51)
      {

        v228 = 0;
        v80 = v215;
LABEL_25:
        v107 = v219;
        if (qword_280D0F2B8 != -1)
        {
          swift_once();
        }

        v108 = sub_21DBF84BC();
        __swift_project_value_buffer(v108, qword_280D0F2C0);
        (*v210)(v80, v56, v55);
        v109 = sub_21DBF84AC();
        v110 = sub_21DBFAEBC();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = v80;
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v238[0] = v113;
          *v112 = v207;
          sub_21D9D77FC(&qword_27CE59F18, 255, MEMORY[0x277CC9260]);
          v114 = sub_21DBFC5BC();
          v116 = v115;
          v117 = *v107;
          v117(v111, v232);
          v118 = sub_21D0CDFB4(v114, v116, v238);

          *(v112 + 4) = v118;
          _os_log_impl(&dword_21D0C9000, v109, v110, "Error finding file type for FileURL attachment uti {url: %s}", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v113);
          v55 = v232;
          MEMORY[0x223D46520](v113, -1, -1);
          MEMORY[0x223D46520](v112, -1, -1);
        }

        else
        {

          v117 = *v107;
          v117(v80, v55);
        }

        v56 = v230;
        sub_21DBF545C();
        v117(v56, v55);
        v57 = v229;
        sub_21D9D9170(v229, type metadata accessor for TTRUnsavedAttachment);
        v20 = v223;
        v58 = v226;
        v53 = v221;
        v51 = v228;
        goto LABEL_6;
      }

      v228 = 0;

      v100 = v204;
      sub_21DBF517C();
      (*v202)(v79, v205);
      v101 = *v201;
      v102 = (*v201)(v100, 1, v231);
      v103 = v206;
      v80 = v215;
      if (v102 == 1)
      {
        v104 = v100;
LABEL_24:
        sub_21D0CF7E0(v104, &qword_27CE63E50);
        v55 = v232;
        v56 = v230;
        goto LABEL_25;
      }

      sub_21DBF836C();
      v105 = v231;
      v203 = *v222;
      v203(v100, v231);
      v106 = v197;
      sub_21DBF844C();
      if (v101(v106, 1, v105) == 1)
      {
        v104 = v106;
        goto LABEL_24;
      }

      v119 = *v53;
      (*v53)(v103, v106, v231);
      v120 = v230;
      v121 = v228;
      v122 = sub_21DBF54DC();
      v51 = v121;
      if (v121)
      {
        if (qword_280D0F2B8 != -1)
        {
          swift_once();
        }

        v124 = sub_21DBF84BC();
        __swift_project_value_buffer(v124, qword_280D0F2C0);
        v125 = v192;
        v55 = v232;
        (*v210)(v192, v230, v232);
        v126 = v121;
        v127 = sub_21DBF84AC();
        v128 = sub_21DBFAEBC();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v188 = v128;
          v130 = v125;
          v131 = v129;
          v228 = swift_slowAlloc();
          v238[0] = v228;
          *v131 = v189;
          sub_21D9D77FC(&qword_27CE59F18, 255, MEMORY[0x277CC9260]);
          v132 = sub_21DBFC5BC();
          v134 = v133;
          v135 = v130;
          v136 = *v219;
          (*v219)(v135, v232);
          v137 = sub_21D0CDFB4(v132, v134, v238);

          *(v131 + 4) = v137;
          *(v131 + 12) = 2082;
          swift_getErrorValue();
          v138 = sub_21DBFC75C();
          v140 = sub_21D0CDFB4(v138, v139, v238);

          *(v131 + 14) = v140;
          v55 = v232;
          _os_log_impl(&dword_21D0C9000, v127, v188, "Error handling FileURL attachment {url: %s, {error: %{public}s}", v131, 0x16u);
          v141 = v228;
          swift_arrayDestroy();
          MEMORY[0x223D46520](v141, -1, -1);
          MEMORY[0x223D46520](v131, -1, -1);
        }

        else
        {

          v136 = *v219;
          (*v219)(v125, v55);
        }

        v203(v206, v231);
        v56 = v230;
        sub_21DBF545C();
        v136(v56, v55);
        v57 = v229;
        sub_21D9D9170(v229, type metadata accessor for TTRUnsavedAttachment);
        v51 = 0;
        v58 = v226;
        v20 = v223;
        goto LABEL_6;
      }

      v173 = v122;
      v174 = v123;
      v175 = v229;
      sub_21D9D9170(v229, type metadata accessor for TTRUnsavedAttachment);
      v176 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38) + 48);
      *v175 = v173;
      v175[1] = v174;
      v119(v175 + v176, v103, v231);
      v57 = v175;
      swift_storeEnumTagMultiPayload();
      sub_21DBF545C();
      v55 = v232;
      (*v219)(v120, v232);
      v20 = v223;
    }

    else
    {
      sub_21D9D9170(v58, type metadata accessor for TTRUnsavedAttachment);
    }

    v81 = v218;
    sub_21D1074E8(v57, v218, type metadata accessor for TTRUnsavedAttachment);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D9D9170(v81, type metadata accessor for TTRUnsavedAttachment);
      goto LABEL_41;
    }

    v82 = *v81;
    v83 = v81[1];
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38);
    v85 = v231;
    (*v53)(v20, v81 + *(v84 + 48), v231);
    v86 = v209;
    sub_21DBF83FC();
    v87 = sub_21DBF841C();
    v88 = *v222;
    (*v222)(v86, v85);
    if ((v87 & 1) == 0)
    {
      v88(v20, v231);
      sub_21D17B8A8(v82, v83);
LABEL_39:
      v55 = v232;
      v57 = v229;
      goto LABEL_40;
    }

    sub_21D1BAF70(v82, v83);
    v89 = v193;
    TTRDirectlySavableImageData.init(data:)(v82, v83, v193);
    if (v51)
    {
      v90 = v195;
      v20 = v223;
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v91 = sub_21DBF84BC();
      __swift_project_value_buffer(v91, qword_280D0F2C0);
      (*v191)(v90, v20, v231);
      v92 = sub_21DBF84AC();
      v93 = sub_21DBFAEBC();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v238[0] = v95;
        *v94 = v207;
        v228 = v92;
        v203 = sub_21DBF836C();
        v97 = v96;
        v88(v90, v231);
        v98 = sub_21D0CDFB4(v203, v97, v238);

        *(v94 + 4) = v98;
        v99 = v228;
        _os_log_impl(&dword_21D0C9000, v228, v93, "TTRReminderEditor: failed to create TTRDirectlySavableImageData {uti: %s}", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x223D46520](v95, -1, -1);
        MEMORY[0x223D46520](v94, -1, -1);

        sub_21D17B8A8(v82, v83);
        v88(v223, v231);
        v20 = v223;
      }

      else
      {

        sub_21D17B8A8(v82, v83);
        v142 = v90;
        v143 = v231;
        v88(v142, v231);
        v88(v20, v143);
      }

      v51 = 0;
      goto LABEL_39;
    }

    sub_21D17B8A8(v82, v83);
    v20 = v223;
    v88(v223, v231);
    v57 = v229;
    sub_21D9D9170(v229, type metadata accessor for TTRUnsavedAttachment);
    sub_21D9D9028(v89, v57, type metadata accessor for TTRDirectlySavableImageData);
    swift_storeEnumTagMultiPayload();
    v55 = v232;
LABEL_40:
    v53 = v221;
LABEL_41:
    sub_21D1074E8(v57, v227, type metadata accessor for TTRUnsavedAttachment);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v145 = *v227;
        v146 = v199;
        (*v196)(v199, 1, 1, v231);
        v147 = v145;
        v148 = v208;
        v203 = v147;
        TTRDirectlySavableImageData.init(image:sourceUTI:)(v147, v146, v208);
        if (v51)
        {
          if (qword_280D0F2B8 != -1)
          {
            swift_once();
          }

          v228 = 0;
          v149 = sub_21DBF84BC();
          __swift_project_value_buffer(v149, qword_280D0F2C0);
          v150 = v51;
          v151 = sub_21DBF84AC();
          v152 = sub_21DBFAEBC();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v238[0] = v154;
            *v153 = v207;
            swift_getErrorValue();
            v155 = sub_21DBFC75C();
            v157 = v20;
            v158 = sub_21D0CDFB4(v155, v156, v238);

            *(v153 + 4) = v158;
            v20 = v157;
            _os_log_impl(&dword_21D0C9000, v151, v152, "TTRReminderEditor: failed to create TTRDirectlySavableImageData from image {error: %s}", v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v154);
            MEMORY[0x223D46520](v154, -1, -1);
            v159 = v153;
            v55 = v232;
            MEMORY[0x223D46520](v159, -1, -1);
          }

          else
          {
          }

          v57 = v229;
          sub_21D9D9170(v229, type metadata accessor for TTRUnsavedAttachment);
          v56 = v230;
          v58 = v226;
          v51 = v228;
          goto LABEL_6;
        }

        v166 = sub_21DBF54FC();
        if (v148[16])
        {
          v167 = v194;
          if (v148[16] == 1)
          {
            sub_21DBF83AC();
          }

          else
          {
            sub_21DBF83EC();
          }
        }

        else
        {
          v167 = v194;
          sub_21DBF83DC();
        }

        sub_21DBF836C();
        (*v222)(v167, v231);
        v177 = sub_21DBFA12C();

        v178 = *(v208 + 3);
        if ((*&v178 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_91;
        }

        if (v178 <= -1.0)
        {
          goto LABEL_92;
        }

        if (v178 >= 1.84467441e19)
        {
          goto LABEL_93;
        }

        v179 = *(v208 + 4);
        if ((*&v179 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_94;
        }

        if (v179 <= -1.0)
        {
          goto LABEL_95;
        }

        if (v179 >= 1.84467441e19)
        {
          goto LABEL_96;
        }

        v180 = [v214 addImageAttachmentWithData:v166 uti:v177 width:v178 height:v179];

        sub_21D9D9170(v208, type metadata accessor for TTRDirectlySavableImageData);
        v181 = objc_opt_self();
        v69 = v180;
        [v181 attachmentAddedForType_];
      }

      else
      {
        v59 = v227;
        v60 = *v227;
        v61 = v227[1];
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38);
        v63 = v231;
        v64 = v209;
        (*v53)(v209, v59 + *(v62 + 48), v231);
        v65 = sub_21DBF54FC();
        sub_21DBF836C();
        v66 = sub_21DBFA12C();

        v67 = [v214 addFileAttachmentWithData:v65 uti:v66];

        v68 = objc_opt_self();
        v69 = v67;
        v70 = sub_21DBF838C();
        v71 = v68;
        v55 = v232;
        [v71 attachmentAddedForUTType_];
        sub_21D17B8A8(v60, v61);

        v72 = v64;
        v20 = v223;
        (*v222)(v72, v63);
      }

      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 2)
    {
      break;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_97;
    }

    v163 = v198;
    (*v220)(v198, v227, v55);
    v164 = sub_21DBF53FC();
    v165 = [v214 addURLAttachmentWithURL_];

    (*v219)(v163, v55);
    v69 = v165;
LABEL_5:
    v73 = swift_allocObject();
    *(v73 + 16) = v69;
    v238[3] = sub_21D0D8CF0(0, &qword_280D17880);
    v238[0] = [v211 objectID];
    v74 = sub_21D0D8CF0(0, &qword_280D17860);
    v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
    *&v236 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
    v75 = swift_allocObject();
    *(v75 + 16) = v224;
    sub_21D0CEB98(v238, v75 + 32);
    sub_21D0CF2E8(&v236, (v75 + 64));
    __swift_destroy_boxed_opaque_existential_0(v238);
    sub_21D1C442C(v75, sub_21D9D711C, v73);

    v57 = v229;
    sub_21D9D9170(v229, type metadata accessor for TTRUnsavedAttachment);
    v56 = v230;
    v58 = v226;
LABEL_6:
    v52 = &v233[v225];
    v50 = v234 - 1;
    if (v234 == 1)
    {

      return;
    }
  }

  v160 = v217;
  sub_21D9D9028(v227, v217, type metadata accessor for TTRDirectlySavableImageData);
  v161 = sub_21DBF54FC();
  if (v160[16])
  {
    v162 = v200;
    if (v160[16] == 1)
    {
      sub_21DBF83AC();
    }

    else
    {
      sub_21DBF83EC();
    }
  }

  else
  {
    v162 = v200;
    sub_21DBF83DC();
  }

  sub_21DBF836C();
  (*v222)(v162, v231);
  v168 = sub_21DBFA12C();

  v169 = *(v217 + 3);
  if ((*&v169 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v169 <= -1.0)
    {
      goto LABEL_86;
    }

    if (v169 >= 1.84467441e19)
    {
      goto LABEL_87;
    }

    v170 = *(v217 + 4);
    if ((*&v170 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_88;
    }

    if (v170 <= -1.0)
    {
      goto LABEL_89;
    }

    if (v170 >= 1.84467441e19)
    {
      goto LABEL_90;
    }

    v171 = [v214 addImageAttachmentWithData:v161 uti:v168 width:v169 height:v170];

    v172 = objc_opt_self();
    v69 = v171;
    [v172 attachmentAddedForType_];
    sub_21D9D9170(v217, type metadata accessor for TTRDirectlySavableImageData);
    goto LABEL_5;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  (*v220)(v190, v227, v55);
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v183 = sub_21DBF84BC();
  __swift_project_value_buffer(v183, qword_280D0F2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  v184 = swift_initStackObject();
  *(v184 + 16) = v224;
  *(v184 + 32) = 48;
  *(v184 + 40) = 0xE100000000000000;
  v185 = sub_21DBF535C();
  *(v184 + 72) = MEMORY[0x277D837D0];
  *(v184 + 48) = v185;
  *(v184 + 56) = v186;
  sub_21D17716C(v184);

  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEAB00("Tried to add unhandled attachment type {type: fileURL, url: %@}", 63, 2);
  __break(1u);
}

void TTRReminderEditor.advanceForwardRecurrence(after:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v50 - v8;
  v9 = sub_21DBF563C();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF509C();
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v50 - v16;
  v62 = v1;
  isa = v1[2].isa;
  if (![(objc_class *)isa isRecurrent])
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_280D0F2C0);
    v62 = sub_21DBF84AC();
    v32 = sub_21DBFAEBC();
    if (!os_log_type_enabled(v62, v32))
    {
      goto LABEL_23;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Ignoring advanceForwardRecurrence, not a recurrent reminder.";
    goto LABEL_22;
  }

  v19 = [(objc_class *)isa dueDateComponents];
  if (!v19)
  {
    if (qword_280D0F2B8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  v53 = v12;
  v54 = v9;
  v55 = a1;
  v20 = v19;
  sub_21DBF4EFC();

  v52 = isa;
  v21 = [(objc_class *)isa recurrenceRules];
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v23 = v21;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v24 = sub_21DBFA5EC();

    if (!(v24 >> 62))
    {
      goto LABEL_5;
    }

LABEL_27:
    v25 = sub_21DBFBD7C();
    v56 = v13;
    v57 = v17;
    if (v25)
    {
      goto LABEL_6;
    }

LABEL_28:

    v27 = MEMORY[0x277D84F90];
LABEL_29:
    v37 = v59;
    sub_21D0D3954(v55, v59, &qword_27CE58D68);
    v38 = v60;
    v39 = v54;
    v40 = (*(v60 + 48))(v37, 1, v54);
    v41 = v52;
    if (v40 == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE58D68);
      [(objc_class *)v41 advanceForwardRecurrenceAfterNow];
    }

    else
    {
      v42 = v58;
      (*(v38 + 32))(v58, v37, v39);
      v43 = sub_21DBF55BC();
      [(objc_class *)v41 advanceForwardToNextRecurrenceAfterDate:v43];

      (*(v38 + 8))(v42, v39);
    }

    v44 = v61;
    v46 = v56;
    v45 = v57;
    (*(v61 + 16))(v56, v57, v11);
    v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v48 = (v53 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v44 + 32))(v49 + v47, v46, v11);
    *(v49 + v48) = v27;
    sub_21D182E74(sub_21D9D7884, v49);

    (*(v44 + 8))(v45, v11);
    return;
  }

  v24 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_27;
  }

LABEL_5:
  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v56 = v13;
  v57 = v17;
  if (!v25)
  {
    goto LABEL_28;
  }

LABEL_6:
  v51 = v11;
  v63 = v22;
  sub_21D18EA80(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v63;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x223D44740](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      TTRRecurrenceRuleModel.init(sourceRule:)(v28, v6);
      v63 = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21D18EA80(v29 > 1, v30 + 1, 1);
        v27 = v63;
      }

      ++v26;
      *(v27 + 16) = v30 + 1;
      sub_21D9D9028(v6, v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, type metadata accessor for TTRRecurrenceRuleModel);
    }

    while (v25 != v26);

    v11 = v51;
    goto LABEL_29;
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_20:
  v35 = sub_21DBF84BC();
  __swift_project_value_buffer(v35, qword_280D0F2C0);
  v62 = sub_21DBF84AC();
  v32 = sub_21DBFAEBC();
  if (os_log_type_enabled(v62, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Ignoring advanceForwardRecurrence, no dueDateComponents.";
LABEL_22:
    _os_log_impl(&dword_21D0C9000, v62, v32, v34, v33, 2u);
    MEMORY[0x223D46520](v33, -1, -1);
  }

LABEL_23:
  v36 = v62;
}

uint64_t TTRReminderEditor.advanceRecurrenceAndCreateIncompleteClone(withDueDate:)(uint64_t a1)
{
  v84 = a1;
  v81 = sub_21DBF563C();
  v2 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21DBF509C();
  v4 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D1A0);
  MEMORY[0x28223BE20](v83);
  v92 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v69 - v10;
  MEMORY[0x28223BE20](v11);
  v86 = &v69 - v12;
  MEMORY[0x28223BE20](v13);
  v90 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v69 - v16;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v93 = &v69 - v19;
  v20 = [*(v1 + 16) saveRequest];
  v21 = [v20 advanceForwardRecurrenceAfterNowAndCreateIncompleteCloneWithoutRecurrenceRulesAndSubtasks];

  sub_21D0D8CF0(0, &qword_280D17880);
  v22 = sub_21D0D8CF0(0, &qword_280D17770);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
  v73 = v22;
  v23 = sub_21DBF9E6C();

  v91 = v23;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = sub_21DBFC21C();
    v94 = 0;
    v72 = 0;
    v25 = 0;
    v91 = v24 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v91 + 32);
    v27 = *(v91 + 64);
    v94 = v91 + 64;
    v72 = ~v26;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & v27;
  }

  v30 = 0;
  v76 = (v72 + 64) >> 6;
  v88 = (v4 + 48);
  v89 = (v4 + 56);
  v69 = (v4 + 32);
  v82 = (v4 + 8);
  v78 = (v2 + 8);
  v31 = &selRef__setContentViewMarginType_;
  v32 = v75;
  for (i = v25; ; i = v87)
  {
    v85 = v30;
    if ((v91 & 0x8000000000000000) != 0)
    {
      if (!sub_21DBFC2DC())
      {
        return sub_21D0CFAF8();
      }

      v41 = v40;
      swift_unknownObjectRelease();
      v96 = v41;
      swift_dynamicCast();
      v4 = v97;
      v39 = i;
      if (!v97)
      {
        return sub_21D0CFAF8();
      }
    }

    else
    {
      v37 = v30;
      v38 = i;
      if (!i)
      {
        while (1)
        {
          v30 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v30 >= v76)
          {
            return sub_21D0CFAF8();
          }

          v38 = *(v94 + 8 * v30);
          ++v37;
          if (v38)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_15:
      v39 = (v38 - 1) & v38;
      v4 = *(*(v91 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v38)))));
      if (!v4)
      {
        return sub_21D0CFAF8();
      }
    }

    v42 = [v4 v31[180]];
    v77 = i;
    v87 = v39;
    if (v42)
    {
      v43 = v42;
      sub_21DBF4EFC();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = *v89;
    v46 = 1;
    (*v89)(v32, v44, 1, v95);
    sub_21D67A548(v32, v93);
    sub_21D0CF7E0(v32, &qword_27CE58D60);
    v47 = [v4 v31[180]];
    if (v47)
    {
      v48 = v47;
      sub_21DBF4EFC();

      v46 = 0;
    }

    v49 = v86;
    v50 = v95;
    v45(v86, v46, 1, v95);
    v51 = v49;
    v52 = v90;
    sub_21D0D523C(v51, v90, &qword_27CE58D60);
    v53 = *(v83 + 48);
    v54 = v52;
    v55 = v92;
    sub_21D0D3954(v54, v92, &qword_27CE58D60);
    sub_21D0D3954(v93, v55 + v53, &qword_27CE58D60);
    v56 = *v88;
    if ((*v88)(v55, 1, v50) == 1)
    {
      break;
    }

    v57 = v92;
    v58 = v74;
    sub_21D0D3954(v92, v74, &qword_27CE58D60);
    if (v56(v57 + v53, 1, v95) == 1)
    {
      (*v82)(v58, v95);
      v32 = v75;
      v31 = &selRef__setContentViewMarginType_;
      goto LABEL_29;
    }

    v59 = v92;
    v60 = v70;
    v61 = v95;
    (*v69)(v70, v92 + v53, v95);
    sub_21D9D77FC(&qword_27CE5D1A8, 255, MEMORY[0x277CC8990]);
    v71 = sub_21DBFA10C();
    v62 = *v82;
    (*v82)(v60, v61);
    v62(v58, v61);
    sub_21D0CF7E0(v59, &qword_27CE58D60);
    v32 = v75;
    v31 = &selRef__setContentViewMarginType_;
    if (v71)
    {
      goto LABEL_34;
    }

LABEL_31:
    v63 = v79;
    sub_21D0D3954(v93, v79, &qword_27CE58D60);
    if (v56(v63, 1, v95) == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = sub_21DBF4EDC();
      (*v82)(v63, v95);
    }

    [v4 setDueDateComponentsWithAlarmsIfNeeded_];

    v35 = v80;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v36 = sub_21DBF55BC();
    (*v78)(v35, v81);
    [v4 setLastBannerPresentationDate_];

    sub_21D0CF7E0(v90, &qword_27CE58D60);
    sub_21D0CF7E0(v93, &qword_27CE58D60);
  }

  v31 = &selRef__setContentViewMarginType_;
  if (v56(v92 + v53, 1, v95) != 1)
  {
LABEL_29:
    sub_21D0CF7E0(v92, &qword_27CE5D1A0);
    goto LABEL_31;
  }

  sub_21D0CF7E0(v92, &qword_27CE58D60);
LABEL_34:
  if (qword_280D0F2B8 == -1)
  {
    goto LABEL_35;
  }

LABEL_39:
  swift_once();
LABEL_35:
  v65 = sub_21DBF84BC();
  __swift_project_value_buffer(v65, qword_280D0F2C0);
  v66 = sub_21DBF84AC();
  v67 = sub_21DBFAE9C();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_21D0C9000, v66, v67, "Don't change this recurring clone dueDate as value is the same", v68, 2u);
    MEMORY[0x223D46520](v68, -1, -1);
  }

  sub_21D0CFAF8();
  sub_21D0CF7E0(v90, &qword_27CE58D60);
  return sub_21D0CF7E0(v93, &qword_27CE58D60);
}

Swift::Void __swiftcall TTRReminderEditor.removeAllAssignments()()
{
  v1 = *(v0 + 16);
  v2 = &selRef__setContentViewMarginType_;
  v3 = [v1 assignmentContext];
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v4 = [v3 assignments];
  sub_21D0D8CF0(0, &qword_27CE59850);
  sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850);
  v5 = sub_21DBFAAAC();

  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_21DBFBD1C();
    sub_21DBFAB5C();
    v5 = v47[4];
    v6 = v47[5];
    v7 = v47[6];
    v8 = v47[7];
    v9 = v47[8];
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);
  }

  v39 = v7;
  v13 = (v7 + 64) >> 6;
  v42 = v5;
  v43 = v6;
  v41 = v1;
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v14 = sub_21DBFBDBC();
  if (!v14 || (*&v45 = v14, swift_dynamicCast(), v15 = v47[0], v16 = v8, v44 = v9, v6 = v43, !v47[0]))
  {
LABEL_37:
    sub_21D0CFAF8();

    return;
  }

  while (1)
  {
    v19 = [v1 v2[112]];
    if (!v19)
    {

      v8 = v16;
      v9 = v44;
      v5 = v42;
      if (v42 < 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v20 = v19;
    v21 = [v19 assignments];
    v22 = sub_21DBFAAAC();

    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = v15;
      v24 = sub_21DBFBDCC();

      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (*(v22 + 16))
      {
        v29 = sub_21DBFB62C();
        v30 = -1 << *(v22 + 32);
        v31 = v29 & ~v30;
        if ((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (1)
          {
            v33 = *(*(v22 + 48) + 8 * v31);
            v34 = sub_21DBFB63C();

            if (v34)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          v1 = v41;
          v2 = &selRef__setContentViewMarginType_;
LABEL_22:
          [v20 removeAssignment_];
          v25 = swift_allocObject();
          *(v25 + 16) = v15;
          v47[3] = sub_21D0D8CF0(0, &qword_280D17880);
          v26 = v15;
          v47[0] = [v1 objectID];
          v27 = sub_21D0D8CF0(0, &qword_280D17860);
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
          *&v45 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_21DC08D00;
          sub_21D0CEB98(v47, v28 + 32);
          sub_21D0CF2E8(&v45, (v28 + 64));
          __swift_destroy_boxed_opaque_existential_0(v47);
          sub_21D1C442C(v28, sub_21D9D7920, v25);

          goto LABEL_34;
        }
      }

LABEL_28:

      v1 = v41;
      v2 = &selRef__setContentViewMarginType_;
    }

    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_280D0F2C0);
    v36 = sub_21DBF84AC();
    v37 = sub_21DBFAE9C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21D0C9000, v36, v37, "Ignoring remove(assignment:) because the assignment has already been removed", v38, 2u);
      MEMORY[0x223D46520](v38, -1, -1);
    }

LABEL_34:
    v8 = v16;
    v6 = v43;
    v9 = v44;
    v5 = v42;
    if (v42 < 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v17 = v8;
    v18 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_18:
    v44 = (v18 - 1) & v18;
    v15 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v15)
    {
      goto LABEL_37;
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_37;
    }

    v18 = *(v6 + 8 * v16);
    ++v17;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void TTRReminderEditor.addAssignment(assigneeID:originatorID:)(void *a1, void *a2)
{
  v4 = *(v2 + 16);
  v40 = [v4 assignmentContext];
  if (!v40)
  {
    return;
  }

  if (a2)
  {
    v41 = a2;
  }

  else
  {
    v12 = [v4 listChangeItem];
    if (!v12 || (v13 = v12, v14 = sub_21D9BEE50(), v13, !v14) || (v15 = [v14 objectID], v14, (v41 = v15) == 0))
    {
      if (qword_280D0F2B8 != -1)
      {
        goto LABEL_40;
      }

      goto LABEL_10;
    }
  }

  v5 = a2;
  v6 = [v40 assignments];
  sub_21D0D8CF0(0, &qword_27CE59850);
  sub_21D19F2B8(&qword_27CE59858, &qword_27CE59850);
  v7 = sub_21DBFAAAC();

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_21DBFBD1C();
    sub_21DBFAB5C();
    v7 = v45;
    v8 = v46;
    v9 = v47;
    v10 = v48;
    v11 = v49;
  }

  else
  {
    v10 = 0;
    v20 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v11 = v22 & *(v7 + 56);
  }

  v39 = 0;
  v23 = (v9 + 64) >> 6;
LABEL_20:
  v24 = v10;
  while (v7 < 0)
  {
    if (!sub_21DBFBDBC() || (swift_dynamicCast(), v28 = v44, v10 = v24, v27 = v11, !v44))
    {
LABEL_35:
      sub_21D0CFAF8();
      if (v39)
      {
      }

      else
      {
        v36 = [v40 addAssignmentWithAssigneeID:a1 originatorID:v41 status:1];
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        v38 = v36;
        sub_21D182E74(sub_21D9D794C, v37);
      }

      return;
    }

LABEL_32:
    v43 = v27;
    v29 = [v28 assigneeID];
    v30 = [v28 originatorID];
    sub_21D0D8CF0(0, &qword_280D17880);
    v31 = a1;
    v32 = v41;
    v33 = v29;
    v34 = v30;
    if (sub_21DBFB63C())
    {
      v35 = sub_21DBFB63C();

      if (v35)
      {

        v39 = 1;
        v11 = v43;
        goto LABEL_20;
      }
    }

    else
    {
    }

    sub_21D9C7F8C(v28);

    v24 = v10;
    v11 = v43;
  }

  v25 = v24;
  v26 = v11;
  v10 = v24;
  if (v11)
  {
LABEL_28:
    v27 = (v26 - 1) & v26;
    v28 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v28)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v10 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v10 >= v23)
    {
      goto LABEL_35;
    }

    v26 = *(v8 + 8 * v10);
    ++v25;
    if (v26)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_10:
  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_280D0F2C0);
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAEBC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21D0C9000, v17, v18, "addAssignment(assigneeID:) failed. Can't find sharee ID for the current user", v19, 2u);
    MEMORY[0x223D46520](v19, -1, -1);
  }
}

void static TTRReminderEditor.move(moves:saveRequest:shouldSave:undoContext:)(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v23 = v4 - 1;
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v7 = *i;
      sub_21D0D3954(a4, aBlock, &unk_27CE60D80);
      sub_21D0D3954(aBlock, v27, &unk_27CE60D80);
      v8 = v6;
      v9 = v7;
      v10 = [a2 updateReminder_];
      sub_21D0D3954(v27, v26, &unk_27CE60D80);
      v25[6] = 0;
      sub_21D0D3954(v26, v25, &unk_27CE60D80);
      v11 = [v10 fetchedCurrentDueDateDeltaAlert];
      sub_21D0CF7E0(v26, &unk_27CE60D80);
      sub_21D0CF7E0(v27, &unk_27CE60D80);
      sub_21D0CF7E0(aBlock, &unk_27CE60D80);
      v12 = [v10 subtaskContext];
      if (v12)
      {
        v13 = v12;
        v14 = [v10 listChangeItem];
        if (v14)
        {
          v15 = v14;
          v16 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(v9, v14, v13, 0);
        }

        else
        {
          v16 = v9;
        }

        [v13 insertReminderChangeItem:v16 afterReminderChangeItem:0];

        sub_21D0CF7E0(v25, &unk_27CE60D80);
        v17 = v23;
        if (!v23)
        {
          break;
        }
      }

      else
      {

        sub_21D0CF7E0(v25, &unk_27CE60D80);
        v17 = v23;
        if (!v23)
        {
          break;
        }
      }

      v23 = v17 - 1;
    }
  }

  if (a3)
  {
    sub_21D0D8CF0(0, &qword_280D1B900);
    v18 = sub_21DBFB12C();
    aBlock[4] = sub_21D9C89C0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_127;
    v19 = _Block_copy(aBlock);
    [a2 saveWithQueue:v18 completion:v19];
    _Block_release(v19);
  }
}

void TTRReminderEditor.editAttachmentOrUserActivity(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v21 - v6;
  v8 = *(v2 + 16);
  v9 = [v8 attachmentContext];
  if (v9)
  {

    v10 = sub_21DBF54CC();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, a1, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    TTRReminderEditor.edit(url:)(v7);
    sub_21D0CF7E0(v7, &qword_27CE5EA20);
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D448F0]);
    v13 = sub_21DBF53FC();
    v14 = [v12 initWithUniversalLink_];

    sub_21DBF535C();
    v15 = [v8 userActivity];
    v16 = [v8 notes];
    [v8 setUserActivity_];
    v17 = sub_21DBFA12C();

    [v8 setNotesAsString_];

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    v22 = v15;
    v19 = v16;
    sub_21D182E74(sub_21D9D7978, v18);

    v20 = v22;
  }
}

Swift::Void __swiftcall TTRReminderEditor.edit(notes:)(NSAttributedString_optional notes)
{
  v1 = sub_21D9C7928(notes.value.super.isa);
  if (v1)
  {
    v2 = v1;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v2);
  }
}

void TTRReminderEditor.edit(userActivity:)(void *a1)
{
  v3 = *(v1 + 16);
  v13 = [v3 userActivity];
  if (v13)
  {
    if (a1)
    {
      sub_21D0D8CF0(0, &qword_27CE5B258);
      v4 = v13;
      v5 = a1;
      v6 = sub_21DBFB63C();

      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_10:
    [v3 setUserActivity_];
    v11 = swift_allocObject();
    *(v11 + 16) = v13;
    v12 = v13;
    sub_21D182E74(sub_21D9D7980, v11);

    goto LABEL_11;
  }

  if (a1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (qword_280D0F2B8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F2C0);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Ignoring edit(notes:) because the value is the same", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

LABEL_11:
}

void TTRReminderEditor.edit(completed:trackEditedUsing:)(int a1, uint64_t a2)
{
  v33 = a1;
  v4 = a1 & 1;
  v5 = sub_21DBF563C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  v18 = *(v2 + 16);
  if ([v18 isCompleted] == v4)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F2C0);
    v34 = sub_21DBF84AC();
    v23 = sub_21DBFAE9C();
    if (os_log_type_enabled(v34, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21D0C9000, v34, v23, "Ignoring edit(completed:) because value is the same", v24, 2u);
      MEMORY[0x223D46520](v24, -1, -1);
    }

    v25 = v34;
  }

  else
  {
    if (a2)
    {
      v31 = [v18 objectID];
      swift_beginAccess();
      sub_21D29B0D0(&v35, v31);
      swift_endAccess();
    }

    v19 = [v18 completionDate];
    if (v19)
    {
      v20 = v19;
      sub_21DBF55FC();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    (*(v6 + 56))(v13, v21, 1, v5);
    sub_21D0D523C(v13, v17, &qword_27CE58D68);
    [v18 setCompleted_];
    sub_21D0D3954(v17, v10, &qword_27CE58D68);
    v26 = v5;
    v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v28 = swift_allocObject();
    sub_21D0D523C(v10, v28 + v27, &qword_27CE58D68);
    sub_21D182E74(sub_21D9D9778, v28);

    v29 = v34;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v30 = sub_21DBF55BC();
    (*(v6 + 8))(v29, v26);
    [v18 setLastBannerPresentationDate_];

    sub_21D0CF7E0(v17, &qword_27CE58D68);
  }
}

void TTRReminderEditor.updateHashtags(toMatchLabels:)(uint64_t a1)
{
  v3 = sub_21DBF78CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v68 = v62 - v8;
  v69 = v1;
  v71 = *(v1 + 16);
  v67 = [v71 hashtagContext];
  if (v67)
  {
    v63 = v4;
    v64 = v3;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = sub_21D9D6344(*(a1 + 16), 0);
      v11 = sub_21D9D4F98(v76, v10 + 4, v9, a1);
      sub_21DBF8E0C();
      sub_21D0CFAF8();
      if (v11 != v9)
      {
        __break(1u);
      }
    }

    sub_21DBF784C();
    v12 = [v67 hashtags];
    v13 = sub_21D0D8CF0(0, &qword_280D0C348);
    v14 = sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348);
    v15 = sub_21DBFAAAC();

    v65 = v13;
    v62[2] = v14;
    if ((v15 & 0xC000000000000001) != 0)
    {
      sub_21DBFBD1C();
      sub_21DBFAB5C();
      v15 = v76[0];
      v16 = v76[1];
      v17 = v76[2];
      v18 = v76[3];
      v19 = v76[4];
    }

    else
    {
      v18 = 0;
      v20 = -1 << *(v15 + 32);
      v16 = v15 + 56;
      v17 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v15 + 56);
    }

    v62[1] = v17;
    v23 = (v17 + 64) >> 6;
    v66 = xmmword_21DC08D00;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v29 = sub_21DBFBDBC();
    if (v29 && (*&v72 = v29, swift_dynamicCast(), v28 = v74[0], v26 = v18, v27 = v19, v74[0]))
    {
      while (1)
      {
        v30 = [v28 name];
        sub_21DBFA16C();

        LOBYTE(v30) = sub_21DBF788C();

        if ((v30 & 1) != 0 || (v31 = [v71 hashtagContext]) == 0)
        {

          v18 = v26;
          v19 = v27;
          if (v15 < 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v32 = v31;
          sub_21D9CB53C(v28, 0, 0, 1);
          if (v33)
          {
            v34 = v33;
            [v32 removeHashtag_];
            v35 = [v34 objectID];
            [v32 cancelUndeleteHashtagWithID_];

            v36 = swift_allocObject();
            *(v36 + 16) = 0;
            v37 = sub_21D9CBAD8(v34, 0);

            *(v36 + 16) = v37;

            v38 = swift_allocObject();
            *(v38 + 16) = v36;
            *(v38 + 24) = v34;
            *(v38 + 32) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
            v39 = swift_allocObject();
            *(v39 + 16) = sub_21D9D79B8;
            *(v39 + 24) = v38;
            v75 = sub_21D0D8CF0(0, &qword_280D17880);

            v74[0] = [v71 objectID];
            v40 = sub_21D0D8CF0(0, &qword_280D17860);
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
            *&v72 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
            v41 = swift_allocObject();
            *(v41 + 16) = v66;
            sub_21D0CEB98(v74, v41 + 32);
            sub_21D0CF2E8(&v72, (v41 + 64));
            __swift_destroy_boxed_opaque_existential_0(v74);
            sub_21D1C442C(v41, sub_21D233058, v39);
          }

          else
          {
          }

          v18 = v26;
          v19 = v27;
          if (v15 < 0)
          {
            goto LABEL_20;
          }
        }

LABEL_14:
        v24 = v18;
        v25 = v19;
        v26 = v18;
        if (!v19)
        {
          break;
        }

LABEL_18:
        v27 = (v25 - 1) & v25;
        v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!v28)
        {
          goto LABEL_29;
        }
      }

      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26 >= v23)
        {
          goto LABEL_29;
        }

        v25 = *(v16 + 8 * v26);
        ++v24;
        if (v25)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:
      sub_21D0CFAF8();
      v42 = [v67 hashtags];
      v43 = sub_21DBFAAAC();

      sub_21D9B2298(v43);

      v44 = v70;
      sub_21DBF784C();
      v45 = sub_21DBF785C();
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = (v45 + 40);
        do
        {
          v48 = *(v47 - 1);
          v49 = *v47;
          sub_21DBF8E0C();
          if ((sub_21DBF788C() & 1) != 0 || (v50 = [v71 hashtagContext]) == 0)
          {
          }

          else
          {
            v51 = v50;
            sub_21D9CB53C(v48, v49, 0, 0);
            if (v52)
            {
              v53 = v52;
            }

            else
            {
              v54 = sub_21DBFA12C();
              v55 = [v51 addHashtagWithType:0 name:v54];

              v56 = swift_allocObject();
              *(v56 + 16) = v55;
              *(v56 + 24) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
              v57 = swift_allocObject();
              *(v57 + 16) = sub_21D9D79AC;
              *(v57 + 24) = v56;
              v75 = sub_21D0D8CF0(0, &qword_280D17880);

              v74[0] = [v71 objectID];
              v58 = sub_21D0D8CF0(0, &qword_280D17860);
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
              *&v72 = v58;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
              v59 = swift_allocObject();
              *(v59 + 16) = v66;
              sub_21D0CEB98(v74, v59 + 32);
              sub_21D0CF2E8(&v72, (v59 + 64));
              __swift_destroy_boxed_opaque_existential_0(v74);
              sub_21D1C442C(v59, sub_21D233058, v57);
            }

            v44 = v70;
          }

          v47 += 2;
          --v46;
        }

        while (v46);
      }

      v60 = *(v63 + 8);
      v61 = v64;
      v60(v44, v64);
      v60(v68, v61);
    }
  }
}

uint64_t static TTRReminderEditor.defaultDueDateComponentsSettingToNextFullHour(dateComponents:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v21 = sub_21DBF5A0C();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF583C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF5A2C();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF563C();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF559C();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9830], v6);
  sub_21DBF584C();
  (*(v7 + 8))(v9, v6);
  v16 = v21;
  (*(v3 + 104))(v5, *MEMORY[0x277CC9980], v21);
  sub_21DBF5A1C();
  (*(v3 + 8))(v5, v16);
  v17 = sub_21DBF509C();
  (*(*(v17 - 8) + 16))(a2, v24, v17);
  sub_21DBF4F6C();
  sub_21DBF4FDC();
  sub_21DBF4FFC();
  sub_21DBF4DFC();
  (*(v22 + 8))(v12, v23);
  return (*(v13 + 8))(v15, v20);
}

void sub_21D9B84D8(void (*a1)(id))
{
  sub_21D0D3954(v1 + 24, v7, &unk_27CE60D80);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
    a1([v5 disableUndoRegistration]);
    [v5 enableUndoRegistration];
  }

  else
  {
    v6 = sub_21D0CF7E0(v7, &unk_27CE60D80);
    a1(v6);
  }
}

uint64_t static TTRReminderEditor.tomorrowDueDateComponents(now:)@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = sub_21DBF509C();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x28223BE20](v1);
  v60 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF5A2C();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v59 = sub_21DBF563C();
  v68 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v67 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v53 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v19 = sub_21DBF5C4C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v58 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  sub_21DBF507C();
  v25 = *(v20 + 48);
  v26 = v25(v18, 1, v19);
  v64 = v24;
  v55 = v25;
  if (v26 == 1)
  {
    v27 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v25(v18, 1, v19) != 1)
    {
      sub_21D0CF7E0(v18, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v20 + 32))(v24, v18, v19);
  }

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF597C();
  (*(v56 + 8))(v5, v57);
  v28 = v68;
  v29 = *(v68 + 48);
  v30 = v59;
  if (v29(v8, 1, v59) == 1)
  {
    v31 = v66;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v32 = v29(v8, 1, v30);
    v33 = v58;
    if (v32 != 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE58D68);
    }
  }

  else
  {
    v34 = *(v28 + 32);
    v31 = v66;
    v34(v66, v8, v30);
    v33 = v58;
  }

  static TTRReminderEditor.tomorrowDueDate(now:)(v31, v67);
  v35 = v65;
  (*(v20 + 16))(v65, v64, v19);
  (*(v20 + 56))(v35, 0, 1, v19);
  v36 = sub_21DBF55BC();
  v37 = v35;
  v38 = v54;
  sub_21D0D3954(v37, v54, &unk_27CE60DB0);
  v39 = v55;
  if (v55(v38, 1, v19) == 1)
  {
    v40 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v39(v38, 1, v19) != 1)
    {
      sub_21D0CF7E0(v38, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v20 + 32))(v33, v38, v19);
  }

  v41 = objc_opt_self();
  v42 = sub_21DBF5C0C();
  v43 = *(v20 + 8);
  v43(v33, v19);
  v44 = [v41 rem:v36 dateComponentsWithDate:v42 timeZone:1 isAllDay:?];

  v45 = v63;
  sub_21DBF4EFC();

  v46 = sub_21DBF4EDC();
  v47 = [v46 rem_strippingTimeZone];

  v48 = v60;
  sub_21DBF4EFC();

  v50 = v61;
  v49 = v62;
  (*(v61 + 8))(v45, v62);
  sub_21D0CF7E0(v65, &unk_27CE60DB0);
  v51 = *(v68 + 8);
  v51(v67, v30);
  v51(v66, v30);
  v43(v64, v19);
  return (*(v50 + 32))(v45, v48, v49);
}

uint64_t static TTRReminderEditor.postponedDueDateComponents(to:dueDate:timeZone:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a1;
  v46 = a2;
  v50 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v39 - v5;
  v6 = sub_21DBF563C();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF5C4C();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21DBF5A2C();
  v54 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF509C();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v53 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v18 = sub_21DBF5A0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC08D10;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x277CC9988], v18);
  v24(v23 + v20, *MEMORY[0x277CC9998], v18);
  v24(v23 + 2 * v20, *MEMORY[0x277CC9968], v18);
  v25 = v41;
  sub_21D1D0F50(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21DBF58DC();

  v27 = v54 + 8;
  v26 = *(v54 + 8);
  v28 = v40;
  v26(v12, v40);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v29 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  sub_21DBF58BC();
  v30 = v10;
  v31 = v45;
  (*(v43 + 8))(v30, v44);
  v26(v12, v28);
  sub_21DBF4F5C();
  sub_21DBF4F6C();
  sub_21DBF4FCC();
  sub_21DBF4FDC();
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v46 = v17;
  sub_21DBF597C();
  v32 = v28;
  v54 = v27;
  v26(v12, v28);
  v33 = *(v25 + 48);
  v34 = v42;
  if ((v33)(v31, 1) == 1)
  {
    v35 = v49;
    (*(v25 + 16))(v49, v52, v34);
    if (v33(v31, 1, v34) != 1)
    {
      sub_21D0CF7E0(v31, &qword_27CE58D68);
    }
  }

  else
  {
    v35 = v49;
    (*(v25 + 32))(v49, v31, v34);
  }

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF58BC();
  v26(v12, v32);
  (*(v25 + 8))(v35, v34);
  v36 = v48;
  v37 = *(v47 + 8);
  v37(v53, v48);
  return (v37)(v46, v36);
}

uint64_t static TTRReminderEditor.todayDueDateComponents(now:)@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_21DBF509C();
  v55 = *(v1 - 8);
  v56 = v1;
  MEMORY[0x28223BE20](v1);
  v54 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF5A2C();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_21DBF563C();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v48 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = sub_21DBF5C4C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v52 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  sub_21DBF507C();
  v24 = *(v19 + 48);
  v25 = v24(v17, 1, v18);
  v58 = v23;
  v49 = v24;
  if (v25 == 1)
  {
    v26 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v24(v17, 1, v18) != 1)
    {
      sub_21D0CF7E0(v17, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
  }

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF597C();
  (*(v50 + 8))(v5, v51);
  v28 = v60;
  v27 = v61;
  v29 = *(v60 + 48);
  if (v29(v8, 1, v61) == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v30 = v29(v8, 1, v27);
    v31 = v52;
    if (v30 != 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE58D68);
    }
  }

  else
  {
    (*(v28 + 32))(v59, v8, v27);
    v31 = v52;
  }

  v32 = v53;
  (*(v19 + 16))(v53, v58, v18);
  (*(v19 + 56))(v32, 0, 1, v18);
  v33 = sub_21DBF55BC();
  v34 = v48;
  sub_21D0D3954(v32, v48, &unk_27CE60DB0);
  v35 = v49;
  if (v49(v34, 1, v18) == 1)
  {
    v36 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v35(v34, 1, v18) != 1)
    {
      sub_21D0CF7E0(v34, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v19 + 32))(v31, v34, v18);
  }

  v37 = objc_opt_self();
  v38 = sub_21DBF5C0C();
  v39 = *(v19 + 8);
  v39(v31, v18);
  v40 = [v37 rem:v33 dateComponentsWithDate:v38 timeZone:1 isAllDay:?];

  v41 = v57;
  sub_21DBF4EFC();

  v42 = sub_21DBF4EDC();
  v43 = [v42 rem_strippingTimeZone];

  v44 = v54;
  sub_21DBF4EFC();

  v46 = v55;
  v45 = v56;
  (*(v55 + 8))(v41, v56);
  sub_21D0CF7E0(v32, &unk_27CE60DB0);
  (*(v60 + 8))(v59, v61);
  v39(v58, v18);
  return (*(v46 + 32))(v41, v44, v45);
}

uint64_t static TTRReminderEditor.startOfWeekDueDateComponents(with:now:)@<X0>(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v97 = a1;
  v107 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v2 - 8);
  v104 = &v87 - v3;
  v4 = sub_21DBF509C();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = &v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v103 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v87 - v11;
  v12 = sub_21DBF5C4C();
  v13 = *(v12 - 8);
  v108 = v12;
  v109 = v13;
  MEMORY[0x28223BE20](v12);
  v91 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = &v87 - v16;
  v17 = sub_21DBF5A2C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v21 - 8);
  v93 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v87 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v87 - v27;
  v29 = sub_21DBF563C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v92 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v105 = &v87 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v87 - v35;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF597C();
  v37 = v30;
  v102 = v18;
  v39 = v18 + 8;
  v38 = *(v18 + 8);
  v106 = v17;
  v98 = v38;
  v38(v20, v17);
  v40 = *(v37 + 6);
  if (v40(v28, 1, v29) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE58D68);
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v41 = sub_21DBF84BC();
    __swift_project_value_buffer(v41, qword_280D0F2C0);
    v42 = sub_21DBF84AC();
    v43 = sub_21DBFAEBC();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v109;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21D0C9000, v42, v43, "TTRReminderEditor: Unable to retrieve a date from dueDateComponents for startOfWeekDueDateComponents", v46, 2u);
      MEMORY[0x223D46520](v46, -1, -1);
    }

    (*(v102 + 7))(v104, 1, 1, v106);
    (*(v45 + 56))(v103, 1, 1, v108);
    return sub_21DBF504C();
  }

  else
  {
    v89 = v39;
    v48 = *(v37 + 4);
    v94 = v36;
    v48(v36, v28, v29);
    static TTRReminderEditor.startOfWeekDate(now:)(v25);
    v97 = v40;
    v49 = v29;
    if (v40(v25, 1, v29) == 1)
    {
      v50 = v37;
      sub_21D0CF7E0(v25, &qword_27CE58D68);
      if (qword_280D0F2B8 != -1)
      {
        swift_once();
      }

      v51 = sub_21DBF84BC();
      __swift_project_value_buffer(v51, qword_280D0F2C0);
      v52 = sub_21DBF84AC();
      v53 = sub_21DBFAEBC();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v109;
      v56 = v94;
      if (v54)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_21D0C9000, v52, v53, "TTRReminderEditor: Unable to find a startOfWeekDate", v57, 2u);
        MEMORY[0x223D46520](v57, -1, -1);
      }

      (*(v102 + 7))(v104, 1, 1, v106);
      (*(v55 + 56))(v103, 1, 1, v108);
      sub_21DBF504C();
      return v50[1](v56, v49);
    }

    else
    {
      v104 = v37;
      v102 = v37 + 32;
      v48(v105, v25, v29);
      v58 = v90;
      sub_21DBF507C();
      v60 = v108;
      v59 = v109;
      v61 = *(v109 + 48);
      v62 = v61(v58, 1, v108);
      v88 = v49;
      v87 = v48;
      if (v62 == 1)
      {
        v63 = [objc_opt_self() defaultTimeZone];
        sub_21DBF5C2C();

        if (v61(v58, 1, v60) != 1)
        {
          sub_21D0CF7E0(v58, &unk_27CE60DB0);
        }
      }

      else
      {
        (*(v59 + 32))(v99, v58, v60);
      }

      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
      v64 = sub_21DBF5A0C();
      v65 = *(v64 - 8);
      v66 = *(v65 + 72);
      v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_21DC08D10;
      v69 = v68 + v67;
      v70 = *(v65 + 104);
      v70(v69, *MEMORY[0x277CC9988], v64);
      v70(v69 + v66, *MEMORY[0x277CC9998], v64);
      v70(v69 + 2 * v66, *MEMORY[0x277CC9968], v64);
      sub_21D1D0F50(v68);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_21DBF58DC();

      v71 = v106;
      v72 = v98;
      v98(v20, v106);
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v73 = [objc_opt_self() defaultTimeZone];
      v74 = v91;
      sub_21DBF5C2C();

      sub_21DBF58BC();
      v75 = *(v109 + 8);
      v76 = v74;
      v77 = v108;
      v109 += 8;
      v103 = v75;
      (v75)(v76, v108);
      v72(v20, v71);
      sub_21DBF4F5C();
      sub_21DBF4F6C();
      sub_21DBF4FCC();
      sub_21DBF4FDC();
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v78 = v93;
      sub_21DBF597C();
      v72(v20, v71);
      v79 = v88;
      v80 = v97;
      v81 = v77;
      if (v97(v78, 1, v88) == 1)
      {
        v82 = v92;
        (*(v104 + 2))(v92, v105, v79);
        if (v80(v78, 1, v79) != 1)
        {
          sub_21D0CF7E0(v78, &qword_27CE58D68);
        }
      }

      else
      {
        v82 = v92;
        v87(v92, v78, v79);
      }

      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v83 = v99;
      sub_21DBF58BC();
      v98(v20, v71);
      v84 = *(v104 + 1);
      v84(v82, v79);
      v85 = v96;
      v86 = *(v95 + 8);
      v86(v101, v96);
      v86(v100, v85);
      (v103)(v83, v81);
      v84(v105, v79);
      return (v84)(v94, v79);
    }
  }
}

uint64_t static TTRReminderEditor.defaultDueDateComponentsFromNow()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  static TTRReminderEditor.defaultDueDateComponents(from:)(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t TTRReminderEditor.WeekendType.localizedDescription.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRReminderEditor.weekendDueDateComponents(now:)(uint64_t a1, _BYTE *a2)
{
  v75 = a1;
  v76 = a2;
  v2 = sub_21DBF5A2C();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_21DBF5C4C();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v59 - v7;
  v8 = sub_21DBF509C();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v12 - 8);
  v68 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v59 - v15;
  v72 = sub_21DBF563C();
  v16 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64860);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v59 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64868);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  v28 = sub_21DBF4D0C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D9CDF64(v24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64870);
  if ((*(*(v32 - 8) + 48))(v24, 1, v32) == 1)
  {
    sub_21D0CF7E0(v24, &qword_27CE64860);
    v33 = v63;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v34 = [objc_opt_self() defaultTimeZone];
    v35 = v62;
    sub_21DBF5C2C();

    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    v36 = v61;
    sub_21DBF58BC();
    (*(v16 + 8))(v18, v72);
    (*(v70 + 8))(v35, v71);
    (*(v64 + 8))(v33, v65);
    static TTRReminderEditor.todayDueDateComponents(now:)(v75);
    result = (*(v73 + 8))(v36, v74);
    v38 = 0;
  }

  else
  {
    v69 = v16;
    v39 = v24[*(v32 + 48)];
    v40 = *(v25 + 48);
    v63 = v29;
    v41 = v29[4];
    (v41)(v27, v24, v28);
    v27[v40] = v39;
    LODWORD(v61) = v27[*(v25 + 48)];
    v64 = v28;
    (v41)(v31, v27, v28);
    v62 = v31;
    sub_21DBF4CDC();
    v42 = v70;
    v43 = v71;
    v44 = v60;
    (*(v70 + 56))(v60, 1, 1, v71);
    v65 = v21;
    v45 = sub_21DBF55BC();
    v46 = v68;
    sub_21D0D3954(v44, v68, &unk_27CE60DB0);
    v47 = *(v42 + 48);
    if (v47(v46, 1, v43) == 1)
    {
      v48 = [objc_opt_self() defaultTimeZone];
      v49 = v66;
      sub_21DBF5C2C();

      v50 = v47(v46, 1, v43);
      v51 = v74;
      v52 = v73;
      if (v50 != 1)
      {
        sub_21D0CF7E0(v68, &unk_27CE60DB0);
      }
    }

    else
    {
      v49 = v66;
      (*(v42 + 32))(v66, v46, v43);
      v51 = v74;
      v52 = v73;
    }

    v53 = objc_opt_self();
    v54 = sub_21DBF5C0C();
    (*(v42 + 8))(v49, v43);
    v55 = [v53 rem:v45 dateComponentsWithDate:v54 timeZone:1 isAllDay:?];

    v56 = v67;
    sub_21DBF4EFC();

    v57 = sub_21DBF4EDC();
    v58 = [v57 rem_strippingTimeZone];

    sub_21DBF4EFC();
    (*(v52 + 8))(v56, v51);
    sub_21D0CF7E0(v44, &unk_27CE60DB0);
    (*(v69 + 8))(v65, v72);
    result = v63[1](v62, v64);
    v38 = v61;
  }

  *v76 = v38;
  return result;
}

uint64_t static TTRReminderEditor.tomorrowDueDate(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - v3;
  v4 = sub_21DBF509C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v34 = &v32 - v21;
  v22 = *(v8 + 56);
  v22(v18, 1, 1, v7, v20);
  sub_21D0D3954(v18, v15, &qword_27CE5A8B0);
  v23 = *(v8 + 48);
  if (v23(v15, 1, v7) == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v24 = v10;
    if (v23(v15, 1, v7) != 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE5A8B0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v15, v7);
    v24 = v10;
  }

  (v22)(v33, 1, 1, v7);
  v25 = sub_21DBF5C4C();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  sub_21DBF504C();
  sub_21DBF4F1C();
  v26 = v34;
  v27 = v38;
  sub_21DBF598C();
  (*(v36 + 8))(v6, v37);
  (*(v8 + 8))(v24, v7);
  sub_21D0CF7E0(v18, &qword_27CE5A8B0);
  v28 = sub_21DBF563C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v26, 1, v28) != 1)
  {
    return (*(v29 + 32))(v39, v26, v28);
  }

  (*(v29 + 16))(v39, v27, v28);
  result = (v30)(v26, 1, v28);
  if (result != 1)
  {
    return sub_21D0CF7E0(v26, &qword_27CE58D68);
  }

  return result;
}

uint64_t static TTRReminderEditor.thisWeekendDueDate(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_21DBF58EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF5A2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF557C();
  v19 = 0;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  (*(v4 + 104))(v6, *MEMORY[0x277CC98E8], v3);
  v17 = a1;
  LOBYTE(a1) = sub_21DBF586C();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  if (a1)
  {
    return (*(v12 + 32))(v18, v14, v11);
  }

  (*(v12 + 8))(v14, v11);
  return (*(v12 + 16))(v18, v17, v11);
}

id TTRReminderEditor.edit(listID:knownSubtaskChangeItems:forceCopyingReminder:allowsLossyCopying:assignmentCopying:)(void *a1, unint64_t a2, int a3, char a4, char *a5)
{
  v144 = *MEMORY[0x277D85DE8];
  v10 = *a5;
  v134 = *(v5 + 16);
  v11 = [v134 listID];
  if (v11)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    v12 = v11;
    v13 = a1;
    v14 = sub_21DBFB63C();

    if (v14)
    {
      if (qword_280D0F2B8 == -1)
      {
LABEL_4:
        v15 = sub_21DBF84BC();
        __swift_project_value_buffer(v15, qword_280D0F2C0);
        v16 = v13;
        v17 = sub_21DBF84AC();
        v18 = sub_21DBFAE9C();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v16;
          *v20 = v16;
          v21 = v16;
          _os_log_impl(&dword_21D0C9000, v17, v18, "Ignoring edit(listID:) because list is the same {listID: %@}", v19, 0xCu);
          sub_21D0CF7E0(v20, &unk_27CE60070);
          MEMORY[0x223D46520](v20, -1, -1);
          MEMORY[0x223D46520](v19, -1, -1);
        }

LABEL_15:
        v36 = v134;
LABEL_43:

        return v36;
      }

LABEL_102:
      swift_once();
      goto LABEL_4;
    }
  }

  v22 = sub_21D9C4584(a1);
  if (!v22)
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_280D0F2C0);
    v30 = a1;
    v31 = sub_21DBF84AC();
    v32 = sub_21DBFAEBC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_21D0C9000, v31, v32, "Ignoring edit(listID:) because it failed to obtain REMListChangeItem {listID: %@}", v33, 0xCu);
      sub_21D0CF7E0(v34, &unk_27CE60070);
      MEMORY[0x223D46520](v34, -1, -1);
      MEMORY[0x223D46520](v33, -1, -1);
    }

    goto LABEL_15;
  }

  v23 = v22;
  v128 = v10;
  v130 = a4;
  v131 = a3;
  v132 = a2;
  v24 = [v134 saveRequest];
  *(&v142 + 1) = sub_21D0D8CF0(0, &qword_280D17770);
  v143 = &protocol witness table for REMReminderChangeItem;
  *&v141 = v134;
  v25 = __swift_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
  v133 = v134;
  v26 = v23;
  v27 = [v133 listChangeItem];
  if (v27)
  {
    *&v139[0] = v27;
    sub_21D0D8CF0(0, &unk_280D177F0);
    v28 = sub_21D1D20BC();
  }

  else
  {
    v28 = 0;
  }

  v37 = [v26 objectID];
  v38 = v37;
  if (v28)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    v39 = sub_21DBFB63C();

    if (v39)
    {

      v40 = 0;
      goto LABEL_61;
    }
  }

  else
  {
  }

  if (sub_21D1D2090())
  {
    v41 = 0;
LABEL_25:

LABEL_26:
    v42 = v24;
    __swift_destroy_boxed_opaque_existential_0(&v141);
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v43 = sub_21DBF84BC();
    __swift_project_value_buffer(v43, qword_280D0F2C0);
    v44 = a1;
    v45 = sub_21DBF84AC();
    v46 = sub_21DBFAEBC();

    if (os_log_type_enabled(v45, v46))
    {
      v126 = v26;
      v47 = v11;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v141 = v50;
      *v48 = 136315394;
      v51 = "sslessly to the target list";
      v52 = "gular list to template";
      v53 = 0xD000000000000037;
      if (v41 != 2)
      {
        v53 = 0xD000000000000036;
        v52 = "TTRIMenuButtonAttachment.swift";
      }

      v54 = 0xD00000000000003BLL;
      if (v41)
      {
        v51 = "ot linked to an account";
      }

      else
      {
        v54 = 0xD000000000000035;
      }

      if (v41 <= 1)
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      if (v41 <= 1)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      v57 = sub_21D0CDFB4(v55, v56 | 0x8000000000000000, &v141);

      *(v48 + 4) = v57;
      *(v48 + 12) = 2112;
      *(v48 + 14) = v44;
      *v49 = v44;
      v58 = v44;
      _os_log_impl(&dword_21D0C9000, v45, v46, "TTRReminderEditor: ignoring edit(listID:) because this reminder cannot be moved {reason: %s, listID: %@}", v48, 0x16u);
      sub_21D0CF7E0(v49, &unk_27CE60070);
      MEMORY[0x223D46520](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x223D46520](v50, -1, -1);
      MEMORY[0x223D46520](v48, -1, -1);
    }

    else
    {
    }

    v36 = v133;
    goto LABEL_43;
  }

  if (sub_21D1D2094())
  {
    v41 = 3;
    goto LABEL_25;
  }

  v60 = [v133 accountID];
  v61 = [v26 accountID];
  sub_21D0D8CF0(0, &qword_280D17880);
  v62 = sub_21DBFB63C();

  if ((v62 & 1) == 0)
  {
    v67 = sub_21D1C3494(v133, v26);

    if (v67 == 2)
    {
      v41 = 2;
      goto LABEL_26;
    }

    if ((v67 & 1) == 0 && (v130 & 1) == 0)
    {
      v41 = 1;
      goto LABEL_26;
    }

    goto LABEL_58;
  }

  v63 = [v26 accountCapabilities];
  v64 = [v63 supportsMoveAcrossLists];

  if ((v64 & 1) == 0)
  {
    goto LABEL_57;
  }

  v65 = [v26 accountCapabilities];
  v66 = [v65 supportsMoveAcrossSharedLists];

  if (!v66)
  {
    v68 = [*v25 listChangeItem];
    if (!v68 || (*&v139[0] = v68, sub_21D0D8CF0(0, &unk_280D177F0), v69 = sub_21D1D2098(), *&v139[0], (v69 & 1) == 0))
    {
      v70 = [v26 isShared];

      if ((v70 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_58:
      v40 = 1;
      goto LABEL_61;
    }

LABEL_57:

    goto LABEL_58;
  }

LABEL_60:
  v40 = 0;
LABEL_61:
  __swift_destroy_boxed_opaque_existential_0(&v141);
  v71 = v132;
  if (v132)
  {
    sub_21DBF8E0C();
    v134 = v132;
    goto LABEL_85;
  }

  v72 = [v24 store];
  v73 = [v133 objectID];
  *&v141 = 0;
  v74 = [v72 fetchReminderWithObjectID:v73 error:&v141];

  if (!v74)
  {
    v125 = v40;
    v88 = v141;
    v89 = sub_21DBF52DC();

    swift_willThrow();
LABEL_78:

    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v91 = sub_21DBF84BC();
    __swift_project_value_buffer(v91, qword_280D0F2C0);
    v92 = v26;

    v93 = sub_21DBF84AC();
    v94 = sub_21DBFAEBC();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412546;
      v97 = [v133 objectID];
      *(v95 + 4) = v97;
      *v96 = v97;
      *(v95 + 12) = 2112;
      v98 = [v92 objectID];
      *(v95 + 14) = v98;
      v96[1] = v98;
      _os_log_impl(&dword_21D0C9000, v93, v94, "Failed to move subtasks to another list { parentReminderID: %@, toList: %@ }", v95, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v96, -1, -1);
      MEMORY[0x223D46520](v95, -1, -1);
    }

    v134 = MEMORY[0x277D84F90];
    goto LABEL_83;
  }

  v75 = v141;
  v76 = [v74 subtaskContext];
  if (!v76)
  {

    v134 = MEMORY[0x277D84F90];
    goto LABEL_85;
  }

  v135 = v74;
  v123 = v72;
  v125 = v40;
  *&v141 = 0;
  v77 = v76;
  v78 = [v76 fetchRemindersForMovingWithError_];

  v79 = v141;
  if (!v78)
  {
    v90 = v141;
    v89 = sub_21DBF52DC();

    swift_willThrow();
    v72 = v135;
    goto LABEL_78;
  }

  sub_21D0D8CF0(0, &qword_280D17860);
  v80 = sub_21DBFA5EC();
  v81 = v79;

  if (v80 >> 62)
  {
    v82 = sub_21DBFBD7C();
    v83 = v74;
    if (v82)
    {
      goto LABEL_68;
    }

LABEL_117:

    v134 = MEMORY[0x277D84F90];
    goto LABEL_84;
  }

  v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v83 = v74;
  if (!v82)
  {
    goto LABEL_117;
  }

LABEL_68:
  *&v141 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if (v82 < 0)
  {
    __break(1u);
  }

  v84 = 0;
  do
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v85 = MEMORY[0x223D44740](v84, v80);
    }

    else
    {
      v85 = *(v80 + 8 * v84 + 32);
    }

    v86 = v85;
    ++v84;
    v87 = [v24 updateReminder_];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v82 != v84);

  v134 = v141;
LABEL_83:
  v71 = 0;
LABEL_84:
  v40 = v125;
LABEL_85:
  if ((v40 | v131))
  {
    LOBYTE(v141) = v128;
    v99 = v133;
    v129 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v99, v134, v26, v131 & 1, v130 & 1, &v141);
  }

  else
  {
    v100 = v133;
    v101 = [v100 assignmentContext];
    [v101 removeAllAssignments];

    v102 = v26;
    v13 = &selRef__setContentViewMarginType_;
    v127 = v102;
    [v102 addReminderChangeItem_];
    v103 = [v100 subtaskContext];
    v129 = v100;
    if (v103)
    {
      v104 = v103;
      if (v134 >> 62)
      {
        v12 = sub_21DBFBD7C();
        v124 = v24;
        if (v12)
        {
LABEL_93:
          while (!__OFSUB__(v12--, 1))
          {
            if ((v134 & 0xC000000000000001) != 0)
            {
              v105 = MEMORY[0x223D44740](v12, v134);
            }

            else
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_100;
              }

              if (v12 >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_101;
              }

              v105 = *(v134 + 32 + 8 * v12);
            }

            v106 = v105;
            v107 = [v105 assignmentContext];
            [v107 removeAllAssignments];

            [v104 addReminderChangeItem_];
            if (!v12)
            {
              goto LABEL_104;
            }
          }

          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }
      }

      else
      {
        v12 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v124 = v24;
        if (v12)
        {
          goto LABEL_93;
        }
      }

LABEL_104:

      v24 = v124;
    }

    v26 = v127;
    v71 = v132;
  }

  if (v11)
  {
    v109 = v26;
    v110 = swift_allocObject();
    *(v110 + 16) = v71;
    *(v110 + 24) = v11;
    *(v110 + 32) = v131 & 1;
    *(v110 + 33) = v130 & 1;
    sub_21DBF8E0C();
    v111 = v11;
    sub_21D182E74(sub_21D9D79C4, v110);
  }

  else
  {
    if (qword_280D0F2B8 != -1)
    {
      swift_once();
    }

    v109 = v26;
    v112 = sub_21DBF84BC();
    __swift_project_value_buffer(v112, qword_280D0F2C0);
    v113 = sub_21DBF84AC();
    v114 = sub_21DBFAECC();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = v24;
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_21D0C9000, v113, v114, "edit(listID:) not registering undo because previous list is nil", v116, 2u);
      v117 = v116;
      v24 = v115;
      MEMORY[0x223D46520](v117, -1, -1);
    }
  }

  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  sub_21D0D3954(&v141, v139, &unk_27CE60D80);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v118 = qword_280D1AA18;
  sub_21D0CF7E0(&v141, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  inited = swift_initStackObject();
  v137 = type metadata accessor for TTRUserDefaults();
  v138 = &protocol witness table for TTRUserDefaults;
  *&v136 = v118;
  *(inited + 64) = 0;
  *(inited + 16) = v109;
  *(inited + 56) = v140;
  v120 = v139[0];
  *(inited + 40) = v139[1];
  *(inited + 24) = v120;
  sub_21D0D15E0(&v136, inited + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_21DC09CF0;
  v122 = v118;
  *(v121 + 32) = [v133 objectID];
  sub_21D1BF9F4();

  swift_setDeallocating();
  sub_21D0CF7E0(inited + 24, &unk_27CE60D80);
  __swift_destroy_boxed_opaque_existential_0(inited + 72);
  return v129;
}

uint64_t TTRReminderEditor.edit(toMatch:now:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v151 = a2;
  v147 = 0;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64878);
  MEMORY[0x28223BE20](v149);
  v6 = &v142 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880);
  MEMORY[0x28223BE20](v7 - 8);
  v152 = &v142 - v8;
  v153 = sub_21DBF7E8C();
  v9 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v154 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v142 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v142 - v15;
  v17 = sub_21DBF7E5C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v142 - v22;
  v155 = a1;
  sub_21DBF7FCC();
  v24 = (*(v18 + 48))(v16, 1, v17);
  v148 = v6;
  if (v24 == 1)
  {
    sub_21D0CF7E0(v16, &qword_27CE61B70);
    v25 = 0;
    v26 = v155;
    v27 = v3;
    goto LABEL_3;
  }

  (*(v18 + 32))(v23, v16, v17);
  v30 = *(v18 + 16);
  v162 = v23;
  v30(v20, v23, v17);
  v31 = (*(v18 + 88))(v20, v17);
  if (v31 != *MEMORY[0x277D458A0])
  {
    v27 = v3;
    if (v31 != *MEMORY[0x277D458A8])
    {
      v26 = v155;
      if (v31 != *MEMORY[0x277D45898])
      {
        goto LABEL_126;
      }

      v28 = v9;
      (*(v18 + 8))(v162, v17);
      v25 = 0;
      goto LABEL_4;
    }

    TTRReminderEditor.updateHashtags(toMatchLabels:)(MEMORY[0x277D84FA0]);
    (*(v18 + 8))(v162, v17);
    v25 = 0;
    v26 = v155;
LABEL_3:
    v28 = v9;
LABEL_4:
    v29 = v153;
LABEL_60:
    LOBYTE(v36) = sub_21D9CEAC0(v26, v151) | v25;
    v87 = sub_21DBF7E9C();
    if (v87)
    {
      v88 = v87;
      v89 = *(v27 + 16);
      [v89 priority];
      v90 = REMReminderPriorityLevelForPriority();
      v91 = *(v88 + 16);
      v92 = 32;
      v93 = v91;
      while (v93)
      {
        v94 = *(v88 + v92);
        v92 += 8;
        --v93;
        if (v94 == v90)
        {

          goto LABEL_83;
        }
      }

      v95 = 32;
      v96 = *(v88 + 16);
      do
      {
        v97 = v96;
        if (!v96)
        {
          break;
        }

        v98 = *(v88 + v95);
        v95 += 8;
        --v96;
      }

      while (v98 != 1);
      v99 = v29;
      v100 = 32;
      v101 = *(v88 + 16);
      do
      {
        v102 = v101;
        if (!v101)
        {
          break;
        }

        v103 = *(v88 + v100);
        v100 += 8;
        --v101;
      }

      while (v103 != 2);
      v104 = 32;
      v105 = 3;
      while (v91)
      {
        v106 = *(v88 + v104);
        v104 += 8;
        --v91;
        if (v106 == 3)
        {
          goto LABEL_76;
        }
      }

      v105 = 0;
LABEL_76:

      v107 = 2;
      if (!v102)
      {
        v107 = v105;
      }

      if (v97)
      {
        v108 = 1;
      }

      else
      {
        v108 = v107;
      }

      [v89 priority];
      v29 = v99;
      if (REMReminderPriorityLevelForPriority() != v108)
      {
        v109 = REMReminderDefaultPriorityForPriorityLevel();
        TTRReminderEditor.edit(priority:)(v109);
        LOBYTE(v36) = 1;
      }
    }

LABEL_83:
    v110 = sub_21DBF7FAC();
    if (v110 != 2)
    {
      v111 = v110;
      v112 = [*(v27 + 16) flaggedContext];
      if (!v112 || (v113 = v112, v114 = [v112 flagged], v113, v114 > 0 != (v111 & 1)))
      {
        TTRReminderEditor.edit(isFlagged:)(v111 & 1);
        LOBYTE(v36) = 1;
      }
    }

    v115 = v152;
    sub_21DBF7FDC();
    if ((*(v28 + 48))(v115, 1, v29) == 1)
    {
      sub_21D0CF7E0(v115, &qword_27CE64880);
      return v36 & 1;
    }

    (*(v28 + 32))(v154, v115, v29);
    v42 = sub_21D7A5EA8();
    if (v42 >> 62)
    {
      goto LABEL_97;
    }

    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_98;
    }

    goto LABEL_91;
  }

  (*(v18 + 96))(v20, v17);
  v33 = *v20;
  v32 = *(v20 + 1);
  v145 = v20;
  v27 = v3;
  v156 = *(v3 + 16);
  v34 = [v156 hashtagContext];
  if (!v34)
  {
    (*(v18 + 8))(v162, v17);

    v25 = 0;
    v26 = v155;
    v28 = v9;
    v29 = v153;
    goto LABEL_59;
  }

  v159 = v32;
  v150 = v3;
  v143 = v34;
  v35 = [v34 hashtags];
  v161 = v33;
  LOBYTE(v36) = sub_21D0D8CF0(0, &qword_280D0C348);
  sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348);
  v37 = sub_21DBFAAAC();

  v38 = v147;
  v39 = sub_21D9B1E50(v37);
  v147 = v38;
  v40 = v161;

  v41 = sub_21D0FC0A8(v39);

  v43 = *(v40 + 16);
  v163 = v18;
  v164 = v17;
  v158 = v43;
  v144 = v9;
  if (!v43)
  {
    v28 = v9;

    v160 = 0;
    v44 = v162;
LABEL_34:
    v29 = v153;
    v66 = v159;
    v161 = *(v159 + 16);
    if (v161)
    {
      v29 = 0;
      v158 = v159 + 32;
      v28 = v41 + 56;
      while (1)
      {
        if (v29 >= *(v66 + 16))
        {
          goto LABEL_96;
        }

        v67 = (v158 + 16 * v29);
        v69 = *v67;
        v68 = v67[1];
        v167 = *v67;
        v168 = v68;
        sub_21DBF8E0C();
        sub_21DBF57AC();
        v70 = sub_21DBF582C();
        (*(*(v70 - 8) + 56))(v13, 0, 1, v70);
        sub_21D176F0C();
        v36 = sub_21DBFBBEC();
        v72 = v71;
        sub_21D0CF7E0(v13, &unk_27CE65010);
        if (!*(v41 + 16))
        {
          break;
        }

        sub_21DBFC7DC();
        sub_21DBFA27C();
        v73 = sub_21DBFC82C();
        v74 = -1 << *(v41 + 32);
        v75 = v73 & ~v74;
        if ((*(v28 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
        {
          v76 = ~v74;
          while (1)
          {
            v77 = (*(v41 + 48) + 16 * v75);
            v78 = *v77 == v36 && v77[1] == v72;
            if (v78 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v75 = (v75 + 1) & v76;
            if (((*(v28 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          v167 = v69;
          v168 = v68;
          v169 = 0;
          LOBYTE(v170) = 0;
          sub_21DBF8E0C();
          v79 = sub_21D9C7BBC(&v167, 1);
          if (v79)
          {
            v81 = v80;

            sub_21D182E74(sub_21D233058, v81);
          }

          v167 = v69;
          v168 = v68;
          v169 = 1;
          LOBYTE(v170) = 0;
          v82 = sub_21D9C7BBC(&v167, 1);
          v44 = v162;
          if (v82)
          {
            v84 = v83;

            sub_21D182E74(sub_21D233058, v84);
          }

          v160 = 1;
          goto LABEL_55;
        }

LABEL_36:

        v17 = v164;
        v44 = v162;
LABEL_37:
        ++v29;

        v18 = v163;
        v66 = v159;
        if (v29 == v161)
        {

          v28 = v144;
          v29 = v153;
          goto LABEL_58;
        }
      }

LABEL_55:
      v17 = v164;
      goto LABEL_37;
    }

LABEL_58:

    (*(v18 + 8))(v44, v17);
    v27 = v150;
    v26 = v155;
    v25 = v160;
LABEL_59:
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78) + 64);
    v86 = sub_21DBF7FEC();
    (*(*(v86 - 8) + 8))(&v145[v85], v86);
    goto LABEL_60;
  }

  v160 = 0;
  v28 = 0;
  v157 = v40 + 32;
  v29 = v41 + 56;
  v146 = xmmword_21DC08D00;
  while (v28 < *(v40 + 16))
  {
    v45 = v157 + 16 * v28;
    v47 = *v45;
    v46 = *(v45 + 8);
    v167 = *v45;
    v168 = v46;
    sub_21DBF8E0C();
    sub_21DBF57AC();
    v48 = sub_21DBF582C();
    (*(*(v48 - 8) + 56))(v13, 0, 1, v48);
    sub_21D176F0C();
    v36 = sub_21DBFBBEC();
    v50 = v49;
    sub_21D0CF7E0(v13, &unk_27CE65010);
    if (*(v41 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v51 = sub_21DBFC82C(), v52 = -1 << *(v41 + 32), v53 = v51 & ~v52, ((*(v29 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
    {
      v54 = ~v52;
      while (1)
      {
        v55 = (*(v41 + 48) + 16 * v53);
        v56 = *v55 == v36 && v55[1] == v50;
        if (v56 || (sub_21DBFC64C() & 1) != 0)
        {
          break;
        }

        v53 = (v53 + 1) & v54;
        if (((*(v29 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:

      v57 = [v156 hashtagContext];
      if (v57)
      {
        v58 = v57;
        sub_21D9CB53C(v47, v46, 0, 0);
        v17 = v164;
        if (v59)
        {
          v60 = v59;

          v160 = 1;
        }

        else
        {
          v61 = sub_21DBFA12C();
          v62 = [v58 addHashtagWithType:0 name:v61];

          v63 = swift_allocObject();
          *(v63 + 16) = v62;
          v160 = 1;
          *(v63 + 24) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
          v64 = swift_allocObject();
          *(v64 + 16) = sub_21D9D9784;
          *(v64 + 24) = v63;
          v170 = sub_21D0D8CF0(0, &qword_280D17880);

          v167 = [v156 objectID];
          v65 = sub_21D0D8CF0(0, &qword_280D17860);
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
          *&v165 = v65;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
          v36 = swift_allocObject();
          *(v36 + 16) = v146;
          sub_21D0CEB98(&v167, v36 + 32);
          sub_21D0CF2E8(&v165, (v36 + 64));
          __swift_destroy_boxed_opaque_existential_0(&v167);
          sub_21D1C442C(v36, sub_21D233058, v64);
        }

        goto LABEL_11;
      }

      v160 = 1;
    }

    v17 = v164;
LABEL_11:
    ++v28;
    v44 = v162;
    v18 = v163;
    v40 = v161;
    if (v28 == v158)
    {

      v28 = v144;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  v120 = v42;
  v121 = sub_21DBFBD7C();
  v42 = v120;
  if (v121)
  {
LABEL_91:
    if ((v42 & 0xC000000000000001) != 0)
    {
      v116 = MEMORY[0x223D44740](0);
    }

    else
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_123;
      }

      v116 = *(v42 + 32);
    }

    v117 = v116;

    v118 = v154;
    v119 = sub_21DBF7E7C();
LABEL_105:
    v124 = v119;

    v125 = v124 ^ 1;
    v126 = 1;
    goto LABEL_106;
  }

LABEL_98:

  v42 = sub_21D7A5E9C();
  if (!(v42 >> 62))
  {
    v122 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_100;
  }

LABEL_123:
  v141 = v42;
  v122 = sub_21DBFBD7C();
  v42 = v141;
LABEL_100:
  v118 = v154;
  if (!v122)
  {

    v125 = 0;
    v126 = 0;
LABEL_106:
    v127 = v148;
    v128 = &v148[*(v149 + 64)];
    *v148 = v126;
    v127[1] = v125 & 1;
    (*(v28 + 16))(v128, v118, v29);
    v129 = (*(v28 + 88))(v128, v29);
    if (v129 == *MEMORY[0x277D458C0])
    {
      (*(v28 + 96))(v128, v29);
      if (v125 & 1 | ((v126 & 1) == 0))
      {
        v130 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
        _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v130);
        (*(v28 + 8))(v118, v29);
LABEL_112:

        LOBYTE(v36) = 1;
        return v36 & 1;
      }
    }

    else
    {
      if (v129 == *MEMORY[0x277D458C8])
      {
        (*(v28 + 96))(v128, v29);
        if (!(v125 & 1 | ((v126 & 1) == 0)))
        {
          (*(v28 + 8))(v154, v29);

          return v36 & 1;
        }

        v131 = *(v128 + 5);
        v133 = v128[3];
        v132 = v128[4];
        v134 = v128[2];
        v135 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
        v136 = sub_21DBFA12C();
        v137 = [v135 initWithCenter:v136 radius:v134 identifier:{v133, v132}];

        sub_21D0D8CF0(0, &qword_280D17760);
        v138 = v137;
        v139 = sub_21DBFB3EC();
        v130 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v139 proximity:v131];
        _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(v130);

        (*(v28 + 8))(v154, v29);
        goto LABEL_112;
      }

      if (v129 != *MEMORY[0x277D458B8])
      {
        if (v129 != *MEMORY[0x277D458B0])
        {
          goto LABEL_127;
        }

        if (v126)
        {
          _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(0);
          _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(0);
          (*(v28 + 8))(v118, v29);
          LOBYTE(v36) = 1;
          return v36 & 1;
        }
      }
    }

    (*(v28 + 8))(v118, v29);
    return v36 & 1;
  }

  if ((v42 & 0xC000000000000001) != 0)
  {
    v123 = MEMORY[0x223D44740](0);
LABEL_104:
    v117 = v123;

    v118 = v154;
    v119 = sub_21DBF7E6C();
    goto LABEL_105;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v123 = *(v42 + 32);
    goto LABEL_104;
  }

  __break(1u);
LABEL_126:
  sub_21DBFC63C();
  __break(1u);
LABEL_127:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}