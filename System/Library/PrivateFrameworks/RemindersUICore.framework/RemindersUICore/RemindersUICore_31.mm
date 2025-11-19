void sub_21D3A355C(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 16) saveRequest];
  v4 = [v3 updateSmartListSection_];

  [v4 removeFromSmartList];
  v5 = [a2 objectID];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v5;
  sub_21D182C44(sub_21D3A4B64, v6);
}

void sub_21D3A3658(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 16) saveRequest];
  v4 = [v3 updateTemplateSection_];

  [v4 removeFromParentTemplate];
  v5 = [a2 objectID];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v5;
  sub_21D182D68(sub_21D3A4B68, v6);
}

uint64_t TTRRemindersListInteractorSectionsCapability.addReminders(with:toExistingSection:in:initialSectionIDByReminderID:option:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a5;
  if (*(a3 + 8))
  {
    if (*(a3 + 8) == 1)
    {
      if (v9)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = *(v5 + 24);
          ObjectType = swift_getObjectType();
          (*(v10 + 8))(&v59, v5, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v10);
          swift_unknownObjectRelease();
        }

        else
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
        }

        sub_21D1826C4(&v59, &v56);
        v30 = [v9 updateSmartList_];
        sub_21D311700(&v59);
        type metadata accessor for TTRSmartListEditor();
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        v32 = v57;
        *(v31 + 24) = v56;
        *(v31 + 40) = v32;
        *(v31 + 56) = v58;
        *(v31 + 64) = 0;
        v33 = sub_21DBF8E0C();
        v34 = sub_21D19ED08(v33);

        *&v59 = v7;
        TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v34, &v59, a4);
LABEL_26:
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = *(v5 + 24);
        v23 = swift_getObjectType();
        (*(v22 + 8))(&v59, v5, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v23, v22);
        Strong = swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      MEMORY[0x28223BE20](Strong);
      sub_21D9779E8(v8, &v59, 0, 0, sub_21D3A49E0);
    }

    else
    {
      if (v9)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v5 + 24);
          v20 = swift_getObjectType();
          (*(v19 + 8))(&v59, v5, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v20, v19);
          swift_unknownObjectRelease();
        }

        else
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
        }

        sub_21D1826C4(&v59, &v56);
        v44 = [v9 updateTemplate_];
        sub_21D311700(&v59);
        type metadata accessor for TTRTemplateEditor();
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        v46 = v57;
        *(v45 + 24) = v56;
        *(v45 + 40) = v46;
        *(v45 + 56) = v58;
        *(v45 + 64) = 0;
        v47 = sub_21DBF8E0C();
        v48 = sub_21D19ED08(v47);

        *&v59 = v7;
        TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v48, &v59, a4);
        goto LABEL_26;
      }

      swift_beginAccess();
      v27 = swift_unknownObjectWeakLoadStrong();
      if (v27)
      {
        v28 = *(v5 + 24);
        v29 = swift_getObjectType();
        (*(v28 + 8))(&v59, v5, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v29, v28);
        v27 = swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      MEMORY[0x28223BE20](v27);
      sub_21D977C68(v8, &v59, 0, 0, sub_21D3A49AC);
    }
  }

  else
  {
    if (v9)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v5 + 24);
        v50 = v7;
        v13 = a4;
        v14 = swift_getObjectType();
        v15 = *(v12 + 8);
        v16 = v8;
        v17 = v9;
        v18 = v14;
        a4 = v13;
        v7 = v50;
        v15(&v59, v5, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v18, v12);
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v35 = v8;
        v36 = v9;
      }

      sub_21D1826C4(&v59, &v56);
      v37 = [v9 updateList_];
      sub_21D1826C4(&v56, v54);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v38 = qword_280D1AA18;
      sub_21D311700(&v56);
      type metadata accessor for TTRListEditor();
      v39 = swift_allocObject();
      v53 = &protocol witness table for TTRUserDefaults;
      v52 = type metadata accessor for TTRUserDefaults();
      *&v51 = v38;
      v40 = v38;
      sub_21D311700(&v59);
      *(v39 + 64) = 0;
      *(v39 + 16) = v37;
      v41 = v54[1];
      *(v39 + 24) = v54[0];
      *(v39 + 40) = v41;
      *(v39 + 56) = v55;
      swift_beginAccess();
      *(v39 + 64) = 0;
      sub_21D0D0FD0(&v51, v39 + 72);

      v42 = sub_21DBF8E0C();
      v43 = sub_21D19ED08(v42);

      *&v59 = v7;
      TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v43, &v59, a4);

      sub_21D1BF9F4();
    }

    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = *(v5 + 24);
      v26 = swift_getObjectType();
      (*(v25 + 8))(&v59, v5, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v26, v25);
      v24 = swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
    }

    MEMORY[0x28223BE20](v24);
    sub_21D9776CC(v8, &v59, 0, 0, sub_21D3A4A14);
  }

  return sub_21D311700(&v59);
}

uint64_t _s15RemindersUICore44TTRRemindersListInteractorSectionsCapabilityC3add_17toExistingSection2in07initialK14IDByReminderID6optionySaySo11REMReminderCG_AA010TTRSectionP0OAA0cdefG6TargetOSDySo09REMObjectP0CAMGSgAA16TTREditingOptionOtF_0(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *a5;
  if (a1 >> 62)
  {
    v17 = a4;
    v18 = sub_21DBFBD7C();
    a4 = v17;
    v10 = v18;
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = a4;
    v23 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v19 = v7;
    v20 = v6;
    v13 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x223D44740](v13, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      v16 = [v14 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v10 != v13);
    v11 = v23;
    a4 = v21;
    v7 = v19;
    v6 = v20;
  }

  v25 = v6;
  v22 = v9;
  v23 = v7;
  v24 = v8;
  TTRRemindersListInteractorSectionsCapability.addReminders(with:toExistingSection:in:initialSectionIDByReminderID:option:)(v11, &v25, &v23, a4, &v22);
}

uint64_t TTRRemindersListInteractorSectionsCapability.updateOrderingOfSections(withSectionIDsOrdering:in:initialSectionIDsOrdering:option:)(Swift::OpaquePointer a1, uint64_t a2, void *a3, void **a4)
{
  v7 = *a2;
  v8 = *a4;
  if (*(a2 + 8))
  {
    if (*(a2 + 8) == 1)
    {
      if (v8)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = v4[3];
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(&v59, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, ObjectType, v9);
          swift_unknownObjectRelease();
        }

        else
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
        }

        sub_21D1826C4(&v59, &v56);
        v31 = [v8 updateSmartList_];
        sub_21D311700(&v59);
        type metadata accessor for TTRSmartListEditor();
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v33 = v57;
        *(v32 + 24) = v56;
        *(v32 + 40) = v33;
        *(v32 + 56) = v58;
        *(v32 + 64) = 0;
        v62.value._rawValue = a3;
        TTRSmartListEditor.updateOrderingOfSections(withSectionIDsOrdering:initialSectionIDsOrdering:)(a1, v62);
      }

      v18 = v4[8];
      __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC09CF0;
      *(v19 + 32) = v7;
      v20 = [v7 store];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = v4[3];
        v22 = swift_getObjectType();
        (*(v21 + 8))(&v59, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v22, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      v45 = type metadata accessor for TTRSmartListEditor();
      v46 = MEMORY[0x28223BE20](v45);
      (*(v18 + 8))(v46);
    }

    else
    {
      if (v8)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v16 = v4[3];
          v17 = swift_getObjectType();
          (*(v16 + 8))(&v59, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v17, v16);
          swift_unknownObjectRelease();
        }

        else
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
        }

        sub_21D1826C4(&v59, &v56);
        v41 = [v8 updateTemplate_];
        sub_21D311700(&v59);
        type metadata accessor for TTRTemplateEditor();
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        v43 = v57;
        *(v42 + 24) = v56;
        *(v42 + 40) = v43;
        *(v42 + 56) = v58;
        *(v42 + 64) = 0;
        v64.value._rawValue = a3;
        TTRTemplateEditor.updateOrderingOfSections(withSectionIDsOrdering:initialSectionIDsOrdering:)(a1, v64);
      }

      v27 = v4[8];
      __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_21DC09CF0;
      *(v28 + 32) = v7;
      v20 = [v7 store];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v4[3];
        v30 = swift_getObjectType();
        (*(v29 + 8))(&v59, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v30, v29);
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      v49 = type metadata accessor for TTRTemplateEditor();
      v50 = MEMORY[0x28223BE20](v49);
      (*(v27 + 8))(v50);
    }
  }

  else
  {
    if (v8)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = v4[3];
        v12 = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = v7;
        v15 = v8;
        v13(&v59, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v12, v11);
        swift_unknownObjectRelease();
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v34 = v7;
        v35 = v8;
      }

      sub_21D1826C4(&v59, &v56);
      v36 = [v8 updateList_];
      sub_21D1826C4(&v56, v54);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      v37 = qword_280D1AA18;
      sub_21D311700(&v56);
      type metadata accessor for TTRListEditor();
      v38 = swift_allocObject();
      v53 = &protocol witness table for TTRUserDefaults;
      v52 = type metadata accessor for TTRUserDefaults();
      *&v51 = v37;
      v39 = v37;
      sub_21D311700(&v59);
      *(v38 + 64) = 0;
      *(v38 + 16) = v36;
      v40 = v54[1];
      *(v38 + 24) = v54[0];
      *(v38 + 40) = v40;
      *(v38 + 56) = v55;
      swift_beginAccess();
      *(v38 + 64) = 0;
      sub_21D0D0FD0(&v51, v38 + 72);

      v63.value._rawValue = a3;
      TTRListEditor.updateOrderingOfSections(withSectionIDsOrdering:initialSectionIDsOrdering:)(a1, v63);
    }

    v23 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21DC09CF0;
    *(v24 + 32) = v7;
    v20 = [v7 store];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v4[3];
      v26 = swift_getObjectType();
      (*(v25 + 8))(&v59, v4, &protocol witness table for TTRRemindersListInteractorSectionsCapability, v26, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
    }

    v47 = type metadata accessor for TTRListEditor();
    v48 = MEMORY[0x28223BE20](v47);
    (*(v23 + 8))(v48);
  }

  return sub_21D311700(&v59);
}

uint64_t sub_21D3A47D4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  sub_21DBF8E0C();
  v7 = sub_21D19ED08(a2);

  v9 = a3;
  TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v7, &v9, a4);

  return sub_21D1BF9F4();
}

uint64_t sub_21D3A4858(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, uint64_t))
{
  sub_21DBF8E0C();
  v9 = sub_21D19ED08(a2);

  v11 = a3;
  a5(v9, &v11, a4);
}

uint64_t TTRRemindersListInteractorSectionsCapability.deinit()
{
  sub_21D157444(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  return v0;
}

uint64_t TTRRemindersListInteractorSectionsCapability.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of TTRRemindersListInteractorSectionsCapabilityType.add(_:toExistingSection:in:initialSectionIDByReminderID:option:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 24))();
}

{
  return (*(a7 + 32))();
}

uint64_t TTRReminderTitleAttributesNoOpInteractor.resultsPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B2F0);
  sub_21D3A4C18();
  return sub_21DBF920C();
}

unint64_t sub_21D3A4C18()
{
  result = qword_27CE5B2F8;
  if (!qword_27CE5B2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5B2F8);
  }

  return result;
}

uint64_t TTRReminderTitleAttributesNoOpInteractor.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B2F0);
  swift_allocObject();
  *(v0 + 16) = sub_21DBF907C();
  return v0;
}

uint64_t TTRReminderTitleAttributesNoOpInteractor.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B2F0);
  swift_allocObject();
  *(v0 + 16) = sub_21DBF907C();
  return v0;
}

double TTRReminderTitleAttributesNoOpInteractor.syncHandleAutoCompleteReminders(_:for:imagesByReminderObjectID:reminderAndList:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t TTRReminderTitleAttributesNoOpInteractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D3A4DC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B2F0);
  sub_21D3A4C18();
  return sub_21DBF920C();
}

double sub_21D3A4E1C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t TTRAppDelegateUtils.TriggerSyncReason.description.getter()
{
  v1 = v0[1];
  v2 = 0x7669746341707061;
  v3 = 0x7463616544707061;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x636E75614C707061;
  }

  sub_21D0DEC64(*v0, v1);
  return v4;
}

uint64_t sub_21D3A4FA4()
{
  v1 = v0[1];
  v2 = 0x7669746341707061;
  v3 = 0x7463616544707061;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x636E75614C707061;
  }

  sub_21D0DEC64(*v0, v1);
  return v4;
}

void sub_21D3A5050(void *a1)
{
  v3[4] = sub_21D3A50FC;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_21D3A5284;
  v3[3] = &block_descriptor_10;
  v2 = _Block_copy(v3);
  [a1 updateAccountsAndSync:1 completion:v2];
  _Block_release(v2);
}

void sub_21D3A50FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (qword_280D17230 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_280D17238);
    v5 = a3;
    oslog = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = sub_21DBFBA7C();
      v11 = sub_21D0CDFB4(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, oslog, v6, "Unable to update cloud accounts %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D3A5284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

__n128 sub_21D3A531C(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    sub_21DBF8E0C();
  }

  return result;
}

void *assignWithCopy for TTRAppDelegateUtils.TriggerSyncReason(void *a1, void *a2)
{
  v3 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v3 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();
      return a1;
    }

    v5 = *a2;
LABEL_8:
    *a1 = v5;
    return a1;
  }

  if (v3 < 0xFFFFFFFF)
  {

    v5 = *a2;
    goto LABEL_8;
  }

  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  return a1;
}

_OWORD *assignWithTake for TTRAppDelegateUtils.TriggerSyncReason(_OWORD *result, uint64_t a2)
{
  if (*(result + 1) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    v2 = *(a2 + 8);
    if (v2 < 0xFFFFFFFF)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      *(result + 1) = v2;
      v3 = result;
    }

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRAppDelegateUtils.TriggerSyncReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRAppDelegateUtils.TriggerSyncReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_21D3A5554(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 40) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B308);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_21DBF9D3C();
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  *(v4 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B310);
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_21DBFBA3C();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  *(v4 + 160) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B318);
  *(v4 + 168) = v8;
  *(v4 + 176) = *(v8 - 8);
  *(v4 + 184) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B320);
  *(v4 + 192) = v9;
  *(v4 + 200) = *(v9 - 8);
  *(v4 + 208) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B328);
  *(v4 + 216) = v10;
  *(v4 + 224) = *(v10 - 8);
  *(v4 + 232) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B330);
  *(v4 + 240) = v11;
  *(v4 + 248) = *(v11 - 8);
  *(v4 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D3A5928, 0, 0);
}

uint64_t sub_21D3A5928()
{
  v24 = v0[29];
  v30 = v0[28];
  v28 = v0[27];
  v31 = v0[26];
  v25 = v0[25];
  v1 = v0[23];
  v17 = v0[21];
  v18 = v0[22];
  v2 = v0[19];
  v4 = v0[17];
  v3 = v0[18];
  v15 = v0[20];
  v16 = v3;
  v5 = v0[16];
  v19 = v0[14];
  v20 = v0[13];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[24];
  v29 = v0[8];
  v26 = v0[6];
  v27 = v0[7];
  sub_21DBF90EC();
  sub_21DBFBA2C();
  (*(v2 + 56))(v4, 1, 1, v3);
  v6 = [objc_opt_self() mainRunLoop];
  v0[2] = v6;
  v7 = sub_21DBFBA0C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_21D0D8CF0(0, &qword_280D17650);
  sub_21D0D0F1C(&qword_280D0C428, &qword_27CE5B318);
  sub_21D0D65DC(&qword_280D17660, &qword_280D17650);
  sub_21DBF92BC();
  sub_21D0CF7E0(v5, &qword_27CE5A0F0);

  sub_21D0CF7E0(v4, &qword_27CE5B310);
  (*(v2 + 8))(v15, v16);
  (*(v18 + 8))(v1, v17);
  sub_21D0D8CF0(0, &qword_280D1B900);
  (*(v19 + 104))(v21, *MEMORY[0x277D851C8], v20);
  v8 = sub_21DBFB15C();
  (*(v19 + 8))(v21, v20);
  v0[3] = v8;
  v9 = sub_21DBFB0DC();
  (*(*(v9 - 8) + 56))(v22, 1, 1, v9);
  sub_21D0D0F1C(&qword_280D0C5A8, &qword_27CE5B320);
  sub_21D0D65DC(&qword_280D17800, &qword_280D1B900);
  sub_21DBF936C();
  sub_21D0CF7E0(v22, &unk_27CE5F250);

  (*(v25 + 8))(v31, v23);
  v10 = swift_allocObject();
  *(v10 + 16) = v26;
  *(v10 + 24) = v27;
  type metadata accessor for CLAuthorizationStatus(0);
  sub_21D0D0F1C(&qword_280D0C4D8, &qword_27CE5B328);

  sub_21DBF927C();

  (*(v30 + 8))(v24, v28);
  v0[4] = *(v29 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59048);
  sub_21D0D0F1C(&qword_280D0C7A0, &qword_27CE59048);
  sub_21D0D0F1C(&qword_280D0C5B8, &qword_27CE5B330);
  sub_21DBF92DC();
  v11 = swift_task_alloc();
  v0[33] = v11;
  v12 = sub_21D0D0F1C(&qword_280D0C598, &qword_27CE5B308);
  *v11 = v0;
  v11[1] = sub_21D3A5F4C;
  v13 = v0[9];

  return MEMORY[0x2821A7988](v0 + 34, v13, v12);
}

uint64_t sub_21D3A5F4C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21D3A60A4, 0, 0);
}

uint64_t sub_21D3A60A4()
{
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  v3 = *(v0 + 272);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_21D3A61B0(int a1)
{
  if (qword_280D0F3B0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F3B8);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_21DBFB38C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, v3, v4, "TTRLocationAuthorizationTracker: authorization status changed {status: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  LODWORD(v11) = a1;
  sub_21DBF7D1C();
  LODWORD(v11) = a1;
  return sub_21DBF906C();
}

uint64_t sub_21D3A6320()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F3B8);
  v1 = __swift_project_value_buffer(v0, qword_280D0F3B8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D3A63E8@<X0>(uint64_t (*a1)(void)@<X1>, _DWORD *a2@<X8>)
{
  if (qword_280D0F3B0 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F3B8);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRLocationAuthorizationTracker: force checking CLAuthorizationStatus", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_21D3A6504()
{
  if (qword_280D0F3B0 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_280D0F3B8);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTRLocationAuthorizationTracker: awaiting authorization status change", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[3];

  v0[2] = *(v5 + 24);
  v6 = swift_task_alloc();
  v0[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59050);
  v8 = sub_21D0D0F1C(&qword_27CE5B300, &qword_27CE59050);
  *v6 = v0;
  v6[1] = sub_21D3A66C0;

  return MEMORY[0x2821A7988](v0 + 5, v7, v8);
}

uint64_t sub_21D3A66C0()
{

  return MEMORY[0x2822009F8](sub_21D3A67BC, 0, 0);
}

uint64_t sub_21D3A67BC()
{
  v1 = *(v0 + 40);
  sub_21D3A6820();
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_21D3A6820()
{
  if (qword_280D0F3B0 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_280D0F3B8);
  oslog = sub_21DBF84AC();
  v1 = sub_21DBFAEDC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v1, "TTRLocationAuthorizationTracker: finish awaiting authorization status change", v2, 2u);
    MEMORY[0x223D46520](v2, -1, -1);
  }
}

uint64_t sub_21D3A6910()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5B338);
  v1 = __swift_project_value_buffer(v0, qword_27CE5B338);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static TTRLocalizableStrings.showButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.hideButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.GroupDetail.includedListsCountText(withCount:)(uint64_t a1)
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

