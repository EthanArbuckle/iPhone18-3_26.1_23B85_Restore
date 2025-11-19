void sub_21D1C1F2C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, unint64_t, uint64_t))
{
  v8 = [*(v4 + 16) saveRequest];
  v9 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  v39 = a3;
  v10 = [v8 updateReminder_];
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_33:

    return;
  }

  v11 = 0;
  v33 = v8;
  v34 = a1 + 32;
  v12 = v9;
  v38 = a2;
  while (1)
  {
    v14 = v34 + 16 * v11;
    v15 = *(v14 + 8);
    v16 = *v14;
    sub_21DBF8E0C();
    v36 = v16;
    v17 = [v8 _copyReminder_toReminderSubtaskContextChangeItem_];
    v37 = v17;
    if (v15 >> 62)
    {
      if (!sub_21DBFBD7C() || (v25 = sub_21DBFBD7C()) == 0)
      {
LABEL_17:
        v24 = v12;
        goto LABEL_18;
      }

      v18 = v25;
      v41 = v12;
      sub_21DBFC01C();
      if (v18 < 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_17;
      }

      v41 = v12;
      sub_21DBFC01C();
    }

    v19 = 0;
    v20 = v15;
    v21 = v15 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v22 = MEMORY[0x223D44740](v19, v20);
      }

      else
      {
        v22 = *(v20 + 8 * v19 + 32);
      }

      v23 = v22;
      ++v19;
      [v8 _copyReminder_toReminderSubtaskContextChangeItem_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v18 != v19);
    v24 = v41;
    v17 = v37;
    v12 = MEMORY[0x277D84F90];
LABEL_18:
    a4(v17, v12, v39);
    [a2 insertReminderChangeItem:v17 afterReminderChangeItem:v10];
    v26 = [v17 objectID];
    v27 = v12;
    MEMORY[0x223D42D80]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    if (v24 >> 62)
    {
      break;
    }

    v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_22;
    }

LABEL_32:
    v13 = v37;
    v10 = v37;
LABEL_3:
    ++v11;

    v12 = v27;
    a2 = v38;
    if (v11 == v35)
    {
      goto LABEL_33;
    }
  }

  v28 = sub_21DBFBD7C();
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v28 >= 1)
  {
    v29 = v37;
    v30 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x223D44740](v30, v24);
      }

      else
      {
        v31 = *(v24 + 8 * v30 + 32);
      }

      v10 = v31;
      a4(v31, v27, v39);
      [v38 insertReminderChangeItem:v10 afterReminderChangeItem:v29];
      v32 = [v10 objectID];
      MEMORY[0x223D42D80]();
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      ++v30;
      sub_21DBFA6CC();

      v29 = v10;
    }

    while (v28 != v30);
    v8 = v33;
    v13 = v37;
    goto LABEL_3;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21D1C2354(uint64_t a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = [*(v1 + 16) saveRequest];
  v4 = [v3 store];

  v5 = sub_21D0D8CF0(0, &qword_280D17880);
  v6 = sub_21DBFA5DC();
  v39[0] = 0;
  v7 = [v4 fetchRemindersWithObjectIDs:v6 error:v39];

  v8 = v39[0];
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D183A0C();
    v9 = sub_21DBF9E6C();
    v10 = v8;

    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = sub_21DBFC21C();
      v12 = 0;
      v13 = 0;
      a1 = 0;
      v9 = v11 | 0x8000000000000000;
    }

    else
    {
      v27 = -1 << *(v9 + 32);
      v12 = v9 + 64;
      v13 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      a1 = v29 & *(v9 + 64);
    }

    v5 = 0;
    v30 = (v13 + 64) >> 6;
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v31 = v5;
      v32 = a1;
      v33 = v5;
      if (!a1)
      {
        break;
      }

LABEL_16:
      v34 = (v32 - 1) & v32;
      v35 = (v33 << 9) | (8 * __clz(__rbit64(v32)));
      v36 = *(*(v9 + 56) + v35);
      v37 = *(*(v9 + 48) + v35);
      v38 = v36;
      if (!v37)
      {
LABEL_22:
        sub_21D0CFAF8();
        return;
      }

      while (1)
      {

        TTRListEditor.remove(reminder:)(v38);
        v5 = v33;
        a1 = v34;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        if (sub_21DBFC2DC())
        {
          swift_dynamicCast();
          v37 = v39[0];
          swift_dynamicCast();
          v38 = v39[0];
          v33 = v5;
          v34 = a1;
          if (v37)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
        goto LABEL_22;
      }

      v32 = *(v12 + 8 * v33);
      ++v31;
      if (v32)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v39[0];
    v9 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56580 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v15 = sub_21DBF84BC();
  __swift_project_value_buffer(v15, qword_27CE591E0);
  v16 = v9;
  sub_21DBF8E0C();
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAEBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v39[0] = v20;
    *v19 = 136315394;
    swift_getErrorValue();
    v21 = sub_21DBFC74C();
    v23 = sub_21D0CDFB4(v21, v22, v39);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = MEMORY[0x223D42DB0](a1, v5);
    v26 = sub_21D0CDFB4(v24, v25, v39);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_21D0C9000, v17, v18, "Failed to get reminders for undelete {error: %s, reminderID: %s}", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  else
  {
  }
}

void sub_21D1C27EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_21D0D8CF0(0, &qword_280D1B900);

  v7 = sub_21DBFB12C();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D1D20C4;
  *(v8 + 24) = v6;
  v10[4] = sub_21D1D1E40;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21D11E5E4;
  v10[3] = &block_descriptor_243;
  v9 = _Block_copy(v10);

  [a3 saveWithQueue:v7 completion:v9];
  _Block_release(v9);
}

void sub_21D1C2928(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE591E0);
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_21DBFC74C();
      v13 = sub_21D0CDFB4(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to delete reminders {error: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    v14 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_21D1C2AF8(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_21DBFBD7C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_21DBFC01C();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 objectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v4 != v5);
  }

  v9 = *(v2 + 16);
  sub_21D0D8CF0(0, &qword_280D17880);
  v10 = sub_21DBFA5DC();

  [v9 undeleteRemindersWithoutUndoWithIDs_];
}

void sub_21D1C2C7C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE591E0);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_21DBFC74C();
      v11 = sub_21D0CDFB4(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Failed to recover reminders {error: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static TTRListEditor.actualOperation(forChangingParentListOf:to:allowsLossyCopying:)@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, char *a4@<X8>)
{
  v30 = sub_21D0D8CF0(0, &qword_280D17860);
  v31 = &protocol witness table for REMReminder;
  v29[0] = a1;
  v8 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v9 = a1;
  v10 = a2;
  v11 = [v9 list];
  v12 = [v11 objectID];

  v13 = [v10 objectID];
  sub_21D0D8CF0(0, &qword_280D17880);
  LOBYTE(v11) = sub_21DBFB63C();

  if (v11)
  {
    goto LABEL_2;
  }

  if (sub_21D1C65A4(&selRef_cdEntityNameForSavedReminder))
  {

    v14 = 0;
    goto LABEL_17;
  }

  if (sub_21D1C65A4(&selRef_cdEntityName))
  {

    v14 = 3;
    goto LABEL_17;
  }

  v15 = [v9 accountID];
  v16 = [v10 accountID];
  v17 = sub_21DBFB63C();

  if (v17)
  {
    v18 = [v10 account];
    v19 = [v18 capabilities];

    LOBYTE(v18) = [v19 supportsMoveAcrossLists];
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    v20 = [v10 account];
    v21 = [v20 capabilities];

    LOBYTE(v20) = [v21 supportsMoveAcrossSharedLists];
    if (v20)
    {
LABEL_2:

LABEL_3:
      v14 = 4;
      goto LABEL_17;
    }

    v22 = [*v8 list];
    v23 = [v22 isShared];

    if (!v23)
    {
      v28 = [v10 isShared];

      if ((v28 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_12:
    }

    v14 = 5;
    goto LABEL_17;
  }

  v24 = [v9 account];
  v25 = [v10 account];
  v26 = [v24 canCopyReminderLosslesslyToAccount_];

  if ((v26 | a3))
  {
    v14 = 5;
  }

  else
  {
    v14 = 1;
  }

LABEL_17:
  *a4 = v14;
  return __swift_destroy_boxed_opaque_existential_0(v29);
}

{
  v32 = sub_21D0D8CF0(0, &qword_280D17770);
  v33 = &protocol witness table for REMReminderChangeItem;
  v31[0] = a1;
  v8 = __swift_project_boxed_opaque_existential_1(v31, v32);
  v9 = a1;
  v10 = a2;
  v11 = [v9 listChangeItem];
  if (v11)
  {
    v12 = v11;
    sub_21D0D8CF0(0, &unk_280D177F0);
    v13 = [v12 objectID];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v10 objectID];
  v15 = v14;
  if (v13)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    v16 = sub_21DBFB63C();

    if (v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (sub_21D1C65A4(&selRef_cdEntityNameForSavedReminder))
  {

    v17 = 0;
    goto LABEL_13;
  }

  if (sub_21D1C65A4(&selRef_cdEntityName))
  {

    v17 = 3;
    goto LABEL_13;
  }

  v19 = [v9 accountID];
  v20 = [v10 accountID];
  sub_21D0D8CF0(0, &qword_280D17880);
  v21 = sub_21DBFB63C();

  if (v21)
  {
    v22 = [v10 accountCapabilities];
    v23 = [v22 supportsMoveAcrossLists];

    if ((v23 & 1) == 0)
    {

      v17 = 5;
      goto LABEL_13;
    }

    v24 = [v10 accountCapabilities];
    v25 = [v24 supportsMoveAcrossSharedLists];

    if ((v25 & 1) == 0)
    {
      v26 = [*v8 listChangeItem];
      if (v26 && (v27 = v26, sub_21D0D8CF0(0, &unk_280D177F0), v28 = [v27 isShared], v27, v28))
      {
      }

      else
      {
        v30 = [v10 isShared];

        if ((v30 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v17 = 5;
      goto LABEL_13;
    }

LABEL_6:

LABEL_7:
    v17 = 4;
    goto LABEL_13;
  }

  v29 = sub_21D1C3494(v9, v10);

  if (v29 == 2)
  {
    v17 = 2;
  }

  else if ((v29 | a3))
  {
    v17 = 5;
  }

  else
  {
    v17 = 1;
  }

LABEL_13:
  *a4 = v17;
  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t sub_21D1C3494(void *a1, void *a2)
{
  v4 = [a1 saveRequest];
  v5 = [a1 accountID];
  v6 = [v4 _trackedAccountChangeItemForObjectID_];

  if (v6)
  {
    v7 = [a2 saveRequest];
    v8 = [a2 accountID];
    v9 = [v7 _trackedAccountChangeItemForObjectID_];

    if (v9)
    {
      v10 = [v6 canCopyReminderLosslesslyToAccountChangeItem_];

      return v10;
    }
  }

  return 2;
}

void sub_21D1C35B8(void *a1, char a2)
{
  if (a2)
  {
    if (qword_27CE56580 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE591E0);
    v4 = a1;
    oslog = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    sub_21D1D1F18(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_21DBFC75C();
      v10 = sub_21D0CDFB4(v8, v9, &v12);

      *(v6 + 4) = v10;
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D1C3758(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 saveRequest];
  v7 = [v6 _copyReminderChangeItem_toReminderSubtaskContextChangeItem_];

  [v5 removeFromList];
  if (qword_27CE56580 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE591E0);
  v9 = v5;
  v10 = v7;
  v11 = sub_21DBF84AC();
  v12 = sub_21DBFAEDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    v15 = [v9 objectID];
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2112;
    v16 = [v10 objectID];
    *(v13 + 14) = v16;
    v14[1] = v16;
    _os_log_impl(&dword_21D0C9000, v11, v12, "Copied subtask for moving across lists {original: %@, copy: %@}", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v14, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  *a3 = v10;
}

void sub_21D1C3958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = [v3[2] objectID];
  sub_21D1826C4((v4 + 3), &v47);
  if (v48)
  {
    sub_21D0D0FD0(&v47, v49);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v45 = a2;
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F210);
    v11 = v9;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();

    v46 = a3;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59350);
      v16 = sub_21DBFA1AC();
      v18 = sub_21D0CDFB4(v16, v17, &v47);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_21D0D8CF0(0, &qword_280D17880);
      v19 = sub_21DBFA1AC();
      v21 = sub_21D0CDFB4(v19, v20, &v47);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_21D0C9000, v12, v13, "%s: registering undo {id: %s}", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    else
    {
    }

    v34 = v4[2];
    v35 = [v34 saveRequest];
    v36 = [v35 store];

    v37 = *(v4 + 64);
    v38 = *v4;
    v39 = v50;
    v40 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    *&v47 = a1;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    *(v42 + 32) = v11;
    *(v42 + 40) = v36;
    *(v42 + 48) = v37;
    *(v42 + 56) = v45;
    *(v42 + 64) = v46;
    v43 = v11;

    v44 = v36;

    TTRUndoContext.registerUndo(forEditing:action:)(&v47, sub_21D1D1FB8, v42, v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    sub_21D0CF7E0(&v47, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F210);
    v23 = v9;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAE9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136315394;
      *&v47 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59350);
      v28 = sub_21DBFA1AC();
      v30 = sub_21D0CDFB4(v28, v29, v49);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v47 = v23;
      sub_21D0D8CF0(0, &qword_280D17880);
      v31 = sub_21DBFA1AC();
      v33 = sub_21D0CDFB4(v31, v32, v49);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_21D0C9000, v24, v25, "%s: undo registration not supported {id: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D1C3EB8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = [v3[2] objectID];
  sub_21D1826C4((v4 + 3), &v48);
  if (v49)
  {
    sub_21D0D0FD0(&v48, v50);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v45 = a2;
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F210);
    v11 = v9;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();

    v46 = a3;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v48 = v15;
      *v14 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59340);
      v16 = sub_21DBFA1AC();
      v18 = sub_21D0CDFB4(v16, v17, &v48);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v47 = v11;
      sub_21D0D8CF0(0, &qword_280D17880);
      v19 = sub_21DBFA1AC();
      v21 = sub_21D0CDFB4(v19, v20, &v48);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_21D0C9000, v12, v13, "%s: registering undo {id: %s}", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    else
    {
    }

    v34 = v4[2];
    v35 = [v34 saveRequest];
    v36 = [v35 store];

    swift_beginAccess();
    v37 = *(v4 + 64);
    v38 = *v4;
    v39 = v51;
    v40 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v47 = a1;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    *(v42 + 32) = v11;
    *(v42 + 40) = v36;
    *(v42 + 48) = v37;
    *(v42 + 56) = v45;
    *(v42 + 64) = v46;
    v43 = v11;

    v44 = v36;

    TTRUndoContext.registerUndo(forEditing:action:)(&v47, sub_21D1D1F24, v42, v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    sub_21D0CF7E0(&v48, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F210);
    v23 = v9;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAE9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50[0] = v27;
      *v26 = 136315394;
      *&v48 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59340);
      v28 = sub_21DBFA1AC();
      v30 = sub_21D0CDFB4(v28, v29, v50);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v48 = v23;
      sub_21D0D8CF0(0, &qword_280D17880);
      v31 = sub_21DBFA1AC();
      v33 = sub_21D0CDFB4(v31, v32, v50);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_21D0C9000, v24, v25, "%s: undo registration not supported {id: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D1C442C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = [v3[2] objectID];
  sub_21D1826C4((v4 + 3), &v47);
  if (v48)
  {
    sub_21D0D0FD0(&v47, v49);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v45 = a2;
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F210);
    v11 = v9;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();

    v46 = a3;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59318);
      v16 = sub_21DBFA1AC();
      v18 = sub_21D0CDFB4(v16, v17, &v47);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_21D0D8CF0(0, &qword_280D17880);
      v19 = sub_21DBFA1AC();
      v21 = sub_21D0CDFB4(v19, v20, &v47);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_21D0C9000, v12, v13, "%s: registering undo {id: %s}", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    else
    {
    }

    v34 = v4[2];
    v35 = [v34 saveRequest];
    v36 = [v35 store];

    v37 = *(v4 + 64);
    v38 = *v4;
    v39 = v50;
    v40 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    *&v47 = a1;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    *(v42 + 32) = v11;
    *(v42 + 40) = v36;
    *(v42 + 48) = v37;
    *(v42 + 56) = v45;
    *(v42 + 64) = v46;
    v43 = v11;

    v44 = v36;

    TTRUndoContext.registerUndo(forEditing:action:)(&v47, sub_21D1D1DE0, v42, v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    sub_21D0CF7E0(&v47, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F210);
    v23 = v9;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAE9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136315394;
      *&v47 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59318);
      v28 = sub_21DBFA1AC();
      v30 = sub_21D0CDFB4(v28, v29, v49);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v47 = v23;
      sub_21D0D8CF0(0, &qword_280D17880);
      v31 = sub_21DBFA1AC();
      v33 = sub_21D0CDFB4(v31, v32, v49);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_21D0C9000, v24, v25, "%s: undo registration not supported {id: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D1C498C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = v3[2];
  v10 = [v9 smartListType];
  v11 = [v9 objectID];
  sub_21D1826C4((v4 + 3), &v60);
  if (v61)
  {
    sub_21D0D0FD0(&v60, v62);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v57 = a2;
    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F210);
    v13 = v10;
    v14 = v11;
    v15 = v13;
    v16 = v14;
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAE9C();

    v58 = a3;
    v56 = v15;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a1;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v59 = v21;
      *&v60 = v8;
      *v20 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592C0);
      v22 = sub_21DBFA1AC();
      v24 = sub_21D0CDFB4(v22, v23, &v59);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *&v60 = v15;
      *(&v60 + 1) = v16;
      v25 = sub_21DBFA1AC();
      v27 = sub_21D0CDFB4(v25, v26, &v59);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_21D0C9000, v17, v18, "%s: registering undo {id: %s}", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v21, -1, -1);
      v28 = v20;
      a1 = v19;
      MEMORY[0x223D46520](v28, -1, -1);
    }

    else
    {
    }

    v44 = v4[2];
    v45 = [v44 saveRequest];
    v46 = [v45 store];

    v47 = *(v4 + 64);
    v48 = *v4;
    v49 = v63;
    v55 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    *&v60 = a1;
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    *(v51 + 24) = v50;
    *(v51 + 32) = v56;
    *(v51 + 40) = v16;
    *(v51 + 48) = v46;
    *(v51 + 56) = v47;
    *(v51 + 64) = v57;
    *(v51 + 72) = v58;

    v52 = v56;
    v53 = v16;
    v54 = v46;

    TTRUndoContext.registerUndo(forEditing:action:)(&v60, sub_21D1D1D18, v51, v49, v55);

    __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    sub_21D0CF7E0(&v60, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_280D0F210);
    v30 = v10;
    v31 = v11;
    v32 = v30;
    v33 = v31;
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAE9C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v60 = v37;
      *v36 = 136315394;
      v62[0] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592C0);
      v38 = sub_21DBFA1AC();
      v40 = sub_21D0CDFB4(v38, v39, &v60);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v62[0] = v32;
      v62[1] = v33;
      v41 = sub_21DBFA1AC();
      v43 = sub_21D0CDFB4(v41, v42, &v60);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_21D0C9000, v34, v35, "%s: undo registration not supported {id: %s}", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v37, -1, -1);
      MEMORY[0x223D46520](v36, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D1C4F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = [v3[2] objectID];
  sub_21D1826C4((v4 + 3), &v47);
  if (v48)
  {
    sub_21D0D0FD0(&v47, v49);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v45 = a2;
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F210);
    v11 = v9;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();

    v46 = a3;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592D8);
      v16 = sub_21DBFA1AC();
      v18 = sub_21D0CDFB4(v16, v17, &v47);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_21D0D8CF0(0, &qword_280D17880);
      v19 = sub_21DBFA1AC();
      v21 = sub_21D0CDFB4(v19, v20, &v47);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_21D0C9000, v12, v13, "%s: registering undo {id: %s}", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    else
    {
    }

    v34 = v4[2];
    v35 = [v34 saveRequest];
    v36 = [v35 store];

    v37 = *(v4 + 64);
    v38 = *v4;
    v39 = v50;
    v40 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    *&v47 = a1;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    *(v42 + 32) = v11;
    *(v42 + 40) = v36;
    *(v42 + 48) = v37;
    *(v42 + 56) = v45;
    *(v42 + 64) = v46;
    v43 = v11;

    v44 = v36;

    TTRUndoContext.registerUndo(forEditing:action:)(&v47, sub_21D1D1D70, v42, v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    sub_21D0CF7E0(&v47, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F210);
    v23 = v9;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAE9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136315394;
      *&v47 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592D8);
      v28 = sub_21DBFA1AC();
      v30 = sub_21D0CDFB4(v28, v29, v49);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v47 = v23;
      sub_21D0D8CF0(0, &qword_280D17880);
      v31 = sub_21DBFA1AC();
      v33 = sub_21D0CDFB4(v31, v32, v49);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_21D0C9000, v24, v25, "%s: undo registration not supported {id: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D1C54B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = [v3[2] objectID];
  sub_21D1826C4((v4 + 3), &v47);
  if (v48)
  {
    sub_21D0D0FD0(&v47, v49);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v45 = a2;
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F210);
    v11 = v9;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();

    v46 = a3;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592F8);
      v16 = sub_21DBFA1AC();
      v18 = sub_21D0CDFB4(v16, v17, &v47);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_21D0D8CF0(0, &qword_280D17880);
      v19 = sub_21DBFA1AC();
      v21 = sub_21D0CDFB4(v19, v20, &v47);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_21D0C9000, v12, v13, "%s: registering undo {id: %s}", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    else
    {
    }

    v34 = v4[2];
    v35 = [v34 saveRequest];
    v36 = [v35 store];

    v37 = *(v4 + 64);
    v38 = *v4;
    v39 = v50;
    v40 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    *&v47 = a1;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    *(v42 + 32) = v11;
    *(v42 + 40) = v36;
    *(v42 + 48) = v37;
    *(v42 + 56) = v45;
    *(v42 + 64) = v46;
    v43 = v11;

    v44 = v36;

    TTRUndoContext.registerUndo(forEditing:action:)(&v47, sub_21D1D1DA8, v42, v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  else
  {
    sub_21D0CF7E0(&v47, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F210);
    v23 = v9;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAE9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136315394;
      *&v47 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592F8);
      v28 = sub_21DBFA1AC();
      v30 = sub_21D0CDFB4(v28, v29, v49);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v47 = v23;
      sub_21D0D8CF0(0, &qword_280D17880);
      v31 = sub_21DBFA1AC();
      v33 = sub_21D0CDFB4(v31, v32, v49);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_21D0C9000, v24, v25, "%s: undo registration not supported {id: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D1C5A14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = [v3[2] objectID];
  sub_21D1826C4((v4 + 3), &v48);
  if (v49)
  {
    sub_21D0D0FD0(&v48, v50);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v45 = a2;
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F210);
    v11 = v9;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();

    v46 = a3;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v48 = v15;
      *v14 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59298);
      v16 = sub_21DBFA1AC();
      v18 = sub_21D0CDFB4(v16, v17, &v48);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v47 = v11;
      sub_21D0D8CF0(0, &qword_280D17880);
      v19 = sub_21DBFA1AC();
      v21 = sub_21D0CDFB4(v19, v20, &v48);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_21D0C9000, v12, v13, "%s: registering undo {id: %s}", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    else
    {
    }

    v34 = v4[2];
    v35 = [v34 saveRequest];
    v36 = [v35 store];

    swift_beginAccess();
    v37 = *(v4 + 64);
    v38 = *v4;
    v39 = v51;
    v40 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v47 = a1;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    *(v42 + 32) = v11;
    *(v42 + 40) = v36;
    *(v42 + 48) = v37;
    *(v42 + 56) = v45;
    *(v42 + 64) = v46;
    v43 = v11;

    v44 = v36;

    TTRUndoContext.registerUndo(forEditing:action:)(&v47, sub_21D1D1C88, v42, v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    sub_21D0CF7E0(&v48, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F210);
    v23 = v9;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAE9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50[0] = v27;
      *v26 = 136315394;
      *&v48 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59298);
      v28 = sub_21DBFA1AC();
      v30 = sub_21D0CDFB4(v28, v29, v50);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v48 = v23;
      sub_21D0D8CF0(0, &qword_280D17880);
      v31 = sub_21DBFA1AC();
      v33 = sub_21D0CDFB4(v31, v32, v50);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_21D0C9000, v24, v25, "%s: undo registration not supported {id: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D1C5F88(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = [v3[2] objectID];
  sub_21D1826C4((v4 + 3), &v48);
  if (v49)
  {
    sub_21D0D0FD0(&v48, v50);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v45 = a2;
    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F210);
    v11 = v9;
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();

    v46 = a3;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v48 = v15;
      *v14 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59258);
      v16 = sub_21DBFA1AC();
      v18 = sub_21D0CDFB4(v16, v17, &v48);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v47 = v11;
      sub_21D0D8CF0(0, &qword_280D17880);
      v19 = sub_21DBFA1AC();
      v21 = sub_21D0CDFB4(v19, v20, &v48);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_21D0C9000, v12, v13, "%s: registering undo {id: %s}", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    else
    {
    }

    v34 = v4[2];
    v35 = [v34 saveRequest];
    v36 = [v35 store];

    swift_beginAccess();
    v37 = *(v4 + 64);
    v38 = *v4;
    v39 = v51;
    v40 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v47 = a1;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v41;
    *(v42 + 32) = v11;
    *(v42 + 40) = v36;
    *(v42 + 48) = v37;
    *(v42 + 56) = v45;
    *(v42 + 64) = v46;
    v43 = v11;

    v44 = v36;

    TTRUndoContext.registerUndo(forEditing:action:)(&v47, sub_21D1D1A7C, v42, v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    sub_21D0CF7E0(&v48, &unk_27CE60D80);
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_280D0F210);
    v23 = v9;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAE9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50[0] = v27;
      *v26 = 136315394;
      *&v48 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59258);
      v28 = sub_21DBFA1AC();
      v30 = sub_21D0CDFB4(v28, v29, v50);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *&v48 = v23;
      sub_21D0D8CF0(0, &qword_280D17880);
      v31 = sub_21DBFA1AC();
      v33 = sub_21D0CDFB4(v31, v32, v50);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_21D0C9000, v24, v25, "%s: undo registration not supported {id: %s}", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21D1C64FC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a2;
  v4 = a2;
  v5 = sub_21D19ED08(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_21D1BEEAC(v5);
}

