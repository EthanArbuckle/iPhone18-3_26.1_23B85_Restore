uint64_t TTRRemindersListSetCompletedOptions.editBeforeAdvancingForwardRecurrence.getter()
{
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.editBeforeAdvancingForwardRecurrence.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21D98F334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D9954E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D98F3B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D9954A0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.orderClonedInSmartList.getter()
{
  v1 = *(v0 + 32);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.orderClonedInSmartList.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_21D98F4DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D995470;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D98F55C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D995434;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.updateClonedMemberships.getter()
{
  v1 = *(v0 + 48);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.updateClonedMemberships.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_21D98F684@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A948;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D98F704(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.concludeEditing.getter()
{
  v1 = *(v0 + 64);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.concludeEditing.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.init(afterDateProviderForAdvancingForwardRecurrence:editBeforeAdvancingForwardRecurrence:orderClonedInSmartList:updateClonedMemberships:concludeEditing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_21D98F858(uint64_t result)
{
  v14 = result;
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    result = sub_21DBFBD7C();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2;
  do
  {
    if (v5)
    {
      v7 = MEMORY[0x223D44740](v4, v2);
    }

    else
    {
      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    ++v4;
    sub_21D0D3954(v1 + 40, v16, &unk_27CE60D80);
    sub_21D0D3954(v16, v15, &unk_27CE60D80);
    type metadata accessor for TTRReminderEditor();
    v9 = swift_allocObject();
    *(v9 + 72) = 0;
    *(v9 + 16) = v8;
    sub_21D0D3954(v15, v9 + 24, &unk_27CE60D80);
    *(v9 + 64) = 0;
    v10 = v8;
    v11 = [v10 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v15, &unk_27CE60D80);
    sub_21D0CF7E0(v16, &unk_27CE60D80);
    v12 = *(v9 + 72);
    *(v9 + 72) = v11;

    v14(v9);

    v2 = v6;
  }

  while (v3 != v4);
LABEL_10:
  result = swift_beginAccess();
  v13 = *(v1 + 24);
  if (v13)
  {

    v13(v2);
    return sub_21D0D0E88(v13);
  }

  return result;
}

uint64_t *TTRRemindersListAttributeEditor.init(editorProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_21D994720(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t TTRRemindersListAttributeEditor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TTRRemindersListAttributeEditor.setDueDate(_:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v6[2] = a1;
  return (*(v4 + 24))(a1, sub_21D994894, v6, v3, v4);
}

uint64_t sub_21D98FC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = [*(a1 + 16) dueDateComponents];
  if (v12)
  {
    v13 = v12;
    sub_21DBF4EFC();

    v14 = sub_21DBF509C();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v15 = sub_21DBF509C();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  sub_21D67A548(v7, v11);
  sub_21D0CF7E0(v7, &qword_27CE58D60);
  v16 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_21D9C50E0(v11, v4);
  sub_21D0CF7E0(v4, &unk_27CE60DA0);
  return sub_21D0CF7E0(v11, &qword_27CE58D60);
}

uint64_t TTRRemindersListAttributeEditor.setCompleted(_:options:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v6 = a2[3];
  v57 = a2[2];
  v58 = v6;
  v59 = a2[4];
  v7 = a2[1];
  v55 = *a2;
  v56 = v7;
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = sub_21D179850(MEMORY[0x277D84F90]);
  v46 = v8 + 16;
  type metadata accessor for TTRReminderEditor.EditedObjectIDs();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84FA0];
  v12 = v10;
  *(v10 + 16) = MEMORY[0x277D84FA0];
  v13 = (v10 + 16);
  swift_beginAccess();
  *v13 = v11;
  if (a1)
  {
    LODWORD(v44) = a1;
    v14 = v4[5];
    v15 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v14);
    v16 = (*(v15 + 8))(v14, v15);
    v51 = v9;
    v17 = *(v16 + 16);
    if (v17)
    {
      v45 = v16;
      v18 = v16 + 32;
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D0D32E4(v18, v52);
        v21 = v53;
        v20 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        if ((*(v20 + 120))(v21, v20))
        {
          v22 = v53;
          v23 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          (*(v23 + 184))(v48, v22, v23);
          v24 = v49;
          if (v49)
          {
            v25 = v50;
            __swift_project_boxed_opaque_existential_1(v48, v49);
            (*(v25 + 8))(v24, v25);
            __swift_destroy_boxed_opaque_existential_0(v48);
            v26 = __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x223D42D80](v26);
            if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();
            v19 = v51;
            goto LABEL_6;
          }

          sub_21D0CF7E0(v48, &qword_27CE59DC0);
        }

        __swift_destroy_boxed_opaque_existential_0(v52);
LABEL_6:
        v18 += 40;
        if (!--v17)
        {

          goto LABEL_16;
        }
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_16:
    v45 = sub_21D19ED08(v19);

    LOBYTE(a1) = v44;
  }

  else if (v9 >> 62 && sub_21DBFBD7C())
  {
    sub_21D1CE198(MEMORY[0x277D84F90]);
    v45 = v38;
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];
  }

  v27 = v4[5];
  v28 = v4[6];
  v29 = __swift_project_boxed_opaque_existential_1(v4 + 2, v27);
  v44 = &v43;
  MEMORY[0x28223BE20](v29);
  v39[2] = &v55;
  v40 = a1 & 1;
  v41 = v12;
  v42 = v46;
  v30 = swift_allocObject();
  v31 = v58;
  *(v30 + 48) = v57;
  *(v30 + 64) = v31;
  *(v30 + 80) = v59;
  v32 = v56;
  *(v30 + 16) = v55;
  *(v30 + 32) = v32;
  *(v30 + 96) = v12;
  *(v30 + 104) = v8;
  v33 = *(v28 + 16);
  sub_21D9948B8(&v55, v52);

  v33(v45, sub_21D99489C, v39, sub_21D9948AC, v30, 0, 0, v27, v28);

  v34 = *(v12 + 16);
  sub_21DBF8E0C();

  swift_beginAccess();
  v35 = *(v8 + 16);
  sub_21DBF8E0C();

  v37 = v47;
  *v47 = v34;
  v37[1] = v35;
  return result;
}

uint64_t sub_21D990328(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v78 = a5;
  v77 = a4;
  v74 = a3;
  v85 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v79 = a1;
  v80 = &v72 - v14;
  v15 = *(a1 + 16);
  v16 = [v15 subtaskContext];
  v17 = &off_278331000;
  if (v16)
  {

    v18 = [v15 saveRequest];
    v19 = [v18 store];

    v20 = [objc_allocWithZone(MEMORY[0x277D447D0]) initWithStore_];
    v21 = [objc_opt_self() defaultFetchOptions];
    aBlock[0] = 0;
    v22 = [v20 fetchSubtasksOfParentReminderChangeItem:v15 subtaskFetchOption:0 reminderFetchOptions:v21 error:aBlock];

    v23 = aBlock[0];
    if (v22)
    {
      sub_21D0D8CF0(0, &qword_280D17860);
      v24 = sub_21DBFA5EC();
      v25 = v23;

      goto LABEL_10;
    }

    v26 = aBlock[0];
    v27 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56F08 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_27CE646A0);
    v29 = v27;

    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAEBC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v32 = 136315394;
      swift_getErrorValue();
      v33 = sub_21DBFC74C();
      v35 = sub_21D0CDFB4(v33, v34, aBlock);

      *(v32 + 4) = v35;
      v17 = &off_278331000;
      *(v32 + 12) = 2112;
      v36 = [v15 objectID];
      *(v32 + 14) = v36;
      v37 = v72;
      *v72 = v36;
      _os_log_impl(&dword_21D0C9000, v30, v31, "TTRRemindersListAttributeEditor#setCompleted: Failed to fetch subtasks {error: %s, parentID: %@}", v32, 0x16u);
      sub_21D0CF7E0(v37, &unk_27CE60070);
      MEMORY[0x223D46520](v37, -1, -1);
      v38 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x223D46520](v38, -1, -1);
      MEMORY[0x223D46520](v32, -1, -1);
    }

    else
    {
    }
  }

  v24 = 0;
LABEL_10:
  v39 = a2[2];
  if (v39)
  {
    v39(v79);
  }

  type metadata accessor for TTRReminderEditor.EditedObjectIDs();
  inited = swift_initStackObject();
  v41 = MEMORY[0x277D84FA0];
  *(inited + 16) = MEMORY[0x277D84FA0];
  swift_beginAccess();
  *(inited + 16) = v41;
  if (v24)
  {
    if (v24 >> 62)
    {
      if (sub_21DBFBD7C())
      {
        goto LABEL_15;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      TTRReminderEditor.edit(completed:subtasks:trackEditedUsing:)(v74 & 1, v24, inited);

      goto LABEL_19;
    }
  }

  TTRReminderEditor.edit(completed:trackEditedUsing:)(v74 & 1, inited);
LABEL_19:
  v42 = [v15 dueDateComponents];
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

  v45 = sub_21DBF509C();
  (*(*(v45 - 8) + 56))(v11, v44, 1, v45);
  sub_21D9957F8(v11, v80);
  v46 = [v15 v17[429]];
  if (*a2)
  {
    v47 = a2[1];
    v83 = *a2;
    v84 = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D990CCC;
    v82 = &block_descriptor_109_1;
    v48 = _Block_copy(aBlock);
  }

  else
  {
    v48 = 0;
  }

  v49 = [v46 advanceForwardRecurrenceAndCreateCompletedCloneWithoutRecurrenceRulesAndSubtasksAfterDate_];
  _Block_release(v48);

  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D0D8CF0(0, &qword_280D17770);
  sub_21D183A0C();
  v50 = sub_21DBF9E6C();

  v51 = v76;
  sub_21D0D3954(v80, v76, &qword_27CE58D60);
  v52 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v53 = swift_allocObject();
  sub_21D9957F8(v51, v53 + v52);
  v54 = v79;
  sub_21D182E74(sub_21D995868, v53);

  v55 = [v15 listChangeItem];
  if (v55)
  {
    v56 = v55;
    sub_21D0D3954(v54 + 24, aBlock, &unk_27CE60D80);
    v57 = v82;
    if (v82)
    {
      v58 = v83;
      __swift_project_boxed_opaque_existential_1(aBlock, v82);
      v59 = (*(v58 + 8))(v57, v58);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {
      sub_21D0CF7E0(aBlock, &unk_27CE60D80);
      v59 = 0;
    }

    v60 = v56;
    sub_21D9B0C90(v60, v59);

    v61 = sub_21D98E85C(v50);
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    sub_21D182B38(sub_21D9958E4, v62);
  }

  v63 = a2[4];
  if (v63)
  {
    v64 = *(inited + 16);
    sub_21DBF8E0C();
    v65 = [v15 saveRequest];
    v63(v64, v50, v65);
  }

  v66 = a2[6];
  if (v66)
  {
    v67 = [v15 saveRequest];
    v66(v50, v67);
  }

  swift_beginAccess();
  v68 = sub_21DBF8E0C();
  sub_21D323614(v68);
  swift_endAccess();
  v69 = v78;
  swift_beginAccess();
  v70 = sub_21DBF8E0C();
  sub_21D994410(v70, sub_21D65F928, 0, v69);
  swift_endAccess();

  return sub_21D0CF7E0(v80, &qword_27CE58D60);
}

id sub_21D990CCC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(a1 + 32);

  v8 = a2;
  v7();

  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_21DBF55BC();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_21D990E1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21D9C50E0(a2, v5);
  return sub_21D0CF7E0(v5, &unk_27CE60DA0);
}

void sub_21D990F08(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = [*(*a1 + 16) saveRequest];
  v3 = [v2 store];

  sub_21D0D8CF0(0, &qword_280D17880);
  v4 = sub_21DBFA5DC();
  v33[0] = 0;
  v5 = [v3 fetchRemindersWithObjectIDs:v4 error:v33];

  v6 = v33[0];
  if (v5)
  {
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D183A0C();
    v7 = sub_21DBF9E6C();
    v8 = v6;

    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = sub_21DBFC21C();
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v7 = v9 | 0x8000000000000000;
    }

    else
    {
      v23 = -1 << *(v7 + 32);
      v10 = v7 + 64;
      v11 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v12 = v25 & *(v7 + 64);
    }

    v26 = 0;
    v27 = (v11 + 64) >> 6;
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v28 = v26;
      v29 = v12;
      v30 = v26;
      if (!v12)
      {
        break;
      }

LABEL_16:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v7 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v32)
      {
LABEL_22:
        sub_21D0CFAF8();
        return;
      }

      while (1)
      {
        TTRListEditor.remove(reminder:)(v32);

        v26 = v30;
        v12 = v31;
        if ((v7 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        if (sub_21DBFC2DC())
        {
          swift_unknownObjectRelease();
          swift_dynamicCast();
          v32 = v33[0];
          v30 = v26;
          v31 = v12;
          if (v33[0])
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        goto LABEL_22;
      }

      v29 = *(v10 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = v33[0];
    v1 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56F08 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_27CE646A0);
  v15 = v1;
  v16 = sub_21DBF84AC();
  v17 = sub_21DBFAEBC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33[0] = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v20 = sub_21DBFC75C();
    v22 = sub_21D0CDFB4(v20, v21, v33);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_21D0C9000, v16, v17, "TTRRemindersListAttributeEditor#setCompleted: Failed to fetch the cloned reminder {error: %s}", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223D46520](v19, -1, -1);
    MEMORY[0x223D46520](v18, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D99131C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 64);
  if (v3)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    swift_beginAccess();
    v7 = *(a3 + 16);
    v8[0] = v6;
    v8[1] = v7;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v3(v8);
  }

  return result;
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.setFlagged(_:)(Swift::Bool a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5[16] = a1;
  (*(v4 + 16))(0, sub_21D9948F0, v5, 0, 0, 0, 0, v3, v4);
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.setTitle(_:locale:registeringUndo:)(NSAttributedString _, Swift::String_optional locale, Swift::Bool registeringUndo)
{
  object = locale.value._object;
  countAndFlagsBits = locale.value._countAndFlagsBits;
  v8 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v8);
  isa = _.super.isa;
  v12 = countAndFlagsBits;
  v13 = object;
  v14 = registeringUndo;
  (*(v9 + 16))(0, sub_21D99494C, v10, 0, 0, 0, 0, v8, v9);
}

uint64_t sub_21D991518(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  if (a4 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a4;
  }

  sub_21DBF8E0C();
  v9 = sub_21D9CA3E0(a2, v7, v8);

  if (a5)
  {
    if (v9)
    {
      swift_retain_n();
      sub_21D182E74(sub_21D233058, v9);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_21D991604(uint64_t a1, void *a2)
{
  result = sub_21D9C7928(a2);
  if (result)
  {
    v3 = result;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v3);
  }

  return result;
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.removeAllAssignments()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(0, sub_21D9916EC, 0, 0, 0, 0, 0, v1, v2);
}

uint64_t sub_21D991740(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  TTRReminderEditor.edit(toMatch:now:)(a2, v6);
  return (*(v4 + 8))(v6, v3);
}

id sub_21D99184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a5 & 1;
  result = sub_21D9D7AEC(v9, 1);
  if (result)
  {
    v7 = result;
    v8 = v6;

    if (v8)
    {

      sub_21D182E74(sub_21D233058, v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21D991928(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v11 = v9;
  v12 = v4;
  v13 = v5;
  return (*(v7 + 16))(0, a2, v10, 0, 0, 0, 0, v6, v7);
}

void *sub_21D9919CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v9 = a5 & 1;
  result = sub_21D9C7BBC(v8, 1);
  if (result)
  {
    v7 = v6;

    sub_21D182E74(sub_21D23298C, v7);
  }

  return result;
}

uint64_t sub_21D991A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v11 = a1;
  v12 = a2;
  return (*(v8 + 16))(0, a3, v10, 0, 0, 0, 0, v7, v8);
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.edit(tagged:withHashtagNamed:)(Swift::Bool tagged, Swift::String withHashtagNamed)
{
  object = withHashtagNamed._object;
  countAndFlagsBits = withHashtagNamed._countAndFlagsBits;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v8[16] = tagged;
  v9 = countAndFlagsBits;
  v10 = object;
  (*(v7 + 16))(0, sub_21D994A4C, v8, 0, 0, 0, 0, v6, v7);
}

Swift::Void __swiftcall TTRRemindersListAttributeEditor.addAttributes(from:isForNewReminder:)(Swift::OpaquePointer from, Swift::Bool isForNewReminder)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  rawValue = from._rawValue;
  v9 = isForNewReminder;
  (*(v6 + 16))(0, sub_21D994A7C, v7, 0, 0, 0, 0, v5, v6);
}

void sub_21D991C50(uint64_t a1, unint64_t a2, char a3)
{
  if (a2 >> 62)
  {
    v6 = sub_21DBFBD7C();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](i, a2);
      }

      else
      {
        v8 = *(a2 + 8 * i + 32);
      }

      v9 = v8;
      TTRRemindersListImportedContent.applyToReminder(with:isForNewReminder:)(a1, a3 & 1);
    }
  }
}

uint64_t sub_21D991DA4(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v9 = a1;
  return (*(v6 + 16))(0, a2, v8, 0, 0, 0, 0, v5, v6);
}

void sub_21D991E30(int a1, id a2)
{
  v2 = [a2 objectID];
  v3 = 1;
}

uint64_t TTRRemindersListAttributeEditor.setURL(_:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v7 = a1;
  return (*(v4 + 16))(0, sub_21D994B44, v6, 0, 0, 0, 0, v3, v4);
}

uint64_t sub_21D991F3C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  TTRReminderEditor.edit(url:)(v5);
  return sub_21D0CF7E0(v5, &qword_27CE5EA20);
}

uint64_t TTRRemindersListAttributeEditor.setLinkMetadata(_:for:)(void *a1, void *a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();

  v6 = a1;
  v7 = a2;
  return sub_21DBF911C();
}

uint64_t sub_21D992104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = a3[5];
  v12 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v11);
  v17 = a4;
  v18 = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D1D1AB4;
  *(v13 + 24) = v10;
  v14 = *(v12 + 16);

  v14(0, sub_21D995530, v16, 0, 0, sub_21D77BB54, v13, v11, v12);
}

uint64_t sub_21D992220(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  v6[2] = a1;
  return (*(v4 + 24))(a1, sub_21D995944, v6, v3, v4);
}

uint64_t sub_21D9922C8(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v4);
  v7[16] = a1;
  return sub_21D98FA48(sub_21D995940, v7, v4, v5);
}

uint64_t sub_21D992354(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  v11 = *(v9 + 48);
  __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v14 = a4;
  return sub_21D98FA48(sub_21D9958F0, v13, v10, v11);
}

uint64_t sub_21D9923FC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  return sub_21D98FA48(sub_21D9916EC, 0, v2, v3);
}

