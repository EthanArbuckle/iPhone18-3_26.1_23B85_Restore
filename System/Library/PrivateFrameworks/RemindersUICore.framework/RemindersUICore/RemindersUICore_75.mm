void destroy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {

    v4 = *(a1 + 16);
    v5 = *(a1 + 25);
    v6 = *(a1 + 24);

    sub_21D228468(v4, v6, v5);
  }

  else if (!EnumCaseMultiPayload)
  {

    v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0);
    if (swift_getEnumCaseMultiPayload() <= 1)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_21D1078C0(*(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120));
        sub_21D0FB9F4(*(v3 + 128), *(v3 + 136), *(v3 + 144));
      }

      else
      {
        v7 = sub_21DBF56BC();
        (*(*(v7 - 8) + 8))(v3, v7);
        type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      }
    }
  }
}

void *initializeWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v26 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v26;
    v27 = *(a2 + 2);
    v28 = a2[25];
    v29 = a2[24];
    sub_21DBF8E0C();
    v30 = v26;
    sub_21D749C9C(v27, v29, v28);
    a1[2] = v27;
    *(a1 + 24) = v29;
    *(a1 + 25) = v28;
    goto LABEL_18;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    sub_21DBF8E0C();
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8) + 48);
    v8 = a1 + v7;
    v9 = &a2[v7];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 1)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = *v9;
        v34 = *(v9 + 1);
        *v8 = *v9;
        *(v8 + 1) = v34;
        *(v8 + 2) = *(v9 + 2);
        *(v8 + 24) = *(v9 + 24);
        v35 = *(v9 + 6);
        *(v8 + 5) = *(v9 + 5);
        *(v8 + 6) = v35;
        v36 = *(v9 + 8);
        *(v8 + 7) = *(v9 + 7);
        *(v8 + 8) = v36;
        v37 = *(v9 + 9);
        v38 = *(v9 + 11);
        v64 = *(v9 + 12);
        v62 = *(v9 + 13);
        v58 = *(v9 + 10);
        v60 = *(v9 + 14);
        v66 = v9[120];
        v39 = v33;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v37, v58, v38, v64, v62, v60, v66);
        *(v8 + 9) = v37;
        *(v8 + 10) = v58;
        *(v8 + 11) = v38;
        *(v8 + 12) = v64;
        *(v8 + 13) = v62;
        *(v8 + 14) = v60;
        v8[120] = v66;
        v40 = *(v9 + 16);
        v41 = *(v9 + 17);
        LOBYTE(v35) = v9[144];
        sub_21D0FB9BC(v40, v41, v35);
        *(v8 + 16) = v40;
        *(v8 + 17) = v41;
        v8[144] = v35;
        *(v8 + 145) = *(v9 + 145);
        *(v8 + 152) = *(v9 + 152);
        v42 = *(v9 + 22);
        *(v8 + 21) = *(v9 + 21);
        *(v8 + 22) = v42;
        v43 = *(v9 + 24);
        *(v8 + 23) = *(v9 + 23);
        *(v8 + 24) = v43;
        v44 = *(v9 + 26);
        *(v8 + 25) = *(v9 + 25);
        *(v8 + 26) = v44;
        *(v8 + 108) = *(v9 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v45 = v43;
        goto LABEL_17;
      }

LABEL_16:
      v46 = sub_21DBF56BC();
      (*(*(v46 - 8) + 16))(v8, v9, v46);
      v47 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      v8[v47[5]] = v9[v47[5]];
      *&v8[v47[6]] = *&v9[v47[6]];
      v48 = v47[7];
      v49 = &v8[v48];
      v50 = &v9[v48];
      v52 = *v50;
      v51 = *(v50 + 1);
      *v49 = v52;
      *(v49 + 1) = v51;
      *&v8[v47[8]] = *&v9[v47[8]];
      v8[v47[9]] = v9[v47[9]];
      v53 = v47[10];
      v54 = &v8[v53];
      v55 = &v9[v53];
      v56 = *(v55 + 1);
      *v54 = *v55;
      *(v54 + 1) = v56;
      sub_21DBF8E0C();
      goto LABEL_17;
    }

    if (!v11)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = *v9;
        v13 = *(v9 + 1);
        *v8 = *v9;
        *(v8 + 1) = v13;
        *(v8 + 2) = *(v9 + 2);
        *(v8 + 24) = *(v9 + 24);
        v14 = *(v9 + 6);
        *(v8 + 5) = *(v9 + 5);
        *(v8 + 6) = v14;
        v15 = *(v9 + 8);
        *(v8 + 7) = *(v9 + 7);
        *(v8 + 8) = v15;
        v16 = *(v9 + 10);
        v17 = *(v9 + 11);
        v61 = *(v9 + 13);
        v63 = *(v9 + 12);
        v57 = *(v9 + 9);
        v59 = *(v9 + 14);
        v65 = v9[120];
        v18 = v12;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v57, v16, v17, v63, v61, v59, v65);
        *(v8 + 9) = v57;
        *(v8 + 10) = v16;
        *(v8 + 11) = v17;
        *(v8 + 12) = v63;
        *(v8 + 13) = v61;
        *(v8 + 14) = v59;
        v8[120] = v65;
        v19 = *(v9 + 16);
        v20 = *(v9 + 17);
        v21 = v9[144];
        sub_21D0FB9BC(v19, v20, v21);
        *(v8 + 16) = v19;
        *(v8 + 17) = v20;
        v8[144] = v21;
        *(v8 + 145) = *(v9 + 145);
        *(v8 + 152) = *(v9 + 152);
        v22 = *(v9 + 22);
        *(v8 + 21) = *(v9 + 21);
        *(v8 + 22) = v22;
        v23 = *(v9 + 24);
        *(v8 + 23) = *(v9 + 23);
        *(v8 + 24) = v23;
        v24 = *(v9 + 26);
        *(v8 + 25) = *(v9 + 25);
        *(v8 + 26) = v24;
        *(v8 + 108) = *(v9 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v25 = v23;
LABEL_17:
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v31 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v31);
}

unsigned __int8 *assignWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101390(a1, type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v21 = *(a2 + 1);
    *(a1 + 1) = v21;
    v22 = *(a2 + 2);
    v23 = a2[25];
    v24 = a2[24];
    sub_21DBF8E0C();
    v25 = v21;
    sub_21D749C9C(v22, v24, v23);
    *(a1 + 2) = v22;
    a1[24] = v24;
    a1[25] = v23;
    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    sub_21DBF8E0C();
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8) + 48);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 1)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v9;
        *v8 = *v9;
        *(v8 + 1) = *(v9 + 1);
        *(v8 + 2) = *(v9 + 2);
        *(v8 + 3) = *(v9 + 3);
        *(v8 + 4) = *(v9 + 4);
        *(v8 + 5) = *(v9 + 5);
        *(v8 + 6) = *(v9 + 6);
        *(v8 + 7) = *(v9 + 7);
        *(v8 + 8) = *(v9 + 8);
        v29 = *(v9 + 9);
        v30 = *(v9 + 11);
        v52 = *(v9 + 12);
        v50 = *(v9 + 13);
        v46 = *(v9 + 10);
        v48 = *(v9 + 14);
        v54 = v9[120];
        v31 = v28;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v29, v46, v30, v52, v50, v48, v54);
        *(v8 + 9) = v29;
        *(v8 + 10) = v46;
        *(v8 + 11) = v30;
        *(v8 + 12) = v52;
        *(v8 + 13) = v50;
        *(v8 + 14) = v48;
        v8[120] = v54;
        v32 = *(v9 + 16);
        v33 = *(v9 + 17);
        v34 = v9[144];
        sub_21D0FB9BC(v32, v33, v34);
        *(v8 + 16) = v32;
        *(v8 + 17) = v33;
        v8[144] = v34;
        v8[145] = v9[145];
        v8[146] = v9[146];
        v8[147] = v9[147];
        v8[148] = v9[148];
        *(v8 + 19) = *(v9 + 19);
        *(v8 + 20) = *(v9 + 20);
        *(v8 + 21) = *(v9 + 21);
        *(v8 + 22) = *(v9 + 22);
        *(v8 + 23) = *(v9 + 23);
        v35 = *(v9 + 24);
        *(v8 + 24) = v35;
        *(v8 + 25) = *(v9 + 25);
        *(v8 + 26) = *(v9 + 26);
        v8[216] = v9[216];
        v8[217] = v9[217];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v36 = v35;
        goto LABEL_18;
      }

LABEL_17:
      v37 = sub_21DBF56BC();
      (*(*(v37 - 8) + 16))(v8, v9, v37);
      v38 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      v8[v38[5]] = v9[v38[5]];
      *&v8[v38[6]] = *&v9[v38[6]];
      v39 = v38[7];
      v40 = &v8[v39];
      v41 = &v9[v39];
      *v40 = *v41;
      *(v40 + 1) = *(v41 + 1);
      *&v8[v38[8]] = *&v9[v38[8]];
      v8[v38[9]] = v9[v38[9]];
      v42 = v38[10];
      v43 = &v8[v42];
      v44 = &v9[v42];
      *v43 = *v44;
      *(v43 + 1) = *(v44 + 1);
      sub_21DBF8E0C();
      goto LABEL_18;
    }

    if (!v11)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = *v9;
        *v8 = *v9;
        *(v8 + 1) = *(v9 + 1);
        *(v8 + 2) = *(v9 + 2);
        *(v8 + 3) = *(v9 + 3);
        *(v8 + 4) = *(v9 + 4);
        *(v8 + 5) = *(v9 + 5);
        *(v8 + 6) = *(v9 + 6);
        *(v8 + 7) = *(v9 + 7);
        *(v8 + 8) = *(v9 + 8);
        v13 = *(v9 + 10);
        v14 = *(v9 + 11);
        v49 = *(v9 + 13);
        v51 = *(v9 + 12);
        v45 = *(v9 + 9);
        v47 = *(v9 + 14);
        v53 = v9[120];
        v15 = v12;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v45, v13, v14, v51, v49, v47, v53);
        *(v8 + 9) = v45;
        *(v8 + 10) = v13;
        *(v8 + 11) = v14;
        *(v8 + 12) = v51;
        *(v8 + 13) = v49;
        *(v8 + 14) = v47;
        v8[120] = v53;
        v16 = *(v9 + 16);
        v17 = *(v9 + 17);
        v18 = v9[144];
        sub_21D0FB9BC(v16, v17, v18);
        *(v8 + 16) = v16;
        *(v8 + 17) = v17;
        v8[144] = v18;
        v8[145] = v9[145];
        v8[146] = v9[146];
        v8[147] = v9[147];
        v8[148] = v9[148];
        *(v8 + 19) = *(v9 + 19);
        *(v8 + 20) = *(v9 + 20);
        *(v8 + 21) = *(v9 + 21);
        *(v8 + 22) = *(v9 + 22);
        *(v8 + 23) = *(v9 + 23);
        v19 = *(v9 + 24);
        *(v8 + 24) = v19;
        *(v8 + 25) = *(v9 + 25);
        *(v8 + 26) = *(v9 + 26);
        v8[216] = v9[216];
        v8[217] = v9[217];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v20 = v19;
LABEL_18:
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v26 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v26);
}

void *initializeWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(void *a1, void *a2, uint64_t a3)
{
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8) + 48);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_10:
        memcpy(v9, v10, *(*(v13 - 8) + 64));
LABEL_13:
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v9, v10, *(*(v11 - 8) + 64));
LABEL_14:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_10;
      }
    }

    v14 = sub_21DBF56BC();
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    v15 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    v9[v15[5]] = v10[v15[5]];
    *&v9[v15[6]] = *&v10[v15[6]];
    *&v9[v15[7]] = *&v10[v15[7]];
    *&v9[v15[8]] = *&v10[v15[8]];
    v9[v15[9]] = v10[v15[9]];
    *&v9[v15[10]] = *&v10[v15[10]];
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *assignWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101390(a1, type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8) + 48);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_11:
        memcpy(v9, v10, *(*(v13 - 8) + 64));
LABEL_14:
        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v9, v10, *(*(v11 - 8) + 64));
LABEL_15:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_11;
      }
    }

    v14 = sub_21DBF56BC();
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    v15 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    v9[v15[5]] = v10[v15[5]];
    *&v9[v15[6]] = *&v10[v15[6]];
    *&v9[v15[7]] = *&v10[v15[7]];
    *&v9[v15[8]] = *&v10[v15[8]];
    v9[v15[9]] = v10[v15[9]];
    *&v9[v15[10]] = *&v10[v15[10]];
    swift_storeEnumTagMultiPayload();
    goto LABEL_14;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void sub_21D7F311C()
{
  sub_21D0DA63C(319, &qword_27CE61D20, type metadata accessor for TTRAccountsListsViewModel.PinnedList, type metadata accessor for TTRRelativeInsertionPosition);
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v2 = &v1;
    v3 = &unk_21DC29E10;
    v4 = &unk_21DC29E10;
    swift_initEnumMetadataMultiPayload();
  }
}

char *initializeBufferWithCopyOfBuffer for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      *a1 = *a2;
      a1[8] = v7;
      v8 = v6;
    }

    else
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = *a2;
        v11 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v11;
        *(a1 + 2) = a2[2];
        *(a1 + 24) = *(a2 + 3);
        v12 = a2[6];
        *(a1 + 5) = a2[5];
        *(a1 + 6) = v12;
        v13 = a2[8];
        *(a1 + 7) = a2[7];
        *(a1 + 8) = v13;
        v14 = a2[9];
        v15 = a2[10];
        v17 = a2[11];
        v16 = a2[12];
        v38 = a2[14];
        v39 = a2[13];
        v37 = *(a2 + 120);
        v18 = v10;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v14, v15, v17, v16, v39, v38, v37);
        *(a1 + 9) = v14;
        *(a1 + 10) = v15;
        *(a1 + 11) = v17;
        *(a1 + 12) = v16;
        *(a1 + 13) = v39;
        *(a1 + 14) = v38;
        a1[120] = v37;
        v19 = a2[16];
        v20 = a2[17];
        LOBYTE(v12) = *(a2 + 144);
        sub_21D0FB9BC(v19, v20, v12);
        *(a1 + 16) = v19;
        *(a1 + 17) = v20;
        a1[144] = v12;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 152) = *(a2 + 19);
        v21 = a2[22];
        *(a1 + 21) = a2[21];
        *(a1 + 22) = v21;
        v22 = a2[24];
        *(a1 + 23) = a2[23];
        *(a1 + 24) = v22;
        v23 = a2[26];
        *(a1 + 25) = a2[25];
        *(a1 + 26) = v23;
        *(a1 + 108) = *(a2 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v24 = v22;
      }

      else
      {
        v25 = sub_21DBF56BC();
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v26[5]] = *(a2 + v26[5]);
        *&a1[v26[6]] = *(a2 + v26[6]);
        v27 = v26[7];
        v28 = &a1[v27];
        v29 = (a2 + v27);
        v31 = *v29;
        v30 = v29[1];
        *v28 = v31;
        *(v28 + 1) = v30;
        *&a1[v26[8]] = *(a2 + v26[8]);
        a1[v26[9]] = *(a2 + v26[9]);
        v32 = v26[10];
        v33 = &a1[v32];
        v34 = (a2 + v32);
        v35 = v34[1];
        *v33 = *v34;
        *(v33 + 1) = v35;
        sub_21DBF8E0C();
      }

      sub_21DBF8E0C();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
      sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));
    }

    else
    {
      v3 = sub_21DBF56BC();
      (*(*(v3 - 8) + 8))(a1, v3);
      type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    }
  }
}