uint64_t sub_21D1C65A4(SEL *a1)
{
  v3 = [v1 objectID];
  v4 = [v3 entityName];

  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = [objc_opt_self() *a1];
  v9 = sub_21DBFA16C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21DBFC64C();
  }

  return v13 & 1;
}

void sub_21D1C6694(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = [*(*a1 + 16) groceryContextChangeItem];
  if (v6)
  {
    v14 = v6;
    v7 = [v6 shouldCategorizeGroceryItems];
    v8 = [v14 groceryLocaleID];
    if (v8)
    {
      v9 = v8;
      v10 = sub_21DBFA16C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    [v14 setShouldCategorizeGroceryItems_];
    if (a4)
    {
      a4 = sub_21DBFA12C();
    }

    [v14 setGroceryLocaleID_];

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = v10;
    *(v13 + 32) = v12;
    sub_21D182B38(sub_21D1D209C, v13);
  }
}

uint64_t TTRListEditor.deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  return v0;
}

uint64_t TTRListEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  return swift_deallocClassInstance();
}

id static TTRListEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

uint64_t TTRListEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, void *a2, uint64_t a3, char a4)
{
  v6 = sub_21D1CF604(a1, a2, a3, a4);

  return v6;
}

uint64_t sub_21D1C690C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

void sub_21D1C694C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = sub_21D1CF604(*a1, a2, a3, a4);

  *a5 = v8;
}

id static TTRListEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedListChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateList_];

  return v2;
}

id static TTRListEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id TTRListEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

id sub_21D1C6A9C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_21D1D07A0(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D1C6ACC(void *a1, id a2)
{
  v2 = [a2 _trackedListChangeItemForObjectID_];

  return v2;
}

id sub_21D1C6B0C(void *a1, id a2)
{
  v2 = [a2 updateList_];

  return v2;
}

uint64_t sub_21D1C6B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s15RemindersUICore13TTRListEditorC10changeItem11undoContextACSo013REMListChangeF0C_AA07TTRUndoH0_pSgtcfC_0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t TTRListEditor.__allocating_init(changeItem:undoManager:unitTest_oneShotSyncSaveForUndo:userDefaults:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a2)
  {
    v8 = type metadata accessor for TTRBasicUndoContext();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v9;
  v22[3] = v8;
  v22[4] = v10;
  v11 = swift_allocObject();
  v12 = *(a4 + 24);
  v13 = *(a4 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  v19 = sub_21D1CD868(a1, v22, a3 & 1, v17, v11, v12, v13);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v19;
}

uint64_t static TTRListEditor.remove(reminders:saveRequest:undoManager:)(unint64_t a1, void *a2, void *a3)
{
  v6 = 0;
  if (a3)
  {
    v7 = type metadata accessor for TTRBasicUndoContext();
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    v8 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v9 = a3;
  _s15RemindersUICore13TTRListEditorC6remove9reminders11saveRequest11undoContext7Combine6FutureCyyts5Error_pGSaySo11REMReminderCG_So07REMSaveH0CAA07TTRUndoJ0_pSgtFZ_0(a1, a2, v11);

  return sub_21D0CF7E0(v11, &unk_27CE60D80);
}

uint64_t static TTRListEditor.recover(reminders:list:saveRequest:undoManager:)(unint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = 0;
  if (a4)
  {
    v9 = type metadata accessor for TTRBasicUndoContext();
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    v10 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v11 = a4;
  _s15RemindersUICore13TTRListEditorC7recover9reminders4list11saveRequest11undoContextySaySo11REMReminderCG_So7REMListCSo07REMSaveI0CAA07TTRUndoK0_pSgtFZ_0(a1, a2, a3, v13);
  return sub_21D0CF7E0(v13, &unk_27CE60D80);
}

void sub_21D1C6E48(void (*a1)(__int128 *), uint64_t a2, void *a3, void *a4, unint64_t a5, void (*a6)(id *), uint64_t a7, void *a8, void *a9, char a10)
{
  v114[5] = *MEMORY[0x277D85DE8];
  v15 = swift_allocObject();
  v105 = a1;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  v18 = *(v17 + 8);

  v19 = v18(v16, v17);
  v20 = NSUndoManager.associatedSaveRequest.getter();
  if (v20)
  {
    v21 = v20;

    v22 = [v21 _trackedListSectionChangeItemForObjectID_];
    v23 = v22;
    v24 = a5;
    if (v22)
    {
LABEL_5:
      v30 = v22;
      sub_21D1D1658(v23, a3, a6, a7, type metadata accessor for TTRListSectionEditor);

      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v105(&aBlock);

      return;
    }

    v25 = [v21 store];
    *&aBlock = 0;
    v26 = [v25 fetchListSectionWithObjectID:a5 error:&aBlock];
    if (v26)
    {
      v27 = v26;
      v28 = aBlock;

      v29 = [v21 updateListSection_];
      v23 = v29;
      v22 = 0;
      goto LABEL_5;
    }

    v18 = a1;
    v62 = aBlock;
    v39 = sub_21DBF52DC();

    swift_willThrow();
LABEL_26:
    if (qword_280D17EC8 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_27;
  }

  v24 = a5;
  if (a8)
  {
    v114[0] = a8;
    v31 = a8;
    if ((NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter() & 1) == 0)
    {

      v45 = sub_21D1CD1E8(v19, v114);
      v46 = v45;
      if (v45)
      {
        v47 = qword_280D17EC8;
        v102 = v45;
        v48 = v45;
        if (v47 != -1)
        {
          swift_once();
        }

        v49 = sub_21DBF84BC();
        __swift_project_value_buffer(v49, qword_280D0F210);
        v50 = v48;
        v51 = sub_21DBF84AC();
        v52 = sub_21DBFAE9C();

        v53 = v105;
        if (os_log_type_enabled(v51, v52))
        {
          v54 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *&aBlock = v101;
          *v54 = 136315394;
          sub_21D0D8CF0(0, &qword_27CE59358);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59360);
          v55 = sub_21DBFA1AC();
          v57 = sub_21D0CDFB4(v55, v56, &aBlock);

          *(v54 + 4) = v57;
          *(v54 + 12) = 2080;
          v109 = [v50 objectID];
          sub_21D0D8CF0(0, &qword_280D17880);
          v58 = sub_21DBFA1AC();
          v60 = sub_21D0CDFB4(v58, v59, &aBlock);

          *(v54 + 14) = v60;
          _os_log_impl(&dword_21D0C9000, v51, v52, "Performing undo action on an overridden target {type: %s, id: %s}", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v101, -1, -1);
          MEMORY[0x223D46520](v54, -1, -1);
        }

        v46 = v102;
      }

      else
      {
        v53 = a1;
        v50 = v31;
      }

      sub_21D1D1658(v50, a3, a6, a7, type metadata accessor for TTRListSectionEditor);
      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v53(&aBlock);

      return;
    }
  }

  sub_21D0D32E4(a3, v114);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_21D1D20C4;
  *(v32 + 24) = v15;
  *&aBlock = 0;
  v33 = [a9 fetchListSectionWithObjectID:v24 error:&aBlock];
  v34 = aBlock;
  if (!v33)
  {
    v18 = a1;
    v61 = aBlock;
    v39 = sub_21DBF52DC();

    swift_willThrow();

    sub_21D0CF7E0(v114, &unk_27CE60D80);
    goto LABEL_26;
  }

  v35 = v33;
  a4 = v19;
  if ((a10 & 1) == 0)
  {
    v81 = aBlock;
    v82 = [v35 store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21DC09CF0;
    *(v24 + 32) = v35;
    v83 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v104 = v35;
    v106 = v82;
    v84 = [v83 initWithStore_];
    [v84 setSaveIsNoopIfNoChangedKeys_];
    v85 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v85)
    {
      v86 = 0;
      v39 = &off_278331000;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v87 = MEMORY[0x223D44740](v86, v24);
        }

        else
        {
          if (v86 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v87 = *(v24 + 8 * v86 + 32);
        }

        v88 = v87;
        ++v86;
        sub_21D1826C4(v114, &aBlock);
        v18 = [v84 updateListSection_];

        type metadata accessor for TTRListSectionEditor();
        v89 = swift_allocObject();
        *(v89 + 16) = v18;
        v90 = v111;
        *(v89 + 24) = aBlock;
        *(v89 + 40) = v90;
        *(v89 + 56) = v112;
        *(v89 + 64) = 0;
        v109 = v89;
        a6(&v109);
      }

      while (v85 != v86);
    }

    sub_21D0D8CF0(0, &qword_280D1B900);
    v92 = sub_21DBFB12C();
    v93 = swift_allocObject();
    v93[2] = v24;
    v93[3] = sub_21D1D20C8;
    v93[4] = v32;
    v112 = sub_21D1D1AC8;
    v113 = v93;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v111 = sub_21D11E5E4;
    *(&v111 + 1) = &block_descriptor_331;
    v94 = _Block_copy(&aBlock);

    [v84 saveWithQueue:v92 completion:v94];

    _Block_release(v94);
    goto LABEL_43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v35;
  v37 = v34;
  v100 = v35;
  v99 = MEMORY[0x223D45970]();
  v38 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v38 setSaveIsNoopIfNoChangedKeys_];
  v18 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_38:
    *&aBlock = 0;
    if ([v38 saveSynchronouslyWithError_])
    {
      v91 = aBlock;

      objc_autoreleasePoolPop(v99);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v95 = aBlock;
      v96 = sub_21DBF52DC();

      swift_willThrow();
      objc_autoreleasePoolPop(v99);
      swift_setDeallocating();
      swift_arrayDestroy();
      *&aBlock = v96;
      BYTE8(aBlock) = 1;
      v97 = v96;
      v98 = v96;
      v105(&aBlock);
    }

LABEL_43:
    sub_21D0CF7E0(v114, &unk_27CE60D80);
    return;
  }

  v24 = 0;
  v39 = &off_278331000;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x223D44740](v24, inited);
      goto LABEL_16;
    }

    if (v24 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v40 = *(inited + 8 * v24 + 32);
LABEL_16:
    v41 = v40;
    ++v24;
    sub_21D1826C4(v114, &aBlock);
    v42 = [v38 updateListSection_];

    type metadata accessor for TTRListSectionEditor();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    v44 = v111;
    *(v43 + 24) = aBlock;
    *(v43 + 40) = v44;
    *(v43 + 56) = v112;
    *(v43 + 64) = 1;
    v109 = v43;
    a6(&v109);

    if (v18 == v24)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_27:
  v63 = sub_21DBF84BC();
  __swift_project_value_buffer(v63, qword_280D0F210);
  v64 = v39;
  v65 = v24;
  v66 = sub_21DBF84AC();
  v67 = sub_21DBFAEBC();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&aBlock = v69;
    *v68 = 136315650;
    v114[0] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59350);
    v70 = sub_21DBFA1AC();
    v72 = sub_21D0CDFB4(v70, v71, &aBlock);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2082;
    swift_getErrorValue();
    v73 = sub_21DBFC75C();
    v75 = sub_21D0CDFB4(v73, v74, &aBlock);

    *(v68 + 14) = v75;
    *(v68 + 22) = 2080;
    v114[0] = v65;
    sub_21D0D8CF0(0, &qword_280D17880);
    v76 = v65;
    v77 = sub_21DBFA1AC();
    v79 = sub_21D0CDFB4(v77, v78, &aBlock);

    *(v68 + 24) = v79;
    _os_log_impl(&dword_21D0C9000, v66, v67, "%s: failed to perform undo {error: %{public}s, id: %s}", v68, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v69, -1, -1);
    MEMORY[0x223D46520](v68, -1, -1);
  }

  *&aBlock = v39;
  BYTE8(aBlock) = 1;
  v80 = v39;
  (v18)(&aBlock);
}