uint64_t sub_21D9924B8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v12 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  v9 = *(*v4 + 40);
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v14 = v12;
  v15 = v7;
  v16 = v8;
  return sub_21D98FA48(a4, v13, v9, v10);
}

uint64_t sub_21D992558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *(*v5 + 40);
  v11 = *(v9 + 48);
  __swift_project_boxed_opaque_existential_1((v9 + 16), v10);
  v13[2] = a1;
  v13[3] = a2;
  return sub_21D98FA48(a5, v13, v10, v11);
}

uint64_t sub_21D9925E4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(v7 + 48);
  __swift_project_boxed_opaque_existential_1((v7 + 16), v8);
  v11[16] = a1;
  v12 = a2;
  v13 = a3;
  return sub_21D98FA48(sub_21D995904, v11, v8, v9);
}

uint64_t sub_21D99266C(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(v5 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v6);
  v9[2] = a1;
  v10 = a2;
  return sub_21D98FA48(sub_21D995914, v9, v6, v7);
}

uint64_t sub_21D992760(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v4);
  v7[2] = a1;
  return sub_21D98FA48(sub_21D995924, v7, v4, v5);
}

uint64_t sub_21D9927EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v9 = *(v7 + 48);
  __swift_project_boxed_opaque_existential_1((v7 + 16), v8);
  v11[2] = a1;
  return sub_21D98FA48(a4, v11, v8, v9);
}

uint64_t sub_21D992854(void *a1, void *a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();

  v7 = a1;
  v8 = a2;
  return sub_21DBF911C();
}

uint64_t sub_21D992908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D995408;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D99299C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D359BDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.didEdit.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.didEdit.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_21D0D0E88(v5);
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.init(reminderChangeItems:undoContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  v3 = *(a2 + 16);
  *(v2 + 40) = *a2;
  *(v2 + 56) = v3;
  *(v2 + 72) = *(a2 + 32);
  return v2;
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.edit(preparingToMutateOrderInLists:with:concludeEditing:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (!sub_21DBFBD7C())
      {
        goto LABEL_10;
      }
    }

    else if (!*(a1 + 16))
    {
      goto LABEL_10;
    }

    if (qword_27CE56F08 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  while (1)
  {
LABEL_10:
    v16 = *(v7 + 16);
    if (v16 >> 62)
    {
      v17 = sub_21DBFBD7C();
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    if (v17 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_7:
    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE646A0);
    sub_21DBF8E0C();
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31[0] = v12;
      *v11 = 136315138;
      sub_21D0D8CF0(0, &qword_280D17880);
      sub_21D183A0C();
      v13 = sub_21DBFAABC();
      v15 = sub_21D0CDFB4(v13, v14, v31);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21D0C9000, v9, v10, "TTRRemindersListChangeItemAttributeEditorProvider does not support list order mutation preparation { listIDs: %s }", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x223D44740](v18, v16);
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    sub_21D0D3954(v7 + 40, v31, &unk_27CE60D80);
    sub_21D0D3954(v31, v30, &unk_27CE60D80);
    type metadata accessor for TTRReminderEditor();
    v21 = swift_allocObject();
    *(v21 + 72) = 0;
    *(v21 + 16) = v20;
    sub_21D0D3954(v30, v21 + 24, &unk_27CE60D80);
    *(v21 + 64) = 0;
    v22 = v20;
    v23 = [v22 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v30, &unk_27CE60D80);
    sub_21D0CF7E0(v31, &unk_27CE60D80);
    v24 = *(v21 + 72);
    *(v21 + 72) = v23;

    a2(v21);
  }

  while (v17 != v18);
LABEL_19:
  if (a4)
  {
    a4();
  }

  result = swift_beginAccess();
  v26 = *(v7 + 24);
  if (v26)
  {

    v26(v16);
    result = sub_21D0D0E88(v26);
  }

  if (a6)
  {
    return a6(0);
  }

  return result;
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.edit(preparingDateChange:with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    v15 = a2;
    result = sub_21DBFBD7C();
    a2 = v15;
    if (!result)
    {
      goto LABEL_18;
    }

LABEL_3:
    v16 = a2;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D44740](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v5 = *(v3 + 32);
    }

    v6 = v5;
    v7 = [v5 saveRequest];
    v8 = [v7 store];

    if (v3 >> 62)
    {
      v9 = sub_21DBFBD7C();
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x277D84F90];
    if (!v9)
    {
LABEL_17:
      sub_21D993114(v10, v8);

      a2 = v16;
      goto LABEL_18;
    }

    v17 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v11, v3);
        }

        else
        {
          v12 = *(v3 + 8 * v11 + 32);
        }

        v13 = v12;
        ++v11;
        v14 = [v12 storage];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v9 != v11);
      v10 = v17;
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_3;
  }

LABEL_18:

  return sub_21D98F858(a2);
}

uint64_t sub_21D993114(unint64_t a1, void *a2)
{
  v72 = a2;
  v76[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for TTRDateChangeType();
  MEMORY[0x28223BE20](v4);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D450204(v2, v6);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_21D1A94E8(v6);
  }

  v76[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_32:
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v74 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v10, a1);
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          goto LABEL_31;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ([v12 hasUnfetchedDueDateDeltaAlerts])
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v11 = v74;
      }

      else
      {
      }

      ++v10;
    }

    while (v14 != v8);
    v15 = v76[0];
    v9 = MEMORY[0x277D84F90];
    if ((v76[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_19:
      if ((v15 & 0x4000000000000000) == 0)
      {
        v16 = *(v15 + 16);
        if (!v16)
        {
          goto LABEL_34;
        }

LABEL_21:
        v76[0] = v9;
        sub_21D18EFE4(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_77;
        }

        v17 = 0;
        v18 = v76[0];
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x223D44740](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = [v19 remObjectID];
          v76[0] = v18;
          v23 = v18[2];
          v22 = v18[3];
          if (v23 >= v22 >> 1)
          {
            v25 = v21;
            sub_21D18EFE4((v22 > 1), v23 + 1, 1);
            v21 = v25;
            v18 = v76[0];
          }

          ++v17;
          v18[2] = v23 + 1;
          v24 = &v18[2 * v23];
          v24[4] = v21;
          v24[5] = v20;
        }

        while (v16 != v17);
        v9 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }
    }
  }

  v16 = sub_21DBFBD7C();
  if (v16)
  {
    goto LABEL_21;
  }

LABEL_34:
  if (v9[2])
  {
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A50);
    v26 = sub_21DBFC40C();
    goto LABEL_36;
  }

  v26 = MEMORY[0x277D84F98];
LABEL_36:
  v76[0] = v26;
  v27 = sub_21DBF8E0C();
  v28 = v73;
  sub_21D994088(v27, 1, v76);
  v73 = v28;
  if (!v28)
  {

    v29 = v76[0];
    if (v16)
    {
      v76[0] = v9;
      sub_21DBFC01C();
      if (v16 < 0)
      {
        goto LABEL_78;
      }

      v30 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x223D44740](v30, v15);
        }

        else
        {
          v31 = *(v15 + 8 * v30 + 32);
        }

        v32 = v31;
        ++v30;
        v33 = [v31 remObjectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v16 != v30);
    }

    v34 = sub_21D0D8CF0(0, &qword_280D17880);
    v35 = sub_21DBFA5DC();

    v36 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
    v76[0] = 0;
    v37 = [v72 fetchRemindersWithObjectIDs:v35 fetchOptions:v36 error:v76];

    v38 = v76[0];
    if (!v37)
    {
      v46 = v76[0];

      sub_21DBF52DC();

      return swift_willThrow();
    }

    v39 = sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D183A0C();
    v70[3] = v39;
    v40 = sub_21DBF9E6C();
    v41 = v38;

    v70[4] = v34;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = sub_21DBFC21C() | 0x8000000000000000;
    }

    else
    {
      v47 = -1 << *(v40 + 32);
      v43 = ~v47;
      v42 = v40 + 64;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v44 = v49 & *(v40 + 64);
      v45 = v40;
    }

    v70[2] = v40;
    sub_21DBF8E0C();
    v50 = 0;
    v70[1] = v43;
    v71 = v29 & 0xC000000000000001;
    v72 = v45;
    while (1)
    {
      if ((v45 & 0x8000000000000000) != 0)
      {
        v58 = sub_21DBFC2DC();
        if (!v58 || (v60 = v59, v75 = v58, swift_dynamicCast(), v52 = v76[0], v75 = v60, swift_dynamicCast(), v51 = v76[0], v74 = v44, !v52))
        {
LABEL_74:
          sub_21D0CFAF8();
        }
      }

      else
      {
        v53 = v50;
        v54 = v44;
        if (!v44)
        {
          while (1)
          {
            v50 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            if (v50 >= ((v43 + 64) >> 6))
            {
              goto LABEL_74;
            }

            v54 = *(v42 + 8 * v50);
            ++v53;
            if (v54)
            {
              goto LABEL_60;
            }
          }

          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
        }

LABEL_60:
        v74 = (v54 - 1) & v54;
        v55 = (v50 << 9) | (8 * __clz(__rbit64(v54)));
        v56 = *(*(v45 + 48) + v55);
        v57 = *(*(v45 + 56) + v55);
        v52 = v56;
        v51 = v57;
        if (!v52)
        {
          goto LABEL_74;
        }
      }

      if (v71)
      {
        v61 = v52;
        v62 = sub_21DBFC2CC();

        if (!v62)
        {
          goto LABEL_54;
        }

        v75 = v62;
        sub_21D0D8CF0(0, &qword_27CE5A390);
        swift_dynamicCast();
        v63 = v76[0];
        if (!v76[0])
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!*(v29 + 16))
        {
          goto LABEL_54;
        }

        v64 = sub_21D17E07C(v52);
        if ((v65 & 1) == 0)
        {
          goto LABEL_54;
        }

        v63 = *(*(v29 + 56) + 8 * v64);
        if (!v63)
        {
          goto LABEL_54;
        }
      }

      v66 = [v51 dueDateDeltaAlertContext];
      if (v66)
      {
        v67 = v66;
        v68 = [v66 dueDateDeltaAlerts];

        if (v68)
        {
          sub_21D0D8CF0(0, &qword_27CE59818);
          v70[0] = v29;
          sub_21DBFA5EC();

          v29 = v70[0];
          v69 = sub_21DBFA5DC();

          [v63 setFetchedDueDateDeltaAlerts_];

          v51 = v52;
          v52 = v63;
          v63 = v69;
        }
      }

      v51 = v52;
      v52 = v63;
LABEL_54:

      v45 = v72;
      v44 = v74;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.deinit()
{

  sub_21D0D0E88(*(v0 + 24));
  sub_21D0CF7E0(v0 + 40, &unk_27CE60D80);
  return v0;
}

uint64_t TTRRemindersListChangeItemAttributeEditorProvider.__deallocating_deinit()
{

  sub_21D0D0E88(*(v0 + 24));
  sub_21D0CF7E0(v0 + 40, &unk_27CE60D80);

  return swift_deallocClassInstance();
}

void sub_21D993A48(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 40);
  v10 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v11 = [v10 setSaveIsNoopIfNoChangedKeys_];
  if (a1)
  {
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(a1);
  }

  v32 = v10;
  if (v9 >> 62)
  {
    v11 = sub_21DBFBD7C();
    v12 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v13 = 0;
  v30 = v9 & 0xC000000000000001;
  v14 = v9;
  do
  {
    if (v30)
    {
      v15 = MEMORY[0x223D44740](v13, v9);
    }

    else
    {
      v15 = *(v9 + 8 * v13 + 32);
    }

    v16 = v15;
    ++v13;
    sub_21D0D3954(v33 + 48, aBlock, &unk_27CE60D80);
    v17 = v32;
    v18 = [v17 updateReminder_];
    sub_21D0D3954(aBlock, v35, &unk_27CE60D80);
    type metadata accessor for TTRReminderEditor();
    v19 = swift_allocObject();
    *(v19 + 72) = 0;
    *(v19 + 16) = v18;
    sub_21D0D3954(v35, v19 + 24, &unk_27CE60D80);
    *(v19 + 64) = 0;
    v20 = v18;
    v21 = [v20 fetchedCurrentDueDateDeltaAlert];

    sub_21D0CF7E0(v35, &unk_27CE60D80);
    sub_21D0CF7E0(aBlock, &unk_27CE60D80);
    v22 = *(v19 + 72);
    *(v19 + 72) = v21;

    a2(v19);

    v9 = v14;
  }

  while (v12 != v13);
LABEL_12:
  if (a4)
  {
    a4(v11);
  }

  sub_21D0D8CF0(0, &qword_280D1B900);
  v23 = sub_21DBFB12C();
  v24 = swift_allocObject();
  v24[2] = v9;
  v24[3] = a6;
  v24[4] = a7;
  aBlock[4] = sub_21D1D1AC8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_124;
  v25 = _Block_copy(aBlock);
  sub_21DBF8E0C();
  sub_21D0D0E78(a6);

  [v32 saveWithQueue:v23 completion:v25];
  _Block_release(v25);

  v26 = *(v33 + 16);
  if (v26)
  {

    v26(v9);
    sub_21D0D0E88(v26);
  }
}

void sub_21D993DA8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 40);
  if (v7 >> 62)
  {
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v14 = a2;
    v15 = a3;
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 storage];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v8 != v10);
    v9 = v16;
    a2 = v14;
    a3 = v15;
  }

  sub_21D993114(v9, *(v4 + 32));

  sub_21D993A48(0, a2, a3, 0, 0, 0, 0);
}

uint64_t sub_21D993F38()
{
  sub_21D0D0E88(*(v0 + 16));

  sub_21D0CF7E0(v0 + 48, &unk_27CE60D80);

  return swift_deallocClassInstance();
}

unint64_t sub_21D993FF0@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_21DBFC21C();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_21D994088(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_21D17E07C(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_21D21AB1C(v16, v6 & 1);
    v11 = sub_21D17E07C(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_21D0D8CF0(0, &qword_280D17880);
    v11 = sub_21DBFC70C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_21D22349C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD00000000000001BLL, 0x800000021DC448B0);
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](39, 0xE100000000000000);
    sub_21DBFC31C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_21D17E07C(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_21D21AB1C(v32, 1);
        v28 = sub_21D17E07C(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_21D994410(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    sub_21DBF8E0C();
    v11 = sub_21DBFBD7C();
    v14 = sub_21D984914(v10, v11);
    sub_21D99555C(a1, a2, a3, 1, &v14);
    if (v4)
    {
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a4;
    sub_21D99555C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v14);
  }

  *a4 = v14;
  return result;
}

void sub_21D99453C(void *a1, unint64_t a2, int a3, char a4, uint64_t a5, unint64_t *a6)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_21DBFC2BC();
      sub_21D0D8CF0(0, &qword_280D17880);
      swift_dynamicCast();
      sub_21D0D8CF0(0, a6);
      swift_dynamicCast();
      *a1 = v15;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_21DBFC26C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_21DBFC27C();
  sub_21D0D8CF0(0, &qword_280D17880);
  swift_dynamicCast();
  a2 = sub_21D17E07C(v15);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v12 = *(*(a5 + 48) + 8 * a2);
  v13 = *(*(a5 + 56) + 8 * a2);
  *a1 = v13;
  v12;
  v14 = v13;
}

uint64_t *sub_21D994720(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  return a2;
}

uint64_t *sub_21D994790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_0, v9, a3);
  return v10;
}

void sub_21D994A88(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value._rawValue = *(v3 + 16);
  v4.is_nil = 0;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v4, a3);
}

void *destroy for TTRRemindersListSetCompletedOptions(void *result)
{
  v1 = result;
  if (*result)
  {
  }

  if (v1[2])
  {
  }

  if (v1[4])
  {
  }

  if (v1[6])
  {
  }

  if (v1[8])
  {
  }

  return result;
}