uint64_t static TTRLocalizableStrings.PrivacyAlert.cancelButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.openRemindersButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.notificationAccessTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.contactsAccessTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.deleteReminderPrivacyWarningTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.deleteReminderPrivacyWarningMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.enableICloudSyncingTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.enableICloudSyncingMessage.getter()
{
  if (sub_21DBF602C())
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

uint64_t static TTRLocalizableStrings.PrivacyAlert.locationAuthOpenReminderTitleForRemindersInCalendar.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.PrivacyAlert.locationAuthOpenReminderMessageForRemindersInCalendar.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderNoteEditingStyles.bulletedListMenuItem.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderNoteEditingStyles.dashedListMenuItem.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderNoteEditingStyles.orderedListMenuItem.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AutoCategorization.singleItemTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AutoCategorization.multipleItemsTitle(withCount:shouldUseItemWording:)(uint64_t a1, char a2)
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

uint64_t static TTRLocalizableStrings.AutoCategorization.multipleItemsSubtitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AutoCategorization.menuDisableActionTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AutoCategorization.featureEnabledStatusText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Common.remindersCountText(withCount:isForGroceries:)(uint64_t a1, char a2)
{
  if (a2)
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

uint64_t static TTRLocalizableStrings.Common.imagesCountText(withCount:)(uint64_t a1)
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

uint64_t static TTRLocalizableStrings.Common.recurrenceFormat.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Feedback.reportAConcernTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D3A7FB0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D3A807C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.showListInfoText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.showSmartListInfoText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.cantShowSmartListAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.cantShowSmartListAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.cantPinListAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.cantPinListAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.addingRemindersToSmartListAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.addingRemindersToSmartListAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.AccountsList.upgradeButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.clearCompletedButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.deleteCompletedRemindersConfirmationText(withCount:isForGroceries:supportRecentlyDeletedList:)(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D83B88];
  *(v4 + 16) = xmmword_21DC08D00;
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v7 = sub_21DBFA13C();

  return v7;
}

uint64_t static TTRLocalizableStrings.RemindersList.confirmationAlertTitleForDeletingSections(isDeletingMoreThanOneSection:currentLayout:)(char a1, _BYTE *a2)
{
  if (*a2)
  {
    if (a1)
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

  if (a1)
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

uint64_t static TTRLocalizableStrings.RemindersList.confirmationAlertMessageForDeletingSections(isDeletingMoreThanOneSection:hasCompletedReminders:currentLayout:)(char a1, char a2, _BYTE *a3)
{
  if (*a3)
  {
    if (a1)
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
    }

    else if (a2)
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

    goto LABEL_24;
  }

  if (a1)
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

    goto LABEL_24;
  }

  if (a2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_24;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_24:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.newSectionPlaceholder(listLayout:)(_BYTE *a1)
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

uint64_t static TTRLocalizableStrings.RemindersList.existingSectionPlaceholder(listLayout:)(_BYTE *a1)
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

uint64_t static TTRLocalizableStrings.RemindersList.moveToSectionFormat()()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.delete.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.showDetails.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.flag.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.unflag.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.indent.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.outdent.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.postponeToTomorrow.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.postponeToThisWeekend.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.postponeToNextWeekend.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.setCustomDateAndTime.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.RemindersList.SwipeActions.move.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.titlePlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.notesPlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.urlPlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.dateAndTimeSectionHeaderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.organizationSectionHeaderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.placesAndPeopleSectionHeaderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.optionsSectionHeaderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.priorityCellTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.attachmentCellTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.sectionCellTitle(listLayout:)(_BYTE *a1)
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

uint64_t static TTRLocalizableStrings.ReminderDetail.earlyAlertCellTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D3AA6D8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.ReminderDetail.personCellPlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Assignments.assigneePickerNoneOption.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.addTagAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.addTagPromptPlaceholder.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.addTagAlertAddButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.allTagsText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.untagMenuItem.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.removeTagMenuItem.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.convertToTagMenuItem.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)(uint64_t a1)
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

uint64_t static TTRLocalizableStrings.Hashtags.deleteTagConfirmationMessage(hashtags:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 0)
  {
    v5 = a3 > 0;
  }

  else
  {
    v5 = 2 * (a3 > 0);
  }

  sub_21DBF8E0C();
  sub_21D3B4FD0(v40);
  v7 = v40[0];
  v6 = v40[1];
  if (v41)
  {
    v8 = v40[2];
    if (v41 == 1)
    {
      v9 = v40[3];
      if (v5 != 2)
      {
        if (v5 == 1)
        {
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          sub_21DBF516C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_21DC08D10;
          v11 = MEMORY[0x277D837D0];
          *(v10 + 56) = MEMORY[0x277D837D0];
          v12 = sub_21D17A884();
          *(v10 + 32) = v7;
          *(v10 + 40) = v6;
          *(v10 + 96) = v11;
          *(v10 + 104) = v12;
          *(v10 + 64) = v12;
          *(v10 + 72) = v8;
          v13 = MEMORY[0x277D83B88];
          *(v10 + 80) = v9;
          v14 = MEMORY[0x277D83C10];
LABEL_21:
          *(v10 + 136) = v13;
          *(v10 + 144) = v14;
          *(v10 + 112) = a3;
          goto LABEL_42;
        }

        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_21DC08D10;
        v28 = MEMORY[0x277D837D0];
        *(v27 + 56) = MEMORY[0x277D837D0];
        v29 = sub_21D17A884();
        *(v27 + 32) = v7;
        *(v27 + 40) = v6;
        *(v27 + 96) = v28;
        *(v27 + 104) = v29;
        *(v27 + 64) = v29;
        *(v27 + 72) = v8;
        v30 = MEMORY[0x277D83B88];
        *(v27 + 80) = v9;
        v31 = MEMORY[0x277D83C10];
        goto LABEL_41;
      }

      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AFB0;
      v20 = MEMORY[0x277D837D0];
      *(v19 + 56) = MEMORY[0x277D837D0];
      v21 = sub_21D17A884();
      *(v19 + 32) = v7;
      *(v19 + 40) = v6;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = v8;
      *(v19 + 80) = v9;
      v22 = MEMORY[0x277D83B88];
      v23 = MEMORY[0x277D83C10];
    }

    else
    {
      if (v5 != 2)
      {
        if (v5 == 1)
        {
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          sub_21DBF516C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_21DC08D10;
          *(v10 + 56) = MEMORY[0x277D837D0];
          v18 = sub_21D17A884();
          *(v10 + 32) = v7;
          *(v10 + 40) = v6;
          v13 = MEMORY[0x277D83B88];
          v14 = MEMORY[0x277D83C10];
          *(v10 + 96) = MEMORY[0x277D83B88];
          *(v10 + 104) = v14;
          *(v10 + 64) = v18;
          *(v10 + 72) = v8;
          goto LABEL_21;
        }

        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_21DC08D10;
        *(v27 + 56) = MEMORY[0x277D837D0];
        v37 = sub_21D17A884();
        *(v27 + 32) = v7;
        *(v27 + 40) = v6;
        v30 = MEMORY[0x277D83B88];
        v31 = MEMORY[0x277D83C10];
        *(v27 + 96) = MEMORY[0x277D83B88];
        *(v27 + 104) = v31;
        *(v27 + 64) = v37;
        *(v27 + 72) = v8;
LABEL_41:
        *(v27 + 136) = v30;
        *(v27 + 144) = v31;
        *(v27 + 112) = a2;
        goto LABEL_42;
      }

      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AFB0;
      *(v19 + 56) = MEMORY[0x277D837D0];
      v36 = sub_21D17A884();
      *(v19 + 32) = v7;
      *(v19 + 40) = v6;
      v22 = MEMORY[0x277D83B88];
      v23 = MEMORY[0x277D83C10];
      *(v19 + 96) = MEMORY[0x277D83B88];
      *(v19 + 104) = v23;
      *(v19 + 64) = v36;
      *(v19 + 72) = v8;
    }

    *(v19 + 136) = v22;
    *(v19 + 144) = v23;
    *(v19 + 112) = a2;
    *(v19 + 176) = v22;
    *(v19 + 184) = v23;
    *(v19 + 152) = a3;
    goto LABEL_42;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21DC08D20;
      *(v15 + 56) = MEMORY[0x277D837D0];
      v16 = sub_21D17A884();
      *(v15 + 32) = v7;
      *(v15 + 40) = v6;
      v17 = MEMORY[0x277D83C10];
      *(v15 + 96) = MEMORY[0x277D83B88];
      *(v15 + 104) = v17;
      *(v15 + 64) = v16;
      *(v15 + 72) = a3;
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_21DC08D10;
      *(v32 + 56) = MEMORY[0x277D837D0];
      v33 = sub_21D17A884();
      *(v32 + 32) = v7;
      *(v32 + 40) = v6;
      v34 = MEMORY[0x277D83B88];
      v35 = MEMORY[0x277D83C10];
      *(v32 + 96) = MEMORY[0x277D83B88];
      *(v32 + 104) = v35;
      *(v32 + 64) = v33;
      *(v32 + 72) = a2;
      *(v32 + 136) = v34;
      *(v32 + 144) = v35;
      *(v32 + 112) = a3;
    }
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21DC08D20;
    *(v24 + 56) = MEMORY[0x277D837D0];
    v25 = sub_21D17A884();
    *(v24 + 32) = v7;
    *(v24 + 40) = v6;
    v26 = MEMORY[0x277D83C10];
    *(v24 + 96) = MEMORY[0x277D83B88];
    *(v24 + 104) = v26;
    *(v24 + 64) = v25;
    *(v24 + 72) = a2;
  }

LABEL_42:
  v38 = sub_21DBFA13C();

  return v38;
}

uint64_t static TTRLocalizableStrings.Hashtags.renameTagConfirmationMessage(hashtag:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 0)
  {
    v6 = a4 > 0;
  }

  else
  {
    v6 = 2 * (a4 > 0);
  }

  v7 = sub_21DBFA22C();
  v9 = v8;
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_21DC08D20;
      *(v10 + 56) = MEMORY[0x277D837D0];
      v11 = sub_21D17A884();
      *(v10 + 32) = v7;
      *(v10 + 40) = v9;
      v12 = MEMORY[0x277D83C10];
      *(v10 + 96) = MEMORY[0x277D83B88];
      *(v10 + 104) = v12;
      *(v10 + 64) = v11;
      *(v10 + 72) = a4;
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_21DC08D10;
      *(v16 + 56) = MEMORY[0x277D837D0];
      v17 = sub_21D17A884();
      *(v16 + 32) = v7;
      *(v16 + 40) = v9;
      v18 = MEMORY[0x277D83B88];
      v19 = MEMORY[0x277D83C10];
      *(v16 + 96) = MEMORY[0x277D83B88];
      *(v16 + 104) = v19;
      *(v16 + 64) = v17;
      *(v16 + 72) = a3;
      *(v16 + 136) = v18;
      *(v16 + 144) = v19;
      *(v16 + 112) = a4;
    }
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21DC08D20;
    *(v13 + 56) = MEMORY[0x277D837D0];
    v14 = sub_21D17A884();
    *(v13 + 32) = v7;
    *(v13 + 40) = v9;
    v15 = MEMORY[0x277D83C10];
    *(v13 + 96) = MEMORY[0x277D83B88];
    *(v13 + 104) = v15;
    *(v13 + 64) = v14;
    *(v13 + 72) = a3;
  }

  v20 = sub_21DBFA13C();

  return v20;
}

uint64_t static TTRLocalizableStrings.Hashtags.deletingTagMessage(hashtags:)(uint64_t a1)
{
  if (*(a1 + 16) == 1 && (v2 = sub_21D195590(a1), v3))
  {
    v4 = v2;
    v5 = v3;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21DC08D00;
    v13 = sub_21DBFA23C();
    v14 = v7;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v4, v5);

    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_21D17A884();
    *(v6 + 32) = v13;
    *(v6 + 40) = v14;
    v8 = sub_21DBFA17C();
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC08D00;
    v10 = *(a1 + 16);
    v11 = MEMORY[0x277D83C10];
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 64) = v11;
    *(v9 + 32) = v10;
    v8 = sub_21DBFA13C();
  }

  return v8;
}

uint64_t static TTRLocalizableStrings.Hashtags.renamingTagMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.tagAlreadyExistsMessage(from:to:numberOfRemindersToBeUpdated:numberOfCustomSmartListsToBeUpdated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 < 1)
  {
    if (a6 > 0)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else if (a6 > 0)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_9:
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D20;
  v7 = sub_21DBFA22C();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_21D17A884();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = sub_21DBFA22C();
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  v14 = sub_21DBFA13C();

  return v14;
}