void sub_21D1C7B3C(void (*a1)(id *), uint64_t a2, void *a3, void *a4, unint64_t a5, void (*a6)(_OWORD *), uint64_t a7, void *a8, void *a9, char a10)
{
  v109 = *MEMORY[0x277D85DE8];
  v15 = swift_allocObject();
  v97 = a1;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  v18 = *(v17 + 8);

  v19 = v18(v16, v17);
  v20 = NSUndoManager.associatedSaveRequest.getter();
  if (v20)
  {
    v21 = v20;

    v22 = [v21 _trackedListChangeItemForObjectID_];
    v23 = v22;
    if (v22)
    {
LABEL_5:
      v29 = v22;
      sub_21D1D1400(v23, a3, a6);

      v107 = 0;
      v108 = 0;
      v97(&v107);

      return;
    }

    v24 = [v21 store];
    v107 = 0;
    v25 = [v24 fetchListWithObjectID:a5 error:&v107];
    if (v25)
    {
      v26 = v25;
      v27 = v107;

      v28 = [v21 updateList_];
      v23 = v28;
      v22 = 0;
      goto LABEL_5;
    }

    v65 = v107;
    v38 = sub_21DBF52DC();

    swift_willThrow();
LABEL_28:
    v37 = v97;
    if (qword_280D17EC8 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  if (a8)
  {
    v105 = a8;
    v30 = a8;
    if ((NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter() & 1) == 0)
    {

      v47 = sub_21D1CD1E8(v19, &v105);
      v48 = v47;
      if (v47)
      {
        v49 = qword_280D17EC8;
        v50 = v47;
        v51 = v97;
        if (v49 != -1)
        {
          swift_once();
        }

        v52 = sub_21DBF84BC();
        __swift_project_value_buffer(v52, qword_280D0F210);
        v53 = v50;
        v54 = sub_21DBF84AC();
        v55 = sub_21DBFAE9C();

        if (os_log_type_enabled(v54, v55))
        {
          v93 = v55;
          v56 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v107 = v95;
          *v56 = 136315394;
          sub_21D0D8CF0(0, &unk_280D177F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59348);
          v57 = sub_21DBFA1AC();
          v59 = v48;
          v60 = sub_21D0CDFB4(v57, v58, &v107);

          *(v56 + 4) = v60;
          *(v56 + 12) = 2080;
          *&v103[0] = [v53 objectID];
          sub_21D0D8CF0(0, &qword_280D17880);
          v61 = sub_21DBFA1AC();
          v63 = sub_21D0CDFB4(v61, v62, &v107);

          *(v56 + 14) = v63;
          v48 = v59;
          _os_log_impl(&dword_21D0C9000, v54, v93, "Performing undo action on an overridden target {type: %s, id: %s}", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v95, -1, -1);
          MEMORY[0x223D46520](v56, -1, -1);
        }
      }

      else
      {
        v53 = v30;
        v51 = a1;
      }

      sub_21D1D1400(v53, a3, a6);
      v107 = 0;
      v108 = 0;
      v51(&v107);

      return;
    }
  }

  v94 = v19;
  sub_21D0D32E4(a3, &v107);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_21D1D20C4;
  *(v31 + 24) = v15;
  v105 = 0;
  v32 = [a9 fetchListWithObjectID:a5 error:&v105];
  v33 = v105;
  if (!v32)
  {
    v64 = v105;
    v38 = sub_21DBF52DC();

    swift_willThrow();

    sub_21D0CF7E0(&v107, &unk_27CE60D80);
    goto LABEL_28;
  }

  v34 = v32;
  if ((a10 & 1) == 0)
  {
    v84 = v105;
    sub_21D22C674(v34, &v107, a6, a7, sub_21D1D20C8, v31);

LABEL_37:
    sub_21D0CF7E0(&v107, &unk_27CE60D80);
    return;
  }

  a4 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v34;
  v36 = v33;
  v92 = v34;
  v90 = MEMORY[0x223D45970]();
  v37 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v37 setSaveIsNoopIfNoChangedKeys_];
  v38 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_33:
    v105 = 0;
    if ([v37 saveSynchronouslyWithError_])
    {
      v85 = v105;

      objc_autoreleasePoolPop(v91);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v86 = v105;
      v87 = sub_21DBF52DC();

      swift_willThrow();
      objc_autoreleasePoolPop(v91);
      swift_setDeallocating();
      swift_arrayDestroy();
      v105 = v87;
      v106 = 1;
      v88 = v87;
      v89 = v87;
      v97(&v105);
    }

    goto LABEL_37;
  }

  a5 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x223D44740](a5, inited);
      goto LABEL_16;
    }

    if (a5 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v39 = *(inited + 8 * a5 + 32);
LABEL_16:
    v40 = v39;
    sub_21D1826C4(&v107, &v105);
    v41 = v37;
    v42 = [v41 updateList_];
    sub_21D1826C4(&v105, v103);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    ++a5;
    v43 = qword_280D1AA18;

    sub_21D0CF7E0(&v105, &unk_27CE60D80);
    type metadata accessor for TTRListEditor();
    v44 = swift_allocObject();
    v101 = type metadata accessor for TTRUserDefaults();
    v102 = &protocol witness table for TTRUserDefaults;
    *&v100 = v43;
    *(v44 + 64) = 0;
    *(v44 + 16) = v42;
    v45 = v103[1];
    *(v44 + 24) = v103[0];
    *(v44 + 40) = v45;
    *(v44 + 56) = v104;
    swift_beginAccess();
    *(v44 + 64) = 1;
    sub_21D0D0FD0(&v100, v44 + 72);
    *&v103[0] = v44;
    v46 = v43;
    a6(v103);

    if (v38 == a5)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_41:
  swift_once();
LABEL_29:
  v66 = sub_21DBF84BC();
  __swift_project_value_buffer(v66, qword_280D0F210);
  v67 = v38;
  v68 = a5;
  v69 = sub_21DBF84AC();
  v70 = sub_21DBFAEBC();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v107 = v72;
    *v71 = 136315650;
    v105 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59340);
    v73 = sub_21DBFA1AC();
    v75 = sub_21D0CDFB4(v73, v74, &v107);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    swift_getErrorValue();
    v76 = sub_21DBFC75C();
    v78 = sub_21D0CDFB4(v76, v77, &v107);

    *(v71 + 14) = v78;
    *(v71 + 22) = 2080;
    v105 = v68;
    sub_21D0D8CF0(0, &qword_280D17880);
    v79 = v68;
    v80 = sub_21DBFA1AC();
    v82 = sub_21D0CDFB4(v80, v81, &v107);

    *(v71 + 24) = v82;
    _os_log_impl(&dword_21D0C9000, v69, v70, "%s: failed to perform undo {error: %{public}s, id: %s}", v71, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v72, -1, -1);
    MEMORY[0x223D46520](v71, -1, -1);
  }

  v107 = v38;
  v108 = 1;
  v83 = v38;
  v37(&v107);
}

void sub_21D1C8670(char *a1, uint64_t a2, void *a3, id *a4, char *a5, void (*a6)(void *), uint64_t a7, id *a8, void *a9, char a10)
{
  v105 = *MEMORY[0x277D85DE8];
  v15 = swift_allocObject();
  v97 = a1;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  v18 = *(v17 + 8);

  v19 = v18(v16, v17);
  v20 = NSUndoManager.associatedSaveRequest.getter();
  if (v20)
  {
    v21 = v20;

    v22 = [v21 _trackedReminderChangeItemForObjectID_];
    v23 = v22;
    if (v22)
    {
LABEL_5:
      v29 = v22;
      sub_21D1D154C(v23, a3, a6);

      v103 = 0;
      v104 = 0;
      (v97)(&v103);

      return;
    }

    v24 = [v21 store];
    v103 = 0;
    v25 = [v24 fetchReminderWithObjectID:a5 error:&v103];
    if (v25)
    {
      v26 = v25;
      v27 = v103;

      v28 = [v21 updateReminder_];
      v23 = v28;
      v22 = 0;
      goto LABEL_5;
    }

    v64 = v103;
    v18 = sub_21DBF52DC();

    swift_willThrow();
LABEL_26:
    v38 = v97;
    if (qword_280D17EC8 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

  if (a8)
  {
    v101 = a8;
    v30 = a8;
    if ((NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter() & 1) == 0)
    {

      v46 = sub_21D1CD1E8(v19, &v101);
      v47 = v46;
      if (v46)
      {
        v48 = qword_280D17EC8;
        v49 = v46;
        v50 = v97;
        if (v48 != -1)
        {
          swift_once();
        }

        v51 = sub_21DBF84BC();
        __swift_project_value_buffer(v51, qword_280D0F210);
        v52 = v49;
        v53 = sub_21DBF84AC();
        v54 = sub_21DBFAE9C();

        if (os_log_type_enabled(v53, v54))
        {
          v93 = v54;
          v55 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v103 = v95;
          *v55 = 136315394;
          sub_21D0D8CF0(0, &qword_280D17770);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59320);
          v56 = sub_21DBFA1AC();
          v58 = v47;
          v59 = sub_21D0CDFB4(v56, v57, &v103);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2080;
          v100[0] = [v52 objectID];
          sub_21D0D8CF0(0, &qword_280D17880);
          v60 = sub_21DBFA1AC();
          v62 = sub_21D0CDFB4(v60, v61, &v103);

          *(v55 + 14) = v62;
          v47 = v58;
          _os_log_impl(&dword_21D0C9000, v53, v93, "Performing undo action on an overridden target {type: %s, id: %s}", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v95, -1, -1);
          MEMORY[0x223D46520](v55, -1, -1);
        }
      }

      else
      {
        v52 = v30;
        v50 = a1;
      }

      sub_21D1D154C(v52, a3, a6);
      v103 = 0;
      v104 = 0;
      (v50)(&v103);

      return;
    }
  }

  v91 = v19;
  sub_21D0D32E4(a3, &v103);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_21D1D20C4;
  *(v31 + 24) = v15;
  v101 = 0;
  v32 = [a9 fetchReminderWithObjectID:a5 error:&v101];
  v33 = v101;
  if (!v32)
  {
    v63 = v101;
    v18 = sub_21DBF52DC();

    swift_willThrow();

    sub_21D0CF7E0(&v103, &unk_27CE60D80);
    goto LABEL_26;
  }

  v34 = v32;
  if ((a10 & 1) == 0)
  {
    v83 = v101;
    sub_21D22C9FC(v34, &v103, a6, a7, sub_21D1D20C8, v31);

LABEL_35:
    sub_21D0CF7E0(&v103, &unk_27CE60D80);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = v34;
  v36 = v33;
  v90 = v34;
  v89 = MEMORY[0x223D45970]();
  v94 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v94 setSaveIsNoopIfNoChangedKeys_];
  a4 = inited;
  v37 = inited & 0xFFFFFFFFFFFFFF8;
  v38 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_31:
    v101 = 0;
    if ([v94 saveSynchronouslyWithError_])
    {
      v84 = v101;

      objc_autoreleasePoolPop(v89);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v85 = v101;
      v86 = sub_21DBF52DC();

      swift_willThrow();
      objc_autoreleasePoolPop(v89);
      swift_setDeallocating();
      swift_arrayDestroy();
      v101 = v86;
      v102 = 1;
      v87 = v86;
      v88 = v86;
      (v97)(&v101);
    }

    goto LABEL_35;
  }

  a5 = 0;
  v92 = inited & 0xC000000000000001;
  while (1)
  {
    if (v92)
    {
      v39 = MEMORY[0x223D44740](a5, a4);
      goto LABEL_16;
    }

    if (a5 >= *(v37 + 16))
    {
      break;
    }

    v39 = a4[a5 + 4];
LABEL_16:
    v40 = v39;
    ++a5;
    sub_21D1826C4(&v103, &v101);
    v41 = v94;
    v42 = [v41 updateReminder_];
    sub_21D1826C4(&v101, v100);
    type metadata accessor for TTRReminderEditor();
    v43 = swift_allocObject();
    *(v43 + 72) = 0;
    *(v43 + 16) = v42;
    sub_21D1826C4(v100, v43 + 24);
    *(v43 + 64) = 1;
    v44 = v42;
    v18 = [v44 fetchedCurrentDueDateDeltaAlert];

    sub_21D0CF7E0(v100, &unk_27CE60D80);
    sub_21D0CF7E0(&v101, &unk_27CE60D80);
    v45 = *(v43 + 72);
    *(v43 + 72) = v18;

    v100[0] = v43;
    a6(v100);

    if (v38 == a5)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_27:
  v65 = sub_21DBF84BC();
  __swift_project_value_buffer(v65, qword_280D0F210);
  v66 = v18;
  v67 = a5;
  v68 = sub_21DBF84AC();
  v69 = sub_21DBFAEBC();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v103 = v71;
    *v70 = 136315650;
    v101 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59318);
    v72 = sub_21DBFA1AC();
    v74 = sub_21D0CDFB4(v72, v73, &v103);

    *(v70 + 4) = v74;
    *(v70 + 12) = 2082;
    swift_getErrorValue();
    v75 = sub_21DBFC75C();
    v77 = sub_21D0CDFB4(v75, v76, &v103);

    *(v70 + 14) = v77;
    *(v70 + 22) = 2080;
    v101 = v67;
    sub_21D0D8CF0(0, &qword_280D17880);
    v78 = v67;
    v79 = sub_21DBFA1AC();
    v81 = sub_21D0CDFB4(v79, v80, &v103);

    *(v70 + 24) = v81;
    _os_log_impl(&dword_21D0C9000, v68, v69, "%s: failed to perform undo {error: %{public}s, id: %s}", v70, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v71, -1, -1);
    MEMORY[0x223D46520](v70, -1, -1);
  }

  v103 = v18;
  v104 = 1;
  v82 = v18;
  (v38)(&v103);
}

void sub_21D1C9194(void (*a1)(__int128 *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, void *a9, void *a10, char a11)
{
  v95[5] = *MEMORY[0x277D85DE8];
  v16 = swift_allocObject();
  v85 = a1;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = a3[3];
  v18 = a3[4];
  v82 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v17);
  v19 = *(v18 + 8);

  v20 = v19(v17, v18);
  v21 = NSUndoManager.associatedSaveRequest.getter();
  if (v21)
  {
    v22 = v21;

    *&aBlock = a5;
    *(&aBlock + 1) = a6;
    v23 = [v22 _trackedSmartListChangeItemForObjectID_];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v29 = [v22 store];
      v56 = sub_21D653A30(&aBlock, v29);

      v57 = [v22 updateSmartList_];
      v24 = v57;
      v23 = 0;
    }

    v25 = v23;
    sub_21D1D1658(v24, v82, a7, a8, type metadata accessor for TTRSmartListEditor);

    *&aBlock = 0;
    BYTE8(aBlock) = 0;
    v85(&aBlock);

    return;
  }

  if (!a9)
  {
    goto LABEL_8;
  }

  v95[0] = a9;
  v26 = a9;
  if (NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter())
  {

LABEL_8:
    sub_21D0D32E4(a3, v95);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_21D1D20C4;
    *(v27 + 24) = v16;
    v94[0] = a5;
    v94[1] = a6;
    v28 = sub_21D653A30(v94, a10);
    v83 = v27;
    if (a11)
    {
      v46 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC09CF0;
      *(inited + 32) = v46;
      v81 = v46;
      v79 = MEMORY[0x223D45970]();
      v48 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
      [v48 setSaveIsNoopIfNoChangedKeys_];
      v49 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49)
      {
        v50 = 0;
        do
        {
          if ((inited & 0xC000000000000001) != 0)
          {
            v51 = MEMORY[0x223D44740](v50, inited);
          }

          else
          {
            v51 = *(inited + 8 * v50 + 32);
          }

          v52 = v51;
          ++v50;
          sub_21D1826C4(v95, &aBlock);
          v53 = [v48 updateSmartList_];

          type metadata accessor for TTRSmartListEditor();
          v54 = swift_allocObject();
          *(v54 + 16) = v53;
          v55 = v91;
          *(v54 + 24) = aBlock;
          *(v54 + 40) = v55;
          *(v54 + 56) = v92;
          *(v54 + 64) = 1;
          v89 = v54;
          a7(&v89);
        }

        while (v49 != v50);
      }

      *&aBlock = 0;
      if ([v48 saveSynchronouslyWithError_])
      {
        v70 = aBlock;

        objc_autoreleasePoolPop(v79);

        swift_setDeallocating();
        swift_arrayDestroy();
      }

      else
      {
        v74 = aBlock;
        v75 = sub_21DBF52DC();

        swift_willThrow();
        objc_autoreleasePoolPop(v79);
        swift_setDeallocating();
        swift_arrayDestroy();
        *&aBlock = v75;
        BYTE8(aBlock) = 1;
        v76 = v75;
        v77 = v75;
        v85(&aBlock);
      }
    }

    else
    {
      v58 = v28;
      v59 = [v28 store];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_21DC09CF0;
      *(v60 + 32) = v58;
      v61 = objc_allocWithZone(MEMORY[0x277D447D8]);
      v84 = v58;
      v86 = v59;
      v62 = [v61 initWithStore_];
      [v62 setSaveIsNoopIfNoChangedKeys_];
      v63 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v63)
      {
        v64 = 0;
        do
        {
          if ((v60 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x223D44740](v64, v60);
          }

          else
          {
            v65 = *(v60 + 8 * v64 + 32);
          }

          v66 = v65;
          ++v64;
          sub_21D1826C4(v95, &aBlock);
          v67 = [v62 updateSmartList_];

          type metadata accessor for TTRSmartListEditor();
          v68 = swift_allocObject();
          *(v68 + 16) = v67;
          v69 = v91;
          *(v68 + 24) = aBlock;
          *(v68 + 40) = v69;
          *(v68 + 56) = v92;
          *(v68 + 64) = 0;
          v89 = v68;
          a7(&v89);
        }

        while (v63 != v64);
      }

      sub_21D0D8CF0(0, &qword_280D1B900);
      v71 = sub_21DBFB12C();
      v72 = swift_allocObject();
      v72[2] = v60;
      v72[3] = sub_21D1D20C8;
      v72[4] = v83;
      v92 = sub_21D1D1AC8;
      v93 = v72;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v91 = sub_21D11E5E4;
      *(&v91 + 1) = &block_descriptor_164;
      v73 = _Block_copy(&aBlock);

      [v62 saveWithQueue:v71 completion:v73];

      _Block_release(v73);
    }

    sub_21D0CF7E0(v95, &unk_27CE60D80);
    return;
  }

  v30 = sub_21D1CD374(v20, v95);
  v31 = v30;
  if (v30)
  {
    v32 = qword_280D17EC8;
    v33 = v30;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_280D0F210);
    v35 = v33;
    v36 = sub_21DBF84AC();
    v37 = sub_21DBFAE9C();

    if (os_log_type_enabled(v36, v37))
    {
      v80 = v35;
      v38 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v94[0] = v78;
      *v38 = 136315394;
      sub_21D0D8CF0(0, &qword_27CE592C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592D0);
      v39 = sub_21DBFA1AC();
      v41 = sub_21D0CDFB4(v39, v40, v94);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      *&aBlock = [v80 smartListType];
      *(&aBlock + 1) = [v80 objectID];
      v42 = sub_21DBFA1AC();
      v44 = sub_21D0CDFB4(v42, v43, v94);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_21D0C9000, v36, v37, "Performing undo action on an overridden target {type: %s, id: %s}", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v78, -1, -1);
      v45 = v38;
      v35 = v80;
      MEMORY[0x223D46520](v45, -1, -1);
    }
  }

  else
  {
    v35 = v26;
  }

  sub_21D1D1658(v35, v82, a7, a8, type metadata accessor for TTRSmartListEditor);
  *&aBlock = 0;
  BYTE8(aBlock) = 0;
  v85(&aBlock);
}