void *initializeWithCopy for TTRRemindersListSetCompletedOptions(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = a2[4];
  if (v7)
  {
    v8 = a2[5];
    a1[4] = v7;
    a1[5] = v8;
  }

  else
  {
    *(a1 + 2) = *(a2 + 2);
  }

  v9 = a2[6];
  if (v9)
  {
    v10 = a2[7];
    a1[6] = v9;
    a1[7] = v10;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  v11 = a2[8];
  if (v11)
  {
    v12 = a2[9];
    a1[8] = v11;
    a1[9] = v12;
  }

  else
  {
    *(a1 + 4) = *(a2 + 4);
  }

  return a1;
}

void *assignWithCopy for TTRRemindersListSetCompletedOptions(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (a1[2])
  {
    if (v7)
    {
      v8 = a2[3];
      a1[2] = v7;
      a1[3] = v8;

      goto LABEL_15;
    }
  }

  else if (v7)
  {
    v9 = a2[3];
    a1[2] = v7;
    a1[3] = v9;

    goto LABEL_15;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_15:
  v10 = a2[4];
  if (a1[4])
  {
    if (v10)
    {
      v11 = a2[5];
      a1[4] = v10;
      a1[5] = v11;

      goto LABEL_22;
    }
  }

  else if (v10)
  {
    v12 = a2[5];
    a1[4] = v10;
    a1[5] = v12;

    goto LABEL_22;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_22:
  v13 = a2[6];
  if (a1[6])
  {
    if (v13)
    {
      v14 = a2[7];
      a1[6] = v13;
      a1[7] = v14;

      goto LABEL_29;
    }
  }

  else if (v13)
  {
    v15 = a2[7];
    a1[6] = v13;
    a1[7] = v15;

    goto LABEL_29;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_29:
  v16 = a2[8];
  if (!a1[8])
  {
    if (v16)
    {
      v18 = a2[9];
      a1[8] = v16;
      a1[9] = v18;

      return a1;
    }

LABEL_35:
    *(a1 + 4) = *(a2 + 4);
    return a1;
  }

  if (!v16)
  {

    goto LABEL_35;
  }

  v17 = a2[9];
  a1[8] = v16;
  a1[9] = v17;

  return a1;
}

void *assignWithTake for TTRRemindersListSetCompletedOptions(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (a1[2])
  {
    if (v7)
    {
      v8 = a2[3];
      a1[2] = v7;
      a1[3] = v8;

      goto LABEL_15;
    }
  }

  else if (v7)
  {
    v9 = a2[3];
    a1[2] = v7;
    a1[3] = v9;
    goto LABEL_15;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_15:
  v10 = a2[4];
  if (a1[4])
  {
    if (v10)
    {
      v11 = a2[5];
      a1[4] = v10;
      a1[5] = v11;

      goto LABEL_22;
    }
  }

  else if (v10)
  {
    v12 = a2[5];
    a1[4] = v10;
    a1[5] = v12;
    goto LABEL_22;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_22:
  v13 = a2[6];
  if (a1[6])
  {
    if (v13)
    {
      v14 = a2[7];
      a1[6] = v13;
      a1[7] = v14;

      goto LABEL_29;
    }
  }

  else if (v13)
  {
    v15 = a2[7];
    a1[6] = v13;
    a1[7] = v15;
    goto LABEL_29;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_29:
  v16 = a2[8];
  if (!a1[8])
  {
    if (v16)
    {
      v18 = a2[9];
      a1[8] = v16;
      a1[9] = v18;
      return a1;
    }

LABEL_35:
    *(a1 + 4) = *(a2 + 4);
    return a1;
  }

  if (!v16)
  {

    goto LABEL_35;
  }

  v17 = a2[9];
  a1[8] = v16;
  a1[9] = v17;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListSetCompletedOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for TTRRemindersListSetCompletedOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D995434(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_21D9954A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

unint64_t sub_21D99555C(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_21D993FF0(a1, a2, a3, &v42);
  sub_21DBF8E0C();

  v7 = sub_21DA5F51C();
  if (!v7)
  {
    goto LABEL_22;
  }

  v9 = v7;
  v10 = v8;
  v11 = *a5;
  result = sub_21D17E07C(v7);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_21D21BEE4(v17, a4 & 1);
    result = sub_21D17E07C(v9);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_21D0D8CF0(0, &qword_280D17880);
    result = sub_21DBFC70C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_21D2240D0();
    result = v24;
    v20 = *a5;
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

LABEL_7:
  v20 = *a5;
  if (v18)
  {
LABEL_8:
    v21 = result;

    v22 = v20[7];
    v23 = *(v22 + 8 * v21);
    *(v22 + 8 * v21) = v10;

    goto LABEL_12;
  }

LABEL_10:
  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = v9;
  *(v20[7] + 8 * result) = v10;
  v25 = v20[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v16)
  {
    v20[2] = v26;
LABEL_12:
    v27 = sub_21DA5F51C();
    if (v27)
    {
      v9 = v27;
      v10 = v28;
      v18 = 1;
      do
      {
        v33 = *a5;
        result = sub_21D17E07C(v9);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v16 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v16)
        {
          goto LABEL_23;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_21D21BEE4(v37, 1);
          result = sub_21D17E07C(v9);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_5;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = v39[7];
          v31 = *(v30 + 8 * v29);
          *(v30 + 8 * v29) = v10;
        }

        else
        {
          v39[(result >> 6) + 8] |= 1 << result;
          *(v39[6] + 8 * result) = v9;
          *(v39[7] + 8 * result) = v10;
          v40 = v39[2];
          v16 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v39[2] = v41;
        }

        v9 = sub_21DA5F51C();
        v10 = v32;
      }

      while (v9);
    }

LABEL_22:
    sub_21D0CFAF8();
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21D9957F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D995868(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21D990E1C(a1, v4);
}

uint64_t TTRPotentiallyLongOperationPerformer.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_21DBF563C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v4[10] = swift_task_alloc();
  sub_21DBFA84C();
  v4[11] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x2822009F8](sub_21D995A84, v7, v6);
}

uint64_t sub_21D995A84()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[3];
  v5 = v2[4];
  v4 = v2[5];
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = v2[2];
  v0[15] = v7;
  v8 = sub_21DBFA89C();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = sub_21D0E6070;
  v9[6] = v6;

  v0[16] = sub_21D3932A8(0, 0, v1, &unk_21DC2A950, v9);
  sub_21D0EC98C(v1);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v13 = (v3 + *v3);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_21D995C8C;
  v11 = v0[2];

  return v13(v11);
}

uint64_t sub_21D995C8C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21D995DAC, v3, v2);
}

uint64_t sub_21D995DAC()
{
  v1 = *(v0 + 40);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  if (*(v1 + 24) == 1 && (v2 = *(v0 + 120), sub_21DBF558C(), v2 + 5.0 - v3 > 0.0))
  {
    v4 = sub_21DBFC86C();
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_21D995F74;

    return MEMORY[0x282200480](v4);
  }

  else
  {
    v6 = *(v0 + 40);
    sub_21DBFA96C();
    v9 = (*(v6 + 48) + **(v6 + 48));
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_21D9961A8;

    return v9();
  }
}

uint64_t sub_21D995F74()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_21D996A60;
  }

  else
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_21D996098;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D996098()
{
  v1 = *(v0 + 40);
  sub_21DBFA96C();
  v4 = (*(v1 + 48) + **(v1 + 48));
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_21D9961A8;

  return v4();
}

uint64_t sub_21D9961A8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21D9962C8, v3, v2);
}

uint64_t sub_21D9962C8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21D9963A4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE646C0);
  v1 = __swift_project_value_buffer(v0, qword_27CE646C0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRPotentiallyLongOperationPerformer.__allocating_init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = a5;
  return result;
}

uint64_t TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a6;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  return v6;
}

uint64_t sub_21D9964F0(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_21DBFA84C();
  *(v3 + 40) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return MEMORY[0x2822009F8](sub_21D99658C, v5, v4);
}

uint64_t sub_21D99658C()
{
  v1 = sub_21DBFC86C();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21D99662C;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_21D99662C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_21D9967D4;
  }

  else
  {
    v5 = sub_21D996768;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D996768()
{
  v1 = *(v0 + 24);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21D9967D4()
{

  if (qword_27CE56F10 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE646C0);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEAC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 72);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTRPotentiallyLongOperationPerformer: activity UI cancelled", v6, 2u);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21D9968FC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_21D1B795C;

  return sub_21D9964F0(a5, a6, a1);
}

uint64_t TTRPotentiallyLongOperationPerformer.deinit()
{

  return v0;
}

uint64_t TTRPotentiallyLongOperationPerformer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTREditingStateOption.InputType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D996AF4()
{
  result = qword_27CE646D8;
  if (!qword_27CE646D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE646D8);
  }

  return result;
}

uint64_t sub_21D996B68(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_21DBF8E0C();
    sub_21D29B8E4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_21D996C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = 0;
  v21[1] = a2;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_21D1D338C(*(a1 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v13);
    sub_21D24BDFC(v13, v7);
    sub_21D29DF04(v10, v7);
    sub_21D24B040(v10);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_21D996E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF686C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_21D29E22C(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D99704C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE646E0);
  v1 = __swift_project_value_buffer(v0, qword_27CE646E0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D997164(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D9971D0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
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

uint64_t sub_21D9972A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  MEMORY[0x28223BE20](v3);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = *(*v10 + 96);
  swift_beginAccess();
  sub_21D0D3954(v10 + v11, v8, &qword_27CE5C268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5C268);
LABEL_4:
    v12 = sub_21DBF700C();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  sub_21D9974F4(v8, v5);

  v14 = sub_21DBF700C();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t sub_21D9974F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRShowTaggedDataModelSource.__allocating_init(store:initialHashtagLabels:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v28 = a5;
  v9 = sub_21DBF6C1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor) = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshInitiator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  swift_allocObject();
  *(v13 + v14) = sub_21DBF907C();
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshSubscription) = 0;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection) = 1;
  v15 = *(v10 + 16);
  v29 = a2;
  v15(v12, a2, v9);
  type metadata accessor for TTRShowTaggedDataModelSourceHashtagContext(0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection, v12, v9);
  *(v16 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels) = MEMORY[0x277D84F90];
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store) = a1;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance) = v16;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_countCompleted) = a3;
  v17 = qword_280D1AA10;
  v18 = a1;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v20 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance) = sub_21D193548(5, 2u, v19, v20);
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 18) = 0;
  *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_tipKitContextInstance) = v21;
  v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v23 = sub_21DBF70DC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v13 + v22, a4, v23);
  *(v13 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v13 + 16) = v28 & 1;
  swift_beginAccess();
  *(v16 + 24) = &protocol witness table for TTRShowTaggedDataModelSource;
  swift_unknownObjectWeakAssign();
  v25 = *(v13 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance);
  swift_beginAccess();
  *(v25 + 24) = &protocol witness table for TTRShowTaggedDataModelSource;
  swift_unknownObjectWeakAssign();

  sub_21D99A2F4();
  v30 = 10;
  sub_21D99953C(&v30);

  (*(v24 + 8))(a4, v23);
  (*(v10 + 8))(v29, v9);
  return v13;
}

uint64_t TTRShowTaggedDataModelSource.init(store:initialHashtagLabels:countCompleted:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v6 = v5;
  v29 = a5;
  v11 = sub_21DBF6C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor) = 0;
  v15 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshInitiator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  swift_allocObject();
  *(v5 + v15) = sub_21DBF907C();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshSubscription) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection) = 1;
  v16 = *(v12 + 16);
  v30 = a2;
  v16(v14, a2, v11);
  type metadata accessor for TTRShowTaggedDataModelSourceHashtagContext(0);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  (*(v12 + 32))(v17 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection, v14, v11);
  *(v17 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store) = a1;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance) = v17;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_countCompleted) = a3;
  v18 = qword_280D1AA10;
  v19 = a1;

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v21 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance) = sub_21D193548(5, 2u, v20, v21);
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 18) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_tipKitContextInstance) = v22;
  v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v24 = sub_21DBF70DC();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6 + v23, a4, v24);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = v29 & 1;
  swift_beginAccess();
  *(v17 + 24) = &protocol witness table for TTRShowTaggedDataModelSource;
  swift_unknownObjectWeakAssign();
  v26 = *(v6 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance);
  swift_beginAccess();
  *(v26 + 24) = &protocol witness table for TTRShowTaggedDataModelSource;
  swift_unknownObjectWeakAssign();

  sub_21D99A2F4();
  v31 = 10;
  sub_21D99953C(&v31);

  (*(v25 + 8))(a4, v24);
  (*(v12 + 8))(v30, v11);
  return v6;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.__allocating_init(selection:allHashtagLabels:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels) = a2;
  return v4;
}

id sub_21D997E9C@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store);
  v3 = type metadata accessor for TTRTipKitDataModelSourceBase();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D997F14@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v35 = sub_21DBF70DC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF6C1C();
  v32 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v7 = sub_21DBF71BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  if (*(*(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance) + 40))
  {
    v15 = MEMORY[0x277D45468];
  }

  else
  {
    v15 = MEMORY[0x277D45470];
  }

  (*(v8 + 104))(v14, *v15, v7, v12);
  v33 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store);
  v16 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance);
  v17 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v4 + 16))(v6, v16 + v17, v3);
  (*(v8 + 16))(v10, v14, v7);
  v18 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v19 = v1 + v18;
  v20 = v34;
  v21 = v35;
  (*(v37 + 16))(v34, v19, v35);
  v22 = type metadata accessor for TTRShowTaggedPrintingDataModelSource(0);
  v23 = swift_allocObject();
  v24 = v32;
  v25 = v33;
  *(v23 + 16) = v33;
  (*(v4 + 32))(v23 + OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels, v31, v24);
  (*(v8 + 32))(v23 + OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_showCompleted, v10, v7);
  (*(v37 + 32))(v23 + OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_sortingStyle, v20, v21);
  v26 = v36;
  v36[3] = v22;
  v26[4] = &protocol witness table for TTRShowTaggedPrintingDataModelSource;
  *v26 = v23;
  v27 = *(v8 + 8);
  v28 = v25;
  return v27(v14, v7);
}

uint64_t TTRShowTaggedPrintingDataModelSource.__allocating_init(store:hashtagLabels:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels;
  v10 = sub_21DBF6C1C();
  (*(*(v10 - 8) + 32))(v8 + v9, a2, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v8 + v11, a3, v12);
  v13 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v8 + v13, a4, v14);
  return v8;
}

uint64_t sub_21D9983DC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v72 = sub_21DBF773C();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v68 - v5;
  v74 = sub_21DBFB1AC();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21DBF700C();
  v83 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v68 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v68 - v9;
  MEMORY[0x28223BE20](v10);
  v76 = &v68 - v11;
  v12 = sub_21DBF6A9C();
  v86 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v87 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF734C();
  v98 = *(v14 - 8);
  v99 = v14;
  MEMORY[0x28223BE20](v14);
  v85 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF70DC();
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x28223BE20](v16);
  v84 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21DBF74BC();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v100 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B80);
  v78 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v97 = &v68 - v19;
  v92 = sub_21DBF71BC();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v21 = (&v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_21DBF6C1C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v81 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v68 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  v31 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance);
  v32 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  v93 = v23;
  v33 = *(v23 + 16);
  v33(v30, v31 + v32, v22);

  v88 = sub_21D8526E8(v21);

  v95 = v30;
  v96 = v22;
  v80 = v33;
  v33(v27, v30, v22);
  sub_21D999290(v27, v100);
  v34 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v35 = v2 + v34;
  v36 = v86;
  v37 = v84;
  (*(v101 + 16))(v84, v35, v102);
  v38 = v85;
  (*(v98 + 104))(v85, *MEMORY[0x277D45500], v99);
  v39 = v87;
  (*(v36 + 104))(v87, *MEMORY[0x277D45310], v12);
  sub_21DBF702C();
  v40 = v75;
  v81 = v21;
  v41 = v36;
  v42 = v77;
  (*(v41 + 8))(v39, v12);
  (*(v98 + 8))(v38, v99);
  (*(v101 + 8))(v37, v102);
  (*(v89 + 8))(v100, v90);
  v43 = v76;
  v44 = v82;
  sub_21DBF76DC();
  v45 = sub_21DBF6F9C();
  v47 = v83 + 8;
  v46 = *(v83 + 8);
  v48 = v43;
  v49 = v79;
  v46(v48, v79);
  if (v45)
  {
    sub_21DBF76DC();
    sub_21DBF6FFC();
    v83 = v47;
    v46(v40, v49);
    v50 = v73;
    v51 = v74;
    v52 = (*(v73 + 48))(v42, 1, v74);
    v53 = v88;
    if (v52 != 1)
    {
      v56 = v69;
      (*(v50 + 32))(v69, v42, v51);
      v57 = v68;
      v58 = v50;
      v59 = v97;
      sub_21DBF76DC();
      v60 = v70;
      sub_21DBF6FBC();
      v46(v57, v79);
      v102 = sub_21DBF718C();
      (*(v71 + 8))(v60, v72);
      v61 = v45;
      v101 = sub_21DBFB18C();
      v62 = sub_21DBFB19C();
      v63 = sub_21DBFB17C();
      v65 = v64;

      (*(v58 + 8))(v56, v51);
      (*(v78 + 8))(v59, v82);
      (*(v91 + 8))(v81, v92);
      result = (*(v93 + 8))(v95, v96);
      v66 = v94;
      v67 = v101;
      *v94 = v102;
      *(v66 + 1) = v53;
      *(v66 + 2) = v45;
      *(v66 + 24) = 0;
      *(v66 + 4) = v67;
      *(v66 + 20) = v62;
      *(v66 + 6) = v63;
      *(v66 + 7) = v65;
      return result;
    }

    (*(v78 + 8))(v97, v82);
    (*(v91 + 8))(v81, v92);
    (*(v93 + 8))(v95, v96);
    result = sub_21D0CF7E0(v42, &qword_27CE58560);
  }

  else
  {

    (*(v78 + 8))(v97, v44);
    (*(v91 + 8))(v81, v92);
    result = (*(v93 + 8))(v95, v96);
  }

  v55 = v94;
  v94[2] = 0u;
  v55[3] = 0u;
  *v55 = 0u;
  v55[1] = 0u;
  return result;
}