uint64_t initializeWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    v6 = v4;
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v8;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      v9 = *(a2 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v9;
      v10 = *(a2 + 64);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = v10;
      v11 = *(a2 + 72);
      v12 = *(a2 + 80);
      v14 = *(a2 + 88);
      v13 = *(a2 + 96);
      v15 = *(a2 + 104);
      v37 = *(a2 + 112);
      v36 = *(a2 + 120);
      v16 = v7;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D0FB960(v11, v12, v14, v13, v15, v37, v36);
      *(a1 + 72) = v11;
      *(a1 + 80) = v12;
      *(a1 + 88) = v14;
      *(a1 + 96) = v13;
      *(a1 + 104) = v15;
      *(a1 + 112) = v37;
      *(a1 + 120) = v36;
      v17 = *(a2 + 128);
      v18 = *(a2 + 136);
      v19 = *(a2 + 144);
      sub_21D0FB9BC(v17, v18, v19);
      *(a1 + 128) = v17;
      *(a1 + 136) = v18;
      *(a1 + 144) = v19;
      *(a1 + 145) = *(a2 + 145);
      *(a1 + 152) = *(a2 + 152);
      v20 = *(a2 + 176);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = v20;
      v21 = *(a2 + 192);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = v21;
      v22 = *(a2 + 208);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = v22;
      *(a1 + 216) = *(a2 + 216);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v23 = v21;
    }

    else
    {
      v24 = sub_21DBF56BC();
      (*(*(v24 - 8) + 16))(a1, a2, v24);
      v25 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      *(a1 + v25[5]) = *(a2 + v25[5]);
      *(a1 + v25[6]) = *(a2 + v25[6]);
      v26 = v25[7];
      v27 = (a1 + v26);
      v28 = (a2 + v26);
      v30 = *v28;
      v29 = v28[1];
      *v27 = v30;
      v27[1] = v29;
      *(a1 + v25[8]) = *(a2 + v25[8]);
      *(a1 + v25[9]) = *(a2 + v25[9]);
      v31 = v25[10];
      v32 = (a1 + v31);
      v33 = (a2 + v31);
      v34 = v33[1];
      *v32 = *v33;
      v32[1] = v34;
      sub_21DBF8E0C();
    }

    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D101390(a1, type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = v4;
    }

    else
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v7 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        v8 = *(a2 + 72);
        v9 = *(a2 + 80);
        v11 = *(a2 + 88);
        v10 = *(a2 + 96);
        v28 = *(a2 + 112);
        v29 = *(a2 + 104);
        v27 = *(a2 + 120);
        v12 = v7;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v8, v9, v11, v10, v29, v28, v27);
        *(a1 + 72) = v8;
        *(a1 + 80) = v9;
        *(a1 + 88) = v11;
        *(a1 + 96) = v10;
        *(a1 + 104) = v29;
        *(a1 + 112) = v28;
        *(a1 + 120) = v27;
        v13 = *(a2 + 128);
        v14 = *(a2 + 136);
        v15 = *(a2 + 144);
        sub_21D0FB9BC(v13, v14, v15);
        *(a1 + 128) = v13;
        *(a1 + 136) = v14;
        *(a1 + 144) = v15;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 146) = *(a2 + 146);
        *(a1 + 147) = *(a2 + 147);
        *(a1 + 148) = *(a2 + 148);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 184) = *(a2 + 184);
        v16 = *(a2 + 192);
        *(a1 + 192) = v16;
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v17 = v16;
      }

      else
      {
        v18 = sub_21DBF56BC();
        (*(*(v18 - 8) + 16))(a1, a2, v18);
        v19 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        *(a1 + v19[5]) = *(a2 + v19[5]);
        *(a1 + v19[6]) = *(a2 + v19[6]);
        v20 = v19[7];
        v21 = (a1 + v20);
        v22 = (a2 + v20);
        *v21 = *v22;
        v21[1] = v22[1];
        *(a1 + v19[8]) = *(a2 + v19[8]);
        *(a1 + v19[9]) = *(a2 + v19[9]);
        v23 = v19[10];
        v24 = (a1 + v23);
        v25 = (a2 + v23);
        *v24 = *v25;
        v24[1] = v25[1];
        sub_21DBF8E0C();
      }

      sub_21DBF8E0C();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v10[5]] = a2[v10[5]];
      *&a1[v10[6]] = *&a2[v10[6]];
      *&a1[v10[7]] = *&a2[v10[7]];
      *&a1[v10[8]] = *&a2[v10[8]];
      a1[v10[9]] = a2[v10[9]];
      *&a1[v10[10]] = *&a2[v10[10]];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101390(a1, type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v10[5]] = a2[v10[5]];
      *&a1[v10[6]] = *&a2[v10[6]];
      *&a1[v10[7]] = *&a2[v10[7]];
      *&a1[v10[8]] = *&a2[v10[8]];
      a1[v10[9]] = a2[v10[9]];
      *&a1[v10[10]] = *&a2[v10[10]];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_21D7F3EA8()
{
  result = type metadata accessor for TTRAccountsListsViewModel.PinnedList(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionRequest.CreationTarget(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D157850(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D157478(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionRequest.CreationTarget(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D157478(v4, v5);
  return a1;
}

double sub_21D7F4008(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 202) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_33Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_21D7F4090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7F411C()
{
  sub_21D0D0E88(*(v0 + 16));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 120);
  __swift_destroy_boxed_opaque_existential_0(v0 + 160);

  return swift_deallocClassInstance();
}

void *sub_21D7F41A8(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

uint64_t destroy for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1)
{
  v2 = sub_21DBF563C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_21D7F42DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_21D7F4360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_21D7F43E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_21D7F446C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t type metadata accessor for TTRIReminderDetailDueDateModificationInput()
{
  result = qword_27CE61D58;
  if (!qword_27CE61D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D7F4564()
{
  result = sub_21DBF563C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRReminderListCompletionBehavior.AlertContents.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderListCompletionBehavior.AlertContents.message.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRReminderListCompletionBehavior::AlertContents __swiftcall TTRReminderListCompletionBehavior.AlertContents.init(title:message:)(Swift::String title, Swift::String message)
{
  *v2 = title;
  v2[1] = message;
  result.message = message;
  result.title = title;
  return result;
}

uint64_t TTRSetReminderCompletedPresenterCapability.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRSetReminderCompletedPresenterCapability.init(interactor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRSetReminderCompletedPresenterCapability.presenterUserConfirmation(forSettingCompletedTo:reminders:completionBehavior:with:)(char a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 176) = a5;
  *(v6 + 184) = v5;
  *(v6 + 160) = a2;
  *(v6 + 168) = a4;
  *(v6 + 59) = a1;
  v7 = a3[1];
  *(v6 + 192) = *a3;
  *(v6 + 208) = v7;
  return MEMORY[0x2822009F8](sub_21D7F46E4, 0, 0);
}

uint64_t sub_21D7F46E4()
{
  if (!*(v0 + 168))
  {
    v3 = objc_opt_self();
    v4 = sub_21DBFA12C();
    [v3 internalErrorWithDebugDescription_];

    swift_willThrow();
    v5 = *(v0 + 8);
    v6 = 0;
LABEL_38:

    return v5(v6);
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v6 = 0;
LABEL_37:
      v5 = *(v0 + 8);
      goto LABEL_38;
    }

    if (v1 != 1)
    {
LABEL_15:
      v27 = *(v0 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D68);
      v28 = swift_allocObject();
      *(v0 + 224) = v28;
      *(v28 + 16) = xmmword_21DC08D00;
      v29 = qword_280D1BAA8;
      swift_unknownObjectRetain();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v29 != -1)
      {
LABEL_46:
        swift_once();
        v27 = *(v0 + 216);
        v1 = *(v0 + 200);
      }

      v30 = *(v0 + 208);
      v31 = *(v0 + 192);
      *(v28 + 32) = sub_21DBF516C();
      *(v28 + 40) = v32;
      *(v28 + 48) = 1;
      swift_getObjectType();
      *(v0 + 112) = v31;
      *(v0 + 120) = v1;
      *(v0 + 128) = v30;
      *(v0 + 136) = v27;
      *(v0 + 144) = v28;
      *(v0 + 152) = 2;
      v57 = (*(v2 + 8) + **(v2 + 8));
      v33 = swift_task_alloc();
      *(v0 + 232) = v33;
      *v33 = v0;
      v33[1] = sub_21D7F5134;

      return v57();
    }

LABEL_36:
    v6 = 1;
    goto LABEL_37;
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      v7 = *(v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF40);
      v8 = swift_allocObject();
      *(v0 + 288) = v8;
      *(v8 + 16) = xmmword_21DC08D20;
      v9 = qword_280D1BAA8;
      swift_unknownObjectRetain();
      if (v9 != -1)
      {
        swift_once();
      }

      *(v8 + 32) = sub_21DBF516C();
      *(v8 + 40) = v10;
      *(v8 + 48) = 1;
      *(v8 + 56) = sub_21DBF516C();
      *(v8 + 64) = v11;
      *(v8 + 72) = 256;
      v12 = sub_21DBF516C();
      v14 = v13;
      *(v0 + 296) = v13;
      v15 = sub_21DBF516C();
      v17 = v16;
      *(v0 + 304) = v16;
      ObjectType = swift_getObjectType();
      *(v0 + 16) = v12;
      *(v0 + 24) = v14;
      *(v0 + 32) = v15;
      *(v0 + 40) = v17;
      *(v0 + 48) = v8;
      *(v0 + 56) = 3;
      v56 = (*(v7 + 8) + **(v7 + 8));
      v19 = swift_task_alloc();
      *(v0 + 312) = v19;
      *v19 = v0;
      v19[1] = sub_21D7F546C;
      v20 = MEMORY[0x277D839B0];
      v21 = v0 + 57;
      v22 = v0 + 16;
      v23 = ObjectType;
      v24 = v7;
      v25 = v56;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (*(v0 + 59) != 1)
  {
    goto LABEL_36;
  }

  v34 = *(v0 + 160);
  v55 = *(v0 + 176);
  if (v34 >> 62)
  {
    v35 = sub_21DBFBD7C();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = *(v0 + 184);
  swift_unknownObjectRetain();
  if (!v35)
  {
LABEL_35:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v28 = 0;
  v58 = v34 & 0xC000000000000001;
  v36 = v34 & 0xFFFFFFFFFFFFFF8;
  v37 = *(v0 + 160) + 32;
  v38 = v35;
  while (1)
  {
    if (v58)
    {
      v39 = MEMORY[0x223D44740](v28, *(v0 + 160));
    }

    else
    {
      if (v28 >= *(v36 + 16))
      {
        goto LABEL_45;
      }

      v39 = *(v37 + 8 * v28);
    }

    v40 = v39;
    v41 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v42 = *(v2 + 24);
    v43 = swift_getObjectType();
    if ((*(v42 + 8))(v40, v43, v42))
    {
      break;
    }

LABEL_26:
    ++v28;
    if (v41 == v38)
    {
      goto LABEL_35;
    }
  }

  v44 = [v40 isRecurrent];

  if (v44)
  {
    goto LABEL_26;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v45 = sub_21DBF516C();
  v47 = v46;
  *(v0 + 248) = v46;
  v59 = sub_21DBF516C();
  v49 = v48;
  *(v0 + 256) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF40);
  v50 = swift_allocObject();
  *(v0 + 264) = v50;
  *(v50 + 16) = xmmword_21DC08D20;
  *(v50 + 32) = sub_21DBF516C();
  *(v50 + 40) = v51;
  *(v50 + 48) = 256;
  *(v50 + 56) = sub_21DBF516C();
  *(v50 + 64) = v52;
  *(v50 + 72) = 1;
  v53 = swift_getObjectType();
  *(v0 + 64) = v45;
  *(v0 + 72) = v47;
  *(v0 + 80) = v59;
  *(v0 + 88) = v49;
  *(v0 + 96) = v50;
  *(v0 + 104) = 3;
  v60 = (*(v55 + 8) + **(v55 + 8));
  v54 = swift_task_alloc();
  *(v0 + 272) = v54;
  *v54 = v0;
  v54[1] = sub_21D7F52CC;
  v20 = MEMORY[0x277D839B0];
  v21 = v0 + 58;
  v22 = v0 + 64;
  v23 = v53;
  v24 = v55;
  v25 = v60;
LABEL_12:

  return v25(v21, v22, v20, v23, v24);
}

uint64_t sub_21D7F5134()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_21D7F5658;
  }

  else
  {

    v2 = sub_21D7F5264;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D7F5264()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21D7F52CC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_21D7F56E8;
  }

  else
  {

    v2 = sub_21D7F5404;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D7F5404()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 58);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D7F546C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_21D7F5778;
  }

  else
  {

    v2 = sub_21D7F559C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D7F559C()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 160);
    v2 = *(*(v0 + 184) + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v1, ObjectType, v2);
  }

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_21D7F5658()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21D7F56E8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21D7F5778()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t TTRSetReminderCompletedPresenterCapability.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t destroy for TTRReminderListCompletionBehavior(uint64_t a1)
{
  result = *(a1 + 8);
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  if (result && v2 - 1 < 0)
  {
  }

  return result;
}

void *initializeWithCopy for TTRReminderListCompletionBehavior(void *result, void *a2)
{
  v2 = a2[1];
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = a2[1];
  }

  if (v3 - 1 < 0 && v2)
  {
    *result = *a2;
    result[1] = v2;
    v5 = a2[3];
    result[2] = a2[2];
    result[3] = v5;
    v6 = result;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    return v6;
  }

  else
  {
    v4 = *(a2 + 1);
    *result = *a2;
    *(result + 1) = v4;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderListCompletionBehavior(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  LODWORD(v3) = -1;
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = *(result + 8);
  }

  v5 = v4 - 1;
  v6 = *(a2 + 8);
  if (v6 < 0xFFFFFFFF)
  {
    v3 = *(a2 + 8);
  }

  v7 = v3 - 1;
  if (v5 < 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      if (v2)
      {
        v9 = result;
        v10 = a2;

        a2 = v10;
        result = v9;
      }

      goto LABEL_13;
    }

    if (v2)
    {
      if (v6)
      {
        *result = *a2;
        *(result + 8) = *(a2 + 8);
        v12 = result;
        v13 = a2;
        sub_21DBF8E0C();

        *(v12 + 16) = *(v13 + 16);
        v8 = v12;
        *(v12 + 24) = *(v13 + 24);
        sub_21DBF8E0C();
      }

      else
      {
        v8 = result;
        v14 = a2;
        sub_21D7F5A5C(result);
        v15 = v14[1];
        *v8 = *v14;
        v8[1] = v15;
      }

      return v8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
LABEL_13:
    v11 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v11;
    return result;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v8 = result;
  *(result + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return v8;
}

uint64_t sub_21D7F5A5C(uint64_t a1)
{

  return a1;
}

uint64_t assignWithTake for TTRReminderListCompletionBehavior(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = *(result + 8);
  }

  if (v3 - 1 >= 0)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 8);
  LODWORD(v6) = -1;
  if (v5 < 0xFFFFFFFF)
  {
    v6 = *(a2 + 8);
  }

  if (v6 - 1 >= 0)
  {
    if (v2)
    {
      v7 = result;
      v8 = a2;

      a2 = v8;
      result = v7;
    }

    goto LABEL_4;
  }

  if (!v2)
  {
LABEL_4:
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    return result;
  }

  if (v5)
  {
    *result = *a2;
    *(result + 8) = v5;
    v9 = result;
    v10 = a2;

    v11 = *(v10 + 24);
    *(v9 + 16) = *(v10 + 16);
    *(v9 + 24) = v11;
  }

  else
  {
    v9 = result;
    v12 = a2;
    sub_21D7F5A5C(result);
    v13 = v12[1];
    *v9 = *v12;
    *(v9 + 16) = v13;
  }

  return v9;
}

uint64_t getEnumTagSinglePayload for TTRReminderListCompletionBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderListCompletionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_21D7F5C1C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_21D7F5CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_21D18E820(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E68);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21D18E820((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21D7F5E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21D18E9A0(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E80);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21D18E9A0((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21D7F5F48(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x223D44740]();
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E60);
          swift_dynamicCast();
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = a1 + 32;
        do
        {
          v6 += 8;

          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E60);
          swift_dynamicCast();
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          --v2;
        }

        while (v2);
      }

      return v7;
    }
  }

  return result;
}

uint64_t sub_21D7F613C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x223D44740]();
          sub_21D0D8CF0(0, &qword_27CE5A908);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DF70);
          swift_dynamicCast();
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_21D0D8CF0(0, &qword_27CE5A908);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DF70);
          swift_dynamicCast();
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t sub_21D7F6350(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C48);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21D18F0AC(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_21D7F92CC(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21D18F0AC(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_21D7F933C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_21D7F6588(unint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t), uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v21 = MEMORY[0x277D84F90];
  result = a2(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v21;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x223D44740](v9, a1);
        v12 = *(v21 + 16);
        v11 = *(v21 + 24);
        if (v12 >= v11 >> 1)
        {
          v14 = v10;
          a2(v11 > 1, v12 + 1, 1);
          v10 = v14;
        }

        ++v9;
        *(v21 + 16) = v12 + 1;
        v13 = v21 + 16 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = a3;
      }

      while (v6 != v9);
    }

    else
    {
      v15 = (a1 + 32);
      v16 = *(v21 + 16);
      v17 = 16 * v16;
      do
      {
        v18 = *v15;
        v19 = *(v21 + 24);

        if (v16 >= v19 >> 1)
        {
          a2(v19 > 1, v16 + 1, 1);
        }

        *(v21 + 16) = v16 + 1;
        v20 = v21 + v17;
        *(v20 + 32) = v18;
        *(v20 + 40) = a3;
        v17 += 16;
        ++v15;
        ++v16;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_21D7F674C(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_21DBFBD7C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_21D18F3D8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x223D44740](i, a1);
        sub_21D0D8CF0(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_21D18F3D8((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_21D0CF2E8(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_21D0D8CF0(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21D18F3D8((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_21D0CF2E8(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_21D7F6938(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_21D18F3D8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x223D44740](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF40);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_21D18F3D8((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_21D0CF2E8(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF40);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_21D18F3D8((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_21D0CF2E8(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_21D7F6B68(unint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_21D18F670(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        v11 = MEMORY[0x223D44740](v10, a1);
        v22 = v8;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21D18F670((v12 > 1), v13 + 1, 1);
          v8 = v22;
        }

        ++v10;
        v20 = sub_21D0D8CF0(0, a2);
        v21 = a4;
        *&v19 = v11;
        *(v8 + 16) = v13 + 1;
        sub_21D0D0FD0(&v19, v8 + 40 * v13 + 32);
      }

      while (v7 != v10);
    }

    else
    {
      v14 = (a1 + 32);
      do
      {
        v15 = *v14;
        v22 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        v18 = v15;
        if (v17 >= v16 >> 1)
        {
          sub_21D18F670((v16 > 1), v17 + 1, 1);
          v8 = v22;
        }

        v20 = sub_21D0D8CF0(0, a2);
        v21 = a4;
        *&v19 = v18;
        *(v8 + 16) = v17 + 1;
        sub_21D0D0FD0(&v19, v8 + 40 * v17 + 32);
        ++v14;
        --v7;
      }

      while (v7);
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D7F6D2C(uint64_t a1)
{
  v2 = sub_21DBF8B7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21D18F79C(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21D18F79C((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D74CF8];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
      v9(boxed_opaque_existential_0, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_21D0D0FD0(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t TTRReminderCopyPasteItem.reminders(in:)(void *a1)
{
  v3 = sub_21DBFC1BC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21D7F8B78();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC1C120;
  *(inited + 32) = sub_21D0D8CF0(0, &qword_27CE61D88);
  *(inited + 40) = sub_21D0D8CF0(0, &qword_280D17880);
  *(inited + 48) = sub_21D0D8CF0(0, &qword_27CE5A398);
  *(inited + 56) = sub_21D0D8CF0(0, &unk_27CE61D90);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_27CE5A390);
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  sub_21D0D8CF0(0, &qword_27CE61DA0);
  sub_21D7F5E1C(inited);

  sub_21DBFB08C();

  if (v1)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE61DB0);
  sub_21DBF5F6C();
  v7 = sub_21DBF777C();
  swift_allocObject();
  v8 = a1;
  v9 = sub_21DBF775C();
  sub_21DBFC1AC();
  v14[3] = v7;
  v14[0] = v9;

  v10 = sub_21DBF51FC();
  sub_21D17C854(v14, v5);
  v10(v13, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DC0);
  sub_21D7F8D64(&qword_27CE61DD0, sub_21D7F8BF0);
  sub_21DBF51EC();
  sub_21D1A8418(v15);

  return v14[0];
}

uint64_t sub_21D7F7228()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61D70);
  v1 = __swift_project_value_buffer(v0, qword_27CE61D70);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D7F72F0()
{
  sub_21DBFBEEC();
  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v1 = qword_280D19F88;
  v0 = *algn_280D19F90;
  sub_21DBF8E0C();

  result = MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC6C010);
  qword_280D152D8 = v1;
  unk_280D152E0 = v0;
  return result;
}

uint64_t static TTRReminderCopyPasteItem.pasteboardTypeString.getter()
{
  if (qword_280D152D0 != -1)
  {
    swift_once();
  }

  v0 = qword_280D152D8;
  sub_21DBF8E0C();
  return v0;
}

uint64_t TTRReminderCopyPasteItem.Reminder.init(reminder:children:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21D7F7434()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_21D7F7468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000;
  if (v6 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DBFC64C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21D7F7544(uint64_t a1)
{
  v2 = sub_21D7F8C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21D7F7580(uint64_t a1)
{
  v2 = sub_21D7F8C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRReminderCopyPasteItem.Reminder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D7F8C44();
  v9 = v8;
  sub_21DBFC88C();
  v13 = v9;
  v12 = 0;
  sub_21DBF635C();
  sub_21D7F8C98(&qword_27CE61DF0);
  sub_21DBFC56C();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DF8);
    sub_21D7F8CDC(&qword_27CE61E00, &qword_27CE61DF0);
    sub_21DBFC56C();
  }

  return (*(v5 + 8))(v7, v4);
}

void TTRReminderCopyPasteItem.Reminder.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D7F8C44();
  sub_21DBFC87C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_21DBF635C();
    v13 = 0;
    sub_21D7F8C98(&qword_27CE61E10);
    sub_21DBFC4EC();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DF8);
    v13 = 1;
    sub_21D7F8CDC(&qword_27CE61E18, &qword_27CE61E10);
    sub_21DBFC4EC();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
    v11 = v9;
    sub_21DBF8E0C();
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

id TTRReminderCopyPasteItem.init(_:)(uint64_t a1)
{
  v2 = v1;
  v79[4] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v5 = sub_21DBFC1BC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {

    *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_metadata] = xmmword_21DC2A0A0;
    *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_storages] = xmmword_21DC2A0A0;
    v27 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_titles];
    *v27 = 0;
    *(v27 + 1) = 0;
    v76.receiver = v2;
    v76.super_class = ObjectType;
    return objc_msgSendSuper2(&v76, sel_init);
  }

  v75 = ObjectType;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  sub_21DBF8E0C();
  v74 = v10;
  v11 = [v10 store];
  sub_21DBF525C();
  swift_allocObject();
  v12 = sub_21DBF524C();
  v13 = v11;
  sub_21D17942C(MEMORY[0x277D84F90]);
  v14 = sub_21DBF777C();
  swift_allocObject();
  v73 = v13;
  v15 = sub_21DBF775C();
  sub_21DBFC1AC();
  v79[3] = v14;
  v79[0] = v15;

  v16 = sub_21DBF523C();
  sub_21D17C854(v79, v7);
  v16(v78, 0);
  v79[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DC0);
  sub_21D7F8D64(&qword_27CE61E20, sub_21D7F8DDC);
  v72 = v12;
  v17 = sub_21DBF522C();
  v71 = v15;
  v69 = v17;
  v32 = v31;
  v33 = objc_opt_self();
  sub_21DBF776C();
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D183A0C();
  v34 = sub_21DBF9E5C();

  v79[0] = 0;
  v35 = [v33 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:v79];

  v36 = v79[0];
  if (v35)
  {
    v68 = v9;
    v37 = sub_21DBF551C();
    v39 = v38;

    v40 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_metadata];
    v41 = v69;
    *v40 = v69;
    *(v40 + 1) = v32;
    v42 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_storages];
    *v42 = v37;
    v42[1] = v39;
    v67 = v32;
    sub_21D1BAF70(v41, v32);
    v66 = v37;
    v65 = v39;
    sub_21D1BAF70(v37, v39);
    v43 = 0;
    v44 = a1 + 40;
    v63 = v8 - 1;
    v70 = MEMORY[0x277D84F90];
    v64 = a1 + 40;
LABEL_11:
    v45 = v44 + 16 * v43;
    v46 = v43;
    while (v46 < *(a1 + 16))
    {
      v43 = v46 + 1;
      v47 = *(v45 - 8);
      sub_21DBF8E0C();
      v48 = [v47 titleAsString];
      if (v48)
      {
        v39 = v48;
        v62 = sub_21DBFA16C();
        v61 = v49;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_21D210A84(0, *(v70 + 2) + 1, 1, v70);
        }

        v51 = *(v70 + 2);
        v50 = *(v70 + 3);
        if (v51 >= v50 >> 1)
        {
          v70 = sub_21D210A84((v50 > 1), v51 + 1, 1, v70);
        }

        v52 = v70;
        *(v70 + 2) = v51 + 1;
        v53 = &v52[16 * v51];
        v54 = v61;
        *(v53 + 4) = v62;
        *(v53 + 5) = v54;
        v44 = v64;
        if (v63 == v46)
        {
LABEL_21:

          v79[0] = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
          sub_21D1ADAA8();
          v55 = sub_21DBFA07C();
          v57 = v56;
          sub_21D17B8A8(v66, v65);
          sub_21D17B8A8(v69, v67);

          v58 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_titles];
          *v58 = v55;
          v58[1] = v57;
          v30 = v75;
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      v45 += 16;
      ++v46;
      if (v8 == v43)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v60 = v36;

    v39 = sub_21DBF52DC();

    swift_willThrow();
    sub_21D17B8A8(v69, v32);
    if (qword_27CE56CE8 == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_27CE61D70);
  v19 = v39;
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAEBC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v79[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v24 = sub_21DBFC74C();
    v26 = sub_21D0CDFB4(v24, v25, v79);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, v20, v21, "error creating copy paste item %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223D46520](v23, -1, -1);
    MEMORY[0x223D46520](v22, -1, -1);
  }

  else
  {
  }

  *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_metadata] = xmmword_21DC2A0A0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_storages] = xmmword_21DC2A0A0;
  v29 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_titles];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = v75;
LABEL_22:
  v77.receiver = v2;
  v77.super_class = v30;
  v28 = objc_msgSendSuper2(&v77, sel_init);

  return v28;
}

id TTRReminderCopyPasteItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRReminderCopyPasteItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TTRReminderCopyPasteItem.encode(with:)(NSCoder with)
{
  v2 = sub_21DBF54FC();
  v3 = sub_21DBFA12C();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_21DBF54FC();
  v5 = sub_21DBFA12C();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id TTRReminderCopyPasteItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRReminderCopyPasteItem.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_21D0D8CF0(0, &qword_27CE61E40);
  v3 = sub_21DBFB5DC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBF551C();
    v7 = v6;

    v8 = sub_21DBFB5DC();
    if (v8)
    {
      v9 = v8;
      v10 = sub_21DBF551C();
      v12 = v11;

      v13 = objc_allocWithZone(ObjectType);
      v14 = &v13[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_metadata];
      *v14 = v5;
      v14[1] = v7;
      v15 = &v13[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_storages];
      *v15 = v10;
      v15[1] = v12;
      v16 = &v13[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_titles];
      *v16 = 0;
      *(v16 + 1) = 0;
      sub_21D1BAF70(v5, v7);
      sub_21D1BAF70(v10, v12);
      v19.receiver = v13;
      v19.super_class = ObjectType;
      v17 = objc_msgSendSuper2(&v19, sel_init);

      sub_21D17B8A8(v10, v12);
      sub_21D17B8A8(v5, v7);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v17;
    }

    sub_21D17B8A8(v5, v7);
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t TTRReminderCopyPasteItem.loadData(withTypeIdentifier:forItemProviderCompletionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, void *))
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v14];
  v6 = v14[0];
  if (v5)
  {
    v7 = sub_21DBF551C();
    v9 = v8;

    sub_21D1BAF70(v7, v9);
    a3(v7, v9, 0);
    sub_21D17B8A8(v7, v9);
    sub_21D17B8A8(v7, v9);
  }

  else
  {
    v10 = v6;
    v11 = sub_21DBF52DC();

    swift_willThrow();
    v12 = v11;
    a3(0, 0xF000000000000000, v11);
  }

  return 0;
}

id sub_21D7F890C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  if (qword_280D152D0 != -1)
  {
    swift_once();
  }

  v1 = unk_280D152E0;
  *(v0 + 32) = qword_280D152D8;
  *(v0 + 40) = v1;
  sub_21DBF8E0C();
  v2 = sub_21DBFA5DC();

  return v2;
}

uint64_t sub_21D7F89D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  if (qword_280D152D0 != -1)
  {
    swift_once();
  }

  v1 = unk_280D152E0;
  *(v0 + 32) = qword_280D152D8;
  *(v0 + 40) = v1;
  sub_21DBF8E0C();
  return v0;
}

uint64_t sub_21D7F8B78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E78);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27CE61E88;
  }

  else
  {
    v2 = &unk_27CE5E450;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

unint64_t sub_21D7F8BF0()
{
  result = qword_27CE61DD8;
  if (!qword_27CE61DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61DD8);
  }

  return result;
}

unint64_t sub_21D7F8C44()
{
  result = qword_27CE61DE8;
  if (!qword_27CE61DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61DE8);
  }

  return result;
}

uint64_t sub_21D7F8C98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DBF635C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D7F8CDC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE61DF8);
    sub_21D7F8C98(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D7F8D64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE61DC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D7F8DDC()
{
  result = qword_27CE61E28;
  if (!qword_27CE61E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61E28);
  }

  return result;
}

uint64_t sub_21D7F8E30(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v14];
  v4 = v14[0];
  if (v3)
  {
    v5 = sub_21DBF551C();
    v7 = v6;

    sub_21D1BAF70(v5, v7);
    v8 = sub_21DBF54FC();
    (*(a2 + 16))(a2, v8, 0);

    sub_21D17B8A8(v5, v7);
    sub_21D17B8A8(v5, v7);
  }

  else
  {
    v9 = v4;
    v10 = sub_21DBF52DC();

    swift_willThrow();
    v11 = v10;
    v12 = sub_21DBF52CC();
    (*(a2 + 16))(a2, 0, v12);
  }

  return 0;
}

void *sub_21D7F8F98()
{
  sub_21D0D8CF0(0, &qword_27CE61DA0);
  result = sub_21DBFB07C();
  if (!v1)
  {
    if (result)
    {
      v3 = v0;
    }

    else
    {
      v3 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v5[0] = result;
    v5[3] = v3;
    v4 = result;
    sub_21DBF5F6C();

    sub_21D1A8418(v5);
    return v5[4];
  }

  return result;
}

uint64_t destroy for TTRReminderCopyPasteItem.Reminder(id *a1)
{
}

uint64_t assignWithCopy for TTRReminderCopyPasteItem.Reminder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  return a1;
}

id *assignWithTake for TTRReminderCopyPasteItem.Reminder(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_21D7F91C8()
{
  result = qword_27CE61E48;
  if (!qword_27CE61E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61E48);
  }

  return result;
}

unint64_t sub_21D7F9220()
{
  result = qword_27CE61E50;
  if (!qword_27CE61E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61E50);
  }

  return result;
}

unint64_t sub_21D7F9278()
{
  result = qword_27CE61E58;
  if (!qword_27CE61E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61E58);
  }

  return result;
}

uint64_t sub_21D7F92CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7F933C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRTipCategorizeYourGroceries.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipCategorizeYourGroceries.message.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipCategorizeYourGroceries.actions.getter()
{
  v0 = sub_21DBF8EEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v12 = sub_21DBF516C();
  v13 = v4;
  sub_21D7F98A0(v10[1], v11);
  v5 = swift_allocObject();
  sub_21D7F98DC(v11, v5 + 16);
  sub_21D176F0C();
  sub_21DBF8ECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E90);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC08D00;
  (*(v1 + 32))(v7 + v6, v3, v0);
  v8 = sub_21D7FA438(v7);
  swift_setDeallocating();
  (*(v1 + 8))(v7 + v6, v0);
  swift_deallocClassInstance();
  return v8;
}