void sub_21D1C9DB0(void (*a1)(__int128 *), uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id *), uint64_t a7, void *a8, void *a9, char a10)
{
  v120[5] = *MEMORY[0x277D85DE8];
  v16 = swift_allocObject();
  v111 = a1;
  v112 = a3;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  v19 = *(v18 + 8);

  v20 = v19(v17, v18);
  v21 = NSUndoManager.associatedSaveRequest.getter();
  if (v21)
  {
    v22 = v21;

    v23 = [v22 _trackedTemplateChangeItemForObjectID_];
    v24 = v23;
    v25 = a5;
    if (v23)
    {
LABEL_5:
      v31 = v23;
      sub_21D1D1658(v24, a3, a6, a7, type metadata accessor for TTRTemplateEditor);

      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v111(&aBlock);

      return;
    }

    v26 = [v22 store];
    *&aBlock = 0;
    v27 = [v26 fetchTemplateWithObjectID:a5 error:&aBlock];
    if (v27)
    {
      v28 = v27;
      v29 = aBlock;

      v30 = [v22 updateTemplate_];
      v24 = v30;
      v23 = 0;
      goto LABEL_5;
    }

    v65 = aBlock;
    v64 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_25;
  }

  v25 = a5;
  v32 = a6;
  if (a8)
  {
    v120[0] = a8;
    v33 = a8;
    if ((NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter() & 1) == 0)
    {

      v48 = sub_21D1CD1E8(v20, v120);
      v49 = v48;
      if (v48)
      {
        v50 = qword_280D17EC8;
        v51 = v48;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = sub_21DBF84BC();
        __swift_project_value_buffer(v52, qword_280D0F210);
        v53 = v51;
        v54 = sub_21DBF84AC();
        v55 = sub_21DBFAE9C();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *&aBlock = v107;
          *v56 = 136315394;
          sub_21D0D8CF0(0, &qword_27CE592E0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592E8);
          v57 = sub_21DBFA1AC();
          v59 = sub_21D0CDFB4(v57, v58, &aBlock);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2080;
          v115 = [v53 objectID];
          sub_21D0D8CF0(0, &qword_280D17880);
          v60 = sub_21DBFA1AC();
          v62 = sub_21D0CDFB4(v60, v61, &aBlock);

          *(v56 + 14) = v62;
          _os_log_impl(&dword_21D0C9000, v54, v55, "Performing undo action on an overridden target {type: %s, id: %s}", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v107, -1, -1);
          MEMORY[0x223D46520](v56, -1, -1);
        }
      }

      else
      {
        v53 = v33;
      }

      sub_21D1D1658(v53, v112, v32, a7, type metadata accessor for TTRTemplateEditor);
      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v111(&aBlock);

      return;
    }
  }

  sub_21D0D32E4(v112, v120);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_21D1D20C4;
  *(v34 + 24) = v16;
  *&aBlock = 0;
  v35 = [a9 fetchTemplateWithObjectID:v25 error:&aBlock];
  v36 = aBlock;
  if (!v35)
  {
    v63 = aBlock;
    v64 = sub_21DBF52DC();

    swift_willThrow();

    sub_21D0CF7E0(v120, &unk_27CE60D80);
LABEL_25:
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v66 = sub_21DBF84BC();
    __swift_project_value_buffer(v66, qword_280D0F210);
    v67 = v64;
    v68 = v25;
    v69 = sub_21DBF84AC();
    v70 = sub_21DBFAEBC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&aBlock = v72;
      *v71 = 136315650;
      v120[0] = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592D8);
      v73 = sub_21DBFA1AC();
      v75 = sub_21D0CDFB4(v73, v74, &aBlock);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2082;
      swift_getErrorValue();
      v76 = sub_21DBFC75C();
      v78 = sub_21D0CDFB4(v76, v77, &aBlock);

      *(v71 + 14) = v78;
      *(v71 + 22) = 2080;
      v120[0] = v68;
      sub_21D0D8CF0(0, &qword_280D17880);
      v79 = v68;
      v80 = sub_21DBFA1AC();
      v82 = sub_21D0CDFB4(v80, v81, &aBlock);

      *(v71 + 24) = v82;
      _os_log_impl(&dword_21D0C9000, v69, v70, "%s: failed to perform undo {error: %{public}s, id: %s}", v71, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v72, -1, -1);
      MEMORY[0x223D46520](v71, -1, -1);
    }

    *&aBlock = v64;
    BYTE8(aBlock) = 1;
    v83 = v64;
    v111(&aBlock);

    return;
  }

  v37 = v35;
  v109 = v34;
  v113 = v20;
  if (a10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v37;
    v39 = v36;
    v106 = v37;
    v104 = MEMORY[0x223D45970]();
    v40 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v40 setSaveIsNoopIfNoChangedKeys_];
    v41 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      v42 = 0;
      do
      {
        if ((inited & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x223D44740](v42, inited);
        }

        else
        {
          v43 = *(inited + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        sub_21D1826C4(v120, &aBlock);
        v45 = [v40 updateTemplate_];

        type metadata accessor for TTRTemplateEditor();
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        v47 = v117;
        *(v46 + 24) = aBlock;
        *(v46 + 40) = v47;
        *(v46 + 56) = v118;
        *(v46 + 64) = 1;
        v115 = v46;
        a6(&v115);
      }

      while (v41 != v42);
    }

    *&aBlock = 0;
    if ([v40 saveSynchronouslyWithError_])
    {
      v96 = aBlock;

      objc_autoreleasePoolPop(v105);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v100 = aBlock;
      v101 = sub_21DBF52DC();

      swift_willThrow();
      objc_autoreleasePoolPop(v105);
      swift_setDeallocating();
      swift_arrayDestroy();
      *&aBlock = v101;
      BYTE8(aBlock) = 1;
      v102 = v101;
      v103 = v101;
      v111(&aBlock);
    }
  }

  else
  {
    v84 = aBlock;
    v85 = [v37 store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_21DC09CF0;
    *(v86 + 32) = v37;
    v87 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v110 = v37;
    v88 = [v87 initWithStore_];
    [v88 setSaveIsNoopIfNoChangedKeys_];
    v89 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v89)
    {
      v90 = 0;
      do
      {
        if ((v86 & 0xC000000000000001) != 0)
        {
          v91 = MEMORY[0x223D44740](v90, v86);
        }

        else
        {
          v91 = *(v86 + 8 * v90 + 32);
        }

        v92 = v91;
        ++v90;
        sub_21D1826C4(v120, &aBlock);
        v93 = [v88 updateTemplate_];

        type metadata accessor for TTRTemplateEditor();
        v94 = swift_allocObject();
        *(v94 + 16) = v93;
        v95 = v117;
        *(v94 + 24) = aBlock;
        *(v94 + 40) = v95;
        *(v94 + 56) = v118;
        *(v94 + 64) = 0;
        v115 = v94;
        v32(&v115);
      }

      while (v89 != v90);
    }

    sub_21D0D8CF0(0, &qword_280D1B900);
    v97 = sub_21DBFB12C();
    v98 = swift_allocObject();
    v98[2] = v86;
    v98[3] = sub_21D1D20C8;
    v98[4] = v109;
    v118 = sub_21D1D1AC8;
    v119 = v98;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v117 = sub_21D11E5E4;
    *(&v117 + 1) = &block_descriptor_187;
    v99 = _Block_copy(&aBlock);

    [v88 saveWithQueue:v97 completion:v99];

    _Block_release(v99);
  }

  sub_21D0CF7E0(v120, &unk_27CE60D80);
}

void sub_21D1CAA6C(void (*a1)(__int128 *), uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id *), uint64_t a7, void *a8, void *a9, char a10)
{
  v120[5] = *MEMORY[0x277D85DE8];
  v16 = swift_allocObject();
  v111 = a1;
  v112 = a3;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  v19 = *(v18 + 8);

  v20 = v19(v17, v18);
  v21 = NSUndoManager.associatedSaveRequest.getter();
  if (v21)
  {
    v22 = v21;

    v23 = [v22 _trackedAccountChangeItemForObjectID_];
    v24 = v23;
    v25 = a5;
    if (v23)
    {
LABEL_5:
      v31 = v23;
      sub_21D1D1658(v24, a3, a6, a7, type metadata accessor for TTRAccountEditor);

      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v111(&aBlock);

      return;
    }

    v26 = [v22 store];
    *&aBlock = 0;
    v27 = [v26 fetchAccountWithObjectID:a5 error:&aBlock];
    if (v27)
    {
      v28 = v27;
      v29 = aBlock;

      v30 = [v22 updateAccount_];
      v24 = v30;
      v23 = 0;
      goto LABEL_5;
    }

    v65 = aBlock;
    v64 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_25;
  }

  v25 = a5;
  v32 = a6;
  if (a8)
  {
    v120[0] = a8;
    v33 = a8;
    if ((NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter() & 1) == 0)
    {

      v48 = sub_21D1CD1E8(v20, v120);
      v49 = v48;
      if (v48)
      {
        v50 = qword_280D17EC8;
        v51 = v48;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = sub_21DBF84BC();
        __swift_project_value_buffer(v52, qword_280D0F210);
        v53 = v51;
        v54 = sub_21DBF84AC();
        v55 = sub_21DBFAE9C();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *&aBlock = v107;
          *v56 = 136315394;
          sub_21D0D8CF0(0, &qword_27CE59300);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59308);
          v57 = sub_21DBFA1AC();
          v59 = sub_21D0CDFB4(v57, v58, &aBlock);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2080;
          v115 = [v53 objectID];
          sub_21D0D8CF0(0, &qword_280D17880);
          v60 = sub_21DBFA1AC();
          v62 = sub_21D0CDFB4(v60, v61, &aBlock);

          *(v56 + 14) = v62;
          _os_log_impl(&dword_21D0C9000, v54, v55, "Performing undo action on an overridden target {type: %s, id: %s}", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v107, -1, -1);
          MEMORY[0x223D46520](v56, -1, -1);
        }
      }

      else
      {
        v53 = v33;
      }

      sub_21D1D1658(v53, v112, v32, a7, type metadata accessor for TTRAccountEditor);
      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v111(&aBlock);

      return;
    }
  }

  sub_21D0D32E4(v112, v120);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_21D1D20C4;
  *(v34 + 24) = v16;
  *&aBlock = 0;
  v35 = [a9 fetchAccountWithObjectID:v25 error:&aBlock];
  v36 = aBlock;
  if (!v35)
  {
    v63 = aBlock;
    v64 = sub_21DBF52DC();

    swift_willThrow();

    sub_21D0CF7E0(v120, &unk_27CE60D80);
LABEL_25:
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v66 = sub_21DBF84BC();
    __swift_project_value_buffer(v66, qword_280D0F210);
    v67 = v64;
    v68 = v25;
    v69 = sub_21DBF84AC();
    v70 = sub_21DBFAEBC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&aBlock = v72;
      *v71 = 136315650;
      v120[0] = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592F8);
      v73 = sub_21DBFA1AC();
      v75 = sub_21D0CDFB4(v73, v74, &aBlock);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2082;
      swift_getErrorValue();
      v76 = sub_21DBFC75C();
      v78 = sub_21D0CDFB4(v76, v77, &aBlock);

      *(v71 + 14) = v78;
      *(v71 + 22) = 2080;
      v120[0] = v68;
      sub_21D0D8CF0(0, &qword_280D17880);
      v79 = v68;
      v80 = sub_21DBFA1AC();
      v82 = sub_21D0CDFB4(v80, v81, &aBlock);

      *(v71 + 24) = v82;
      _os_log_impl(&dword_21D0C9000, v69, v70, "%s: failed to perform undo {error: %{public}s, id: %s}", v71, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v72, -1, -1);
      MEMORY[0x223D46520](v71, -1, -1);
    }

    *&aBlock = v64;
    BYTE8(aBlock) = 1;
    v83 = v64;
    v111(&aBlock);

    return;
  }

  v37 = v35;
  v109 = v34;
  v113 = v20;
  if (a10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v37;
    v39 = v36;
    v106 = v37;
    v104 = MEMORY[0x223D45970]();
    v40 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v40 setSaveIsNoopIfNoChangedKeys_];
    v41 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      v42 = 0;
      do
      {
        if ((inited & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x223D44740](v42, inited);
        }

        else
        {
          v43 = *(inited + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        sub_21D1826C4(v120, &aBlock);
        v45 = [v40 updateAccount_];

        type metadata accessor for TTRAccountEditor();
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        v47 = v117;
        *(v46 + 24) = aBlock;
        *(v46 + 40) = v47;
        *(v46 + 56) = v118;
        *(v46 + 64) = 1;
        v115 = v46;
        a6(&v115);
      }

      while (v41 != v42);
    }

    *&aBlock = 0;
    if ([v40 saveSynchronouslyWithError_])
    {
      v96 = aBlock;

      objc_autoreleasePoolPop(v105);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v100 = aBlock;
      v101 = sub_21DBF52DC();

      swift_willThrow();
      objc_autoreleasePoolPop(v105);
      swift_setDeallocating();
      swift_arrayDestroy();
      *&aBlock = v101;
      BYTE8(aBlock) = 1;
      v102 = v101;
      v103 = v101;
      v111(&aBlock);
    }
  }

  else
  {
    v84 = aBlock;
    v85 = [v37 store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_21DC09CF0;
    *(v86 + 32) = v37;
    v87 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v110 = v37;
    v88 = [v87 initWithStore_];
    [v88 setSaveIsNoopIfNoChangedKeys_];
    v89 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v89)
    {
      v90 = 0;
      do
      {
        if ((v86 & 0xC000000000000001) != 0)
        {
          v91 = MEMORY[0x223D44740](v90, v86);
        }

        else
        {
          v91 = *(v86 + 8 * v90 + 32);
        }

        v92 = v91;
        ++v90;
        sub_21D1826C4(v120, &aBlock);
        v93 = [v88 updateAccount_];

        type metadata accessor for TTRAccountEditor();
        v94 = swift_allocObject();
        *(v94 + 16) = v93;
        v95 = v117;
        *(v94 + 24) = aBlock;
        *(v94 + 40) = v95;
        *(v94 + 56) = v118;
        *(v94 + 64) = 0;
        v115 = v94;
        v32(&v115);
      }

      while (v89 != v90);
    }

    sub_21D0D8CF0(0, &qword_280D1B900);
    v97 = sub_21DBFB12C();
    v98 = swift_allocObject();
    v98[2] = v86;
    v98[3] = sub_21D1D20C8;
    v98[4] = v109;
    v118 = sub_21D1D1AC8;
    v119 = v98;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v117 = sub_21D11E5E4;
    *(&v117 + 1) = &block_descriptor_210;
    v99 = _Block_copy(&aBlock);

    [v88 saveWithQueue:v97 completion:v99];

    _Block_release(v99);
  }

  sub_21D0CF7E0(v120, &unk_27CE60D80);
}

void sub_21D1CB728(void (*a1)(__int128 *), uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(id *), uint64_t a7, void *a8, void *a9, char a10)
{
  v124[5] = *MEMORY[0x277D85DE8];
  v15 = swift_allocObject();
  v115 = a1;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  v18 = *(v17 + 8);

  v19 = v18(v16, v17);
  v20 = NSUndoManager.associatedSaveRequest.getter();
  if (v20)
  {
    v21 = v20;

    v22 = [v21 _trackedTemplateSectionChangeItemForObjectID_];
    v23 = v22;
    if (v22)
    {
LABEL_5:
      sub_21D0D32E4(a3, &aBlock);
      type metadata accessor for TTRTemplateSectionEditor();
      v29 = swift_allocObject();
      *(v29 + 64) = 0;
      *(v29 + 16) = v23;
      v30 = v120;
      *(v29 + 24) = aBlock;
      *(v29 + 40) = v30;
      *(v29 + 56) = v121;
      swift_beginAccess();
      *(v29 + 64) = 0;
      v123[0] = v29;
      v31 = v22;
      v32 = v23;
      a6(v123);

      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v115(&aBlock);

      return;
    }

    v24 = [v21 store];
    *&aBlock = 0;
    v25 = [v24 fetchTemplateSectionWithObjectID:a5 error:&aBlock];
    if (v25)
    {
      v26 = v25;
      v27 = aBlock;

      v28 = [v21 updateTemplateSection_];
      v23 = v28;
      goto LABEL_5;
    }

    v63 = v115;
    v66 = aBlock;
    v65 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_25;
  }

  if (a8)
  {
    v123[0] = a8;
    v33 = a8;
    if ((NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter() & 1) == 0)
    {

      v48 = sub_21D1CD5D8(v19, v123);
      v49 = v48;
      if (v48)
      {
        v50 = qword_280D17EC8;
        v51 = v48;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = sub_21DBF84BC();
        __swift_project_value_buffer(v52, qword_280D0F210);
        v53 = v51;
        v54 = sub_21DBF84AC();
        v55 = sub_21DBFAE9C();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *&aBlock = v114;
          *v56 = 136315394;
          v124[0] = sub_21D0D8CF0(0, &qword_27CE592A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592A8);
          v57 = sub_21DBFA1AC();
          v59 = sub_21D0CDFB4(v57, v58, &aBlock);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2080;
          v124[0] = [v53 objectID];
          sub_21D0D8CF0(0, &qword_280D17880);
          v60 = sub_21DBFA1AC();
          v62 = sub_21D0CDFB4(v60, v61, &aBlock);

          *(v56 + 14) = v62;
          _os_log_impl(&dword_21D0C9000, v54, v55, "Performing undo action on an overridden target {type: %s, id: %s}", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v114, -1, -1);
          MEMORY[0x223D46520](v56, -1, -1);
        }
      }

      else
      {
        v53 = v33;
      }

      sub_21D0D32E4(a3, &aBlock);
      type metadata accessor for TTRTemplateSectionEditor();
      v101 = swift_allocObject();
      *(v101 + 64) = 0;
      *(v101 + 16) = v53;
      v102 = v120;
      *(v101 + 24) = aBlock;
      *(v101 + 40) = v102;
      *(v101 + 56) = v121;
      swift_beginAccess();
      *(v101 + 64) = 0;
      v118 = v101;
      v103 = v53;
      a6(&v118);

      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v115(&aBlock);

      return;
    }
  }

  sub_21D0D32E4(a3, v124);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_21D1D20C4;
  *(v34 + 24) = v15;
  *&aBlock = 0;
  v35 = [a9 fetchTemplateSectionWithObjectID:a5 error:&aBlock];
  v36 = aBlock;
  if (!v35)
  {
    v63 = a1;
    v64 = aBlock;
    v65 = sub_21DBF52DC();

    swift_willThrow();

    sub_21D0CF7E0(v124, &unk_27CE60D80);
LABEL_25:
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v67 = sub_21DBF84BC();
    __swift_project_value_buffer(v67, qword_280D0F210);
    v68 = v65;
    v69 = a5;
    v70 = sub_21DBF84AC();
    v71 = sub_21DBFAEBC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&aBlock = v73;
      *v72 = 136315650;
      v124[0] = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59298);
      v74 = sub_21DBFA1AC();
      v76 = sub_21D0CDFB4(v74, v75, &aBlock);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2082;
      swift_getErrorValue();
      v77 = sub_21DBFC75C();
      v79 = sub_21D0CDFB4(v77, v78, &aBlock);

      *(v72 + 14) = v79;
      *(v72 + 22) = 2080;
      v124[0] = v69;
      sub_21D0D8CF0(0, &qword_280D17880);
      v80 = v69;
      v81 = sub_21DBFA1AC();
      v83 = sub_21D0CDFB4(v81, v82, &aBlock);

      *(v72 + 24) = v83;
      _os_log_impl(&dword_21D0C9000, v70, v71, "%s: failed to perform undo {error: %{public}s, id: %s}", v72, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v73, -1, -1);
      MEMORY[0x223D46520](v72, -1, -1);
    }

    *&aBlock = v65;
    BYTE8(aBlock) = 1;
    v84 = v65;
    v63(&aBlock);

    return;
  }

  v37 = v35;
  v113 = v34;
  v111 = v19;
  if (a10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v37;
    v39 = v36;
    v110 = v37;
    v108 = MEMORY[0x223D45970]();
    v40 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v40 setSaveIsNoopIfNoChangedKeys_];
    v41 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      v42 = 0;
      do
      {
        if ((inited & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x223D44740](v42, inited);
        }

        else
        {
          v43 = *(inited + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        sub_21D1826C4(v124, &aBlock);
        v45 = [v40 updateTemplateSection_];

        type metadata accessor for TTRTemplateSectionEditor();
        v46 = swift_allocObject();
        *(v46 + 64) = 0;
        *(v46 + 16) = v45;
        v47 = v120;
        *(v46 + 24) = aBlock;
        *(v46 + 40) = v47;
        *(v46 + 56) = v121;
        swift_beginAccess();
        *(v46 + 64) = 1;
        v118 = v46;
        a6(&v118);
      }

      while (v41 != v42);
    }

    *&aBlock = 0;
    if ([v40 saveSynchronouslyWithError_])
    {
      v97 = aBlock;

      objc_autoreleasePoolPop(v109);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v104 = aBlock;
      v105 = sub_21DBF52DC();

      swift_willThrow();
      objc_autoreleasePoolPop(v109);
      swift_setDeallocating();
      swift_arrayDestroy();
      *&aBlock = v105;
      BYTE8(aBlock) = 1;
      v106 = v105;
      v107 = v105;
      v115(&aBlock);
    }
  }

  else
  {
    v85 = aBlock;
    v86 = [v37 store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_21DC09CF0;
    *(v87 + 32) = v37;
    v88 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v116 = v37;
    v89 = [v88 initWithStore_];
    [v89 setSaveIsNoopIfNoChangedKeys_];
    v90 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v90)
    {
      v91 = 0;
      do
      {
        if ((v87 & 0xC000000000000001) != 0)
        {
          v92 = MEMORY[0x223D44740](v91, v87);
        }

        else
        {
          v92 = *(v87 + 8 * v91 + 32);
        }

        v93 = v92;
        ++v91;
        sub_21D1826C4(v124, &aBlock);
        v94 = [v89 updateTemplateSection_];

        type metadata accessor for TTRTemplateSectionEditor();
        v95 = swift_allocObject();
        *(v95 + 64) = 0;
        *(v95 + 16) = v94;
        v96 = v120;
        *(v95 + 24) = aBlock;
        *(v95 + 40) = v96;
        *(v95 + 56) = v121;
        swift_beginAccess();
        *(v95 + 64) = 0;
        v118 = v95;
        a6(&v118);
      }

      while (v90 != v91);
    }

    sub_21D0D8CF0(0, &qword_280D1B900);
    v98 = sub_21DBFB12C();
    v99 = swift_allocObject();
    v99[2] = v87;
    v99[3] = sub_21D1D20C8;
    v99[4] = v113;
    v121 = sub_21D1D1AC8;
    v122 = v99;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v120 = sub_21D11E5E4;
    *(&v120 + 1) = &block_descriptor_141;
    v100 = _Block_copy(&aBlock);

    [v89 saveWithQueue:v98 completion:v100];

    _Block_release(v100);
  }

  sub_21D0CF7E0(v124, &unk_27CE60D80);
}