uint64_t sub_21D999290@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21DBF6C1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D45378])
  {
    (*(v5 + 96))(v8, v4);
    v11 = *v8;
    v10 = *(v8 + 1);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50) + 64);
    v13 = sub_21DBF6C0C();
    v14 = (*(*(v13 - 8) + 88))(&v8[v12], v13);
    if (v14 == *MEMORY[0x277D45388])
    {
      (*(v5 + 8))(a1, v4);
      *a2 = v11;
      a2[1] = v10;
      v15 = MEMORY[0x277D45538];
LABEL_10:
      v16 = *v15;
      v17 = sub_21DBF74BC();
      return (*(*(v17 - 8) + 104))(a2, v16, v17);
    }

    if (v14 == *MEMORY[0x277D45390])
    {
      (*(v5 + 8))(a1, v4);
      *a2 = v11;
      a2[1] = v10;
      v15 = MEMORY[0x277D45540];
      goto LABEL_10;
    }
  }

  else
  {
    if (v9 == *MEMORY[0x277D45398])
    {
      (*(v5 + 8))(a1, v4);
      v15 = MEMORY[0x277D45550];
      goto LABEL_10;
    }

    if (v9 == *MEMORY[0x277D45380])
    {
      (*(v5 + 8))(a1, v4);
      v15 = MEMORY[0x277D45548];
      goto LABEL_10;
    }
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D99953C(unsigned __int8 *a1)
{
  v2 = v1;
  v77 = sub_21DBF70DC();
  v72 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v80 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21DBF71BC();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF6C1C();
  v85 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  v76 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v75 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v68 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v68 - v20;
  v22 = sub_21DBF773C();
  MEMORY[0x28223BE20](v22 - 8);
  v87 = sub_21DBF700C();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v88 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *a1;
  v24 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v83 = v24;
  v25 = *(v2 + v24);
  v82 = v6;
  if (v25)
  {
    v26 = v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = v8;
      v28 = *(v26 + 8);
      ObjectType = swift_getObjectType();
      v89[0] = v81;
      v30 = *(v28 + 8);
      v8 = v27;
      v6 = v82;
      (*(v30 + 16))(v89, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v31 = sub_21DBF72DC();
  (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  MEMORY[0x223D3FED0](MEMORY[0x277D84F90], v21, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v32 = sub_21DBFB1AC();
  (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
  sub_21DBF6FAC();
  v33 = *(v2 + v83);
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = *(*v33 + 104);
  swift_beginAccess();
  sub_21D0D3954(v33 + v34, v15, &qword_27CE5D3E8);
  if (v76[6](v15, 1, v8) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5D3E8);
LABEL_7:
    v35 = 0;
    goto LABEL_9;
  }

  v35 = *&v15[*(v8 + 48)];
  (*(v86 + 8))(v15, v87);
LABEL_9:
  v73 = v8;
  v36 = *(v8 + 48);
  v70 = *(v86 + 16);
  v68 = v86 + 16;
  v70(v12, v88, v87);
  v76 = v12;
  *(v12 + v36) = v35;
  v37 = v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v71 = v35;
  if (Strong)
  {
    v39 = *(v37 + 8);
    v40 = swift_getObjectType();
    v41 = *(v39 + 8);
    v42 = *(v41 + 8);
    v43 = v35;
    v44 = v42(v40, v41);
    LOBYTE(v40) = v45;
    swift_unknownObjectRelease();
    v46 = v79;
    v47 = v78;
    v48 = v74;
    if ((v40 & 1) == 0)
    {
      v69 = v44;
      goto LABEL_14;
    }
  }

  else
  {
    v49 = v35;
    v46 = v79;
    v47 = v78;
    v48 = v74;
  }

  v69 = 30;
LABEL_14:
  v79 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store);
  v50 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance);
  v51 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v85 + 16))(v84, v50 + v51, v6);
  v52 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_showCompletedContextInstance);
  if (*(v52 + 40) == 1)
  {
    (*(v47 + 104))(v48, *MEMORY[0x277D45468], v46);
  }

  else
  {
    swift_beginAccess();
    *v48 = *(v52 + 48);
    (*(v47 + 104))(v48, *MEMORY[0x277D45480], v46);
    sub_21DBF8E0C();
  }

  v53 = v48;
  v54 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_countCompleted);
  v55 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v56 = v72;
  v57 = v80;
  v58 = v77;
  (*(v72 + 16))(v80, v2 + v55, v77);
  type metadata accessor for TTRShowTaggedMonitorableDataView(0);
  v59 = swift_allocObject();
  *(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = 0;
  v60 = v79;
  *(v59 + 16) = v79;
  (*(v85 + 32))(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels, v84, v82);
  (*(v47 + 32))(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted, v53, v46);
  *(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted) = v54;
  (*(v56 + 32))(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle, v57, v58);
  *(v59 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount) = v69;
  v61 = *(v73 + 48);
  v62 = v75;
  v63 = v76;
  v64 = v87;
  v70(v75, v76, v87);
  *(v62 + v61) = v71;
  v65 = v83;
  swift_beginAccess();
  v66 = v60;
  sub_21D4FCE64((v2 + v65), v62, v59, v2, v81);
  sub_21D0CF7E0(v62, &qword_27CE5C270);
  swift_endAccess();

  sub_21D0CF7E0(v63, &qword_27CE5C270);
  return (*(v86 + 8))(v88, v64);
}

uint64_t TTRShowTaggedMonitorableDataView.__allocating_init(store:hashtagLabels:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = 0;
  *(v12 + 16) = a1;
  v13 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels;
  v14 = sub_21DBF6C1C();
  (*(*(v14 - 8) + 32))(v12 + v13, a2, v14);
  v15 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted;
  v16 = sub_21DBF71BC();
  (*(*(v16 - 8) + 32))(v12 + v15, a3, v16);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted) = a4;
  v17 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle;
  v18 = sub_21DBF70DC();
  (*(*(v18 - 8) + 32))(v12 + v17, a5, v18);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount) = a6;
  return v12;
}

void sub_21D99A168(void *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v1 + v3))
    {
      v4 = a1;

      v5 = sub_21DBF6E3C();
      sub_21D4F5F28(v5);
      v7 = v6;

      sub_21D4F9F64(v4, v7);
    }

    else
    {
      v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900);
      v9 = a1;
      v10 = v1;
      v11 = sub_21DBFB12C();
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = sub_21D87E81C(v8, sub_21D1947D8, v12, v9, v11);
      *(v10 + v3) = v13;

      swift_beginAccess();
      v13[3] = &protocol witness table for TTRShowTaggedDataModelSource;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_21D99A2F4()
{
  v1 = sub_21DBFB10C();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C848);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F260);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8);
  v25 = &v22 - v10;
  v35 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshInitiator);
  sub_21D0D8CF0(0, &qword_280D1B900);

  v11 = sub_21DBFB12C();
  v34 = v11;
  v12 = sub_21DBFB0DC();
  v13 = *(v12 - 8);
  v23 = *(v13 + 56);
  v24 = v13 + 56;
  v23(v5, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0);
  sub_21D0D65DC(&qword_280D17800, &qword_280D1B900);
  sub_21DBF936C();
  sub_21D0CF7E0(v5, &unk_27CE5F250);

  v14 = v26;
  sub_21DBFB0FC();
  v15 = sub_21DBFB12C();
  v35 = v15;
  v23(v5, 1, 1, v12);
  sub_21D0D0F1C(&qword_280D0C4F8, &qword_27CE5C848);
  v16 = v25;
  v17 = v27;
  sub_21DBF937C();
  sub_21D0CF7E0(v5, &unk_27CE5F250);

  (*(v32 + 8))(v14, v33);
  (*(v29 + 8))(v7, v17);
  type metadata accessor for TTRShowTaggedDataModelSource(0);
  sub_21D0D0F1C(&qword_280D0C540, &qword_27CE5F260);
  v18 = v28;
  v19 = v30;
  v20 = sub_21DBF91AC();
  (*(v31 + 8))(v16, v19);
  *(v18 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataModelAdhocRefreshSubscription) = v20;
}

uint64_t sub_21D99A7F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  if (*(a1 + v2))
  {

    sub_21D4FA904(sub_21D99A870, 0);
  }

  return result;
}

uint64_t sub_21D99A870(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (qword_27CE56F18 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE646E0);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRShowTaggedDataModelSource: replace data view w/ needsFetchLatestSmartListHashtagLabels=true", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  *a1 = sub_21D99EFA4(v3, 1);
  return 1;
}

uint64_t TTRShowTaggedMonitorableDataView.__allocating_init(source:needsFetchLatestSmartListHashtagLabels:)(uint64_t a1, int a2)
{
  v2 = sub_21D99EFA4(a1, a2);

  return v2;
}

uint64_t sub_21D99A9D0()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate);
}

uint64_t TTRShowTaggedDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowTaggedDataModelSource.__deallocating_deinit()
{
  TTRShowTaggedDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowTaggedDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
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
  sub_21D99953C(&v2);
}

uint64_t sub_21D99ACA8(char a1)
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
  return sub_21D99953C(&v3);
}

uint64_t TTRShowTaggedDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
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

uint64_t TTRShowTaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v119 = a4;
  v120 = a1;
  v7 = sub_21DBF6C1C();
  v114 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v113 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v117 = &v107 - v10;
  v116 = sub_21DBF78CC();
  v122 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v111 = &v107 - v13;
  MEMORY[0x28223BE20](v14);
  v121 = &v107 - v15;
  v16 = sub_21DBF773C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  MEMORY[0x28223BE20](v20);
  v115 = (&v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v118 = &v107 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v107 - v25;
  v27 = sub_21DBF700C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v124 = v27;
  v29(v26, a2);
  v125 = v20;
  v126 = v26;
  *&v26[*(v20 + 48)] = a3;
  v30 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v123 = v4;
  v31 = *(v4 + v30);
  if (!v31)
  {
    v45 = a3;
    return sub_21D0CF7E0(v126, &qword_27CE5C270);
  }

  v32 = a3;
  if (v31 == v120)
  {
    sub_21D99A168(a3);
    v33 = v118;
    sub_21D0D3954(v126, v118, &qword_27CE5C270);

    sub_21DBF6FBC();
    v34 = *(v28 + 8);
    v120 = v28 + 8;
    v110 = v34;
    v34(v33, v124);
    v35 = sub_21DBF716C();
    (*(v17 + 8))(v19, v16);
    v109 = v7;
    if (v35 >> 62)
    {
      if (sub_21DBFBD7C())
      {
        v36 = sub_21DBFBD7C();
        if (!v36)
        {

          v38 = MEMORY[0x277D84F90];
LABEL_15:
          v46 = v123;
          if (*(v38 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
            v47 = sub_21DBFC40C();
          }

          else
          {
            v47 = MEMORY[0x277D84F98];
          }

          v130 = v47;
          v48 = sub_21DBF8E0C();
          sub_21D1931C0(v48, 1, &v130);

          v49 = v130;
          v50 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
          swift_beginAccess();
          v51 = *(v46 + v50);
          v108 = 0;
          if (v51)
          {

            sub_21D188810(v49);
            v53 = v52;

            TTRBatchFetchManager<A>.override(objects:)(v53);
          }

          else
          {
          }

          goto LABEL_25;
        }

LABEL_5:
        v130 = MEMORY[0x277D84F90];
        sub_21D18E6B8(0, v36 & ~(v36 >> 63), 0);
        if (v36 < 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        v37 = 0;
        v38 = v130;
        do
        {
          if ((v35 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x223D44740](v37, v35);
          }

          else
          {
            v39 = *(v35 + 8 * v37 + 32);
          }

          v40 = v39;
          v41 = [v39 objectID];
          v130 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_21D18E6B8((v42 > 1), v43 + 1, 1);
            v38 = v130;
          }

          ++v37;
          *(v38 + 16) = v43 + 1;
          v44 = v38 + 16 * v43;
          *(v44 + 32) = v41;
          *(v44 + 40) = v40;
        }

        while (v36 != v37);

        goto LABEL_15;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_5;
      }
    }

    v108 = 0;
LABEL_25:
    v54 = v115;
    sub_21D0D3954(v126, v115, &qword_27CE5C270);

    v16 = sub_21DBF6FEC();
    v110(v54, v124);
    if (v16 >> 62)
    {
      v55 = sub_21DBFBD7C();
      if (!v55)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v55 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v55)
      {
        goto LABEL_37;
      }
    }

    v129 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v55 & ~(v55 >> 63), 0);
    if ((v55 & 0x8000000000000000) == 0)
    {
      v56 = 0;
      v57 = v129;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x223D44740](v56, v16);
        }

        else
        {
          v58 = *(v16 + 8 * v56 + 32);
        }

        v59 = v58;
        v60 = [v58 name];
        v61 = sub_21DBFA16C();
        v63 = v62;

        v129 = v57;
        v65 = *(v57 + 16);
        v64 = *(v57 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_21D18E678((v64 > 1), v65 + 1, 1);
          v57 = v129;
        }

        ++v56;
        *(v57 + 16) = v65 + 1;
        v66 = v57 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v63;
      }

      while (v55 != v56);
LABEL_37:

      v67 = v111;
      sub_21DBF784C();
      v68 = v126;
      v69 = v118;
      sub_21D0D3954(v126, v118, &qword_27CE5C270);

      sub_21DBF6FCC();
      v110(v69, v124);
      v70 = v112;
      sub_21DBF784C();
      sub_21DBF782C();
      v16 = v122 + 8;
      v71 = *(v122 + 8);
      v72 = v116;
      v71(v70, v116);
      v115 = v71;
      v71(v67, v72);
      v73 = v123;
      v112 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance;
      v74 = *(v123 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_hashtagContextInstance);

      v75 = sub_21DBF785C();
      v76 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels;
      swift_beginAccess();
      *(v74 + v76) = v75;

      v127 = 0;
      v128 = 0xE000000000000000;
      sub_21DBFBEEC();
      v127 = *v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64788);
      v77 = sub_21DBFA1AC();
      v79 = v78;

      v127 = v77;
      v128 = v79;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v80 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v80);
      *(&v107 - 4) = v73;
      *(&v107 - 3) = v68;
      *(&v107 - 2) = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      sub_21D0D3954(v68, v69, &qword_27CE5C270);

      LOBYTE(v74) = sub_21DBF6FDC();
      v110(v69, v124);
      if (v74)
      {
LABEL_42:
        v122 = v16;
        v85 = v112;
        v86 = *&v112[v73];
        v87 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
        swift_beginAccess();
        v88 = v114;
        v89 = *(v114 + 16);
        v90 = v86 + v87;
        v91 = v113;
        v92 = v109;
        v89(v113, v90, v109);
        v93 = v117;
        sub_21DBF6BFC();
        v94 = *(v88 + 8);
        v94(v91, v92);
        v95 = *&v85[v73];
        v96 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
        swift_beginAccess();
        v89(v91, v95 + v96, v92);
        LOBYTE(v95) = MEMORY[0x223D3F370](v91, v93);
        v94(v91, v92);
        if (v95)
        {
          *(v73 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection) = 1;
          v97 = v115;
        }

        else
        {
          v98 = *(v73 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection);
          v97 = v115;
          if (qword_27CE56F18 != -1)
          {
            swift_once();
          }

          v99 = sub_21DBF84BC();
          __swift_project_value_buffer(v99, qword_27CE646E0);
          v100 = sub_21DBF84AC();
          v101 = sub_21DBFAE9C();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&dword_21D0C9000, v100, v101, "TTRShowTaggedDataModelSource: current selection is invalid", v102, 2u);
            MEMORY[0x223D46520](v102, -1, -1);
          }

          *(v73 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_lastSuccessfulFetchHasValidSelection) = 0;
          if (v98)
          {
            v103 = v73 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v104 = *(v103 + 1);
              ObjectType = swift_getObjectType();
              (*(v104 + 32))(ObjectType, v104);
              swift_unknownObjectRelease();
            }
          }
        }

        v94(v117, v109);
        v97(v121, v116);
        return sub_21D0CF7E0(v126, &qword_27CE5C270);
      }

      if (qword_27CE56F18 == -1)
      {
LABEL_39:
        v81 = sub_21DBF84BC();
        __swift_project_value_buffer(v81, qword_27CE646E0);
        v82 = sub_21DBF84AC();
        v83 = sub_21DBFAE9C();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_21D0C9000, v82, v83, "TTRShowTaggedDataModelSource: found outdated cachable smartListHashtagLabels", v84, 2u);
          MEMORY[0x223D46520](v84, -1, -1);
        }

        v73 = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
        sub_21D0D0F1C(&qword_280D0C460, &unk_27CE5C9E0);
        sub_21DBF912C();
        goto LABEL_42;
      }

LABEL_55:
      swift_once();
      goto LABEL_39;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  return sub_21D0CF7E0(v126, &qword_27CE5C270);
}

uint64_t sub_21D99BC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
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

uint64_t sub_21D99BCDC()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
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

uint64_t sub_21D99BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270) + 48));

  return TTRShowTaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowTaggedDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64788);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21D99BEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_delegate;
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

void TTRShowTaggedDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56F18 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE646E0);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    type metadata accessor for TTRShowTaggedDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowTaggedDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowTaggedPrintingDataModelSource.init(store:hashtagLabels:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels;
  v9 = sub_21DBF6C1C();
  (*(*(v9 - 8) + 32))(v4 + v8, a2, v9);
  v10 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_showCompleted;
  v11 = sub_21DBF71BC();
  (*(*(v11 - 8) + 32))(v4 + v10, a3, v11);
  v12 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_sortingStyle;
  v13 = sub_21DBF70DC();
  (*(*(v13 - 8) + 32))(v4 + v12, a4, v13);
  return v4;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowTaggedPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v2 = v1;
  v81 = retstr;
  v3 = sub_21DBF773C();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF700C();
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF6A9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v88 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF734C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF6C1C();
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x28223BE20](v14);
  v82 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v85 = &v70 - v17;
  v18 = sub_21DBF74BC();
  v86 = *(v18 - 8);
  v87 = v18;
  MEMORY[0x28223BE20](v18);
  v103 = (&v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B80);
  v73 = *(v20 - 8);
  v74 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  if (qword_27CE56F18 != -1)
  {
    swift_once();
  }

  v89 = v7;
  v91 = v22;
  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_27CE646E0);
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEDC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v8;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_21D0C9000, v24, v25, "PrintingDataModelSource: fetch Flagged tree", v27, 2u);
    v28 = v27;
    v8 = v26;
    MEMORY[0x223D46520](v28, -1, -1);
  }

  v83 = *(v2 + 16);
  v84 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_sortingStyle;
  v29 = *(v92 + 16);
  v70 = OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels;
  v71 = v29;
  v30 = v85;
  v72 = v92 + 16;
  v29(v85, v2 + OBJC_IVAR____TtC15RemindersUICore36TTRShowTaggedPrintingDataModelSource_hashtagLabels, v93);
  sub_21D999290(v30, v103);
  (*(v11 + 104))(v13, *MEMORY[0x277D45500], v10);
  v31 = *MEMORY[0x277D45318];
  v32 = *(v8 + 104);
  v33 = v88;
  v85 = v10;
  v34 = v89;
  v32(v88, v31, v89);
  v36 = v90;
  v35 = v91;
  sub_21DBF702C();
  v90 = v36;
  if (v36)
  {
    (*(v8 + 8))(v33, v34);
    (*(v11 + 8))(v13, v85);
    (*(v86 + 8))(v103, v87);
    return;
  }

  (*(v8 + 8))(v33, v34);
  (*(v11 + 8))(v13, v85);
  (*(v86 + 8))(v103, v87);
  v37 = v82;
  v38 = v93;
  v71(v82, v2 + v70, v93);
  v39 = v92;
  v40 = (*(v92 + 88))(v37, v38);
  if (v40 == *MEMORY[0x277D45378])
  {
    (*(v39 + 96))(v37, v38);
    v41 = sub_21D996B68(v37[1], *v37);
    v42 = *(v41 + 16);
    v43 = v35;
    if (v42 == 1)
    {
      sub_21D195590(v41);
      v45 = v44;

      if (v45)
      {
        v46 = sub_21DBFA22C();
        v48 = v47;

LABEL_18:
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50) + 64);
        v54 = sub_21DBF6C0C();
        (*(*(v54 - 8) + 8))(v37 + v53, v54);
LABEL_22:
        sub_21D6EEF24(v94);
        v57 = v74;
        v56 = v75;
        sub_21DBF76DC();
        v58 = v78;
        sub_21DBF6FBC();
        (*(v76 + 8))(v56, v77);
        v59 = sub_21DBF718C();
        (*(v79 + 8))(v58, v80);
        v100 = v94[4];
        v101 = v94[5];
        *v102 = v95[0];
        *&v102[10] = *(v95 + 10);
        v96 = v94[0];
        v97 = v94[1];
        v98 = v94[2];
        v99 = v94[3];
        v60 = [objc_opt_self() systemBlueColor];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589D0);
        v61 = swift_allocObject();
        v62 = v100;
        v63 = *v102;
        v64 = *&v102[16];
        *(v61 + 112) = v101;
        *(v61 + 128) = v63;
        *(v61 + 144) = v64;
        v65 = v96;
        v66 = v97;
        *(v61 + 16) = xmmword_21DC08D00;
        *(v61 + 32) = v65;
        v67 = v98;
        v68 = v99;
        *(v61 + 48) = v66;
        *(v61 + 64) = v67;
        *(v61 + 80) = v68;
        *(v61 + 96) = v62;
        *(v61 + 160) = v59;
        (*(v73 + 8))(v43, v57);
        v69 = v81;
        v81->listName._countAndFlagsBits = v46;
        v69->listName._object = v48;
        v69->listColor.super.isa = v60;
        v69->count.value = 0;
        v69->count.is_nil = 1;
        v69->sections._rawValue = v61;
        v69->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
        return;
      }
    }

    else
    {
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v49 = swift_allocObject();
    v50 = MEMORY[0x277D83B88];
    *(v49 + 16) = xmmword_21DC08D00;
    v51 = MEMORY[0x277D83C10];
    *(v49 + 56) = v50;
    *(v49 + 64) = v51;
    *(v49 + 32) = v42;
    v46 = sub_21DBFA13C();
    v48 = v52;

    v37 = v82;
    goto LABEL_18;
  }

  v43 = v35;
  if (v40 == *MEMORY[0x277D45398])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v40 == *MEMORY[0x277D45380])
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_21:
      v46 = sub_21DBF516C();
      v48 = v55;
      goto LABEL_22;
    }