uint64_t static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertReplaceButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.tagAlreadyExistsAlertDiscardButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.deleteSmartListAlertTitle(smartListCount:)(uint64_t a1)
{
  if (a1 == 1)
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

uint64_t static TTRLocalizableStrings.Hashtags.deleteSmartListAlertMessage(hashtagCount:smartListNames:)(uint64_t a1, void *a2)
{
  if (a2[2] != 1)
  {
    if (a1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_11:
      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC08D00;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
      v7 = sub_21DBFA07C();
      v9 = v8;
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = sub_21D17A884();
      *(v6 + 32) = v7;
      *(v6 + 40) = v9;
      v5 = sub_21DBFA13C();
      goto LABEL_12;
    }

    swift_once();
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_9:
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D00;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21D17A884();
  v4 = a2[5];
  *(v3 + 32) = a2[4];
  *(v3 + 40) = v4;
  sub_21DBF8E0C();
  v5 = sub_21DBFA13C();
LABEL_12:

  return v5;
}

uint64_t static TTRLocalizableStrings.Hashtags.deleteSmartListAlertDeleteButton(hashtagCount:smartListCount:)(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    if (a1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (a1 == 1)
  {
LABEL_6:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_10;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_10:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Hashtags.addNewTagPlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.savingDescription.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.namePlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.includeText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.includeCompletedReminders.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.includeCompletedRemindersDescription(completedCount:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v19 = &v18 - v3;
  v18 = sub_21DBF510C();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF511C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF513C();
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D83B88];
  *(v12 + 16) = xmmword_21DC08D00;
  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = a1;
  sub_21DBFA13C();

  sub_21D300F54();
  (*(v8 + 104))(v10, *MEMORY[0x277CC8BA8], v7);
  (*(v4 + 104))(v6, *MEMORY[0x277CC8B98], v18);
  sub_21DBF8E0C();
  sub_21DBF512C();
  v15 = sub_21DBF54CC();
  (*(*(v15 - 8) + 56))(v19, 1, 1, v15);
  v16 = sub_21DBFB26C();

  return v16;
}

uint64_t static TTRLocalizableStrings.Templates.templatesListTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.noTemplates.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.editTemplate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.deleteTemplate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.deleteTemplateAlertTitle(templateName:)(uint64_t a1, uint64_t a2)
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

uint64_t static TTRLocalizableStrings.Templates.deleteTemplateWithPublicLinkAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.failedToDeleteTemplateAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.failedToDeleteTemplateAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.templateStatusTemplate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.templateStatusSharedTemplate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.templateStatusUpdateSharedTemplate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.shareTemplate.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.updateLink.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.manageLink.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.sendLink.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.stopSharing.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.shareTemplateViewTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.updateLinkViewTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.cantMarkAsCompletedAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.cantMarkAsCompletedAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.updateSharedTemplateAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.updateSharedTemplateAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.dateAndTimeLinkOption.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.dateAndTimeLinkOptionDescription.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.tagsLinkOption.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.tagsLinkOptionDescription.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.locationsLinkOption.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateContainsNoImagesText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.showPreview.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.includeDateTime.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.includeTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.includeLocations.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.includeDateTimeAndTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.includeDateTimeAndLocations.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.includeTagsAndLocations.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.PublicTemplateIncludePropertiesAlert.includeThreeAttributes.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateIncludeLocationsAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.templatePreview.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO9TemplatesO30locationsLinkOptionDescriptionSSvgZ_0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateUpdateLinkAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateUpdateLinkAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateSharingErrorAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateSharingOfflineTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateSharingOfflineMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateSharingRetryLaterErrorAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateSharingMaxReminderCountExceededAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateSharingMaxReminderCountExceededAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateStopSharingAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateStopSharingAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateStopSharingAlertStopSharingButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateStopSharingErrorAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateStopSharingErrorAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.copyIcloudLink.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.addListFromPublicTemplateButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateNotAvailableAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateNotAvailableAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateCannotOpenDueToNetworkFailureAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateCannotOpenDueToNetworkFailureAlertMessage.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateNotSupportedAlertTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateCreating.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateUpdating.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateDeleting.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Templates.publicTemplateDownloading.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Sections.othersColumnTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Sections.addSectionActionText(listLayout:)(_BYTE *a1)
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

uint64_t static TTRLocalizableStrings.Sections.suggestedSectionHeaderText(listLayout:)(_BYTE *a1)
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

uint64_t static TTRLocalizableStrings.Sections.suggestedSectionHeaderDescriptionText(listLayout:)(_BYTE *a1)
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

uint64_t static TTRLocalizableStrings.Sections.newSectionActionText(listLayout:)(_BYTE *a1)
{
  if (*a1)
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

uint64_t static TTRLocalizableStrings.Sections.editSectionsTitle(listLayout:)(_BYTE *a1)
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

uint64_t static TTRLocalizableStrings.Sections.hideEmpty(listLayout:)(_BYTE *a1)
{
  if (*a1)
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

uint64_t static TTRLocalizableStrings.Sections.moveToSectionText(withSelectedRemindersCount:listLayout:)(uint64_t a1, _BYTE *a2)
{
  if (*a2)
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

uint64_t static TTRLocalizableStrings.Sections.moveToSectionText(listLayout:)(_BYTE *a1)
{
  if (*a1)
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

uint64_t static TTRLocalizableStrings.Sections.newSectionWithSelectionText(withSelectedRemindersCount:listLayout:)(uint64_t a1, _BYTE *a2)
{
  if (*a2)
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

uint64_t static TTRLocalizableStrings.Sections.newSectionWithSelection(listLayout:)(_BYTE *a1)
{
  if (*a1)
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

uint64_t static TTRLocalizableStrings.Sections.hideEmptySectionsSubtitle(listLayout:)(_BYTE *a1)
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

id static TTRLocalizableStrings.Sections.sectionsCanonicalName(name:)()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = qword_280D176B8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 40) = sub_21D900614(4);
  v7 = sub_21D17853C(inited);
  swift_setDeallocating();
  sub_21D3B574C(inited + 32);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 32) = v6;
  *(v8 + 40) = sub_21D900614(5);
  v9 = sub_21D17853C(v8);
  swift_setDeallocating();
  sub_21D3B574C(v8 + 32);
  sub_21D188D5C(v9);

  v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v11 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v12 = sub_21DBF9E5C();

  v13 = [v10 initWithString:v11 attributes:{v12, 0x800000021DC58590}];

  v14 = sub_21D188D5C(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_21DC09CF0;
  *(v15 + 32) = v13;
  v16 = v13;
  inserted = _sSo18NSAttributedStringC15RemindersUICoreE09formattedB06format0F10Attributes25attributedStringsToInsertABSS_SDySo0aB3KeyaypGSayABGtFZ_0(v0, v2, v14, v15);

  swift_setDeallocating();
  swift_arrayDestroy();
  return inserted;
}

uint64_t static TTRLocalizableStrings.Sections.restoreSectionNameAlertTitle(listLayout:)(_BYTE *a1)
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

uint64_t static TTRLocalizableStrings.Sections.restoreSectionNameAlertMessage(name:listLayout:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 1)
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
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D00;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_21D17A884();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  sub_21DBF8E0C();
  v6 = sub_21DBFA13C();

  return v6;
}

uint64_t static TTRLocalizableStrings.Sections.restoreSectionNameAlertRestoreButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TodayList.overdueSectionName.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TodayList.allDaySectionName.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TodayList.timedRemindersSectionName.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.TodayList.timedRemindersSectionDescription.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.whySmartLists.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.whySmartListsExampleBody.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.makeSmartListBody.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.filteringTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.filteringTagsBody.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.addRemindersToSmartLists.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.howToAddRemindersToSmartLists.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.tagsSummary.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.whyTags.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.tagsCreating.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.usingTagsBody.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.tagsAdding.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.tagsBrowser.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.tagsTap.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.LearnMore.smartListsBody.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Sharing.sharedListSummaryForShareSheet.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Sharing.Notifications.sectionHeaderTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Sharing.Notifications.enableAddedReminderNotifications.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Sharing.Notifications.enableAddedItemNotifications.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Sharing.Notifications.enableCompletedReminderNotifications.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Sharing.Notifications.enableCompletedItemNotifications.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.Toolbar.moveItemsString(withCount:)(uint64_t a1)
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

uint64_t static TTRLocalizableStrings.Toolbar.deleteItemsString(withCount:)(uint64_t a1)
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

uint64_t static TTRLocalizableStrings.SharingExtension.addButton.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SharingExtension.noSupportedListAlertMessage.getter()
{
  if (sub_21DBF602C())
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

uint64_t static TTRLocalizableStrings.SharingExtension.newReminderPlaceholderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SharingExtension.suggestedItemsCellTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.SharingExtension.includeAllSuggestedItemsButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.QuickEntry.detailsCellTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.QuickEntry.moreOptionsSectionHeaderText.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t static TTRLocalizableStrings.QuickEntry.navigationItemCommitButtonTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO12AccountsListO019hidePredefinedSmartF4TextSSvgZ_0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D3B3FC4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE5B350 = result;
  *algn_27CE5B358 = v1;
  return result;
}

uint64_t (*static TTRLocalizableStrings.WhatsNew.autoCategorizeTitle.modify())()
{
  if (qword_27CE56670 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D3B4174()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE5B360 = result;
  *algn_27CE5B368 = v1;
  return result;
}

uint64_t (*static TTRLocalizableStrings.WhatsNew.autoCategorizeDescription.modify())()
{
  if (qword_27CE56678 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D3B431C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE5B370 = result;
  *algn_27CE5B378 = v1;
  return result;
}

uint64_t (*static TTRLocalizableStrings.WhatsNew.suggestedRemindersTitle.modify())()
{
  if (qword_27CE56680 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D3B44C0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE5B380 = result;
  *algn_27CE5B388 = v1;
  return result;
}

uint64_t (*static TTRLocalizableStrings.WhatsNew.suggestedRemindersDescription.modify())()
{
  if (qword_27CE56688 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21D3B4664()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE5B390 = result;
  *algn_27CE5B398 = v1;
  return result;
}

uint64_t (*static TTRLocalizableStrings.WhatsNew.richerSharingTitle.modify())()
{
  if (qword_27CE56690 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D3B4808()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE5B3A0 = result;
  *algn_27CE5B3A8 = v1;
  return result;
}

uint64_t (*static TTRLocalizableStrings.WhatsNew.richerSharingDescription.modify())()
{
  if (qword_27CE56698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D3B49AC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE5B3B0 = result;
  *algn_27CE5B3B8 = v1;
  return result;
}

uint64_t (*static TTRLocalizableStrings.WhatsNew.timeZonesTitle.modify())()
{
  if (qword_27CE566A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D3B4B54()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE5B3C0 = result;
  *algn_27CE5B3C8 = v1;
  return result;
}

uint64_t (*static TTRLocalizableStrings.WhatsNew.timeZonesDescription.modify())()
{
  if (qword_27CE566A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO08assigneeE9CellTitle32listShouldCategorizeGroceryItemsSSSb_tFZ_0(char a1)
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

uint64_t _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO30personTriggerSectionFooterText32listShouldCategorizeGroceryItemsSSSb_tFZ_0(char a1)
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

uint64_t sub_21D3B4FD0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B3E0);
  sub_21D0D0F1C(&qword_27CE5B3E8, &qword_27CE5B3E0);
  v2 = sub_21DBF77EC();

  v3 = *(v2 + 16);
  if (v3 != 2)
  {
    v4 = v3 - 1;
    if (v3 == 1)
    {
      sub_21DBF8E0C();

      v5 = sub_21DBFA22C();
      v7 = v6;

      v4 = 0;
      v9 = 0;
      v10 = 0;
    }

    else if (v3 < 3)
    {

      v5 = 0;
      v4 = 0;
      v9 = 0;
      v10 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      sub_21DBF8E0C();

      v5 = sub_21DBFA22C();
      v7 = v13;

      v9 = 0;
      v10 = 2;
    }

    goto LABEL_9;
  }

  sub_21DBF8E0C();
  v5 = sub_21DBFA22C();
  v7 = v11;

  if (*(v2 + 16) >= 2uLL)
  {
    sub_21DBF8E0C();

    v4 = sub_21DBFA22C();
    v9 = v12;

    v10 = 1;
LABEL_9:
    *a1 = v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore21TTRLocalizableStringsO9TemplatesO21linkCreatedStatusText4dateS2S_tFZ_0(uint64_t a1, uint64_t a2)
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

uint64_t _s15RemindersUICore21TTRLocalizableStringsO9TemplatesO21linkUpdatedStatusText4dateS2S_tFZ_0(uint64_t a1, uint64_t a2)
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

id _s15RemindersUICore21TTRLocalizableStringsO9TemplatesO31linkExpiresStatusAttributedText4date14baseAttributes07expiresjM0So18NSAttributedStringCSS_SDySo0oP3KeyaypGANtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF516C();
  v7 = v6;
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21D17A884();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  sub_21DBF8E0C();
  sub_21DBFA13C();

  v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v10 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D112874();
  v11 = sub_21DBF9E5C();
  v12 = [v9 initWithString:v10 attributes:{v11, 0x800000021DC5A390}];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v12;
  v14 = v12;
  inserted = _sSo18NSAttributedStringC15RemindersUICoreE09formattedB06format0F10Attributes25attributedStringsToInsertABSS_SDySo0aB3KeyaypGSayABGtFZ_0(v5, v7, a3, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return inserted;
}

uint64_t sub_21D3B574C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B3D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D3B58BC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5B3F0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5B3F0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSpotlightReminderView.notes.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRSpotlightReminderView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B458);
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - v11;
  v28 = type metadata accessor for TTRSpotlightReminderView(0);
  MEMORY[0x28223BE20](v28);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v27 = a1;
  *v14 = KeyPath;
  v14[8] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D3C54F0();
  sub_21DBFC87C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v15 = v10;
    sub_21DBF56BC();
    v36 = 6;
    sub_21D3C5544(&qword_27CE65160, MEMORY[0x277CC95F0]);
    v16 = v25;
    sub_21DBFC49C();
    v18 = v28;
    sub_21D0D523C(v9, &v14[*(v28 + 44)], &qword_27CE58370);
    sub_21DBF774C();
    v35 = 5;
    sub_21D3C5544(&qword_27CE5B468, MEMORY[0x277D455F0]);
    sub_21DBFC49C();
    sub_21D0D523C(v6, &v14[*(v18 + 40)], &qword_27CE5B450);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    v34 = 4;
    sub_21D3C56B0(&qword_27CE5B470);
    sub_21DBFC49C();
    *(v14 + 6) = v29;
    v33 = 3;
    *(v14 + 4) = sub_21DBFC46C();
    *(v14 + 5) = v19;
    v32 = 2;
    v14[25] = sub_21DBFC47C() & 1;
    v31 = 1;
    v14[24] = sub_21DBFC47C() & 1;
    v30 = 0;
    v20 = sub_21DBFC48C();
    v22 = v21;
    (*(v15 + 8))(v12, v16);
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20;
    }

    *(v14 + 2) = v23;
    sub_21D3C5A20(v14, v24, type metadata accessor for TTRSpotlightReminderView);
    __swift_destroy_boxed_opaque_existential_0(v27);
    return sub_21D3C5A88(v14, type metadata accessor for TTRSpotlightReminderView);
  }
}

uint64_t TTRSpotlightReminderView.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B478);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D3C54F0();
  sub_21DBFC88C();
  LOBYTE(v12) = 0;
  sub_21DBFC55C();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_21DBFC52C();
    LOBYTE(v12) = 2;
    sub_21DBFC52C();
    v12 = *(v3 + 32);
    v11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0);
    sub_21D3C558C();
    sub_21DBFC56C();
    *&v12 = *(v3 + 48);
    v11 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B488);
    sub_21D3C5608();
    sub_21DBFC56C();
    type metadata accessor for TTRSpotlightReminderView(0);
    LOBYTE(v12) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
    sub_21D3C571C();
    sub_21DBFC56C();
    LOBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    sub_21D3C57D0();
    sub_21DBFC56C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TTRSpotlightReminderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
  MEMORY[0x28223BE20](v67);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v57 - v14;
  v59 = *(v1 + 16);
  LODWORD(v14) = *(v1 + 25);
  v60 = *(v1 + 24);
  v61 = v14;
  v16 = *(v1 + 40);
  v62 = *(v1 + 32);
  v17 = *(v1 + 48);
  v18 = type metadata accessor for TTRSpotlightReminderView(0);
  v19 = v1 + *(v18 + 40);
  v64 = v15;
  v20 = v15;
  v21 = v16;
  sub_21D0D3954(v19, v20, &qword_27CE5B450);
  v22 = v1 + *(v18 + 44);
  v68 = v12;
  sub_21D0D3954(v22, v12, &qword_27CE58370);
  v65 = v17;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v23 = sub_21D3BFC64();
  v24 = [v23 displayName];

  if (v24)
  {
    v25 = sub_21DBFA16C();
    v58 = v26;
  }

  else
  {
    v25 = 0;
    v58 = 0;
  }

  v27 = sub_21D3BFC64();
  v28 = [v27 completionDate];

  if (v28)
  {
    v29 = v70;
    sub_21DBF55FC();

    v30 = 0;
  }

  else
  {
    v30 = 1;
    v29 = v70;
  }

  v31 = sub_21DBF563C();
  v32 = *(*(v31 - 8) + 56);
  v33 = 1;
  v32(v29, v30, 1, v31);
  v34 = sub_21D3BFC64();
  v35 = [v34 dueDate];

  v36 = v69;
  if (v35)
  {
    sub_21DBF55FC();

    v33 = 0;
  }

  v32(v36, v33, 1, v31);
  v37 = sub_21D3BFC64();
  v38 = [v37 allDay];

  v39 = sub_21DBF65CC();
  v40 = v63;
  (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
  v41 = v36;
  sub_21D0D3954(v40, v66, &qword_27CE5B4C0);
  sub_21DBF9B4C();
  sub_21D0CF7E0(v40, &qword_27CE5B4C0);
  v42 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  v43 = v42[5];
  v71 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C8);
  sub_21DBF9B4C();
  *(a1 + v43) = v72;
  v44 = v42[6];
  v71 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4D0);
  sub_21DBF9B4C();
  *(a1 + v44) = v72;
  *(a1 + v42[7]) = v59;
  v45 = v61;
  *(a1 + v42[8]) = v60;
  *(a1 + v42[9]) = v45;
  v46 = (a1 + v42[10]);
  *v46 = v62;
  v46[1] = v21;
  v47 = v64;
  *(a1 + v42[11]) = v65;
  sub_21D0D523C(v47, a1 + v42[12], &qword_27CE5B450);
  sub_21D0D523C(v68, a1 + v42[13], &qword_27CE58370);
  v48 = (a1 + v42[14]);
  v49 = v58;
  *v48 = v25;
  v48[1] = v49;
  sub_21D0D523C(v70, a1 + v42[15], &qword_27CE58D68);
  sub_21D0D523C(v41, a1 + v42[16], &qword_27CE58D68);
  *(a1 + v42[17]) = v38;
  v50 = a1 + v42[18];
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  v51 = a1 + v42[19];
  *v51 = swift_getKeyPath();
  *(v51 + 8) = 0;
  v52 = a1 + v42[20];
  *v52 = swift_getKeyPath();
  *(v52 + 8) = 0;
  v53 = a1 + v42[21];
  *v53 = swift_getKeyPath();
  *(v53 + 8) = 0;
  v54 = a1 + v42[22];
  *v54 = swift_getKeyPath();
  *(v54 + 8) = 0;
  v55 = a1 + v42[23];
  result = swift_getKeyPath();
  *v55 = result;
  *(v55 + 8) = 0;
  return result;
}

uint64_t sub_21D3B69F4()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x6E6F697461636F6CLL;
  if (v1 != 5)
  {
    v3 = 0x7265646E696D6572;
  }

  v4 = 0x7365746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x7367617468736168;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64656767616C66;
  if (v1 != 1)
  {
    v5 = 0x6361747441736168;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21D3B6AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21D3CD6C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21D3B6B24(uint64_t a1)
{
  v2 = sub_21D3C54F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21D3B6B60(uint64_t a1)
{
  v2 = sub_21D3C54F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21D3B6B9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF96CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF972C();
  v9 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  v10 = v1 + *(v9 + 72);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *v10;
  if ((v12 & 1) == 0)
  {

    sub_21DBFAECC();
    v14 = sub_21DBF984C();
    v49 = a1;
    v15 = v8;
    v16 = v7;
    v17 = v12;
    v18 = v2;
    v19 = v9;
    v20 = v5;
    v21 = v4;
    v22 = v14;
    sub_21DBF846C();

    v4 = v21;
    v5 = v20;
    v9 = v19;
    v2 = v18;
    v12 = v17;
    v7 = v16;
    v8 = v15;
    a1 = v49;
    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v11, 0);
    (*(v5 + 8))(v7, v4);
    v13 = v51;
  }

  *a1 = v8;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B658);
  sub_21D3B704C(v2, a1 + *(v23 + 44));
  sub_21DBF9C7C();
  sub_21DBF95CC();
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B660) + 36));
  v25 = v56;
  v24[4] = v55;
  v24[5] = v25;
  v24[6] = v57;
  v26 = v52;
  *v24 = v51;
  v24[1] = v26;
  v27 = v54;
  v24[2] = v53;
  v24[3] = v27;
  if (!v12)
  {

    sub_21DBFAECC();
    v28 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v11, 0);
    (*(v5 + 8))(v7, v4);
  }

  v29 = sub_21DBF985C();
  sub_21DBF94BC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B668) + 36);
  *v38 = v29;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  *(v38 + 24) = v35;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  v39 = v2 + *(v9 + 92);
  v40 = *v39;
  if (*(v39 + 8) == 1)
  {
    v41 = *v39;
  }

  else
  {

    sub_21DBFAECC();
    v42 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v40, 0);
    (*(v5 + 8))(v7, v4);
    v41 = v50;
  }

  v43 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B670) + 36));
  v44 = *(sub_21DBF95BC() + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_21DBF979C();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  *v43 = v41;
  *(v43 + 1) = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B678);
  *&v43[*(result + 36)] = 256;
  return result;
}

uint64_t sub_21D3B704C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B680);
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = (&v63 - v3);
  v65 = type metadata accessor for ImageAttachmentsView(0);
  MEMORY[0x28223BE20](v65);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v63 - v8;
  v9 = sub_21DBF54CC();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B688);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B690);
  MEMORY[0x28223BE20](v16 - 8);
  v76 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B698);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v74 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v63 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);
  sub_21DBF9B5C();
  v81 = *(a1 + v21[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6A0);
  sub_21DBF9B5C();
  v31 = v80;
  *&v30[*(type metadata accessor for ListBadge(0) + 20)] = v31;
  sub_21D3C5A20(a1, v24, type metadata accessor for TTRSpotlightReminderView.ReminderView);
  v32 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v33 = v15;
  v34 = swift_allocObject();
  sub_21D3CDBF4(v24, v34 + v32, type metadata accessor for TTRSpotlightReminderView.ReminderView);
  v35 = *(v26 + 44);
  v73 = v30;
  v36 = &v30[v35];
  *v36 = sub_21D3CDC5C;
  v36[1] = v34;
  v36[2] = 0;
  v36[3] = 0;
  *v20 = sub_21DBF97CC();
  *(v20 + 1) = 0;
  v37 = 1;
  v20[16] = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6A8);
  v39 = v20;
  sub_21D3B7D00(a1, &v20[*(v38 + 44)]);
  if (*(a1 + v21[9]) != 1)
  {
    goto LABEL_9;
  }

  v81 = *(a1 + v21[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6B8);
  sub_21DBF9B5C();
  if (!v80)
  {
LABEL_8:
    v37 = 1;
    goto LABEL_9;
  }

  v40 = *(v80 + 16);
  if (!v40)
  {

    goto LABEL_8;
  }

  v64 = v33;
  v42 = v66;
  v41 = v67;
  v43 = *(v67 + 16);
  v44 = v80 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v45 = v68;
  v43(v66, v44, v68);
  v46 = 1;
  if (v40 != 1)
  {
    v43(v72, v44 + *(v41 + 72), v45);
    v46 = 0;
  }

  v47 = v72;
  (*(v41 + 56))(v72, v46, 1, v45);
  v48 = v69;
  v43(v69, v42, v45);
  v49 = v65;
  sub_21D0D3954(v47, v48 + *(v65 + 20), &qword_27CE5EA20);
  v50 = *(v49 + 24);
  *(v48 + v50) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  swift_storeEnumTagMultiPayload();
  v51 = v70;
  sub_21D3C5A20(v48, v70, type metadata accessor for ImageAttachmentsView);
  v52 = v71;
  *v71 = 0;
  *(v52 + 8) = 1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C8);
  sub_21D3C5A20(v51, v52 + *(v53 + 48), type metadata accessor for ImageAttachmentsView);
  sub_21D3C5A88(v48, type metadata accessor for ImageAttachmentsView);
  sub_21D0CF7E0(v47, &qword_27CE5EA20);
  (*(v41 + 8))(v42, v45);
  sub_21D3C5A88(v51, type metadata accessor for ImageAttachmentsView);
  v33 = v64;
  sub_21D0D523C(v52, v64, &qword_27CE5B680);
  v37 = 0;
LABEL_9:
  (*(v78 + 56))(v33, v37, 1, v75);
  v55 = v73;
  v54 = v74;
  sub_21D0D3954(v73, v74, &qword_27CE5B698);
  v56 = v39;
  v57 = v39;
  v58 = v76;
  sub_21D0D3954(v57, v76, &qword_27CE5B690);
  v59 = v77;
  sub_21D0D3954(v33, v77, &qword_27CE5B688);
  v60 = v79;
  sub_21D0D3954(v54, v79, &qword_27CE5B698);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6B0);
  sub_21D0D3954(v58, v60 + *(v61 + 48), &qword_27CE5B690);
  sub_21D0D3954(v59, v60 + *(v61 + 64), &qword_27CE5B688);
  sub_21D0CF7E0(v33, &qword_27CE5B688);
  sub_21D0CF7E0(v56, &qword_27CE5B690);
  sub_21D0CF7E0(v55, &qword_27CE5B698);
  sub_21D0CF7E0(v59, &qword_27CE5B688);
  sub_21D0CF7E0(v58, &qword_27CE5B690);
  return sub_21D0CF7E0(v54, &qword_27CE5B698);
}