void sub_21D1CC488(void (*a1)(__int128 *), uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(id *), uint64_t a7, void *a8, void *a9, char a10)
{
  v124[5] = *MEMORY[0x277D85DE8];
  v15 = swift_allocObject();
  v115 = a1;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  v18 = *(v17 + 8);

  v19 = v18(v16, v17);
  v20 = NSUndoManager.associatedSaveRequest.getter();
  if (v20)
  {
    v21 = v20;

    v22 = [v21 _trackedSmartListSectionChangeItemForObjectID_];
    v23 = v22;
    if (v22)
    {
LABEL_5:
      sub_21D0D32E4(a3, &aBlock);
      type metadata accessor for TTRSmartListSectionEditor();
      v29 = swift_allocObject();
      *(v29 + 64) = 0;
      *(v29 + 16) = v23;
      v30 = v120;
      *(v29 + 24) = aBlock;
      *(v29 + 40) = v30;
      *(v29 + 56) = v121;
      swift_beginAccess();
      *(v29 + 64) = 0;
      v123[0] = v29;
      v31 = v22;
      v32 = v23;
      a6(v123);

      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v115(&aBlock);

      return;
    }

    v24 = [v21 store];
    *&aBlock = 0;
    v25 = [v24 fetchSmartListSectionWithObjectID:a5 error:&aBlock];
    if (v25)
    {
      v26 = v25;
      v27 = aBlock;

      v28 = [v21 updateSmartListSection_];
      v23 = v28;
      goto LABEL_5;
    }

    v63 = v115;
    v66 = aBlock;
    v65 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_25;
  }

  if (a8)
  {
    v123[0] = a8;
    v33 = a8;
    if ((NSUndoManager.unitTest_ignoresInMemoryChangeItems.getter() & 1) == 0)
    {

      v48 = sub_21D1CD5D8(v19, v123);
      v49 = v48;
      if (v48)
      {
        v50 = qword_280D17EC8;
        v51 = v48;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = sub_21DBF84BC();
        __swift_project_value_buffer(v52, qword_280D0F210);
        v53 = v51;
        v54 = sub_21DBF84AC();
        v55 = sub_21DBFAE9C();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *&aBlock = v114;
          *v56 = 136315394;
          v124[0] = sub_21D0D8CF0(0, &qword_27CE59268);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59270);
          v57 = sub_21DBFA1AC();
          v59 = sub_21D0CDFB4(v57, v58, &aBlock);

          *(v56 + 4) = v59;
          *(v56 + 12) = 2080;
          v124[0] = [v53 objectID];
          sub_21D0D8CF0(0, &qword_280D17880);
          v60 = sub_21DBFA1AC();
          v62 = sub_21D0CDFB4(v60, v61, &aBlock);

          *(v56 + 14) = v62;
          _os_log_impl(&dword_21D0C9000, v54, v55, "Performing undo action on an overridden target {type: %s, id: %s}", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v114, -1, -1);
          MEMORY[0x223D46520](v56, -1, -1);
        }
      }

      else
      {
        v53 = v33;
      }

      sub_21D0D32E4(a3, &aBlock);
      type metadata accessor for TTRSmartListSectionEditor();
      v101 = swift_allocObject();
      *(v101 + 64) = 0;
      *(v101 + 16) = v53;
      v102 = v120;
      *(v101 + 24) = aBlock;
      *(v101 + 40) = v102;
      *(v101 + 56) = v121;
      swift_beginAccess();
      *(v101 + 64) = 0;
      v118 = v101;
      v103 = v53;
      a6(&v118);

      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v115(&aBlock);

      return;
    }
  }

  sub_21D0D32E4(a3, v124);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_21D1D1AB4;
  *(v34 + 24) = v15;
  *&aBlock = 0;
  v35 = [a9 fetchSmartListSectionWithObjectID:a5 error:&aBlock];
  v36 = aBlock;
  if (!v35)
  {
    v63 = a1;
    v64 = aBlock;
    v65 = sub_21DBF52DC();

    swift_willThrow();

    sub_21D0CF7E0(v124, &unk_27CE60D80);
LABEL_25:
    if (qword_280D17EC8 != -1)
    {
      swift_once();
    }

    v67 = sub_21DBF84BC();
    __swift_project_value_buffer(v67, qword_280D0F210);
    v68 = v65;
    v69 = a5;
    v70 = sub_21DBF84AC();
    v71 = sub_21DBFAEBC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&aBlock = v73;
      *v72 = 136315650;
      v124[0] = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59258);
      v74 = sub_21DBFA1AC();
      v76 = sub_21D0CDFB4(v74, v75, &aBlock);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2082;
      swift_getErrorValue();
      v77 = sub_21DBFC75C();
      v79 = sub_21D0CDFB4(v77, v78, &aBlock);

      *(v72 + 14) = v79;
      *(v72 + 22) = 2080;
      v124[0] = v69;
      sub_21D0D8CF0(0, &qword_280D17880);
      v80 = v69;
      v81 = sub_21DBFA1AC();
      v83 = sub_21D0CDFB4(v81, v82, &aBlock);

      *(v72 + 24) = v83;
      _os_log_impl(&dword_21D0C9000, v70, v71, "%s: failed to perform undo {error: %{public}s, id: %s}", v72, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v73, -1, -1);
      MEMORY[0x223D46520](v72, -1, -1);
    }

    *&aBlock = v65;
    BYTE8(aBlock) = 1;
    v84 = v65;
    v63(&aBlock);

    return;
  }

  v37 = v35;
  v113 = v34;
  v111 = v19;
  if (a10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v37;
    v39 = v36;
    v110 = v37;
    v108 = MEMORY[0x223D45970]();
    v40 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v40 setSaveIsNoopIfNoChangedKeys_];
    v41 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      v42 = 0;
      do
      {
        if ((inited & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x223D44740](v42, inited);
        }

        else
        {
          v43 = *(inited + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        sub_21D1826C4(v124, &aBlock);
        v45 = [v40 updateSmartListSection_];

        type metadata accessor for TTRSmartListSectionEditor();
        v46 = swift_allocObject();
        *(v46 + 64) = 0;
        *(v46 + 16) = v45;
        v47 = v120;
        *(v46 + 24) = aBlock;
        *(v46 + 40) = v47;
        *(v46 + 56) = v121;
        swift_beginAccess();
        *(v46 + 64) = 1;
        v118 = v46;
        a6(&v118);
      }

      while (v41 != v42);
    }

    *&aBlock = 0;
    if ([v40 saveSynchronouslyWithError_])
    {
      v97 = aBlock;

      objc_autoreleasePoolPop(v109);

      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v104 = aBlock;
      v105 = sub_21DBF52DC();

      swift_willThrow();
      objc_autoreleasePoolPop(v109);
      swift_setDeallocating();
      swift_arrayDestroy();
      *&aBlock = v105;
      BYTE8(aBlock) = 1;
      v106 = v105;
      v107 = v105;
      v115(&aBlock);
    }
  }

  else
  {
    v85 = aBlock;
    v86 = [v37 store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_21DC09CF0;
    *(v87 + 32) = v37;
    v88 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v116 = v37;
    v89 = [v88 initWithStore_];
    [v89 setSaveIsNoopIfNoChangedKeys_];
    v90 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v90)
    {
      v91 = 0;
      do
      {
        if ((v87 & 0xC000000000000001) != 0)
        {
          v92 = MEMORY[0x223D44740](v91, v87);
        }

        else
        {
          v92 = *(v87 + 8 * v91 + 32);
        }

        v93 = v92;
        ++v91;
        sub_21D1826C4(v124, &aBlock);
        v94 = [v89 updateSmartListSection_];

        type metadata accessor for TTRSmartListSectionEditor();
        v95 = swift_allocObject();
        *(v95 + 64) = 0;
        *(v95 + 16) = v94;
        v96 = v120;
        *(v95 + 24) = aBlock;
        *(v95 + 40) = v96;
        *(v95 + 56) = v121;
        swift_beginAccess();
        *(v95 + 64) = 0;
        v118 = v95;
        a6(&v118);
      }

      while (v90 != v91);
    }

    sub_21D0D8CF0(0, &qword_280D1B900);
    v98 = sub_21DBFB12C();
    v99 = swift_allocObject();
    v99[2] = v87;
    v99[3] = sub_21D1D1AC0;
    v99[4] = v113;
    v121 = sub_21D1D1AC8;
    v122 = v99;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v120 = sub_21D11E5E4;
    *(&v120 + 1) = &block_descriptor_3;
    v100 = _Block_copy(&aBlock);

    [v89 saveWithQueue:v98 completion:v100];

    _Block_release(v100);
  }

  sub_21D0CF7E0(v124, &unk_27CE60D80);
}