LABEL_23:
    swift_once();
    goto LABEL_21;
  }

  sub_21DBFC63C();
  __break(1u);
}

uint64_t TTRShowTaggedMonitorableDataView.init(store:hashtagLabels:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = 0;
  *(v6 + 16) = a1;
  v12 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels;
  v13 = sub_21DBF6C1C();
  (*(*(v13 - 8) + 32))(v6 + v12, a2, v13);
  v14 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted;
  v15 = sub_21DBF71BC();
  (*(*(v15 - 8) + 32))(v6 + v14, a3, v15);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted) = a4;
  v16 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle;
  v17 = sub_21DBF70DC();
  (*(*(v17 - 8) + 32))(v6 + v16, a5, v17);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount) = a6;
  return v6;
}

void *TTRShowTaggedMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v50 = a1;
  v51 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64790);
  MEMORY[0x28223BE20](v48);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - v9;
  v53 = sub_21DBF6C1C();
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF74BC();
  v54 = *(v12 - 1);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B80);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = &v44 - v15;
  v57 = sub_21DBF6A9C();
  v60 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF734C();
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v44 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  sub_21DBFC83C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
  {
    sub_21D0CF7E0(v24, &qword_27CE5D3E8);
    if (a4)
    {
      v26 = *(v5 + 16);
      v27 = 0;
LABEL_6:
      v30 = MEMORY[0x277D45508];
      goto LABEL_11;
    }

    v27 = 0;
    goto LABEL_9;
  }

  v28 = *&v24[*(v25 + 48)];
  v29 = sub_21DBF700C();
  (*(*(v29 - 8) + 8))(v24, v29);
  if ((a4 & 1) == 0)
  {
    v27 = v28;
LABEL_9:
    v26 = [*(v5 + 16) nonUserInteractiveStore];
    goto LABEL_10;
  }

  v26 = *(v5 + 16);
  v27 = v28;
  if (!v28)
  {
    goto LABEL_6;
  }

LABEL_10:
  v30 = MEMORY[0x277D454F8];
LABEL_11:
  *v21 = *(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount);
  (*(v58 + 104))(v21, *v30, v59);
  v31 = OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels;
  v32 = *(v60 + 104);
  if (*(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) == 1)
  {
    v32(v18, *MEMORY[0x277D45318], v57);
    *(v5 + v31) = 0;
    v33 = v18;
  }

  else
  {
    v33 = v18;
    v32(v18, *MEMORY[0x277D45310], v57);
  }

  v34 = v52;
  (*(v10 + 16))(v52, v5 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels, v53);
  sub_21D999290(v34, v14);
  v35 = v27;
  v36 = v56;
  sub_21DBF702C();
  if (v36)
  {

    (*(v54 + 8))(v14, v55);
    (*(v60 + 8))(v33, v57);
  }

  else
  {
    (*(v54 + 8))(v14, v55);
    v37 = v48;
    v38 = *(v48 + 48);
    v55 = v35;
    v56 = v33;
    v40 = v45;
    v39 = v46;
    sub_21DBF76DC();
    *(v39 + v38) = sub_21DBF76BC();
    v41 = v49;
    sub_21D0D3954(v39, v49, &qword_27CE64790);
    v14 = *(v41 + *(v37 + 48));
    v42 = sub_21DBF700C();
    (*(*(v42 - 8) + 32))(v50, v41, v42);
    sub_21DBF76CC();

    sub_21D0CF7E0(v39, &qword_27CE64790);
    (*(v47 + 8))(v16, v40);
    (*(v60 + 8))(v56, v57);
  }

  (*(v58 + 8))(v21, v59);
  return v14;
}

uint64_t sub_21D99D6FC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *a1;
  v8 = sub_21DBF6C1C();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *a2;
  v10 = sub_21DBF71BC();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = *a3;
  v12 = sub_21DBF70DC();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  return v3;
}

uint64_t sub_21D99D808(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *a1;
  v8 = sub_21DBF6C1C();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *a2;
  v10 = sub_21DBF71BC();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = *a3;
  v12 = sub_21DBF70DC();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);

  return swift_deallocClassInstance();
}

uint64_t sub_21D99D934(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowTaggedMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRShowTaggedDataModelSourceHashtagContext.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_21D24989C;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  v4 = sub_21DBF6C1C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_21D99DB48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  v5 = sub_21DBF6C1C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21D99DBD4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21DBF6C1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17[-v10];
  v12 = *(v5 + 16);
  v12(&v17[-v10], a1, v4, v9);
  v13 = *a2;
  v14 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (v12)(v7, v13 + v14, v4);
  swift_beginAccess();
  (*(v5 + 24))(v13 + v14, v11, v4);
  swift_endAccess();
  sub_21D99DED4();
  v15 = *(v5 + 8);
  v15(v7, v4);
  return (v15)(v11, v4);
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.selection.setter(uint64_t a1)
{
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_21D99DED4();
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

uint64_t sub_21D99DED4()
{
  v1 = v0;
  v2 = sub_21DBF6C1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_21D59E1F4();
  v7 = sub_21DBFA10C();
  result = (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(ObjectType, v9);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*TTRShowTaggedDataModelSourceHashtagContext.selection.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_21DBF6C1C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v5[14] = v10;
  v5[15] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[16] = v13;
  v5[17] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_21D99E1C0;
}

void sub_21D99E1C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = *(*a1 + 72);
  if (a2)
  {
    v3(*(*a1 + 104), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    sub_21D99DED4();
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 104), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_21D99DED4();
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.init(selection:allHashtagLabels:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v6 = sub_21DBF6C1C();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_allHashtagLabels) = a2;
  return v2;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.deinit()
{
  sub_21D157444(v0 + 16);
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v2 = sub_21DBF6C1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TTRShowTaggedDataModelSourceHashtagContext.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  v2 = sub_21DBF6C1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D99E548@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  v4 = sub_21DBF6C1C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_21D99E5D0(uint64_t a1)
{
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC15RemindersUICore42TTRShowTaggedDataModelSourceHashtagContext_selection;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_21D99DED4();
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

void (*sub_21D99E72C(uint64_t **a1))(void *a1)
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
  v2[4] = TTRShowTaggedDataModelSourceHashtagContext.selection.modify(v2);
  return sub_21D25A3E8;
}

uint64_t sub_21D99E804(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF700C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore28TTRShowTaggedDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  v35 = v1;
  v18 = *(v1 + v16);
  if (v18)
  {
    v32 = v3;
    v33 = v2;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v7, &qword_27CE5C268);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C268);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
    if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5D3E8);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64788);
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

id sub_21D99EEB0(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x223D44740](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_21D29B0D0(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_21DBFBD7C();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t sub_21D99EFA4(uint64_t a1, int a2)
{
  v25 = a2;
  v3 = sub_21DBF70DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v6;
  v7 = sub_21DBF71BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF6C1C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  (*(v12 + 16))(v15, a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels, v11, v13);
  (*(v8 + 16))(v10, a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted, v7);
  v23 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted);
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle, v3);
  v21 = *(a1 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount);
  type metadata accessor for TTRShowTaggedMonitorableDataView(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = 0;
  v17 = v24;
  *(v16 + 16) = v24;
  (*(v12 + 32))(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_hashtagLabels, v15, v11);
  (*(v8 + 32))(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_showCompleted, v10, v7);
  *(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_countCompleted) = v23;
  (*(v4 + 32))(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_sortingStyle, v22, v3);
  *(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_remindersToPrefetchCount) = v21;
  *(v16 + OBJC_IVAR____TtC15RemindersUICore32TTRShowTaggedMonitorableDataView_needsFetchLatestSmartListHashtagLabels) = v25;
  v18 = v17;
  return v16;
}

void sub_21D99F2CC(void *a1)
{
  if (qword_27CE56F18 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE646E0);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    type metadata accessor for TTRShowTaggedDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowTaggedDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D99F710()
{
  result = sub_21DBF6C1C();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v2 <= 0x3F)
    {
      result = sub_21DBF70DC();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21D99F878()
{
  result = sub_21DBF6C1C();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v2 <= 0x3F)
    {
      result = sub_21DBF70DC();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21D99F9D8()
{
  result = sub_21DBF6C1C();
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

RemindersUICore::TTRHashtagAssociationAffectedObjectCounts __swiftcall TTRHashtagAssociationAffectedObjectCounts.init(reminders:customSmartLists:)(Swift::Int reminders, Swift::Int customSmartLists)
{
  *v2 = reminders;
  v2[1] = customSmartLists;
  result.customSmartLists = customSmartLists;
  result.reminders = reminders;
  return result;
}

RemindersUICore::TTRHashtagAssociationDeleteTagConfirmationMessage __swiftcall TTRHashtagAssociationDeleteTagConfirmationMessage.init(affectedObjectCounts:deletableCustomSmartLists:)(RemindersUICore::TTRHashtagAssociationAffectedObjectCounts affectedObjectCounts, Swift::OpaquePointer deletableCustomSmartLists)
{
  *v2 = *affectedObjectCounts.reminders;
  *(v2 + 16) = affectedObjectCounts.customSmartLists;
  result.affectedObjectCounts = affectedObjectCounts;
  result.deletableCustomSmartLists = deletableCustomSmartLists;
  return result;
}

__n128 TTRHashtagAssociationDeleteTagConfirmationMessage.affectedObjectCounts.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t static TTRHashtagAssociationDeleteTagConfirmationMessage.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_21D1D5420(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D99FBA4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_21D1D5420(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRHashtagAssociationDeleteTagPreferences.intentBySmartListID.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 TTRHashtagAssociationRenameTagConfirmationMessage.affectedObjectCounts.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t sub_21D99FCF4()
{
  result = qword_27CE647D8;
  if (!qword_27CE647D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE647D8);
  }

  return result;
}

uint64_t sub_21D99FD88(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_21D99FD60();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRHashtagAssociationOperation(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_21D99FD60();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D99FD7C();
  return a1;
}

uint64_t assignWithTake for TTRHashtagAssociationOperation(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D99FD7C();
  return a1;
}

void *assignWithCopy for TTRHashtagAssociationDeleteTagConfirmationMessage(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRHashtagAssociationDeleteTagConfirmationMessage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

Swift::Void __swiftcall TTRSmartListSectionEditor.edit(displayName:)(Swift::String displayName)
{
  object = displayName._object;
  countAndFlagsBits = displayName._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = [v4 displayName];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = v6 == countAndFlagsBits && v8 == object;
  if (v9 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    if (qword_27CE56F20 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE647E0);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v4 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Updating smart list section's display name {smartListSectionID: %@}", v13, 0xCu);
      sub_21D0CF7E0(v14, &unk_27CE60070);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v16 = sub_21DBFA12C();
    [v4 setDisplayName_];

    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = v8;
    sub_21D183198(sub_21D902584, v17);
  }
}

uint64_t sub_21D9A01C4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE647E0);
  v1 = __swift_project_value_buffer(v0, qword_27CE647E0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSmartListSectionEditor.unitTest_oneShotSyncSaveForUndo.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t TTRSmartListSectionEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 16) = a1;
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v6 + 64) = a3;
  return v6;
}

uint64_t TTRSmartListSectionEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = 0;
  *(v3 + 16) = a1;
  v5 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 40) = v5;
  *(v3 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v3 + 64) = a3;
  return v3;
}

uint64_t TTRSmartListSectionEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);

  return swift_deallocClassInstance();
}

id static TTRSmartListSectionEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

uint64_t TTRSmartListSectionEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, id a2, uint64_t a3, char a4)
{
  v8 = [a2 updateSmartListSection_];

  v9 = swift_allocObject();
  *(v9 + 64) = 0;
  *(v9 + 16) = v8;
  v10 = *(a3 + 16);
  *(v9 + 24) = *a3;
  *(v9 + 40) = v10;
  *(v9 + 56) = *(a3 + 32);
  swift_beginAccess();
  *(v9 + 64) = a4;
  return v9;
}

uint64_t sub_21D9A05D8@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 updateSmartListSection_];

  v11 = swift_allocObject();
  *(v11 + 64) = 0;
  *(v11 + 16) = v10;
  v12 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v12;
  *(v11 + 56) = *(a3 + 32);
  result = swift_beginAccess();
  *(v11 + 64) = a4;
  *a5 = v11;
  return result;
}

id static TTRSmartListSectionEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedSmartListSectionChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateSmartListSection_];

  return v2;
}

id static TTRSmartListSectionEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id TTRSmartListSectionEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

id TTRSmartListSectionEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

uint64_t TTRSmartListSectionEditor.__allocating_init(changeItem:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  *(v4 + 16) = a1;
  v5 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v5;
  *(v4 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v4 + 64) = 0;
  return v4;
}