uint64_t sub_21D7F9834(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D7F98A0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t sub_21D7F98DC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t TTRTipCategorizeYourGroceries.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D7F9BD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21D7F98A0(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v6[1];
  result = sub_21D157444(v6);
  *a2 = Strong;
  a2[1] = v4;
  return result;
}

uint64_t TTRTipCategorizeYourGroceries.delegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*TTRTipCategorizeYourGroceries.delegate.modify(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = Strong;
  a1[1] = v4;
  return sub_21D7F9CD8;
}

uint64_t sub_21D7F9CD8(uint64_t a1)
{
  *(*(a1 + 16) + 8) = *(a1 + 8);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t TTRTipCategorizeYourGroceries.init(delegate:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a1;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_21D7F9D78()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D7F9E50()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D7F9F50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D7FA200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21D7FA864();
  result = MEMORY[0x223D41550](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

size_t sub_21D7FA240(size_t a1, int64_t a2, char a3)
{
  result = sub_21D7FA260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21D7FA260(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E90);
  v10 = *(sub_21DBF8EEC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21DBF8EEC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_21D7FA438(uint64_t a1)
{
  v2 = sub_21DBF8EEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61EA8);
  MEMORY[0x28223BE20](v30);
  v29 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v31 = MEMORY[0x277D84F90];
  sub_21D7FA240(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_21D7FA8B8(v16, v9);
      sub_21DBF8EDC();
      sub_21D7FA928(v9);
      v31 = v10;
      v19 = v2;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21D7FA240(v20 > 1, v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      *(v10 + 16) = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

unint64_t sub_21D7FA6AC()
{
  result = qword_27CE61E98;
  if (!qword_27CE61E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61E98);
  }

  return result;
}

uint64_t initializeWithCopy for TTRTipCategorizeYourGroceries(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for TTRTipCategorizeYourGroceries(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithTake for TTRTipCategorizeYourGroceries(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for TTRTipCategorizeYourGroceries(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for TTRTipCategorizeYourGroceries(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRTipCategorizeYourGroceries(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

unint64_t sub_21D7FA864()
{
  result = qword_27CE61EA0;
  if (!qword_27CE61EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61EA0);
  }

  return result;
}

uint64_t sub_21D7FA8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61EA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7FA928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRICollectionViewCellSelectionOption.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D7FAA4C()
{
  result = qword_27CE61EB0;
  if (!qword_27CE61EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61EB0);
  }

  return result;
}

char *TTRReminderCellTitleSuggestedAttributeSplitter.splitCellTitleAugmentation(_:)(void *a1, uint64_t *a2)
{
  v61 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v61);
  v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21DBF7A0C();
  v5 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21DBF79FC();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  MEMORY[0x28223BE20](v15);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - v19;
  v21 = *a2;
  v20 = a2[1];
  v22 = a2[2];
  v23 = a2[3];
  if (v20)
  {
    v57 = a1;
    v58 = v22;
    v55 = v20;
    v56 = v21;
    v24 = *(v23 + 2);
    if (v24)
    {
      v25 = (v23 + 32);
      v72 = (v18 + 56);
      v64 = *MEMORY[0x277D456F0];
      v62 = (v7 + 8);
      v63 = (v5 + 104);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v23 = MEMORY[0x277D84F90];
      v73 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D1D9BE4(v25, v75);
        sub_21D0CEB98(v75, v74);
        if (swift_dynamicCast())
        {
        }

        else
        {
          sub_21D0CEB98(v75, v74);
          v38 = swift_dynamicCast();
          v39 = *v72;
          if (v38)
          {
            v39(v14, 0, 1, v15);
            v40 = v65;
            sub_21D19AF08(v14, v65);
            v70 = *(v15 + 20);
            (*v63)(v68, v64, v69);
            v71 = v24;
            v41 = v39;
            v42 = v23;
            v43 = v15;
            v44 = v14;
            v45 = v66;
            sub_21DBF79EC();
            v46 = sub_21DBF79BC();
            v47 = v45;
            v14 = v44;
            v15 = v43;
            v23 = v42;
            v39 = v41;
            v24 = v71;
            (*v62)(v47, v67);
            sub_21D19B204(v40, type metadata accessor for TTRReminderSuggestedAttribute);
            if (v46)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v39(v14, 1, 1, v15);
            sub_21D19AEA0(v14);
          }

          sub_21D0CEB98(v75, v74);
          if (!swift_dynamicCast())
          {
            v39(v11, 1, 1, v15);
            sub_21D19AEA0(v11);
LABEL_20:
            sub_21D1D9BE4(v75, v74);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_21D211038(0, *(v73 + 2) + 1, 1, v73);
            }

            v51 = *(v73 + 2);
            v50 = *(v73 + 3);
            if (v51 >= v50 >> 1)
            {
              v73 = sub_21D211038((v50 > 1), v51 + 1, 1, v73);
            }

            sub_21D1D9C40(v75);
            v52 = v73;
            *(v73 + 2) = v51 + 1;
            v26 = &v52[192 * v51];
            goto LABEL_5;
          }

          v39(v11, 0, 1, v15);
          v48 = v59;
          sub_21D19AF08(v11, v59);
          v49 = v60;
          sub_21D19B1A0(v48, v60);
          sub_21D19B204(v48, type metadata accessor for TTRReminderSuggestedAttribute);
          LODWORD(v48) = swift_getEnumCaseMultiPayload();
          sub_21D19B204(v49, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
          if (v48 != 5)
          {
            goto LABEL_20;
          }
        }

LABEL_8:
        sub_21D1D9BE4(v75, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_21D211038(0, *(v23 + 2) + 1, 1, v23);
        }

        v37 = *(v23 + 2);
        v36 = *(v23 + 3);
        if (v37 >= v36 >> 1)
        {
          v23 = sub_21D211038((v36 > 1), v37 + 1, 1, v23);
        }

        sub_21D1D9C40(v75);
        *(v23 + 2) = v37 + 1;
        v26 = &v23[192 * v37];
LABEL_5:
        v27 = v74[3];
        v28 = v74[0];
        v29 = v74[1];
        *(v26 + 4) = v74[2];
        *(v26 + 5) = v27;
        *(v26 + 2) = v28;
        *(v26 + 3) = v29;
        v30 = v74[7];
        v31 = v74[5];
        v32 = v74[4];
        *(v26 + 8) = v74[6];
        *(v26 + 9) = v30;
        *(v26 + 6) = v32;
        *(v26 + 7) = v31;
        v33 = v74[11];
        v34 = v74[9];
        v35 = v74[8];
        *(v26 + 12) = v74[10];
        *(v26 + 13) = v33;
        *(v26 + 10) = v35;
        *(v26 + 11) = v34;
        v25 += 192;
        if (!--v24)
        {
          goto LABEL_27;
        }
      }
    }

    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v23 = MEMORY[0x277D84F90];
    v73 = MEMORY[0x277D84F90];
LABEL_27:
    v21 = v56;
    a1 = v57;
    v22 = v58;
    v53 = v55;
    result = v73;
  }

  else
  {
    v53 = 0;
    result = MEMORY[0x277D84F90];
  }

  *a1 = v21;
  a1[1] = v53;
  a1[2] = v22;
  a1[3] = v23;
  return result;
}

uint64_t sub_21D7FB294()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1._object = 0x800000021DC63430;
    v1._countAndFlagsBits = 0xD000000000000019;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D7FB308()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D7FB374()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61EB8);
  v1 = __swift_project_value_buffer(v0, qword_27CE61EB8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D7FB43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_21DBFA80C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = sub_21DBFA84C();
  v4[8] = sub_21DBFA83C();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_21D7FB554;

  return TimeZone.defaultCityName()();
}

uint64_t sub_21D7FB554(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  v6 = sub_21DBFA7CC();
  if (v2)
  {
    v7 = sub_21D7FB8D0;
  }

  else
  {
    v7 = sub_21D7FB6B8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21D7FB6B8()
{
  v1 = v0[12];

  sub_21DBFA99C();
  if (v1)
  {

    v0[2] = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    if (swift_dynamicCast())
    {
      v4 = v0[5];
      v3 = v0[6];
      v5 = v0[4];

      (*(v4 + 8))(v3, v5);
    }

    else
    {
      if (qword_27CE56CF8 != -1)
      {
        swift_once();
      }

      v9 = sub_21DBF84BC();
      __swift_project_value_buffer(v9, qword_27CE61EB8);
      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAEBC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_21D0C9000, v10, v11, "Failed to fetch initial time zone city name", v12, 2u);
        MEMORY[0x223D46520](v12, -1, -1);
      }
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = v0[11];
      v8 = (Strong + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm);
      *v8 = v0[10];
      v8[1] = v7;

      sub_21DBF8E0C();
      swift_unknownObjectRelease();
    }

    sub_21D7FBA74(v0[10], v0[11]);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21D7FB8D0()
{

  v1 = v0[12];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  if (swift_dynamicCast())
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    if (qword_27CE56CF8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61EB8);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to fetch initial time zone city name", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21D7FBA74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F18);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21D7FBD14(v11, a1, a2);
  sub_21D0CF7E0(v11, &qword_27CE61F10);
  v13 = OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_initialSetupTask;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_initialSetupTask))
  {

    sub_21DBFA96C();
  }

  *(v2 + v13) = 0;

  v14 = OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_fetchSearchResultsTask;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_fetchSearchResultsTask))
  {

    sub_21DBFA96C();
  }

  v15 = sub_21DBFA89C();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_21DBFA84C();

  sub_21DBF8E0C();
  v16 = sub_21DBFA83C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v3;
  v17[5] = a1;
  v17[6] = a2;
  *(v3 + v14) = sub_21D1B5178(0, 0, v8, &unk_21DC2A760, v17);
}

void sub_21D7FBD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F50);
  MEMORY[0x28223BE20](v55);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v43 - v10;
  MEMORY[0x28223BE20](v11);
  v51 = &v43 - v12;
  v13 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - v17;
  sub_21D0D3954(a1, &v43 - v17, &qword_27CE61F10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F18);
  v20 = *(v19 - 8);
  v21 = v19;
  if ((*(v20 + 48))(v18, 1) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE61F10);
    v22 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v46 = a3;
  v47 = a2;
  sub_21D801268(&qword_27CE61F58, &qword_27CE61F18);
  v27 = sub_21DBFAC8C();
  v22 = MEMORY[0x277D84F90];
  if (!v27)
  {
LABEL_13:
    (*(v20 + 8))(v18, v21);
    a3 = v46;
    a2 = v47;
    if (v46)
    {
LABEL_3:
      v23 = a3;
      if (v22)
      {
LABEL_5:
        sub_21DBF8E0C();
        sub_21DA4D178(a2, v23, v22, v59);
        v24 = (v4 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel);
        v25 = v59[1];
        *v24 = v59[0];
        v24[1] = v25;
        v24[2] = v59[2];

        v26._object = 0x800000021DC63430;
        v26._countAndFlagsBits = 0xD000000000000019;
        TTRDeferredAction.scheduleNextRunLoop(reason:)(v26);
        return;
      }

LABEL_4:
      v22 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 32);
      sub_21DBF8E0C();
      goto LABEL_5;
    }

LABEL_14:
    a2 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 16);
    v23 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 24);
    sub_21DBF8E0C();
    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v28 = v27;
  v58 = MEMORY[0x277D84F90];
  sub_21D18F52C(0, v27 & ~(v27 >> 63), 0);
  v22 = v58;
  sub_21DBFAC3C();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v44 = v20;
    v45 = v4;
    v49 = v18;
    v50 = v56 + 8;
    v48 = v21;
    do
    {
      v57 = v22;
      v29 = sub_21DBFAD3C();
      v30 = v51;
      sub_21D0D3954(v31, v51, &qword_27CE61F50);
      v29(v59, 0);
      v32 = v56;
      sub_21D0D3954(v30, v56, &qword_27CE61F50);
      v33 = v55;

      v34 = v54;
      sub_21D0D523C(v30, v54, &qword_27CE61F50);
      v35 = (v34 + *(v33 + 48));
      v36 = *v35;
      v37 = v35[1];
      v38 = sub_21DBF5C4C();
      v39 = *(v38 - 8);
      (*(v39 + 32))(v15, v32, v38);
      v40 = &v15[*(v53 + 20)];
      *v40 = v36;
      *(v40 + 1) = v37;
      (*(v39 + 8))(v34, v38);
      v22 = v57;
      v58 = v57;
      v42 = *(v57 + 16);
      v41 = *(v57 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_21D18F52C(v41 > 1, v42 + 1, 1);
        v22 = v58;
      }

      *(v22 + 16) = v42 + 1;
      sub_21D8012BC(v15, v22 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42);
      v21 = v48;
      v18 = v49;
      sub_21DBFACBC();
      --v28;
    }

    while (v28);
    v4 = v45;
    v20 = v44;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_21D7FC2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v9 = sub_21DBFA80C();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F10);
  v6[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F18);
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v11 = swift_task_alloc();
  v6[10] = v11;
  v6[11] = sub_21DBFA84C();
  v6[12] = sub_21DBFA83C();
  v12 = swift_task_alloc();
  v6[13] = v12;
  *v12 = v6;
  v12[1] = sub_21D7FC48C;

  return sub_21D7FCA10(v11, a5, a6);
}

uint64_t sub_21D7FC48C()
{
  *(*v1 + 112) = v0;

  v3 = sub_21DBFA7CC();
  if (v0)
  {
    v4 = sub_21D7FC858;
  }

  else
  {
    v4 = sub_21D7FC5E4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21D7FC5E4()
{
  v1 = v0[14];

  sub_21DBFA99C();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  if (v1)
  {
    (*(v3 + 8))(v0[10], v0[8]);
    v0[2] = v1;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    if (swift_dynamicCast())
    {
      v7 = v0[5];
      v6 = v0[6];
      v8 = v0[4];

      (*(v7 + 8))(v6, v8);
    }

    else
    {
      if (qword_27CE56CF8 != -1)
      {
        swift_once();
      }

      v10 = sub_21DBF84BC();
      __swift_project_value_buffer(v10, qword_27CE61EB8);
      v11 = sub_21DBF84AC();
      v12 = sub_21DBFAEBC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21D0C9000, v11, v12, "Failed to fetch results for time zone picker", v13, 2u);
        MEMORY[0x223D46520](v13, -1, -1);
      }
    }
  }

  else
  {
    v9 = v0[7];
    (*(v3 + 16))(v9, v0[10], v0[8]);
    (*(v3 + 56))(v9, 0, 1, v4);
    sub_21D7FBD14(v9, 0, 0);
    sub_21D0CF7E0(v9, &qword_27CE61F10);
    (*(v3 + 8))(v2, v4);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_21D7FC858()
{

  v1 = v0[14];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  if (swift_dynamicCast())
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    if (qword_27CE56CF8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61EB8);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to fetch results for time zone picker", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21D7FCA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[142] = a3;
  v3[141] = a2;
  v3[140] = a1;
  v4 = sub_21DBF5C4C();
  v3[143] = v4;
  v3[144] = *(v4 - 8);
  v3[145] = swift_task_alloc();
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F20);
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();
  v3[151] = swift_task_alloc();
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F28);
  v3[154] = v5;
  v3[155] = *(v5 - 8);
  v3[156] = swift_task_alloc();
  v3[157] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F30);
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v6 = sub_21DBF582C();
  v3[161] = v6;
  v3[162] = *(v6 - 8);
  v3[163] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F18);
  v3[164] = v7;
  v3[165] = *(v7 - 8);
  v3[166] = swift_task_alloc();
  sub_21DBFA84C();
  v3[167] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v3[168] = v9;
  v3[169] = v8;

  return MEMORY[0x2822009F8](sub_21D7FCD1C, v9, v8);
}