uint64_t sub_21D3B791C(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  v2 = v1 - 8;
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v29 = v3;
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = *(v2 + 60);
  v18 = v31;
  sub_21D0D3954(v31 + v17, v9, &qword_27CE58370);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_21D0CF7E0(v9, &qword_27CE58370);
  }

  v27 = *(v11 + 32);
  v27(v16, v9, v10);
  sub_21DBFA85C();
  v20 = sub_21DBFA89C();
  (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  (*(v11 + 16))(v13, v16, v10);
  v21 = v18;
  v22 = v30;
  sub_21D3C5A20(v21, v30, type metadata accessor for TTRSpotlightReminderView.ReminderView);
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = (v12 + *(v28 + 80) + v23) & ~*(v28 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v27((v25 + v23), v13, v10);
  sub_21D3CDBF4(v22, v25 + v24, type metadata accessor for TTRSpotlightReminderView.ReminderView);
  sub_21D3932A8(0, 0, v6, &unk_21DC14088, v25);

  sub_21D0CF7E0(v6, &unk_27CE5F150);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_21D3B7D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6D0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v82 = (&v80 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6D8);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = &v80 - v7;
  v89 = sub_21DBF96CC();
  *(&v87 + 1) = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  *&v87 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = (&v80 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v80 - v21;
  v23 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  v24 = v23;
  v25 = (a1 + *(v23 + 40));
  v26 = v25[1];
  v101 = *v25;
  v27 = v101 & 0xFFFFFFFFFFFFLL;
  KeyPath = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v26) & 0xF;
  }

  v28 = v27 != 0;
  v98 = v26;
  if (!v26)
  {
    v28 = 0;
  }

  LODWORD(v97) = v28;
  v88 = *(v23 + 60);
  sub_21D0D3954(a1 + v88, v22, &qword_27CE58D68);
  v29 = sub_21DBF563C();
  v30 = *(*(v29 - 8) + 48);
  v31 = 1;
  v32 = v30(v22, 1, v29);
  v33 = v22;
  v34 = a1;
  sub_21D0CF7E0(v33, &qword_27CE58D68);
  if (v32 == 1)
  {
    sub_21D0D3954(a1 + v24[16], v19, &qword_27CE58D68);
    v31 = v30(v19, 1, v29) != 1;
    sub_21D0CF7E0(v19, &qword_27CE58D68);
  }

  v81 = v31;
  v84 = v24[12];
  v35 = v96;
  sub_21D0D3954(a1 + v84, v96, &qword_27CE5B450);
  v36 = sub_21DBF774C();
  v83 = *(*(v36 - 8) + 48);
  v37 = v83(v35, 1, v36);
  sub_21D0CF7E0(v35, &qword_27CE5B450);
  v38 = *(a1 + v24[11]);
  v80 = v37;
  v39 = v37 != 1 || v31;
  v40 = (v38 != 0) | v39;
  if (v38)
  {
    v41 = v98;
    if ((v39 & 1) == 0)
    {
      v40 = *(v38 + 16) != 0;
    }
  }

  else
  {
    v41 = v98;
  }

  v42 = sub_21DBF971C();
  v43 = v100;
  *v100 = v42;
  v43[1] = 0x4018000000000000;
  *(v43 + 16) = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6E8);
  sub_21D3B88C4(v97, v40 & 1, v34, v43 + *(v44 + 44));
  if (!v41)
  {
    v101 = 0;
LABEL_24:
    v86 = 0;
    KeyPath = 0;
    v98 = 0;
    v89 = 0;
    v87 = 0uLL;
    v97 = 0;
    v96 = 0;
    goto LABEL_27;
  }

  v45 = v101 & 0xFFFFFFFFFFFFLL;
  if ((v41 & 0x2000000000000000) != 0)
  {
    v45 = KeyPath;
  }

  if (!v45)
  {
    v101 = 0;
    v41 = 0;
    goto LABEL_24;
  }

  KeyPath = swift_getKeyPath();
  v46 = v34 + v24[21];
  v47 = *v46;
  v48 = *(v46 + 8);
  sub_21DBF8E0C();

  if ((v48 & 1) == 0)
  {
    sub_21DBFAECC();
    v49 = v24;
    v50 = sub_21DBF984C();
    sub_21DBF846C();

    v24 = v49;
    v51 = v87;
    sub_21DBF96BC();
    swift_getAtKeyPath();

    (*(*(&v87 + 1) + 8))(v51, v89);
    v47 = v108[0];
  }

  v52 = v34 + v24[22];
  v53 = *v52;
  if (*(v52 + 8) == 1)
  {
    v108[0] = *v52;
  }

  else
  {

    sub_21DBFAECC();
    v54 = sub_21DBF984C();
    sub_21DBF846C();

    v41 = v98;
    v55 = v87;
    sub_21DBF96BC();
    swift_getAtKeyPath();

    (*(*(&v87 + 1) + 8))(v55, v89);
    v53 = v108[0];
  }

  *(&v87 + 1) = v53;
  v89 = v47;
  LOBYTE(v103) = 0;
  v102 = 0;
  *&v87 = swift_getKeyPath();
  v96 = v103;
  v97 = v102;
  v98 = 1;
  v86 = MEMORY[0x277D84F90];
LABEL_27:
  v56 = sub_21D3B9360(v34 + v88, v34 + v24[16]);
  if (v57)
  {
    v58 = v56;
    v59 = v57;
    v60 = v85;
    sub_21D0D3954(v34 + v84, v85, &qword_27CE5B450);
    if (v83(v60, 1, v36) == 1)
    {

      sub_21D0CF7E0(v60, &qword_27CE5B450);
    }

    else
    {
      sub_21D0CF7E0(v60, &qword_27CE5B450);
      if (!v38 || !*(v38 + 16))
      {
        v76 = v80 != 1;
        v77 = sub_21DBF971C();
        v78 = v82;
        *v82 = v77;
        *(v78 + 8) = 0;
        *(v78 + 16) = 0;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B700);
        sub_21D3B96D4(v58, v59, v34, v81, v76, (v78 + *(v79 + 44)));

        sub_21D0D523C(v78, v95, &qword_27CE5B6D0);
        v61 = 0;
        goto LABEL_34;
      }
    }
  }

  v61 = 1;
LABEL_34:
  v62 = v95;
  (*(v91 + 56))(v95, v61, 1, v92);
  v63 = v99;
  sub_21D0D3954(v100, v99, &qword_27CE5B6E0);
  v64 = v93;
  sub_21D0D3954(v62, v93, &qword_27CE5B6D8);
  v65 = v63;
  v66 = v94;
  sub_21D0D3954(v65, v94, &qword_27CE5B6E0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6F0);
  v68 = (v66 + *(v67 + 48));
  *&v103 = v101;
  *(&v103 + 1) = v41;
  v69 = v86;
  *&v104 = v96;
  *(&v104 + 1) = v86;
  v70 = KeyPath;
  *&v105 = KeyPath;
  *(&v105 + 1) = v98;
  v71 = v89;
  *&v106 = v97;
  *(&v106 + 1) = v89;
  v72 = v87;
  v107 = v87;
  v73 = v104;
  *v68 = v103;
  v68[1] = v73;
  v74 = v106;
  v68[2] = v105;
  v68[3] = v74;
  v68[4] = v107;
  sub_21D0D3954(v64, v66 + *(v67 + 64), &qword_27CE5B6D8);
  sub_21D0D3954(&v103, v108, &qword_27CE5B6F8);
  sub_21D0CF7E0(v62, &qword_27CE5B6D8);
  sub_21D0CF7E0(v100, &qword_27CE5B6E0);
  sub_21D0CF7E0(v64, &qword_27CE5B6D8);
  v108[0] = v101;
  v108[1] = v41;
  v108[2] = v96;
  v108[3] = v69;
  v108[4] = v70;
  v108[5] = v98;
  v108[6] = v97;
  v108[7] = v71;
  v109 = v72;
  sub_21D0CF7E0(v108, &qword_27CE5B6F8);
  return sub_21D0CF7E0(v99, &qword_27CE5B6E0);
}

void sub_21D3B88C4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B728);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v81 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B730);
  MEMORY[0x28223BE20](v81);
  v82 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v89 = (&v81 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B738);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = &v81 - v18;
  v97 = sub_21DBF96CC();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  v22 = REMReminderPriorityLevelForPriority();
  v93 = a1;
  v91 = v7;
  v83 = v10;
  if (v22 < 1)
  {
    v24 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_9;
  }

  switch(v22)
  {
    case 1:
      v23 = 0xE100000000000000;
      v24 = 33;
      goto LABEL_9;
    case 3:
      v23 = 0xE300000000000000;
      v24 = 2171169;
LABEL_9:
      v90 = v8;
      v25 = 32 * ((v23 & 0x300000000000000) != 0);
      if ((v23 & 0x300000000000000) != 0)
      {
        v26 = 0xE100000000000000;
      }

      else
      {
        v26 = 0xE000000000000000;
      }

      v27 = (a3 + v21[14]);
      v28 = v27[1];
      v94 = a2;
      if (v28)
      {
        v29 = *v27;
        v30 = v28;
      }

      else
      {
        v29 = 0;
        v30 = 0xE000000000000000;
      }

      v105 = v24;
      v106 = v23;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v25, v26);

      MEMORY[0x223D42AA0](v29, v30);

      v31 = v105;
      v32 = v106;
      KeyPath = swift_getKeyPath();
      v34 = (a3 + v21[19]);
      v35 = *v34;
      v36 = *(v34 + 8) == 1;
      v95 = v16;
      v87 = KeyPath;
      v98 = v31;
      if (v36)
      {
        v119 = v35;

        v38 = v97;
      }

      else
      {

        sub_21DBFAECC();
        v37 = sub_21DBF984C();
        sub_21DBF846C();

        sub_21DBF96BC();
        swift_getAtKeyPath();

        v38 = v97;
        (*(v96 + 8))(v20, v97);
        v35 = v119;
      }

      v85 = swift_getKeyPath();
      v123 = 0;
      v121 = 0;
      v39 = a3 + v21[20];
      v40 = *v39;
      v41 = *(v39 + 8);
      v86 = v35;
      if (v41 == 1)
      {
        v118 = v40;

        v84 = v40;
      }

      else
      {

        sub_21DBFAECC();
        v42 = sub_21DBF984C();
        sub_21DBF846C();

        sub_21DBF96BC();
        swift_getAtKeyPath();

        (*(v96 + 8))(v20, v38);
        v84 = v118;
      }

      v43 = MEMORY[0x277D84F90];
      v44 = swift_getKeyPath();
      v36 = *(a3 + v21[8]) == 1;
      v97 = v44;
      if (v36)
      {
        v45 = sub_21DBF9ADC();
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B750);
        v47 = v89;
        v48 = (v89 + *(v46 + 36));
        v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B758) + 28);
        v50 = *MEMORY[0x277CE1050];
        v51 = sub_21DBF9B1C();
        (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
        *v48 = swift_getKeyPath();
        *v47 = v45;
        v52 = sub_21DBF9A5C();
        v53 = swift_getKeyPath();
        v54 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B760) + 36));
        *v54 = v53;
        v54[1] = v52;

        if ((v41 & 1) == 0)
        {
          sub_21DBFAECC();
          v55 = sub_21DBF984C();
          sub_21DBF846C();

          sub_21DBF96BC();
          swift_getAtKeyPath();

          (*(v96 + 8))(v20, v38);
          v40 = v105;
        }

        v66 = v95;
        v56 = v92;
        v64 = v32;
        v57 = swift_getKeyPath();
        v58 = v89;
        v59 = (v89 + *(v81 + 36));
        *v59 = v57;
        v59[1] = v40;
        v60 = v82;
        sub_21D0D3954(v58, v82, &qword_27CE5B730);
        v61 = v83;
        *v83 = 0;
        *(v61 + 8) = 1;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B768);
        sub_21D0D3954(v60, v61 + *(v62 + 48), &qword_27CE5B730);
        sub_21D0CF7E0(v58, &qword_27CE5B730);
        sub_21D0CF7E0(v60, &qword_27CE5B730);
        v67 = v56;
        sub_21D0D523C(v61, v56, &qword_27CE5B728);
        v65 = 0;
        v63 = v97;
        v43 = MEMORY[0x277D84F90];
      }

      else
      {
        v63 = v44;
        v64 = v32;
        v65 = 1;
        v66 = v95;
        v67 = v92;
      }

      (*(v90 + 56))(v67, v65, 1, v91);
      v68 = 2;
      if ((v93 & 1) == 0)
      {
        v68 = 3;
      }

      v69 = v68 - (v94 & 1);
      v96 = v69;
      sub_21D0D3954(v67, v66, &qword_27CE5B738);
      *&v99 = v98;
      *(&v99 + 1) = v64;
      LOBYTE(v100) = 0;
      *(&v100 + 1) = *v122;
      DWORD1(v100) = *&v122[3];
      *(&v100 + 1) = v43;
      v70 = v87;
      *&v101 = v87;
      *(&v101 + 1) = v69;
      LOBYTE(v102) = 0;
      *(&v102 + 1) = *v120;
      DWORD1(v102) = *&v120[3];
      v71 = v85;
      v72 = v86;
      *(&v102 + 1) = v85;
      *&v103 = v86;
      v73 = v84;
      *(&v103 + 1) = v63;
      v104 = v84;
      v74 = v103;
      v75 = v88;
      *(v88 + 48) = v102;
      *(v75 + 64) = v74;
      *(v75 + 80) = v73;
      v76 = v101;
      v77 = v100;
      *v75 = v99;
      *(v75 + 16) = v77;
      *(v75 + 32) = v76;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B740);
      sub_21D0D3954(v66, v75 + *(v78 + 48), &qword_27CE5B738);
      sub_21D0D3954(&v99, &v105, &qword_27CE5B748);
      sub_21D0CF7E0(v67, &qword_27CE5B738);
      sub_21D0CF7E0(v66, &qword_27CE5B738);
      v105 = v98;
      v106 = v64;
      v107 = 0;
      *v108 = *v122;
      *&v108[3] = *&v122[3];
      v109 = MEMORY[0x277D84F90];
      v110 = v70;
      v111 = v96;
      v112 = 0;
      *v113 = *v120;
      *&v113[3] = *&v120[3];
      v114 = v71;
      v115 = v72;
      v116 = v97;
      v117 = v73;
      sub_21D0CF7E0(&v105, &qword_27CE5B748);
      return;
    case 2:
      v23 = 0xE200000000000000;
      v24 = 8481;
      goto LABEL_9;
  }

  if (qword_27CE56D68 != -1)
  {
    swift_once();
  }

  v79 = sub_21DBF84BC();
  __swift_project_value_buffer(v79, qword_27CE62E48);
  v80 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v80);
  sub_21DAEAB00("unknown priority level", 22, 2);
  __break(1u);
}

uint64_t sub_21D3B9360(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = sub_21DBF563C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  sub_21D0D3954(a1, v9, &qword_27CE58D68);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE58D68);
    sub_21D0D3954(v35, v6, &qword_27CE58D68);
    if (v17(v6, 1, v10) == 1)
    {
      sub_21D0CF7E0(v6, &qword_27CE58D68);
      return 0;
    }

    else
    {
      (*(v11 + 32))(v13, v6, v10);
      v26 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
      v27 = sub_21D3BA9C4(*(v2 + *(v26 + 68)));
      v28 = sub_21DBF55BC();
      v29 = [v27 stringFromDate_];

      v30 = sub_21DBFA16C();
      v32 = v31;

      v18 = _s15RemindersUICore21TTRLocalizableStringsO13SpotlightViewO3due10dateStringS2S_tFZ_0(v30, v32);

      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v19 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
    v20 = sub_21D3BA9C4(*(v2 + *(v19 + 68)));
    v21 = sub_21DBF55BC();
    v22 = [v20 stringFromDate_];

    v23 = sub_21DBFA16C();
    v25 = v24;

    v18 = _s15RemindersUICore21TTRLocalizableStringsO13SpotlightViewO9completed10dateStringS2S_tFZ_0(v23, v25);

    (*(v11 + 8))(v16, v10);
  }

  return v18;
}

uint64_t sub_21D3B96D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, _OWORD *a6@<X8>)
{
  v108 = a5;
  v109 = a4;
  v114 = a6;
  v9 = type metadata accessor for TTRSpotlightReminderView.ReminderView.LocationInfoView(0);
  v112 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v111 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B450);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v107 - v12;
  v122 = sub_21DBF774C();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v110 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B708);
  MEMORY[0x28223BE20](v15 - 8);
  v131 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v107 - v18;
  v20 = sub_21DBF96CC();
  v118 = *(v20 - 8);
  v119 = v20;
  MEMORY[0x28223BE20](v20);
  v117 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a3;
  v133 = a2;
  v113 = v9;
  if (a2)
  {
    v132 = a1;
    KeyPath = swift_getKeyPath();
    v23 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
    v24 = a3 + *(v23 + 84);
    v25 = *v24;
    if (*(v24 + 8) == 1)
    {
      v147 = *v24;
      sub_21DBF8E0C();
    }

    else
    {
      sub_21DBF8E0C();

      sub_21DBFAECC();
      v28 = sub_21DBF984C();
      a3 = v121;
      sub_21DBF846C();

      v29 = v117;
      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v118 + 8))(v29, v119);
      v25 = v147;
    }

    v26 = swift_getKeyPath();
    LOBYTE(v146[0]) = 0;
    LOBYTE(v140) = 0;
    v128 = 0;
    *&v129 = 0;
    v30 = (a3 + *(v23 + 88));
    v31 = *v30;
    if (*(v30 + 8) == 1)
    {
      *&v134 = *v30;
      v127 = v31;
    }

    else
    {

      sub_21DBFAECC();
      v32 = sub_21DBF984C();
      sub_21DBF846C();

      a3 = v121;
      v33 = v117;
      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v118 + 8))(v33, v119);
      v127 = v134;
    }

    v27 = v122;
    a2 = KeyPath;
    v34 = swift_getKeyPath();
    v125 = 0x3FF0000000000000;
    v126 = v34;
    v123 = 1;
    v124 = MEMORY[0x277D84F90];
  }

  else
  {
    v132 = 0;
    v123 = 0;
    v124 = 0;
    v26 = 0;
    v25 = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v128 = 0;
    *&v129 = 0;
    v27 = v122;
  }

  v35 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  sub_21D0D3954(a3 + v35[12], v13, &qword_27CE5B450);
  v36 = v120;
  v37 = (*(v120 + 48))(v13, 1, v27);
  *(&v129 + 1) = v26;
  v130 = v25;
  if (v37 == 1)
  {
    sub_21D0CF7E0(v13, &qword_27CE5B450);
    v38 = 1;
    v39 = v113;
    v40 = a2;
    v41 = v133;
  }

  else
  {
    v42 = v110;
    (*(v36 + 32))(v110, v13, v27);
    (*(v36 + 16))(v111, v42, v27);
    v43 = a3 + v35[22];
    v44 = *v43;
    v45 = *(v43 + 8);

    if ((v45 & 1) == 0)
    {
      sub_21DBFAECC();
      v46 = sub_21DBF984C();
      a3 = v121;
      sub_21DBF846C();

      v47 = v117;
      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v118 + 8))(v47, v119);
      v44 = v147;
    }

    v48 = a3 + v35[21];
    v49 = *v48;
    v50 = *(v48 + 8);

    v40 = a2;
    v41 = v133;
    if ((v50 & 1) == 0)
    {
      sub_21DBFAECC();
      v51 = sub_21DBF984C();
      sub_21DBF846C();

      v52 = v117;
      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v118 + 8))(v52, v119);
      v49 = v147;
    }

    (*(v120 + 8))(v110, v122);
    v39 = v113;
    v53 = v111;
    *&v111[*(v113 + 20)] = v44;
    *(v53 + *(v39 + 24)) = v49;
    *(v53 + *(v39 + 28)) = v109 & 1;
    sub_21D3CDBF4(v53, v19, type metadata accessor for TTRSpotlightReminderView.ReminderView.LocationInfoView);
    v38 = 0;
    a3 = v121;
  }

  (*(v112 + 56))(v19, v38, 1, v39);
  v54 = *(a3 + v35[11]);
  v115 = v40;
  v116 = v19;
  if (v54 && *(v54 + 16))
  {
    v55 = v41;
    v122 = sub_21D3BA40C(v109 & 1, v108 & 1);
    v120 = v56;
    v57 = *(v54 + 16);
    v58 = MEMORY[0x277D84F90];
    if (v57)
    {
      *&v134 = MEMORY[0x277D84F90];
      sub_21D18E678(0, v57, 0);
      v58 = v134;
      v59 = (v54 + 40);
      do
      {
        v60 = *(v59 - 1);
        v61 = *v59;
        sub_21DBF8E0C();
        v147 = sub_21DBFA23C();
        v148 = v62;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v60, v61);

        v63 = v147;
        v64 = v148;
        *&v134 = v58;
        v66 = *(v58 + 16);
        v65 = *(v58 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_21D18E678((v65 > 1), v66 + 1, 1);
          v58 = v134;
        }

        *(v58 + 16) = v66 + 1;
        v67 = v58 + 16 * v66;
        *(v67 + 32) = v63;
        *(v67 + 40) = v64;
        v59 += 2;
        --v57;
      }

      while (v57);
      v41 = v133;
      v40 = v115;
      a3 = v121;
    }

    else
    {
      v41 = v55;
    }

    v147 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v72 = sub_21DBFA07C();
    v74 = v73;

    v147 = v122;
    v148 = v120;
    MEMORY[0x223D42AA0](v72, v74);

    v75 = v147;
    v76 = v148;
    v77 = swift_getKeyPath();
    v78 = a3 + v35[21];
    v79 = *v78;
    LODWORD(v78) = *(v78 + 8);
    v113 = v77;
    v120 = v76;
    v122 = v75;
    if (v78 == 1)
    {
      v147 = v79;
    }

    else
    {

      sub_21DBFAECC();
      v80 = sub_21DBF984C();
      a3 = v121;
      sub_21DBF846C();

      v81 = v117;
      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v118 + 8))(v81, v119);
      v79 = v147;
    }

    v82 = swift_getKeyPath();
    LOBYTE(v146[0]) = 0;
    LOBYTE(v140) = 0;
    v83 = (a3 + v35[22]);
    v84 = *v83;
    LODWORD(v83) = *(v83 + 8);
    v110 = 0;
    v121 = v82;
    v68 = v40;
    v85 = v79;
    if (v83 == 1)
    {
      *&v134 = v84;
      v86 = v84;
    }

    else
    {

      sub_21DBFAECC();
      v87 = sub_21DBF984C();
      sub_21DBF846C();

      v88 = v117;
      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v118 + 8))(v88, v119);
      v86 = v134;
    }

    v19 = v116;
    v111 = 0;
    v112 = v85;
    v118 = v86;
    v119 = swift_getKeyPath();
    v117 = MEMORY[0x277D84F90];
    v69 = v120;
    v70 = 1;
    v71 = v110;
  }

  else
  {
    v68 = v40;
    v121 = 0;
    v122 = 0;
    v69 = 0;
    v117 = 0;
    v118 = 0;
    v112 = 0;
    v113 = 0;
    v70 = 0;
    v119 = 0;
    v111 = 0;
    v71 = 0;
  }

  v120 = v69;
  v110 = v70;
  v89 = v131;
  sub_21D0D3954(v19, v131, &qword_27CE5B708);
  *&v134 = v132;
  *(&v134 + 1) = v41;
  *&v135 = v128;
  *(&v135 + 1) = v124;
  *&v136 = v68;
  *(&v136 + 1) = v123;
  v137 = v129;
  *&v138 = v130;
  *(&v138 + 1) = v126;
  *&v139 = v127;
  *(&v139 + 1) = v125;
  v90 = v129;
  v91 = v114;
  v114[2] = v136;
  v91[3] = v90;
  v92 = v139;
  v91[4] = v138;
  v91[5] = v92;
  v93 = v135;
  *v91 = v134;
  v91[1] = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B710);
  sub_21D0D3954(v89, v91 + *(v94 + 48), &qword_27CE5B708);
  v95 = v91 + *(v94 + 64);
  v96 = v121;
  *&v140 = v122;
  *(&v140 + 1) = v69;
  v97 = v71;
  v98 = v117;
  v99 = v118;
  *&v141 = v71;
  *(&v141 + 1) = v117;
  v100 = v112;
  v101 = v113;
  *&v142 = v113;
  *(&v142 + 1) = v70;
  v102 = v111;
  *&v143 = v111;
  *(&v143 + 1) = v121;
  v103 = v119;
  *&v144 = v112;
  *(&v144 + 1) = v119;
  v145 = v118;
  v104 = v143;
  *(v95 + 2) = v142;
  *(v95 + 3) = v104;
  *(v95 + 10) = v99;
  v105 = v141;
  *v95 = v140;
  *(v95 + 1) = v105;
  *(v95 + 4) = v144;
  sub_21D0D3954(&v134, &v147, &qword_27CE5B718);
  sub_21D0D3954(&v140, &v147, &qword_27CE5B720);
  sub_21D0CF7E0(v116, &qword_27CE5B708);
  v146[0] = v122;
  v146[1] = v120;
  v146[2] = v97;
  v146[3] = v98;
  v146[4] = v101;
  v146[5] = v110;
  v146[6] = v102;
  v146[7] = v96;
  v146[8] = v100;
  v146[9] = v103;
  v146[10] = v99;
  sub_21D0CF7E0(v146, &qword_27CE5B720);
  sub_21D0CF7E0(v131, &qword_27CE5B708);
  v147 = v132;
  v148 = v133;
  v149 = v128;
  v150 = v124;
  v151 = v115;
  v152 = v123;
  v153 = v129;
  v154 = v130;
  v155 = v126;
  v156 = v127;
  v157 = v125;
  return sub_21D0CF7E0(&v147, &qword_27CE5B718);
}