id sub_21D9A0884@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_21D9A0934(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D9A08B4(void *a1, id a2)
{
  v2 = [a2 _trackedSmartListSectionChangeItemForObjectID_];

  return v2;
}

id sub_21D9A08F4(void *a1, id a2)
{
  v2 = [a2 updateSmartListSection_];

  return v2;
}

id sub_21D9A0934(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchSmartListSectionWithObjectID:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_21D9A09F4(uint64_t a1, uint64_t a2)
{
  result = sub_21D9A0ABC(&qword_27CE647F8, a2, type metadata accessor for TTRSmartListSectionEditor);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_21D9A0ABC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Array<A>.replacingSubtasksWithNil()(uint64_t a1)
{
  v2 = sub_21DBF6D7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    sub_21D18E718(0, v9, 0);
    v10 = v24;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v22 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v23 = v12;
    v13 = a1 + v22;
    v14 = *(v11 + 56);
    v20 = (v11 - 8);
    v21 = v14;
    v19 = (v11 + 16);
    do
    {
      v23(v5, v13, v2);
      sub_21DBF6D5C();
      sub_21DBF6D1C();
      sub_21DBF6D2C();
      sub_21DBF6D3C();
      (*v20)(v5, v2);
      v24 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21D18E718(v15 > 1, v16 + 1, 1);
        v10 = v24;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v21;
      (*v19)(v10 + v22 + v16 * v21, v8, v2);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRRemindersListEditingSessionProviderCapability.init()();
  return v0;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32[-v16];
  a5(&v33, a1, a2, a3, v15);
  v18 = v33;
  if (!v33)
  {
    return 0;
  }

  v19 = v34;

  if (v19)
  {
    sub_21D9A1B40(0, v18);
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext;
  swift_beginAccess();
  sub_21D1D3F20(v18 + v20, v17);
  v21 = type metadata accessor for TTRRemindersListUndoContext();
  v22 = (*(*(v21 - 8) + 48))(v17, 1, v21);
  sub_21D1D4958(v17);
  if (v22 == 1)
  {
    swift_beginAccess();
    sub_21D5F3A70(a4, v18 + v20);
    swift_endAccess();
  }

  if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
  {
    sub_21D9A1DD0(v18, a4);
  }

  v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  v24 = *(v18 + v23);
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v18 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_21D210A84(0, *(v24 + 2) + 1, 1, v24);
    *(v18 + v23) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_21D210A84((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = a2;
  *(v28 + 5) = a3;
  *(v18 + v23) = v24;
  swift_endAccess();
  type metadata accessor for TTRRemindersListConcreteEditingSession();
  swift_allocObject();
  sub_21DBF8E0C();
  v29 = TTRRemindersListConcreteEditingSession.init(acquirerName:editingSessionState:isFormallyAcquired:)(a2, a3, v18, 1);

  v30 = v29 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
  swift_beginAccess();
  *(v30 + 8) = a8;
  swift_unknownObjectWeakAssign();
  return v29;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult.init(sessionState:isExisting:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.scheduleConclusionForFinishedEditingSession(_:options:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a2;
  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F500);

  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName), *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName + 8), v24);
    *(v11 + 12) = 2080;
    sub_21D1D338C(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v6);
    v13 = sub_21D25D250();
    v15 = v14;
    sub_21D106FD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    v16 = sub_21D0CDFB4(v13, v15, v24);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Reminder Editing Session: finish {acquirer: %s, item: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) != 1 || !sub_21D9A2548(a1))
  {
    return 0;
  }

  v17 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_doNotSave;
    swift_beginAccess();
    *(v17 + v22) = 1;
    if ((v7 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
  swift_beginAccess();
  *(v17 + v21) = 1;
  if ((v7 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v7 & 4) != 0)
  {
LABEL_10:
    v18 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
    swift_beginAccess();
    *(v17 + v18) = 1;
  }

LABEL_11:
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  if (!*(*(v17 + v19) + 16))
  {
    sub_21D9A1B40(1, v17);
  }

  return 1;
}

uint64_t sub_21D9A13E4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F500);
  v1 = __swift_project_value_buffer(v0, qword_280D0F500);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersUICore::TTRRemindersListEditingSessionProviderCapability::EditingSessionStatesConclusion __swiftcall TTRRemindersListEditingSessionProviderCapability.EditingSessionStatesConclusion.init(toBeDeleted:toBeSaved:)(Swift::OpaquePointer toBeDeleted, Swift::OpaquePointer toBeSaved)
{
  v2->_rawValue = toBeDeleted._rawValue;
  v2[1]._rawValue = toBeSaved._rawValue;
  result.toBeSaved = toBeSaved;
  result.toBeDeleted = toBeDeleted;
  return result;
}

uint64_t sub_21D9A14D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D1CDA04;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D9A1568(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D359BDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_21D0D0E88(v5);
}

uint64_t sub_21D9A1718@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D9A17AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_21D0D0E88(v5);
}

uint64_t TTRRemindersListEditingSessionProviderCapability.init()()
{
  v1 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v1);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];
  sub_21D0CE468();
  v3 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D8AE0(&qword_280D0C860, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v4[5] = sub_21DBF5EEC();
  v4[6] = v2;
  v4[4] = v3;
  *(v0 + 48) = v4;
  swift_beginAccess();
  v4[3] = &protocol witness table for TTRRemindersListEditingSessionProviderCapability;
  swift_unknownObjectWeakAssign();
  return v0;
}

void sub_21D9A1B40(char a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 56);
  if (v6 >> 62)
  {
LABEL_25:
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223D44740](v8, v6);
      swift_unknownObjectRelease();
      if (v10 == a2)
      {
LABEL_12:

        if ((a1 & 1) == 0)
        {
          if (qword_280D0F4F8 != -1)
          {
            swift_once();
          }

          v11 = sub_21DBF84BC();
          __swift_project_value_buffer(v11, qword_280D0F500);
          v12 = sub_21DBF84AC();
          v13 = sub_21DBFAE9C();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            *v14 = 0;
            _os_log_impl(&dword_21D0C9000, v12, v13, "Reminder Editing Session: Removing editing session from needsSave pool", v14, 2u);
            MEMORY[0x223D46520](v14, -1, -1);
          }

          swift_beginAccess();
          sub_21DBCEEE0(v8);
          swift_endAccess();
        }

        return;
      }
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (*(v6 + 8 * v8 + 32) == a2)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_24;
    }
  }

  if (a1)
  {
    swift_beginAccess();

    MEMORY[0x223D42D80](v15);
    if (*((*(v3 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    swift_endAccess();
    v16._object = 0x800000021DC72340;
    v16._countAndFlagsBits = 0xD00000000000001DLL;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v16);
  }
}

void sub_21D9A1DD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_21DBFB34C();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64800);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v30 - v15);
  v37 = a2;
  sub_21D1D3F20(a2, &v30 - v15);
  v17 = type metadata accessor for TTRRemindersListUndoContext();
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    sub_21D1D4958(v16);
  }

  else
  {
    v32 = v5;
    v33 = v9;
    v18 = *v16;
    sub_21D106FD8(v16, type metadata accessor for TTRRemindersListUndoContext);
    v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
    swift_beginAccess();
    if (*(a1 + v19))
    {
    }

    else
    {
      v20 = [objc_opt_self() defaultCenter];
      v30 = a1;
      v21 = v18;
      v31 = v21;
      sub_21DBFB35C();

      sub_21D0D8AE0(&qword_280D0C280, MEMORY[0x277CC9DB0]);
      v22 = v36;
      sub_21DBF92CC();
      (*(v35 + 8))(v8, v6);
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v25 = v30;
      swift_weakInit();
      sub_21D1D3F20(v37, v13);
      v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v23;
      *(v27 + 24) = v24;
      sub_21D9A3844(v13, v27 + v26);
      *(v27 + ((v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
      sub_21D0D0F1C(&qword_280D0C5A0, &qword_27CE64800);
      v28 = v33;
      v29 = sub_21DBF93CC();

      (*(v38 + 8))(v22, v28);
      *(v25 + v19) = v29;
    }
  }
}

uint64_t sub_21D9A229C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      if (qword_280D0F4F8 != -1)
      {
        swift_once();
      }

      v9 = sub_21DBF84BC();
      __swift_project_value_buffer(v9, qword_280D0F500);

      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAE9C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19[0] = v13;
        *v12 = 136315138;
        v14 = sub_21D25D250();
        v16 = sub_21D0CDFB4(v14, v15, v19);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_21D0C9000, v10, v11, "Reminder Editing Session: detected first edit {item: %s}", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x223D46520](v13, -1, -1);
        MEMORY[0x223D46520](v12, -1, -1);
      }

      swift_beginAccess();
      v17 = *(v6 + 16);
      v18 = *(v6 + 24);
      sub_21D0D0E78(v17);
      sub_21D9A3960(v17, v18, v8, a4);
      sub_21D0D0E88(v17);
    }
  }

  return result;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.deinit()
{
  sub_21D0D0E88(*(v0 + 16));
  sub_21D0D0E88(*(v0 + 32));

  return v0;
}

uint64_t TTRRemindersListEditingSessionProviderCapability.__deallocating_deinit()
{
  sub_21D0D0E88(*(v0 + 16));
  sub_21D0D0E88(*(v0 + 32));

  return swift_deallocClassInstance();
}

BOOL sub_21D9A2548(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v47[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v47[-v9];
  v12 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName);
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName + 8);
  v13 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  sub_21D1D338C(v13 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, &v47[-v9]);
  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v52[0] = v12;
  v52[1] = v11;
  v51 = v52;
  sub_21DBF8E0C();
  v16 = sub_21D3F7CA4(sub_21D17B73C, v50, v15);
  LODWORD(v18) = v17;

  if ((v18 & 1) == 0)
  {
    v49 = v12;
    swift_beginAccess();
    sub_21DBCEEF8(v16);
    swift_endAccess();

    if (qword_280D0F4F8 != -1)
    {
      swift_once();
    }

    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_280D0F500);
    sub_21D1D338C(v10, v7);
    sub_21DBF8E0C();

    v31 = sub_21DBF84AC();
    v32 = sub_21DBFAE9C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v48 = v18;
      v18 = v33;
      v34 = swift_slowAlloc();
      v52[0] = v34;
      *v18 = 136315650;
      *(v18 + 4) = sub_21D0CDFB4(v49, v11, v52);
      *(v18 + 12) = 2080;
      v35 = sub_21DBF8E0C();
      v36 = MEMORY[0x223D42DB0](v35, MEMORY[0x277D837D0]);
      v38 = v37;

      v39 = sub_21D0CDFB4(v36, v38, v52);

      *(v18 + 14) = v39;
      *(v18 + 22) = 2080;
      v40 = sub_21D25D250();
      v42 = v41;
      sub_21D106FD8(v7, type metadata accessor for TTRRemindersListViewModel.Item);
      v43 = sub_21D0CDFB4(v40, v42, v52);

      *(v18 + 24) = v43;
      _os_log_impl(&dword_21D0C9000, v31, v32, "Reminder Editing Session: Removed acquirer from editing session {removing: %s, remaining: %s, item: %s}", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v34, -1, -1);
      v44 = v18;
      LOBYTE(v18) = v48;
      MEMORY[0x223D46520](v44, -1, -1);

      goto LABEL_13;
    }

    v45 = v7;
LABEL_12:
    sub_21D106FD8(v45, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_13;
  }

  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_280D0F500);
  sub_21D1D338C(v10, v4);
  sub_21DBF8E0C();
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAECC();

  if (!os_log_type_enabled(v20, v21))
  {

    v45 = v4;
    goto LABEL_12;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v24 = v12;
  v25 = v23;
  v52[0] = v23;
  *v22 = 136315394;
  *(v22 + 4) = sub_21D0CDFB4(v24, v11, v52);
  *(v22 + 12) = 2080;
  v26 = sub_21D25D250();
  v28 = v27;
  sub_21D106FD8(v4, type metadata accessor for TTRRemindersListViewModel.Item);
  v29 = sub_21D0CDFB4(v26, v28, v52);

  *(v22 + 14) = v29;
  _os_log_impl(&dword_21D0C9000, v20, v21, "Reminder Editing Session: acquirer to be removed is not found {acquirerName: %s, item: %s}", v22, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D46520](v25, -1, -1);
  MEMORY[0x223D46520](v22, -1, -1);

LABEL_13:
  sub_21D106FD8(v10, type metadata accessor for TTRRemindersListViewModel.Item);
  return (v18 & 1) == 0;
}

uint64_t _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC21deferredActionPerform_6reasonyAA011TTRDeferredJ0C_SStF_0()
{
  v41 = sub_21DBF4CAC();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v3 = *(v0 + 56);
  if (v3 >> 62)
  {
    result = sub_21DBFBD7C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v5 = *(v0 + 56);
  v6 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];
  v44 = v6;
  v45 = v6;
  if (v5 >> 62)
  {
    result = sub_21DBFBD7C();
    v7 = result;
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v0;
  if (v7)
  {
    if (v7 < 1)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v9 = v5 & 0xC000000000000001;
    v39 = (v1 + 8);
    v10 = MEMORY[0x277D84F90];
    v11 = &OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
    v12 = &OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
    v42 = MEMORY[0x277D84F90];
    v38 = v7;
    v37 = v5;
    do
    {
      if (v9)
      {
        v14 = MEMORY[0x223D44740](v8, v5);
      }

      else
      {
        v14 = *(v5 + 8 * v8 + 32);
      }

      v15 = *v11;
      swift_beginAccess();
      if (*(v14 + v15))
      {
        goto LABEL_8;
      }

      v16 = *v12;
      swift_beginAccess();
      if (*(v14 + v16) != 1)
      {
        goto LABEL_21;
      }

      v17 = [*(v14 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) titleAsString];
      if (!v17)
      {
        goto LABEL_8;
      }

      v18 = v17;
      v19 = v9;
      v20 = v11;
      v21 = sub_21DBFA16C();
      v23 = v22;

      v43[2] = v21;
      v43[3] = v23;
      v24 = v10;
      v25 = v12;
      v26 = v40;
      sub_21DBF4C5C();
      sub_21D176F0C();
      v27 = sub_21DBFBB3C();
      v29 = v28;
      v30 = v26;
      v12 = v25;
      v10 = v24;
      (*v39)(v30, v41);

      v31 = HIBYTE(v29) & 0xF;
      v32 = (v29 & 0x2000000000000000) == 0;
      v11 = v20;
      v9 = v19;
      v5 = v37;
      v7 = v38;
      if (v32)
      {
        v31 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v31)
      {
LABEL_8:

        MEMORY[0x223D42D80](v13);
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v10 = v45;
      }

      else
      {
LABEL_21:

        MEMORY[0x223D42D80](v33);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v42 = v44;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
  }

  v34 = v36;
  swift_beginAccess();
  v35 = *(v34 + 32);
  if (v35)
  {
    v43[0] = v10;
    v43[1] = v42;

    v35(v43);
    sub_21D0D0E88(v35);
  }
}

uint64_t _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC18prepareToForceSave_14isAsynchronousSbAA0cd8ConcreteeF0C_SbtF_0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F500);

  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_21D0CDFB4(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName), *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName + 8), v30);
    *(v10 + 12) = 2080;
    sub_21D1D338C(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v6);
    v12 = sub_21D25D250();
    v14 = v13;
    sub_21D106FD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = sub_21D0CDFB4(v12, v14, v30);

    *(v10 + 14) = v15;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a2 & 1;
    _os_log_impl(&dword_21D0C9000, v8, v9, "Reminder Editing Session: finish and force save session {acquirer: %s, item: %s, isAsync: %{BOOL}d}", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v11, -1, -1);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_isFormallyAcquired) != 1 || !sub_21D9A2548(a1))
  {
    return 0;
  }

  v16 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
  v17 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  v18 = *(v16 + v17);
  if (*(v18 + 16))
  {
    sub_21DBF8E0C();
    v19 = sub_21DBF84AC();
    v20 = sub_21DBFAECC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      v23 = MEMORY[0x223D42DB0](v18, MEMORY[0x277D837D0]);
      v25 = v24;

      v26 = sub_21D0CDFB4(v23, v25, v29);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_21D0C9000, v19, v20, "Reminder Editing Session: session is still held by some acquirers, force saving may cause problems {acquirers: %s}", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223D46520](v22, -1, -1);
      MEMORY[0x223D46520](v21, -1, -1);
    }

    else
    {
    }
  }

  v28 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
  swift_beginAccess();
  if (*(v16 + v28))
  {

    sub_21DBF901C();
  }

  return 1;
}

uint64_t _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC15prepareToCommityyAA0cdeF5StateCF_0(uint64_t a1)
{
  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F500);

  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = TTRRemindersListEditingSessionState.debugDescription.getter();
    v9 = sub_21D0CDFB4(v7, v8, v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, v3, v4, "Reminder Editing Session: commit sessionState {sessionState: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState;
  swift_beginAccess();
  if (*(a1 + v10))
  {
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Reminder Editing Session: Attempting to save a sessionState twice", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }
  }

  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
  result = swift_beginAccess();
  if (*(a1 + v14))
  {

    sub_21DBF901C();
  }

  return result;
}

uint64_t _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC15prepareToDeleteyyAA0cdeF5StateCF_0(uint64_t a1)
{
  if (qword_280D0F4F8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F500);

  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = TTRRemindersListEditingSessionState.debugDescription.getter();
    v9 = sub_21D0CDFB4(v7, v8, v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, v3, v4, "Reminder Editing Session: perform deletion {sessionState: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  if (*(*(a1 + v10) + 16))
  {
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAECC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Reminder Editing Session: session is still held by some acquirers, item deletion may cause problems", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }
  }

  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
  result = swift_beginAccess();
  if (*(a1 + v14))
  {

    sub_21DBF901C();
  }

  return result;
}

uint64_t assignWithCopy for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_21D9A3844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D9A38B4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21D9A229C(a1, v4, v5, v6);
}

void sub_21D9A3960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&aBlock[-1] - v9);
  if (a1)
  {
    sub_21D1D3F20(a4, &aBlock[-1] - v9);
    v11 = type metadata accessor for TTRRemindersListUndoContext();
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
    {
      sub_21D1D4958(v10);
    }

    else
    {
      v12 = *v10;
      sub_21D0D0E78(a1);
      v13 = v12;
      sub_21D106FD8(v10, type metadata accessor for TTRRemindersListUndoContext);
      v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
      swift_beginAccess();
      if (*(a3 + v14))
      {

        sub_21D0D0E88(a1);
      }

      else
      {
        v30 = v13;
        if (qword_280D0F4F8 != -1)
        {
          swift_once();
        }

        v15 = sub_21DBF84BC();
        __swift_project_value_buffer(v15, qword_280D0F500);

        v16 = sub_21DBF84AC();
        v17 = sub_21DBFAE9C();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock[0] = v19;
          *v18 = 136315138;
          v20 = sub_21D25D250();
          v22 = sub_21D0CDFB4(v20, v21, aBlock);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_21D0C9000, v16, v17, "Reminder Editing Session: register undo for adding new reminder {item: %s}", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x223D46520](v19, -1, -1);
          MEMORY[0x223D46520](v18, -1, -1);
        }

        *(a3 + v14) = 1;
        v23 = objc_opt_self();
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        v24 = sub_21DBFA12C();

        v25 = swift_allocObject();
        v25[2] = a3;
        v25[3] = a1;
        v25[4] = a2;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_21D9A3E5C;
        *(v26 + 24) = v25;
        aBlock[4] = sub_21D0E6070;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0E6204;
        aBlock[3] = &block_descriptor_125;
        v27 = _Block_copy(aBlock);
        sub_21D0D0E78(a1);

        [v23 withActionName:v24 block:v27];

        _Block_release(v27);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v29 = v30;
          if ([v30 groupingLevel] >= 1)
          {
            [v29 endUndoGrouping];
            [v29 beginUndoGrouping];
          }

          sub_21D0D0E88(a1);
        }
      }
    }
  }
}

void sub_21D9A3E5C()
{
  v1 = *(v0 + 24);
  v2 = [*(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) objectID];
  v1();
}