uint64_t sub_21D7FCD1C()
{
  v1 = v0;
  v17 = v0 + 10;
  v2 = v0 + 82;
  v3 = v0[163];
  v4 = v0[162];
  v16 = v1[161];
  v1[170] = sub_21D8011A8();
  sub_21DBF617C();
  v5 = swift_allocBox();
  v1[171] = v5;
  v1[172] = v6;
  v1[173] = sub_21D801200();
  sub_21DBF617C();
  v1[174] = swift_allocBox();
  v1[175] = v7;
  sub_21DBF617C();
  sub_21DBF57AC();
  v8 = objc_allocWithZone(MEMORY[0x277D0ECC0]);
  v9 = sub_21DBF574C();
  v10 = [v8 initWithLocale_];
  v1[176] = v10;

  (*(v4 + 8))(v3, v16);
  v11 = sub_21DBFA12C();
  v1[177] = v11;
  v1[86] = sub_21D80134C;
  v1[87] = v5;
  v1[82] = MEMORY[0x277D85DD0];
  v1[83] = 1107296256;
  v1[84] = sub_21D5EDE98;
  v1[85] = &block_descriptor_90;
  v12 = _Block_copy(v2);
  v1[178] = v12;

  v1[10] = v1;
  v1[11] = sub_21D7FD004;
  v13 = swift_continuation_init();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED58);
  v1[179] = v14;
  v1[49] = v14;
  v1[42] = MEMORY[0x277D85DD0];
  v1[43] = 1107296256;
  v1[44] = sub_21D5EDF0C;
  v1[45] = &block_descriptor_14_3;
  v1[46] = v13;
  [v10 regionsWithName:v11 options:2 types:8 sort:2 cursor:v12 finished:?];

  return MEMORY[0x282200938](v17);
}

uint64_t sub_21D7FD004()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1440) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D8001B8;
  }

  else
  {
    v5 = sub_21D7FD134;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FD134()
{
  v1 = v0[177];
  _Block_release(v0[178]);

  sub_21DBFA99C();
  v2 = v0[172];
  v3 = v0[160];
  v4 = v0[157];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[154];
  swift_beginAccess();
  v8 = *(v6 + 16);
  v0[181] = v8;
  v0[182] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v5, v2, v7);
  v8(v3, v5, v7);
  *(v0 + 422) = *(v4 + 36);
  v0[183] = sub_21D801268(&qword_27CE61F40, &qword_27CE61F28);
  sub_21DBFAC3C();
  v9 = *(v6 + 8);
  v0[184] = v9;
  v0[185] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = *(v0 + 422);
  v11 = v0[160];
  sub_21DBFACAC();
  if (*(v11 + v10) == v0[139])
  {
    v12 = 1;
  }

  else
  {
    v13 = v0[152];
    v14 = sub_21DBFAD3C();
    sub_21D0D3954(v15, v13, &qword_27CE61F48);
    v14(v0 + 108, 0);
    sub_21DBFACBC();
    v12 = 0;
  }

  v16 = v0[153];
  v17 = v0[152];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F48);
  (*(*(v18 - 8) + 56))(v17, v12, 1, v18);
  sub_21D0D523C(v17, v16, &qword_27CE61F20);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F48);
  v0[186] = v19;
  v20 = *(v19 - 8);
  v0[187] = v20;
  v21 = *(v20 + 48);
  v0[188] = v21;
  v0[189] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v16, 1, v19) == 1)
  {
    sub_21D0CF7E0(v0[160], &qword_27CE61F30);
    sub_21DBFA99C();
    v0[193] = 0;
    v22 = v0 + 34;
    v23 = v0[179];
    v24 = v0[176];
    v25 = v0[174];
    v26 = sub_21DBFA12C();
    v0[194] = v26;
    v0[98] = sub_21D80124C;
    v0[99] = v25;
    v0[94] = MEMORY[0x277D85DD0];
    v0[95] = 1107296256;
    v0[96] = sub_21D5EDE98;
    v0[97] = &block_descriptor_17_2;
    v27 = _Block_copy(v0 + 94);
    v0[195] = v27;

    v0[34] = v0;
    v0[35] = sub_21D7FE090;
    v28 = swift_continuation_init();
    v0[73] = v23;
    v0[70] = v28;
    v0[66] = MEMORY[0x277D85DD0];
    v0[67] = 1107296256;
    v0[68] = sub_21D5EDF0C;
    v0[69] = &block_descriptor_20_1;
    [v24 regionsWithName:v26 options:2 types:2 sort:2 cursor:v27 finished:v0 + 66];
  }

  else
  {
    v29 = v0[147];
    v30 = v0[144];
    v31 = *(v0[153] + *(v19 + 48));
    v0[190] = v31;
    (*(v30 + 32))(v29);
    sub_21DBFA99C();
    v0[191] = 0;
    v22 = v0 + 18;
    v32 = v0[176];
    v0[18] = v0;
    v0[23] = v0 + 131;
    v0[19] = sub_21D7FD894;
    v33 = swift_continuation_init();
    v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60);
    v0[50] = MEMORY[0x277D85DD0];
    v0[51] = 1107296256;
    v0[52] = sub_21D5EE998;
    v0[53] = &block_descriptor_33_0;
    v0[54] = v33;
    [v32 formattedNameForRegion:v31 result:v0 + 50];
  }

  return MEMORY[0x282200938](v22);
}

uint64_t sub_21D7FD894()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1536) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D80035C;
  }

  else
  {
    v5 = sub_21D7FD9C4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FD9C4()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1056);
  *(v0 + 1080) = *(v0 + 1048);
  *(v0 + 1088) = v5;
  sub_21DBF616C();

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 1528);
  v7 = *(v0 + 1688);
  v8 = *(v0 + 1280);
  sub_21DBFACAC();
  if (*(v8 + v7) == *(v0 + 1112))
  {
    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 1216);
    v11 = sub_21DBFAD3C();
    sub_21D0D3954(v12, v10, &qword_27CE61F48);
    v11(v0 + 864, 0);
    sub_21DBFACBC();
    v9 = 0;
  }

  v13 = *(v0 + 1224);
  v14 = *(v0 + 1216);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F48);
  (*(*(v15 - 8) + 56))(v14, v9, 1, v15);
  sub_21D0D523C(v14, v13, &qword_27CE61F20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F48);
  *(v0 + 1488) = v16;
  v17 = *(v16 - 8);
  *(v0 + 1496) = v17;
  v18 = *(v17 + 48);
  *(v0 + 1504) = v18;
  *(v0 + 1512) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v13, 1, v16) == 1)
  {
    sub_21D0CF7E0(*(v0 + 1280), &qword_27CE61F30);
    sub_21DBFA99C();
    *(v0 + 1544) = v6;
    if (v6)
    {
      v19 = *(v0 + 1408);
      (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));

LABEL_9:

      v30 = *(v0 + 8);

      return v30();
    }

    v32 = *(v0 + 1432);
    v33 = *(v0 + 1408);
    v34 = *(v0 + 1392);
    v35 = sub_21DBFA12C();
    *(v0 + 1552) = v35;
    *(v0 + 784) = sub_21D80124C;
    *(v0 + 792) = v34;
    *(v0 + 752) = MEMORY[0x277D85DD0];
    *(v0 + 760) = 1107296256;
    *(v0 + 768) = sub_21D5EDE98;
    *(v0 + 776) = &block_descriptor_17_2;
    v36 = _Block_copy((v0 + 752));
    *(v0 + 1560) = v36;

    *(v0 + 272) = v0;
    *(v0 + 280) = sub_21D7FE090;
    v37 = swift_continuation_init();
    *(v0 + 584) = v32;
    *(v0 + 560) = v37;
    *(v0 + 528) = MEMORY[0x277D85DD0];
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = sub_21D5EDF0C;
    *(v0 + 552) = &block_descriptor_20_1;
    [v33 regionsWithName:v35 options:2 types:2 sort:2 cursor:v36 finished:v0 + 528];
    v38 = v0 + 272;
  }

  else
  {
    v20 = *(v0 + 1176);
    v21 = *(v0 + 1152);
    v22 = *(*(v0 + 1224) + *(v16 + 48));
    *(v0 + 1520) = v22;
    (*(v21 + 32))(v20);
    sub_21DBFA99C();
    *(v0 + 1528) = v6;
    if (v6)
    {
      v23 = v22;
      v24 = *(v0 + 1408);
      v25 = *(v0 + 1320);
      v41 = *(v0 + 1312);
      v42 = *(v0 + 1328);
      v26 = *(v0 + 1280);
      v27 = *(v0 + 1176);
      v28 = *(v0 + 1152);
      v29 = *(v0 + 1144);

      (*(v28 + 8))(v27, v29);
      sub_21D0CF7E0(v26, &qword_27CE61F30);
      (*(v25 + 8))(v42, v41);
      goto LABEL_9;
    }

    v39 = *(v0 + 1408);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 1048;
    *(v0 + 152) = sub_21D7FD894;
    v40 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60);
    *(v0 + 400) = MEMORY[0x277D85DD0];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_21D5EE998;
    *(v0 + 424) = &block_descriptor_33_0;
    *(v0 + 432) = v40;
    [v39 formattedNameForRegion:v22 result:v0 + 400];
    v38 = v0 + 144;
  }

  return MEMORY[0x282200938](v38);
}

uint64_t sub_21D7FE090()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 1568) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D80053C;
  }

  else
  {
    v5 = sub_21D7FE1C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FE1C0()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1544);
  _Block_release(*(v0 + 1560));

  sub_21DBFA99C();
  if (v2)
  {
    v3 = *(v0 + 1408);
    (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));

    v4 = *(v0 + 8);