uint64_t sub_21D1CD1E8(uint64_t a1, id *a2)
{
  sub_21DBBFDD8(&v9);
  if (!*(&v10 + 1))
  {
    sub_21D0CF7E0(&v9, &qword_27CE59278);
    return 0;
  }

  v12[0] = v9;
  v12[1] = v10;
  v13 = v11;
  if (v11 == *a2)
  {
LABEL_10:
    sub_21D1D1AD4(v12);
    return 0;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v4 = v3;
  sub_21D0CEB98(v12, &v9);
  sub_21D0D8CF0(0, &qword_280D17880);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (!v8)
  {
LABEL_12:
    swift_unknownObjectRelease();
    sub_21D1D1AD4(v12);

    return 0;
  }

  v5 = [*a2 objectID];
  v6 = sub_21DBFB63C();

  sub_21D1D1AD4(v12);
  if (v6)
  {
    return v4;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_21D1CD374(uint64_t a1, id *a2)
{
  sub_21DBBFDD8(&v17);
  if (!*(&v18 + 1))
  {
    sub_21D0CF7E0(&v17, &qword_27CE59278);
    return 0;
  }

  v20[0] = v17;
  v20[1] = v18;
  v21 = v19;
  if (v19 == *a2)
  {
LABEL_11:
    sub_21D1D1AD4(v20);
    return 0;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v4 = v3;
  sub_21D0CEB98(v20, &v17);
  if (swift_dynamicCast())
  {
    if (v15)
    {
      v5 = *a2;
      v6 = [v5 smartListType];
      v7 = [v5 objectID];

      v8 = sub_21DBFA16C();
      v10 = v9;
      if (v8 == sub_21DBFA16C() && v10 == v11)
      {
      }

      else
      {
        v12 = sub_21DBFC64C();

        if ((v12 & 1) == 0)
        {

          sub_21D0D9834(v15, v16);
          sub_21D1D1AD4(v20);
LABEL_18:
          swift_unknownObjectRelease();
          return 0;
        }
      }

      sub_21D0D8CF0(0, &qword_280D17680);
      v13 = sub_21DBFB63C();

      sub_21D0D9834(v15, v16);
      sub_21D1D1AD4(v20);
      if (v13)
      {
        return v4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  swift_unknownObjectRelease();
  sub_21D1D1AD4(v20);
  sub_21D0D9834(v15, v16);
  return 0;
}

uint64_t sub_21D1CD5D8(uint64_t a1, id *a2)
{
  sub_21DBBFDD8(&v9);
  if (!*(&v10 + 1))
  {
    sub_21D0CF7E0(&v9, &qword_27CE59278);
    return 0;
  }

  v12[0] = v9;
  v12[1] = v10;
  v13 = v11;
  if (v11 == *a2)
  {
LABEL_9:
    sub_21D1D1AD4(v12);
    return 0;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v4 = v3;
  sub_21D0CEB98(v12, &v9);
  sub_21D0D8CF0(0, &qword_280D17880);
  if (swift_dynamicCast())
  {
    v5 = [*a2 objectID];
    v6 = sub_21DBFB63C();

    sub_21D1D1AD4(v12);
    if (v6)
    {
      return v4;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_21D1D1AD4(v12);
  }

  return 0;
}

uint64_t sub_21D1CD760(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = *a4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_21D0D32E4(a1, v20);
  v16 = swift_allocObject();
  sub_21D0D0FD0(v20, v16 + 16);
  *(v16 + 56) = a2;
  *(v16 + 64) = v14;
  *(v16 + 72) = a7;
  *(v16 + 80) = a8;
  *(v16 + 88) = Strong;
  *(v16 + 96) = a5;
  *(v16 + 104) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();
  v17 = v14;

  v18 = a5;
  return sub_21DBF911C();
}

uint64_t sub_21D1CD868(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a6;
  v18 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  *(a5 + 64) = 0;
  *(a5 + 16) = a1;
  v14 = *(a2 + 16);
  *(a5 + 24) = *a2;
  *(a5 + 40) = v14;
  *(a5 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(a5 + 64) = a3;
  sub_21D0D0FD0(&v16, a5 + 72);
  return a5;
}

uint64_t sub_21D1CDA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  v14 = *(a4 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_21D0D32E4(a1, v22);
  v17 = swift_allocObject();
  sub_21D0D0FD0(v22, v17 + 16);
  *(v17 + 56) = a2;
  *(v17 + 64) = v15;
  *(v17 + 72) = v14;
  *(v17 + 80) = a7;
  *(v17 + 88) = a8;
  *(v17 + 96) = Strong;
  *(v17 + 104) = a5;
  *(v17 + 112) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();
  v18 = v15;
  v19 = v14;

  v20 = a5;
  return sub_21DBF911C();
}

uint64_t sub_21D1CDB50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59280);
    v3 = sub_21DBFBEBC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      result = sub_21DBFC82C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_21DBFC64C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21D1CDCD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592B0);
    v3 = sub_21DBFBEBC();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      sub_21DBFC7DC();
      if (v6)
      {
        v7 = 0x736E6D756C6F63;
      }

      else
      {
        v7 = 1953720684;
      }

      if (v6)
      {
        v8 = 0xE700000000000000;
      }

      else
      {
        v8 = 0xE400000000000000;
      }

      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v23 = v6;
        v15 = ~v10;
        do
        {
          if (*(*(v3 + 48) + v11))
          {
            v16 = 0x736E6D756C6F63;
          }

          else
          {
            v16 = 1953720684;
          }

          if (*(*(v3 + 48) + v11))
          {
            v17 = 0xE700000000000000;
          }

          else
          {
            v17 = 0xE400000000000000;
          }

          if (v16 == v7 && v17 == v8)
          {

            goto LABEL_4;
          }

          v19 = sub_21DBFC64C();

          if (v19)
          {
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
        LOBYTE(v6) = v23;
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_21D1CDECC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21DBFBD7C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59248);
      v3 = sub_21DBFBEBC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21DBFBD7C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x223D44740](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_21DBFB62C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_21DBF634C();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_21DBFB63C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_21DBFB62C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_21DBF634C();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_21DBFB63C();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_21D1CE1BC(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_21DBFBD7C();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_21DBFBEBC();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_21DBFBD7C();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x223D44740](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_21DBFB62C();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_21D0D8CF0(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_21DBFB63C();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_21DBFB62C();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_21D0D8CF0(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_21DBFB63C();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(void *a1, unint64_t a2, void *a3, char a4, char a5, unsigned __int8 *a6)
{
  i = 0;
  v101 = *a6;
  v113 = sub_21D0D8CF0(0, &qword_280D17770);
  v114 = &protocol witness table for REMReminderChangeItem;
  v112[0] = a1;
  v11 = __swift_project_boxed_opaque_existential_1(v112, v113);
  v12 = a1;
  v13 = a3;
  v106 = v12;
  v14 = [v12 listChangeItem];
  if (v14)
  {
    v15 = v14;
    sub_21D0D8CF0(0, &unk_280D177F0);
    v16 = [v15 objectID];
  }

  else
  {
    v16 = 0;
  }

  v103 = v13;
  v17 = [v13 objectID];
  v18 = v17;
  v19 = &OBJC_IVAR___TTRICustomRecurrenceEditorViewController__cachedFrequency;
  if (v16)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    v20 = sub_21DBFB63C();

    v21 = v103;
    if (v20)
    {
LABEL_6:

      v22 = v12;
      goto LABEL_7;
    }
  }

  else
  {

    v21 = v103;
  }

  if (sub_21D1C65A4(&selRef_cdEntityNameForSavedReminder))
  {
    v25 = 0;
LABEL_14:

LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(v112);
    if (*(v19 + 176) != -1)
    {
      swift_once();
    }

    v26 = sub_21DBF84BC();
    __swift_project_value_buffer(v26, qword_27CE591E0);
    v27 = v12;
    v28 = v21;
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAECC();

    if (os_log_type_enabled(v29, v30))
    {
      v108 = a2;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v112[0] = v33;
      *v31 = 136315650;
      v34 = "sslessly to the target list";
      v35 = "gular list to template";
      v36 = 0xD000000000000037;
      if (v25 != 2)
      {
        v36 = 0xD000000000000036;
        v35 = "TTRIMenuButtonAttachment.swift";
      }

      v37 = 0xD00000000000003BLL;
      if (v25)
      {
        v34 = "ot linked to an account";
      }

      else
      {
        v37 = 0xD000000000000035;
      }

      if (v25 <= 1)
      {
        v38 = v37;
      }

      else
      {
        v38 = v36;
      }

      if (v25 <= 1)
      {
        v39 = v34;
      }

      else
      {
        v39 = v35;
      }

      v40 = sub_21D0CDFB4(v38, v39 | 0x8000000000000000, v112);

      *(v31 + 4) = v40;
      *(v31 + 12) = 2112;
      v41 = [v27 objectID];
      *(v31 + 14) = v41;
      *v32 = v41;
      *(v31 + 22) = 2112;
      v42 = [v28 objectID];
      *(v31 + 24) = v42;
      v32[1] = v42;
      _os_log_impl(&dword_21D0C9000, v29, v30, "TTRListEditor#prepareToMoveByCopyingIfNeeded: the given REMReminder cannot be moved, fallback to copying {reason: %s, reminderID: %@, listID: %@}", v31, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223D46520](v33, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);

      a2 = v108;
      v21 = v103;
    }

    else
    {
    }

    goto LABEL_31;
  }

  if (sub_21D1C65A4(&selRef_cdEntityName))
  {
    v25 = 3;
    goto LABEL_14;
  }

  v78 = [v12 accountID];
  v79 = v21;
  v80 = [v21 accountID];
  sub_21D0D8CF0(0, &qword_280D17880);
  v81 = sub_21DBFB63C();

  if ((v81 & 1) == 0)
  {
    v89 = sub_21D1C3494(v12, v79);

    v21 = v79;
    if (v89 == 2)
    {
      v25 = 2;
    }

    else
    {
      if (v89 & 1) != 0 || (a5)
      {
        goto LABEL_86;
      }

      v25 = 1;
    }

    v19 = &OBJC_IVAR___TTRICustomRecurrenceEditorViewController__cachedFrequency;
    goto LABEL_15;
  }

  v82 = [v79 accountCapabilities];
  v83 = [v82 supportsMoveAcrossLists];

  v21 = v79;
  if ((v83 & 1) == 0)
  {

LABEL_86:
    __swift_destroy_boxed_opaque_existential_0(v112);
LABEL_31:
    v22 = v106;
    goto LABEL_32;
  }

  v84 = [v79 accountCapabilities];
  v85 = [v84 supportsMoveAcrossSharedLists];

  if (v85)
  {
    goto LABEL_6;
  }

  v86 = [*v11 listChangeItem];
  if (v86)
  {
    v87 = v86;
    sub_21D0D8CF0(0, &unk_280D177F0);
    v88 = [v87 isShared];

    if (v88)
    {

      v22 = v12;
LABEL_92:
      __swift_destroy_boxed_opaque_existential_0(v112);
LABEL_32:
      v43 = [v21 saveRequest];
      v44 = [v43 _copyReminderChangeItem_toListChangeItem_];

      v45 = v44;
      [v22 removeFromList];
      v46 = [v22 saveRequest];
      v47 = [v46 store];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_21DC09CF0;
      *(v48 + 32) = v22;
      v49 = v22;
      v50 = [v49 accountID];
      sub_21DBFB6AC();

      if (qword_27CE56580 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_100;
    }
  }

  v97 = [v79 isShared];

  v22 = v12;
  if (v97)
  {
    goto LABEL_92;
  }

LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v112);
  if (a4)
  {
    goto LABEL_32;
  }

  v23 = v22;
  sub_21DBF8E0C();
  v24 = v101;
LABEL_67:
  v90 = [v22 listID];
  v91 = [v21 objectID];
  v49 = v91;
  if (v90)
  {
    if (v91)
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v92 = sub_21DBFB63C();

      if ((v92 | v24))
      {
        return v23;
      }
    }

    else
    {
      v49 = v90;

      if (v24)
      {
        return v23;
      }
    }
  }

  else
  {
    if (!v91)
    {
      return v23;
    }

    if (v24)
    {
      return v23;
    }
  }

  v45 = &selRef__setContentViewMarginType_;
  v93 = [v23 assignmentContext];
  [v93 removeAllAssignments];

  if (a2 >> 62)
  {
    v94 = sub_21DBFBD7C();
    if (!v94)
    {
      return v23;
    }
  }

  else
  {
    v94 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v94)
    {
      return v23;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v95 = MEMORY[0x223D44740](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v95 = *(a2 + 8 * i + 32);
    }

    v49 = v95;
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v96 = [v95 assignmentContext];
    [v96 removeAllAssignments];

    if (v21 == v94)
    {
      return v23;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
LABEL_33:
    v51 = sub_21DBF84BC();
    __swift_project_value_buffer(v51, qword_27CE591E0);
    v52 = v49;
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAEDC();

    v100 = v52;
    v23 = v45;
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412546;
      v57 = [v52 objectID];
      *(v55 + 4) = v57;
      *v56 = v57;
      *(v55 + 12) = 2112;
      v58 = [v45 objectID];
      *(v55 + 14) = v58;
      v56[1] = v58;
      _os_log_impl(&dword_21D0C9000, v53, v54, "Copied reminder for moving across lists {original: %@, copy: %@}", v55, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      v59 = v56;
      v21 = v103;
      MEMORY[0x223D46520](v59, -1, -1);
      MEMORY[0x223D46520](v55, -1, -1);
    }

    v60 = [v45 subtaskContext];
    if (!v60)
    {
      a2 = MEMORY[0x277D84F90];
      goto LABEL_53;
    }

    if (a2 >> 62)
    {
      break;
    }

    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = MEMORY[0x277D84F90];
    if (!v21)
    {
LABEL_51:
      a2 = sub_21D1E3EAC(v61);

      v21 = v103;
LABEL_53:
      v24 = v101;
      v22 = v106;
      if (v101)
      {
        v69 = [v100 assignmentContext];
        if (v69)
        {
          v70 = v69;
          v71 = [v69 currentAssignment];

          if (v71)
          {
            v72 = [v23 assignmentContext];
            if (v72)
            {
              v73 = v72;
              v74 = [v71 assigneeID];
              v75 = [v71 originatorID];
              v76 = v23;
              v77 = [v73 addAssignmentWithAssigneeID:v74 originatorID:v75 status:{objc_msgSend(v71, sel_status)}];

              v23 = v76;
            }

            else
            {
            }
          }
        }
      }

      goto LABEL_67;
    }

    v102 = v45;
    v62 = a2;
    v112[0] = MEMORY[0x277D84F90];
    v49 = (a2 & 0xFFFFFFFFFFFFFF8);
    sub_21DBFC01C();
    v105 = a2 & 0xFFFFFFFFFFFFFF8;
    a2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:
    v63 = 0;
    v64 = v62;
    v65 = v62 & 0xC000000000000001;
    v109 = v64;
    v104 = v64 + 32;
    while (v63 < v21)
    {
      v45 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        goto LABEL_94;
      }

      if (__OFSUB__(a2--, 1))
      {
        goto LABEL_95;
      }

      if (v65)
      {
        v67 = MEMORY[0x223D44740](a2, v109);
      }

      else
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          goto LABEL_98;
        }

        if (a2 >= *(v105 + 16))
        {
          goto LABEL_99;
        }

        v67 = *(v104 + 8 * a2);
      }

      v68 = v67;
      v110 = v67;
      sub_21D1C3758(&v110, v60, &v111);

      if (i)
      {
        goto LABEL_110;
      }

      v49 = v111;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      ++v63;
      if (v45 == v21)
      {
        v61 = v112[0];
        v23 = v102;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
  }

  v62 = a2;
  v105 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v49 = a2;
  }

  else
  {
    v49 = (a2 & 0xFFFFFFFFFFFFFF8);
  }

  v21 = sub_21DBFBD7C();
  v61 = MEMORY[0x277D84F90];
  if (!v21)
  {
    goto LABEL_51;
  }

  v112[0] = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  v98 = sub_21DBFBD7C();
  if ((v21 & 0x8000000000000000) == 0)
  {
    a2 = v98;
    v102 = v45;
    goto LABEL_39;
  }

  __break(1u);
LABEL_110:

  __break(1u);
  return result;
}

void sub_21D1CF120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21D1BFF68(v1, &v2);
}

unint64_t _s15RemindersUICore13TTRListEditorC6remove9reminders11saveRequest11undoContext7Combine6FutureCyyts5Error_pGSaySo11REMReminderCG_So07REMSaveH0CAA07TTRUndoJ0_pSgtFZ_0(unint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_15:
    *(swift_allocObject() + 16) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
    swift_allocObject();
    v24 = a2;
    return sub_21DBF911C();
  }

  result = sub_21DBFBD7C();
  v4 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223D44740](i, v3);
      }

      else
      {
        v16 = *(v3 + 8 * i + 32);
      }

      v15 = v16;
      v17 = [v16 parentReminder];
      if (v17)
      {
        v6 = v17;
        sub_21D1826C4(a3, v33);
        sub_21D1826C4(v33, v32);
        v7 = v6;
        v8 = [a2 updateReminder_];
        sub_21D1826C4(v32, v30);
        type metadata accessor for TTRReminderEditor();
        v9 = swift_allocObject();
        *(v9 + 72) = 0;
        *(v9 + 16) = v8;
        sub_21D1826C4(v30, v9 + 24);
        *(v9 + 64) = 0;
        v10 = v8;
        v11 = [v10 fetchedCurrentDueDateDeltaAlert];

        sub_21D0CF7E0(v30, &unk_27CE60D80);
        sub_21D0CF7E0(v32, &unk_27CE60D80);
        sub_21D0CF7E0(v33, &unk_27CE60D80);
        v12 = *(v9 + 72);
        *(v9 + 72) = v11;

        v13 = [*(v9 + 16) saveRequest];
        v14 = [v13 updateReminder_];

        TTRReminderEditor.remove(subtask:)(v14);

        v15 = v14;
      }

      else
      {
        v18 = [v15 list];
        sub_21D1826C4(a3, v33);
        sub_21D1826C4(v33, v32);
        v19 = [a2 updateList_];
        sub_21D1826C4(v32, v30);
        if (qword_280D1AA10 != -1)
        {
          swift_once();
        }

        v20 = qword_280D1AA18;

        sub_21D0CF7E0(v32, &unk_27CE60D80);
        type metadata accessor for TTRListEditor();
        v21 = swift_allocObject();
        v28 = type metadata accessor for TTRUserDefaults();
        v29 = &protocol witness table for TTRUserDefaults;
        *&v27 = v20;
        v22 = v20;
        sub_21D0CF7E0(v33, &unk_27CE60D80);
        *(v21 + 64) = 0;
        *(v21 + 16) = v19;
        v23 = v30[1];
        *(v21 + 24) = v30[0];
        *(v21 + 40) = v23;
        *(v21 + 56) = v31;
        swift_beginAccess();
        *(v21 + 64) = 0;
        sub_21D0D0FD0(&v27, v21 + 72);
        TTRListEditor.remove(reminder:)(v15);
      }
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1CF604(uint64_t a1, id a2, uint64_t a3, char a4)
{
  v6 = [a2 updateList_];
  sub_21D1826C4(a3, v15);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v7 = qword_280D1AA18;
  sub_21D0CF7E0(a3, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  v8 = swift_allocObject();
  v13 = type metadata accessor for TTRUserDefaults();
  v14 = &protocol witness table for TTRUserDefaults;
  *&v12 = v7;
  *(v8 + 64) = 0;
  *(v8 + 16) = v6;
  v9 = v15[1];
  *(v8 + 24) = v15[0];
  *(v8 + 40) = v9;
  *(v8 + 56) = v16;
  swift_beginAccess();
  *(v8 + 64) = a4 & 1;
  sub_21D0D0FD0(&v12, v8 + 72);
  v10 = v7;
  return v8;
}

uint64_t _s15RemindersUICore13TTRListEditorC28filterOutSubtasksWithParents2inSaySo11REMReminderCG8filtered_Sb011hasDanglingG0tAH_tFZ_0(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v25 = MEMORY[0x277D84F90];
      result = sub_21DBFC01C();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223D44740](v6, a1);
        }

        else
        {
          v7 = *(a1 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = [v7 objectID];

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (i != v6);
      v22 = v25;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v25 = v4;
    if (v2)
    {
      break;
    }

    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_29;
    }

LABEL_14:
    v20 = 0;
    v11 = 0;
    v21 = a1 & 0xC000000000000001;
LABEL_17:
    v12 = v11;
    while (1)
    {
      if (v21)
      {
        v13 = MEMORY[0x223D44740](v12, a1);
      }

      else
      {
        if (v12 >= *(v23 + 16))
        {
          goto LABEL_32;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v15 = [v13 parentReminder];
      if (!v15)
      {
        goto LABEL_16;
      }

      v16 = v15;
      v2 = [v15 objectID];

      if (!v2)
      {
        goto LABEL_16;
      }

      v24 = v2;
      MEMORY[0x28223BE20](v17);
      v19[2] = &v24;
      v18 = sub_21D17B954(sub_21D1D1E18, v19, v22);

      if ((v18 & 1) == 0)
      {
        v20 = 1;
LABEL_16:
        sub_21DBFBFEC();
        v2 = *(v25 + 16);
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        if (v11 == v10)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      ++v12;
      if (v11 == v10)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = sub_21DBFBD7C();
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_29:
  v20 = 0;
LABEL_30:

  return v25;
}

void _s15RemindersUICore13TTRListEditorC7recover9reminders4list11saveRequest11undoContextySaySo11REMReminderCG_So7REMListCSo07REMSaveI0CAA07TTRUndoK0_pSgtFZ_0(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v60 = *MEMORY[0x277D85DE8];
  sub_21D1826C4(a4, aBlock);
  sub_21D1826C4(aBlock, v59);
  v7 = a2;
  v8 = a3;
  v9 = [v8 updateList_];
  sub_21D1826C4(v59, v57);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v10 = qword_280D1AA18;
  sub_21D0CF7E0(v59, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  v11 = swift_allocObject();
  v55 = type metadata accessor for TTRUserDefaults();
  v56 = &protocol witness table for TTRUserDefaults;
  *&v54 = v10;
  v12 = v10;
  sub_21D0CF7E0(aBlock, &unk_27CE60D80);
  *(v11 + 64) = 0;
  *(v11 + 16) = v9;
  v13 = v11;
  v14 = v57[1];
  *(v11 + 24) = v57[0];
  *(v11 + 40) = v14;
  *(v11 + 56) = v58;
  swift_beginAccess();
  *(v11 + 64) = 0;
  sub_21D0D0FD0(&v54, v11 + 72);

  v15 = _s15RemindersUICore13TTRListEditorC28filterOutSubtasksWithParents2inSaySo11REMReminderCG8filtered_Sb011hasDanglingG0tAH_tFZ_0(a1);
  v17 = v15;
  v18 = v8;
  if (v15 >> 62)
  {
    v19 = sub_21DBFBD7C();
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
  }

  v20 = 0;
  v21 = v17 & 0xC000000000000001;
  *&v16 = 136315138;
  v48 = v16;
  v49 = v17;
  v51 = v19;
  v52 = v17 & 0xC000000000000001;
  do
  {
    if (v21)
    {
      v24 = MEMORY[0x223D44740](v20, v17);
    }

    else
    {
      v24 = *(v17 + 8 * v20 + 32);
    }

    v25 = v24;
    if ([v24 isSubtask])
    {
      v22 = [v18 updateReminder_];
      [v22 removeFromParentReminder];
    }

    else
    {
      v26 = [v25 subtaskContext];
      if (v26)
      {
        v27 = v26;
        aBlock[0] = 0;
        v28 = [v26 fetchSubtasksMarkedForDeletionWithError_];
        v29 = aBlock[0];
        if (v28)
        {
          v30 = v28;
          sub_21D0D8CF0(0, &qword_280D17860);
          v31 = sub_21DBFA5EC();
          v32 = v29;

          sub_21D1C2AF8(v31);
        }

        else
        {
          v33 = aBlock[0];
          v34 = sub_21DBF52DC();

          swift_willThrow();
          if (qword_27CE56580 != -1)
          {
            swift_once();
          }

          v35 = sub_21DBF84BC();
          __swift_project_value_buffer(v35, qword_27CE591E0);
          v36 = v34;
          v37 = sub_21DBF84AC();
          v38 = sub_21DBFAEBC();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            aBlock[0] = v50;
            *v39 = v48;
            swift_getErrorValue();
            v40 = sub_21DBFC75C();
            v42 = v13;
            v43 = v18;
            v44 = sub_21D0CDFB4(v40, v41, aBlock);

            *(v39 + 4) = v44;
            v18 = v43;
            v13 = v42;
            _os_log_impl(&dword_21D0C9000, v37, v38, "Failed to fetch subtasks to recover to another list {error: %s}", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x223D46520](v50, -1, -1);
            v45 = v39;
            v17 = v49;
            MEMORY[0x223D46520](v45, -1, -1);
          }

          else
          {
          }

          v19 = v51;
        }

        v21 = v52;
      }
    }

    ++v20;
    v23 = [v25 objectID];
    TTRListEditor.recover(reminderID:)(v23);
  }

  while (v19 != v20);
LABEL_24:

  sub_21D0D8CF0(0, &qword_280D1B900);
  v46 = sub_21DBFB12C();
  aBlock[4] = sub_21D1C2C7C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_230;
  v47 = _Block_copy(aBlock);
  [v18 saveWithQueue:v46 completion:v47];
  _Block_release(v47);
}

id _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_2to11asSubtaskOf011allowsLossyI0So21REMReminderChangeItemCAI_So07REMListsT0CSo0rn7ContextsT0CSbtFZ_0(void *a1, void *a2, uint64_t a3, char a4)
{
  v70 = sub_21D0D8CF0(0, &qword_280D17770);
  v71 = &protocol witness table for REMReminderChangeItem;
  v69[0] = a1;
  v8 = __swift_project_boxed_opaque_existential_1(v69, v70);
  v9 = a1;
  v10 = a2;
  v11 = [v9 listChangeItem];
  if (v11)
  {
    v12 = v11;
    sub_21D0D8CF0(0, &unk_280D177F0);
    v13 = [v12 objectID];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v10 objectID];
  v15 = v14;
  if (v13)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    v16 = sub_21DBFB63C();

    if (v16)
    {
LABEL_6:

LABEL_7:
      __swift_destroy_boxed_opaque_existential_0(v69);
      v17 = v9;
      goto LABEL_36;
    }
  }

  else
  {
  }

  v18 = &OBJC_IVAR___TTRICustomRecurrenceEditorViewController__cachedFrequency;
  v68 = a3;
  if (sub_21D1C65A4(&selRef_cdEntityNameForSavedReminder))
  {
    v19 = 0;
LABEL_13:

LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v69);
    if (*(v18 + 176) != -1)
    {
      swift_once();
    }

    v20 = sub_21DBF84BC();
    __swift_project_value_buffer(v20, qword_27CE591E0);
    v21 = v9;
    v22 = v10;
    v23 = sub_21DBF84AC();
    v24 = sub_21DBFAECC();

    if (os_log_type_enabled(v23, v24))
    {
      v67 = v10;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v69[0] = v27;
      *v25 = 136315650;
      v28 = "sslessly to the target list";
      v29 = "gular list to template";
      v30 = 0xD000000000000037;
      if (v19 != 2)
      {
        v30 = 0xD000000000000036;
        v29 = "TTRIMenuButtonAttachment.swift";
      }

      v31 = 0xD00000000000003BLL;
      if (v19)
      {
        v28 = "ot linked to an account";
      }

      else
      {
        v31 = 0xD000000000000035;
      }

      if (v19 <= 1)
      {
        v32 = v31;
      }

      else
      {
        v32 = v30;
      }

      if (v19 <= 1)
      {
        v33 = v28;
      }

      else
      {
        v33 = v29;
      }

      v34 = sub_21D0CDFB4(v32, v33 | 0x8000000000000000, v69);

      *(v25 + 4) = v34;
      *(v25 + 12) = 2112;
      v35 = [v21 objectID];
      *(v25 + 14) = v35;
      *v26 = v35;
      *(v25 + 22) = 2112;
      v36 = [v22 objectID];
      *(v25 + 24) = v36;
      v26[1] = v36;
      _os_log_impl(&dword_21D0C9000, v23, v24, "TTRListEditor#prepareToMoveByCopyingIfNeeded: the given REMReminder cannot be moved, fallback to copying {reason: %s, reminderID: %@, listID: %@}", v25, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v25, -1, -1);

      v10 = v67;
      v37 = v68;
      v18 = &OBJC_IVAR___TTRICustomRecurrenceEditorViewController__cachedFrequency;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (sub_21D1C65A4(&selRef_cdEntityName))
  {
    v19 = 3;
    goto LABEL_13;
  }

  v55 = [v9 accountID];
  v56 = [v10 accountID];
  sub_21D0D8CF0(0, &qword_280D17880);
  v57 = sub_21DBFB63C();

  if ((v57 & 1) == 0)
  {
    v65 = sub_21D1C3494(v9, v10);

    v18 = &OBJC_IVAR___TTRICustomRecurrenceEditorViewController__cachedFrequency;
    if (v65 == 2)
    {
      v19 = 2;
      goto LABEL_14;
    }

    if ((v65 & 1) == 0 && (a4 & 1) == 0)
    {
      v19 = 1;
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_0(v69);
LABEL_30:
    v37 = v68;
    goto LABEL_31;
  }

  v58 = [v10 accountCapabilities];
  v59 = [v58 supportsMoveAcrossLists];

  v18 = &OBJC_IVAR___TTRICustomRecurrenceEditorViewController__cachedFrequency;
  if ((v59 & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v69);
    goto LABEL_30;
  }

  v60 = [v10 accountCapabilities];
  v61 = [v60 supportsMoveAcrossSharedLists];

  v37 = a3;
  if (v61)
  {
    goto LABEL_6;
  }

  v62 = [*v8 listChangeItem];
  if (v62 && (v63 = v62, sub_21D0D8CF0(0, &unk_280D177F0), v64 = [v63 isShared], v63, v64))
  {
  }

  else
  {
    v66 = [v10 isShared];

    if ((v66 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v69);
LABEL_31:
  v38 = [v10 saveRequest];
  v39 = [v38 _copyReminderChangeItem_toReminderSubtaskContextChangeItem_];

  v40 = v39;
  [v9 removeFromList];
  if (*(v18 + 176) != -1)
  {
    swift_once();
  }

  v41 = sub_21DBF84BC();
  __swift_project_value_buffer(v41, qword_27CE591E0);
  v42 = v9;
  v17 = v40;
  v43 = sub_21DBF84AC();
  v44 = sub_21DBFAEDC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412546;
    v47 = [v42 objectID];
    *(v45 + 4) = v47;
    *v46 = v47;
    *(v45 + 12) = 2112;
    v48 = [v17 objectID];

    *(v45 + 14) = v48;
    v46[1] = v48;
    _os_log_impl(&dword_21D0C9000, v43, v44, "Copied reminder for moving across lists as a subtask {original: %@, copy: %@}", v45, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v46, -1, -1);
    MEMORY[0x223D46520](v45, -1, -1);
  }

  else
  {
  }

LABEL_36:
  v49 = [v9 listID];
  v50 = [v10 objectID];
  v51 = v50;
  if (v49)
  {
    if (v50)
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v52 = sub_21DBFB63C();

      if (v52)
      {
        return v17;
      }

      goto LABEL_44;
    }

    v51 = v49;
  }

  else if (!v50)
  {
    return v17;
  }

LABEL_44:
  v53 = [v17 assignmentContext];
  [v53 removeAllAssignments];

  return v17;
}

id sub_21D1D07A0(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchListWithObjectID:a1 error:v6];
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

uint64_t _s15RemindersUICore13TTRListEditorC10changeItem11undoContextACSo013REMListChangeF0C_AA07TTRUndoH0_pSgtcfC_0(uint64_t a1, uint64_t a2)
{
  sub_21D1826C4(a2, v12);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v4 = qword_280D1AA18;
  sub_21D0CF7E0(a2, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  v5 = swift_allocObject();
  v10 = type metadata accessor for TTRUserDefaults();
  v11 = &protocol witness table for TTRUserDefaults;
  *&v9 = v4;
  *(v5 + 64) = 0;
  *(v5 + 16) = a1;
  v6 = v12[1];
  *(v5 + 24) = v12[0];
  *(v5 + 40) = v6;
  *(v5 + 56) = v13;
  swift_beginAccess();
  *(v5 + 64) = 0;
  sub_21D0D0FD0(&v9, v5 + 72);
  v7 = v4;
  return v5;
}

unint64_t sub_21D1D0970()
{
  result = qword_27CE59230;
  if (!qword_27CE59230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59230);
  }

  return result;
}

unint64_t sub_21D1D09C8()
{
  result = qword_27CE59238;
  if (!qword_27CE59238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59238);
  }

  return result;
}

uint64_t sub_21D1D0A1C(uint64_t a1, uint64_t a2)
{
  result = sub_21D1D1A34(&qword_27CE59240, a2, type metadata accessor for TTRListEditor);
  *(a1 + 24) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRListEditor.ReminderParentListMutationOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D1D0BC8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21D1D0BDC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRListEditor.ReminderParentListMutationOperation.DisallowReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRListEditor.ReminderParentListMutationOperation.DisallowReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21D1D0D5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59310);
    v3 = sub_21DBFBEBC();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_21DBFA16C();
      sub_21DBFC7DC();
      v27 = v7;
      sub_21DBFA27C();
      v8 = sub_21DBFC82C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_21DBFA16C();
        v18 = v17;
        if (v16 == sub_21DBFA16C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_21DBFC64C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21D1D0F50(uint64_t a1)
{
  v2 = sub_21DBF5A0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592F0);
    v9 = sub_21DBFBEBC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21D1D1A34(&qword_280D17188, 255, MEMORY[0x277CC99D0]);
      v16 = sub_21DBF9FFC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21D1D1A34(&qword_280D17180, 255, MEMORY[0x277CC99D0]);
          v23 = sub_21DBFA10C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21D1D1278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59288);
    v3 = sub_21DBFBEBC();
    v4 = 0;
    v5 = v3 + 56;
    v23 = a1 + 32;
    while (1)
    {
      v6 = (v23 + 24 * v4);
      v7 = *v6;
      v8 = v6[1];
      v9 = *(v6 + 16);
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v7);
      MEMORY[0x223D44FA0](v8);
      MEMORY[0x223D44FA0](v9);
      result = sub_21DBFC82C();
      v11 = ~(-1 << *(v3 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v11);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (1)
        {
          v21 = v16 + 24 * v12;
          v22 = *v21 == v7 && *(v21 + 8) == v8;
          if (v22 && ((v9 ^ *(v21 + 16)) & 1) == 0)
          {
            break;
          }

          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if ((v14 & (1 << v12)) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
LABEL_5:
        *(v5 + 8 * v13) = v14 | v15;
        v17 = v16 + 24 * v12;
        *v17 = v7;
        *(v17 + 8) = v8;
        *(v17 + 16) = v9;
        v18 = *(v3 + 16);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v20;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21D1D1400(void *a1, uint64_t a2, void (*a3)(_OWORD *))
{
  sub_21D0D32E4(a2, v16);
  sub_21D1826C4(v16, v14);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v5 = qword_280D1AA18;
  sub_21D0CF7E0(v16, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  v6 = swift_allocObject();
  v12 = type metadata accessor for TTRUserDefaults();
  v13 = &protocol witness table for TTRUserDefaults;
  *&v11 = v5;
  *(v6 + 64) = 0;
  *(v6 + 16) = a1;
  v7 = v14[1];
  *(v6 + 24) = v14[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = v15;
  swift_beginAccess();
  *(v6 + 64) = 0;
  sub_21D0D0FD0(&v11, v6 + 72);
  *&v14[0] = v6;
  v8 = v5;
  v9 = a1;
  a3(v14);
}

uint64_t sub_21D1D154C(void *a1, uint64_t a2, void (*a3)(void *))
{
  sub_21D0D32E4(a2, v10);
  sub_21D1826C4(v10, v9);
  type metadata accessor for TTRReminderEditor();
  v5 = swift_allocObject();
  *(v5 + 72) = 0;
  *(v5 + 16) = a1;
  sub_21D1826C4(v9, v5 + 24);
  *(v5 + 64) = 0;
  v6 = [a1 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v9, &unk_27CE60D80);
  sub_21D0CF7E0(v10, &unk_27CE60D80);
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  v9[0] = v5;
  a3(v9);
}

uint64_t sub_21D1D1658(void *a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, void (*a5)(void))
{
  sub_21D0D32E4(a2, v12);
  a5(0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v12[1];
  *(v8 + 24) = v12[0];
  *(v8 + 40) = v9;
  *(v8 + 56) = v13;
  *(v8 + 64) = 0;
  *&v12[0] = v8;
  v10 = a1;
  a3(v12);
}

uint64_t sub_21D1D170C(uint64_t a1)
{
  v2 = sub_21DBF56BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59250);
    v9 = sub_21DBFBEBC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_21D1D1A34(&qword_280D1B850, 255, MEMORY[0x277CC95F0]);
      v16 = sub_21DBF9FFC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_21D1D1A34(&qword_280D1B848, 255, MEMORY[0x277CC95F0]);
          v23 = sub_21DBFA10C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21D1D1A34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21D1D1B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592B8);
    v3 = sub_21DBFBEBC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v10);
      result = sub_21DBFC82C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t objectdestroy_108Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  return swift_deallocObject();
}

unint64_t sub_21D1D1E74()
{
  result = qword_27CE59338;
  if (!qword_27CE59338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE59330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59338);
  }

  return result;
}

uint64_t sub_21D1D1ED8()
{
  v1 = v0[2];
  v2 = v0[4];
  v4 = v0[3];
  return TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(v1, &v4, v2);
}

void sub_21D1D1F18(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_105Tm()
{

  return swift_deallocObject();
}

uint64_t Collection.split(intoSizeOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DBFAC8C();
  if (a1)
  {
    v12[7] = 0;
    v12[8] = result;
    v12[9] = a1;
    MEMORY[0x28223BE20](result);
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v3;
    v12[5] = a1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59368);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = sub_21D1D26BC();
    return sub_21D110EC8(sub_21D1D2698, v12, v8, AssociatedTypeWitness, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D1D21EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a6;
  v56 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v52 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = v42 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_21DBFAD9C();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x28223BE20](v14);
  v47 = v42 - v15;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v42 - v21;
  v23 = *a1;
  sub_21DBFAC3C();
  v24 = v22;
  sub_21DBFAC9C();
  v46 = v16;
  v25 = *(v16 + 8);
  v57 = AssociatedTypeWitness;
  v44 = v16 + 8;
  v45 = v25;
  v25(v19, AssociatedTypeWitness);
  v58 = a2;
  v26 = a4;
  result = sub_21DBFAC8C();
  v28 = &v56[v23];
  if (__OFADD__(v23, v56))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v28 >= result)
  {
    v28 = result;
  }

  if (__OFSUB__(v28, v23))
  {
    goto LABEL_8;
  }

  v29 = v24;
  sub_21DBFAC9C();
  result = sub_21DBFA0AC();
  if (result)
  {
    v42[1] = v26;
    v43 = v19;
    v30 = v46;
    AssociatedConformanceWitness = a5;
    v31 = *(v46 + 16);
    v32 = v48;
    v33 = v57;
    v31(v48, v29, v57);
    v34 = TupleTypeMetadata2;
    v31(&v32[*(TupleTypeMetadata2 + 48)], v19, v33);
    v56 = v29;
    v35 = v51;
    v36 = v52;
    (*(v51 + 16))(v52, v32, v34);
    v37 = *(v34 + 48);
    v46 = *(v30 + 32);
    v38 = v47;
    (v46)(v47, v36, v33);
    v39 = &v36[v37];
    v40 = v45;
    v45(v39, v33);
    (*(v35 + 32))(v36, v32, v34);
    v41 = v50;
    (v46)(&v38[*(v50 + 36)], &v36[*(v34 + 48)], v33);
    v40(v36, v33);
    sub_21DBFAD2C();
    (*(v49 + 8))(v38, v41);
    v40(v43, v33);
    return (v40)(v56, v33);
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_21D1D26BC()
{
  result = qword_280D0C158;
  if (!qword_280D0C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE59368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C158);
  }

  return result;
}

uint64_t Collection.element(precedingFirstMatchOf:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v32 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v26 - v7;
  v35 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v27 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v36 = sub_21DBFBA8C();
  v29 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v26 - v19;
  v33 = *(v6 + 56);
  v34 = v6 + 56;
  v33(&v26 - v19, 1, 1, AssociatedTypeWitness, v18);
  (*(v35 + 2))(v11, v37, a3);
  sub_21DBFA40C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v14;
  v37 = v12;
  v30 = AssociatedConformanceWitness;
  sub_21DBFBAFC();
  v26 = v6;
  v22 = *(v6 + 48);
  if (v22(v16, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v27 + 8))(v35, v37);
    (*(v29 + 8))(v20, v36);
    return (v33)(v28, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v23 = *(v26 + 32);
    v24 = (v29 + 8);
    while (1)
    {
      v23(v8, v16, AssociatedTypeWitness);
      if (v31(v8))
      {
        break;
      }

      (*v24)(v20, v36);
      v23(v20, v8, AssociatedTypeWitness);
      (v33)(v20, 0, 1, AssociatedTypeWitness);
      sub_21DBFBAFC();
      if (v22(v16, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    (*(v26 + 8))(v8, AssociatedTypeWitness);
    (*(v27 + 8))(v35, v37);
    return (*(v29 + 32))(v28, v20, v36);
  }
}

uint64_t Collection.element(succeedingFirstMatchOf:firstIfNoneFound:)@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21DBFBA8C();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  sub_21DBFACCC();
  v13 = v6;
  if ((*(v6 + 48))(v5, 1, AssociatedTypeWitness) == 1)
  {
    (*(v25 + 8))(v5, v26);
    if (v27)
    {
      return sub_21DBFACEC();
    }
  }

  else
  {
    (*(v6 + 32))(v12, v5, AssociatedTypeWitness);
    sub_21DBFAD0C();
    sub_21DBFACAC();
    swift_getAssociatedConformanceWitness();
    v15 = sub_21DBFA08C();
    v16 = *(v13 + 8);
    v16(v9, AssociatedTypeWitness);
    if (v15)
    {
      v17 = sub_21DBFAD3C();
      v19 = v18;
      v20 = swift_getAssociatedTypeWitness();
      v21 = *(v20 - 8);
      v22 = v28;
      (*(v21 + 16))(v28, v19, v20);
      v17(v29, 0);
      v16(v12, AssociatedTypeWitness);
      return (*(v21 + 56))(v22, 0, 1, v20);
    }

    v16(v12, AssociatedTypeWitness);
  }

  v23 = swift_getAssociatedTypeWitness();
  return (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
}

uint64_t Collection<>.element(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = *(*(AssociatedTypeWitness - 8) + 56);

    return v10(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v12 = a1 - 1;
    v3 = sub_21DBFAD3C();
    v5 = v4;
    v6 = swift_getAssociatedTypeWitness();
    v7 = *(v6 - 8);
    (*(v7 + 16))(a2, v5, v6);
    v3(v11, 0);
    return (*(v7 + 56))(a2, 0, 1, v6);
  }
}

uint64_t Collection<>.element(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21DBFAC8C();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if (result - 1 <= a1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = *(*(AssociatedTypeWitness - 8) + 56);

    return v11(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v13 = a1 + 1;
    v5 = sub_21DBFAD3C();
    v7 = v6;
    v8 = swift_getAssociatedTypeWitness();
    v9 = *(v8 - 8);
    (*(v9 + 16))(a2, v7, v8);
    v5(v12, 0);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  return result;
}

uint64_t TTRRemindersListEditingSessionState.SaveState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D1D338C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListEditingSessionState.isForNewReminder.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1D338C(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 5) >= 4)
    {
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        goto LABEL_10;
      }

LABEL_7:
      swift_storeEnumTagMultiPayload();
      return 0;
    }

LABEL_6:
    sub_21D1067F8(v3, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

LABEL_10:
  sub_21D1D4238(v3, v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v9 = swift_getEnumCaseMultiPayload();
  if ((v9 - 1) < 2)
  {
    sub_21D1067F8(v6, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return 1;
  }

  if (!v9)
  {
    sub_21D1067F8(v6, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  }

  return 0;
}

uint64_t TTRRemindersListEditingSessionState.saveState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t TTRRemindersListEditingSessionState.saveState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t TTRRemindersListEditingSessionState.isMarkedForDeletion.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTRRemindersListEditingSessionState.isMarkedForDeletion.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRemindersListEditingSessionState.deletesIfTitleIsInvalid.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTRRemindersListEditingSessionState.deletesIfTitleIsInvalid.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRemindersListEditingSessionState.doNotSave.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_doNotSave;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTRRemindersListEditingSessionState.doNotSave.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_doNotSave;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRemindersListEditingSessionState.firstEditObservation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListEditingSessionState.registeredUndoForAddingReminder.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TTRRemindersListEditingSessionState.registeredUndoForAddingReminder.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *TTRRemindersListEditingSessionState.pendingMoveTargetList.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRRemindersListEditingSessionState.pendingMoveTargetList.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListEditingSessionState.sharedProperties.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  swift_beginAccess();
  *a1 = *(v1 + v3);
  return sub_21DBF8E0C();
}

uint64_t TTRRemindersListEditingSessionState.sharedProperties.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t TTRRemindersListEditingSessionState.acquirerNames.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TTRRemindersListEditingSessionState.undoContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext;
  swift_beginAccess();
  return sub_21D1D3F20(v1 + v3, a1);
}

uint64_t sub_21D1D3F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListEditingSessionState.undoContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext;
  swift_beginAccess();
  sub_21D1D3FF0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_21D1D3FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTRRemindersListEditingSessionState.__allocating_init(item:reminderChangeItem:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)(a1, a2);
  return v4;
}

uint64_t TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_doNotSave) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_firstEditObservation) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_sharedProperties) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext;
  v6 = type metadata accessor for TTRRemindersListUndoContext();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  sub_21D1D4238(a1, v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) = a2;
  return v2;
}

uint64_t sub_21D1D4238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRRemindersListEditingSessionState.reminderSaveOptions.getter@<X0>(_BOOL8 *a1@<X8>)
{
  result = TTRRemindersListEditingSessionState.isForNewReminder.getter();
  v5 = 0;
  if (result)
  {
    v4 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
    result = swift_beginAccess();
    if (*(v1 + v4))
    {
      v5 = 1;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t TTRRemindersListEditingSessionState.deinit()
{
  sub_21D1067F8(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, type metadata accessor for TTRRemindersListViewModel.Item);

  sub_21D1D4958(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext);
  return v0;
}

uint64_t TTRRemindersListEditingSessionState.__deallocating_deinit()
{
  sub_21D1067F8(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, type metadata accessor for TTRRemindersListViewModel.Item);

  sub_21D1D4958(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext);

  return swift_deallocClassInstance();
}

uint64_t TTRRemindersListEditingSessionState.debugDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC0B380;
  sub_21DBFBEEC();

  v42 = 0xD000000000000011;
  v43 = 0x800000021DC45D10;
  v3 = TTRRemindersListEditingSessionState.isForNewReminder.getter();
  v4 = (v3 & 1) == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x223D42AA0](v5, v6);

  *(v2 + 32) = v42;
  *(v2 + 40) = v43;
  v41 = 0xE000000000000000;
  MEMORY[0x223D42AA0](0x7461745365766173, 0xEA00000000003D65);
  swift_beginAccess();
  sub_21DBFC14C();
  *(v2 + 48) = 0;
  *(v2 + 56) = v41;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_21DBFBEEC();

  v38 = 0xD000000000000014;
  v39 = 0x800000021DC45D30;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
  swift_beginAccess();
  if (*(v1 + v7))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + v7))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v8, v9);

  *(v2 + 64) = v38;
  *(v2 + 72) = v39;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_21DBFBEEC();

  v36 = 0xD000000000000018;
  v37 = 0x800000021DC45D50;
  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v1 + v10))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v11, v12);

  *(v2 + 80) = v36;
  *(v2 + 88) = v37;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v33, "acquirerNames=");
  HIBYTE(v33[1]) = -18;
  swift_beginAccess();
  v13 = sub_21DBF8E0C();
  v14 = MEMORY[0x223D42DB0](v13, MEMORY[0x277D837D0]);
  v16 = v15;

  MEMORY[0x223D42AA0](v14, v16);

  v17 = v33[1];
  *(v2 + 96) = v33[0];
  *(v2 + 104) = v17;
  sub_21DBFBEEC();

  v33[0] = 0xD000000000000013;
  v33[1] = 0x800000021DC45D70;
  v18 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem) objectID];
  v19 = [v18 description];
  v20 = sub_21DBFA16C();
  v22 = v21;

  MEMORY[0x223D42AA0](v20, v22);

  *(v2 + 112) = 0xD000000000000013;
  *(v2 + 120) = 0x800000021DC45D70;
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  v34 = 0xD000000000000016;
  v35 = 0x800000021DC45D90;
  v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
  swift_beginAccess();
  v24 = *(v1 + v23);
  if (v24)
  {
    v25 = [v24 objectID];
    v26 = [v25 description];

    v27 = sub_21DBFA16C();
    v29 = v28;
  }

  else
  {
    v29 = 0xE300000000000000;
    v27 = 7104878;
  }

  MEMORY[0x223D42AA0](v27, v29);

  v30 = v35;
  *(v2 + 128) = v34;
  *(v2 + 136) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v31 = sub_21DBFA07C();

  return v31;
}

uint64_t sub_21D1D4958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D1D49C4()
{
  result = qword_27CE59378;
  if (!qword_27CE59378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59378);
  }

  return result;
}

uint64_t type metadata accessor for TTRRemindersListEditingSessionState()
{
  result = qword_280D10518;
  if (!qword_280D10518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D1D4A6C()
{
  type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v0 <= 0x3F)
  {
    sub_21D1D4BA4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D1D4BA4()
{
  if (!qword_280D13488[0])
  {
    type metadata accessor for TTRRemindersListUndoContext();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, qword_280D13488);
    }
  }
}

id static TTRStoryboardInstantiating<>.storyboard.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21DBFA12C();

  v5 = [objc_opt_self() storyboardWithName:v4 bundle:v3];

  return v5;
}

id sub_21D1D4D2C()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id static TTRDebugMenuUtilities.isDebugMenuEnabled.getter()
{
  result = [objc_opt_self() isInternalInstall];
  if (result)
  {
    v1 = [objc_opt_self() daemonUserDefaults];
    v2 = [v1 enableInAppDebugMenu];

    return v2;
  }

  return result;
}

char *sub_21D1D4E7C(uint64_t a1, uint64_t (*a2)(void), SEL *a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v37 = a4;
  v38 = a5;
  v36 = a3;
  v35 = a2(0);
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = &v31 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  v11 = a1 + 32;
  v12 = MEMORY[0x277D84F90];
  do
  {
    sub_21D0D32E4(v11, v39);
    v13 = v40;
    v14 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v15 = (*(v14 + 8))(v13, v14);
    v16 = __swift_destroy_boxed_opaque_existential_0(v39);
    if (v15)
    {
      MEMORY[0x223D42D80](v16);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v12 = v42;
    }

    v11 += 40;
    --v9;
  }

  while (v9);
  if (v12 >> 62)
  {
    goto LABEL_24;
  }

  v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_25:

    v20 = MEMORY[0x277D84F90];
LABEL_26:
    v39[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D1ADAA8();
    v30 = sub_21DBFA07C();

    return v30;
  }

  while (1)
  {
    v39[0] = v10;
    result = sub_21D18E678(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      break;
    }

    v19 = 0;
    v20 = v39[0];
    v33 = v17;
    v34 = v12 & 0xC000000000000001;
    v32 = v12 & 0xFFFFFFFFFFFFFF8;
    ++v6;
    while (1)
    {
      if (v34)
      {
        v21 = MEMORY[0x223D44740](v19, v12);
        goto LABEL_17;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v19 >= *(v32 + 16))
      {
        goto LABEL_23;
      }

      v21 = *(v12 + 8 * v19 + 32);
LABEL_17:
      v22 = v21;
      v23 = [v21 *v36];
      v37();

      v24 = v38();
      v26 = v25;
      (*v6)(v8, v35);

      v39[0] = v20;
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      v10 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_21D18E678((v27 > 1), v28 + 1, 1);
        v20 = v39[0];
      }

      ++v19;
      *(v20 + 16) = v10;
      v29 = v20 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      if (v33 == v19)
      {

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v17 = sub_21DBFBD7C();
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NUIContainerGridView.setArrangedSubviewRowsIfChanged(_:)(Swift::OpaquePointer a1)
{
  v3 = [v1 arrangedSubviewRows];
  if (!v3 || (v4 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100), v5 = sub_21DBFA5EC(), v4, LOBYTE(v4) = sub_21D1D7AB4(v5, a1._rawValue), , (v4 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    v6 = sub_21DBFA5DC();
    [v1 setArrangedSubviewRows_];
  }
}

Swift::Int_optional __swiftcall NUIContainerGridView.ttr_rowIndex(forArrangedSubview:)(UIView *forArrangedSubview)
{
  v1 = sub_21D1D52EC(forArrangedSubview, &selRef_rowIndexForArrangedSubview_);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::Int_optional __swiftcall NUIContainerGridView.ttr_columnIndex(forArrangedSubview:)(UIView *forArrangedSubview)
{
  v1 = sub_21D1D52EC(forArrangedSubview, &selRef_columnIndexForArrangedSubview_);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

id sub_21D1D52EC(uint64_t a1, SEL *a2)
{
  v3 = [v2 *a2];
  if (v3 == sub_21DBF4B4C())
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

id sub_21D1D5354(uint64_t a1, SEL *a2, SEL *a3)
{
  v5 = [v3 *a2];
  if (v5 == sub_21DBF4B4C())
  {
    return 0;
  }

  else
  {
    return [v3 *a3];
  }
}

id NUIContainerGridView.row(beforeFirstRowContaining:)(uint64_t a1)
{
  v2 = [v1 rowIndexForArrangedSubview_];
  v3 = sub_21DBF4B4C();
  if (v2 < 1 || v2 == v3)
  {
    return 0;
  }

  else
  {
    return [v1 rowAtIndex_];
  }
}

uint64_t sub_21D1D5448(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 4)
      {
        v8 = 0x4F676E6974746567;
      }

      else
      {
        v8 = 0x6D6F74737563;
      }

      v9 = 0xEF726143664F7475;
      if (v6 != 4)
      {
        v9 = 0xE600000000000000;
      }

      if (v6 == 3)
      {
        v8 = 0x49676E6974746567;
        v9 = 0xEC0000007261436ELL;
      }

      v10 = 1802661751;
      if (v6 == 1)
      {
        v10 = 1701670760;
      }

      v11 = 0xE400000000000000;
      if (!*v3)
      {
        v10 = 0x746E6572727563;
        v11 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 2u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v4 > 2u)
      {
        if (v7 == 3)
        {
          v14 = 0xEC0000007261436ELL;
          if (v12 != 0x49676E6974746567)
          {
            goto LABEL_5;
          }
        }

        else if (v7 == 4)
        {
          v14 = 0xEF726143664F7475;
          if (v12 != 0x4F676E6974746567)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE600000000000000;
          if (v12 != 0x6D6F74737563)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4)
      {
        v14 = 0xE400000000000000;
        if (v7 == 1)
        {
          if (v12 != 1701670760)
          {
            goto LABEL_5;
          }
        }

        else if (v12 != 1802661751)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        if (v12 != 0x746E6572727563)
        {
          goto LABEL_5;
        }
      }

      if (v13 != v14)
      {
LABEL_5:
        v5 = sub_21DBFC64C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21D1D567C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1D56D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_21D1D9BE4(v3, v8);
        sub_21D1D9BE4(v4, v7);
        v5 = v9(v7);
        sub_21D1D9C40(v7);
        sub_21D1D9C40(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 192;
        v4 += 192;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21D1D57A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21DBFC64C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21D1D5834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_21D1221E8(v13, v10, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D1221E8(v14, v6, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      v16 = *v10 == *v6 && v10[1] == v6[1];
      if (!v16 || (sub_21DBF79BC() & 1) == 0)
      {
        break;
      }

      v17 = _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(v10 + *(v4 + 20), v6 + *(v4 + 20));
      sub_21D1222E8(v6, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      sub_21D1222E8(v10, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_21D1222E8(v6, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    sub_21D1222E8(v10, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

void sub_21D1D5A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    while (1)
    {
      v6 = *(v3 - 3);
      v5 = *(v3 - 2);
      v7 = *v3;
      v9 = *(v4 - 3);
      v8 = *(v4 - 2);
      v10 = *(v4 - 1);
      v19 = v9;
      v20 = *(v3 - 1);
      v17 = *v4;
      v18 = v6;
      if (v6)
      {
        if (!v9)
        {
          return;
        }

        sub_21D0D8CF0(0, &qword_280D17688);
        v11 = v9;
        v12 = v6;
        v13 = v11;
        v14 = v12;
        sub_21DBF8E0C();
        v15 = v10;
        sub_21DBF8E0C();
        v16 = sub_21DBFB63C();

        if ((v16 & 1) == 0)
        {

          goto LABEL_18;
        }
      }

      else
      {
        if (v9)
        {
          return;
        }

        sub_21DBF8E0C();
        v15 = v10;
        sub_21DBF8E0C();
      }

      if ((v5 != v8 || v20 != v15) && (sub_21DBFC64C() & 1) == 0)
      {
        break;
      }

      if (v7 == v17)
      {
        v3 += 32;
        v4 += 32;
        if (--v2)
        {
          continue;
        }
      }

      return;
    }

    v13 = v18;
LABEL_18:
  }
}

void sub_21D1D5C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16) && v10 && a1 != a2)
  {
    v11 = 0;
    v12 = a1 + 32;
    v13 = a2 + 32;
    v26 = a1 + 32;
    v27 = v10;
    v25 = a2 + 32;
    while (v11 != v10)
    {
      v14 = (v12 + 16 * v11);
      v15 = (v13 + 16 * v11);
      if (*v14 != *v15)
      {
        return;
      }

      if ((v14[1] ^ v15[1]))
      {
        return;
      }

      if ((v14[2] ^ v15[2]))
      {
        return;
      }

      v16 = *(v14 + 1);
      v17 = *(v15 + 1);
      v18 = *(v16 + 16);
      if (v18 != *(v17 + 16))
      {
        return;
      }

      if (v18 && v16 != v17)
      {
        v19 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v30 = v16 + v19;
        v28 = v11;
        v29 = v17 + v19;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v20 = 0;
        while (v20 < *(v16 + 16))
        {
          v21 = *(v31 + 72) * v20;
          sub_21D1221E8(v30 + v21, v9, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
          if (v20 >= *(v17 + 16))
          {
            goto LABEL_25;
          }

          sub_21D1221E8(v29 + v21, v6, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
          if ((sub_21D489530(v9, v6) & 1) == 0)
          {
            sub_21D1222E8(v6, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
            sub_21D1222E8(v9, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
LABEL_22:

            return;
          }

          v22 = v9[*(v4 + 20)];
          sub_21D1222E8(v9, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
          v23 = v6[*(v4 + 20)];
          sub_21D1222E8(v6, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
          if (v22 != v23)
          {
            goto LABEL_22;
          }

          if (v18 == ++v20)
          {

            v10 = v27;
            v11 = v28;
            v13 = v25;
            v12 = v26;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

LABEL_5:
      if (++v11 == v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D1D5F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_21D1221E8(v13, v10, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      sub_21D1221E8(v14, v6, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      if ((sub_21D489530(v10, v6) & 1) == 0)
      {
        break;
      }

      v16 = v10[*(v4 + 20)];
      sub_21D1222E8(v10, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      v17 = v6[*(v4 + 20)];
      sub_21D1222E8(v6, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      if (((v16 ^ v17) & 1) == 0)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      v18 = v16 ^ v17 ^ 1;
      return v18 & 1;
    }

    sub_21D1222E8(v6, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    sub_21D1222E8(v10, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_21D1D6138(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (result + 48);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v8 = *v3;
    v3 += 3;
    v7 = v8;
    result = *(v4 - 2) == v5 && *(v4 - 1) == v6 && *v4 == v7;
    v11 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D1D6200(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF648C();
  v93 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v92 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v9 = *(a1 + 16);
  if (v9 != *(a2 + 16))
  {
    return 0;
  }

  if (!v9 || a1 == a2)
  {
    return 1;
  }

  v10 = 0;
  v77 = a1 + 32;
  v76 = a2 + 32;
  v89 = (v93 + 8);
  v90 = v93 + 16;
  v75 = v9;
  while (1)
  {
    v11 = v77 + 48 * v10;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v18 = v76 + 48 * v10;
    v20 = *v18;
    v19 = *(v18 + 8);
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    v23 = *(v18 + 32);
    v24 = *(v18 + 40);
    v95[0] = v13;
    v95[1] = v12;
    v84 = v14;
    v85 = v21;
    v95[2] = v14;
    v95[3] = v15;
    v96 = v16;
    v87 = v22;
    v88 = v20;
    v97 = v20;
    v98 = v19;
    v86 = v19;
    v99 = v22;
    v100 = v21;
    v101 = v23;
    v83 = v15;
    v94 = v17;
    v81 = v16;
    v82 = v23;
    if (v16)
    {
      if (v16 == 1)
      {
        if (v23 != 1)
        {
          sub_21D1B201C(v88, v86, v87, v85, v23);
          v65 = v13;
          v66 = v12;
          v67 = v84;
          v68 = v15;
          v69 = 1;
          goto LABEL_50;
        }

        if (v13 == v88 && v12 == v86)
        {
          v25 = v85;
          sub_21D1B201C(v13, v12, v87, v85, 1u);
          v26 = v84;
          sub_21D1B201C(v13, v12, v84, v15, 1u);
          sub_21D1B201C(v13, v12, v26, v15, 1u);
          sub_21DBF8E0C();
          v27 = v13;
          v28 = v12;
          v29 = v87;
          v30 = v25;
          v31 = 1;
LABEL_23:
          sub_21D1B201C(v27, v28, v29, v30, v31);
          sub_21DBF8E0C();
          result = sub_21D0CF7E0(v95, &qword_27CE593B0);
          v37 = v94;
          goto LABEL_29;
        }

        v38 = v88;
        v39 = v86;
        LODWORD(v91) = sub_21DBFC64C();
        sub_21D1B201C(v38, v39, v87, v85, 1u);
        v40 = v84;
        sub_21D1B201C(v13, v12, v84, v83, 1u);
        sub_21D1B201C(v13, v12, v40, v83, 1u);
        v37 = v94;
        sub_21DBF8E0C();
        v41 = v38;
        v15 = v83;
        sub_21D1B201C(v41, v39, v87, v85, 1u);
        sub_21DBF8E0C();
        result = sub_21D0CF7E0(v95, &qword_27CE593B0);
        if ((v91 & 1) == 0)
        {
          sub_21D1B2084(v88, v86, v87, v85, 1u);

          v70 = v13;
          v71 = v12;
          v72 = v84;
          v73 = v15;
          v74 = 1;
          goto LABEL_44;
        }
      }

      else
      {
        if (v23 != 2)
        {
          sub_21D1B201C(v88, v86, v87, v85, v23);
          v65 = v13;
          v66 = v12;
          v67 = v84;
          v68 = v15;
          v69 = 2;
          goto LABEL_50;
        }

        if (v13 == v88 && v12 == v86)
        {
          v34 = v85;
          sub_21D1B201C(v13, v12, v87, v85, 2u);
          v35 = v84;
          sub_21D1B201C(v13, v12, v84, v15, 2u);
          sub_21D1B201C(v13, v12, v35, v15, 2u);
          sub_21DBF8E0C();
          v27 = v13;
          v28 = v12;
          v29 = v87;
          v30 = v34;
          v31 = 2;
          goto LABEL_23;
        }

        v42 = v88;
        v43 = v86;
        LODWORD(v91) = sub_21DBFC64C();
        sub_21D1B201C(v42, v43, v87, v85, 2u);
        v44 = v84;
        sub_21D1B201C(v13, v12, v84, v83, 2u);
        sub_21D1B201C(v13, v12, v44, v83, 2u);
        v37 = v94;
        sub_21DBF8E0C();
        v45 = v42;
        v15 = v83;
        sub_21D1B201C(v45, v43, v87, v85, 2u);
        sub_21DBF8E0C();
        result = sub_21D0CF7E0(v95, &qword_27CE593B0);
        if ((v91 & 1) == 0)
        {
          sub_21D1B2084(v88, v86, v87, v85, 2u);

          v70 = v13;
          v71 = v12;
          v72 = v84;
          v73 = v15;
          v74 = 2;
          goto LABEL_44;
        }
      }
    }

    else
    {
      if (v23)
      {
        v61 = v87;
        v60 = v88;
        v63 = v85;
        v62 = v86;
        v64 = v82;
        goto LABEL_49;
      }

      if ((v13 != v88 || v12 != v86) && (sub_21DBFC64C() & 1) == 0)
      {
        v61 = v87;
        v60 = v88;
        v63 = v85;
        v62 = v86;
        v64 = 0;
LABEL_49:
        sub_21D1B201C(v60, v62, v61, v63, v64);
        v65 = v13;
        v66 = v12;
        v67 = v84;
        v68 = v15;
        v69 = 0;
LABEL_50:
        sub_21D1B201C(v65, v66, v67, v68, v69);
        sub_21D0CF7E0(v95, &qword_27CE593B0);
        return 0;
      }

      if (v84 == v87 && v15 == v85)
      {
        v32 = v86;
        v33 = v84;
        sub_21D1B201C(v88, v86, v84, v15, 0);
        sub_21D1B201C(v13, v12, v33, v15, 0);
        sub_21D1B201C(v13, v12, v33, v15, 0);
        sub_21DBF8E0C();
        v27 = v88;
        v28 = v32;
        v29 = v33;
        v30 = v15;
        v31 = 0;
        goto LABEL_23;
      }

      v46 = v84;
      v47 = v87;
      LODWORD(v91) = sub_21DBFC64C();
      v48 = v47;
      v49 = v85;
      sub_21D1B201C(v88, v86, v48, v85, 0);
      sub_21D1B201C(v13, v12, v46, v15, 0);
      sub_21D1B201C(v13, v12, v46, v15, 0);
      v37 = v94;
      sub_21DBF8E0C();
      sub_21D1B201C(v88, v86, v87, v49, 0);
      sub_21DBF8E0C();
      result = sub_21D0CF7E0(v95, &qword_27CE593B0);
      if ((v91 & 1) == 0)
      {
        sub_21D1B2084(v88, v86, v87, v85, 0);

        v70 = v13;
        v71 = v12;
        v72 = v84;
        v73 = v15;
        v74 = 0;
LABEL_44:
        sub_21D1B2084(v70, v71, v72, v73, v74);
LABEL_40:

        return 0;
      }
    }

LABEL_29:
    v78 = v10;
    v50 = *(v37 + 16);
    if (v50 != *(v24 + 16))
    {
      sub_21D1B2084(v88, v86, v87, v85, v82);

      v70 = v13;
      v71 = v12;
      v72 = v84;
      v73 = v15;
      v74 = v81;
      goto LABEL_44;
    }

    v79 = v13;
    v80 = v12;
    if (v50)
    {
      if (v94 != v24)
      {
        break;
      }
    }

LABEL_5:
    v10 = v78 + 1;
    sub_21D1B2084(v88, v86, v87, v85, v82);

    sub_21D1B2084(v79, v80, v84, v83, v81);

    if (v10 == v75)
    {
      return 1;
    }
  }

  v51 = 0;
  v52 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v91 = v94 + v52;
  v53 = v24 + v52;
  while (v51 < *(v94 + 16))
  {
    v54 = *(v93 + 72) * v51;
    v55 = *(v93 + 16);
    result = v55(v8, v91 + v54, v4);
    if (v51 >= *(v24 + 16))
    {
      goto LABEL_53;
    }

    v56 = v24;
    v57 = v92;
    v55(v92, v53 + v54, v4);
    sub_21D1D9970();
    v58 = sub_21DBFA10C();
    v59 = *v89;
    (*v89)(v57, v4);
    result = v59(v8, v4);
    if ((v58 & 1) == 0)
    {
      sub_21D1B2084(v88, v86, v87, v85, v82);

      sub_21D1B2084(v79, v80, v84, v83, v81);
      goto LABEL_40;
    }

    ++v51;
    v24 = v56;
    if (v50 == v51)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}