uint64_t TTRReminderDetailSubtaskChangeItemsIncludingUnsupported.allExceptUnsupported.getter()
{
  v1 = *v0;
  v8 = MEMORY[0x277D84F90];
  if (*v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223D44740](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v4 isUnsupported])
      {
      }

      else
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t TTRReminderDetailSubject.init(reminderChangeItem:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t TTRReminderDetailInteractor.__allocating_init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(uint64_t a1, void *a2, __int128 *a3, _OWORD *a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  TTRReminderDetailInteractor.init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t TTRReminderDetailInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    swift_getObjectType();
    swift_beginAccess();
    v5 = *(v4 + 16);
    v6 = *(v2 + 40);
    v5();

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_21D9A415C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64808);
  v1 = __swift_project_value_buffer(v0, qword_27CE64808);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRReminderDetailOptimisticReminder.reminder.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRReminderDetailOptimisticReminder.init(reminder:saveDidFinish:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRReminderDetailSubject.init(initialReminderChangeItem:reminderChangeItemPublisher:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRReminderDetailSubject.init(reminderChangeItemSubject:)@<X0>(void *a1@<X8>)
{
  sub_21DBF909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64820);
  sub_21D0D0F1C(&qword_280D0C438, &qword_27CE64820);
  v2 = sub_21DBF920C();

  *a1 = v4;
  a1[1] = v2;
  return result;
}

void (*TTRReminderDetailInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_21D9A43FC;
}

void sub_21D9A43FC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + 24);
      swift_getObjectType();
      swift_beginAccess();
      v6 = *(v5 + 16);
      v7 = *(v4 + 40);
      v6();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t TTRReminderDetailInteractor.init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(uint64_t a1, void *a2, __int128 *a3, _OWORD *a4, uint64_t *a5)
{
  v6 = v5;
  v9 = *a1;
  v32 = *(a1 + 8);
  v10 = a3[3];
  v36 = a3[2];
  v37 = v10;
  v38 = a3[4];
  v11 = a3[1];
  v34 = *a3;
  v35 = v11;
  v12 = *a5;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 64) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 2;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0;
  *(v6 + 192) = 0;
  *(v6 + 200) = 0;
  *(v6 + 184) = 0;
  *(v6 + 208) = 0;
  *(v6 + 40) = v9;
  *(v6 + 32) = a2;
  v13 = v9;
  v14 = a2;
  v33 = v13;
  *(v6 + 48) = [v13 accountCapabilities];
  swift_beginAccess();
  v15 = *(v6 + 40);
  v16 = type metadata accessor for TTRBasicUndoContext();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v40[3] = v16;
  v40[4] = &protocol witness table for TTRBasicUndoContext;
  v40[0] = v17;
  sub_21D0D3954(v40, v39, &unk_27CE60D80);
  type metadata accessor for TTRReminderEditor();
  v18 = swift_allocObject();
  *(v18 + 72) = 0;
  *(v18 + 16) = v15;
  sub_21D0D3954(v39, v18 + 24, &unk_27CE60D80);
  *(v18 + 64) = 0;
  v19 = v14;
  v20 = [v15 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v40, &unk_27CE60D80);
  sub_21D0CF7E0(v39, &unk_27CE60D80);
  *(v18 + 72) = v20;
  *(v6 + 56) = v18;
  *(v6 + 176) = v12;
  *(v6 + 72) = _s15RemindersUICore48TTRReminderDetailPendingMoveInteractorCapabilityC18reminderChangeItem11undoManager07pendingF7ContextACSo011REMReminderjK0C_So06NSUndoM0CAC0efO0VtcfC_0(*(v6 + 40), v19, &v34);
  type metadata accessor for TTRReminderDetailDatabaseMonitor();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + 32) = 1;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 40) = 0;
  *(v6 + 80) = v21;
  v22 = *(v6 + 72);
  swift_beginAccess();
  *(v22 + 24) = &protocol witness table for TTRReminderDetailInteractor;
  swift_unknownObjectWeakAssign();
  *(*(v6 + 80) + 24) = &off_282EDEC10;
  swift_unknownObjectWeakAssign();
  v23 = *(v6 + 128);
  v34 = *(v6 + 112);
  v35 = v23;
  v24 = *(v6 + 160);
  v36 = *(v6 + 144);
  v37 = v24;
  v25 = a4[1];
  *(v6 + 112) = *a4;
  *(v6 + 128) = v25;
  v26 = a4[3];
  *(v6 + 144) = a4[2];
  *(v6 + 160) = v26;
  sub_21D0CF7E0(&v34, &qword_27CE59DD8);
  swift_beginAccess();
  v27 = *(v6 + 32);
  v28 = v27;
  sub_21D550F48(v27, v6, sub_21D9AA3B0, 0);

  sub_21DBF902C();
  swift_allocObject();
  *(v6 + 64) = sub_21DBF903C();

  v29 = *(v6 + 40);
  sub_21D9A497C(v29, 0xD000000000000019, 0x800000021DC72360);

  if (v32)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64828);
    sub_21D0D0F1C(&qword_27CE64830, &qword_27CE64828);
    v30 = sub_21DBF91AC();
  }

  else
  {

    v30 = 0;
  }

  *(v6 + 104) = v30;

  return v6;
}

uint64_t sub_21D9A497C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_27CE56F30 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE64808);
  sub_21DBF8E0C();
  v9 = a1;
  v10 = sub_21DBF84AC();
  v11 = sub_21DBFAEDC();

  v12 = &off_278331000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v58 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_21D0CDFB4(a2, a3, &v58);
    *(v13 + 12) = 2112;
    v16 = [v9 objectID];
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&dword_21D0C9000, v10, v11, "TTRReminderDetailInteractor: apply new REMReminderChangeItem instance {reason: %s, objectID: %@}", v13, 0x16u);
    sub_21D0CF7E0(v14, &unk_27CE60070);
    MEMORY[0x223D46520](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v17 = v15;
    v12 = &off_278331000;
    MEMORY[0x223D46520](v17, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  swift_beginAccess();
  v18 = *(v4 + 32);
  v19 = [v9 v12[425]];
  *(&v59 + 1) = sub_21D0D8CF0(0, &qword_280D17880);
  *&v58 = v19;
  v20 = [v18 canUndo];
  if ((v20 & 1) != 0 || (v20 = [v18 canRedo], v20))
  {
    MEMORY[0x28223BE20](v20);
    v21 = sub_21D3FC320(sub_21D3FC4F8);

    __swift_destroy_boxed_opaque_existential_0(&v58);
    if (v21)
    {
      v22 = v9;
      v23 = sub_21DBF84AC();
      v24 = sub_21DBFAEDC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = [v22 v12[425]];
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&dword_21D0C9000, v23, v24, "TTRReminderDetailInteractor: reapplied edits on new REMReminderChangeItem instance {objectID: %@}", v25, 0xCu);
        sub_21D0CF7E0(v26, &unk_27CE60070);
        MEMORY[0x223D46520](v26, -1, -1);
        MEMORY[0x223D46520](v25, -1, -1);
      }
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v58);
  }

  v28 = v9;
  sub_21D9A5334(v28);
  v29 = [v28 accountCapabilities];
  swift_beginAccess();
  v30 = *(v4 + 48);
  *(v4 + 48) = v29;

  v31 = *(v4 + 32);
  v32 = type metadata accessor for TTRBasicUndoContext();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(&v59 + 1) = v32;
  v60 = &protocol witness table for TTRBasicUndoContext;
  *&v58 = v33;
  sub_21D0D3954(&v58, v66, &unk_27CE60D80);
  type metadata accessor for TTRReminderEditor();
  v34 = swift_allocObject();
  *(v34 + 72) = 0;
  *(v34 + 16) = v28;
  sub_21D0D3954(v66, v34 + 24, &unk_27CE60D80);
  *(v34 + 64) = 0;
  v35 = v28;
  v36 = v31;
  v37 = [v35 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(&v58, &unk_27CE60D80);
  sub_21D0CF7E0(v66, &unk_27CE60D80);
  *(v34 + 72) = v37;
  *(v4 + 56) = v34;

  v38 = *(v4 + 32);
  v39 = *(v4 + 72);
  v57 = *(v39 + 112);
  v40 = *(v39 + 128);
  v41 = *(v39 + 136);
  v42 = *(v39 + 144);
  v43 = *(v39 + 160);
  v44 = *(v39 + 168);
  LOBYTE(v37) = *(v39 + 152);
  v58 = *(v39 + 48);
  v56 = v58;
  v59 = v57;
  v60 = v40;
  v61 = v41;
  v62 = v42;
  v63 = v37;
  v64 = v43;
  v65 = v44;
  v45 = v35;
  v46 = v38;
  sub_21D0D0E78(v56);
  v47 = v57;
  sub_21D575E44(*(&v57 + 1), v40, v41, v42);
  v48 = v44;
  v49 = v43;
  v50 = _s15RemindersUICore48TTRReminderDetailPendingMoveInteractorCapabilityC18reminderChangeItem11undoManager07pendingF7ContextACSo011REMReminderjK0C_So06NSUndoM0CAC0efO0VtcfC_0(v45, v46, &v58);
  *(v4 + 72) = v50;

  swift_beginAccess();
  *(v50 + 24) = &protocol witness table for TTRReminderDetailInteractor;
  swift_unknownObjectWeakAssign();

  if (!*(v4 + 96))
  {
    v53 = sub_21D9A5C04();
    v54 = *(v4 + 88);
    *(v4 + 88) = v53;
    v52 = *(v4 + 96);
    *(v4 + 96) = 0;
    v51 = v54;
    goto LABEL_16;
  }

  if (*(v4 + 96) == 1)
  {
    sub_21D9A5668(v66);
    v51 = *(v4 + 88);
    *(v4 + 88) = v66[0];
    v52 = *(v4 + 96);
    *(v4 + 96) = 1;
LABEL_16:
    sub_21D9B10D8(v51, v52);
  }

  sub_21D9AA568();
  sub_21DBC9BC0(v45);
  return sub_21D9A6950(0);
}

uint64_t sub_21D9A4FC0(uint64_t a1, void **a2)
{
  v3 = *a2;
  result = swift_beginAccess();
  if (v3 != *(a1 + 40))
  {
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE64808);
    v6 = v3;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEDC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = [v6 objectID];
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_21D0C9000, v7, v8, "TTRReminderDetailInteractor: received updated REMReminderChangeItem instance {objectID: %@}", v9, 0xCu);
      sub_21D0CF7E0(v10, &unk_27CE60070);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    return sub_21D9A497C(v6, 0xD000000000000023, 0x800000021DC72500);
  }

  return result;
}

uint64_t static TTRReminderDetailInteractor.hasUncommittedChanges(initial:current:)(void *a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = a1;

  sub_21D0D8CF0(0, &qword_27CE5A390);
  LOBYTE(a2) = sub_21DBFB63C();

  return (a2 ^ 1) & 1;
}

id static TTRReminderDetailInteractor.makeSaveRequest(store:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v1 setSaveIsNoopIfNoChangedKeys_];
  return v1;
}

id TTRReminderDetailInteractor.undoManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

id TTRReminderDetailInteractor.reminderChangeItem.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_21D9A5334(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  v4 = a1;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 24);
    swift_getObjectType();
    v6 = *(v5 + 16);
    v7 = *(v1 + 40);
    v6();

    swift_unknownObjectRelease();
  }
}

id TTRReminderDetailInteractor.attributeEditor.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC09CF0;
  swift_beginAccess();
  v4 = *(v1 + 40);
  *(v3 + 32) = v4;
  swift_beginAccess();
  v13 = *(v1 + 32);
  v5 = type metadata accessor for TTRBasicUndoContext();
  v6 = swift_allocObject();
  *(v6 + 16) = v13;
  v7 = type metadata accessor for TTRRemindersListChangeItemAttributeEditorProvider();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = v6;
  v8[8] = v5;
  v8[9] = &protocol witness table for TTRBasicUndoContext;
  v9 = type metadata accessor for TTRRemindersListAttributeEditor();
  v10 = swift_allocObject();
  v10[5] = v7;
  v10[6] = &protocol witness table for TTRRemindersListChangeItemAttributeEditorProvider;
  v10[2] = v8;
  a1[3] = v9;
  a1[4] = &protocol witness table for TTRRemindersListAttributeEditor;
  *a1 = v10;
  v11 = v4;

  return v13;
}

id TTRReminderDetailInteractor.originalAccountCapabilities.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TTRReminderDetailInteractor.subtasks.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 88);
  if (!*(v1 + 96))
  {
    if (!v3)
    {
      v5 = MEMORY[0x277D84F90];
      *(v1 + 88) = MEMORY[0x277D84F90];
      *(v1 + 96) = 1;
      v8 = 0;
      goto LABEL_8;
    }

LABEL_7:
    sub_21D9A5668(&v9);
    v5 = v9;
    v6 = *(v1 + 88);
    *(v1 + 88) = v9;
    v7 = *(v1 + 96);
    *(v1 + 96) = 1;
    sub_21DBF8E0C();
    v3 = v6;
    v8 = v7;
LABEL_8:
    result = sub_21D9B10D8(v3, v8);
    *a1 = v5;
    return result;
  }

  if (*(v1 + 96) != 1)
  {
    goto LABEL_7;
  }

  *a1 = v3;

  return sub_21DBF8E0C();
}

void sub_21D9A5668(void *a1@<X8>)
{
  v2 = v1;
  v39[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = [*(v1 + 40) saveRequest];
  v5 = [v4 store];

  v6 = [*(v2 + 40) objectID];
  v39[0] = 0;
  v7 = [v5 fetchReminderWithObjectID:v6 error:v39];

  if (!v7)
  {
    v22 = v39[0];
    v23 = sub_21DBF52DC();

    swift_willThrow();
LABEL_16:
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v26 = sub_21DBF84BC();
    __swift_project_value_buffer(v26, qword_27CE64808);
    v27 = v23;

    v28 = sub_21DBF84AC();
    v29 = sub_21DBFAEBC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v5;
      v32 = swift_slowAlloc();
      v39[0] = v32;
      *v30 = 136315394;
      swift_getErrorValue();
      v33 = sub_21DBFC74C();
      v35 = sub_21D0CDFB4(v33, v34, v39);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      v36 = [*(v2 + 40) objectID];
      *(v30 + 14) = v36;
      *v31 = v36;
      _os_log_impl(&dword_21D0C9000, v28, v29, "Failed to fetch reminder when loading subtasks in reminder detail {error: %s, objectID: %@}", v30, 0x16u);
      sub_21D0CF7E0(v31, &unk_27CE60070);
      MEMORY[0x223D46520](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223D46520](v32, -1, -1);
      MEMORY[0x223D46520](v30, -1, -1);

LABEL_22:
      v24 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

LABEL_21:
    goto LABEL_22;
  }

  v8 = v39[0];
  v9 = [v7 subtaskContext];
  if (!v9)
  {

    goto LABEL_21;
  }

  v10 = v9;
  v39[0] = 0;
  v11 = [v9 fetchRemindersForMovingWithError_];
  v12 = v39[0];
  if (!v11)
  {
    v25 = v39[0];
    v23 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_16;
  }

  v13 = v11;
  sub_21D0D8CF0(0, &qword_280D17860);
  v14 = sub_21DBFA5EC();
  v15 = v12;

  if (v14 >> 62)
  {
    v16 = sub_21DBFBD7C();
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_25:

    goto LABEL_22;
  }

LABEL_6:
  v37 = v5;
  v39[0] = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  if (v16 < 0)
  {
    __break(1u);
  }

  v17 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223D44740](v17, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v17 + 32);
    }

    v19 = v18;
    ++v17;
    v20 = [*(v2 + 40) saveRequest];
    v21 = [v20 updateReminder_];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v16 != v17);

  v24 = v39[0];
LABEL_23:
  *a1 = v24;
}

uint64_t TTRReminderDetailInteractor.subtasksCount.getter()
{
  v1 = *(v0 + 88);
  if (*(v0 + 96))
  {
    if (*(v0 + 96) == 1)
    {
      v2 = TTRReminderDetailSubtaskChangeItemsIncludingUnsupported.allExceptUnsupported.getter();
      if (v2 >> 62)
      {
        v1 = sub_21DBFBD7C();
      }

      else
      {
        v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v1 = sub_21D9A5C04();
      v3 = *(v0 + 88);
      *(v0 + 88) = v1;
      v4 = *(v0 + 96);
      *(v0 + 96) = 0;
      sub_21D9B10D8(v3, v4);
    }
  }

  return v1;
}

id sub_21D9A5C04()
{
  v24[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v1 = [*(v0 + 40) saveRequest];
  v2 = [v1 store];

  v3 = [*(v0 + 40) objectID];
  v4 = [objc_allocWithZone(MEMORY[0x277D447D0]) initWithStore_];
  v24[0] = 0;
  v5 = [v4 fetchRemindersCountWithParentReminderID:v3 error:v24];
  if (v5)
  {
    v6 = v5;
    v7 = v24[0];
    v8 = [v6 integerValue];
  }

  else
  {
    v9 = v24[0];
    v10 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_27CE64808);
    v12 = v10;
    v13 = v3;
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEBC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v16 = 136315394;
      swift_getErrorValue();
      v18 = sub_21DBFC74C();
      v20 = sub_21D0CDFB4(v18, v19, v24);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v13;
      *v17 = v13;
      v21 = v13;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Failed to fetch subtasks count when loading subtasks count in reminder detail {error: %s, parentReminderID: %@}", v16, 0x16u);
      sub_21D0CF7E0(v17, &unk_27CE60070);
      MEMORY[0x223D46520](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223D46520](v23, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v8;
}

id TTRReminderDetailInteractor.effectiveList.getter@<X0>(void *a1@<X8>)
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

void *TTRReminderDetailInteractor.pendingMoveTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = 1;
    v5 = *(v2 + 160);
  }

  else
  {
    v5 = *(v2 + 112);
    if (v5)
    {
      v6 = a1;
      v7 = v5;
      a1 = v6;
      v4 = 0;
    }

    else
    {
      v4 = -1;
    }
  }

  v8 = *(v2 + 120);
  v9 = *(v2 + 128);
  v10 = *(v2 + 136);
  v11 = *(v2 + 144);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = *(v2 + 152);
  v12 = v3;

  return sub_21D575E44(v8, v9, v10, v11);
}

id TTRReminderDetailInteractor.pendingMoveContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v2 + 48);
  v12 = *(v2 + 112);
  v4 = *(v2 + 128);
  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  v7 = *(v2 + 168);
  v11 = *(v2 + 160);
  *a1 = v3;
  *(a1 + 16) = v12;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(v2 + 152);
  *(a1 + 64) = v11;
  *(a1 + 72) = v7;
  sub_21D0D0E78(v3);
  v8 = v12;
  sub_21D575E44(*(&v12 + 1), v4, v5, v6);
  v9 = v7;

  return v11;
}

uint64_t TTRReminderDetailInteractor.hasUncommittedChanges.getter()
{

  v1 = TTRReminderDetailPendingMoveInteractorCapability.hasUncommittedChanges.getter();

  if (v1)
  {
    return 1;
  }

  return sub_21D9B0EC0(v0);
}