LABEL_3:

    return v4();
  }

  else
  {
    v39 = *(v0 + 1472);
    v6 = *(v0 + 1448);
    v7 = *(v0 + 1400);
    v8 = *(v0 + 1272);
    v9 = *(v0 + 1256);
    v10 = *(v0 + 1248);
    v11 = *(v0 + 1232);
    swift_beginAccess();
    v6(v10, v7, v11);
    v6(v8, v10, v11);
    *(v0 + 1692) = *(v9 + 36);
    sub_21DBFAC3C();
    v39(v10, v11);
    while (1)
    {
      v12 = *(v0 + 1692);
      v13 = *(v0 + 1272);
      sub_21DBFACAC();
      if (*(v13 + v12) == *(v0 + 1096))
      {
        v14 = 1;
      }

      else
      {
        v15 = *(v0 + 1200);
        v16 = sub_21DBFAD3C();
        sub_21D0D3954(v17, v15, &qword_27CE61F48);
        v16(v0 + 800, 0);
        sub_21DBFACBC();
        v14 = 0;
      }

      v18 = *(v0 + 1504);
      v19 = *(v0 + 1488);
      v20 = *(v0 + 1208);
      v21 = *(v0 + 1200);
      v22 = *(*(v0 + 1496) + 56);
      *(v0 + 1576) = v22;
      v22(v21, v14, 1, v19);
      sub_21D0D523C(v21, v20, &qword_27CE61F20);
      if (v18(v20, 1, v19) == 1)
      {
        sub_21D0CF7E0(*(v0 + 1272), &qword_27CE61F30);

        sub_21DBFA99C();
        v29 = *(v0 + 1328);
        v30 = *(v0 + 1320);
        v31 = *(v0 + 1312);
        v32 = *(v0 + 1120);

        (*(v30 + 32))(v32, v29, v31);

        v4 = *(v0 + 8);
        goto LABEL_3;
      }

      v23 = *(v0 + 1168);
      v24 = *(v0 + 1152);
      v25 = *(v0 + 1144);
      v26 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
      *(v0 + 1584) = v26;
      v27 = *(v24 + 32);
      *(v0 + 1592) = v27;
      *(v0 + 1600) = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v27(v23);
      sub_21DBF618C();
      v28 = *(v24 + 8);
      *(v0 + 1608) = v28;
      *(v0 + 1616) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v28(v23, v25);
      if (!*(v0 + 976))
      {
        break;
      }
    }

    sub_21DBFA99C();
    *(v0 + 1624) = 0;
    v38 = *(v0 + 1432);
    v40 = *(v0 + 1408);
    v33 = swift_allocBox();
    *(v0 + 1632) = v33;
    *(v0 + 1640) = v34;
    sub_21DBF617C();
    v35 = [v26 regionId];
    *(v0 + 736) = sub_21D80134C;
    *(v0 + 744) = v33;
    *(v0 + 704) = MEMORY[0x277D85DD0];
    *(v0 + 712) = 1107296256;
    *(v0 + 720) = sub_21D5EDE98;
    *(v0 + 728) = &block_descriptor_24_0;
    v36 = _Block_copy((v0 + 704));
    *(v0 + 1648) = v36;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21D7FE970;
    v37 = swift_continuation_init();
    *(v0 + 648) = v38;
    *(v0 + 624) = v37;
    *(v0 + 592) = MEMORY[0x277D85DD0];
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_21D5EDF0C;
    *(v0 + 616) = &block_descriptor_27_1;
    [v40 childRegionsOfRegionId:v35 types:8 sort:2 recursive:1 cursor:v36 finished:v0 + 592];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21D7FE970()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1656) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D8006E0;
  }

  else
  {
    v5 = sub_21D7FEAA0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FEAA0()
{
  v1 = *(v0 + 1624);
  _Block_release(*(v0 + 1648));
  sub_21DBFA99C();
  if (v1)
  {
    v2 = *(v0 + 1408);
    v3 = *(v0 + 1328);
    v4 = *(v0 + 1320);
    v5 = *(v0 + 1312);
    v6 = *(v0 + 1272);

    sub_21D0CF7E0(v6, &qword_27CE61F30);
    (*(v4 + 8))(v3, v5);

    v7 = *(v0 + 8);
LABEL_3:

    return v7();
  }

  else
  {
    v9 = *(v0 + 1640);
    v62 = *(v0 + 1472);
    v10 = *(v0 + 1448);
    v11 = *(v0 + 1264);
    v12 = *(v0 + 1256);
    v13 = *(v0 + 1248);
    v14 = *(v0 + 1232);
    swift_beginAccess();
    v10(v13, v9, v14);
    v10(v11, v13, v14);
    *(v0 + 1696) = *(v12 + 36);
    sub_21DBFAC3C();
    v62(v13, v14);
    while (1)
    {
      v15 = *(v0 + 1696);
      v16 = *(v0 + 1264);
      sub_21DBFACAC();
      if (*(v16 + v15) == *(v0 + 1104))
      {
        v17 = 1;
      }

      else
      {
        v18 = *(v0 + 1184);
        v19 = sub_21DBFAD3C();
        sub_21D0D3954(v20, v18, &qword_27CE61F48);
        v19(v0 + 832, 0);
        sub_21DBFACBC();
        v17 = 0;
      }

      v21 = *(v0 + 1504);
      v22 = *(v0 + 1488);
      v23 = *(v0 + 1192);
      v24 = *(v0 + 1184);
      (*(v0 + 1576))(v24, v17, 1, v22);
      sub_21D0D523C(v24, v23, &qword_27CE61F20);
      if (v21(v23, 1, v22) == 1)
      {
        break;
      }

      v25 = *(v0 + 1592);
      v26 = *(v0 + 1160);
      v27 = *(*(v0 + 1192) + *(*(v0 + 1488) + 48));
      *(v0 + 1664) = v27;
      v25(v26);
      sub_21DBF618C();
      if (!*(v0 + 992))
      {
        sub_21DBFA99C();
        *(v0 + 1672) = 0;
        v52 = v0 + 208;
        v53 = *(v0 + 1408);
        *(v0 + 208) = v0;
        *(v0 + 248) = v0 + 1000;
        *(v0 + 216) = sub_21D7FF5E4;
        v54 = swift_continuation_init();
        *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60);
        *(v0 + 464) = MEMORY[0x277D85DD0];
        *(v0 + 472) = 1107296256;
        *(v0 + 480) = sub_21D5EE998;
        *(v0 + 488) = &block_descriptor_30_0;
        *(v0 + 496) = v54;
        [v53 formattedNameForRegion:v27 result:v0 + 464];
        goto LABEL_23;
      }

      v28 = *(v0 + 1608);
      v29 = *(v0 + 1160);
      v30 = *(v0 + 1144);

      v28(v29, v30);
    }

    v31 = *(v0 + 1584);
    sub_21D0CF7E0(*(v0 + 1264), &qword_27CE61F30);

    while (1)
    {
      v32 = *(v0 + 1692);
      v33 = *(v0 + 1272);
      sub_21DBFACAC();
      if (*(v33 + v32) == *(v0 + 1096))
      {
        v34 = 1;
      }

      else
      {
        v35 = *(v0 + 1200);
        v36 = sub_21DBFAD3C();
        sub_21D0D3954(v37, v35, &qword_27CE61F48);
        v36(v0 + 800, 0);
        sub_21DBFACBC();
        v34 = 0;
      }

      v38 = *(v0 + 1504);
      v39 = *(v0 + 1488);
      v40 = *(v0 + 1208);
      v41 = *(v0 + 1200);
      v42 = *(*(v0 + 1496) + 56);
      *(v0 + 1576) = v42;
      v42(v41, v34, 1, v39);
      sub_21D0D523C(v41, v40, &qword_27CE61F20);
      if (v38(v40, 1, v39) == 1)
      {
        sub_21D0CF7E0(*(v0 + 1272), &qword_27CE61F30);

        sub_21DBFA99C();
        v49 = *(v0 + 1328);
        v50 = *(v0 + 1320);
        v51 = *(v0 + 1312);
        v55 = *(v0 + 1120);

        (*(v50 + 32))(v55, v49, v51);

        v7 = *(v0 + 8);
        goto LABEL_3;
      }

      v43 = *(v0 + 1168);
      v44 = *(v0 + 1152);
      v45 = *(v0 + 1144);
      v46 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
      *(v0 + 1584) = v46;
      v47 = *(v44 + 32);
      *(v0 + 1592) = v47;
      *(v0 + 1600) = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v47(v43);
      sub_21DBF618C();
      v48 = *(v44 + 8);
      *(v0 + 1608) = v48;
      *(v0 + 1616) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v48(v43, v45);
      if (!*(v0 + 976))
      {
        break;
      }
    }

    sub_21DBFA99C();
    *(v0 + 1624) = 0;
    v52 = v0 + 16;
    v63 = *(v0 + 1408);
    v61 = *(v0 + 1432);
    v56 = swift_allocBox();
    *(v0 + 1632) = v56;
    *(v0 + 1640) = v57;
    sub_21DBF617C();
    v58 = [v46 regionId];
    *(v0 + 736) = sub_21D80134C;
    *(v0 + 744) = v56;
    *(v0 + 704) = MEMORY[0x277D85DD0];
    *(v0 + 712) = 1107296256;
    *(v0 + 720) = sub_21D5EDE98;
    *(v0 + 728) = &block_descriptor_24_0;
    v59 = _Block_copy((v0 + 704));
    *(v0 + 1648) = v59;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21D7FE970;
    v60 = swift_continuation_init();
    *(v0 + 648) = v61;
    *(v0 + 624) = v60;
    *(v0 + 592) = MEMORY[0x277D85DD0];
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_21D5EDF0C;
    *(v0 + 616) = &block_descriptor_27_1;
    [v63 childRegionsOfRegionId:v58 types:8 sort:2 recursive:1 cursor:v59 finished:v0 + 592];
LABEL_23:

    return MEMORY[0x282200938](v52);
  }
}

uint64_t sub_21D7FF5E4()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1680) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D8008B0;
  }

  else
  {
    v5 = sub_21D7FF714;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FF714()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1008);
  *(v0 + 1032) = *(v0 + 1000);
  *(v0 + 1040) = v5;
  sub_21DBF616C();

  v2(v3, v4);

  v71 = *(v0 + 1672);
  while (1)
  {
    v6 = *(v0 + 1696);
    v7 = *(v0 + 1264);
    sub_21DBFACAC();
    if (*(v7 + v6) == *(v0 + 1104))
    {
      v8 = 1;
    }

    else
    {
      v9 = *(v0 + 1184);
      v10 = sub_21DBFAD3C();
      sub_21D0D3954(v11, v9, &qword_27CE61F48);
      v10(v0 + 832, 0);
      sub_21DBFACBC();
      v8 = 0;
    }

    v12 = *(v0 + 1504);
    v13 = *(v0 + 1488);
    v14 = *(v0 + 1192);
    v15 = *(v0 + 1184);
    (*(v0 + 1576))(v15, v8, 1, v13);
    sub_21D0D523C(v15, v14, &qword_27CE61F20);
    if (v12(v14, 1, v13) == 1)
    {
      v22 = *(v0 + 1584);
      sub_21D0CF7E0(*(v0 + 1264), &qword_27CE61F30);

      while (1)
      {
        v23 = *(v0 + 1692);
        v24 = *(v0 + 1272);
        sub_21DBFACAC();
        if (*(v24 + v23) == *(v0 + 1096))
        {
          v25 = 1;
        }

        else
        {
          v26 = *(v0 + 1200);
          v27 = sub_21DBFAD3C();
          sub_21D0D3954(v28, v26, &qword_27CE61F48);
          v27(v0 + 800, 0);
          sub_21DBFACBC();
          v25 = 0;
        }

        v29 = *(v0 + 1504);
        v30 = *(v0 + 1488);
        v31 = *(v0 + 1208);
        v32 = *(v0 + 1200);
        v33 = *(*(v0 + 1496) + 56);
        *(v0 + 1576) = v33;
        v33(v32, v25, 1, v30);
        sub_21D0D523C(v32, v31, &qword_27CE61F20);
        if (v29(v31, 1, v30) == 1)
        {
          sub_21D0CF7E0(*(v0 + 1272), &qword_27CE61F30);

          sub_21DBFA99C();
          v46 = *(v0 + 1408);
          v47 = *(v0 + 1328);
          v48 = *(v0 + 1320);
          v49 = *(v0 + 1312);
          if (v71)
          {
            (*(v48 + 8))(v47, v49);

            goto LABEL_21;
          }

          v60 = *(v0 + 1120);

          (*(v48 + 32))(v60, v47, v49);

          v55 = *(v0 + 8);
          goto LABEL_22;
        }

        v34 = *(v0 + 1168);
        v35 = *(v0 + 1152);
        v36 = *(v0 + 1144);
        v37 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
        *(v0 + 1584) = v37;
        v38 = *(v35 + 32);
        *(v0 + 1592) = v38;
        *(v0 + 1600) = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v38(v34);
        sub_21DBF618C();
        v39 = *(v35 + 8);
        *(v0 + 1608) = v39;
        *(v0 + 1616) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v39(v34, v36);
        if (!*(v0 + 976))
        {
          break;
        }
      }

      sub_21DBFA99C();
      *(v0 + 1624) = v71;
      if (v71)
      {
        v50 = *(v0 + 1408);
        v51 = *(v0 + 1328);
        v52 = *(v0 + 1320);
        v53 = *(v0 + 1312);
        v54 = *(v0 + 1272);

        sub_21D0CF7E0(v54, &qword_27CE61F30);
        (*(v52 + 8))(v51, v53);
        goto LABEL_21;
      }

      v57 = v0 + 16;
      v72 = *(v0 + 1408);
      v70 = *(v0 + 1432);
      v61 = swift_allocBox();
      *(v0 + 1632) = v61;
      *(v0 + 1640) = v62;
      sub_21DBF617C();
      v63 = [v37 regionId];
      *(v0 + 736) = sub_21D80134C;
      *(v0 + 744) = v61;
      *(v0 + 704) = MEMORY[0x277D85DD0];
      *(v0 + 712) = 1107296256;
      *(v0 + 720) = sub_21D5EDE98;
      *(v0 + 728) = &block_descriptor_24_0;
      v64 = _Block_copy((v0 + 704));
      *(v0 + 1648) = v64;

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_21D7FE970;
      v65 = swift_continuation_init();
      *(v0 + 648) = v70;
      *(v0 + 624) = v65;
      *(v0 + 592) = MEMORY[0x277D85DD0];
      *(v0 + 600) = 1107296256;
      *(v0 + 608) = sub_21D5EDF0C;
      *(v0 + 616) = &block_descriptor_27_1;
      [v72 childRegionsOfRegionId:v63 types:8 sort:2 recursive:1 cursor:v64 finished:v0 + 592];
      goto LABEL_28;
    }

    v16 = *(v0 + 1592);
    v17 = *(v0 + 1160);
    v18 = *(*(v0 + 1192) + *(*(v0 + 1488) + 48));
    *(v0 + 1664) = v18;
    v16(v17);
    sub_21DBF618C();
    if (!*(v0 + 992))
    {
      break;
    }

    v19 = *(v0 + 1608);
    v20 = *(v0 + 1160);
    v21 = *(v0 + 1144);

    v19(v20, v21);
  }

  sub_21DBFA99C();
  *(v0 + 1672) = v71;
  if (!v71)
  {
    v57 = v0 + 208;
    v58 = *(v0 + 1408);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1000;
    *(v0 + 216) = sub_21D7FF5E4;
    v59 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_21D5EE998;
    *(v0 + 488) = &block_descriptor_30_0;
    *(v0 + 496) = v59;
    [v58 formattedNameForRegion:v18 result:v0 + 464];
LABEL_28:

    return MEMORY[0x282200938](v57);
  }

  v67 = *(v0 + 1608);
  v40 = *(v0 + 1584);
  v41 = *(v0 + 1408);
  v69 = *(v0 + 1328);
  v42 = *(v0 + 1320);
  v68 = *(v0 + 1312);
  v66 = *(v0 + 1272);
  v43 = *(v0 + 1264);
  v44 = *(v0 + 1160);
  v45 = *(v0 + 1144);

  v67(v44, v45);
  sub_21D0CF7E0(v43, &qword_27CE61F30);
  sub_21D0CF7E0(v66, &qword_27CE61F30);
  (*(v42 + 8))(v69, v68);

LABEL_21:

  v55 = *(v0 + 8);
LABEL_22:

  return v55();
}

uint64_t sub_21D8001B8()
{
  v1 = v0[178];
  v2 = v0[177];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21D80035C()
{
  v1 = v0[190];
  v2 = v0[176];
  v11 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v0[160];
  v6 = v0[147];
  v7 = v0[144];
  v8 = v0[143];

  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  sub_21D0CF7E0(v5, &qword_27CE61F30);
  (*(v3 + 8))(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21D80053C()
{
  v1 = v0[195];
  v2 = v0[194];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21D8006E0()
{
  v1 = v0[206];
  v2 = v0[198];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];
  v7 = v0[159];

  swift_willThrow();

  sub_21D0CF7E0(v7, &qword_27CE61F30);
  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21D8008B0()
{
  v1 = v0[208];
  v2 = v0[201];
  v3 = v0[198];
  v4 = v0[176];
  v5 = v0[165];
  v12 = v0[164];
  v13 = v0[166];
  v11 = v0[159];
  v6 = v0[158];
  v7 = v0[145];
  v8 = v0[143];

  swift_willThrow();

  v2(v7, v8);
  sub_21D0CF7E0(v6, &qword_27CE61F30);
  sub_21D0CF7E0(v11, &qword_27CE61F30);
  (*(v5 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

id sub_21D800AC0(void *a1)
{
  v2 = sub_21DBF5C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F28);
  swift_projectBox();
  result = [a1 timeZone];
  if (result)
  {
    v10 = result;
    sub_21DBF5C2C();

    (*(v3 + 32))(v8, v5, v2);
    swift_beginAccess();
    sub_21DBF618C();
    v11 = v13;
    swift_endAccess();
    if (v11)
    {
    }

    else
    {
      v12[1] = a1;
      swift_beginAccess();
      sub_21DBF616C();
      swift_endAccess();
    }

    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_21D800C9C()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_currentTimeZone;
  v2 = sub_21DBF5C4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_date;
  v4 = sub_21DBF563C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_21D800DD0()
{
  sub_21D800C9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRTimeZonePickerPresenter()
{
  result = qword_27CE61EF0;
  if (!qword_27CE61EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D800E7C()
{
  result = sub_21DBF5C4C();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF563C();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21D800F9C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 32);
    v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 16);
    v7 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel);
    v8 = v5;
    v9 = v6;
    v10 = v3;
    sub_21D0D3954(&v8, v4, &qword_27CE61F00);
    sub_21D35BFD0(&v9, v4);
    sub_21D0D3954(&v10, v4, &qword_27CE61F08);
    sub_21D0D3954(&v10 + 8, v4, &qword_27CE64FD0);
    if ([v2 isViewLoaded])
    {
      sub_21DA4AF30(&v5, 1);
    }

    sub_21D0CF7E0(&v8, &qword_27CE61F00);
    sub_21D6C9C70(&v9);
    sub_21D0CF7E0(&v10, &qword_27CE61F08);
    sub_21D0CF7E0(&v10 + 8, &qword_27CE64FD0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D8010E0(uint64_t a1)
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

  return sub_21D7FC2B4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21D8011A8()
{
  result = qword_27CE58378;
  if (!qword_27CE58378)
  {
    sub_21DBF5C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58378);
  }

  return result;
}

unint64_t sub_21D801200()
{
  result = qword_27CE61F38;
  if (!qword_27CE61F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE61F38);
  }

  return result;
}

uint64_t sub_21D801268(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D8012BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21D801350()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      if (*(v0 + 32))
      {
        [v3 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_21D801408()
{
  MEMORY[0x223D46650](v0 + 16);
  MEMORY[0x223D46650](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t TTRITimeZonePickerAssembly.PresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

id static TTRITimeZonePickerAssembly.createViewControllerForModalPresentation(delegate:currentTimeZone:date:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v7 = 1;
  v4 = sub_21D8017C4(a1, a2, a3, a4, &v7);
  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v5 setModalPresentationStyle_];

  return v5;
}

id sub_21D801570(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_21DBF8D1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF8D3C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource] = 0;
  v15 = &a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel];
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  *&a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController] = 0;
  v16 = &a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter];
  *v17 = a1;
  *(v17 + 1) = &off_282ED3DC8;
  *&a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_localUndoManager] = a2;
  sub_21D0D8CF0(0, &qword_27CE64FF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D74D50], v7);
  v18 = a2;
  sub_21DBF8D2C();
  v19 = sub_21DBFB55C();
  (*(v12 + 8))(v14, v11);
  v22.receiver = a3;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_initWithCollectionViewLayout_, v19);

  return v20;
}

id sub_21D8017C4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, char *a5)
{
  v58 = a4;
  v57 = a3;
  v63 = a2;
  v64 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v56 - v7;
  v62 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21DBF563C();
  v59 = *(v69 - 8);
  v9 = v59;
  MEMORY[0x28223BE20](v69);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v11;
  v12 = sub_21DBF5C4C();
  v68 = v12;
  v60 = *(v12 - 8);
  v13 = v60;
  MEMORY[0x28223BE20](v12);
  v66 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  v16 = objc_allocWithZone(TTRUndoManager);
  v17 = sub_21DBFA12C();
  v18 = [v16 initWithDebugIdentifier_];

  type metadata accessor for TTRTimeZonePickerInteractor();
  v19 = swift_allocObject();
  v19[3] = 0;
  swift_unknownObjectWeakInit();
  v19[4] = v18;
  v19[5] = 0;
  v20 = v18;
  v21 = sub_21D550BD8(v18, v19, sub_21D7FB294, 0);

  v19[5] = v21;

  v22 = type metadata accessor for TTRITimeZonePickerRouter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v23 + 32) = v15;
  v56 = *(v13 + 16);
  v24 = v66;
  v56(v66, v57, v12);
  v57 = *(v9 + 16);
  v57(v11, v58, v69);
  v71[3] = v22;
  v71[4] = &off_282ED3F68;
  v71[0] = v23;
  type metadata accessor for TTRTimeZonePickerPresenter();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v71, v22);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v29;
  v70[3] = v22;
  v70[4] = &off_282ED3F68;
  v70[0] = v31;
  *(v25 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + 5) = 0;
  swift_unknownObjectWeakInit();
  v32 = &v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel];
  v33 = v20;

  v34 = MEMORY[0x277D84F90];
  sub_21DA4D178(0, 0xE000000000000000, MEMORY[0x277D84F90], v72);
  v35 = v72[1];
  *v32 = v72[0];
  *(v32 + 1) = v35;
  *(v32 + 2) = v72[2];
  *&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_initialSetupTask] = 0;
  *&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_fetchSearchResultsTask] = 0;
  *(v25 + 6) = v19;
  *(v25 + 7) = &off_282ED3D98;
  sub_21D0D32E4(v70, (v25 + 64));
  *(v25 + 13) = v33;
  v56(&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_currentTimeZone], v24, v68);
  v57(&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_date], v67, v69);
  sub_21D0D8CF0(0, &qword_280D1B900);
  v36 = v33;
  v37 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v38 = swift_allocObject();
  v38[3] = 0;
  swift_unknownObjectWeakInit();
  *&v73[0] = v34;
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v39 = v36;
  v38[5] = sub_21DBF5EEC();
  v38[6] = v34;
  v38[4] = v37;
  *&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_deferredAction] = v38;
  swift_beginAccess();
  v38[3] = &off_282ED3DA0;
  swift_unknownObjectWeakAssign();
  sub_21DA4D178(0, 0xE000000000000000, v34, v73);

  (*(v59 + 8))(v67, v69);
  (*(v60 + 8))(v66, v68);
  __swift_destroy_boxed_opaque_existential_0(v70);
  v40 = &v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel];
  v41 = v73[1];
  *v40 = v73[0];
  *(v40 + 1) = v41;
  *(v40 + 2) = v73[2];

  __swift_destroy_boxed_opaque_existential_0(v71);
  v42 = objc_allocWithZone(type metadata accessor for TTRITimeZonePickerViewController());

  v44 = sub_21D801570(v43, v39, v42);
  v45 = objc_allocWithZone(MEMORY[0x277D757A0]);
  v46 = v44;
  v47 = [v45 initWithRootViewController_];
  v19[3] = &off_282ED3DB8;
  swift_unknownObjectWeakAssign();
  *(v25 + 3) = &off_282EE2988;
  swift_unknownObjectWeakAssign();
  *(v25 + 5) = v63;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v48._countAndFlagsBits = 0xD000000000000019;
    v48._object = 0x800000021DC63430;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v48);
    swift_unknownObjectRelease();
  }

  v49 = sub_21DBFA89C();
  v50 = v65;
  (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
  sub_21DBFA84C();

  v51 = sub_21DBFA83C();
  v52 = swift_allocObject();
  v53 = MEMORY[0x277D85700];
  v52[2] = v51;
  v52[3] = v53;
  v52[4] = v25;
  v54 = sub_21D1B5178(0, 0, v50, &unk_21DC2A930, v52);

  *&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_initialSetupTask] = v54;

  return v46;
}