uint64_t sub_21D3BA40C(char a1, char a2)
{
  if (a2)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF516C();
LABEL_9:
    MEMORY[0x223D42AA0](32, 0xE100000000000000);
    return v4;
  }

  if (a1)
  {
    v4 = 32;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF516C();
    MEMORY[0x223D42AA0](v2);

    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_21D3BA58C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF96CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21D0D3954(v2, &v14 - v9, &qword_27CE5B6C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21DBF958C();
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

uint64_t sub_21D3BA78C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21DBF65CC();
  v27 = *(v4 - 8);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 badgeEmblem];
  if (!v8)
  {
    *a2 = sub_21DBFA16C();
    a2[1] = v17;
    v16 = MEMORY[0x277D45070];
    goto LABEL_5;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithRawValue_];
  v11 = [v10 emoji];
  if (v11)
  {
    v12 = v11;
    v13 = sub_21DBFA16C();
    v15 = v14;

    *a2 = v13;
    a2[1] = v15;
    v16 = MEMORY[0x277D45068];
LABEL_5:
    v18 = *v16;
    v19 = *(v27 + 104);

    return v19(a2, v18, v4);
  }

  v21 = [v10 emblem];
  if (!v21)
  {
    v21 = *MEMORY[0x277D44960];
  }

  v22 = v21;
  v23 = sub_21DBFA16C();
  v25 = v24;

  *v7 = v23;
  v7[1] = v25;
  (*(v27 + 104))(v7, *MEMORY[0x277D45070], v4);
  return (*(v27 + 32))(a2, v7, v4);
}

id sub_21D3BA9C4(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v2 = sub_21DBFB61C();
  }

  v3 = a1;
  v4 = [v2 integerValue];

  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v5 setDoesRelativeDateFormatting_];
  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  return v5;
}

uint64_t sub_21D3BAA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v6 = sub_21DBF54CC();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D3BAC04, 0, 0);
}

uint64_t sub_21D3BAC04()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  *(v0 + 152) = v1;
  v2 = objc_opt_self();
  v3 = sub_21DBF566C();
  v4 = [v2 objectIDWithUUID_];
  *(v0 + 160) = v4;

  *(v0 + 48) = 0;
  v5 = v0 + 48;
  v6 = [v1 fetchReminderWithObjectID:v4 error:v0 + 48];
  *(v0 + 168) = v6;
  v7 = *(v0 + 48);
  if (!v6)
  {
    v19 = v7;
    v20 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_41;
  }

  v8 = v6;
  v9 = v7;
  v74 = v8;
  v10 = [v8 attachmentContext];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 imageAttachments];

    sub_21D0D8CF0(0, &qword_280D0C290);
    v13 = sub_21DBFA5EC();

    v16 = v13 >> 62;
    if (v13 >> 62)
    {
      v69 = sub_21DBFBD7C();
      if (sub_21DBFBD7C() < 0)
      {
        __break(1u);
      }

      if (v69 >= 2)
      {
        v70 = 2;
      }

      else
      {
        v70 = v69;
      }

      if (v69 >= 0)
      {
        v18 = v70;
      }

      else
      {
        v18 = 2;
      }

      v17 = sub_21DBFBD7C();
      v5 = v0 + 48;
      if (v17 >= v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= 2)
      {
        v18 = 2;
      }

      else
      {
        v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17 >= v18)
      {
LABEL_8:
        if ((v13 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          if (v18)
          {
            sub_21DBFBF6C();
            if (v18 != 1)
            {
              sub_21DBFBF6C();
              if (v18 != 2)
              {
                sub_21DBFBF6C();
              }
            }
          }
        }

        else
        {
          sub_21DBF8E0C();
        }

        if (v16)
        {
          v27 = sub_21DBFC3BC();
          v23 = v28;
          v16 = v29;
          v26 = v30;

          v21 = v27;
        }

        else
        {
          v21 = v13 & 0xFFFFFFFFFFFFFF8;
          v23 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
          v26 = 2 * v18;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v17, v14, v15);
  }

  v21 = sub_21D3BB774(MEMORY[0x277D84F90]);
  v23 = v22;
  v16 = v24;
  v26 = v25;
LABEL_19:
  v71 = v4;
  v72 = v5;
  v73 = v1;
  *(v0 + 176) = v21;
  v31 = v26 >> 1;
  v32 = (v26 >> 1) - v16;
  if (v26 >> 1 != v16)
  {
    v43 = *(v0 + 136);
    v76 = (v43 + 48);
    v77 = (v43 + 56);
    v75 = v43;
    v78 = (v43 + 32);
    if (v16 > v31)
    {
      v31 = v16;
    }

    v4 = (v23 + 8 * v16);
    v79 = MEMORY[0x277D84F90];
    v20 = (v31 - v16);
    v1 = &qword_27CE5EA20;
    while (v20)
    {
      v44 = v1;
      v45 = *v4;
      v46 = [v45 fileURL];
      if (v46)
      {
        v47 = v46;
        sub_21DBF546C();

        v48 = 0;
      }

      else
      {
        v48 = 1;
      }

      v49 = *(v0 + 120);
      v50 = *(v0 + 128);
      v51 = *(v0 + 112);

      (*v77)(v51, v48, 1, v50);
      v52 = v51;
      v1 = v44;
      sub_21D0D523C(v52, v49, v44);
      if ((*v76)(v49, 1, v50) == 1)
      {
        sub_21D0CF7E0(*(v0 + 120), v44);
      }

      else
      {
        v53 = *v78;
        (*v78)(*(v0 + 144), *(v0 + 120), *(v0 + 128));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_21D212DAC(0, *(v79 + 2) + 1, 1, v79);
        }

        v55 = *(v79 + 2);
        v54 = *(v79 + 3);
        if (v55 >= v54 >> 1)
        {
          v79 = sub_21D212DAC(v54 > 1, v55 + 1, 1, v79);
        }

        v56 = *(v0 + 144);
        v57 = *(v0 + 128);
        *(v79 + 2) = v55 + 1;
        v53(&v79[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55], v56, v57);
      }

      ++v4;
      --v20;
      if (!--v32)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  v79 = MEMORY[0x277D84F90];
LABEL_21:
  v33 = *(v0 + 88);
  v34 = type metadata accessor for TTRSpotlightReminderView.ReminderView(0);
  *(v0 + 184) = v34;
  *(v0 + 16) = *(v33 + *(v34 + 24));
  *(v0 + 56) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6B8);
  sub_21DBF9B6C();
  v35 = [v74 list];
  v36 = [v35 objectID];
  *(v0 + 192) = v36;

  *(v0 + 64) = 0;
  v1 = v73;
  v37 = [v73 fetchListWithObjectID:v36 error:v72 + 16];
  *(v0 + 200) = v37;
  v38 = *(v0 + 64);
  if (v37)
  {
    sub_21DBFA84C();
    v39 = v38;
    *(v0 + 208) = sub_21DBFA83C();
    v40 = sub_21DBFA7CC();
    v42 = v41;
    v17 = sub_21D3BB434;
    v14 = v40;
    v15 = v42;

    return MEMORY[0x2822009F8](v17, v14, v15);
  }

  v58 = v38;
  v20 = sub_21DBF52DC();

  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v71;
LABEL_41:
  if (qword_27CE566B0 != -1)
  {
LABEL_49:
    swift_once();
  }

  v59 = sub_21DBF84BC();
  __swift_project_value_buffer(v59, qword_27CE5B3F0);
  v60 = v20;
  v61 = sub_21DBF84AC();
  v62 = sub_21DBFAEBC();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    v65 = v20;
    v66 = _swift_stdlib_bridgeErrorToNSError();
    *(v63 + 4) = v66;
    *v64 = v66;
    _os_log_impl(&dword_21D0C9000, v61, v62, "TTRSpotligthReminderView onAppear error: %@", v63, 0xCu);
    sub_21D0CF7E0(v64, &unk_27CE60070);
    MEMORY[0x223D46520](v64, -1, -1);
    MEMORY[0x223D46520](v63, -1, -1);
  }

  else
  {
  }

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_21D3BB434()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 104);

  sub_21D3BA78C(v1, v2);

  return MEMORY[0x2822009F8](sub_21D3BB4E4, 0, 0);
}

uint64_t sub_21D3BB4E4()
{
  v1 = v0[25];
  v3 = v0[12];
  v2 = v0[13];
  v4 = sub_21DBF65CC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_21D0D3954(v2, v3, &qword_27CE5B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B5F0);
  sub_21DBF9B6C();
  sub_21D0CF7E0(v2, &qword_27CE5B4C0);
  v5 = [v1 color];
  if (v5)
  {
    v6 = v5;
    v7 = sub_21DBFB68C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];
  v11 = v0[21];
  v19 = v0[20];
  v20 = v0[19];
  v12 = v0[11];
  sub_21DBF61FC();
  swift_allocObject();
  v13 = v7;
  v14 = sub_21DBF61EC();
  v15 = (v12 + *(v10 + 20));
  v16 = v15[1];
  v0[4] = *v15;
  v0[5] = v16;
  v0[9] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B6A0);
  sub_21DBF9B6C();

  swift_unknownObjectRelease();

  v17 = v0[1];

  return v17();
}

uint64_t sub_21D3BB774(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_21DBFBD7C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21D9D9774(v3, 0);
  sub_21D565CBC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D3BB81C@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA20);
  MEMORY[0x28223BE20](v2);
  v64 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v51 - v5);
  v7 = sub_21DBF976C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TTRSpotlightReminderView.ReminderView.LocationInfoView(0);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (*(v1 + v8[7]) == 1)
  {
    v62 = v6;
    v63 = v2;
    sub_21DBF975C();
    sub_21DBF974C();
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    sub_21DBF973C();

    sub_21DBF974C();
    sub_21DBF978C();
    v13 = sub_21DBF995C();
    v15 = v14;
    v17 = v16;
    v18 = sub_21DBF993C();
    v20 = v19;
    v22 = v21;
    sub_21D3CE120(v13, v15, v17 & 1);

    v9 = sub_21DBF994C();
    v10 = v23;
    LOBYTE(v13) = v24;
    v12 = v25;
    sub_21D3CE120(v18, v20, v22 & 1);

    v11 = v13 & 1;
    sub_21D3D0EA8(v9, v10, v13 & 1);
    sub_21DBF8E0C();
    v2 = v63;
    v6 = v62;
  }

  v57 = v12;
  v58 = v11;
  v59 = v10;
  v60 = v9;
  v26 = sub_21DBF9ADC();
  v27 = *(v1 + v8[6]);
  KeyPath = swift_getKeyPath();
  v29 = *(v1 + v8[5]);
  v30 = swift_getKeyPath();
  v31 = (v6 + *(v2 + 36));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B758) + 28);
  v33 = *MEMORY[0x277CE1050];
  v34 = sub_21DBF9B1C();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  *v6 = v26;
  v6[1] = KeyPath;
  v62 = v27;
  v6[2] = v27;
  v6[3] = v30;
  v56 = v29;
  v6[4] = v29;

  v35 = sub_21D3BBF3C(v1);
  v55 = v35;
  v53 = v36;
  v37 = swift_getKeyPath();
  v54 = v37;
  v63 = swift_getKeyPath();
  LOBYTE(v73[0]) = 0;
  LOBYTE(v67) = 0;
  v52 = swift_getKeyPath();
  v38 = v64;
  sub_21D0D3954(v6, v64, &qword_27CE5BA20);
  v39 = v61;
  v40 = v60;
  v41 = v59;
  *v61 = v60;
  v39[1] = v41;
  LOBYTE(KeyPath) = v58;
  v42 = v57;
  v39[2] = v58;
  v39[3] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA28);
  sub_21D0D3954(v38, v39 + *(v43 + 48), &qword_27CE5BA20);
  v44 = v39 + *(v43 + 64);
  *&v67 = v35;
  v45 = v53;
  *(&v67 + 1) = v53;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v66;
  DWORD1(v68) = *&v66[3];
  *(&v68 + 1) = MEMORY[0x277D84F90];
  *&v69 = v37;
  *(&v69 + 1) = 1;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = *v65;
  DWORD1(v70) = *&v65[3];
  *(&v70 + 1) = v63;
  *&v71 = v62;
  v46 = v52;
  v47 = v56;
  *(&v71 + 1) = v52;
  v72 = v56;

  sub_21D3D0E64(v40, v41, KeyPath, v42);
  sub_21D0D3954(&v67, v73, &qword_27CE5B748);
  sub_21D3D0EB8(v40, v41, KeyPath, v42);
  v48 = v70;
  *(v44 + 2) = v69;
  *(v44 + 3) = v48;
  *(v44 + 4) = v71;
  *(v44 + 10) = v72;
  v49 = v68;
  *v44 = v67;
  *(v44 + 1) = v49;
  sub_21D0CF7E0(v6, &qword_27CE5BA20);
  v73[0] = v55;
  v73[1] = v45;
  v74 = 0;
  *v75 = *v66;
  *&v75[3] = *&v66[3];
  v76 = MEMORY[0x277D84F90];
  v77 = v54;
  v78 = 1;
  v79 = 0;
  *v80 = *v65;
  *&v80[3] = *&v65[3];
  v81 = v63;
  v82 = v62;
  v83 = v46;
  v84 = v47;
  sub_21D0CF7E0(v73, &qword_27CE5B748);
  sub_21D0CF7E0(v64, &qword_27CE5BA20);
  return sub_21D3D0EB8(v40, v41, KeyPath, v42);
}

uint64_t sub_21D3BBF3C(uint64_t a1)
{
  v2 = sub_21DBF804C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF795C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF774C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D455E8])
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA30);
    (*(v7 + 32))(v9, &v14[*(v18 + 48)], v6);
    v19 = sub_21DBF794C();
    REMAlarmProximity.localizedLabelFormatString.getter(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21DC08D00;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_21D17A884();
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    v21 = sub_21DBFA17C();

    (*(v7 + 8))(v9, v6);
    return v21;
  }

  if (v15 == *MEMORY[0x277D455E0])
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v5, v14, v2);
    v22 = sub_21DBF794C();
    REMAlarmVehicleTriggerEvent.localizedDescription.getter(v22);
    v21 = v23;
    (*(v3 + 8))(v5, v2);
    return v21;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D3BC354(void (*a1)(void))
{
  a1();
  sub_21DBF96DC();
  return v2;
}

uint64_t sub_21D3BC39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();

  return sub_21DBF96EC();
}

double sub_21D3BC420(void (*a1)(void))
{
  a1();
  sub_21DBF96DC();
  return v2;
}