uint64_t TTRReminderDetailInteractor.authorizationRelatedPropertyChanges.getter()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = [v3 displayDate];
    swift_beginAccess();
    v5 = [*(v0 + 40) displayDate];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v29 = 0;
        goto LABEL_10;
      }

      sub_21D0D8CF0(0, &qword_27CE5CC20);
      v29 = sub_21DBFB63C();
    }

    else
    {
      if (!v5)
      {
        v29 = 1;
LABEL_11:
        v8 = [v3 alarms];
        if (v8)
        {
          v9 = v8;
          sub_21D0D8CF0(0, &qword_280D17670);
          sub_21DBFA5EC();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64838);
        sub_21D0D8CF0(0, &qword_280D17828);
        sub_21D0D0F1C(&qword_280D178B0, &qword_27CE64838);
        sub_21D9B10EC();
        v10 = sub_21DBFA42C();

        v11 = [*(v2 + 40) alarms];
        if (v11)
        {
          v12 = v11;
          sub_21D0D8CF0(0, &qword_280D17670);
          sub_21DBFA5EC();
        }

        v13 = sub_21DBFA42C();

        v14 = sub_21D32283C(v10, v13);

        v7 = MEMORY[0x277D84FA0];
        if ((v29 & 1) == 0)
        {
          sub_21DBFC7DC();
          sub_21DBFA27C();
          v15 = sub_21DBFC82C();
          v16 = -1 << *(v7 + 32);
          v17 = v15 & ~v16;
          if ((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = *(*(v7 + 48) + v17);
              if (v19 <= 2 && v19 != 1 && v19 != 2)
              {
                break;
              }

              v20 = sub_21DBFC64C();

              if (v20)
              {
                goto LABEL_24;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            v7 = MEMORY[0x277D84FA0];
            if ((v14 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_25;
          }

LABEL_23:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_21D9AF740(0, v17, isUniquelyReferenced_nonNull_native);
        }

LABEL_24:
        if ((v14 & 1) == 0)
        {
LABEL_28:
          sub_21DBFC7DC();
          sub_21DBFA27C();
          v22 = sub_21DBFC82C();
          v23 = -1 << *(v7 + 32);
          v24 = v22 & ~v23;
          if (((*(v7 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
LABEL_35:
            v27 = swift_isUniquelyReferenced_nonNull_native();
            sub_21D9AF740(1, v24, v27);

            return v7;
          }

          v25 = ~v23;
          while (*(*(v7 + 48) + v24) > 2u || !*(*(v7 + 48) + v24) || *(*(v7 + 48) + v24) == 2)
          {
            v26 = sub_21DBFC64C();

            if (v26)
            {
              goto LABEL_25;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v7 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_25:

        return v7;
      }

      v29 = 0;
    }

    v4 = v6;
LABEL_10:

    goto LABEL_11;
  }

  return MEMORY[0x277D84FA0];
}

void sub_21D9A675C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 trigger];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v3 = 0;
    }
  }

  *a2 = v3;
}

void TTRReminderDetailInteractor.dueDateSource.getter(void *a1@<X8>)
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

uint64_t TTRReminderDetailInteractor.update(parentList:)(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  TTRReminderDetailPendingMoveInteractorCapability.update(parentList:)(&v3);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(title:)(NSAttributedString title)
{

  v2 = sub_21D9CA3E0(title.super.isa, 0, 1);
  if (v2)
  {
    v3 = v2;
    swift_retain_n();
    sub_21D182E74(sub_21D23298C, v3);
  }

  sub_21D9A6950(1);
}

uint64_t sub_21D9A6950(char a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(*(v1 + 56) + 16);
    v7 = *(v4 + 8);
    v8 = v6;
    v7(v6, sub_21D9B1E38, v1, a1 & 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(completed:)(Swift::Bool completed)
{
  v1 = completed;

  TTRReminderEditor.edit(completed:trackEditedUsing:)(v1, 0);

  sub_21D9A6950(1);
}

uint64_t TTRReminderDetailInteractor.update(priorityLevel:)()
{

  v0 = REMReminderDefaultPriorityForPriorityLevel();
  TTRReminderEditor.edit(priority:)(v0);

  return sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(isFlagged:)(Swift::Bool isFlagged)
{

  TTRReminderEditor.edit(isFlagged:)(isFlagged);

  sub_21D9A6950(1);
}

uint64_t TTRReminderDetailInteractor.update(dueDateComponents:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TTRReminderEditor.DueDateEditingRelatedProperties();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  LOBYTE(a1) = sub_21D9C50E0(a1, v6);

  sub_21D0CF7E0(v6, &unk_27CE60DA0);
  if ((a1 & 1) != 0 && (*(v2 + 208) & 1) == 0)
  {
    *(v2 + 208) = 1;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;

    sub_21D182E74(sub_21D9B1154, v9);
  }

  return sub_21D9A6950(1);
}

uint64_t TTRReminderDetailInteractor.update(dueDateDeltaAlertInterval:)(void *a1)
{

  TTRReminderEditor.edit(dueDateDeltaAlertInterval:)(a1);

  return sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(prefersUrgentPresentationStyleForDateAlarms:)(Swift::Bool prefersUrgentPresentationStyleForDateAlarms)
{
  v2 = v1;
  v4 = *(v2 + 56);
  v5 = *(v4 + 16);

  LOBYTE(v5) = [v5 prefersUrgentPresentationStyleForDateAlarms];
  [*(v4 + 16) setPrefersUrgentPresentationStyleForDateAlarms_];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_21D182E74(sub_21D9B1160, v6);

  sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(recurrenceRules:shouldCopyRecurrenceEnd:)(Swift::OpaquePointer_optional recurrenceRules, Swift::Bool shouldCopyRecurrenceEnd)
{
  is_nil = recurrenceRules.is_nil;
  rawValue = recurrenceRules.value._rawValue;
  if (*(v2 + 176) == 1)
  {
    swift_beginAccess();
    if (([*(v2 + 40) isRecurrent] & 1) == 0 && rawValue && rawValue[2] && (objc_msgSend(*(v2 + 40), sel_isCompleted) & 1) == 0)
    {

      TTRReminderEditor.editDueDateComponentsByPromotingAlternativeDueDateForCalendarIfAvailable()();
    }
  }

  v6.is_nil = is_nil;
  v6.value._rawValue = rawValue;
  TTRReminderEditor.edit(recurrenceRules:shouldCopyRecurrenceEnd:)(v6, v5);

  sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.updateRecurrenceEndToDefault()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for TTRRecurrenceEndModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF509C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  swift_beginAccess();
  v16 = [*(v1 + 40) recurrenceRules];
  if (v16)
  {
    v17 = v16;
    v35 = v6;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v18 = sub_21DBFA5EC();

    if (v18 >> 62)
    {
      if (sub_21DBFBD7C())
      {
LABEL_4:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x223D44740](0, v18);
        }

        else
        {
          if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_22:
            swift_once();
LABEL_10:
            v23 = sub_21DBF84BC();
            __swift_project_value_buffer(v23, qword_27CE64808);

            v24 = sub_21DBF84AC();
            v25 = sub_21DBFAECC();

            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              *v26 = 138412290;
              v28 = [*(v1 + 40) objectID];
              *(v26 + 4) = v28;
              *v27 = v28;
              _os_log_impl(&dword_21D0C9000, v24, v25, "Missing dueDate -- Failed to set endRecurrence to default {reminder.objectID: %@}", v26, 0xCu);
              sub_21D0CF7E0(v27, &unk_27CE60070);
              MEMORY[0x223D46520](v27, -1, -1);
              MEMORY[0x223D46520](v26, -1, -1);
            }

            return;
          }

          v19 = *(v18 + 32);
        }

        v17 = v19;

        v20 = [*(v1 + 40) dueDateComponents];
        if (v20)
        {
          v21 = v20;
          sub_21DBF4EFC();

          (*(v10 + 16))(v12, v15, v9);
          v22 = v17;
          TTRRecurrenceEndModel.init(_:recurrenceRule:)(v12, v22, v8);
          sub_21D9B1D60(v8, v4, type metadata accessor for TTRRecurrenceEndModel);
          (*(v35 + 56))(v4, 0, 1, v5);

          TTRReminderEditor.edit(recurrenceEnd:)(v4);

          sub_21D9A6950(1);

          sub_21D0CF7E0(v4, &unk_27CE62610);
          sub_21D9B1DC8(v8, type metadata accessor for TTRRecurrenceEndModel);
          (*(v10 + 8))(v15, v9);
          return;
        }

        if (qword_27CE56F30 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }
    }

    else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (qword_27CE56F30 != -1)
  {
    swift_once();
  }

  v29 = sub_21DBF84BC();
  __swift_project_value_buffer(v29, qword_27CE64808);

  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAECC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = [*(v1 + 40) objectID];
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&dword_21D0C9000, v30, v31, "Missing recurrenceRule -- Failed to set endRecurrence to default {reminder.objectID: %@}", v32, 0xCu);
    sub_21D0CF7E0(v33, &unk_27CE60070);
    MEMORY[0x223D46520](v33, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);
  }
}

Swift::Void __swiftcall TTRReminderDetailInteractor.update(notes:)(NSAttributedString_optional notes)
{
  isa = notes.value.super.isa;

  v2 = sub_21D9C7928(isa);
  if (v2)
  {
    v3 = v2;
    swift_retain_n();
    sub_21D182E74(sub_21D233058, v3);
  }

  sub_21D9A6950(1);
}

Swift::Void __swiftcall TTRReminderDetailInteractor.removeAllAssignments()()
{

  TTRReminderEditor.removeAllAssignments()();

  sub_21D9A6950(1);
}

uint64_t TTRReminderDetailInteractor.update(assignee:)(void *a1)
{
  v3 = *(v1 + 72);
  v4 = v3[20];
  v5 = v3[14];
  v6 = v3[8];
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v7 = v6;
  v8 = v4;
  v9 = v5;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(v21);

  sub_21D0D3954(v21, &v16, &qword_27CE59DC0);
  v10 = v19;
  if (v19)
  {
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v16, v19);
    v12 = *(v11 + 80);

    v13 = v12(v10, v11);
    if (v13)
    {
      v14 = v13;
      v10 = [v13 objectID];

      __swift_destroy_boxed_opaque_existential_0(&v16);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v16);
      v10 = 0;
    }
  }

  else
  {

    sub_21D0CF7E0(&v16, &qword_27CE59DC0);
  }

  TTRReminderEditor.addAssignment(assigneeID:originatorID:)(a1, v10);

  sub_21D9A6950(1);
  return sub_21D0CF7E0(v21, &qword_27CE59DC0);
}

uint64_t TTRReminderDetailInteractor.update(selectedSectionID:originalSectionID:)(void **a1, id *a2)
{
  v2 = *a1;
  v6[0] = *a2;
  v3 = v6[0];
  v6[1] = v2;
  v6[2] = 0;
  v6[3] = 0;
  v7 = 0;
  v4 = v2;

  sub_21D15751C(v6[0]);
  sub_21DB4C2F8(v6);

  sub_21D157878(v3);
  sub_21D157878(v2);
}

uint64_t TTRReminderDetailInteractor.update(sectionDisplayName:isFromSuggestion:originalSectionID:)(void *a1, void *a2, char a3, id *a4)
{
  v6[0] = *a4;
  v4 = v6[0];
  v6[1] = 1;
  v6[2] = a1;
  v6[3] = a2;
  v7 = a3;

  sub_21D15751C(v6[0]);
  sub_21DBF8E0C();
  sub_21DB4C2F8(v6);
  sub_21D157878(v4);
  sub_21D157878(1);
}

void TTRReminderDetailInteractor.addSection(withDisplayName:originalSectionID:isFromSuggestion:)(uint64_t a1, uint64_t a2, void **a3, char a4)
{
  v8 = *a3;
  swift_beginAccess();
  v9 = [*(v4 + 40) listChangeItem];
  if (v9)
  {
    v10 = v9;
    v23 = a2;
    v11 = [v9 objectID];
    v12 = [v11 entityName];

    v13 = sub_21DBFA16C();
    v15 = v14;

    v16 = [objc_opt_self() cdEntityName];
    v17 = sub_21DBFA16C();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
    }

    else
    {
      v21 = sub_21DBFC64C();

      if ((v21 & 1) == 0)
      {
        v24 = v8;
        sub_21D9A8014(a1, v23, &v24, a4 & 1);

        return;
      }
    }

    v22 = [v10 objectID];
    v24 = v8;
    sub_21D9A7AA0(v22, a1, v23, &v24);
  }
}

void sub_21D9A7AA0(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v50 = *v4;
  v7 = sub_21DBF619C();
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a4;
  swift_beginAccess();
  v11 = [v4[5] saveRequest];
  v12 = [v11 store];
  v53 = 0;
  v13 = [v12 fetchTemplateWithObjectID:a1 error:&v53];
  if (v13)
  {
    v14 = v13;
    v49 = v10;
    v15 = v53;
    v16 = [v11 updateTemplate_];
    v17 = [v16 sectionsContextChangeItem];
    if (v17)
    {
      v18 = v17;
      v46 = v16;
      v47 = v12;
      v48 = v4;
      v19 = sub_21DBFA12C();
      v45 = [v11 addTemplateSectionWithDisplayName:v19 toTemplateSectionContextChangeItem:v18];

      v44 = v11;
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      sub_21DBF62DC();
      sub_21DBF62CC();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
      v21 = &v9[v20[12]];
      v22 = v20[16];
      v23 = &v9[v20[20]];
      v24 = *MEMORY[0x277D44E60];
      v25 = sub_21DBF613C();
      (*(*(v25 - 8) + 104))(v9, v24, v25);
      *v21 = TTRUserDefaults.activitySessionId.getter();
      v21[1] = v26;
      TTRUserDefaults.activitySessionBeginTime.getter(&v9[v22]);
      v53 = sub_21DBFC8EC();
      v54 = v27;
      MEMORY[0x223D42AA0](0x6C706D6554202D20, 0xEB00000000657461);
      v28 = v54;
      *v23 = v53;
      *(v23 + 1) = v28;
      v29 = v51;
      (*(v51 + 104))(v9, *MEMORY[0x277D44E98], v7);
      sub_21DBF62BC();

      (*(v29 + 8))(v9, v7);
      v30 = v45;
      v31 = [v45 objectID];
      v52 = v49;
      v53 = v31;
      sub_21D9AA810(v14, &v53, &v52);
    }

    else
    {
    }
  }

  else
  {
    v32 = v53;
    v33 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56F30 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_27CE64808);
    v35 = v33;
    v36 = sub_21DBF84AC();
    v37 = sub_21DBFAEBC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v38 = 136315138;
      swift_getErrorValue();
      v40 = sub_21DBFC75C();
      v42 = sub_21D0CDFB4(v40, v41, &v53);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_21D0C9000, v36, v37, "Unable to fetch Template {error: %s}", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223D46520](v39, -1, -1);
      MEMORY[0x223D46520](v38, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D9A8014(uint64_t a1, uint64_t a2, void **a3, int a4)
{
  v9 = sub_21DBF619C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  swift_beginAccess();
  v14 = [*(v4 + 40) listChangeItem];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 sectionsContextChangeItem];
    if (v16)
    {
      v45 = a4;
      v46 = v13;
      v47 = v4;
      v17 = v16;
      v18 = [*(v4 + 40) saveRequest];
      v19 = sub_21DBFA12C();
      v44 = v17;
      v43 = [v18 addListSectionWithDisplayName:v19 toListSectionContextChangeItem:v17];

      v20 = [v15 groceryContextChangeItem];
      if (v20 && (v21 = v20, v22 = [v20 shouldCategorizeGroceryItems], v21, v22))
      {
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_21DBFBEEC();
        v23 = sub_21DBFC8EC();
        v25 = v24;

        v49 = v23;
        v50 = v25;
        v26 = 0x207473694C202D20;
        v27 = 0xEF797265636F7247;
      }

      else
      {
        v49 = sub_21DBFC8EC();
        v50 = v28;
        v26 = 0x7473694C202D20;
        v27 = 0xE700000000000000;
      }

      MEMORY[0x223D42AA0](v26, v27);
      v41 = v50;
      v42 = v49;
      v40[1] = a1;
      v40[2] = a2;
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      sub_21DBF62DC();
      sub_21DBF62CC();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
      v30 = &v12[v29[12]];
      v31 = v29[16];
      v32 = &v12[v29[20]];
      v33 = *MEMORY[0x277D44E60];
      v34 = sub_21DBF613C();
      (*(*(v34 - 8) + 104))(v12, v33, v34);
      *v30 = TTRUserDefaults.activitySessionId.getter();
      v30[1] = v35;
      TTRUserDefaults.activitySessionBeginTime.getter(&v12[v31]);
      v36 = v41;
      *v32 = v42;
      *(v32 + 1) = v36;
      (*(v10 + 104))(v12, *MEMORY[0x277D44E98], v9);
      sub_21DBF62BC();

      (*(v10 + 8))(v12, v9);
      v37 = v43;
      if (v45)
      {
        v38 = sub_21DBFA12C();
        [v37 setCanonicalName_];
      }

      v39 = [v37 objectID];
      v48 = v46;
      v49 = v39;
      sub_21D9AAFE8(v15, &v49, &v48);
    }
  }
}

uint64_t TTRReminderDetailInteractor.remove(subtask:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  if (!*(v2 + 96))
  {
    if (!v4)
    {
      v4 = MEMORY[0x277D84F90];
      *(v2 + 88) = MEMORY[0x277D84F90];
      *(v2 + 96) = 1;
      v7 = 0;
      v8 = 0;
      goto LABEL_6;
    }

LABEL_5:
    sub_21D9A5668(&v17);
    v4 = v17;
    v5 = *(v2 + 88);
    *(v2 + 88) = v17;
    v6 = *(v2 + 96);
    *(v2 + 96) = 1;
    sub_21DBF8E0C();
    v7 = v5;
    v8 = v6;
LABEL_6:
    sub_21D9B10D8(v7, v8);
    goto LABEL_7;
  }

  if (*(v2 + 96) != 1)
  {
    goto LABEL_5;
  }

  sub_21DBF8E0C();
LABEL_7:
  if (v4 >> 62)
  {
LABEL_27:
    v9 = sub_21DBFBD7C();
  }

  else
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (v9 != v10)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = v10;
      v13 = MEMORY[0x223D44740]();
      swift_unknownObjectRelease();
      v10 = v12;
      if (v13 == a1)
      {
LABEL_18:
        v17 = v4;

        v14 = *(v2 + 88);
        *(v2 + 88) = v17;
        v15 = *(v2 + 96);
        *(v2 + 96) = 1;
        sub_21D9B10D8(v14, v15);

        TTRReminderEditor.remove(subtask:)(a1);

        return sub_21D9A6950(1);
      }
    }

    else
    {
      if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (*(v4 + 8 * v10 + 32) == a1)
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_26;
    }
  }
}