unint64_t sub_21D8020FC()
{
  result = qword_27CE61F60;
  if (!qword_27CE61F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61F60);
  }

  return result;
}

uint64_t sub_21D802184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D7FB43C(a1, v4, v5, v6);
}

uint64_t TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRRemoveTemplatePresenterCapability.__allocating_init(interactor:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_21D0D0FD0(a1, v2 + 16);
  return v2;
}

uint64_t TTRRemoveTemplatePresenterCapability.deleteTemplate(_:potentiallyLongOperationPerformer:presentAlert:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_21DBF563C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v5[15] = swift_task_alloc();
  v7 = sub_21DBFAE0C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = sub_21DBFA84C();
  v5[20] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v5[21] = v9;
  v5[22] = v8;

  return MEMORY[0x2822009F8](sub_21D8024C4, v9, v8);
}

uint64_t sub_21D8024C4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_21DBFAE1C();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D459D8])
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x277D459C8])
  {
    v8 = *(v0 + 64);
    *(v0 + 307) = 0;
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_21D802724;
    v7 = v0 + 307;
    goto LABEL_6;
  }

  if (v4 == *MEMORY[0x277D459D0])
  {
LABEL_3:
    v5 = *(v0 + 64);
    *(v0 + 304) = 1;
    v11 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 192) = v6;
    *v6 = v0;
    v6[1] = sub_21D802954;
    v7 = v0 + 304;
LABEL_6:

    return v11(v7);
  }

  return sub_21DBFC63C();
}

uint64_t sub_21D802724(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;

  v4 = *(v2 + 176);
  v5 = *(v2 + 168);

  return MEMORY[0x2822009F8](sub_21D80284C, v5, v4);
}

uint64_t sub_21D80284C()
{
  if (*(v0 + 24) == 1)
  {
    *(v0 + 200) = sub_21DBFA83C();
    v2 = sub_21DBFA7CC();
    *(v0 + 208) = v2;
    *(v0 + 216) = v1;

    return MEMORY[0x2822009F8](sub_21D802B84, v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t sub_21D802954(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 40) = a1;
  *(v3 + 32) = v1;

  v4 = *(v2 + 176);
  v5 = *(v2 + 168);

  return MEMORY[0x2822009F8](sub_21D802A7C, v5, v4);
}

uint64_t sub_21D802A7C()
{
  if (*(v0 + 40) == 1)
  {
    *(v0 + 200) = sub_21DBFA83C();
    v2 = sub_21DBFA7CC();
    *(v0 + 208) = v2;
    *(v0 + 216) = v1;

    return MEMORY[0x2822009F8](sub_21D802B84, v2, v1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t sub_21D802B84()
{
  v1 = v0[15];
  v2 = v0[7];
  v4 = v2[4];
  v3 = v2[5];
  v5 = swift_allocObject();
  v0[28] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = v2[2];
  v0[29] = v6;
  v7 = sub_21DBFA89C();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = sub_21D0E6070;
  v8[6] = v5;

  v0[30] = sub_21D3932A8(0, 0, v1, &unk_21DC2A950, v8);
  sub_21D0EC98C(v1);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v0[31] = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  v0[32] = v10;
  v0[33] = v9;

  return MEMORY[0x2822009F8](sub_21D802D1C, v10, v9);
}

uint64_t sub_21D802D1C()
{
  v1 = *(v0 + 10);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 34) = v4;
  *v4 = v0;
  v4[1] = sub_21D802E50;
  v5 = *(v0 + 6);

  return v7(v0 + 305, v5, v2, v3);
}

uint64_t sub_21D802E50()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_21D802F70, v3, v2);
}

uint64_t sub_21D802F70()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_21D802FD4, v1, v2);
}

uint64_t sub_21D802FD4()
{
  v1 = *(v0 + 56);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  if (*(v1 + 24) == 1 && (v2 = *(v0 + 232), sub_21DBF558C(), v2 + 5.0 - v3 > 0.0))
  {
    v4 = sub_21DBFC86C();
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = sub_21D80319C;

    return MEMORY[0x282200480](v4);
  }

  else
  {
    v6 = *(v0 + 56);
    sub_21DBFA96C();
    v9 = (*(v6 + 48) + **(v6 + 48));
    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = sub_21D8033D0;

    return v9();
  }
}

uint64_t sub_21D80319C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_21D803AD4;
  }

  else
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_21D8032C0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D8032C0()
{
  v1 = *(v0 + 56);
  sub_21DBFA96C();
  v4 = (*(v1 + 48) + **(v1 + 48));
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_21D8033D0;

  return v4();
}

uint64_t sub_21D8033D0()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_21D8034F0, v3, v2);
}

uint64_t sub_21D8034F0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  *(v0 + 308) = *(v0 + 305);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_21D8035B8, v6, v7);
}

uint64_t sub_21D8035B8()
{
  if (!*(v0 + 308))
  {
    v1 = 1;
    goto LABEL_5;
  }

  if (*(v0 + 308) == 1)
  {
    v1 = 0;
LABEL_5:

    v2 = *(v0 + 8);

    return v2(v1);
  }

  v4 = *(v0 + 64);
  *(v0 + 306) = 2;
  v6 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_21D803748;

  return v6(v0 + 306);
}

uint64_t sub_21D803748()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21D803868, v3, v2);
}

uint64_t sub_21D803868()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t TTRRemoveTemplatePresenterCapability.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D803954(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D1B795C;

  return sub_21D9968FC(v6, a1, v4, v5, v8, v7);
}

unint64_t sub_21D803A20()
{
  result = qword_27CE61F68;
  if (!qword_27CE61F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61F68);
  }

  return result;
}

uint64_t TTRListProtocol.isListRepresentationOfTemplate.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = [v2 entityName];

  v4 = sub_21DBFA16C();
  v6 = v5;

  v7 = [objc_opt_self() cdEntityName];
  v8 = sub_21DBFA16C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21DBFC64C();
  }

  return v12 & 1;
}

uint64_t sub_21D803BC4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21D830500(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21D804E5C(v6);
  return sub_21DBFBFFC();
}

uint64_t TTRListShareeContextProtocol.sortedSharees.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = sub_21DBF8E0C();
  v4 = sub_21D2FB25C(v2);
  sub_21D803BC4(&v4);

  return v4;
}

uint64_t TTRListShareeContextProtocol.assignableSharees.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = v2;
  v11 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 status] == 1)
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  return v9;
}

uint64_t TTRListShareeContextProtocol.sortedAssignableSharees.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  v2 = sub_21DBF8E0C();
  v4 = sub_21D2FB25C(v2);
  sub_21D803BC4(&v4);

  return v4;
}

void *sub_21D803EDC(uint64_t a1, uint64_t a2)
{
  v27 = sub_21DBF56BC();
  v4 = *(v27 - 8);
  v5 = MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 + 8) + 96))(v31, a1, v5);
  v8 = v32;
  if (v32)
  {
    v9 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v26 = (*(a2 + 16))(a1, a2);
    v28 = v11;
    if (v11)
    {
      if (v10 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v13 = 0;
        v24 = v10 & 0xFFFFFFFFFFFFFF8;
        v25 = v10 & 0xC000000000000001;
        v14 = (v4 + 8);
        while (1)
        {
          if (v25)
          {
            v15 = MEMORY[0x223D44740](v13, v10);
          }

          else
          {
            if (v13 >= *(v24 + 16))
            {
              goto LABEL_17;
            }

            v15 = *(v10 + 8 * v13 + 32);
          }

          v16 = v15;
          v4 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v17 = [v15 objectID];
          v18 = [v17 uuid];

          sub_21DBF568C();
          v19 = sub_21DBF565C();
          v21 = v20;
          (*v14)(v7, v27);
          v31[0] = v19;
          v31[1] = v21;
          v29 = v26;
          v30 = v28;
          sub_21D176F0C();
          v22 = sub_21DBFBB7C();

          if (!v22)
          {

            return v16;
          }

          ++v13;
          if (v4 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
    }
  }

  else
  {
    sub_21D0CF7E0(v31, &qword_27CE62630);
  }

  return 0;
}

uint64_t sub_21D8041CC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_21D0CF7E0(v5, qword_27CE61F88);
  }

  return v2;
}

uint64_t sub_21D804280(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = (*(v3 + 24))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_21D0CF7E0(v5, qword_27CE61F88);
  }

  return v2;
}

id sub_21D804330@<X0>(void *a1@<X8>)
{
  result = [*v1 customContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE61F80);
    v5 = &off_282ED41A0;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D8043E4@<X0>(void *a1@<X8>)
{
  result = [*v1 customContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE61F78);
    v5 = &off_282ED41C0;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMList.ttrShareeContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 shareeContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D177C8);
    v5 = &protocol witness table for REMListShareeContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMList.ttrSectionContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 sectionContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE61F70);
    v5 = &protocol witness table for REMListSectionContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMList.ttrGroceryContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 groceryContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &unk_280D0C250);
    v5 = &protocol witness table for REMListGroceryContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804610@<X0>(void *a1@<X8>)
{
  result = [*v1 shareeContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D177C8);
    v5 = &protocol witness table for REMListShareeContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804684@<X0>(void *a1@<X8>)
{
  result = [*v1 sectionContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE61F70);
    v5 = &protocol witness table for REMListSectionContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D8046F8@<X0>(void *a1@<X8>)
{
  result = [*v1 groceryContext];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &unk_280D0C250);
    v5 = &protocol witness table for REMListGroceryContext;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804770()
{
  v1 = [v0 appearanceContext];
  v2 = [v1 badge];

  return v2;
}

uint64_t REMListChangeItem.ttrShareeContext.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 accountCapabilities];
  v4 = [v3 supportsListSharees];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D446C0]) initWithListChangeItem_];
    result = sub_21D0D8CF0(0, &qword_280D176F0);
    v7 = &protocol witness table for REMListShareeContextChangeItem;
  }

  else
  {
    result = 0;
    v7 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = result;
  a1[4] = v7;
  *a1 = v5;
  return result;
}

id REMListChangeItem.ttrSectionContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 sectionsContextChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE59228);
    v5 = &protocol witness table for REMListSectionContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id REMListChangeItem.ttrGroceryContext.getter@<X0>(void *a1@<X8>)
{
  result = [v1 groceryContextChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D0C220);
    v5 = &protocol witness table for REMListGroceryContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804968()
{
  v1 = [*v0 appearanceContext];
  v2 = [v1 badge];

  return v2;
}

uint64_t sub_21D8049D8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 accountCapabilities];
  v5 = [v4 supportsListSharees];

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D446C0]) initWithListChangeItem_];
    result = sub_21D0D8CF0(0, &qword_280D176F0);
    v8 = &protocol witness table for REMListShareeContextChangeItem;
  }

  else
  {
    result = 0;
    v8 = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = result;
  a1[4] = v8;
  *a1 = v6;
  return result;
}