uint64_t sub_21D3BC484()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRSpotlightListView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v34 - v4;
  v5 = sub_21DBF65CC();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4D8);
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v42 = type metadata accessor for TTRSpotlightListView(0);
  MEMORY[0x28223BE20](v42);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *v15 = KeyPath;
  v16 = v15;
  v15[8] = 0;
  v17 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21D3C59CC();
  v18 = v40;
  sub_21DBFC87C();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v19 = v38;
    v40 = v7;
    sub_21DBF56BC();
    v46 = 2;
    sub_21D3C5544(&qword_27CE65160, MEMORY[0x277CC95F0]);
    sub_21DBFC49C();
    v21 = v16;
    sub_21D0D523C(v10, &v16[v42[7]], &qword_27CE58370);
    sub_21DBF61FC();
    v45 = 0;
    sub_21D3C5544(&qword_27CE5B4E8, MEMORY[0x277D44EB0]);
    sub_21DBFC49C();
    v22 = v13;
    v34 = v11;
    v23 = v43;
    if (v43)
    {
      v24 = v5;
    }

    else
    {
      v24 = v5;
      if (qword_27CE566C0 != -1)
      {
        swift_once();
      }
    }

    *(v21 + v42[6]) = v23;
    v44 = 1;
    sub_21D3C5544(&qword_27CE5B4F0, MEMORY[0x277D45078]);
    v25 = v37;
    sub_21DBFC49C();
    v26 = v35;
    v27 = *(v35 + 48);
    if (v27(v25, 1, v24) == 1)
    {
      if (qword_27CE566B8 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v24, qword_27CE5B408);
      v29 = v40;
      (*(v26 + 16))(v40, v28, v24);
      (*(v19 + 8))(v22, v34);
      v30 = v37;
      v31 = v27(v37, 1, v24);
      v32 = v29;
      v33 = v36;
      if (v31 != 1)
      {
        sub_21D0CF7E0(v30, &qword_27CE5B4C0);
      }
    }

    else
    {
      (*(v19 + 8))(v22, v34);
      v32 = v40;
      (*(v26 + 32))(v40, v25, v24);
      v33 = v36;
    }

    (*(v26 + 32))(v21 + v42[5], v32, v24);
    sub_21D3C5A20(v21, v33, type metadata accessor for TTRSpotlightListView);
    __swift_destroy_boxed_opaque_existential_0(v41);
    return sub_21D3C5A88(v21, type metadata accessor for TTRSpotlightListView);
  }
}

uint64_t TTRSpotlightListView.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D3C59CC();
  sub_21DBFC88C();
  v9 = type metadata accessor for TTRSpotlightListView(0);
  v13 = 1;
  sub_21DBF65CC();
  sub_21D3C5544(&qword_27CE5B500, MEMORY[0x277D45078]);
  sub_21DBFC56C();
  if (!v2)
  {
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 0;
    sub_21DBF61FC();
    sub_21D3C5544(&qword_27CE5B508, MEMORY[0x277D44EB0]);
    sub_21DBFC56C();
    v11[14] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    sub_21D3C57D0();
    sub_21DBFC56C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TTRSpotlightListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_21DBF65CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRSpotlightListView(0);
  (*(v7 + 16))(v9, v1 + v10[5], v6);
  v11 = v10[7];
  v12 = *(v1 + v10[6]);
  sub_21D0D3954(v1 + v11, v5, &qword_27CE58370);

  v13 = sub_21D3BFC64();
  v14 = [v13 displayName];

  if (v14)
  {
    v15 = sub_21DBFA16C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v30 = 0;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0);
  sub_21DBF9B4C();
  v18 = v33;
  *a1 = v32;
  *(a1 + 16) = v18;
  v30 = 0;
  LOBYTE(v31) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B510);
  sub_21DBF9B4C();
  v19 = BYTE8(v32);
  v20 = v33;
  *(a1 + 24) = v32;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  v21 = type metadata accessor for TTRSpotlightListView.ListView(0);
  (*(v7 + 32))(a1 + v21[6], v9, v6);
  *(a1 + v21[7]) = v12;
  sub_21D0D523C(v5, a1 + v21[8], &qword_27CE58370);
  v22 = (a1 + v21[9]);
  *v22 = v15;
  v22[1] = v17;
  v23 = a1 + v21[10];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a1 + v21[11];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a1 + v21[12];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a1 + v21[13];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a1 + v21[14];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = a1 + v21[15];
  result = swift_getKeyPath();
  *v28 = result;
  *(v28 + 8) = 0;
  return result;
}

uint64_t sub_21D3BD20C()
{
  v1 = 0x7079546567646162;
  if (*v0 != 1)
  {
    v1 = 0x44497473696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_21D3BD264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21D3CD920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21D3BD298(uint64_t a1)
{
  v2 = sub_21D3C59CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21D3BD2D4(uint64_t a1)
{
  v2 = sub_21D3C59CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21D3BD310@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF96CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF972C();
  v9 = type metadata accessor for TTRSpotlightListView.ListView(0);
  v10 = v1 + *(v9 + 40);
  v11 = *v10;
  v12 = v10[8];
  v13 = *v10;
  if ((v12 & 1) == 0)
  {

    sub_21DBFAECC();
    v14 = sub_21DBF984C();
    v49 = a1;
    v15 = v8;
    v16 = v7;
    v17 = v12;
    v18 = v2;
    v19 = v9;
    v20 = v5;
    v21 = v4;
    v22 = v14;
    sub_21DBF846C();

    v4 = v21;
    v5 = v20;
    v9 = v19;
    v2 = v18;
    v12 = v17;
    v7 = v16;
    v8 = v15;
    a1 = v49;
    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v11, 0);
    (*(v5 + 8))(v7, v4);
    v13 = v51;
  }

  *a1 = v8;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B770);
  sub_21D3BD7C0(v2, a1 + *(v23 + 44));
  sub_21DBF9C7C();
  sub_21DBF95CC();
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B778) + 36));
  v25 = v56;
  v24[4] = v55;
  v24[5] = v25;
  v24[6] = v57;
  v26 = v52;
  *v24 = v51;
  v24[1] = v26;
  v27 = v54;
  v24[2] = v53;
  v24[3] = v27;
  if (!v12)
  {

    sub_21DBFAECC();
    v28 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v11, 0);
    (*(v5 + 8))(v7, v4);
  }

  v29 = sub_21DBF985C();
  sub_21DBF94BC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B780) + 36);
  *v38 = v29;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  *(v38 + 24) = v35;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  v39 = v2 + *(v9 + 60);
  v40 = *v39;
  if (v39[8] == 1)
  {
    v41 = *v39;
  }

  else
  {

    sub_21DBFAECC();
    v42 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v40, 0);
    (*(v5 + 8))(v7, v4);
    v41 = v50;
  }

  v43 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B788) + 36));
  v44 = *(sub_21DBF95BC() + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_21DBF979C();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  *v43 = v41;
  *(v43 + 1) = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B678);
  *&v43[*(result + 36)] = 256;
  return result;
}

uint64_t sub_21D3BD7C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListBadge(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for TTRSpotlightListView.ListView(0);
  v12 = *(v11 + 24);
  v13 = sub_21DBF65CC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, a1 + v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  *&v10[*(v5 + 28)] = *(a1 + *(v11 + 28));

  v15 = sub_21DBF97CC();
  v19 = 1;
  sub_21D3BDA94(a1, v23);
  memcpy(v20, v23, sizeof(v20));
  memcpy(v21, v23, sizeof(v21));
  sub_21D0D3954(v20, v22, &qword_27CE5B790);
  sub_21D0CF7E0(v21, &qword_27CE5B790);
  memcpy(&v18[7], v20, 0x148uLL);
  LOBYTE(v13) = v19;
  sub_21D3C5A20(v10, v7, type metadata accessor for ListBadge);
  sub_21D3C5A20(v7, a2, type metadata accessor for ListBadge);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B798) + 48);
  v22[0] = v15;
  v22[1] = 0;
  LOBYTE(v22[2]) = v13;
  memcpy(&v22[2] + 1, v18, 0x14FuLL);
  memcpy((a2 + v16), v22, 0x160uLL);
  sub_21D0D3954(v22, v23, &qword_27CE5B7A0);
  sub_21D3C5A88(v10, type metadata accessor for ListBadge);
  v23[0] = v15;
  v23[1] = 0;
  LOBYTE(v23[2]) = v13;
  memcpy(&v23[2] + 1, v18, 0x14FuLL);
  sub_21D0CF7E0(v23, &qword_27CE5B7A0);
  return sub_21D3C5A88(v7, type metadata accessor for ListBadge);
}

uint64_t sub_21D3BDA94@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for TTRSpotlightListView.ListView(0);
  v26 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v27 = v4;
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF96CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + v3[9]);
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    v34 = v10;
    v35 = v11;
  }

  else
  {
    v34 = 0xE000000000000000;
    v35 = 0;
  }

  KeyPath = swift_getKeyPath();
  v12 = a1 + v3[11];
  v13 = *v12;
  LODWORD(v12) = v12[8];
  v30 = v5;
  v25 = v6;
  if (v12 == 1)
  {
    v83 = v13;
    sub_21DBF8E0C();
    v32 = v13;
  }

  else
  {
    sub_21DBF8E0C();

    sub_21DBFAECC();
    v14 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v32 = v83;
  }

  v31 = swift_getKeyPath();
  v87 = 0;
  v85 = 0;
  v15 = a1 + v3[12];
  v16 = *v15;
  if (v15[8] == 1)
  {
    v82 = *v15;
  }

  else
  {

    sub_21DBFAECC();
    v17 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    (*(v25 + 8))(v8, v30);
    v16 = v82;
  }

  v30 = swift_getKeyPath();
  v25 = sub_21DBF972C();
  LOBYTE(v36[0]) = 0;
  sub_21D3BE1FC(a1, &v75);
  v58 = *&v76[112];
  v59 = *&v76[128];
  v60 = *&v76[144];
  v54 = *&v76[48];
  v55 = *&v76[64];
  v56 = *&v76[80];
  v57 = *&v76[96];
  v50 = v75;
  v51 = *v76;
  v52 = *&v76[16];
  v53 = *&v76[32];
  v62[8] = *&v76[112];
  v62[9] = *&v76[128];
  v62[10] = *&v76[144];
  v62[4] = *&v76[48];
  v62[5] = *&v76[64];
  v62[6] = *&v76[80];
  v62[7] = *&v76[96];
  v62[0] = v75;
  v62[1] = *v76;
  v61 = v76[160];
  v63 = v76[160];
  v62[2] = *&v76[16];
  v62[3] = *&v76[32];
  sub_21D0D3954(&v50, &v70, &qword_27CE5B7A8);
  sub_21D0CF7E0(v62, &qword_27CE5B7A8);
  *&v49[135] = v58;
  *&v49[151] = v59;
  *&v49[167] = v60;
  *&v49[71] = v54;
  *&v49[87] = v55;
  *&v49[103] = v56;
  *&v49[119] = v57;
  *&v49[7] = v50;
  *&v49[23] = v51;
  *&v49[39] = v52;
  v49[183] = v61;
  *&v49[55] = v53;
  v18 = v36[0];
  v19 = v28;
  sub_21D3C5A20(a1, v28, type metadata accessor for TTRSpotlightListView.ListView);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_21D3CDBF4(v19, v21 + v20, type metadata accessor for TTRSpotlightListView.ListView);
  *&v64 = v35;
  *(&v64 + 1) = v34;
  LOBYTE(v65) = 0;
  *(&v65 + 1) = *v86;
  DWORD1(v65) = *&v86[3];
  *(&v65 + 1) = MEMORY[0x277D84F90];
  *&v66 = KeyPath;
  *(&v66 + 1) = 2;
  LOBYTE(v67) = 0;
  *(&v67 + 1) = *v84;
  DWORD1(v67) = *&v84[3];
  *(&v67 + 1) = v31;
  *&v68 = v32;
  *(&v68 + 1) = v30;
  v69 = v16;
  *&v48[80] = v16;
  *&v48[48] = v67;
  *&v48[64] = v68;
  *v48 = v64;
  *&v48[16] = v65;
  *&v48[32] = v66;
  v22 = v25;
  v70 = v25;
  LOBYTE(v71[0]) = v18;
  *(&v71[3] + 1) = *&v49[48];
  *(&v71[2] + 1) = *&v49[32];
  *(&v71[1] + 1) = *&v49[16];
  *(v71 + 1) = *v49;
  *(&v71[7] + 1) = *&v49[112];
  *(&v71[6] + 1) = *&v49[96];
  *(&v71[5] + 1) = *&v49[80];
  *(&v71[4] + 1) = *&v49[64];
  *(&v71[11] + 1) = *&v49[176];
  *(&v71[10] + 1) = *&v49[160];
  *(&v71[9] + 1) = *&v49[144];
  *(&v71[8] + 1) = *&v49[128];
  *&v72 = sub_21D3CDDF8;
  *(&v72 + 1) = v21;
  v74 = 0;
  v73 = 0;
  *&v48[264] = v71[10];
  *&v48[280] = v71[11];
  *&v48[296] = v72;
  *&v48[312] = 0u;
  *&v48[200] = v71[6];
  *&v48[216] = v71[7];
  *&v48[232] = v71[8];
  *&v48[248] = v71[9];
  *&v48[136] = v71[2];
  *&v48[152] = v71[3];
  *&v48[168] = v71[4];
  *&v48[184] = v71[5];
  *&v48[88] = v25;
  *&v48[104] = v71[0];
  *&v48[120] = v71[1];
  memcpy(v29, v48, 0x148uLL);
  *&v76[129] = *&v49[128];
  *&v76[145] = *&v49[144];
  *&v76[161] = *&v49[160];
  *&v76[65] = *&v49[64];
  *&v76[81] = *&v49[80];
  *&v76[97] = *&v49[96];
  *&v76[113] = *&v49[112];
  *&v76[1] = *v49;
  *&v76[17] = *&v49[16];
  *&v76[33] = *&v49[32];
  v75 = v22;
  v76[0] = v18;
  v77 = *&v49[176];
  *&v76[49] = *&v49[48];
  v78 = sub_21D3CDDF8;
  v79 = v21;
  v81 = 0;
  v80 = 0;
  sub_21D0D3954(&v64, v36, &qword_27CE5B748);
  sub_21D0D3954(&v70, v36, &qword_27CE5B7B0);
  sub_21D0CF7E0(&v75, &qword_27CE5B7B0);
  v36[0] = v35;
  v36[1] = v34;
  v37 = 0;
  *v38 = *v86;
  *&v38[3] = *&v86[3];
  v39 = MEMORY[0x277D84F90];
  v40 = KeyPath;
  v41 = 2;
  v42 = 0;
  *v43 = *v84;
  *&v43[3] = *&v84[3];
  v44 = v31;
  v45 = v32;
  v46 = v30;
  v47 = v16;
  return sub_21D0CF7E0(v36, &qword_27CE5B748);
}

uint64_t sub_21D3BE1FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_21DBF96CC();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 2);
  v110 = *a1;
  *&v111 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B7C0);
  sub_21DBF9B5C();
  if (*(&v103 + 1))
  {
    v110 = v103;
    MEMORY[0x223D42AA0](32, 0xE100000000000000);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF516C();
    MEMORY[0x223D42AA0](v7);

    MEMORY[0x223D42AA0](32, 0xE100000000000000);
    v77 = *(&v110 + 1);
    v78 = v110;
    KeyPath = swift_getKeyPath();
    v8 = type metadata accessor for TTRSpotlightListView.ListView(0);
    v9 = (a1 + *(v8 + 52));
    v10 = *v9;
    if (*(v9 + 8) == 1)
    {
      *&v110 = *v9;
    }

    else
    {

      sub_21DBFAECC();
      v12 = sub_21DBF984C();
      sub_21DBF846C();

      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v79 + 8))(v5, v80);
      v10 = v110;
    }

    v13 = swift_getKeyPath();
    LOBYTE(v98) = 0;
    LOBYTE(v85[0]) = 0;
    v73 = 0;
    v74 = v13;
    v84 = 0;
    v14 = (a1 + *(v8 + 56));
    v11 = *v14;
    if (*(v14 + 8) == 1)
    {
      *&v103 = *v14;
    }

    else
    {

      sub_21DBFAECC();
      v15 = sub_21DBF984C();
      sub_21DBF846C();

      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v79 + 8))(v5, v80);
      v11 = v103;
    }

    v83 = swift_getKeyPath();
    v81 = 1;
    v82 = MEMORY[0x277D84F90];
  }

  else
  {
    v77 = 0;
    v78 = 0;
    v81 = 0;
    v82 = 0;
    KeyPath = 0;
    v73 = 0;
    v74 = 0;
    v10 = 0;
    v83 = 0;
    v84 = 0;
    v11 = 0;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 5);
  *&v110 = *(a1 + 3);
  BYTE8(v110) = v16;
  *&v111 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B7B8);
  sub_21DBF9B5C();
  v75 = v10;
  v71 = v11;
  if (BYTE8(v103) == 1)
  {
    v18 = type metadata accessor for TTRSpotlightListView.ListView(0);
    v19 = *(a1 + *(v18 + 52) + 8);

    if ((v19 & 1) == 0)
    {
      sub_21DBFAECC();
      v20 = sub_21DBF984C();
      sub_21DBF846C();

      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v79 + 8))(v5, v80);
    }

    v21 = sub_21DBF993C();
    v23 = v22;
    v25 = v24;

    v26 = a1 + *(v18 + 56);
    if (*(v26 + 8) == 1)
    {
      v85[0] = *v26;
    }

    else
    {

      sub_21DBFAECC();
      v37 = sub_21DBF984C();
      sub_21DBF846C();

      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v79 + 8))(v5, v80);
    }

    v38 = sub_21DBF994C();
    v40 = v39;
    v42 = v41;
    v44 = v43;

    sub_21D3CE120(v21, v23, v25 & 1);

    v109 = v42 & 1;
    v108 = 1;
    *&v103 = v38;
    *(&v103 + 1) = v40;
    LOBYTE(v104) = v42 & 1;
    *(&v104 + 1) = v92;
    DWORD1(v104) = *(&v92 + 3);
    *(&v104 + 1) = v44;
    v105 = v98;
    v106 = v99;
    v107[0] = v100;
    *&v107[1] = v101;
    BYTE8(v107[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B748);
    sub_21D3CE130();
    sub_21DBF97FC();
  }

  else
  {
    v27 = v103;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D83B88];
    *(v28 + 16) = xmmword_21DC08D00;
    v30 = MEMORY[0x277D83C10];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v27;
    v70 = sub_21DBFA13C();
    v32 = v31;

    v33 = swift_getKeyPath();
    v34 = type metadata accessor for TTRSpotlightListView.ListView(0);
    v35 = (a1 + *(v34 + 52));
    v36 = *v35;
    if (*(v35 + 8) == 1)
    {
      *&v98 = *v35;
    }

    else
    {

      sub_21DBFAECC();
      v45 = sub_21DBF984C();
      sub_21DBF846C();

      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v79 + 8))(v5, v80);
      v36 = v98;
    }

    v46 = swift_getKeyPath();
    LOBYTE(v92) = 0;
    v109 = 0;
    v47 = (a1 + *(v34 + 56));
    v48 = *v47;
    if (*(v47 + 8) == 1)
    {
      v85[0] = *v47;
    }

    else
    {

      sub_21DBFAECC();
      v49 = sub_21DBF984C();
      sub_21DBF846C();

      sub_21DBF96BC();
      swift_getAtKeyPath();

      (*(v79 + 8))(v5, v80);
      v48 = v85[0];
    }

    v50 = swift_getKeyPath();
    v108 = 0;
    *&v103 = v70;
    *(&v103 + 1) = v32;
    LOBYTE(v104) = 0;
    *(&v104 + 1) = MEMORY[0x277D84F90];
    *&v105 = v33;
    *(&v105 + 1) = 1;
    LOBYTE(v106) = 0;
    *(&v106 + 1) = v46;
    *&v107[0] = v36;
    *(&v107[0] + 1) = v50;
    *&v107[1] = v48;
    BYTE8(v107[1]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B748);
    sub_21D3CE130();
    sub_21DBF97FC();
  }

  v105 = v112;
  v106 = v113;
  v107[0] = v114[0];
  *(v107 + 9) = *(v114 + 9);
  v103 = v110;
  v104 = v111;
  v52 = v77;
  v51 = v78;
  *&v92 = v78;
  *(&v92 + 1) = v77;
  v53 = v73;
  v54 = v74;
  *&v93 = v73;
  *(&v93 + 1) = v82;
  v56 = v75;
  v55 = KeyPath;
  *&v94 = KeyPath;
  *(&v94 + 1) = v81;
  *&v95 = v84;
  *(&v95 + 1) = v74;
  *&v96 = v75;
  *(&v96 + 1) = v83;
  v86 = v92;
  v87 = v93;
  v88 = v94;
  v89 = v95;
  v90 = v96;
  v98 = v110;
  v99 = v111;
  *(v102 + 9) = *(v114 + 9);
  v102[0] = v114[0];
  v100 = v112;
  v101 = v113;
  v58 = v71;
  v57 = v72;
  v97 = v71;
  *v91 = v71;
  *&v91[24] = v111;
  *&v91[8] = v110;
  *&v91[81] = *(v114 + 9);
  *&v91[72] = v114[0];
  *&v91[56] = v113;
  *&v91[40] = v112;
  v59 = v92;
  v60 = v93;
  v61 = v95;
  *(v72 + 32) = v94;
  *(v57 + 48) = v61;
  *v57 = v59;
  *(v57 + 16) = v60;
  v62 = v90;
  v63 = *v91;
  v64 = *&v91[32];
  *(v57 + 96) = *&v91[16];
  *(v57 + 112) = v64;
  *(v57 + 64) = v62;
  *(v57 + 80) = v63;
  v65 = *&v91[48];
  v66 = *&v91[64];
  v67 = *&v91[80];
  *(v57 + 176) = v91[96];
  *(v57 + 144) = v66;
  *(v57 + 160) = v67;
  *(v57 + 128) = v65;
  sub_21D0D3954(&v92, v85, &qword_27CE5B720);
  sub_21D0D3954(&v98, v85, &qword_27CE5B810);
  sub_21D0CF7E0(&v103, &qword_27CE5B810);
  v85[0] = v51;
  v85[1] = v52;
  v85[2] = v53;
  v85[3] = v82;
  v85[4] = v55;
  v85[5] = v81;
  v85[6] = v84;
  v85[7] = v54;
  v85[8] = v56;
  v85[9] = v83;
  v85[10] = v58;
  return sub_21D0CF7E0(v85, &qword_27CE5B720);
}