id sub_21D804A94@<X0>(void *a1@<X8>)
{
  result = [*v1 sectionsContextChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_27CE59228);
    v5 = &protocol witness table for REMListSectionContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id sub_21D804B08@<X0>(void *a1@<X8>)
{
  result = [*v1 groceryContextChangeItem];
  v4 = result;
  if (result)
  {
    result = sub_21D0D8CF0(0, &qword_280D0C220);
    v5 = &protocol witness table for REMListGroceryContextChangeItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_21D804B7C()
{
  v1 = [*v0 sharees];
  sub_21D0D8CF0(0, &qword_280D17640);
  v2 = sub_21DBFA5EC();

  return v2;
}

uint64_t _sSo21REMListGroceryContextC15RemindersUICoreE03ttrB8LocaleIDSSSgvg_0()
{
  v1 = [v0 groceryLocaleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t sub_21D804C98(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_21DBFA16C();

  return v6;
}

id sub_21D804D38(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v4 *a2];

  return v5;
}

uint64_t sub_21D804DD4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_21DBFA16C();

  return v5;
}

void sub_21D804E5C(uint64_t *a1)
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
        sub_21D0D8CF0(0, &qword_280D17640);
        v6 = sub_21DBFA69C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21D80505C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_21D804F70(0, v2, 1, a1);
  }
}

void sub_21D804F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = sub_21DBFB65C();
      v14 = sub_21DBFB65C();

      if (v13 >= v14)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v15;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D80505C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_86:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v9 = sub_21D82E300(v9);
    }

    v91 = *(v9 + 2);
    if (v91 >= 2)
    {
      while (*v6)
      {
        v92 = v9;
        v9 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_21D805684((*v6 + 8 * v93), (*v6 + 8 * *&v92[16 * v91 + 16]), (*v6 + 8 * v94), v8);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v94 < v93)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_21D82E300(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_112;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_21D82E274(v91 - 1);
        v9 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_122;
    }

LABEL_96:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v104 = v7;
      v100 = v9;
      v11 = 8 * v10;
      v12 = (*v6 + 8 * v10);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = *(*v6 + 8 * v8);
      v16 = v14;
      v106 = sub_21DBFB65C();
      v17 = sub_21DBFB65C();

      v98 = v10;
      v18 = (v10 + 2);
      while (1)
      {
        v8 = v104;
        if (v104 == v18)
        {
          break;
        }

        v19 = *(v13 - 1);
        v20 = *v13;
        v21 = v19;
        v22 = sub_21DBFB65C();
        v23 = sub_21DBFB65C();

        ++v18;
        ++v13;
        if (v106 < v17 == v22 >= v23)
        {
          v8 = (v18 - 1);
          break;
        }
      }

      v9 = v100;
      v6 = a3;
      v10 = v98;
      if (v106 < v17)
      {
        if (v8 < v98)
        {
          goto LABEL_115;
        }

        if (v98 < v8)
        {
          v24 = 8 * v8 - 8;
          v25 = v8;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v27 = *(v28 + v11);
              *(v28 + v11) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v11 += 8;
          }

          while (v26 < v25);
        }
      }
    }

    v29 = v6[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_114;
      }

      if (v8 - v10 < a4)
      {
        v30 = (v10 + a4);
        if (__OFADD__(v10, a4))
        {
          goto LABEL_116;
        }

        if (v30 >= v29)
        {
          v30 = v6[1];
        }

        if (v30 < v10)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v8 != v30)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v8 < v10)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21D210B90(0, *(v9 + 2) + 1, 1, v9);
    }

    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v9 = sub_21D210B90((v44 > 1), v45 + 1, 1, v9);
    }

    *(v9 + 2) = v46;
    v47 = &v9[16 * v45];
    *(v47 + 4) = v10;
    *(v47 + 5) = v8;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_123;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v9 + 4);
          v51 = *(v9 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_55:
          if (v53)
          {
            goto LABEL_102;
          }

          v66 = &v9[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_105;
          }

          v72 = &v9[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_109;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v76 = &v9[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_69:
        if (v71)
        {
          goto LABEL_104;
        }

        v79 = &v9[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_107;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_76:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_117;
        }

        if (!*v6)
        {
          goto LABEL_120;
        }

        v88 = *&v9[16 * v87 + 32];
        v89 = *&v9[16 * v49 + 40];
        sub_21D805684((*v6 + 8 * v88), (*v6 + 8 * *&v9[16 * v49 + 32]), (*v6 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v89 < v88)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_21D82E300(v9);
        }

        if (v87 >= *(v9 + 2))
        {
          goto LABEL_99;
        }

        v90 = &v9[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_21D82E274(v49);
        v46 = *(v9 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v9[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_100;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_101;
      }

      v61 = &v9[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_103;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_106;
      }

      if (v65 >= v57)
      {
        v83 = &v9[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_86;
    }
  }

  v101 = v9;
  v102 = v5;
  v31 = *v6;
  v32 = *v6 + 8 * v8 - 8;
  v99 = v10;
  v33 = v10 - v8;
  v105 = v30;
LABEL_28:
  v107 = v8;
  v34 = *(v31 + 8 * v8);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = sub_21DBFB65C();
    v41 = sub_21DBFB65C();

    if (v40 >= v41)
    {
LABEL_27:
      v8 = (v107 + 1);
      v32 += 8;
      --v33;
      if (v107 + 1 != v105)
      {
        goto LABEL_28;
      }

      v8 = v105;
      v9 = v101;
      v5 = v102;
      v6 = a3;
      v10 = v99;
      goto LABEL_35;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_21D805684(char *__src, void **a2, id *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v38 = &a4[8 * v8];
    v14 = a4;
    if (v6 < 8)
    {
LABEL_10:
      v15 = v5;
      goto LABEL_36;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v18 = *v14;
      v19 = *v12;
      v20 = v18;
      v21 = sub_21DBFB65C();
      v22 = sub_21DBFB65C();

      if (v21 < v22)
      {
        break;
      }

      v16 = v14;
      v17 = v5 == v14++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v5;
      if (v14 >= v38)
      {
        goto LABEL_10;
      }
    }

    v16 = v12;
    v17 = v5 == v12++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v5 = *v16;
    goto LABEL_13;
  }

  v14 = a4;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v23 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v23;
  }

  v15 = a2;
  v38 = &v14[v11];
  if (v9 >= 8 && a2 > v5)
  {
    v36 = v5;
LABEL_25:
    __dst = v15;
    v24 = v15 - 1;
    --v4;
    v25 = v38;
    do
    {
      v26 = v14;
      v27 = v4 + 1;
      v28 = *--v25;
      v29 = v24;
      v30 = *v24;
      v31 = v28;
      v32 = v30;
      v33 = sub_21DBFB65C();
      v34 = sub_21DBFB65C();

      if (v33 < v34)
      {
        if (v27 != __dst)
        {
          *v4 = *v29;
        }

        v14 = v26;
        if (v38 <= v26 || (v15 = v29, v29 <= v36))
        {
          v15 = v29;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v27 != v38)
      {
        *v4 = *v25;
      }

      --v4;
      v38 = v25;
      v14 = v26;
      v24 = v29;
    }

    while (v25 > v26);
    v38 = v25;
    v15 = __dst;
  }

LABEL_36:
  if (v15 != v14 || v15 >= (v14 + ((v38 - v14 + (v38 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v14, 8 * (v38 - v14));
  }

  return 1;
}

id TTRShowCustomSmartListTemplateContext.sourceListForSavingAsTemplate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 1;
  return v2;
}

uint64_t TTRShowCustomSmartListTemplateContext.__allocating_init(customSmartList:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRShowCustomSmartListTemplateContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21D805C04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = 1;
  return v2;
}

uint64_t REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(reminder:forEvaluatingAgainst:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v115 - v8;
  MEMORY[0x28223BE20](v9);
  v131 = &v115 - v10;
  v11 = sub_21DBF7F4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v15 - 8);
  v121 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = &v115 - v18;
  MEMORY[0x28223BE20](v19);
  v130 = &v115 - v20;
  MEMORY[0x28223BE20](v21);
  v132 = &v115 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v115 - v24;
  MEMORY[0x28223BE20](v26);
  v128 = &v115 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v115 - v29;
  v31 = sub_21DBF56BC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v34 = v32 + 56;
  v124 = v30;
  v33(v30, 1, 1, v31);
  sub_21DBF7F0C();
  v134 = a2;
  LOBYTE(v30) = sub_21D1E3158(v14, a2);
  v35 = *(v12 + 8);
  v35(v14, v11);
  v126 = v12 + 8;
  v127 = v25;
  v133 = v35;
  if (v30)
  {
    v36 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v36);
    v38 = (*(v37 + 8))(v36, v37);
    v39 = [v38 uuid];

    v40 = v128;
    sub_21DBF568C();

    v41 = v11;
    v42 = v124;
    sub_21D0CF7E0(v124, &qword_27CE58370);
    v33(v40, 0, 1, v31);
    v43 = v40;
    v44 = v42;
    v11 = v41;
    v25 = v127;
    v35 = v133;
    sub_21D0D523C(v43, v44, &qword_27CE58370);
  }

  v125 = v34;
  v33(v25, 1, 1, v31);
  sub_21DBF7EDC();
  v45 = sub_21D1E3158(v14, v134);
  v35(v14, v11);
  if (v45)
  {
    v46 = a1[3];
    v47 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v46);
    (*(v47 + 184))(v135, v46, v47);
    v48 = v136;
    if (v136)
    {
      v49 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      v50 = (*(v49 + 8))(v48, v49);
      v51 = [v50 uuid];

      v52 = v132;
      sub_21DBF568C();

      v25 = v127;
      sub_21D0CF7E0(v127, &qword_27CE58370);
      v33(v52, 0, 1, v31);
      __swift_destroy_boxed_opaque_existential_0(v135);
    }

    else
    {
      v25 = v127;
      sub_21D0CF7E0(v127, &qword_27CE58370);
      sub_21D0CF7E0(v135, &qword_27CE59DC0);
      v52 = v132;
      v33(v132, 1, 1, v31);
    }

    sub_21D0D523C(v52, v25, &qword_27CE58370);
    v35 = v133;
  }

  v33(v130, 1, 1, v31);
  sub_21DBF7EEC();
  v53 = sub_21D1E3158(v14, v134);
  v132 = v11;
  v35(v14, v11);
  if (v53)
  {
    v54 = a1[3];
    v55 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v54);
    v56 = (*(v55 + 16))(v54, v55);
    v57 = [v56 uuid];

    v58 = v25;
    v59 = v128;
    sub_21DBF568C();

    v60 = v130;
    sub_21D0CF7E0(v130, &qword_27CE58370);
    v33(v59, 0, 1, v31);
    v61 = v59;
    v25 = v58;
    v62 = v60;
    v35 = v133;
    sub_21D0D523C(v61, v62, &qword_27CE58370);
  }

  v63 = sub_21DBF563C();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v66 = v64 + 56;
  v65(v131, 1, 1, v63);
  sub_21DBF7ECC();
  v67 = sub_21D1E3158(v14, v134);
  v35(v14, v132);
  v129 = a1;
  if (v67 & 1) != 0 || (sub_21DBF7F3C(), v68 = sub_21D1E3158(v14, v134), v35(v14, v132), (v68))
  {
    v117 = v66;
    v118 = v65;
    v125 = v63;
    v70 = a1[3];
    v69 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v70);
    v71 = *(v69 + 104);
    v72 = v71(v70, v69);
    v116 = v71;
    if (v72)
    {
      v73 = v72;
      v74 = [v72 date];

      v75 = v119;
      sub_21DBF55FC();

      v76 = 0;
    }

    else
    {
      v76 = 1;
      v75 = v119;
    }

    v77 = v131;
    sub_21D0CF7E0(v131, &qword_27CE58D68);
    v118(v75, v76, 1, v125);
    sub_21D0D523C(v75, v77, &qword_27CE58D68);
    v78 = v116;
    v79 = v116(v70, v69);
    if (v79)
    {
      v80 = v79;
      LODWORD(v125) = [v79 isAllDay];
    }

    else
    {
      LODWORD(v125) = 2;
    }

    v25 = v127;
    v81 = v132;
    v82 = v78(v70, v69);
    if (v82)
    {
      v83 = v82;
      v119 = [v82 floatingDateSecondsFromGMT];

      LODWORD(v118) = 0;
    }

    else
    {
      v119 = 0;
      LODWORD(v118) = 1;
    }

    a1 = v129;
    v35 = v133;
  }

  else
  {
    v119 = 0;
    LODWORD(v125) = 2;
    LODWORD(v118) = 1;
    v81 = v132;
  }

  sub_21DBF7F1C();
  v84 = sub_21D1E3158(v14, v134);
  v35(v14, v81);
  if (v84)
  {
    v85 = a1[3];
    v86 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v85);
    v87 = (*(v86 + 80))(v85, v86);
    if (v87)
    {
      v88 = v87;
      if (v87 >> 62)
      {
        v89 = sub_21DBFBD7C();
        if (v89)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v89)
        {
LABEL_27:
          v135[0] = MEMORY[0x277D84F90];
          result = sub_21DBFC01C();
          if (v89 < 0)
          {
            __break(1u);
            return result;
          }

          v91 = 0;
          do
          {
            if ((v88 & 0xC000000000000001) != 0)
            {
              v92 = MEMORY[0x223D44740](v91, v88);
            }

            else
            {
              v92 = *(v88 + 8 * v91 + 32);
            }

            v93 = v92;
            ++v91;
            v94 = [v92 trigger];

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
          }

          while (v89 != v91);

          v117 = v135[0];
          a1 = v129;
          v25 = v127;
          goto LABEL_38;
        }
      }

      v117 = MEMORY[0x277D84F90];
    }

    else
    {
      v117 = 0;
    }

LABEL_38:
    v81 = v132;
    v35 = v133;
    goto LABEL_39;
  }

  v117 = 0;
LABEL_39:
  sub_21DBF7EBC();
  v95 = sub_21D1E3158(v14, v134);
  v35(v14, v81);
  LODWORD(v132) = v95;
  if (v95)
  {
    v96 = v25;
    v97 = a1[3];
    v98 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v97);
    v99 = *(v98 + 88);
    v100 = v97;
    v35 = v133;
    v101 = v98;
    v25 = v96;
    v99(v100, v101);
    v127 = REMReminderPriorityLevelForPriority();
  }

  else
  {
    v127 = 0;
  }

  sub_21DBF7EFC();
  v102 = sub_21D1E3158(v14, v134);
  v35(v14, v81);
  if (v102)
  {
    v103 = v25;
    v104 = a1[3];
    v105 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v104);
    (*(v105 + 200))(v135, v104, v105);
    v106 = v136;
    if (v136)
    {
      v107 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      LOBYTE(v126) = (*(v107 + 16))(v106, v107) & 1;
      LODWORD(v126) = v126;
      __swift_destroy_boxed_opaque_existential_0(v135);
    }

    else
    {
      sub_21D0CF7E0(v135, &qword_27CE5D100);
      LODWORD(v126) = 2;
    }

    v25 = v103;
    v35 = v133;
  }

  else
  {
    LODWORD(v126) = 2;
  }

  sub_21DBF7F2C();
  v108 = sub_21D1E3158(v14, v134);

  v35(v14, v81);
  if (v108)
  {
    v109 = v129[3];
    v110 = v129[4];
    __swift_project_boxed_opaque_existential_1(v129, v109);
    v111 = (*(v110 + 64))(v109, v110) & 1;
  }

  else
  {
    v111 = 2;
  }

  LODWORD(v134) = v111;
  v112 = v124;
  sub_21D0D3954(v124, v128, &qword_27CE58370);
  sub_21D0D3954(v25, v120, &qword_27CE58370);
  v113 = v130;
  sub_21D0D3954(v130, v121, &qword_27CE58370);
  v114 = v131;
  sub_21D0D3954(v131, v122, &qword_27CE58D68);
  sub_21DBF7EAC();
  sub_21D0CF7E0(v114, &qword_27CE58D68);
  sub_21D0CF7E0(v113, &qword_27CE58370);
  sub_21D0CF7E0(v25, &qword_27CE58370);
  sub_21D0CF7E0(v112, &qword_27CE58370);
  return __swift_destroy_boxed_opaque_existential_0(v129);
}

uint64_t sub_21D806A14()
{
  result = swift_checkMetadataState();
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

BOOL sub_21D806ACC(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  sub_21D807088(&v11 - v6);
  (*(*((v3 & v2) + 0x58) + 8))(v4);
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
  }

  return v9 != 0;
}

uint64_t sub_21D806BF0(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v47 = (*MEMORY[0x277D85000] & *v2);
  v6 = *((v5 & v4) + 0x50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_21DBFB95C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB97C();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_21D3032C8(v17);
  }

  v42 = v14;
  v43 = v19;
  v44 = v18;
  v45 = a1;
  (*(v19 + 32))(v21, v17, v18);
  sub_21D807088(v11);
  v23 = v47[11];
  v41 = *(v23 + 8);
  v41(v6, v23);
  v47 = v24;
  v25 = v46;
  v26 = *(v7 + 8);
  v26(v11, v6);
  sub_21DBFB92C();
  v47 = v2;
  sub_21D807088(v25);
  v41(v6, v23);
  v28 = v27;
  v26(v25, v6);
  if (v28)
  {
    v29 = sub_21DBFA12C();
  }

  else
  {
    v29 = 0;
  }

  v30 = v45;
  v31 = MEMORY[0x277D85000];
  [v45 setAccessibilityValue_];

  v32 = v47;
  v33 = (*((*v31 & *v47) + 0x80))();
  v35 = v43;
  v34 = v44;
  if ((v33 & 1) == 0)
  {
    v36 = [objc_opt_self() secondaryLabelColor];
  }

  sub_21DBFB89C();
  v37 = v42;
  (*(v35 + 16))(v42, v21, v34);
  (*(v35 + 56))(v37, 0, 1, v34);
  v38 = sub_21DBFB98C();
  if (sub_21D8071F0(v38))
  {
    LODWORD(v39) = *(v32 + *((*v31 & *v32) + 0x70));
  }

  else
  {
    LODWORD(v39) = 1148846080;
  }

  [v30 setContentCompressionResistancePriority:0 forAxis:v39];
  return (*(v35 + 8))(v21, v34);
}

uint64_t sub_21D807088@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

void (*sub_21D80713C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D8071BC;
}

void sub_21D8071BC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_21D807330();
  }
}

BOOL sub_21D8071F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - v6;
  sub_21D807088(&v13 - v6);
  v8 = (*(*((v3 & v2) + 0x58) + 8))(v4);
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (!v10)
  {
    return 0;
  }

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 != 0;
}

void sub_21D807330()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  sub_21D806BF0(v1);
}

id sub_21D8073D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIReminderCellQuickBarMenuButtonViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21D807444(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  swift_unknownObjectRelease();
  v3 = *&a1[*((*v2 & *a1) + 0x78)];
}

id sub_21D807534()
{
  v0 = sub_21D807674();

  return v0;
}

uint64_t sub_21D80756C(uint64_t a1, uint64_t a2)
{
  sub_21D8076A0(a1);
  v4 = *(*(*(a2 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_21D8075D8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_21D80713C(v2);
  return sub_21D25A3E8;
}

id sub_21D807648()
{
  v0 = sub_21D807674();

  return v0;
}

void sub_21D8076A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  sub_21D807330();
}

void *TTRDeferredAction.__allocating_init(queue:)(uint64_t a1)
{
  v2 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v2);
  v3 = swift_allocObject();
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  sub_21D0D8A50(&qword_280D0C860, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v3[5] = sub_21DBF5EEC();
  v3[6] = v4;
  v3[4] = a1;
  return v3;
}

Swift::Void __swiftcall TTRDeferredAction.scheduleNextRunLoop(reason:)(Swift::String reason)
{
  v2 = v1;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v5 = sub_21DBF9D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D5C();
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = *(v2 + 40);
  v18 = v2;
  v19 = countAndFlagsBits;
  v20 = object;
  sub_21DBF5EFC();

  sub_21DBF814C();

  if (v21 == 1)
  {
    v16 = *(v2 + 32);
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_21D808210;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_91;
    v13 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v21 = MEMORY[0x277D84F90];
    sub_21D0D8A50(&qword_280D1B920, MEMORY[0x277D85198]);
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v11, v8, v13);
    _Block_release(v13);
    (*(v6 + 8))(v8, v5);
    (*(v17 + 8))(v11, v15);
  }
}

uint64_t TTRDeferredAction.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRDeferredAction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

void *TTRDeferredAction.init(queue:)(uint64_t a1)
{
  v3 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v3);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  sub_21D0D8A50(&qword_280D0C860, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v1[5] = sub_21DBF5EEC();
  v1[6] = v4;
  v1[4] = a1;
  return v1;
}

uint64_t sub_21D807F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(v8 + 2);
  swift_beginAccess();
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_21D210A84(0, v9 + 1, 1, v8);
    *(a1 + 48) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_21D210A84((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  *(a1 + 48) = v8;
  result = swift_endAccess();
  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D80804C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_21DBF5EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21DBF814C();

    if (*(v7 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
      v4 = sub_21DBFA07C();
      v6 = v5;

      (*(v2 + 8))(v1, v4, v6, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t TTRDeferredAction.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRDeferredAction.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _s15RemindersUICore17TTRDeferredActionC5drain6reasonySS_tF_0()
{
  v1 = v0;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[4];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_21DBF9DAC();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v17 = v1[5];
    sub_21DBF5EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21DBF814C();

    v10 = v16;
    if (*(v16 + 16) && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v11 = v1[3];
      ObjectType = swift_getObjectType();
      v17 = v10;
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
      v13 = sub_21DBFA07C();
      v15 = v14;

      (*(v11 + 8))(v1, v13, v15, ObjectType, v11);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D808544@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 48);
  *(v1 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21D808598()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62010);
  v1 = __swift_project_value_buffer(v0, qword_27CE62010);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D808660(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
  v5 = type metadata accessor for TTRReminderDetailViewModel(0);
  result = (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController] = 0;
  v7 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_preferredContentSizeUpdater] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_firstViewDidAppearCalled] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_prefersHalfPageSheetPresentation] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_currentTextInputModeObserver] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_needsTableCellResize] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_textSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationToggleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationQuickPicksCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationVehicleDetailCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationDetailOptionsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personTriggerSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personToggleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personUnsetDetailCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personSetDetailCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAssigneeOptionsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___pickersSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___priorityLevelOptionsCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___listCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___sectionCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtaskSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___attachmentsGroup] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___addAttachmentCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_urlSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___organizationSection] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flagAndPrioritySection] = 0;
  if (qword_280D19D68 != -1)
  {
    result = swift_once();
  }

  v8 = *(off_280D19D70 + 2);
  if (v8)
  {
    sub_21D0CEB98(off_280D19D70 + 32 * v8, v20);
    swift_dynamicCast();
    v18 = v21;
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter] = v21;
    v9 = v22;
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_localUndoManager] = v22;
    v10 = &v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration];
    v11 = *&v24[16];
    v12 = v23[3];
    v10[2] = v23[2];
    v10[3] = v12;
    v10[4] = *v24;
    *(v10 + 73) = *&v24[9];
    v13 = v23[1];
    *v10 = v23[0];
    v10[1] = v13;
    v14 = v23[0];
    type metadata accessor for TTRIReminderDetailDueDateViewControllerCapability();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0u;
    *(v15 + 120) = 0u;
    *(v15 + 136) = 0u;
    *(v15 + 152) = 0u;
    *(v15 + 168) = 0u;
    *(v15 + 184) = 0u;
    *(v15 + 200) = 0u;
    *(v15 + 216) = 0;
    *(v15 + 224) = 0x1FFFFFFFCLL;
    *(v15 + 232) = 0u;
    *(v15 + 248) = 0u;
    *(v15 + 264) = 0;
    *(v15 + 40) = v18;
    *(v15 + 48) = &off_282ED50F0;
    *(v15 + 56) = v11;
    *(v15 + 64) = v14;
    *&v1[v7] = v15;
    swift_unknownObjectRetain_n();
    v16 = v9;
    sub_21D81A254(v23, v20);

    v19.receiver = v1;
    v19.super_class = ObjectType;
    result = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
    v17 = result;
    if (!result)
    {
      sub_21D81A2B0(&v21);

      return v17;
    }

    if (*(result + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability))
    {

      sub_21D81A2B0(&v21);
      swift_unknownObjectWeakAssign();

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21D808B50()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  v4 = sub_21DBFA12C();
  [v3 setAccessibilityIdentifier_];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  [result setEditing_];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v6 setTableHeaderView_];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  [result setKeyboardDismissMode_];

  v9 = &v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration];
  if (v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 88] != 1)
  {
LABEL_9:
    sub_21D808DEC();
    v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] = v9[64];
    type metadata accessor for TTRICurrentTextInputModeObserver();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
    swift_allocObject();
    *(v12 + 24) = sub_21DBF907C();
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_currentTextInputModeObserver] = v12;

    v13 = *(*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_inCellEditingPresenterHelper);

    sub_21D8442C8(v14, v13);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    type metadata accessor for TTRIPreferredContentSizeUpdater();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    swift_unknownObjectWeakAssign();
    *(v11 + 24) = v10;
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_preferredContentSizeUpdater] = v11;

    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_21D808DEC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v26 - v4;
  v6 = v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 24];
  v7 = v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 25];
  v8 = *&v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 32];
  v9 = *&v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 40];
  if (*&v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 16])
  {
    v10 = sub_21DBFA12C();
    [v1 setTitle_];

    v11 = &selRef_keyboardType;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v22 = *&v0[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter];
  sub_21D81D608(v5);
  v23 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v23 - 8) + 48))(v5, 1, v23) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE62270);
    v24 = 0;
  }

  else
  {
    v24 = v5[*(v23 + 40)];
    sub_21D819F20(v5, type metadata accessor for TTRReminderDetailViewModel);
  }

  _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO21assignmentPickerTitle9withCount14isForGroceriesSSSi_SbtFZ_0(*(v22 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_itemCount), v24);
  v25 = sub_21DBFA12C();

  [v1 setTitle_];

  v11 = &selRef_keyboardType;
  if (v6)
  {
LABEL_3:
    v12 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel_];
    v13 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton;
    v14 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton];
    *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton] = v12;

    v15 = [v1 v11[417]];
    v16 = *&v1[v13];
    [v15 setLeftBarButtonItem_];
  }

LABEL_4:
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_280D0C300);
    v26[3] = ObjectType;
    v26[0] = v1;
    sub_21DBF8E0C();
    v17 = v1;
    v18 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)(v8, v9, v26, sel_didTapCommit_);
    v19 = *&v17[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton];
    *&v17[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton] = v18;
    v20 = v18;

    v21 = [v17 v11[417]];
    [v21 setRightBarButtonItem_];
  }
}

void sub_21D809134(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRReminderDetailViewModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = aBlock - v14;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewWillAppear_, a1 & 1, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_21D8178CC(Strong, a1 & 1, v2);

    sub_21D81D608(v15);
    v18 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_viewModel;
    swift_beginAccess();
    sub_21D0F02F4(v15, &v2[v18], &qword_27CE62270);
    swift_endAccess();
    sub_21D0D3954(&v2[v18], v11, &qword_27CE62270);
    if ((*(v6 + 48))(v11, 1, v5) == 1)
    {
      sub_21D0CF7E0(v11, &qword_27CE62270);
    }

    else
    {
      sub_21D819EB0(v11, v8, type metadata accessor for TTRReminderDetailViewModel);
      if (!*&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController])
      {
        sub_21D809510(v8);
      }

      v19 = *&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_commitButton];
      if (v19)
      {
        [v19 setEnabled_];
      }

      sub_21D819F20(v8, type metadata accessor for TTRReminderDetailViewModel);
    }

    sub_21DA94AA8();
    if (*&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_currentTextInputModeObserver])
    {

      TTRICurrentTextInputModeObserver.startObserving()();
    }

    v20 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance;
    if (v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_beginsEditingTitleOnAppearance] == 1)
    {
      v21 = [v2 transitionCoordinator];
      if (v21)
      {
        v22 = v21;
        if ([v21 isAnimated])
        {
          v2[v20] = 0;
          v23 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_21D819EA8;
          aBlock[5] = v23;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21D83EFE8;
          aBlock[3] = &block_descriptor_44_2;
          v24 = _Block_copy(aBlock);

          [v22 animateAlongsideTransition:v24 completion:0];
          _Block_release(v24);
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D809510(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  if (!*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController))
  {
    v90 = a1;
    v91 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 56) & 0x81;
    v92 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableDataController;
    v93 = (v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration);
    v94 = v5;
    v107 = 0uLL;
    memset(v108, 0, sizeof(v108));
    v105 = 0uLL;
    v106 = 0uLL;
    v103 = 0uLL;
    memset(v104, 0, sizeof(v104));
    v101 = 0uLL;
    v102 = 0uLL;
    if (v11 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21DC08D20;
      *(v12 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C);
      *(v12 + 40) = &protocol witness table for TTRITableCell<A>;
      *(v12 + 48) = sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell, sub_21D80B4A4);
      *(v12 + 56) = &protocol witness table for TTRITableCell<A>;
      type metadata accessor for TTRITableSection();
      v13 = swift_allocObject();
      *(v13 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v13 + 200) = 0;
      *(v13 + 208) = 0;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 89) = 0u;
      *(v13 + 32) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 169) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 216) = 1;
      swift_beginAccess();
      sub_21D0F02F4(&v105, v13 + 32, &qword_27CE5E690);
      swift_endAccess();
      swift_beginAccess();
      sub_21D0F02F4(&v101, v13 + 112, &qword_27CE5E690);
      swift_endAccess();
      *(v13 + 192) = v12;
      v107 = 0u;
      memset(v108, 0, sizeof(v108));
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      memset(v104, 0, sizeof(v104));
      v101 = 0u;
      v102 = 0u;
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_21DC08D00;

      *(v14 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC);
      *(v14 + 40) = &protocol witness table for TTRITableCell<A>;
      v15 = swift_allocObject();
      *(v15 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v15 + 200) = 0;
      *(v15 + 208) = 0;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 80) = 0u;
      *(v15 + 89) = 0u;
      *(v15 + 32) = 0u;
      *(v15 + 128) = 0u;
      *(v15 + 144) = 0u;
      *(v15 + 160) = 0u;
      *(v15 + 169) = 0u;
      *(v15 + 112) = 0u;
      *(v15 + 216) = 1;
      swift_beginAccess();
      sub_21D0F02F4(&v105, v15 + 32, &qword_27CE5E690);
      swift_endAccess();
      swift_beginAccess();
      v16 = v13;
      sub_21D0F02F4(&v101, v15 + 112, &qword_27CE5E690);
      swift_endAccess();
      v96 = v15;
      *(v15 + 192) = v14;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21DC08D10;
      *(v17 + 32) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C);
      *(v17 + 40) = &protocol witness table for TTRITableCell<A>;
      *(v17 + 48) = sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell, sub_21D80B4A4);
      *(v17 + 56) = &protocol witness table for TTRITableCell<A>;
      *(v17 + 64) = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___urlCell, sub_21D8116EC);
      *(v17 + 72) = &protocol witness table for TTRITableCell<A>;
      type metadata accessor for TTRITableSection();
      v16 = swift_allocObject();
      *(v16 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v16 + 200) = 0;
      *(v16 + 208) = 0;
      *(v16 + 48) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 89) = 0u;
      *(v16 + 32) = 0u;
      *(v16 + 128) = 0u;
      *(v16 + 144) = 0u;
      *(v16 + 160) = 0u;
      *(v16 + 169) = 0u;
      *(v16 + 112) = 0u;
      *(v16 + 216) = 1;
      swift_beginAccess();
      sub_21D0F02F4(&v105, v16 + 32, &qword_27CE5E690);
      swift_endAccess();
      swift_beginAccess();
      sub_21D0F02F4(&v101, v16 + 112, &qword_27CE5E690);
      swift_endAccess();
      *(v16 + 192) = v17;

      v96 = 0;
    }

    v99[0] = v16;
    v99[1] = &protocol witness table for TTRITableSection;

    v99[2] = sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___appLinkCell, sub_21D80BA14);
    v99[3] = &protocol witness table for TTRITableSection;
    v18 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability;
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_dueDateCapability))
    {
      v95 = v16;

      v19 = sub_21D52E3C4();

      v99[4] = v19;
      v99[5] = &protocol witness table for TTRITableSection;
      if (*(v2 + v18))
      {

        v20 = sub_21D52E6EC();

        v21 = 0;
        v99[6] = v20;
        v99[7] = &protocol witness table for TTRITableSection;
        v22 = MEMORY[0x277D84F90];
LABEL_14:
        v23 = 4;
        if (v21 > 4)
        {
          v23 = v21;
        }

        v24 = v23 + 1;
        v25 = &v99[2 * v21];
        while (v21 != 4)
        {
          if (v24 == ++v21)
          {
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v26 = v25 + 2;
          v27 = *v25;
          v25 += 2;
          if (v27)
          {
            v28 = *(v26 - 1);
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_21D214B74(0, v22[2] + 1, 1, v22);
            }

            v30 = v22[2];
            v29 = v22[3];
            if (v30 >= v29 >> 1)
            {
              v22 = sub_21D214B74((v29 > 1), v30 + 1, 1, v22);
            }

            v22[2] = v30 + 1;
            v31 = &v22[2 * v30];
            v31[4] = v27;
            v31[5] = v28;
            goto LABEL_14;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62278);
        swift_arrayDestroy();
        v100 = v22;
        if (*v93)
        {
          v97[0] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___organizationSection, sub_21D811E88);
          v97[1] = &protocol witness table for TTRITableSection;
          v97[2] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flagAndPrioritySection, sub_21D8121EC);
          v97[3] = &protocol witness table for TTRITableSection;
          v97[4] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection, sub_21D811A30);
          v97[5] = &protocol witness table for TTRITableSection;
          v97[6] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personTriggerSection, sub_21D80D35C);
          v97[7] = &protocol witness table for TTRITableSection;
          v97[8] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection, sub_21D80E400);
          v97[9] = &protocol witness table for TTRITableSection;
          v97[10] = sub_21D810A64();
          v97[11] = &protocol witness table for TTRITableSection;
          if (v96)
          {
            v32 = &protocol witness table for TTRITableSection;
          }

          else
          {
            v32 = 0;
          }

          v97[12] = v96;
          v97[13] = v32;

          v33 = 0;
          v34 = MEMORY[0x277D84F90];
LABEL_30:
          v35 = 7;
          if (v33 > 7)
          {
            v35 = v33;
          }

          v36 = v35 + 1;
          v37 = &v97[2 * v33];
          while (v33 != 7)
          {
            if (v36 == ++v33)
            {
              goto LABEL_61;
            }

            v38 = v37 + 2;
            v39 = *v37;
            v37 += 2;
            if (v39)
            {
              v40 = *(v38 - 1);
              swift_unknownObjectRetain();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_21D214B74(0, v34[2] + 1, 1, v34);
              }

              v42 = v34[2];
              v41 = v34[3];
              if (v42 >= v41 >> 1)
              {
                v34 = sub_21D214B74((v41 > 1), v42 + 1, 1, v34);
              }

              v34[2] = v42 + 1;
              v43 = &v34[2 * v42];
              v43[4] = v39;
              v43[5] = v40;
              goto LABEL_30;
            }
          }
        }

        else
        {
          v98[0] = sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___hashtagsCell, sub_21D80BE44);
          v98[1] = &protocol witness table for TTRITableSection;
          v98[2] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___locationSection, sub_21D811A30);
          v98[3] = &protocol witness table for TTRITableSection;
          v98[4] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___personTriggerSection, sub_21D80D35C);
          v98[5] = &protocol witness table for TTRITableSection;
          v98[6] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___assigneeSection, sub_21D80E400);
          v98[7] = &protocol witness table for TTRITableSection;
          v98[8] = sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___flaggedToggleCell, sub_21D80F4B4);
          v98[9] = &protocol witness table for TTRITableSection;
          v98[10] = sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___pickersSection, sub_21D80EC88);
          v98[11] = &protocol witness table for TTRITableSection;
          v98[12] = sub_21D8103F8(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtaskSection, &OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___subtasksCell, sub_21D8105B4);
          v98[13] = &protocol witness table for TTRITableSection;
          v98[14] = sub_21D810A64();
          v98[15] = &protocol witness table for TTRITableSection;
          if (v96)
          {
            v44 = &protocol witness table for TTRITableSection;
          }

          else
          {
            v44 = 0;
          }

          v98[16] = v96;
          v98[17] = v44;

          v45 = 0;
          v34 = MEMORY[0x277D84F90];
LABEL_45:
          v46 = 9;
          if (v45 > 9)
          {
            v46 = v45;
          }

          v47 = v46 + 1;
          v48 = &v98[2 * v45];
          while (v45 != 9)
          {
            if (v47 == ++v45)
            {
              goto LABEL_62;
            }

            v49 = v48 + 2;
            v50 = *v48;
            v48 += 2;
            if (v50)
            {
              v51 = *(v49 - 1);
              swift_unknownObjectRetain();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_21D214B74(0, v34[2] + 1, 1, v34);
              }

              v53 = v34[2];
              v52 = v34[3];
              if (v53 >= v52 >> 1)
              {
                v34 = sub_21D214B74((v52 > 1), v53 + 1, 1, v34);
              }

              v34[2] = v53 + 1;
              v54 = &v34[2 * v53];
              v54[4] = v50;
              v54[5] = v51;
              goto LABEL_45;
            }
          }
        }

        swift_arrayDestroy();
        sub_21D563434(v34);
        v55 = v96;
        *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_textSection) = v95;

        v56 = OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_urlSection;
        swift_beginAccess();
        *(v2 + v56) = v55;

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v58 = Strong;
          v59 = v100;
          sub_21DBF8E0C();
          v60 = sub_21D5E8D34(v58, v59, 0, 0);
          v61 = &v60[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_customSectionSpacing];
          swift_beginAccess();
          *v61 = 0x4030000000000000;
          v61[8] = 0;
          v62 = *(v2 + v92);
          *(v2 + v92) = v60;
          v63 = v60;

          v64 = swift_unknownObjectWeakLoadStrong();
          if (!v64)
          {
            goto LABEL_67;
          }

          v65 = v64;
          [v64 setDataSource_];

          v66 = swift_unknownObjectWeakLoadStrong();
          if (v66)
          {
            v67 = v66;

            [v67 setDelegate_];

            LOBYTE(v105) = 2;
            MEMORY[0x28223BE20](v68);
            v69 = v90;
            *(&v87 - 2) = v2;
            *(&v87 - 1) = v69;
            TTRITableDataController.performBatchUpdates(by:updates:)(&v105, sub_21D819F18);
            v90 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C) + 32);

            v70 = *(v2 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_presenter);
            v71 = *(v70 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_makeCellTitleModule);
            v72 = v70 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor;
            v73 = *(v70 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
            ObjectType = swift_getObjectType();
            v75 = (*(v73 + 16))(ObjectType, v73);
            v76 = [v75 objectID];

            v92 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
            v77 = *(v92 + 20);
            v78 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v79 = *(v78 - 8);
            v88 = *(v79 + 56);
            v89 = v79 + 56;
            v93 = v63;
            v80 = v91;
            v88(&v91[v77], 1, 1, v78);
            *v80 = v76;
            swift_storeEnumTagMultiPayload();
            v71(&v105, v80, v70, &off_282ED4FB8, v2, &off_282ED4718, v2);
            sub_21D819F20(v80, type metadata accessor for TTRRemindersListViewModel.Item);
            v81 = v90;
            TTRIReminderTitleCellContent.titleModule.setter(&v105);

            v82 = *(sub_21D80CF08(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___notesCell, sub_21D80B4A4) + 32);

            v90 = *(v70 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_makeCellNotesModule);
            v83 = *(v72 + 8);
            v84 = swift_getObjectType();
            v85 = (*(v83 + 16))(v84, v83);
            v86 = [v85 objectID];

            v88(&v80[*(v92 + 20)], 1, 1, v78);
            *v80 = v86;
            swift_storeEnumTagMultiPayload();
            (v90)(&v105, v80, v70, &off_282ED4FB8, v2, &off_282ED4708, v2);
            sub_21D819F20(v80, type metadata accessor for TTRRemindersListViewModel.Item);
            TTRIReminderNotesCellContent.notesModule.setter(&v105);

            return;
          }

          goto LABEL_68;
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_66;
  }

  if (qword_27CE56D00 != -1)
  {
LABEL_63:
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE62010);
  v96 = sub_21DBF84AC();
  v8 = sub_21DBFAECC();
  if (os_log_type_enabled(v96, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21D0C9000, v96, v8, "buildSections is called more than once", v9, 2u);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  v10 = v96;
}

void sub_21D80A4E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(sub_21D80B9AC(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell, sub_21D80AF6C) + 32);

    v3 = MEMORY[0x277D85000];
    v4 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
    swift_beginAccess();
    v5 = *(v2 + v4);
    if (v5)
    {
      v6 = *(v5 + qword_27CE63F48);
      v7 = [v6 window];
      [v7 makeKeyWindow];

      [v6 becomeFirstResponder];
      v2 = v6;
    }

    v8 = *(*&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController____lazy_storage___titleCell] + 32);
    v9 = *((*v3 & *v8) + 0x68);
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (v10)
    {
      v11 = *(v10 + qword_27CE63F48);
      v12 = v8;
      v13 = [v11 beginningOfDocument];
      v14 = [v11 endOfDocument];
      v15 = [v11 textRangeFromPosition:v13 toPosition:v14];

      [v11 setSelectedTextRange_];
    }
  }
}