uint64_t sub_21D3BED10(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for TTRSpotlightListView.ListView(0);
  v2 = v1 - 8;
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v29 = v3;
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = *(v2 + 40);
  v18 = v31;
  sub_21D0D3954(v31 + v17, v9, &qword_27CE58370);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_21D0CF7E0(v9, &qword_27CE58370);
  }

  v27 = *(v11 + 32);
  v27(v16, v9, v10);
  sub_21DBFA85C();
  v20 = sub_21DBFA89C();
  (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  (*(v11 + 16))(v13, v16, v10);
  v21 = v18;
  v22 = v30;
  sub_21D3C5A20(v21, v30, type metadata accessor for TTRSpotlightListView.ListView);
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = (v12 + *(v28 + 80) + v23) & ~*(v28 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v27((v25 + v23), v13, v10);
  sub_21D3CDBF4(v22, v25 + v24, type metadata accessor for TTRSpotlightListView.ListView);
  sub_21D3932A8(0, 0, v6, &unk_21DC140E8, v25);

  sub_21D0CF7E0(v6, &unk_27CE5F150);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_21D3BF0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = *(type metadata accessor for TTRSpotlightListView.ListView(0) - 8);
  v5[6] = v6;
  v5[7] = *(v6 + 64);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D3BF21C, 0, 0);
}

uint64_t sub_21D3BF21C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v2 = objc_opt_self();
  v3 = sub_21DBF566C();
  v4 = [v2 objectIDWithUUID_];

  v0[2] = 0;
  v5 = [v1 fetchListWithObjectID:v4 error:v0 + 2];
  v6 = v0[2];
  if (v5)
  {
    v7 = v5;
    v0[3] = 0;
    v8 = v6;
    v9 = [v1 fetchAccountsWithError_];
    v10 = v0[3];
    if (v9)
    {
      v11 = v9;
      sub_21D0D8CF0(0, &qword_27CE5DDD0);
      v12 = sub_21DBFA5EC();
      v13 = v10;

      v39 = v4;
      if (v12 >> 62)
      {
        v14 = sub_21DBFBD7C();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v0[8];
      v15 = v0[9];
      v17 = v0[6];
      v18 = v0[7];
      v19 = v0[5];

      v20 = sub_21DBFA89C();
      (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
      sub_21D3C5A20(v19, v16, type metadata accessor for TTRSpotlightListView.ListView);
      sub_21DBFA84C();
      v21 = v7;
      v22 = sub_21DBFA83C();
      v23 = (*(v17 + 80) + 40) & ~*(v17 + 80);
      v24 = swift_allocObject();
      v25 = MEMORY[0x277D85700];
      v24[2] = v22;
      v24[3] = v25;
      v24[4] = v14;
      sub_21D3CDBF4(v16, v24 + v23, type metadata accessor for TTRSpotlightListView.ListView);
      *(v24 + ((v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
      sub_21D3BF9B8(0, 0, v15, &unk_21DC140F8, v24);

      goto LABEL_13;
    }

    v28 = v10;
    v27 = sub_21DBF52DC();

    swift_willThrow();
  }

  else
  {
    v26 = v6;
    v27 = sub_21DBF52DC();

    swift_willThrow();
  }

  if (qword_27CE566B0 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBF84BC();
  __swift_project_value_buffer(v29, qword_27CE5B3F0);
  v30 = v27;
  v31 = sub_21DBF84AC();
  v32 = sub_21DBFAEBC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = v27;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_21D0C9000, v31, v32, "TTRSpotlightListView onAppear error: %@", v33, 0xCu);
    sub_21D0CF7E0(v34, &unk_27CE60070);
    MEMORY[0x223D46520](v34, -1, -1);
    MEMORY[0x223D46520](v33, -1, -1);
  }

  else
  {
  }

LABEL_13:

  v37 = v0[1];

  return v37();
}

uint64_t sub_21D3BF6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_21DBFA84C();
  v6[10] = sub_21DBFA83C();
  v8 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D3BF7A4, v8, v7);
}

uint64_t sub_21D3BF7A4()
{
  v1 = *(v0 + 56);

  if (v1 >= 2)
  {
    v2 = *(v0 + 64);
    v3 = [*(v0 + 72) account];
    v4 = [v3 name];

    v5 = sub_21DBFA16C();
    v7 = v6;

    v8 = *(v2 + 16);
    *(v0 + 16) = *v2;
    *(v0 + 32) = v8;
    *(v0 + 40) = v5;
    *(v0 + 48) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B7C0);
    sub_21DBF9B6C();
  }

  v9 = *(v0 + 72);
  *(v0 + 16) = 0;
  v10 = [v9 fetchRemindersCountWithError_];
  v11 = *(v0 + 16);
  if (v10)
  {
    v12 = v10;
    v13 = *(v0 + 64);
    v14 = v11;
    v15 = sub_21DBFABDC();

    v16 = *(v13 + 32);
    v17 = *(v13 + 40);
    *(v0 + 16) = *(v13 + 24);
    *(v0 + 24) = v16;
    *(v0 + 32) = v17;
    *(v0 + 40) = v15;
    *(v0 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B7B8);
    sub_21DBF9B6C();
  }

  else
  {
    v19 = v11;
    sub_21DBF52DC();

    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_21D3BF9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21D0D3954(a3, v22 - v9, &unk_27CE5F150);
  v11 = sub_21DBFA89C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5F150);
  }

  else
  {
    sub_21DBFA88C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21DBFA7CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_21DBFA1EC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21D0CF7E0(a3, &unk_27CE5F150);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D0CF7E0(a3, &unk_27CE5F150);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_21D3BFC64()
{
  v1 = sub_21DBF96CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *v0;

    sub_21DBFAECC();
    v7 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C60F8(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

uint64_t sub_21D3BFE20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_21DBF65CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21D3BFEBC(void (*a1)(void))
{
  a1(0);
}

uint64_t TTRSpotlightSectionView.listDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRSpotlightSectionView(0) + 32));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRSpotlightSectionView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_21DBF65CC();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B518);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v50 = type metadata accessor for TTRSpotlightSectionView(0);
  MEMORY[0x28223BE20](v50);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *v17 = KeyPath;
  v51 = a1;
  v52 = v17;
  v17[8] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D3C5B28();
  v18 = v49;
  sub_21DBFC87C();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    v49 = v8;
    v19 = v13;
    sub_21DBF56BC();
    v57 = 2;
    sub_21D3C5544(&qword_27CE65160, MEMORY[0x277CC95F0]);
    sub_21DBFC49C();
    v20 = v12;
    v22 = v50;
    v23 = v52;
    sub_21D0D523C(v11, &v52[*(v50 + 28)], &qword_27CE58370);
    sub_21DBF61FC();
    v56 = 0;
    sub_21D3C5544(&qword_27CE5B4E8, MEMORY[0x277D44EB0]);
    sub_21DBFC49C();
    v44 = v15;
    v24 = v53;
    if (v53)
    {
      v25 = v47;
      v26 = v5;
    }

    else
    {
      v25 = v47;
      v26 = v5;
      if (qword_27CE566C0 != -1)
      {
        swift_once();
      }
    }

    *&v23[v22[6]] = v24;
    v55 = 1;
    sub_21D3C5544(&qword_27CE5B4F0, MEMORY[0x277D45078]);
    v27 = v25;
    sub_21DBFC49C();
    v43 = v20;
    v28 = v46;
    v29 = *(v46 + 48);
    if (v29(v26, 1, v25) == 1)
    {
      if (qword_27CE566B8 != -1)
      {
        swift_once();
      }

      v27 = v47;
      v30 = __swift_project_value_buffer(v47, qword_27CE5B408);
      v31 = v46;
      v32 = v49;
      (*(v46 + 16))(v49, v30, v27);
      v33 = v32;
      v28 = v31;
      if (v29(v26, 1, v27) != 1)
      {
        sub_21D0CF7E0(v26, &qword_27CE5B4C0);
      }
    }

    else
    {
      v33 = v49;
      (*(v28 + 32))(v49, v26, v27);
    }

    v34 = *(v28 + 32);
    v35 = v52;
    v34(&v52[v22[5]], v33, v27);
    v54 = 3;
    v36 = v43;
    v37 = v44;
    v38 = sub_21DBFC46C();
    v40 = v39;
    (*(v19 + 8))(v37, v36);
    v41 = (v35 + v22[8]);
    *v41 = v38;
    v41[1] = v40;
    sub_21D3C5A20(v35, v45, type metadata accessor for TTRSpotlightSectionView);
    __swift_destroy_boxed_opaque_existential_0(v51);
    return sub_21D3C5A88(v35, type metadata accessor for TTRSpotlightSectionView);
  }
}

uint64_t TTRSpotlightSectionView.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B528);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D3C5B28();
  sub_21DBFC88C();
  v9 = type metadata accessor for TTRSpotlightSectionView(0);
  LOBYTE(v11) = 1;
  sub_21DBF65CC();
  sub_21D3C5544(&qword_27CE5B500, MEMORY[0x277D45078]);
  sub_21DBFC56C();
  if (!v2)
  {
    *&v11 = *(v3 + *(v9 + 24));
    v12 = 0;
    sub_21DBF61FC();
    sub_21D3C5544(&qword_27CE5B508, MEMORY[0x277D44EB0]);
    sub_21DBFC56C();
    LOBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
    sub_21D3C57D0();
    sub_21DBFC56C();
    v11 = *(v3 + *(v9 + 32));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0);
    sub_21D3C558C();
    sub_21DBFC56C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TTRSpotlightSectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_21DBF65CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSpotlightSectionView.ListView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRSpotlightSectionView(0);
  v13 = *(v6 + 16);
  v14 = v1 + v12[5];
  v35 = v5;
  v13(v8, v14, v5);
  v15 = *(v1 + v12[6]);
  v16 = v1 + v12[7];
  v36 = v4;
  sub_21D0D3954(v16, v4, &qword_27CE58370);

  v17 = sub_21D3BFC64();
  v18 = [v17 displayName];

  if (v18)
  {
    v19 = sub_21DBFA16C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = (v1 + v12[8]);
  v24 = *v22;
  v23 = v22[1];
  (*(v6 + 32))(v11, v8, v35);
  *&v11[v9[5]] = v15;
  sub_21D0D523C(v36, &v11[v9[6]], &qword_27CE58370);
  v25 = &v11[v9[7]];
  *v25 = v19;
  v25[1] = v21;
  v26 = &v11[v9[8]];
  *v26 = v24;
  *(v26 + 1) = v23;
  v27 = &v11[v9[9]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v11[v9[10]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = &v11[v9[11]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = &v11[v9[12]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v11[v9[13]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v11[v9[14]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  sub_21D3CDBF4(v11, v37, type metadata accessor for TTRSpotlightSectionView.ListView);
  return sub_21DBF8E0C();
}

uint64_t sub_21D3C0CE8()
{
  v1 = 0x726F6C6F63;
  v2 = 0x496E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0x707369447473696CLL;
  }

  if (*v0)
  {
    v1 = 0x7079546567646162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21D3C0D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21D3CDA38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21D3C0DA8(uint64_t a1)
{
  v2 = sub_21D3C5B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21D3C0DE4(uint64_t a1)
{
  v2 = sub_21D3C5B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21D3C0E20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF96CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF972C();
  v9 = type metadata accessor for TTRSpotlightSectionView.ListView(0);
  v10 = v1 + *(v9 + 36);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *v10;
  if ((v12 & 1) == 0)
  {

    sub_21DBFAECC();
    v14 = sub_21DBF984C();
    v49 = a1;
    v15 = v8;
    v16 = v7;
    v17 = v12;
    v18 = v2;
    v19 = v9;
    v20 = v5;
    v21 = v4;
    v22 = v14;
    sub_21DBF846C();

    v4 = v21;
    v5 = v20;
    v9 = v19;
    v2 = v18;
    v12 = v17;
    v7 = v16;
    v8 = v15;
    a1 = v49;
    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v11, 0);
    (*(v5 + 8))(v7, v4);
    v13 = v51;
  }

  *a1 = v8;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B818);
  sub_21D3C12D0(v2, a1 + *(v23 + 44));
  sub_21DBF9C7C();
  sub_21DBF95CC();
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B820) + 36));
  v25 = v56;
  v24[4] = v55;
  v24[5] = v25;
  v24[6] = v57;
  v26 = v52;
  *v24 = v51;
  v24[1] = v26;
  v27 = v54;
  v24[2] = v53;
  v24[3] = v27;
  if (!v12)
  {

    sub_21DBFAECC();
    v28 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v11, 0);
    (*(v5 + 8))(v7, v4);
  }

  v29 = sub_21DBF985C();
  sub_21DBF94BC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B828) + 36);
  *v38 = v29;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  *(v38 + 24) = v35;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  v39 = v2 + *(v9 + 56);
  v40 = *v39;
  if (*(v39 + 8) == 1)
  {
    v41 = *v39;
  }

  else
  {

    sub_21DBFAECC();
    v42 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();
    sub_21D3C8A88(v40, 0);
    (*(v5 + 8))(v7, v4);
    v41 = v50;
  }

  v43 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B830) + 36));
  v44 = *(sub_21DBF95BC() + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_21DBF979C();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  *v43 = v41;
  *(v43 + 1) = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B678);
  *&v43[*(result + 36)] = 256;
  return result;
}

uint64_t sub_21D3C12D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ListBadge(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_21DBF65CC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  *&v9[*(v4 + 28)] = *(a1 + *(type metadata accessor for TTRSpotlightSectionView.ListView(0) + 20));

  v12 = sub_21DBF97CC();
  v26 = 1;
  sub_21D3C16C0(a1, &v41);
  v35 = *&v42[112];
  v36 = *&v42[128];
  v37 = *&v42[144];
  v31 = *&v42[48];
  v32 = *&v42[64];
  v33 = *&v42[80];
  v34 = *&v42[96];
  v27 = v41;
  v28 = *v42;
  v29 = *&v42[16];
  v30 = *&v42[32];
  v38[8] = *&v42[112];
  v38[9] = *&v42[128];
  v38[10] = *&v42[144];
  v38[4] = *&v42[48];
  v38[5] = *&v42[64];
  v38[6] = *&v42[80];
  v38[7] = *&v42[96];
  v38[0] = v41;
  v38[1] = *v42;
  v38[2] = *&v42[16];
  v38[3] = *&v42[32];
  sub_21D0D3954(&v27, &v39, &qword_27CE5B838);
  sub_21D0CF7E0(v38, &qword_27CE5B838);
  *&v25[119] = v34;
  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[167] = v37;
  *&v25[55] = v30;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  LOBYTE(v11) = v26;
  sub_21D3C5A20(v9, v6, type metadata accessor for ListBadge);
  v13 = v24;
  sub_21D3C5A20(v6, v24, type metadata accessor for ListBadge);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B840) + 48);
  *&v40[129] = *&v25[128];
  *&v40[145] = *&v25[144];
  *&v40[161] = *&v25[160];
  *&v40[65] = *&v25[64];
  *&v40[81] = *&v25[80];
  *&v40[97] = *&v25[96];
  *&v40[113] = *&v25[112];
  *&v40[17] = *&v25[16];
  *&v40[33] = *&v25[32];
  v15 = v13 + v14;
  v39 = v12;
  v40[0] = v11;
  *&v40[176] = *&v25[175];
  *&v40[49] = *&v25[48];
  *&v40[1] = *v25;
  v16 = *&v40[160];
  *(v15 + 160) = *&v40[144];
  *(v15 + 176) = v16;
  *(v15 + 192) = *&v40[176];
  v17 = *&v40[96];
  *(v15 + 96) = *&v40[80];
  *(v15 + 112) = v17;
  v18 = *&v40[128];
  *(v15 + 128) = *&v40[112];
  *(v15 + 144) = v18;
  v19 = *&v40[32];
  *(v15 + 32) = *&v40[16];
  *(v15 + 48) = v19;
  v20 = *&v40[64];
  *(v15 + 64) = *&v40[48];
  *(v15 + 80) = v20;
  v21 = *v40;
  *v15 = v39;
  *(v15 + 16) = v21;
  sub_21D0D3954(&v39, &v41, &qword_27CE5B848);
  sub_21D3C5A88(v9, type metadata accessor for ListBadge);
  *&v42[129] = *&v25[128];
  *&v42[145] = *&v25[144];
  v43[0] = *&v25[160];
  *&v42[65] = *&v25[64];
  *&v42[81] = *&v25[80];
  *&v42[97] = *&v25[96];
  *&v42[113] = *&v25[112];
  *&v42[1] = *v25;
  *&v42[17] = *&v25[16];
  *&v42[33] = *&v25[32];
  v41 = v12;
  v42[0] = v11;
  *(v43 + 15) = *&v25[175];
  *&v42[49] = *&v25[48];
  sub_21D0CF7E0(&v41, &qword_27CE5B848);
  return sub_21D3C5A88(v6, type metadata accessor for ListBadge);
}

uint64_t sub_21D3C16C0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_21DBF96CC();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRSpotlightSectionView.ListView(0);
  v8 = (a1 + v7[7]);
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v56 = v9;
    v57 = v10;
  }

  else
  {
    v56 = 0xE000000000000000;
    v57 = 0;
  }

  KeyPath = swift_getKeyPath();
  v11 = (a1 + v7[10]);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v107 = *v11;
    sub_21DBF8E0C();
  }

  else
  {
    sub_21DBF8E0C();

    sub_21DBFAECC();
    v13 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    (*(v54 + 8))(v6, v55);
    v12 = v107;
  }

  v14 = swift_getKeyPath();
  v111 = 0;
  v109 = 0;
  v15 = (a1 + v7[11]);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v106 = *v15;
  }

  else
  {

    sub_21DBFAECC();
    v17 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    (*(v54 + 8))(v6, v55);
    v16 = v106;
  }

  v50 = swift_getKeyPath();
  v51 = v16;
  v18 = (a1 + v7[8]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v48 = v19;
    v49 = v20;
  }

  else
  {
    v48 = 0xE000000000000000;
    v49 = 0;
  }

  v47 = swift_getKeyPath();
  v21 = (a1 + v7[12]);
  v22 = *v21;
  LODWORD(v21) = *(v21 + 8);
  v52 = v12;
  if (v21 == 1)
  {
    v101 = v22;
    sub_21DBF8E0C();
  }

  else
  {
    sub_21DBF8E0C();

    sub_21DBFAECC();
    v23 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    (*(v54 + 8))(v6, v55);
    v22 = v101;
  }

  v46 = swift_getKeyPath();
  v105 = 0;
  v103 = 0;
  v24 = (a1 + v7[13]);
  v25 = *v24;
  if (*(v24 + 8) == 1)
  {
    v100 = *v24;
  }

  else
  {

    sub_21DBFAECC();
    v26 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    (*(v54 + 8))(v6, v55);
    v25 = v100;
  }

  v27 = swift_getKeyPath();
  *&v64 = v57;
  *(&v64 + 1) = v56;
  LOBYTE(v65) = 0;
  *(&v65 + 1) = *v110;
  DWORD1(v65) = *&v110[3];
  v28 = KeyPath;
  *(&v65 + 1) = MEMORY[0x277D84F90];
  *&v66 = KeyPath;
  *(&v66 + 1) = 2;
  LOBYTE(v67) = 0;
  *(&v67 + 1) = *v108;
  DWORD1(v67) = *&v108[3];
  *(&v67 + 1) = v14;
  v55 = v14;
  v30 = v51;
  v29 = v52;
  v31 = v49;
  v32 = v50;
  *&v68 = v52;
  *(&v68 + 1) = v50;
  v69 = v51;
  *&v70 = v49;
  v61 = v67;
  v62 = v68;
  *&v63[0] = v51;
  v59 = v65;
  v60 = v66;
  v58 = v64;
  v33 = v48;
  *(&v70 + 1) = v48;
  LOBYTE(v71) = 0;
  DWORD1(v71) = *&v104[3];
  *(&v71 + 1) = *v104;
  *(&v71 + 1) = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v35 = v47;
  *&v72 = v47;
  *(&v72 + 1) = 2;
  LOBYTE(v73) = 0;
  DWORD1(v73) = *&v102[3];
  *(&v73 + 1) = *v102;
  v36 = v46;
  *(&v73 + 1) = v46;
  *&v74 = v22;
  *(&v74 + 1) = v27;
  v75 = v25;
  *(&v63[5] + 1) = v25;
  *(&v63[4] + 8) = v74;
  *(&v63[3] + 8) = v73;
  *(&v63[2] + 8) = v72;
  *(&v63[1] + 8) = v71;
  *(v63 + 8) = v70;
  v37 = v65;
  *a2 = v64;
  a2[1] = v37;
  v38 = v60;
  v39 = v61;
  v40 = v63[0];
  a2[4] = v62;
  a2[5] = v40;
  a2[2] = v38;
  a2[3] = v39;
  v41 = v63[1];
  v42 = v63[2];
  v43 = v63[5];
  a2[9] = v63[4];
  a2[10] = v43;
  v44 = v63[3];
  a2[7] = v42;
  a2[8] = v44;
  a2[6] = v41;
  v76[0] = v31;
  v76[1] = v33;
  v77 = 0;
  *v78 = *v104;
  *&v78[3] = *&v104[3];
  v79 = v34;
  v80 = v35;
  v81 = 2;
  v82 = 0;
  *v83 = *v102;
  *&v83[3] = *&v102[3];
  v84 = v36;
  v85 = v22;
  v86 = v27;
  v87 = v25;
  sub_21D0D3954(&v64, v88, &qword_27CE5B748);
  sub_21D0D3954(&v70, v88, &qword_27CE5B748);
  sub_21D0CF7E0(v76, &qword_27CE5B748);
  v88[0] = v57;
  v88[1] = v56;
  v89 = 0;
  *v90 = *v110;
  *&v90[3] = *&v110[3];
  v91 = MEMORY[0x277D84F90];
  v92 = v28;
  v93 = 2;
  v94 = 0;
  *v95 = *v108;
  *&v95[3] = *&v108[3];
  v96 = v55;
  v97 = v29;
  v98 = v32;
  v99 = v30;
  return sub_21D0CF7E0(v88, &qword_27CE5B748);
}

uint64_t sub_21D3C1D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21DBF65CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21D3C1DBC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  sub_21DBF8E0C();
  return v2;
}

uint64_t sub_21D3C1E28()
{
  v0 = sub_21DBF65CC();
  __swift_allocate_value_buffer(v0, qword_27CE5B408);
  v1 = __swift_project_value_buffer(v0, qword_27CE5B408);
  *v1 = sub_21DBFA16C();
  v1[1] = v2;
  v3 = *MEMORY[0x277D45070];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_21D3C1ECC()
{
  sub_21DBF61FC();
  swift_allocObject();
  result = sub_21DBF61EC();
  qword_27CE5B420 = result;
  return result;
}

uint64_t sub_21D3C1F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA40);
  MEMORY[0x28223BE20](v3);
  v5 = v83 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA48);
  MEMORY[0x28223BE20](v6);
  v8 = v83 - v7;
  v97 = sub_21DBF9AFC();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_21DBF9AEC();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA50);
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x28223BE20](v11);
  v98 = v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA58);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v105 = v83 - v16;
  v100 = type metadata accessor for ListBadge.Core(0);
  MEMORY[0x28223BE20](v100);
  v101 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v99 = v83 - v19;
  MEMORY[0x28223BE20](v20);
  v106 = v83 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B4C0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v83 - v23;
  v25 = sub_21DBF65CC();
  MEMORY[0x28223BE20](v25);
  v27 = v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v83 - v29;
  v32 = v31;
  v34 = v33;
  sub_21D0D3954(a1, v24, &qword_27CE5B4C0);
  if ((*(v34 + 48))(v24, 1, v32) == 1)
  {
    sub_21D0CF7E0(v24, &qword_27CE5B4C0);
LABEL_7:
    v75 = sub_21DBF9A3C();
    sub_21DBF9C8C();
    sub_21DBF94FC();
    *&v112[6] = v108;
    *&v112[22] = v109;
    *&v112[38] = v110;
    v76 = *&v112[16];
    *(v5 + 10) = *v112;
    *v5 = v75;
    *(v5 + 4) = 256;
    *(v5 + 26) = v76;
    *(v5 + 42) = *&v112[32];
    *(v5 + 7) = *&v112[46];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA60);
    sub_21D0D0F1C(&qword_27CE5BA68, &qword_27CE5BA48);
    sub_21D3D0F1C();
    return sub_21DBF97FC();
  }

  v90 = v8;
  v89 = *(v34 + 32);
  v89(v30, v24, v32);
  v35 = *(a1 + *(type metadata accessor for ListBadge(0) + 20));
  if (!v35)
  {
    (*(v34 + 8))(v30, v32);
    goto LABEL_7;
  }

  v86 = v3;
  v87 = v6;
  v88 = v5;
  v85 = v34;
  v36 = *(v34 + 16);
  v84 = v30;
  v36(v27, v30, v32);

  v83[1] = v35;
  v37 = sub_21DBF61DC();
  v91 = v32;
  v38 = v37;
  type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)(v38, &v108);

  v39 = v108;
  v40 = v109;
  v41 = v110;
  v42 = v111;
  TTRListColors.Color.nativeColor.getter();
  v43 = sub_21DBF9ABC();
  sub_21D1078C0(v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42);
  v44 = v99;
  v89(v99, v27, v91);
  *(v44 + *(v100 + 20)) = v43;
  sub_21D3CDBF4(v44, v106, type metadata accessor for ListBadge.Core);
  type metadata accessor for RemindersUICoreBundleLookupObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = [objc_opt_self() bundleForClass_];
  v47 = sub_21DBFA12C();
  v48 = [objc_opt_self() imageNamed:v47 inBundle:v46 compatibleWithTraitCollection:0];

  if (v48)
  {
    v49 = v48;
    sub_21DBF9ACC();
    v50 = v93;
    v51 = v92;
    v52 = v94;
    (*(v93 + 104))(v92, *MEMORY[0x277CE0FE0], v94);
    sub_21DBF9B2C();

    (*(v50 + 8))(v51, v52);
    v53 = v96;
    v54 = v95;
    v55 = v97;
    (*(v96 + 104))(v95, *MEMORY[0x277CE0FF0], v97);
    v100 = sub_21DBF9B0C();

    (*(v53 + 8))(v54, v55);
    sub_21DBF9C8C();
    sub_21DBF94FC();
    v56 = v108;
    LOBYTE(v53) = BYTE8(v108);
    v57 = v109;
    v58 = BYTE8(v109);
    v59 = v110;

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA90);
    v61 = v98;
    v62 = &v98[*(v60 + 36)];
    v63 = *(sub_21DBF95BC() + 20);
    v64 = *MEMORY[0x277CE0118];
    v65 = sub_21DBF979C();
    (*(*(v65 - 8) + 104))(&v62[v63], v64, v65);
    __asm { FMOV            V0.2D, #4.5 }

    *v62 = _Q0;
    *&v62[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B678) + 36)] = 256;
    *v61 = v100;
    *(v61 + 8) = v56;
    *(v61 + 16) = v53;
    *(v61 + 24) = v57;
    *(v61 + 32) = v58;
    *(v61 + 40) = v59;
    v71 = v103;
    __asm { FMOV            V0.2D, #22.0 }

    *(v61 + *(v103 + 36)) = _Q0;
    v73 = v105;
    sub_21D0D523C(v61, v105, &qword_27CE5BA50);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v105;
    v71 = v103;
  }

  (*(v102 + 56))(v73, v74, 1, v71);
  v78 = v106;
  v79 = v101;
  sub_21D3C5A20(v106, v101, type metadata accessor for ListBadge.Core);
  v80 = v104;
  sub_21D0D3954(v73, v104, &qword_27CE5BA58);
  v81 = v90;
  sub_21D3C5A20(v79, v90, type metadata accessor for ListBadge.Core);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA88);
  sub_21D0D3954(v80, v81 + *(v82 + 48), &qword_27CE5BA58);
  sub_21D0CF7E0(v80, &qword_27CE5BA58);
  sub_21D3C5A88(v79, type metadata accessor for ListBadge.Core);
  sub_21D0D3954(v81, v88, &qword_27CE5BA48);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BA60);
  sub_21D0D0F1C(&qword_27CE5BA68, &qword_27CE5BA48);
  sub_21D3D0F1C();
  sub_21DBF97FC();

  sub_21D0CF7E0(v81, &qword_27CE5BA48);
  sub_21D0CF7E0(v73, &qword_27CE5BA58);
  sub_21D3C5A88(v78, type metadata accessor for ListBadge.Core);
  return (*(v85 + 8))(v84, v91);
}

uint64_t sub_21D3C2B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B958);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  sub_21DBF989C();
  v3 = *MEMORY[0x277CE09A0];
  v4 = sub_21DBF988C();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_21DBF98AC();
  result = sub_21D0CF7E0(v2, &qword_27CE5B958);
  qword_27CE5B428 = v6;
  return result;
}

__n128 sub_21D3C2C74@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF9AEC();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF65CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v51 = a1;
  v12(v11, a1, v7, v9);
  v13 = (*(v8 + 88))(v11, v7);
  if (v13 == *MEMORY[0x277D45068])
  {
    (*(v8 + 96))(v11, v7);
    if (qword_27CE566C8 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF994C();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    sub_21DBF9C8C();
    sub_21DBF94FC();
    LOBYTE(v93) = v18 & 1;
    *&v68 = v14;
    *(&v68 + 1) = v16;
    LOBYTE(v69) = v18 & 1;
    *(&v69 + 1) = v20;
    v21 = *&v51[*(type metadata accessor for ListBadge.Core(0) + 20)];
    v22 = sub_21DBF9C8C();
    *&v74[16] = v69;
    *&v74[32] = v70;
    *&v74[48] = v71;
    *&v74[64] = v72;
    *v74 = v68;
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v52 = v68;
    v53 = v69;
    *&v57 = v22;
    *(&v57 + 1) = v23;
    v93 = v68;
    v94 = v69;
    v97 = v72;
    v98 = v57;
    v95 = v70;
    v96 = v71;
    *&v74[80] = v22;
    *&v74[88] = v23;
    sub_21D0D3954(&v68, &v80, &qword_27CE5BB68);

    sub_21D0D3954(&v52, &v80, &qword_27CE5BB28);
    sub_21D0CF7E0(v74, &qword_27CE5BB28);
    *&v76[0] = v21;
    *(&v76[1] + 8) = v94;
    *(v76 + 8) = v93;
    *(&v76[5] + 8) = v98;
    *(&v76[4] + 8) = v97;
    *(&v76[3] + 8) = v96;
    *(&v76[2] + 8) = v95;
    v97 = v76[4];
    v98 = v76[5];
    v93 = v76[0];
    v94 = v76[1];
    *v99 = *&v76[6];
    v95 = v76[2];
    v96 = v76[3];
    v79 = 0;
    v99[17] = 0;
    sub_21D0D3954(v76, &v80, &qword_27CE5BB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BB38);
    sub_21D3D1D78();
    sub_21D3D1E84();
    sub_21DBF97FC();
    v97 = v62;
    v98 = v63;
    *v99 = v64;
    *&v99[16] = v65;
    v93 = v58;
    v94 = v59;
    v95 = v60;
    v96 = v61;
    LOBYTE(v87) = 0;
    v99[18] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BAF8);
    sub_21D3D1CEC();
    sub_21DBF97FC();
    sub_21D0CF7E0(&v68, &qword_27CE5BB68);
    sub_21D0CF7E0(v76, &qword_27CE5BB10);
    v97 = v84;
    v98 = v85;
    *v99 = v86[0];
    v24 = *(v86 + 15);
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x277D45070])
  {
    (*(v8 + 96))(v11, v7);
    v25 = *(v11 + 1);
    v26 = sub_21DBFA12C();
    v27 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
    v28 = [v27 emblem];
    v49 = a2;
    if (v28)
    {
      v29 = v28;
      v48 = v25;
      if (qword_27CE56B40 != -1)
      {
        swift_once();
      }

      v30 = qword_27CE5F688;
      sub_21DBF8E0C();
      v31 = sub_21D22D5B4(v29, v30);

      if (v31)
      {
        goto LABEL_15;
      }
    }

    v29 = *MEMORY[0x277D44960];
LABEL_15:

    v32 = REMListBadgeEmblem.image.getter(v29);

    v48 = *&v51[*(type metadata accessor for ListBadge.Core(0) + 20)];
    v51 = v32;
    sub_21DBF9ACC();
    v33 = v50;
    (*(v50 + 104))(v6, *MEMORY[0x277CE0FE0], v4);
    v47 = sub_21DBF9B2C();

    (*(v33 + 8))(v6, v4);
    sub_21DBF9C8C();
    sub_21DBF94FC();
    v34 = v87;
    LOBYTE(v33) = v88;
    v35 = v89;
    v36 = v90;
    v50 = v91;
    v37 = v92;
    v38 = sub_21DBF9A4C();
    KeyPath = swift_getKeyPath();
    LOBYTE(v58) = v33;
    LOBYTE(v76[0]) = v36;
    v40 = sub_21DBF9C8C();
    *&v68 = v47;
    *(&v68 + 1) = v34;
    LOBYTE(v69) = v33;
    *(&v69 + 1) = *v67;
    DWORD1(v69) = *&v67[3];
    *(&v69 + 1) = v35;
    v70.n128_u8[0] = v36;
    *(v70.n128_u32 + 1) = *v66;
    v70.n128_u32[1] = *&v66[3];
    v70.n128_u64[1] = v50;
    *&v71 = v37;
    *(&v71 + 1) = KeyPath;
    *&v72 = v38;
    *(&v72 + 1) = v40;
    v73 = v41;
    *&v98 = v41;
    v96 = v71;
    v97 = v72;
    v94 = v69;
    v95 = v70;
    v93 = v68;
    *&v52 = v47;
    *(&v52 + 1) = v34;
    LOBYTE(v53) = v33;
    DWORD1(v53) = *&v67[3];
    *(&v53 + 1) = *v67;
    *(&v53 + 1) = v35;
    v54.n128_u8[0] = v36;
    v54.n128_u32[1] = *&v66[3];
    *(v54.n128_u32 + 1) = *v66;
    v54.n128_u64[1] = v50;
    *&v55 = v37;
    *(&v55 + 1) = KeyPath;
    *&v56 = v38;
    *(&v56 + 1) = v40;
    *&v57 = v41;
    v42 = v48;

    sub_21D0D3954(&v68, &v80, &qword_27CE5BB60);
    sub_21D0CF7E0(&v52, &qword_27CE5BB60);
    *&v74[8] = vdupq_n_s64(0x404E000000000000uLL);
    *&v74[56] = v95;
    *&v74[72] = v96;
    *&v74[88] = v97;
    *v74 = v42;
    *&v74[104] = v98;
    *&v74[24] = v93;
    *&v74[40] = v94;
    v80 = *v74;
    v81 = *&v74[16];
    v84 = *&v74[64];
    v85 = *&v74[80];
    v86[0] = *&v74[96];
    v82 = *&v74[32];
    v83 = *&v74[48];
    v75 = 0;
    LOBYTE(v86[1]) = 0;
    sub_21D0D3954(v74, &v93, &qword_27CE5BB48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BB48);
    sub_21D3D1F10();
    sub_21D3D1FC8();
    sub_21DBF97FC();

    sub_21D0CF7E0(v74, &qword_27CE5BB48);
    v76[4] = v97;
    v76[5] = v98;
    v76[6] = *v99;
    v77 = v99[16];
    v76[0] = v93;
    v76[1] = v94;
    v76[2] = v95;
    v76[3] = v96;
    v78 = 1;
    v99[17] = 1;
    sub_21D0D3954(v76, &v80, &qword_27CE5BB38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BB38);
    sub_21D3D1D78();
    sub_21D3D1E84();
    sub_21DBF97FC();
    v97 = v62;
    v98 = v63;
    *v99 = v64;
    *&v99[16] = v65;
    v93 = v58;
    v94 = v59;
    v95 = v60;
    v96 = v61;
    v79 = 0;
    v99[18] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BAF8);
    sub_21D3D1CEC();
    sub_21DBF97FC();
    sub_21D0CF7E0(v76, &qword_27CE5BB38);
    v97 = v84;
    v98 = v85;
    *v99 = v86[0];
    *&v99[15] = *(v86 + 15);
    v93 = v80;
    v94 = v81;
    v95 = v82;
    v96 = v83;
    a2 = v49;
    goto LABEL_16;
  }

  LOBYTE(v58) = 1;
  v99[18] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BAF8);
  sub_21D3D1CEC();
  sub_21DBF97FC();
  (*(v8 + 8))(v11, v7);
  v97 = v84;
  v98 = v85;
  *v99 = v86[0];
  v24 = *(v86 + 15);
LABEL_12:
  *&v99[15] = v24;
  v93 = v80;
  v94 = v81;
  v95 = v82;
  v96 = v83;
LABEL_16:
  v43 = v98;
  *(a2 + 64) = v97;
  *(a2 + 80) = v43;
  *(a2 + 96) = *v99;
  *(a2 + 111) = *&v99[15];
  v44 = v94;
  *a2 = v93;
  *(a2 + 16) = v44;
  result = v95;
  v46 = v96;
  *(a2 + 32) = v95;
  *(a2 + 48) = v46;
  return result;
}

double sub_21D3C379C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_21DBF991C();

  sub_21DBF9C8C();
  sub_21DBF94FC();
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 56) = v5;
  *(a1 + 32) = v10;
  *(a1 + 40) = v3;
  *(a1 + 48) = 256;
  *(a1 + 72) = v6;
  result = *&v7;
  *(a1 + 88) = v7;
  return result;
}