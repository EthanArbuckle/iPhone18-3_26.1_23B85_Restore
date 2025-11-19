char *initializeWithTake for TTRRemindersListTreeViewModel.Section(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_5;
    }

LABEL_12:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4 && EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = sub_21DBF563C();
  (*(*(v8 - 8) + 32))(a1, a2, v8);
  swift_storeEnumTagMultiPayload();
LABEL_13:
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = *(v12 + 3);
  *(v11 + 2) = *(v12 + 2);
  *(v11 + 3) = v13;
  v14 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v14;
  *(v11 + 106) = *(v12 + 106);
  v15 = *(v12 + 6);
  *(v11 + 5) = *(v12 + 5);
  *(v11 + 6) = v15;
  *(v11 + 4) = *(v12 + 4);
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  a1[v9[10]] = a2[v9[10]];
  *&a1[v9[11]] = *&a2[v9[11]];
  v16 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  a1[v16] = a2[v16];
  return a1;
}

char *assignWithTake for TTRRemindersListTreeViewModel.Section(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106918(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_6;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_6:
      v8 = sub_21DBF563C();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_14:
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  if (*&a1[v10 + 8])
  {
    v13 = *(v12 + 1);
    if (v13)
    {
      *v11 = *v12;
      *(v11 + 8) = v13;

      v14 = v12[64];
      v15 = *(v11 + 16);
      v16 = *(v11 + 24);
      v17 = *(v11 + 32);
      v18 = *(v11 + 40);
      v19 = *(v11 + 48);
      v20 = *(v11 + 56);
      v21 = *(v12 + 2);
      *(v11 + 16) = *(v12 + 1);
      *(v11 + 32) = v21;
      *(v11 + 48) = *(v12 + 3);
      v22 = *(v11 + 64);
      *(v11 + 64) = v14;
      sub_21D179EF0(v15, v16, v17, v18, v19, v20, v22);
      *(v11 + 65) = *(v12 + 65);
      *(v11 + 67) = v12[67];
      *(v11 + 68) = v12[68];
      v23 = *(v11 + 120);
      if (v23 != 255)
      {
        v24 = v12[120];
        if (v24 != 255)
        {
          v25 = *(v11 + 72);
          v26 = *(v11 + 80);
          v27 = *(v11 + 88);
          v28 = *(v11 + 96);
          v29 = *(v11 + 104);
          v30 = *(v11 + 112);
          *(v11 + 72) = *(v12 + 72);
          *(v11 + 88) = *(v12 + 88);
          *(v11 + 104) = *(v12 + 104);
          *(v11 + 120) = v24 & 1;
          sub_21D1078C0(v25, v26, v27, v28, v29, v30, v23 & 1);
LABEL_23:
          *(v11 + 121) = v12[121];
          goto LABEL_24;
        }

        sub_21D2E979C(v11 + 72);
      }

      *(v11 + 72) = *(v12 + 72);
      *(v11 + 88) = *(v12 + 88);
      *(v11 + 104) = *(v12 + 104);
      *(v11 + 120) = v12[120];
      goto LABEL_23;
    }

    sub_21D179E9C(v11);
  }

  v31 = *(v12 + 5);
  *(v11 + 64) = *(v12 + 4);
  *(v11 + 80) = v31;
  *(v11 + 96) = *(v12 + 6);
  *(v11 + 106) = *(v12 + 106);
  v32 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 16) = v32;
  v33 = *(v12 + 3);
  *(v11 + 32) = *(v12 + 2);
  *(v11 + 48) = v33;
LABEL_24:
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  a1[v9[10]] = a2[v9[10]];
  v34 = v9[11];
  v35 = *&a1[v34];
  *&a1[v34] = *&a2[v34];

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

uint64_t sub_21D2E9ED0()
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListTreeViewModel.SectionsContainer(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_18;
    }

LABEL_14:
    v11 = *v3;
    *a1 = *v3;
    v12 = v11;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_11;
      }

LABEL_18:
      memcpy(a1, v3, *(*(v7 - 8) + 64));
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_11:
  v10 = sub_21DBF563C();
  (*(*(v10 - 8) + 16))(a1, v3, v10);
  swift_storeEnumTagMultiPayload();
LABEL_19:
  v13 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v14 = v13[5];
  v15 = a1 + v14;
  v16 = v3 + v14;
  v17 = *(v3 + v14 + 8);
  if (v17)
  {
    v40 = v6;
    v41 = v3;
    v42 = a1;
    *v15 = *v16;
    *(v15 + 1) = v17;
    v18 = *(v16 + 2);
    v19 = *(v16 + 3);
    v20 = *(v16 + 4);
    v21 = *(v16 + 5);
    v22 = *(v16 + 6);
    v23 = *(v16 + 7);
    v24 = v16[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v18, v19, v20, v21, v22, v23, v24);
    *(v15 + 2) = v18;
    *(v15 + 3) = v19;
    *(v15 + 4) = v20;
    *(v15 + 5) = v21;
    *(v15 + 6) = v22;
    *(v15 + 7) = v23;
    v15[64] = v24;
    *(v15 + 65) = *(v16 + 65);
    v25 = v16[120];
    if (v25 == 255)
    {
      *(v15 + 72) = *(v16 + 72);
      *(v15 + 88) = *(v16 + 88);
      *(v15 + 104) = *(v16 + 104);
      v15[120] = v16[120];
    }

    else
    {
      v26 = *(v16 + 9);
      v27 = *(v16 + 10);
      v28 = *(v16 + 11);
      v29 = *(v16 + 12);
      v30 = *(v16 + 13);
      v31 = *(v16 + 14);
      v32 = v25 & 1;
      sub_21D0FB960(v26, v27, v28, v29, v30, v31, v25 & 1);
      *(v15 + 9) = v26;
      *(v15 + 10) = v27;
      *(v15 + 11) = v28;
      *(v15 + 12) = v29;
      *(v15 + 13) = v30;
      *(v15 + 14) = v31;
      v15[120] = v32;
    }

    v6 = v40;
    v3 = v41;
    v15[121] = v16[121];
    a1 = v42;
  }

  else
  {
    v33 = *(v16 + 5);
    *(v15 + 4) = *(v16 + 4);
    *(v15 + 5) = v33;
    *(v15 + 6) = *(v16 + 6);
    *(v15 + 106) = *(v16 + 106);
    v34 = *(v16 + 1);
    *v15 = *v16;
    *(v15 + 1) = v34;
    v35 = *(v16 + 3);
    *(v15 + 2) = *(v16 + 2);
    *(v15 + 3) = v35;
  }

  *(a1 + v13[6]) = *(v3 + v13[6]);
  *(a1 + v13[7]) = *(v3 + v13[7]);
  *(a1 + v13[8]) = *(v3 + v13[8]);
  *(a1 + v13[9]) = *(v3 + v13[9]);
  *(a1 + v13[10]) = *(v3 + v13[10]);
  v36 = v13[11];
  v37 = *(v3 + v36);
  *(a1 + v36) = v37;
  *(a1 + *(v6 + 20)) = *(v3 + *(v6 + 20));
  v38 = v37;
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21D2EA41C(id *a1)
{
  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }

LABEL_12:

      goto LABEL_13;
    }

LABEL_9:
    v3 = sub_21DBF563C();
    (*(*(v3 - 8) + 8))(a1, v3);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
  {
    goto LABEL_9;
  }

LABEL_13:
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = a1 + *(v4 + 20);
  if (*(v5 + 1))
  {

    sub_21D179EF0(*(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7), v5[64]);
    v6 = v5[120];
    if (v6 != 255)
    {
      sub_21D1078C0(*(v5 + 9), *(v5 + 10), *(v5 + 11), *(v5 + 12), *(v5 + 13), *(v5 + 14), v6 & 1);
    }
  }
}

void **initializeWithCopy for TTRRemindersListTreeViewModel.SectionsContainer(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 2)
    {
LABEL_9:
      v8 = sub_21DBF563C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_12:
    v9 = *a2;
    *a1 = *a2;
    v10 = v9;
    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
  {
    goto LABEL_9;
  }

LABEL_16:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_17:
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v12 = v11[5];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a2 + v12 + 8);
  if (v15)
  {
    v38 = a3;
    v39 = a2;
    v40 = a1;
    *v13 = *v14;
    *(v13 + 1) = v15;
    v16 = *(v14 + 2);
    v17 = *(v14 + 3);
    v18 = *(v14 + 4);
    v19 = *(v14 + 5);
    v20 = *(v14 + 6);
    v21 = *(v14 + 7);
    v22 = v14[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v16, v17, v18, v19, v20, v21, v22);
    *(v13 + 2) = v16;
    *(v13 + 3) = v17;
    *(v13 + 4) = v18;
    *(v13 + 5) = v19;
    *(v13 + 6) = v20;
    *(v13 + 7) = v21;
    v13[64] = v22;
    *(v13 + 65) = *(v14 + 65);
    v23 = v14[120];
    if (v23 == 255)
    {
      *(v13 + 72) = *(v14 + 72);
      *(v13 + 88) = *(v14 + 88);
      *(v13 + 104) = *(v14 + 104);
      v13[120] = v14[120];
    }

    else
    {
      v24 = *(v14 + 9);
      v25 = *(v14 + 10);
      v26 = *(v14 + 11);
      v27 = *(v14 + 12);
      v28 = *(v14 + 13);
      v29 = *(v14 + 14);
      v30 = v23 & 1;
      sub_21D0FB960(v24, v25, v26, v27, v28, v29, v23 & 1);
      *(v13 + 9) = v24;
      *(v13 + 10) = v25;
      *(v13 + 11) = v26;
      *(v13 + 12) = v27;
      *(v13 + 13) = v28;
      *(v13 + 14) = v29;
      v13[120] = v30;
    }

    a3 = v38;
    a2 = v39;
    v13[121] = v14[121];
    a1 = v40;
  }

  else
  {
    v31 = *(v14 + 5);
    *(v13 + 4) = *(v14 + 4);
    *(v13 + 5) = v31;
    *(v13 + 6) = *(v14 + 6);
    *(v13 + 106) = *(v14 + 106);
    v32 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v32;
    v33 = *(v14 + 3);
    *(v13 + 2) = *(v14 + 2);
    *(v13 + 3) = v33;
  }

  *(a1 + v11[6]) = *(a2 + v11[6]);
  *(a1 + v11[7]) = *(a2 + v11[7]);
  *(a1 + v11[8]) = *(a2 + v11[8]);
  *(a1 + v11[9]) = *(a2 + v11[9]);
  *(a1 + v11[10]) = *(a2 + v11[10]);
  v34 = v11[11];
  v35 = *(a2 + v34);
  *(a1 + v34) = v35;
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v36 = v35;
  sub_21DBF8E0C();
  return a1;
}

void **assignWithCopy for TTRRemindersListTreeViewModel.SectionsContainer(void **a1, void **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D106918(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 2)
      {
LABEL_10:
        v8 = sub_21DBF563C();
        (*(*(v8 - 8) + 16))(a1, v4, v8);
        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }

LABEL_13:
      v9 = *v4;
      *a1 = *v4;
      v10 = v9;
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
        goto LABEL_13;
      }
    }

    else if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
      goto LABEL_10;
    }

LABEL_17:
    memcpy(a1, v4, *(*(v6 - 8) + 64));
  }

LABEL_18:
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v12 = v11[5];
  v13 = a1 + v12;
  v14 = v4 + v12;
  v15 = *(a1 + v12 + 8);
  v16 = *(v4 + v12 + 8);
  if (v15)
  {
    if (v16)
    {
      v84 = v11;
      v85 = a3;
      v86 = v4;
      *v13 = *v14;
      *(v13 + 8) = *(v14 + 1);
      sub_21DBF8E0C();

      v17 = *(v14 + 2);
      v18 = *(v14 + 3);
      v19 = *(v14 + 4);
      v20 = *(v14 + 5);
      v22 = *(v14 + 6);
      v21 = *(v14 + 7);
      v23 = v14[64];
      sub_21D2A7DB4(v17, v18, v19, v20, v22, v21, v23);
      v24 = *(v13 + 16);
      v25 = *(v13 + 24);
      v26 = *(v13 + 32);
      v27 = *(v13 + 40);
      v28 = *(v13 + 48);
      v29 = *(v13 + 56);
      *(v13 + 16) = v17;
      *(v13 + 24) = v18;
      *(v13 + 32) = v19;
      *(v13 + 40) = v20;
      *(v13 + 48) = v22;
      *(v13 + 56) = v21;
      v30 = *(v13 + 64);
      *(v13 + 64) = v23;
      sub_21D179EF0(v24, v25, v26, v27, v28, v29, v30);
      *(v13 + 65) = v14[65];
      *(v13 + 66) = v14[66];
      *(v13 + 67) = v14[67];
      *(v13 + 68) = v14[68];
      v31 = v14[120];
      if (*(v13 + 120) != 255)
      {
        if (v31 == 255)
        {
          sub_21D2E979C(v13 + 72);
          v76 = *(v14 + 88);
          v77 = *(v14 + 104);
          v78 = v14[120];
          *(v13 + 72) = *(v14 + 72);
          *(v13 + 120) = v78;
          *(v13 + 104) = v77;
          *(v13 + 88) = v76;
        }

        else
        {
          v32 = *(v14 + 9);
          v33 = *(v14 + 10);
          v34 = *(v14 + 11);
          v35 = *(v14 + 12);
          v36 = *(v14 + 13);
          v37 = *(v14 + 14);
          v38 = v31 & 1;
          sub_21D0FB960(v32, v33, v34, v35, v36, v37, v31 & 1);
          v39 = *(v13 + 72);
          v40 = *(v13 + 80);
          v41 = *(v13 + 88);
          v42 = *(v13 + 96);
          v43 = *(v13 + 104);
          v44 = *(v13 + 112);
          v45 = *(v13 + 120);
          *(v13 + 72) = v32;
          *(v13 + 80) = v33;
          *(v13 + 88) = v34;
          *(v13 + 96) = v35;
          *(v13 + 104) = v36;
          *(v13 + 112) = v37;
          *(v13 + 120) = v38;
          sub_21D1078C0(v39, v40, v41, v42, v43, v44, v45);
        }

LABEL_31:
        a3 = v85;
        v4 = v86;
        v11 = v84;
        *(v13 + 121) = v14[121];
        goto LABEL_32;
      }

LABEL_25:
      if (v31 == 255)
      {
        v67 = *(v14 + 72);
        v68 = *(v14 + 88);
        v69 = *(v14 + 104);
        *(v13 + 120) = v14[120];
        *(v13 + 104) = v69;
        *(v13 + 88) = v68;
        *(v13 + 72) = v67;
      }

      else
      {
        v53 = *(v14 + 9);
        v54 = *(v14 + 10);
        v55 = *(v14 + 11);
        v56 = *(v14 + 12);
        v57 = *(v14 + 13);
        v58 = *(v14 + 14);
        v59 = v31 & 1;
        sub_21D0FB960(v53, v54, v55, v56, v57, v58, v31 & 1);
        *(v13 + 72) = v53;
        *(v13 + 80) = v54;
        *(v13 + 88) = v55;
        *(v13 + 96) = v56;
        *(v13 + 104) = v57;
        *(v13 + 112) = v58;
        *(v13 + 120) = v59;
      }

      goto LABEL_31;
    }

    v60 = v11;
    sub_21D179E9C(v13);
    v11 = v60;
    v61 = *(v14 + 3);
    v63 = *v14;
    v62 = *(v14 + 1);
    *(v13 + 32) = *(v14 + 2);
    *(v13 + 48) = v61;
    *v13 = v63;
    *(v13 + 16) = v62;
    v65 = *(v14 + 5);
    v64 = *(v14 + 6);
    v66 = *(v14 + 4);
    *(v13 + 106) = *(v14 + 106);
    *(v13 + 80) = v65;
    *(v13 + 96) = v64;
    *(v13 + 64) = v66;
  }

  else
  {
    if (v16)
    {
      v84 = v11;
      v85 = a3;
      v86 = v4;
      *v13 = *v14;
      *(v13 + 8) = *(v14 + 1);
      v46 = *(v14 + 2);
      v47 = *(v14 + 3);
      v48 = *(v14 + 4);
      v49 = *(v14 + 5);
      v50 = *(v14 + 6);
      v51 = *(v14 + 7);
      v52 = v14[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v46, v47, v48, v49, v50, v51, v52);
      *(v13 + 16) = v46;
      *(v13 + 24) = v47;
      *(v13 + 32) = v48;
      *(v13 + 40) = v49;
      *(v13 + 48) = v50;
      *(v13 + 56) = v51;
      *(v13 + 64) = v52;
      *(v13 + 65) = v14[65];
      *(v13 + 66) = v14[66];
      *(v13 + 67) = v14[67];
      *(v13 + 68) = v14[68];
      v31 = v14[120];
      goto LABEL_25;
    }

    v70 = *v14;
    v71 = *(v14 + 1);
    v72 = *(v14 + 3);
    *(v13 + 32) = *(v14 + 2);
    *(v13 + 48) = v72;
    *v13 = v70;
    *(v13 + 16) = v71;
    v73 = *(v14 + 4);
    v74 = *(v14 + 5);
    v75 = *(v14 + 6);
    *(v13 + 106) = *(v14 + 106);
    *(v13 + 80) = v74;
    *(v13 + 96) = v75;
    *(v13 + 64) = v73;
  }

LABEL_32:
  *(a1 + v11[6]) = *(v4 + v11[6]);
  *(a1 + v11[7]) = *(v4 + v11[7]);
  *(a1 + v11[8]) = *(v4 + v11[8]);
  *(a1 + v11[9]) = *(v4 + v11[9]);
  *(a1 + v11[10]) = *(v4 + v11[10]);
  v79 = v11[11];
  v80 = *(a1 + v79);
  v81 = *(v4 + v79);
  *(a1 + v79) = v81;
  v82 = v81;

  *(a1 + *(a3 + 20)) = *(v4 + *(a3 + 20));
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTRRemindersListTreeViewModel.SectionsContainer(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_5;
    }

LABEL_12:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4 && EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = sub_21DBF563C();
  (*(*(v8 - 8) + 32))(a1, a2, v8);
  swift_storeEnumTagMultiPayload();
LABEL_13:
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = *(v12 + 3);
  *(v11 + 2) = *(v12 + 2);
  *(v11 + 3) = v13;
  v14 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v14;
  *(v11 + 106) = *(v12 + 106);
  v15 = *(v12 + 6);
  *(v11 + 5) = *(v12 + 5);
  *(v11 + 6) = v15;
  *(v11 + 4) = *(v12 + 4);
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  a1[v9[10]] = a2[v9[10]];
  *&a1[v9[11]] = *&a2[v9[11]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for TTRRemindersListTreeViewModel.SectionsContainer(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106918(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_6;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_6:
      v8 = sub_21DBF563C();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_14:
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v10 = v9[5];
  v11 = &a1[v10];
  v12 = &a2[v10];
  if (*&a1[v10 + 8])
  {
    v13 = *(v12 + 1);
    if (v13)
    {
      *v11 = *v12;
      *(v11 + 8) = v13;

      v14 = v12[64];
      v15 = *(v11 + 16);
      v16 = *(v11 + 24);
      v17 = *(v11 + 32);
      v18 = *(v11 + 40);
      v19 = *(v11 + 48);
      v20 = *(v11 + 56);
      v21 = *(v12 + 2);
      *(v11 + 16) = *(v12 + 1);
      *(v11 + 32) = v21;
      *(v11 + 48) = *(v12 + 3);
      v22 = *(v11 + 64);
      *(v11 + 64) = v14;
      sub_21D179EF0(v15, v16, v17, v18, v19, v20, v22);
      *(v11 + 65) = *(v12 + 65);
      *(v11 + 67) = v12[67];
      *(v11 + 68) = v12[68];
      v23 = *(v11 + 120);
      if (v23 != 255)
      {
        v24 = v12[120];
        if (v24 != 255)
        {
          v25 = *(v11 + 72);
          v26 = *(v11 + 80);
          v27 = *(v11 + 88);
          v28 = *(v11 + 96);
          v29 = *(v11 + 104);
          v30 = *(v11 + 112);
          *(v11 + 72) = *(v12 + 72);
          *(v11 + 88) = *(v12 + 88);
          *(v11 + 104) = *(v12 + 104);
          *(v11 + 120) = v24 & 1;
          sub_21D1078C0(v25, v26, v27, v28, v29, v30, v23 & 1);
LABEL_23:
          *(v11 + 121) = v12[121];
          goto LABEL_24;
        }

        sub_21D2E979C(v11 + 72);
      }

      *(v11 + 72) = *(v12 + 72);
      *(v11 + 88) = *(v12 + 88);
      *(v11 + 104) = *(v12 + 104);
      *(v11 + 120) = v12[120];
      goto LABEL_23;
    }

    sub_21D179E9C(v11);
  }

  v31 = *(v12 + 5);
  *(v11 + 64) = *(v12 + 4);
  *(v11 + 80) = v31;
  *(v11 + 96) = *(v12 + 6);
  *(v11 + 106) = *(v12 + 106);
  v32 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 16) = v32;
  v33 = *(v12 + 3);
  *(v11 + 32) = *(v12 + 2);
  *(v11 + 48) = v33;
LABEL_24:
  a1[v9[6]] = a2[v9[6]];
  a1[v9[7]] = a2[v9[7]];
  a1[v9[8]] = a2[v9[8]];
  a1[v9[9]] = a2[v9[9]];
  a1[v9[10]] = a2[v9[10]];
  v34 = v9[11];
  v35 = *&a1[v34];
  *&a1[v34] = *&a2[v34];

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21D2EB83C()
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = a3;
  v212 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_33;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v38 > 2)
        {
          goto LABEL_115;
        }

        if (v38 == 1)
        {
          goto LABEL_114;
        }

        if (v38 != 2)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_33;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v37 > 2)
        {
          goto LABEL_115;
        }

        if (v37 == 1)
        {
          goto LABEL_114;
        }

        if (v37 != 2)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_115;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_36;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v204 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_66:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(a1, v3, v51);
          swift_storeEnumTagMultiPayload();
          goto LABEL_93;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_66;
          }

          goto LABEL_92;
        }

LABEL_69:
        v52 = *v3;
        *a1 = *v3;
        v53 = v52;
        swift_storeEnumTagMultiPayload();
        goto LABEL_93;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_69;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_66;
      }

LABEL_92:
      memcpy(a1, v3, *(*(v12 - 8) + 64));
LABEL_93:
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v58 = v57[5];
      v59 = a1 + v58;
      v60 = v3 + v58;
      v61 = *(v3 + v58 + 8);
      if (v61)
      {
        v200 = v3;
        v208 = a1;
        *v59 = *v60;
        *(v59 + 1) = v61;
        v62 = *(v60 + 2);
        v63 = *(v60 + 3);
        v64 = *(v60 + 4);
        v65 = *(v60 + 5);
        v66 = *(v60 + 6);
        v67 = *(v60 + 7);
        v68 = v60[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v62, v63, v64, v65, v66, v67, v68);
        *(v59 + 2) = v62;
        *(v59 + 3) = v63;
        *(v59 + 4) = v64;
        *(v59 + 5) = v65;
        *(v59 + 6) = v66;
        *(v59 + 7) = v67;
        v59[64] = v68;
        *(v59 + 65) = *(v60 + 65);
        v69 = v60[120];
        if (v69 == 255)
        {
          *(v59 + 72) = *(v60 + 72);
          *(v59 + 88) = *(v60 + 88);
          *(v59 + 104) = *(v60 + 104);
          v59[120] = v60[120];
        }

        else
        {
          v70 = *(v60 + 9);
          v71 = *(v60 + 10);
          v72 = *(v60 + 11);
          v73 = *(v60 + 12);
          v74 = *(v60 + 13);
          v75 = *(v60 + 14);
          v76 = v69 & 1;
          sub_21D0FB960(v70, v71, v72, v73, v74, v75, v69 & 1);
          *(v59 + 9) = v70;
          *(v59 + 10) = v71;
          *(v59 + 11) = v72;
          *(v59 + 12) = v73;
          *(v59 + 13) = v74;
          *(v59 + 14) = v75;
          v59[120] = v76;
        }

        v6 = v204;
        a1 = v208;
        v59[121] = v60[121];
        v3 = v200;
        goto LABEL_99;
      }

LABEL_96:
      v77 = *(v60 + 5);
      *(v59 + 4) = *(v60 + 4);
      *(v59 + 5) = v77;
      *(v59 + 6) = *(v60 + 6);
      *(v59 + 106) = *(v60 + 106);
      v78 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v78;
      v79 = *(v60 + 3);
      *(v59 + 2) = *(v60 + 2);
      *(v59 + 3) = v79;
LABEL_99:
      *(a1 + v57[6]) = *(v3 + v57[6]);
      *(a1 + v57[7]) = *(v3 + v57[7]);
      *(a1 + v57[8]) = *(v3 + v57[8]);
      *(a1 + v57[9]) = *(v3 + v57[9]);
      *(a1 + v57[10]) = *(v3 + v57[10]);
      v80 = v57[11];
      v81 = *(v3 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_130;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v205 = v6;
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_70:
        v54 = sub_21DBF563C();
        (*(*(v54 - 8) + 16))(a1, v3, v54);
        swift_storeEnumTagMultiPayload();
        goto LABEL_101;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_70;
        }

        goto LABEL_100;
      }

LABEL_73:
      v55 = *v3;
      *a1 = *v3;
      v56 = v55;
      swift_storeEnumTagMultiPayload();
      goto LABEL_101;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_73;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_70;
    }

LABEL_100:
    memcpy(a1, v3, *(*(v22 - 8) + 64));
LABEL_101:
    v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v57[5];
    v59 = a1 + v83;
    v60 = v3 + v83;
    v84 = *(v3 + v83 + 8);
    if (v84)
    {
      v201 = v3;
      v209 = a1;
      *v59 = *v60;
      *(v59 + 1) = v84;
      v85 = *(v60 + 2);
      v86 = *(v60 + 3);
      v87 = *(v60 + 4);
      v88 = *(v60 + 5);
      v89 = *(v60 + 6);
      v90 = *(v60 + 7);
      v91 = v60[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v85, v86, v87, v88, v89, v90, v91);
      *(v59 + 2) = v85;
      *(v59 + 3) = v86;
      *(v59 + 4) = v87;
      *(v59 + 5) = v88;
      *(v59 + 6) = v89;
      *(v59 + 7) = v90;
      v59[64] = v91;
      *(v59 + 65) = *(v60 + 65);
      v92 = v60[120];
      if (v92 == 255)
      {
        *(v59 + 72) = *(v60 + 72);
        *(v59 + 88) = *(v60 + 88);
        *(v59 + 104) = *(v60 + 104);
        v59[120] = v60[120];
      }

      else
      {
        v93 = *(v60 + 9);
        v94 = *(v60 + 10);
        v95 = *(v60 + 11);
        v96 = *(v60 + 12);
        v97 = *(v60 + 13);
        v98 = *(v60 + 14);
        v99 = v92 & 1;
        sub_21D0FB960(v93, v94, v95, v96, v97, v98, v92 & 1);
        *(v59 + 9) = v93;
        *(v59 + 10) = v94;
        *(v59 + 11) = v95;
        *(v59 + 12) = v96;
        *(v59 + 13) = v97;
        *(v59 + 14) = v98;
        v59[120] = v99;
      }

      v6 = v205;
      a1 = v209;
      v59[121] = v60[121];
      v3 = v201;
      goto LABEL_99;
    }

    goto LABEL_96;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v3;
      *(a1 + 8) = *(v3 + 8);
      *(a1 + 9) = *(v3 + 9);
      v20 = v3[2];
      a1[2] = v20;
      v21 = v20;
      goto LABEL_130;
    }

    v30 = *v3;
    *a1 = *v3;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    v31 = *(v17 + 48);
    v32 = v30;
    if (v31(v3 + v15, 1, v16))
    {
LABEL_33:
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v15, v3 + v15, *(*(v33 - 8) + 64));
      goto LABEL_130;
    }

    v48 = swift_getEnumCaseMultiPayload();
    if (v48 > 4)
    {
      if (v48 <= 7)
      {
        if (v48 == 5 || v48 == 6)
        {
          goto LABEL_115;
        }

        goto LABEL_128;
      }

      if (v48 != 8 && v48 != 9)
      {
        goto LABEL_128;
      }

LABEL_114:
      v100 = *(v3 + v15);
      *(a1 + v15) = v100;
      v101 = v100;
      swift_storeEnumTagMultiPayload();
LABEL_129:
      (*(v17 + 56))(a1 + v15, 0, 1, v16);
      goto LABEL_130;
    }

    if (v48 <= 2)
    {
      if (v48 != 1)
      {
        if (v48 == 2)
        {
          goto LABEL_115;
        }

LABEL_128:
        memcpy(a1 + v15, v3 + v15, *(v17 + 64));
        goto LABEL_129;
      }

      goto LABEL_114;
    }

LABEL_115:
    v102 = sub_21DBF563C();
    (*(*(v102 - 8) + 16))(a1 + v15, v3 + v15, v102);
    swift_storeEnumTagMultiPayload();
    goto LABEL_129;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v3, 1, v27))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(a1, v3, *(*(v29 - 8) + 64));
    }

    else
    {
      *a1 = *v3;
      v39 = *(v27 + 20);
      v40 = sub_21DBF6C1C();
      v41 = *(*(v40 - 8) + 16);
      sub_21DBF8E0C();
      v41(a1 + v39, v3 + v39, v40);
      (*(v28 + 56))(a1, 0, 1, v27);
    }

    v42 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v43 = (a1 + v42);
    v44 = (v3 + v42);
    v45 = v44[1];
    if (v45)
    {
      *v43 = *v44;
      v43[1] = v45;
      v46 = v44[2];
      v43[2] = v46;
      sub_21DBF8E0C();
      v47 = v46;
    }

    else
    {
      *v43 = *v44;
      v43[2] = v44[2];
    }

    goto LABEL_130;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v3, 1, v34))
    {
      v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, v3, *(*(v36 - 8) + 64));
    }

    else
    {
      v49 = sub_21DBF563C();
      (*(*(v49 - 8) + 16))(a1, v3, v49);
      *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
      (*(v35 + 56))(a1, 0, 1, v34);
    }

    v50 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v50 + 20)) = *(v3 + *(v50 + 20));
    goto LABEL_130;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_36:
    memcpy(a1, v3, *(*(v212 - 8) + 64));
    goto LABEL_131;
  }

  *a1 = *v3;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, v3 + v8, v9);
LABEL_130:
  swift_storeEnumTagMultiPayload();
LABEL_131:
  v103 = *(v6 + 20);
  v104 = (a1 + v103);
  v105 = (v3 + v103);
  v106 = swift_getEnumCaseMultiPayload();
  if (v106 <= 3)
  {
    if (v106 <= 1)
    {
      if (v106)
      {
        if (v106 != 1)
        {
          goto LABEL_163;
        }

        v109 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v110 = swift_getEnumCaseMultiPayload();
        v210 = a1;
        if (v110 <= 4)
        {
          if (v110 > 2)
          {
LABEL_193:
            v148 = sub_21DBF563C();
            (*(*(v148 - 8) + 16))(v104, v105, v148);
            swift_storeEnumTagMultiPayload();
            goto LABEL_220;
          }

          if (v110 != 1)
          {
            if (v110 == 2)
            {
              goto LABEL_193;
            }

            goto LABEL_219;
          }

LABEL_196:
          v149 = *v105;
          *v104 = *v105;
          v150 = v149;
          swift_storeEnumTagMultiPayload();
          goto LABEL_220;
        }

        if (v110 > 7)
        {
          if (v110 == 8 || v110 == 9)
          {
            goto LABEL_196;
          }
        }

        else if (v110 == 5 || v110 == 6)
        {
          goto LABEL_193;
        }

LABEL_219:
        memcpy(v104, v105, *(*(v109 - 8) + 64));
LABEL_220:
        v154 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v155 = v154[5];
        v156 = v104 + v155;
        v157 = v105 + v155;
        v158 = *(v105 + v155 + 8);
        if (v158)
        {
          v202 = v105;
          v206 = v104;
          *v156 = *v157;
          *(v156 + 1) = v158;
          v159 = *(v157 + 2);
          v160 = *(v157 + 3);
          v161 = *(v157 + 4);
          v162 = *(v157 + 5);
          v163 = *(v157 + 6);
          v164 = *(v157 + 7);
          v165 = v157[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v159, v160, v161, v162, v163, v164, v165);
          *(v156 + 2) = v159;
          *(v156 + 3) = v160;
          *(v156 + 4) = v161;
          *(v156 + 5) = v162;
          *(v156 + 6) = v163;
          *(v156 + 7) = v164;
          v156[64] = v165;
          *(v156 + 65) = *(v157 + 65);
          v166 = v157[120];
          if (v166 == 255)
          {
            *(v156 + 72) = *(v157 + 72);
            *(v156 + 88) = *(v157 + 88);
            *(v156 + 104) = *(v157 + 104);
            v156[120] = v157[120];
          }

          else
          {
            v167 = *(v157 + 9);
            v168 = *(v157 + 10);
            v169 = *(v157 + 11);
            v170 = *(v157 + 12);
            v171 = *(v157 + 13);
            v172 = *(v157 + 14);
            v173 = v166 & 1;
            sub_21D0FB960(v167, v168, v169, v170, v171, v172, v166 & 1);
            *(v156 + 9) = v167;
            *(v156 + 10) = v168;
            *(v156 + 11) = v169;
            *(v156 + 12) = v170;
            *(v156 + 13) = v171;
            *(v156 + 14) = v172;
            v156[120] = v173;
          }

          a1 = v210;
          v156[121] = v157[121];
          v105 = v202;
          v104 = v206;
          goto LABEL_226;
        }

LABEL_223:
        v174 = *(v157 + 5);
        *(v156 + 4) = *(v157 + 4);
        *(v156 + 5) = v174;
        *(v156 + 6) = *(v157 + 6);
        *(v156 + 106) = *(v157 + 106);
        v175 = *(v157 + 1);
        *v156 = *v157;
        *(v156 + 1) = v175;
        v176 = *(v157 + 3);
        *(v156 + 2) = *(v157 + 2);
        *(v156 + 3) = v176;
LABEL_226:
        *(v104 + v154[6]) = *(v105 + v154[6]);
        *(v104 + v154[7]) = *(v105 + v154[7]);
        *(v104 + v154[8]) = *(v105 + v154[8]);
        *(v104 + v154[9]) = *(v105 + v154[9]);
        *(v104 + v154[10]) = *(v105 + v154[10]);
        v177 = v154[11];
        v178 = *(v105 + v177);
        *(v104 + v177) = v178;
        v179 = v178;
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v119 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v120 = swift_getEnumCaseMultiPayload();
      v211 = a1;
      if (v120 <= 4)
      {
        if (v120 > 2)
        {
LABEL_197:
          v151 = sub_21DBF563C();
          (*(*(v151 - 8) + 16))(v104, v105, v151);
          swift_storeEnumTagMultiPayload();
          goto LABEL_228;
        }

        if (v120 != 1)
        {
          if (v120 == 2)
          {
            goto LABEL_197;
          }

          goto LABEL_227;
        }

LABEL_200:
        v152 = *v105;
        *v104 = *v105;
        v153 = v152;
        swift_storeEnumTagMultiPayload();
        goto LABEL_228;
      }

      if (v120 > 7)
      {
        if (v120 == 8 || v120 == 9)
        {
          goto LABEL_200;
        }
      }

      else if (v120 == 5 || v120 == 6)
      {
        goto LABEL_197;
      }

LABEL_227:
      memcpy(v104, v105, *(*(v119 - 8) + 64));
LABEL_228:
      v154 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v180 = v154[5];
      v156 = v104 + v180;
      v157 = v105 + v180;
      v181 = *(v105 + v180 + 8);
      if (v181)
      {
        v203 = v105;
        v207 = v104;
        *v156 = *v157;
        *(v156 + 1) = v181;
        v182 = *(v157 + 2);
        v183 = *(v157 + 3);
        v184 = *(v157 + 4);
        v185 = *(v157 + 5);
        v186 = *(v157 + 6);
        v187 = *(v157 + 7);
        v188 = v157[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v182, v183, v184, v185, v186, v187, v188);
        *(v156 + 2) = v182;
        *(v156 + 3) = v183;
        *(v156 + 4) = v184;
        *(v156 + 5) = v185;
        *(v156 + 6) = v186;
        *(v156 + 7) = v187;
        v156[64] = v188;
        *(v156 + 65) = *(v157 + 65);
        v189 = v157[120];
        if (v189 == 255)
        {
          *(v156 + 72) = *(v157 + 72);
          *(v156 + 88) = *(v157 + 88);
          *(v156 + 104) = *(v157 + 104);
          v156[120] = v157[120];
        }

        else
        {
          v190 = *(v157 + 9);
          v191 = *(v157 + 10);
          v192 = *(v157 + 11);
          v193 = *(v157 + 12);
          v194 = *(v157 + 13);
          v195 = *(v157 + 14);
          v196 = v189 & 1;
          sub_21D0FB960(v190, v191, v192, v193, v194, v195, v189 & 1);
          *(v156 + 9) = v190;
          *(v156 + 10) = v191;
          *(v156 + 11) = v192;
          *(v156 + 12) = v193;
          *(v156 + 13) = v194;
          *(v156 + 14) = v195;
          v156[120] = v196;
        }

        a1 = v211;
        v156[121] = v157[121];
        v105 = v203;
        v104 = v207;
        goto LABEL_226;
      }

      goto LABEL_223;
    }

    if (v106 == 2)
    {
      v121 = *v105;
      *v104 = *v105;
      v112 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v113 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v114 = *(v113 - 8);
      v122 = *(v114 + 48);
      v123 = v121;
      if (v122(v105 + v112, 1, v113))
      {
        goto LABEL_160;
      }

      v135 = swift_getEnumCaseMultiPayload();
      if (v135 > 4)
      {
        if (v135 <= 7)
        {
          if (v135 == 5 || v135 == 6)
          {
            goto LABEL_234;
          }

          goto LABEL_255;
        }

        if (v135 != 8 && v135 != 9)
        {
          goto LABEL_255;
        }

        goto LABEL_237;
      }

      if (v135 > 2)
      {
        goto LABEL_234;
      }

      if (v135 == 1)
      {
        goto LABEL_237;
      }

      if (v135 != 2)
      {
        goto LABEL_255;
      }
    }

    else
    {
      v111 = *v105;
      *v104 = *v105;
      v112 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v113 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v114 = *(v113 - 8);
      v115 = *(v114 + 48);
      v116 = v111;
      if (v115(v105 + v112, 1, v113))
      {
LABEL_160:
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v104 + v112, v105 + v112, *(*(v130 - 8) + 64));
LABEL_257:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v134 = swift_getEnumCaseMultiPayload();
      if (v134 > 4)
      {
        if (v134 <= 7)
        {
          if (v134 == 5 || v134 == 6)
          {
            goto LABEL_234;
          }

          goto LABEL_255;
        }

        if (v134 != 8 && v134 != 9)
        {
          goto LABEL_255;
        }

        goto LABEL_237;
      }

      if (v134 <= 2)
      {
        if (v134 == 1)
        {
          goto LABEL_237;
        }

        if (v134 != 2)
        {
          goto LABEL_255;
        }
      }
    }

LABEL_234:
    v197 = sub_21DBF563C();
    (*(*(v197 - 8) + 16))(v104 + v112, v105 + v112, v197);
    swift_storeEnumTagMultiPayload();
LABEL_256:
    (*(v114 + 56))(v104 + v112, 0, 1, v113);
    goto LABEL_257;
  }

  if (v106 <= 5)
  {
    if (v106 != 4)
    {
      *v104 = *v105;
      *(v104 + 8) = *(v105 + 8);
      *(v104 + 9) = *(v105 + 9);
      v117 = v105[2];
      v104[2] = v117;
      v118 = v117;
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v127 = *v105;
    *v104 = *v105;
    v112 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v113 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v114 = *(v113 - 8);
    v128 = *(v114 + 48);
    v129 = v127;
    if (v128(v105 + v112, 1, v113))
    {
      goto LABEL_160;
    }

    v145 = swift_getEnumCaseMultiPayload();
    if (v145 > 4)
    {
      if (v145 <= 7)
      {
        if (v145 == 5 || v145 == 6)
        {
          goto LABEL_234;
        }

        goto LABEL_255;
      }

      if (v145 != 8 && v145 != 9)
      {
        goto LABEL_255;
      }
    }

    else
    {
      if (v145 > 2)
      {
        goto LABEL_234;
      }

      if (v145 != 1)
      {
        if (v145 == 2)
        {
          goto LABEL_234;
        }

LABEL_255:
        memcpy(v104 + v112, v105 + v112, *(v114 + 64));
        goto LABEL_256;
      }
    }

LABEL_237:
    v198 = *(v105 + v112);
    *(v104 + v112) = v198;
    v199 = v198;
    swift_storeEnumTagMultiPayload();
    goto LABEL_256;
  }

  if (v106 == 6)
  {
    v124 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v125 = *(v124 - 8);
    if ((*(v125 + 48))(v105, 1, v124))
    {
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v104, v105, *(*(v126 - 8) + 64));
    }

    else
    {
      *v104 = *v105;
      v136 = *(v124 + 20);
      v137 = sub_21DBF6C1C();
      v138 = *(*(v137 - 8) + 16);
      sub_21DBF8E0C();
      v138(v104 + v136, v105 + v136, v137);
      (*(v125 + 56))(v104, 0, 1, v124);
    }

    v139 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v140 = (v104 + v139);
    v141 = (v105 + v139);
    v142 = v141[1];
    if (v142)
    {
      *v140 = *v141;
      v140[1] = v142;
      v143 = v141[2];
      v140[2] = v143;
      sub_21DBF8E0C();
      v144 = v143;
    }

    else
    {
      *v140 = *v141;
      v140[2] = v141[2];
    }

    goto LABEL_257;
  }

  if (v106 != 7)
  {
    if (v106 == 8)
    {
      *v104 = *v105;
      v107 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v108 = sub_21DBF8D7C();
      (*(*(v108 - 8) + 16))(v104 + v107, v105 + v107, v108);
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_163:
    memcpy(v104, v105, *(*(v212 - 8) + 64));
    return a1;
  }

  v131 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v132 = *(v131 - 8);
  if ((*(v132 + 48))(v105, 1, v131))
  {
    v133 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v104, v105, *(*(v133 - 8) + 64));
  }

  else
  {
    v146 = sub_21DBF563C();
    (*(*(v146 - 8) + 16))(v104, v105, v146);
    *(v104 + *(v131 + 20)) = *(v105 + *(v131 + 20));
    (*(v132 + 56))(v104, 0, 1, v131);
  }

  v147 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *(v104 + *(v147 + 20)) = *(v105 + *(v147 + 20));
  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(id *a1, uint64_t a2)
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
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

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
  v22 = a1 + *(a2 + 20);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 3)
  {
    if (v23 > 1)
    {
      goto LABEL_62;
    }

    if (v23 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v28 = swift_getEnumCaseMultiPayload();
    if (v28 > 4)
    {
      if (v28 <= 7)
      {
        if (v28 != 5 && v28 != 6)
        {
          goto LABEL_86;
        }

        goto LABEL_82;
      }

      if (v28 != 8 && v28 != 9)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v28 > 2)
      {
        goto LABEL_82;
      }

      if (v28 != 1)
      {
        if (v28 != 2)
        {
LABEL_86:
          v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v40 = &v22[*(v39 + 20)];
          if (*(v40 + 1))
          {

            sub_21D179EF0(*(v40 + 2), *(v40 + 3), *(v40 + 4), *(v40 + 5), *(v40 + 6), *(v40 + 7), v40[64]);
            v41 = v40[120];
            if (v41 != 255)
            {
              sub_21D1078C0(*(v40 + 9), *(v40 + 10), *(v40 + 11), *(v40 + 12), *(v40 + 13), *(v40 + 14), v41 & 1);
            }
          }

          v29 = *&v22[*(v39 + 44)];
          goto LABEL_90;
        }

LABEL_82:
        v38 = sub_21DBF563C();
        (*(*(v38 - 8) + 8))(v22, v38);
        goto LABEL_86;
      }
    }

    goto LABEL_86;
  }

  if (v23 <= 5)
  {
    if (v23 != 4)
    {
      v29 = *(v22 + 2);
LABEL_90:

      return;
    }

LABEL_62:

    v30 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v31 - 8) + 48))(&v22[v30], 1, v31))
    {
      return;
    }

    v32 = swift_getEnumCaseMultiPayload();
    if (v32 > 4)
    {
      if (v32 <= 7)
      {
        if (v32 != 5 && v32 != 6)
        {
          return;
        }

        goto LABEL_97;
      }

      if (v32 != 8 && v32 != 9)
      {
        return;
      }
    }

    else
    {
      if (v32 > 2)
      {
LABEL_97:
        v25 = sub_21DBF563C();
        v26 = *(*(v25 - 8) + 8);
        v27 = &v22[v30];
LABEL_98:

        v26(v27, v25);
        return;
      }

      if (v32 != 1)
      {
        if (v32 != 2)
        {
          return;
        }

        goto LABEL_97;
      }
    }

    v29 = *&v22[v30];
    goto LABEL_90;
  }

  if (v23 != 6)
  {
    if (v23 == 7)
    {
      v37 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v37 - 8) + 48))(v22, 1, v37))
      {
        return;
      }

      v42 = sub_21DBF563C();
      v26 = *(*(v42 - 8) + 8);
      v25 = v42;
      v27 = v22;
    }

    else
    {
      if (v23 != 8)
      {
        return;
      }

      v24 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v25 = sub_21DBF8D7C();
      v26 = *(*(v25 - 8) + 8);
      v27 = &v22[v24];
    }

    goto LABEL_98;
  }

  v33 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v33 - 8) + 48))(v22, 1, v33))
  {

    v34 = *(v33 + 20);
    v35 = sub_21DBF6C1C();
    (*(*(v35 - 8) + 8))(&v22[v34], v35);
  }

  v36 = &v22[*(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20)];
  if (*(v36 + 1))
  {

    v29 = *(v36 + 2);
    goto LABEL_90;
  }
}

void **initializeWithCopy for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(void **a1, void **a2, uint64_t a3)
{
  v210 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
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
          goto LABEL_30;
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
          goto LABEL_30;
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
      v202 = a3;
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
        v198 = a2;
        v206 = a1;
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

        a3 = v202;
        a1 = v206;
        v56[121] = v57[121];
        a2 = v198;
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
    v203 = a3;
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
      v199 = a2;
      v207 = a1;
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

      a3 = v203;
      a1 = v207;
      v56[121] = v57[121];
      a2 = v199;
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

    v27 = *a2;
    *a1 = *a2;
    v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    v28 = *(v14 + 48);
    v29 = v27;
    if (v28(a2 + v12, 1, v13))
    {
LABEL_30:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v12, a2 + v12, *(*(v30 - 8) + 64));
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
    v24 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(a2, 1, v24))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(a1, a2, *(*(v26 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v36 = *(v24 + 20);
      v37 = sub_21DBF6C1C();
      v38 = *(*(v37 - 8) + 16);
      sub_21DBF8E0C();
      v38(a1 + v36, a2 + v36, v37);
      (*(v25 + 56))(a1, 0, 1, v24);
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
    memcpy(a1, a2, *(*(v210 - 8) + 64));
    goto LABEL_128;
  }

  *a1 = *a2;
  v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v8 = sub_21DBF8D7C();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_127:
  swift_storeEnumTagMultiPayload();
LABEL_128:
  v100 = *(a3 + 20);
  v101 = (a1 + v100);
  v102 = (a2 + v100);
  v103 = swift_getEnumCaseMultiPayload();
  if (v103 <= 3)
  {
    if (v103 > 1)
    {
      if (v103 == 2)
      {
        v118 = *v102;
        *v101 = *v102;
        v109 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v110 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v111 = *(v110 - 8);
        v119 = *(v111 + 48);
        v120 = v118;
        if (v119(v102 + v109, 1, v110))
        {
          goto LABEL_157;
        }

        v132 = swift_getEnumCaseMultiPayload();
        if (v132 > 4)
        {
          if (v132 <= 7)
          {
            if (v132 == 5 || v132 == 6)
            {
              goto LABEL_239;
            }

            goto LABEL_252;
          }

          if (v132 != 8 && v132 != 9)
          {
            goto LABEL_252;
          }

          goto LABEL_238;
        }

        if (v132 > 2)
        {
          goto LABEL_239;
        }

        if (v132 == 1)
        {
          goto LABEL_238;
        }

        if (v132 != 2)
        {
          goto LABEL_252;
        }
      }

      else
      {
        v108 = *v102;
        *v101 = *v102;
        v109 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v110 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v111 = *(v110 - 8);
        v112 = *(v111 + 48);
        v113 = v108;
        if (v112(v102 + v109, 1, v110))
        {
          goto LABEL_157;
        }

        v131 = swift_getEnumCaseMultiPayload();
        if (v131 > 4)
        {
          if (v131 <= 7)
          {
            if (v131 == 5 || v131 == 6)
            {
              goto LABEL_239;
            }

            goto LABEL_252;
          }

          if (v131 != 8 && v131 != 9)
          {
            goto LABEL_252;
          }

          goto LABEL_238;
        }

        if (v131 > 2)
        {
          goto LABEL_239;
        }

        if (v131 == 1)
        {
          goto LABEL_238;
        }

        if (v131 != 2)
        {
          goto LABEL_252;
        }
      }

      goto LABEL_239;
    }

    if (v103)
    {
      if (v103 != 1)
      {
        goto LABEL_160;
      }

      v106 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v107 = swift_getEnumCaseMultiPayload();
      v208 = a1;
      if (v107 <= 4)
      {
        if (v107 > 2)
        {
LABEL_190:
          v145 = sub_21DBF563C();
          (*(*(v145 - 8) + 16))(v101, v102, v145);
          swift_storeEnumTagMultiPayload();
          goto LABEL_217;
        }

        if (v107 != 1)
        {
          if (v107 == 2)
          {
            goto LABEL_190;
          }

          goto LABEL_216;
        }

LABEL_193:
        v146 = *v102;
        *v101 = *v102;
        v147 = v146;
        swift_storeEnumTagMultiPayload();
        goto LABEL_217;
      }

      if (v107 > 7)
      {
        if (v107 == 8 || v107 == 9)
        {
          goto LABEL_193;
        }
      }

      else if (v107 == 5 || v107 == 6)
      {
        goto LABEL_190;
      }

LABEL_216:
      memcpy(v101, v102, *(*(v106 - 8) + 64));
LABEL_217:
      v151 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v152 = v151[5];
      v153 = v101 + v152;
      v154 = v102 + v152;
      v155 = *(v102 + v152 + 8);
      if (v155)
      {
        v200 = v102;
        v204 = v101;
        *v153 = *v154;
        *(v153 + 1) = v155;
        v156 = *(v154 + 2);
        v157 = *(v154 + 3);
        v158 = *(v154 + 4);
        v159 = *(v154 + 5);
        v160 = *(v154 + 6);
        v161 = *(v154 + 7);
        v162 = v154[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v156, v157, v158, v159, v160, v161, v162);
        *(v153 + 2) = v156;
        *(v153 + 3) = v157;
        *(v153 + 4) = v158;
        *(v153 + 5) = v159;
        *(v153 + 6) = v160;
        *(v153 + 7) = v161;
        v153[64] = v162;
        *(v153 + 65) = *(v154 + 65);
        v163 = v154[120];
        if (v163 == 255)
        {
          *(v153 + 72) = *(v154 + 72);
          *(v153 + 88) = *(v154 + 88);
          *(v153 + 104) = *(v154 + 104);
          v153[120] = v154[120];
        }

        else
        {
          v164 = *(v154 + 9);
          v165 = *(v154 + 10);
          v166 = *(v154 + 11);
          v167 = *(v154 + 12);
          v168 = *(v154 + 13);
          v169 = *(v154 + 14);
          v170 = v163 & 1;
          sub_21D0FB960(v164, v165, v166, v167, v168, v169, v163 & 1);
          *(v153 + 9) = v164;
          *(v153 + 10) = v165;
          *(v153 + 11) = v166;
          *(v153 + 12) = v167;
          *(v153 + 13) = v168;
          *(v153 + 14) = v169;
          v153[120] = v170;
        }

        a1 = v208;
        v153[121] = v154[121];
        v102 = v200;
        v101 = v204;
        goto LABEL_223;
      }

LABEL_220:
      v171 = *(v154 + 5);
      *(v153 + 4) = *(v154 + 4);
      *(v153 + 5) = v171;
      *(v153 + 6) = *(v154 + 6);
      *(v153 + 106) = *(v154 + 106);
      v172 = *(v154 + 1);
      *v153 = *v154;
      *(v153 + 1) = v172;
      v173 = *(v154 + 3);
      *(v153 + 2) = *(v154 + 2);
      *(v153 + 3) = v173;
LABEL_223:
      *(v101 + v151[6]) = *(v102 + v151[6]);
      *(v101 + v151[7]) = *(v102 + v151[7]);
      *(v101 + v151[8]) = *(v102 + v151[8]);
      *(v101 + v151[9]) = *(v102 + v151[9]);
      *(v101 + v151[10]) = *(v102 + v151[10]);
      v174 = v151[11];
      v175 = *(v102 + v174);
      *(v101 + v174) = v175;
      v176 = v175;
      goto LABEL_254;
    }

    v116 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v117 = swift_getEnumCaseMultiPayload();
    v209 = a1;
    if (v117 <= 4)
    {
      if (v117 > 2)
      {
LABEL_194:
        v148 = sub_21DBF563C();
        (*(*(v148 - 8) + 16))(v101, v102, v148);
        swift_storeEnumTagMultiPayload();
        goto LABEL_225;
      }

      if (v117 != 1)
      {
        if (v117 == 2)
        {
          goto LABEL_194;
        }

        goto LABEL_224;
      }

LABEL_197:
      v149 = *v102;
      *v101 = *v102;
      v150 = v149;
      swift_storeEnumTagMultiPayload();
      goto LABEL_225;
    }

    if (v117 > 7)
    {
      if (v117 == 8 || v117 == 9)
      {
        goto LABEL_197;
      }
    }

    else if (v117 == 5 || v117 == 6)
    {
      goto LABEL_194;
    }

LABEL_224:
    memcpy(v101, v102, *(*(v116 - 8) + 64));
LABEL_225:
    v151 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v177 = v151[5];
    v153 = v101 + v177;
    v154 = v102 + v177;
    v178 = *(v102 + v177 + 8);
    if (v178)
    {
      v201 = v102;
      v205 = v101;
      *v153 = *v154;
      *(v153 + 1) = v178;
      v179 = *(v154 + 2);
      v180 = *(v154 + 3);
      v181 = *(v154 + 4);
      v182 = *(v154 + 5);
      v183 = *(v154 + 6);
      v184 = *(v154 + 7);
      v185 = v154[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v179, v180, v181, v182, v183, v184, v185);
      *(v153 + 2) = v179;
      *(v153 + 3) = v180;
      *(v153 + 4) = v181;
      *(v153 + 5) = v182;
      *(v153 + 6) = v183;
      *(v153 + 7) = v184;
      v153[64] = v185;
      *(v153 + 65) = *(v154 + 65);
      v186 = v154[120];
      if (v186 == 255)
      {
        *(v153 + 72) = *(v154 + 72);
        *(v153 + 88) = *(v154 + 88);
        *(v153 + 104) = *(v154 + 104);
        v153[120] = v154[120];
      }

      else
      {
        v187 = *(v154 + 9);
        v188 = *(v154 + 10);
        v189 = *(v154 + 11);
        v190 = *(v154 + 12);
        v191 = *(v154 + 13);
        v192 = *(v154 + 14);
        v193 = v186 & 1;
        sub_21D0FB960(v187, v188, v189, v190, v191, v192, v186 & 1);
        *(v153 + 9) = v187;
        *(v153 + 10) = v188;
        *(v153 + 11) = v189;
        *(v153 + 12) = v190;
        *(v153 + 13) = v191;
        *(v153 + 14) = v192;
        v153[120] = v193;
      }

      a1 = v209;
      v153[121] = v154[121];
      v102 = v201;
      v101 = v205;
      goto LABEL_223;
    }

    goto LABEL_220;
  }

  if (v103 <= 5)
  {
    if (v103 != 4)
    {
      *v101 = *v102;
      *(v101 + 8) = *(v102 + 8);
      *(v101 + 9) = *(v102 + 9);
      v114 = v102[2];
      v101[2] = v114;
      v115 = v114;
      goto LABEL_254;
    }

    v124 = *v102;
    *v101 = *v102;
    v109 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v110 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v111 = *(v110 - 8);
    v125 = *(v111 + 48);
    v126 = v124;
    if (v125(v102 + v109, 1, v110))
    {
LABEL_157:
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v101 + v109, v102 + v109, *(*(v127 - 8) + 64));
      goto LABEL_254;
    }

    v142 = swift_getEnumCaseMultiPayload();
    if (v142 > 4)
    {
      if (v142 <= 7)
      {
        if (v142 == 5 || v142 == 6)
        {
          goto LABEL_239;
        }

        goto LABEL_252;
      }

      if (v142 != 8 && v142 != 9)
      {
        goto LABEL_252;
      }

LABEL_238:
      v194 = *(v102 + v109);
      *(v101 + v109) = v194;
      v195 = v194;
      swift_storeEnumTagMultiPayload();
LABEL_253:
      (*(v111 + 56))(v101 + v109, 0, 1, v110);
      goto LABEL_254;
    }

    if (v142 <= 2)
    {
      if (v142 != 1)
      {
        if (v142 == 2)
        {
          goto LABEL_239;
        }

LABEL_252:
        memcpy(v101 + v109, v102 + v109, *(v111 + 64));
        goto LABEL_253;
      }

      goto LABEL_238;
    }

LABEL_239:
    v196 = sub_21DBF563C();
    (*(*(v196 - 8) + 16))(v101 + v109, v102 + v109, v196);
    swift_storeEnumTagMultiPayload();
    goto LABEL_253;
  }

  switch(v103)
  {
    case 6:
      v121 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v122 = *(v121 - 8);
      if ((*(v122 + 48))(v102, 1, v121))
      {
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(v101, v102, *(*(v123 - 8) + 64));
      }

      else
      {
        *v101 = *v102;
        v133 = *(v121 + 20);
        v134 = sub_21DBF6C1C();
        v135 = *(*(v134 - 8) + 16);
        sub_21DBF8E0C();
        v135(v101 + v133, v102 + v133, v134);
        (*(v122 + 56))(v101, 0, 1, v121);
      }

      v136 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v137 = (v101 + v136);
      v138 = (v102 + v136);
      v139 = v138[1];
      if (v139)
      {
        *v137 = *v138;
        v137[1] = v139;
        v140 = v138[2];
        v137[2] = v140;
        sub_21DBF8E0C();
        v141 = v140;
      }

      else
      {
        *v137 = *v138;
        v137[2] = v138[2];
      }

      goto LABEL_254;
    case 7:
      v128 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v129 = *(v128 - 8);
      if ((*(v129 + 48))(v102, 1, v128))
      {
        v130 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v101, v102, *(*(v130 - 8) + 64));
      }

      else
      {
        v143 = sub_21DBF563C();
        (*(*(v143 - 8) + 16))(v101, v102, v143);
        *(v101 + *(v128 + 20)) = *(v102 + *(v128 + 20));
        (*(v129 + 56))(v101, 0, 1, v128);
      }

      v144 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v101 + *(v144 + 20)) = *(v102 + *(v144 + 20));
      goto LABEL_254;
    case 8:
      *v101 = *v102;
      v104 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v105 = sub_21DBF8D7C();
      (*(*(v105 - 8) + 16))(v101 + v104, v102 + v104, v105);
LABEL_254:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_160:
  memcpy(v101, v102, *(*(v210 - 8) + 64));
  return a1;
}

void *assignWithCopy for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a2;
    sub_21D106918(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v222 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v24 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v25 = *(v24 - 8);
            if ((*(v25 + 48))(v5, 1, v24))
            {
              v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v3, v5, *(*(v26 - 8) + 64));
            }

            else
            {
              *v3 = *v5;
              v36 = *(v24 + 20);
              v37 = sub_21DBF6C1C();
              v38 = *(*(v37 - 8) + 16);
              sub_21DBF8E0C();
              v38(v3 + v36, v5 + v36, v37);
              (*(v25 + 56))(v3, 0, 1, v24);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (v3 + v39);
            v41 = (v5 + v39);
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
            v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v32 = *(v31 - 8);
            if ((*(v32 + 48))(v5, 1, v31))
            {
              v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v3, v5, *(*(v33 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(v3, v5, v46);
              *(v3 + *(v31 + 20)) = *(v5 + *(v31 + 20));
              (*(v32 + 56))(v3, 0, 1, v31);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v3 + *(v47 + 20)) = *(v5 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *v3 = *v5;
            v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v8 = sub_21DBF8D7C();
            (*(*(v8 - 8) + 16))(v3 + v7, v5 + v7, v8);
LABEL_128:
            swift_storeEnumTagMultiPayload();
LABEL_129:
            v107 = *(a3 + 20);
            v108 = (v3 + v107);
            v109 = (v5 + v107);
            sub_21D106918(v3 + v107, type metadata accessor for TTRRemindersListViewModel.Item);
            v110 = swift_getEnumCaseMultiPayload();
            if (v110 > 3)
            {
              if (v110 > 5)
              {
                switch(v110)
                {
                  case 6:
                    v128 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
                    v129 = *(v128 - 8);
                    if ((*(v129 + 48))(v109, 1, v128))
                    {
                      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                      memcpy(v108, v109, *(*(v130 - 8) + 64));
                    }

                    else
                    {
                      *v108 = *v109;
                      v140 = *(v128 + 20);
                      v141 = sub_21DBF6C1C();
                      v142 = *(*(v141 - 8) + 16);
                      sub_21DBF8E0C();
                      v142(v108 + v140, v109 + v140, v141);
                      (*(v129 + 56))(v108, 0, 1, v128);
                    }

                    v143 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
                    v144 = (v108 + v143);
                    v145 = (v109 + v143);
                    if (v145[1])
                    {
                      *v144 = *v145;
                      v144[1] = v145[1];
                      v146 = v145[2];
                      v144[2] = v146;
                      sub_21DBF8E0C();
                      v147 = v146;
                    }

                    else
                    {
                      v148 = *v145;
                      v144[2] = v145[2];
                      *v144 = v148;
                    }

                    goto LABEL_255;
                  case 7:
                    v135 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
                    v136 = *(v135 - 8);
                    if ((*(v136 + 48))(v109, 1, v135))
                    {
                      v137 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                      memcpy(v108, v109, *(*(v137 - 8) + 64));
                    }

                    else
                    {
                      v150 = sub_21DBF563C();
                      (*(*(v150 - 8) + 16))(v108, v109, v150);
                      *(v108 + *(v135 + 20)) = *(v109 + *(v135 + 20));
                      (*(v136 + 56))(v108, 0, 1, v135);
                    }

                    v151 = type metadata accessor for TTRTemplatePublicLinkData(0);
                    *(v108 + *(v151 + 20)) = *(v109 + *(v151 + 20));
                    goto LABEL_255;
                  case 8:
                    *v108 = *v109;
                    v111 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
                    v112 = sub_21DBF8D7C();
                    (*(*(v112 - 8) + 16))(v108 + v111, v109 + v111, v112);
LABEL_255:
                    swift_storeEnumTagMultiPayload();
                    return v3;
                }

                goto LABEL_161;
              }

              if (v110 != 4)
              {
                *v108 = *v109;
                *(v108 + 8) = *(v109 + 8);
                *(v108 + 9) = *(v109 + 9);
                *(v108 + 10) = *(v109 + 10);
                v121 = v109[2];
                v108[2] = v121;
                v122 = v121;
                goto LABEL_255;
              }

              v131 = *v109;
              *v108 = *v109;
              v116 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
              v117 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v118 = *(v117 - 8);
              v132 = *(v118 + 48);
              v133 = v131;
              if (v132(v109 + v116, 1, v117))
              {
LABEL_158:
                v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
                memcpy(v108 + v116, v109 + v116, *(*(v134 - 8) + 64));
                goto LABEL_255;
              }

              v149 = swift_getEnumCaseMultiPayload();
              if (v149 > 4)
              {
                if (v149 <= 7)
                {
                  if (v149 == 5 || v149 == 6)
                  {
                    goto LABEL_240;
                  }

                  goto LABEL_253;
                }

                if (v149 != 8 && v149 != 9)
                {
                  goto LABEL_253;
                }

LABEL_239:
                v208 = *(v109 + v116);
                *(v108 + v116) = v208;
                v209 = v208;
                swift_storeEnumTagMultiPayload();
LABEL_254:
                (*(v118 + 56))(v108 + v116, 0, 1, v117);
                goto LABEL_255;
              }

              if (v149 <= 2)
              {
                if (v149 != 1)
                {
                  if (v149 == 2)
                  {
                    goto LABEL_240;
                  }

LABEL_253:
                  memcpy(v108 + v116, v109 + v116, *(v118 + 64));
                  goto LABEL_254;
                }

                goto LABEL_239;
              }

LABEL_240:
              v210 = sub_21DBF563C();
              (*(*(v210 - 8) + 16))(v108 + v116, v109 + v116, v210);
              swift_storeEnumTagMultiPayload();
              goto LABEL_254;
            }

            if (v110 > 1)
            {
              if (v110 == 2)
              {
                v125 = *v109;
                *v108 = *v109;
                v116 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
                v117 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
                v118 = *(v117 - 8);
                v126 = *(v118 + 48);
                v127 = v125;
                if (v126(v109 + v116, 1, v117))
                {
                  goto LABEL_158;
                }

                v139 = swift_getEnumCaseMultiPayload();
                if (v139 > 4)
                {
                  if (v139 <= 7)
                  {
                    if (v139 == 5 || v139 == 6)
                    {
                      goto LABEL_240;
                    }

                    goto LABEL_253;
                  }

                  if (v139 != 8 && v139 != 9)
                  {
                    goto LABEL_253;
                  }

                  goto LABEL_239;
                }

                if (v139 > 2)
                {
                  goto LABEL_240;
                }

                if (v139 == 1)
                {
                  goto LABEL_239;
                }

                if (v139 != 2)
                {
                  goto LABEL_253;
                }
              }

              else
              {
                v115 = *v109;
                *v108 = *v109;
                v116 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
                v117 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
                v118 = *(v117 - 8);
                v119 = *(v118 + 48);
                v120 = v115;
                if (v119(v109 + v116, 1, v117))
                {
                  goto LABEL_158;
                }

                v138 = swift_getEnumCaseMultiPayload();
                if (v138 > 4)
                {
                  if (v138 <= 7)
                  {
                    if (v138 == 5 || v138 == 6)
                    {
                      goto LABEL_240;
                    }

                    goto LABEL_253;
                  }

                  if (v138 != 8 && v138 != 9)
                  {
                    goto LABEL_253;
                  }

                  goto LABEL_239;
                }

                if (v138 > 2)
                {
                  goto LABEL_240;
                }

                if (v138 == 1)
                {
                  goto LABEL_239;
                }

                if (v138 != 2)
                {
                  goto LABEL_253;
                }
              }

              goto LABEL_240;
            }

            if (v110)
            {
              if (v110 != 1)
              {
LABEL_161:
                memcpy(v108, v109, *(*(v222 - 8) + 64));
                return v3;
              }

              v113 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v114 = swift_getEnumCaseMultiPayload();
              v221 = v3;
              if (v114 <= 4)
              {
                if (v114 > 2)
                {
LABEL_191:
                  v152 = sub_21DBF563C();
                  (*(*(v152 - 8) + 16))(v108, v109, v152);
                  swift_storeEnumTagMultiPayload();
                  goto LABEL_218;
                }

                if (v114 != 1)
                {
                  if (v114 == 2)
                  {
                    goto LABEL_191;
                  }

                  goto LABEL_217;
                }

LABEL_194:
                v153 = *v109;
                *v108 = *v109;
                v154 = v153;
                swift_storeEnumTagMultiPayload();
                goto LABEL_218;
              }

              if (v114 > 7)
              {
                if (v114 == 8 || v114 == 9)
                {
                  goto LABEL_194;
                }
              }

              else if (v114 == 5 || v114 == 6)
              {
                goto LABEL_191;
              }

LABEL_217:
              memcpy(v108, v109, *(*(v113 - 8) + 64));
LABEL_218:
              v158 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v159 = v158[5];
              v160 = v108 + v159;
              v161 = v109 + v159;
              if (*(v109 + v159 + 8))
              {
                v214 = v109;
                v217 = v108;
                *v160 = *v161;
                *(v160 + 1) = *(v161 + 1);
                v162 = *(v161 + 2);
                v163 = *(v161 + 3);
                v164 = *(v161 + 4);
                v165 = *(v161 + 5);
                v166 = *(v161 + 6);
                v167 = *(v161 + 7);
                v168 = v161[64];
                sub_21DBF8E0C();
                sub_21D2A7DB4(v162, v163, v164, v165, v166, v167, v168);
                *(v160 + 2) = v162;
                *(v160 + 3) = v163;
                *(v160 + 4) = v164;
                *(v160 + 5) = v165;
                *(v160 + 6) = v166;
                *(v160 + 7) = v167;
                v160[64] = v168;
                v160[65] = v161[65];
                v160[66] = v161[66];
                v160[67] = v161[67];
                v160[68] = v161[68];
                v169 = v161[120];
                if (v169 == 255)
                {
                  v183 = *(v161 + 72);
                  v184 = *(v161 + 88);
                  v185 = *(v161 + 104);
                  v160[120] = v161[120];
                  *(v160 + 104) = v185;
                  *(v160 + 88) = v184;
                  *(v160 + 72) = v183;
                }

                else
                {
                  v170 = *(v161 + 9);
                  v171 = *(v161 + 10);
                  v172 = *(v161 + 11);
                  v173 = *(v161 + 12);
                  v174 = *(v161 + 13);
                  v175 = *(v161 + 14);
                  v176 = v169 & 1;
                  sub_21D0FB960(v170, v171, v172, v173, v174, v175, v169 & 1);
                  *(v160 + 9) = v170;
                  *(v160 + 10) = v171;
                  *(v160 + 11) = v172;
                  *(v160 + 12) = v173;
                  *(v160 + 13) = v174;
                  *(v160 + 14) = v175;
                  v160[120] = v176;
                }

                v3 = v221;
                v160[121] = v161[121];
                v109 = v214;
                v108 = v217;
                goto LABEL_224;
              }

LABEL_221:
              v177 = *v161;
              v178 = *(v161 + 1);
              v179 = *(v161 + 3);
              *(v160 + 2) = *(v161 + 2);
              *(v160 + 3) = v179;
              *v160 = v177;
              *(v160 + 1) = v178;
              v180 = *(v161 + 4);
              v181 = *(v161 + 5);
              v182 = *(v161 + 6);
              *(v160 + 106) = *(v161 + 106);
              *(v160 + 5) = v181;
              *(v160 + 6) = v182;
              *(v160 + 4) = v180;
              v3 = v221;
LABEL_224:
              *(v108 + v158[6]) = *(v109 + v158[6]);
              *(v108 + v158[7]) = *(v109 + v158[7]);
              *(v108 + v158[8]) = *(v109 + v158[8]);
              *(v108 + v158[9]) = *(v109 + v158[9]);
              *(v108 + v158[10]) = *(v109 + v158[10]);
              v186 = v158[11];
              v187 = *(v109 + v186);
              *(v108 + v186) = v187;
              v188 = v187;
              goto LABEL_255;
            }

            v123 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v124 = swift_getEnumCaseMultiPayload();
            v221 = v3;
            if (v124 <= 4)
            {
              if (v124 > 2)
              {
LABEL_195:
                v155 = sub_21DBF563C();
                (*(*(v155 - 8) + 16))(v108, v109, v155);
                swift_storeEnumTagMultiPayload();
                goto LABEL_226;
              }

              if (v124 != 1)
              {
                if (v124 == 2)
                {
                  goto LABEL_195;
                }

                goto LABEL_225;
              }

LABEL_198:
              v156 = *v109;
              *v108 = *v109;
              v157 = v156;
              swift_storeEnumTagMultiPayload();
              goto LABEL_226;
            }

            if (v124 > 7)
            {
              if (v124 == 8 || v124 == 9)
              {
                goto LABEL_198;
              }
            }

            else if (v124 == 5 || v124 == 6)
            {
              goto LABEL_195;
            }

LABEL_225:
            memcpy(v108, v109, *(*(v123 - 8) + 64));
LABEL_226:
            v158 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v189 = v158[5];
            v160 = v108 + v189;
            v161 = v109 + v189;
            if (*(v109 + v189 + 8))
            {
              v215 = v109;
              v218 = v108;
              *v160 = *v161;
              *(v160 + 1) = *(v161 + 1);
              v190 = *(v161 + 2);
              v191 = *(v161 + 3);
              v192 = *(v161 + 4);
              v193 = *(v161 + 5);
              v194 = *(v161 + 6);
              v195 = *(v161 + 7);
              v196 = v161[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v190, v191, v192, v193, v194, v195, v196);
              *(v160 + 2) = v190;
              *(v160 + 3) = v191;
              *(v160 + 4) = v192;
              *(v160 + 5) = v193;
              *(v160 + 6) = v194;
              *(v160 + 7) = v195;
              v160[64] = v196;
              v160[65] = v161[65];
              v160[66] = v161[66];
              v160[67] = v161[67];
              v160[68] = v161[68];
              v197 = v161[120];
              if (v197 == 255)
              {
                v205 = *(v161 + 72);
                v206 = *(v161 + 88);
                v207 = *(v161 + 104);
                v160[120] = v161[120];
                *(v160 + 104) = v207;
                *(v160 + 88) = v206;
                *(v160 + 72) = v205;
              }

              else
              {
                v198 = *(v161 + 9);
                v199 = *(v161 + 10);
                v200 = *(v161 + 11);
                v201 = *(v161 + 12);
                v202 = *(v161 + 13);
                v203 = *(v161 + 14);
                v204 = v197 & 1;
                sub_21D0FB960(v198, v199, v200, v201, v202, v203, v197 & 1);
                *(v160 + 9) = v198;
                *(v160 + 10) = v199;
                *(v160 + 11) = v200;
                *(v160 + 12) = v201;
                *(v160 + 13) = v202;
                *(v160 + 14) = v203;
                v160[120] = v204;
              }

              v3 = v221;
              v160[121] = v161[121];
              v109 = v215;
              v108 = v218;
              goto LABEL_224;
            }

            goto LABEL_221;
        }

LABEL_34:
        memcpy(v3, v5, *(*(v222 - 8) + 64));
        goto LABEL_129;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v3 = *v5;
        *(v3 + 8) = *(v5 + 8);
        *(v3 + 9) = *(v5 + 9);
        *(v3 + 10) = *(v5 + 10);
        v17 = v5[2];
        v3[2] = v17;
        v18 = v17;
        goto LABEL_128;
      }

      v27 = *v5;
      *v3 = *v5;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v28 = *(v14 + 48);
      v29 = v27;
      if (v28(v5 + v12, 1, v13))
      {
LABEL_31:
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v3 + v12, v5 + v12, *(*(v30 - 8) + 64));
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
        v104 = *(v5 + v12);
        *(v3 + v12) = v104;
        v105 = v104;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v14 + 56))(v3 + v12, 0, 1, v13);
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
          memcpy(v3 + v12, v5 + v12, *(v14 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v106 = sub_21DBF563C();
      (*(*(v106 - 8) + 16))(v3 + v12, v5 + v12, v106);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *v5;
        *v3 = *v5;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v22 = *(v14 + 48);
        v23 = v21;
        if (v22(v5 + v12, 1, v13))
        {
          goto LABEL_31;
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

      else
      {
        v11 = *v5;
        *v3 = *v5;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(v5 + v12, 1, v13))
        {
          goto LABEL_31;
        }

        v34 = swift_getEnumCaseMultiPayload();
        if (v34 > 4)
        {
          if (v34 <= 7)
          {
            if (v34 == 5 || v34 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v34 != 8 && v34 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v34 > 2)
        {
          goto LABEL_113;
        }

        if (v34 == 1)
        {
          goto LABEL_112;
        }

        if (v34 != 2)
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

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      v216 = a3;
      if (v10 <= 4)
      {
        if (v10 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(v3, v5, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *v5;
        *v3 = *v5;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v10 > 7)
      {
        if (v10 == 8 || v10 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v10 == 5 || v10 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(v3, v5, *(*(v9 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = v3 + v55;
      v57 = v5 + v55;
      if (*(v5 + v55 + 8))
      {
        v212 = v5;
        v219 = v3;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v62 = *(v57 + 6);
        v63 = *(v57 + 7);
        v64 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v62, v63, v64);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v62;
        *(v56 + 7) = v63;
        v56[64] = v64;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v65 = v57[120];
        if (v65 == 255)
        {
          v79 = *(v57 + 72);
          v80 = *(v57 + 88);
          v81 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v81;
          *(v56 + 88) = v80;
          *(v56 + 72) = v79;
        }

        else
        {
          v66 = *(v57 + 9);
          v67 = *(v57 + 10);
          v68 = *(v57 + 11);
          v69 = *(v57 + 12);
          v70 = *(v57 + 13);
          v71 = *(v57 + 14);
          v72 = v65 & 1;
          sub_21D0FB960(v66, v67, v68, v69, v70, v71, v65 & 1);
          *(v56 + 9) = v66;
          *(v56 + 10) = v67;
          *(v56 + 11) = v68;
          *(v56 + 12) = v69;
          *(v56 + 13) = v70;
          *(v56 + 14) = v71;
          v56[120] = v72;
        }

        a3 = v216;
        v3 = v219;
        v56[121] = v57[121];
        v5 = v212;
        goto LABEL_97;
      }

LABEL_94:
      v73 = *v57;
      v74 = *(v57 + 1);
      v75 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v75;
      *v56 = v73;
      *(v56 + 1) = v74;
      v76 = *(v57 + 4);
      v77 = *(v57 + 5);
      v78 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v77;
      *(v56 + 6) = v78;
      *(v56 + 4) = v76;
      a3 = v216;
LABEL_97:
      *(v3 + v54[6]) = *(v5 + v54[6]);
      *(v3 + v54[7]) = *(v5 + v54[7]);
      *(v3 + v54[8]) = *(v5 + v54[8]);
      *(v3 + v54[9]) = *(v5 + v54[9]);
      *(v3 + v54[10]) = *(v5 + v54[10]);
      v82 = v54[11];
      v83 = *(v5 + v82);
      *(v3 + v82) = v83;
      v84 = v83;
      goto LABEL_128;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    v216 = a3;
    if (v20 <= 4)
    {
      if (v20 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(v3, v5, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *v5;
      *v3 = *v5;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v20 > 7)
    {
      if (v20 == 8 || v20 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v20 == 5 || v20 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(v3, v5, *(*(v19 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v85 = v54[5];
    v56 = v3 + v85;
    v57 = v5 + v85;
    if (*(v5 + v85 + 8))
    {
      v213 = v5;
      v220 = v3;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v86 = *(v57 + 2);
      v87 = *(v57 + 3);
      v88 = *(v57 + 4);
      v89 = *(v57 + 5);
      v90 = *(v57 + 6);
      v91 = *(v57 + 7);
      v92 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v86, v87, v88, v89, v90, v91, v92);
      *(v56 + 2) = v86;
      *(v56 + 3) = v87;
      *(v56 + 4) = v88;
      *(v56 + 5) = v89;
      *(v56 + 6) = v90;
      *(v56 + 7) = v91;
      v56[64] = v92;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v93 = v57[120];
      if (v93 == 255)
      {
        v101 = *(v57 + 72);
        v102 = *(v57 + 88);
        v103 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v103;
        *(v56 + 88) = v102;
        *(v56 + 72) = v101;
      }

      else
      {
        v94 = *(v57 + 9);
        v95 = *(v57 + 10);
        v96 = *(v57 + 11);
        v97 = *(v57 + 12);
        v98 = *(v57 + 13);
        v99 = *(v57 + 14);
        v100 = v93 & 1;
        sub_21D0FB960(v94, v95, v96, v97, v98, v99, v93 & 1);
        *(v56 + 9) = v94;
        *(v56 + 10) = v95;
        *(v56 + 11) = v96;
        *(v56 + 12) = v97;
        *(v56 + 13) = v98;
        *(v56 + 14) = v99;
        v56[120] = v100;
      }

      a3 = v216;
      v3 = v220;
      v56[121] = v57[121];
      v5 = v213;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  return v3;
}

void *initializeWithTake for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = swift_getEnumCaseMultiPayload();
        if (v19 <= 3)
        {
          if (v19 == 2 || v19 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v19 == 4 || v19 == 5 || v19 == 6)
        {
          goto LABEL_9;
        }

        goto LABEL_64;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v9 = swift_getEnumCaseMultiPayload();
        if (v9 <= 3)
        {
          if (v9 == 2 || v9 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v9 == 4 || v9 == 5 || v9 == 6)
        {
LABEL_9:
          v10 = sub_21DBF563C();
          (*(*(v10 - 8) + 32))(a1, a2, v10);
          swift_storeEnumTagMultiPayload();
LABEL_65:
          v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v36 = v35[5];
          v37 = (a1 + v36);
          v38 = (a2 + v36);
          v39 = v38[3];
          v37[2] = v38[2];
          v37[3] = v39;
          v40 = v38[1];
          *v37 = *v38;
          v37[1] = v40;
          *(v37 + 106) = *(v38 + 106);
          v41 = v38[6];
          v37[5] = v38[5];
          v37[6] = v41;
          v37[4] = v38[4];
          *(a1 + v35[6]) = *(a2 + v35[6]);
          *(a1 + v35[7]) = *(a2 + v35[7]);
          *(a1 + v35[8]) = *(a2 + v35[8]);
          *(a1 + v35[9]) = *(a2 + v35[9]);
          *(a1 + v35[10]) = *(a2 + v35[10]);
          *(a1 + v35[11]) = *(a2 + v35[11]);
          goto LABEL_87;
        }

LABEL_64:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        goto LABEL_65;
      }

LABEL_32:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
LABEL_29:
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
        goto LABEL_87;
      }

      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }
    }

    else
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
        goto LABEL_87;
      }
    }

LABEL_85:
    memcpy(a1 + v14, a2 + v14, *(v16 + 64));
    goto LABEL_86;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(a2 + v14, 1, v15))
    {
      goto LABEL_29;
    }

    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 3)
    {
      if (v24 == 2 || v24 == 3)
      {
        goto LABEL_57;
      }
    }

    else if (v24 == 4 || v24 == 5 || v24 == 6)
    {
      goto LABEL_57;
    }

    goto LABEL_85;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(a2, 1, v21))
    {
      v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v23 - 8) + 64));
    }

    else
    {
      v26 = sub_21DBF563C();
      (*(*(v26 - 8) + 32))(a1, a2, v26);
      *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
      (*(v22 + 56))(a1, 0, 1, v21);
    }

    v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
    goto LABEL_87;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_32;
  }

  *a1 = *a2;
  v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v18 = sub_21DBF8D7C();
  (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_87:
  swift_storeEnumTagMultiPayload();
LABEL_88:
  v42 = *(a3 + 20);
  v43 = a1 + v42;
  v44 = a2 + v42;
  v45 = swift_getEnumCaseMultiPayload();
  if (v45 > 3)
  {
    if (v45 > 6)
    {
      if (v45 == 7)
      {
        v59 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v60 = *(v59 - 8);
        if ((*(v60 + 48))(v44, 1, v59))
        {
          v61 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(v43, v44, *(*(v61 - 8) + 64));
        }

        else
        {
          v64 = sub_21DBF563C();
          (*(*(v64 - 8) + 32))(v43, v44, v64);
          v43[*(v59 + 20)] = v44[*(v59 + 20)];
          (*(v60 + 56))(v43, 0, 1, v59);
        }

        v65 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&v43[*(v65 + 20)] = *&v44[*(v65 + 20)];
        goto LABEL_174;
      }

      if (v45 != 8)
      {
        goto LABEL_119;
      }

      *v43 = *v44;
      v55 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v56 = sub_21DBF8D7C();
      (*(*(v56 - 8) + 32))(&v43[v55], &v44[v55], v56);
LABEL_174:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (v45 != 4)
    {
      if (v45 == 6)
      {
        v49 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v50 = *(v49 - 8);
        if ((*(v50 + 48))(v44, 1, v49))
        {
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(v43, v44, *(*(v51 - 8) + 64));
        }

        else
        {
          *v43 = *v44;
          v66 = *(v49 + 20);
          v67 = sub_21DBF6C1C();
          (*(*(v67 - 8) + 32))(&v43[v66], &v44[v66], v67);
          (*(v50 + 56))(v43, 0, 1, v49);
        }

        v68 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v69 = &v43[v68];
        v70 = &v44[v68];
        *v69 = *v70;
        *(v69 + 2) = *(v70 + 2);
        goto LABEL_174;
      }

      goto LABEL_119;
    }

    *v43 = *v44;
    v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(&v44[v52], 1, v53))
    {
      v62 = swift_getEnumCaseMultiPayload();
      if (v62 <= 3)
      {
        if (v62 == 2 || v62 == 3)
        {
          goto LABEL_144;
        }
      }

      else if (v62 == 4 || v62 == 5 || v62 == 6)
      {
        goto LABEL_144;
      }

      goto LABEL_172;
    }

    goto LABEL_116;
  }

  if (v45 > 1)
  {
    if (v45 != 2)
    {
      *v43 = *v44;
      v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(&v44[v52], 1, v53))
      {
        goto LABEL_116;
      }

      v71 = swift_getEnumCaseMultiPayload();
      if (v71 <= 3)
      {
        if (v71 == 2 || v71 == 3)
        {
          goto LABEL_144;
        }
      }

      else if (v71 == 4 || v71 == 5 || v71 == 6)
      {
LABEL_144:
        v72 = sub_21DBF563C();
        (*(*(v72 - 8) + 32))(&v43[v52], &v44[v52], v72);
        swift_storeEnumTagMultiPayload();
LABEL_173:
        (*(v54 + 56))(&v43[v52], 0, 1, v53);
        goto LABEL_174;
      }

LABEL_172:
      memcpy(&v43[v52], &v44[v52], *(v54 + 64));
      goto LABEL_173;
    }

    *v43 = *v44;
    v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(&v44[v52], 1, v53))
    {
      v63 = swift_getEnumCaseMultiPayload();
      if (v63 <= 3)
      {
        if (v63 == 2 || v63 == 3)
        {
          goto LABEL_144;
        }
      }

      else if (v63 == 4 || v63 == 5 || v63 == 6)
      {
        goto LABEL_144;
      }

      goto LABEL_172;
    }

LABEL_116:
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&v43[v52], &v44[v52], *(*(v58 - 8) + 64));
    goto LABEL_174;
  }

  if (!v45)
  {
    v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v57 = swift_getEnumCaseMultiPayload();
    if (v57 <= 3)
    {
      if (v57 == 2 || v57 == 3)
      {
        goto LABEL_96;
      }
    }

    else if (v57 == 4 || v57 == 5 || v57 == 6)
    {
      goto LABEL_96;
    }

    goto LABEL_151;
  }

  if (v45 == 1)
  {
    v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 <= 3)
    {
      if (v47 == 2 || v47 == 3)
      {
        goto LABEL_96;
      }
    }

    else if (v47 == 4 || v47 == 5 || v47 == 6)
    {
LABEL_96:
      v48 = sub_21DBF563C();
      (*(*(v48 - 8) + 32))(v43, v44, v48);
      swift_storeEnumTagMultiPayload();
LABEL_152:
      v73 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v74 = v73[5];
      v75 = &v43[v74];
      v76 = &v44[v74];
      v77 = v76[3];
      v75[2] = v76[2];
      v75[3] = v77;
      v78 = v76[1];
      *v75 = *v76;
      v75[1] = v78;
      *(v75 + 106) = *(v76 + 106);
      v79 = v76[6];
      v75[5] = v76[5];
      v75[6] = v79;
      v75[4] = v76[4];
      v43[v73[6]] = v44[v73[6]];
      v43[v73[7]] = v44[v73[7]];
      v43[v73[8]] = v44[v73[8]];
      v43[v73[9]] = v44[v73[9]];
      v43[v73[10]] = v44[v73[10]];
      *&v43[v73[11]] = *&v44[v73[11]];
      goto LABEL_174;
    }

LABEL_151:
    memcpy(v43, v44, *(*(v46 - 8) + 64));
    goto LABEL_152;
  }

LABEL_119:
  memcpy(v43, v44, *(*(v6 - 8) + 64));
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106918(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v22 = *(v21 - 8);
          if ((*(v22 + 48))(a2, 1, v21))
          {
            v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v23 - 8) + 64));
          }

          else
          {
            v26 = sub_21DBF563C();
            (*(*(v26 - 8) + 32))(a1, a2, v26);
            a1[*(v21 + 20)] = a2[*(v21 + 20)];
            (*(v22 + 56))(a1, 0, 1, v21);
          }

          v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
          goto LABEL_88;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_33;
        }

        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
LABEL_89:
        v42 = *(a3 + 20);
        v43 = &a1[v42];
        v44 = &a2[v42];
        sub_21D106918(&a1[v42], type metadata accessor for TTRRemindersListViewModel.Item);
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 <= 3)
        {
          if (v45 <= 1)
          {
            if (!v45)
            {
              v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v57 = swift_getEnumCaseMultiPayload();
              if (v57 <= 3)
              {
                if (v57 == 2 || v57 == 3)
                {
                  goto LABEL_97;
                }
              }

              else if (v57 == 4 || v57 == 5 || v57 == 6)
              {
                goto LABEL_97;
              }

              goto LABEL_152;
            }

            if (v45 == 1)
            {
              v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v47 = swift_getEnumCaseMultiPayload();
              if (v47 <= 3)
              {
                if (v47 == 2 || v47 == 3)
                {
                  goto LABEL_97;
                }
              }

              else if (v47 == 4 || v47 == 5 || v47 == 6)
              {
LABEL_97:
                v48 = sub_21DBF563C();
                (*(*(v48 - 8) + 32))(v43, v44, v48);
                swift_storeEnumTagMultiPayload();
LABEL_153:
                v73 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
                v74 = v73[5];
                v75 = (v43 + v74);
                v76 = (v44 + v74);
                v77 = v76[3];
                v75[2] = v76[2];
                v75[3] = v77;
                v78 = v76[1];
                *v75 = *v76;
                v75[1] = v78;
                *(v75 + 106) = *(v76 + 106);
                v79 = v76[6];
                v75[5] = v76[5];
                v75[6] = v79;
                v75[4] = v76[4];
                *(v43 + v73[6]) = *(v44 + v73[6]);
                *(v43 + v73[7]) = *(v44 + v73[7]);
                *(v43 + v73[8]) = *(v44 + v73[8]);
                *(v43 + v73[9]) = *(v44 + v73[9]);
                *(v43 + v73[10]) = *(v44 + v73[10]);
                *(v43 + v73[11]) = *(v44 + v73[11]);
                goto LABEL_175;
              }

LABEL_152:
              memcpy(v43, v44, *(*(v46 - 8) + 64));
              goto LABEL_153;
            }

            goto LABEL_120;
          }

          if (v45 == 2)
          {
            *v43 = *v44;
            v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v54 = *(v53 - 8);
            if ((*(v54 + 48))(v44 + v52, 1, v53))
            {
LABEL_117:
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
              memcpy(v43 + v52, v44 + v52, *(*(v58 - 8) + 64));
              goto LABEL_175;
            }

            v63 = swift_getEnumCaseMultiPayload();
            if (v63 <= 3)
            {
              if (v63 == 2 || v63 == 3)
              {
                goto LABEL_145;
              }
            }

            else if (v63 == 4 || v63 == 5 || v63 == 6)
            {
              goto LABEL_145;
            }
          }

          else
          {
            *v43 = *v44;
            v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v54 = *(v53 - 8);
            if ((*(v54 + 48))(v44 + v52, 1, v53))
            {
              goto LABEL_117;
            }

            v71 = swift_getEnumCaseMultiPayload();
            if (v71 <= 3)
            {
              if (v71 == 2 || v71 == 3)
              {
                goto LABEL_145;
              }
            }

            else if (v71 == 4 || v71 == 5 || v71 == 6)
            {
LABEL_145:
              v72 = sub_21DBF563C();
              (*(*(v72 - 8) + 32))(v43 + v52, v44 + v52, v72);
              swift_storeEnumTagMultiPayload();
LABEL_174:
              (*(v54 + 56))(v43 + v52, 0, 1, v53);
              goto LABEL_175;
            }
          }

LABEL_173:
          memcpy(v43 + v52, v44 + v52, *(v54 + 64));
          goto LABEL_174;
        }

        if (v45 > 6)
        {
          if (v45 == 7)
          {
            v59 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v60 = *(v59 - 8);
            if ((*(v60 + 48))(v44, 1, v59))
            {
              v61 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v43, v44, *(*(v61 - 8) + 64));
            }

            else
            {
              v64 = sub_21DBF563C();
              (*(*(v64 - 8) + 32))(v43, v44, v64);
              *(v43 + *(v59 + 20)) = *(v44 + *(v59 + 20));
              (*(v60 + 56))(v43, 0, 1, v59);
            }

            v65 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v43 + *(v65 + 20)) = *(v44 + *(v65 + 20));
            goto LABEL_175;
          }

          if (v45 == 8)
          {
            *v43 = *v44;
            v55 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v56 = sub_21DBF8D7C();
            (*(*(v56 - 8) + 32))(v43 + v55, v44 + v55, v56);
LABEL_175:
            swift_storeEnumTagMultiPayload();
            return a1;
          }
        }

        else
        {
          if (v45 == 4)
          {
            *v43 = *v44;
            v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v54 = *(v53 - 8);
            if ((*(v54 + 48))(v44 + v52, 1, v53))
            {
              goto LABEL_117;
            }

            v62 = swift_getEnumCaseMultiPayload();
            if (v62 <= 3)
            {
              if (v62 == 2 || v62 == 3)
              {
                goto LABEL_145;
              }
            }

            else if (v62 == 4 || v62 == 5 || v62 == 6)
            {
              goto LABEL_145;
            }

            goto LABEL_173;
          }

          if (v45 == 6)
          {
            v49 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v50 = *(v49 - 8);
            if ((*(v50 + 48))(v44, 1, v49))
            {
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v43, v44, *(*(v51 - 8) + 64));
            }

            else
            {
              *v43 = *v44;
              v66 = *(v49 + 20);
              v67 = sub_21DBF6C1C();
              (*(*(v67 - 8) + 32))(v43 + v66, v44 + v66, v67);
              (*(v50 + 56))(v43, 0, 1, v49);
            }

            v68 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v69 = v43 + v68;
            v70 = v44 + v68;
            *v69 = *v70;
            *(v69 + 2) = *(v70 + 2);
            goto LABEL_175;
          }
        }

LABEL_120:
        memcpy(v43, v44, *(*(v6 - 8) + 64));
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v12 = *(v11 - 8);
          if ((*(v12 + 48))(a2, 1, v11))
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v13 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v28 = *(v11 + 20);
            v29 = sub_21DBF6C1C();
            (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
            (*(v12 + 56))(a1, 0, 1, v11);
          }

          v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v31 = &a1[v30];
          v32 = &a2[v30];
          *v31 = *v32;
          *(v31 + 2) = *(v32 + 2);
          goto LABEL_88;
        }

        goto LABEL_33;
      }

      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(&a2[v14], 1, v15))
      {
        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = &a1[v36];
            v38 = &a2[v36];
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            a1[v35[6]] = a2[v35[6]];
            a1[v35[7]] = a2[v35[7]];
            a1[v35[8]] = a2[v35[8]];
            a1[v35[9]] = a2[v35[9]];
            a1[v35[10]] = a2[v35[10]];
            *&a1[v35[11]] = *&a2[v35[11]];
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

LABEL_33:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(&a2[v14], 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(&a1[v14], 0, 1, v15);
          goto LABEL_88;
        }

LABEL_86:
        memcpy(&a1[v14], &a2[v14], *(v16 + 64));
        goto LABEL_87;
      }

      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(&a2[v14], 1, v15))
      {
        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

LABEL_30:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_88;
  }

  return a1;
}

uint64_t sub_21D2F880C()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21D2F894C()
{
  result = qword_27CE5A478;
  if (!qword_27CE5A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A478);
  }

  return result;
}

uint64_t sub_21D2F89FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D2F8A44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21D296E98(v4, a1);
}

uint64_t sub_21D2F8B08(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_21D2F8B48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void UITableView.dequeueReusableHeaderFooterView<A>(_:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5B0);
  v2 = sub_21DBFA1AC();
  v4 = v3;
  v5 = sub_21DBFA12C();
  inited = [v1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (inited)
  {
    if (swift_dynamicCastUnknownClass())
    {

      return;
    }
  }

  else
  {
    if (qword_27CE565E0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5A590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    inited[1] = xmmword_21DC08D00;
    *(inited + 4) = 48;
    *(inited + 5) = 0xE100000000000000;
    *(inited + 9) = MEMORY[0x277D837D0];
    *(inited + 6) = v2;
    *(inited + 7) = v4;
    sub_21D17716C(inited);

    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEAB00("Failed to dequeue headerFooterView for identifier {identifier: %@}", 66, 2);
    __break(1u);
  }

  if (qword_27CE565E0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5A590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_21DC08D20;
  *(v9 + 32) = 48;
  *(v9 + 40) = 0xE100000000000000;
  v10 = sub_21D0D8CF0(0, &qword_27CE5A5C0);
  *(v9 + 48) = inited;
  *(v9 + 72) = v10;
  *(v9 + 80) = 49;
  *(v9 + 88) = 0xE100000000000000;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = inited;
  v13 = [ObjCClassFromMetadata description];
  v14 = sub_21DBFA16C();
  v16 = v15;

  *(v9 + 120) = MEMORY[0x277D837D0];
  *(v9 + 96) = v14;
  *(v9 + 104) = v16;
  sub_21D17716C(v9);

  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEAB00("Failed to cast dequeued headerFooterView {headerFooterView: %@, expectedType: %@}", 81, 2);
  __break(1u);
}

void UITableView.dequeueReusableCell<A>(_:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58E80);
  v2 = sub_21DBFA1AC();
  v4 = v3;
  v5 = sub_21DBFA12C();
  inited = [v1 dequeueReusableCellWithIdentifier_];

  if (inited)
  {
    if (swift_dynamicCastUnknownClass())
    {

      return;
    }
  }

  else
  {
    if (qword_27CE565E0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5A590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    inited[1] = xmmword_21DC08D00;
    *(inited + 4) = 48;
    *(inited + 5) = 0xE100000000000000;
    *(inited + 9) = MEMORY[0x277D837D0];
    *(inited + 6) = v2;
    *(inited + 7) = v4;
    sub_21D17716C(inited);

    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEAB00("Failed to dequeue cell for identifier {identifier: %@}", 54, 2);
    __break(1u);
  }

  if (qword_27CE565E0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5A590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_21DC08D20;
  *(v9 + 32) = 48;
  *(v9 + 40) = 0xE100000000000000;
  v10 = sub_21D0D8CF0(0, &unk_280D0C2F0);
  *(v9 + 48) = inited;
  *(v9 + 72) = v10;
  *(v9 + 80) = 49;
  *(v9 + 88) = 0xE100000000000000;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = inited;
  v13 = [ObjCClassFromMetadata description];
  v14 = sub_21DBFA16C();
  v16 = v15;

  *(v9 + 120) = MEMORY[0x277D837D0];
  *(v9 + 96) = v14;
  *(v9 + 104) = v16;
  sub_21D17716C(v9);

  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEAB00("Failed to cast dequeued cell to expected type {cell: %@, expectedType: %@}", 74, 2);
  __break(1u);
}

uint64_t sub_21D2F91DC(uint64_t *a1)
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
  sub_21D2FA6C0(v6);
  return sub_21DBFBFFC();
}

uint64_t sub_21D2F9258()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A590);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A590);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UITableView.orderedVisibleCell.getter()
{
  v1 = [v0 visibleCells];
  sub_21D0D8CF0(0, &unk_280D0C2F0);
  sub_21DBFA5EC();

  v2 = sub_21DBF8E0C();
  v4 = sub_21D2FB288(v2, sub_21D9D9774, sub_21D5657E0);
  sub_21D2F91DC(&v4);

  return v4;
}

id UITableView.perform(_:completion:)(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v7 = type metadata accessor for TTRTableViewDiff(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for TTRTableViewUpdates(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D2FB390(a1, v16, type metadata accessor for TTRTableViewUpdates);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    result = [v3 reloadData];
    if (a2)
    {
      return (a2)(1);
    }
  }

  else
  {
    v31 = a3;
    v19 = &v16[*(v17 + 48)];
    v20 = *(v19 + 2);
    v21 = *v19;
    sub_21D2FB32C(v16, v13);
    sub_21D2FB390(v13, v10, type metadata accessor for TTRTableViewDiff);
    v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    sub_21D2FB32C(v10, v24 + v22);
    v25 = v24 + v23;
    *v25 = v3;
    *(v25 + 8) = v21;
    *(v25 + 12) = v20;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_21D2FB3F8;
    *(v26 + 24) = v24;
    v36 = sub_21D0E6070;
    v37 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D0E6204;
    v35 = &block_descriptor_9;
    v27 = _Block_copy(&aBlock);
    v28 = v3;

    if (a2)
    {
      v36 = a2;
      v37 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_21D2F9D00;
      v35 = &block_descriptor_6;
      v29 = _Block_copy(&aBlock);
    }

    else
    {
      v29 = 0;
    }

    [v28 performBatchUpdates:v27 completion:v29];
    _Block_release(v29);
    _Block_release(v27);
    if ((sub_21DBF5B1C() & 1) == 0)
    {
      [v28 performBatchUpdates:0 completion:0];
    }

    sub_21D2FB494(v13);
  }

  return result;
}

void sub_21D2F97D0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59CC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v53 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for TTRTableViewDiff(0);
  if (*(*(a1 + v15[10]) + 16))
  {
    sub_21DBF5D5C();
    v16 = sub_21DBFA5DC();
    [a2 insertRowsAtIndexPaths:v16 withRowAnimation:qword_21DC0FBA0[a3 >> 24]];
  }

  v53 = v9;
  if (*(*(a1 + v15[11]) + 16))
  {
    sub_21DBF5D5C();
    v17 = sub_21DBFA5DC();
    [a2 deleteRowsAtIndexPaths:v17 withRowAnimation:qword_21DC0FBA0[a3 << 24 >> 56]];
  }

  v18 = *(a1 + v15[9]);
  if (*(v18 + 16))
  {
    v19 = qword_21DC0FBA0[a3 << 16 >> 56];
    if (*(sub_21D2FA148(1, v18, a2) + 2))
    {
      sub_21DBF5D5C();
      v20 = v6;
      v21 = v7;
      v22 = v14;
      v23 = sub_21DBFA5DC();

      [a2 reloadRowsAtIndexPaths:v23 withRowAnimation:v19];

      v14 = v22;
      v7 = v21;
      v6 = v20;
    }

    else
    {
    }
  }

  v60 = v6;
  v54 = a3;
  v55 = v15;
  v24 = v15[12];
  v56 = a1;
  v25 = *(a1 + v24);
  v26 = *(v25 + 16);
  v27 = v62;
  v28 = v53;
  if (v26)
  {
    v58 = *(v60 + 48);
    v59 = a2;
    v29 = v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v57 = *(v7 + 72);
    do
    {
      v61 = v26;
      sub_21D2FB518(v29, v14);
      v30 = v60;
      v31 = *(v60 + 48);
      v32 = sub_21DBF5D5C();
      v33 = *(v32 - 8);
      v34 = v14;
      v35 = *(v33 + 32);
      v35(v27, v14, v32);
      v35(v27 + v31, &v14[v58], v32);
      sub_21D2FB518(v27, v28);
      v36 = *(v30 + 48);
      v37 = sub_21DBF5C6C();
      v38 = *(v33 + 8);
      v38(v28 + v36, v32);
      v38(v28, v32);
      sub_21D2FB518(v62, v28);
      v39 = *(v30 + 48);
      v40 = sub_21DBF5C6C();
      v41 = v28 + v39;
      a2 = v59;
      v38(v41, v32);
      v38(v28, v32);
      v27 = v62;
      [a2 moveRowAtIndexPath:v37 toIndexPath:v40];

      v14 = v34;
      sub_21D0CF7E0(v27, &qword_27CE59CC0);
      v29 += v57;
      v26 = v61 - 1;
    }

    while (v61 != 1);
  }

  v43 = v55;
  v42 = v56;
  v44 = sub_21DBF5B1C();
  v45 = v54;
  if ((v44 & 1) == 0)
  {
    v46 = sub_21DBF5A8C();
    [a2 insertSections:v46 withRowAnimation:qword_21DC0FBA0[v45]];
  }

  if ((sub_21DBF5B1C() & 1) == 0)
  {
    v47 = sub_21DBF5A8C();
    [a2 deleteSections:v47 withRowAnimation:qword_21DC0FBA0[v45 >> 8]];
  }

  if ((sub_21DBF5B1C() & 1) == 0)
  {
    v48 = sub_21DBF5A8C();
    [a2 reloadSections:v48 withRowAnimation:qword_21DC0FBA0[v45 << 40 >> 56]];
  }

  v49 = *(v42 + v43[7]);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = (v49 + 40);
    do
    {
      [a2 moveSection:*(v51 - 1) toSection:{*v51, v53}];
      v51 += 2;
      --v50;
    }

    while (v50);
  }

  if ((sub_21DBF5B1C() & 1) == 0)
  {
    v52 = sub_21DBF5A8C();
    [a2 _reloadSectionHeaderFooters_withRowAnimation_];
  }
}

uint64_t sub_21D2F9D00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void UITableView.dequeueReusableCell<A>(_:indexPath:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58E80);
  sub_21DBFA1AC();
  v1 = sub_21DBFA12C();
  v2 = sub_21DBF5C6C();
  v3 = [v0 dequeueReusableCellWithIdentifier:v1 forIndexPath:v2];

  if (swift_dynamicCastUnknownClass())
  {
  }

  else
  {
    if (qword_27CE565E0 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5A590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v6 = sub_21D0D8CF0(0, &unk_280D0C2F0);
    *(inited + 48) = v3;
    *(inited + 72) = v6;
    *(inited + 80) = 49;
    *(inited + 88) = 0xE100000000000000;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = v3;
    v9 = [ObjCClassFromMetadata description];
    v10 = sub_21DBFA16C();
    v12 = v11;

    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = v10;
    *(inited + 104) = v12;
    sub_21D17716C(inited);

    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEAB00("Failed to cast dequeued cell to expected type {cell: %@, expectedType: %@}", 74, 2);
    __break(1u);
  }
}

Swift::Void __swiftcall UITableView.deselectAllNonMultiSelectRows(animated:)(Swift::Bool animated)
{
  v2 = v1;
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 isEditing])
  {
    v9 = [v2 allowsMultipleSelectionDuringEditing];
  }

  else
  {
    v9 = [v2 allowsMultipleSelection];
  }

  if ((v9 & 1) == 0)
  {
    v10 = [v2 indexPathsForSelectedRows];
    if (v10)
    {
      v11 = v10;
      v12 = sub_21DBFA5EC();

      v13 = *(v12 + 16);
      if (v13)
      {
        v15 = *(v5 + 16);
        v14 = v5 + 16;
        v21 = v12;
        v22 = v15;
        v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
        v17 = *(v14 + 56);
        v18 = (v14 - 8);
        do
        {
          v22(v8, v16, v4);
          v19 = v14;
          v20 = sub_21DBF5C6C();
          (*v18)(v8, v4);
          [v2 deselectRowAtIndexPath:v20 animated:{animated, v21}];

          v14 = v19;
          v16 += v17;
          --v13;
        }

        while (v13);
      }

      else
      {
      }
    }
  }
}

char *sub_21D2FA148(char a1, char *a2, void *a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v35 - v11;
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

  v13 = [a3 indexPathsForVisibleRows];
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = v13;
  v15 = sub_21DBFA5EC();

  v16 = [a3 dataSource];
  if (!v16)
  {

    v50 = 0;
    v48 = 0u;
    v49 = 0u;
LABEL_25:
    sub_21D0CF7E0(&v48, &qword_27CE5A5E0);
LABEL_26:
    sub_21DBF8E0C();
    return a2;
  }

  *&v45[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A5E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    goto LABEL_24;
  }

  if (!*(&v49 + 1))
  {
LABEL_24:

    goto LABEL_25;
  }

  sub_21D0D0FD0(&v48, v51);
  v41 = *(a2 + 2);
  if (v41)
  {
    v17 = 0;
    v18 = v7 + 16;
    v42 = *(v7 + 16);
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v40 = &a2[v19];
    v20 = *(v7 + 72);
    v37 = v19;
    v39 = v15 + v19;
    v38 = (v18 - 8);
    v43 = v18;
    v36 = (v18 + 16);
    a2 = MEMORY[0x277D84F90];
    v35 = a3;
    do
    {
      v25 = &v40[v20 * v17++];
      v42(v12, v25, v6);
      v26 = v15;
      v27 = *(v15 + 16) + 1;
      v28 = v39;
      while (--v27)
      {
        sub_21D2FB588();
        v28 += v20;
        if (sub_21DBFA10C())
        {
          v29 = sub_21DBF5C6C();
          v30 = [a3 cellForRowAtIndexPath_];

          if (v30)
          {
            v47 = v30;
            sub_21D0D8CF0(0, &unk_280D0C2F0);
            v31 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A600);
            if (swift_dynamicCast())
            {
              sub_21D0D0FD0(v45, &v48);
              v22 = *(&v49 + 1);
              v21 = v50;
              __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
              (*(v21 + 8))(v22, v21);
              __swift_destroy_boxed_opaque_existential_0(&v48);
            }

            else
            {
              v46 = 0;
              memset(v45, 0, sizeof(v45));
              sub_21D0CF7E0(v45, &qword_27CE5A608);
            }

            v23 = v51[4];
            __swift_project_boxed_opaque_existential_1(v51, v51[3]);
            v24 = *(v23 + 8);
            a3 = v35;
            v24();

            (*v38)(v12, v6);
            goto LABEL_10;
          }

          break;
        }
      }

      v42(v44, v12, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_21D2111BC(0, *(a2 + 2) + 1, 1, a2);
      }

      v33 = *(a2 + 2);
      v32 = *(a2 + 3);
      if (v33 >= v32 >> 1)
      {
        a2 = sub_21D2111BC(v32 > 1, v33 + 1, 1, a2);
      }

      (*v38)(v12, v6);
      *(a2 + 2) = v33 + 1;
      (*v36)(&a2[v37 + v33 * v20], v44, v6);
LABEL_10:
      v15 = v26;
    }

    while (v17 != v41);
  }

  else
  {
    a2 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0(v51);
  return a2;
}

void sub_21D2FA6C0(uint64_t *a1)
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
        sub_21D0D8CF0(0, &unk_280D0C2F0);
        v6 = sub_21DBFA69C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21D2FA8D8(v8, v9, a1, v4);
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
    sub_21D2FA7D4(0, v2, 1, a1);
  }
}

void sub_21D2FA7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 frame];
      MinY = CGRectGetMinY(v19);
      [v13 frame];
      v15 = CGRectGetMinY(v20);

      if (MinY >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
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

      v16 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v16;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D2FA8D8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_87:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_21D82E300(v8);
    }

    v92 = v5;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v5 = v93 - 1;
        v94 = *&v8[16 * v93];
        v95 = *&v8[16 * v93 + 24];
        sub_21D2FAF60((*a3 + 8 * v94), (*a3 + 8 * *&v8[16 * v93 + 16]), (*a3 + 8 * v95), v9);
        if (v92)
        {
          goto LABEL_97;
        }

        if (v95 < v94)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21D82E300(v8);
        }

        if (v93 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v96 = &v8[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        sub_21D82E274(v93 - 1);
        v93 = *(v8 + 2);
        if (v93 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v98 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 frame];
      MinY = CGRectGetMinY(v106);
      [v17 frame];
      v19 = CGRectGetMinY(v107);

      v20 = v12 + 2;
      while (v6 != v20)
      {
        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        [v22 frame];
        v24 = CGRectGetMinY(v108);
        [v23 frame];
        v25 = CGRectGetMinY(v109);

        ++v20;
        ++v14;
        if (MinY < v19 == v24 >= v25)
        {
          v6 = (v20 - 1);
          break;
        }
      }

      v9 = v12;
      if (MinY < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_117;
        }

        if (v12 < v6)
        {
          v26 = 8 * v6 - 8;
          v27 = v6;
          v28 = v12;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v29 = *(v30 + v5);
              *(v30 + v5) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            v28 = (v28 + 1);
            v26 -= 8;
            v5 += 8;
          }

          while (v28 < v27);
        }
      }

      v10 = v6;
      v5 = v98;
    }

    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v32 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v32 >= v31)
        {
          v32 = a3[1];
        }

        if (v32 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v32)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_21D210B90(0, *(v8 + 2) + 1, 1, v8);
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v8 = sub_21D210B90((v46 > 1), v47 + 1, 1, v8);
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v10;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v104 = v10;
    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_56:
          if (v55)
          {
            goto LABEL_104;
          }

          v68 = &v8[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_107;
          }

          v74 = &v8[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_111;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v78 = &v8[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_70:
        if (v73)
        {
          goto LABEL_106;
        }

        v81 = &v8[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_109;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_77:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v90 = *&v8[16 * v89 + 32];
        v9 = *&v8[16 * v51 + 40];
        sub_21D2FAF60((*a3 + 8 * v90), (*a3 + 8 * *&v8[16 * v51 + 32]), (*a3 + 8 * v9), v50);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v9 < v90)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21D82E300(v8);
        }

        if (v89 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v91 = &v8[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v9;
        sub_21D82E274(v51);
        v48 = *(v8 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v8[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_102;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_103;
      }

      v63 = &v8[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_105;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_108;
      }

      if (v67 >= v59)
      {
        v85 = &v8[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_112;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v7 = v104;
    v6 = a3[1];
    if (v104 >= v6)
    {
      goto LABEL_87;
    }
  }

  v99 = v5;
  v100 = v9;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v35 = (v9 - v10);
  v102 = v32;
LABEL_29:
  v103 = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    [v40 frame];
    v42 = CGRectGetMinY(v110);
    [v41 frame];
    v43 = CGRectGetMinY(v111);

    if (v42 >= v43)
    {
LABEL_28:
      v10 = v103 + 1;
      v34 += 8;
      --v35;
      if ((v103 + 1) != v102)
      {
        goto LABEL_29;
      }

      v10 = v102;
      v5 = v99;
      v9 = v100;
      goto LABEL_36;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_21D2FAF60(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v23 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v23;
    }

    v22 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v37 = v4;
LABEL_26:
      __dst = v22;
      v24 = v22 - 1;
      --v5;
      v25 = v14;
      do
      {
        v26 = v5 + 1;
        v27 = *--v25;
        v28 = v24;
        v29 = *v24;
        v30 = v27;
        v31 = v29;
        [v30 frame];
        MinY = CGRectGetMinY(v40);
        [v31 frame];
        v33 = CGRectGetMinY(v41);

        if (MinY < v33)
        {
          v34 = v28;
          if (v26 != __dst)
          {
            *v5 = *v28;
          }

          v4 = v37;
          if (v14 <= v37 || (v22 = v34, v34 <= v6))
          {
            v22 = v34;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v26 != v14)
        {
          *v5 = *v25;
        }

        --v5;
        v14 = v25;
        v24 = v28;
      }

      while (v25 > v37);
      v14 = v25;
      v22 = __dst;
      v4 = v37;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 frame];
        v18 = CGRectGetMinY(v38);
        [v17 frame];
        v19 = CGRectGetMinY(v39);

        if (v18 >= v19)
        {
          break;
        }

        v20 = v13;
        v21 = v6 == v13++;
        if (!v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v20 = v4;
      v21 = v6 == v4++;
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v20;
      goto LABEL_17;
    }

LABEL_19:
    v22 = v6;
  }

LABEL_37:
  if (v22 != v4 || v22 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v22, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_21D2FB288(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_21DBFBD7C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D2FB32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTableViewDiff(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D2FB390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21D2FB3F8()
{
  v1 = *(type metadata accessor for TTRTableViewDiff(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8) | (*(v3 + 10) << 16);

  sub_21D2F97D0(v0 + v2, v4, v5);
}

uint64_t sub_21D2FB494(uint64_t a1)
{
  v2 = type metadata accessor for TTRTableViewDiff(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D2FB518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D2FB588()
{
  result = qword_280D17150;
  if (!qword_280D17150)
  {
    sub_21DBF5D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17150);
  }

  return result;
}

uint64_t sub_21D2FB5E8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A610);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A610);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderCellNotesEditingState.hasUncommittedEdits.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 8))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 16);

  return v4(a1, a2);
}

uint64_t TTRReminderCellNotesEditingPresenter.StyleOptions.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderCellNotesEditingPresenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*TTRReminderCellNotesEditingPresenter.delegate.modify(uint64_t *a1))()
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

uint64_t TTRReminderCellNotesEditingPresenter.presenterManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellNotesEditingPresenter.presenterManager.modify(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t TTRReminderCellNotesEditingPresenter.editingState.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  a1[3] = &type metadata for EditingState;
  a1[4] = &off_282EB0BB8;
  v10 = swift_allocObject();
  *a1 = v10;
  *(v10 + 16) = v4;
  *(v10 + 17) = v5;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;

  return sub_21D24A7C4(v6, v7);
}

uint64_t TTRReminderCellNotesEditingPresenter.augmentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 24);
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 32);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D24A7C4(v2, v3);
}

uint64_t sub_21D2FBB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v18 = swift_getObjectType();
  v19 = a8(a1, a2, a4, a6, a7, v8, ObjectType, v18, a3, a5);
  swift_unknownObjectRelease();
  return v19;
}

_BYTE *static TTRReminderCellNotesEditingPresenter.typingAttributeStyleStateTogglingStyleState(_:originalTypingAttributeState:originalAttributedText:selectedRange:)@<X0>(id a1@<X2>, _BYTE *result@<X0>, char *a3@<X1>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v5 = *result;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  if (v5 == 1)
  {
    v9 = a3[1];
  }

  else
  {
    v9 = a3[2];
  }

  if (!*result)
  {
    v9 = *a3;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v11 = a4 - 1;
    if (a4 < 1)
    {
      v10 = 1;
    }

    else
    {
      v12 = a5;
      v14 = [a1 rem:a4 - 1 fontHintAtIndex:0 effectiveRange:?];
      if (v5)
      {
        if (v5 == 1)
        {
          result = ((v14 >> 1) & 1);
        }

        else
        {
          result = [a1 rem:v11 isUnderlinedAtIndex:0 effectiveRange:?];
        }
      }

      else
      {
        result = (v14 & 1);
      }

      a5 = v12;
      if (result)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }
  }

  if (v5 == 1)
  {
    v15 = v10;
  }

  else
  {
    v15 = v7;
  }

  if (v5 == 1)
  {
    v16 = v8;
  }

  else
  {
    v16 = v10;
  }

  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v15 = v7;
  }

  if (!v5)
  {
    v16 = v8;
  }

  *a5 = v10;
  a5[1] = v15;
  a5[2] = v16;
  return result;
}

Swift::Void __swiftcall TTRReminderCellNotesEditingPresenter.requestAbortEditing()()
{
  if (qword_27CE565E8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5A610);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession))
    {
      *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) = 1;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(v0, &protocol witness table for TTRReminderCellNotesEditingPresenter, ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t _s15RemindersUICore36TTRReminderCellNotesEditingPresenterC010requestEndF0yyF_0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &protocol witness table for TTRReminderCellNotesEditingPresenter, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRReminderCellNotesEditingPresenter.requestHandleBeginEditingNotes()()
{
  if (qword_27CE565E8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5A610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v3 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item;
  v4 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v6 = sub_21D2FC200();
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    ObjectType = swift_getObjectType();
    (*(v9 + 32))(&v27, ObjectType, v9);
    v11 = v30;
    v12 = v31;
    __swift_project_boxed_opaque_existential_1(&v27, v30);
    v13 = v12[7](v11, v12);
    if (!v13)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(&v27);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v0 + 40);
      v16 = swift_getObjectType();
      (*(v15 + 88))(v0 + v3, v16, v15);
      swift_unknownObjectRelease();
    }

    v17 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter + 8);
    v18 = swift_getObjectType();
    (*(v17 + 8))(v14, v8, v9, v18, v17);
    v19 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter + 8);
    v20 = swift_getObjectType();
    (*(v19 + 8))(&v27, v14, v8, v9, v20, v19);
    v21 = v27;
    if (v27)
    {
      v22 = v31;
      v24 = v29;
      v23 = v30;
      v25 = v28;
      v27 = v28;
      v28 = v29;
      v29 = v30;
      v26 = v32;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D2FC538(v21, &v27, &v26);

      sub_21D300E70(v21, v25, v24, v23, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D2FC200()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession))
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(v0, &protocol witness table for TTRReminderCellNotesEditingPresenter, ObjectType, v2);
    v6 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *v1 = v4;
  v1[1] = v6;
  swift_unknownObjectRelease();
  if (*v1)
  {
LABEL_6:
    v7 = (v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
    v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
    v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
    v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 24);
    v11 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 32);
    if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state) == 1)
    {
      v12 = v7[1];
      sub_21D24A7C4(v9, v8);
      v13 = v12;
    }

    else
    {
      sub_21D24A7C4(*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16));
      sub_21D24A814(v9, v8);
      v13 = 0;
      v10 = 0;
      v8 = 0;
      v9 = 0;
      v11 = 0;
    }

    v14 = *v7;
    v28 = v7[1];
    v15 = *(v7 + 1);
    v16 = *(v7 + 2);
    v17 = *(v7 + 3);
    v18 = *(v7 + 4);
    *v7 = 1;
    v7[1] = v13;
    *(v7 + 1) = v9;
    *(v7 + 2) = v8;
    *(v7 + 3) = v10;
    *(v7 + 4) = v11;
    sub_21D24A7C4(v15, v16);
    sub_21D24A814(v15, v16);
    LOBYTE(v29[0]) = v14;
    BYTE1(v29[0]) = v28;
    v29[1] = v15;
    v29[2] = v16;
    v29[3] = v17;
    v29[4] = v18;
    sub_21D2FF904(v29);
    sub_21D24A814(v15, v16);
    return swift_unknownObjectRetain();
  }

  else
  {
    if (qword_27CE565E8 != -1)
    {
      swift_once();
    }

    v20 = sub_21DBF84BC();
    __swift_project_value_buffer(v20, qword_27CE5A610);

    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29[0] = v24;
      *v23 = 136315138;
      v25 = sub_21D25D250();
      v27 = sub_21D0CDFB4(v25, v26, v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_21D0C9000, v21, v22, "TTRReminderCellNotesEditingPresenter: Could not acquire editing session to begin editing. {item: %s}", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_21D2FC538(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v7;
    v21 = v6;
    v22 = v5;
    v10 = *(v3 + 24);
    v11 = *(a1 + 16);
    if (v11)
    {
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 16);
      v13 = (a1 + 56);
      do
      {
        v14 = *(v13 - 3);
        v15 = *(v13 - 2);
        v16 = *(v13 - 1);
        v17 = *v13;
        sub_21DBF8E0C();
        v12(v3, &protocol witness table for TTRReminderCellNotesEditingPresenter, v14, v15, v16, v17, ObjectType, v10);

        v13 += 4;
        --v11;
      }

      while (v11);
    }

    if (*(v22 + 16))
    {
      v18 = swift_getObjectType();
      v24[0] = v22;
      v24[1] = v21;
      v24[2] = v20;
      (*(v10 + 48))(v3, &protocol witness table for TTRReminderCellNotesEditingPresenter, v24, v18, v10);
    }

    if (v8)
    {
      v19 = swift_getObjectType();
      (*(v10 + 56))(v3, &protocol witness table for TTRReminderCellNotesEditingPresenter, v19, v10);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRReminderCellNotesEditingPresenter.requestHandleNotesTextChange(_:detail:hasMarkedText:)(NSAttributedString _, RemindersUICore::TTRReminderTextChangeDetail_optional *detail, Swift::Bool hasMarkedText)
{
  v4 = v3;
  isa = detail->value.originalText.super.isa;
  location = detail->value.originalRangeReplaced.location;
  length = detail->value.originalRangeReplaced.length;
  countAndFlagsBits = detail->value.replacementText.value._countAndFlagsBits;
  object = detail->value.replacementText.value._object;
  if (qword_27CE565E8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5A610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v10 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v12 = (v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
  v13 = location;
  if ((*(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1) & 1) == 0)
  {
    if (!isa)
    {
      v16 = *v12;
      v17 = *(v12 + 1);
      v18 = *(v12 + 2);
      v19 = *(v12 + 3);
      v20 = *(v12 + 4);
      *v12 = *v12;
      v12[1] = 1;
      sub_21D24A7C4(v17, v18);
      sub_21D24A7C4(v17, v18);
      sub_21D24A814(v17, v18);
      LOWORD(v82) = v16;
      v83 = v17;
      v84 = v18;
      v85 = v19;
      v86 = v20;
      sub_21D2FF904(&v82);
      sub_21D24A814(v17, v18);
      if (*(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession))
      {
        return;
      }

      goto LABEL_16;
    }

    sub_21D300F54();
    sub_21D300ED0(isa);
    v14 = isa;
    v15 = sub_21DBFB63C();

    if (v15)
    {
      sub_21D300F14(isa);
    }

    else
    {
      v21 = *v12;
      v22 = *(v12 + 1);
      v23 = *(v12 + 2);
      v62 = countAndFlagsBits;
      v64 = length;
      v25 = *(v12 + 3);
      v24 = *(v12 + 4);
      v26 = v12[1];
      *v12 = *v12;
      v12[1] = 1;
      sub_21D24A7C4(v22, v23);
      sub_21D24A7C4(v22, v23);
      sub_21D24A814(v22, v23);
      LOBYTE(v82) = v21;
      BYTE1(v82) = v26;
      countAndFlagsBits = v62;
      v83 = v22;
      v84 = v23;
      v85 = v25;
      v86 = v24;
      sub_21D2FF904(&v82);
      sub_21D300F14(isa);
      v27 = v23;
      v13 = location;
      length = v64;
      sub_21D24A814(v22, v27);
    }
  }

  v28 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  if (v28)
  {
    if (isa)
    {
      v29 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession + 8);
      v30 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter + 8);
      ObjectType = swift_getObjectType();
      v32 = length;
      v33 = ObjectType;
      v71 = isa;
      v72 = v13;
      v73 = v32;
      v74 = countAndFlagsBits;
      v75 = object;
      v34 = object;
      v35 = *(v30 + 16);
      v63 = countAndFlagsBits;
      v65 = v32;
      v61 = v34;
      sub_21D300ED0(isa);
      swift_unknownObjectRetain();
      v35(&v82, _.super.isa, &v71, hasMarkedText, v28, v29, v33, v30);
      v36 = v82;
      if (v82)
      {
        v60 = v89;
        v37 = v86;
        v38 = v87;
        v55 = v88;
        v56 = v86;
        v77 = v83;
        v78 = v84;
        v79 = v85;
        sub_21D0D3954(&v82, &v71, &qword_27CE5A628);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D2FCDCC(v36, &v77);

        v57 = v12[1];
        v58 = *v12;
        v39 = *(v12 + 1);
        v40 = *(v12 + 2);
        v59 = v29;
        sub_21D24A7C4(v37, v38);
        sub_21D24A7C4(v39, v40);
        sub_21D24A814(v39, v40);
        LOBYTE(v39) = *v12;
        v54 = v12[1];
        v41 = *(v12 + 1);
        v42 = *(v12 + 2);
        v44 = *(v12 + 3);
        v43 = *(v12 + 4);
        *v12 = v58;
        v12[1] = v57;
        v13 = location;
        *(v12 + 1) = v56;
        *(v12 + 2) = v38;
        *(v12 + 3) = v55;
        *(v12 + 4) = v60;
        sub_21D24A7C4(v41, v42);
        sub_21D24A814(v41, v42);
        LOBYTE(v71) = v39;
        BYTE1(v71) = v54;
        v72 = v41;
        v73 = v42;
        v74 = v44;
        v75 = v43;
        sub_21D2FF904(&v71);
        sub_21D0CF7E0(&v82, &qword_27CE5A628);
        v29 = v59;
        sub_21D24A814(v41, v42);
      }

      v45 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter + 8);
      v46 = swift_getObjectType();
      v77 = isa;
      v78 = v13;
      v79 = v65;
      v80 = v63;
      v81 = v61;
      (*(v45 + 24))(&v71, _.super.isa, &v77, hasMarkedText, v28, v29, v46, v45);
      v47 = v71;
      if (v71)
      {
        v48 = v72;
        v49 = v73;
        v50 = v74;
        v68 = v75;
        v71 = v72;
        v72 = v73;
        v73 = v74;
        v77 = v76;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D2FC538(v47, &v71, &v77);
        sub_21D300F14(isa);
        swift_unknownObjectRelease();
        sub_21D300E70(v47, v48, v49, v50, v68);
        sub_21D0CF7E0(&v82, &qword_27CE5A628);
      }

      else
      {
        sub_21D0CF7E0(&v82, &qword_27CE5A628);
        sub_21D300F14(isa);
        swift_unknownObjectRelease();
      }
    }

    return;
  }

LABEL_16:
  v51 = sub_21DBF84AC();
  v52 = sub_21DBFAEBC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_21D0C9000, v51, v52, "Missing editingSession for notes editing", v53, 2u);
    MEMORY[0x223D46520](v53, -1, -1);
  }
}

uint64_t sub_21D2FCDCC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = v6;
    v18 = v5;
    v8 = *(v2 + 24);
    v9 = *(a1 + 16);
    if (v9)
    {
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      v11 = (a1 + 56);
      do
      {
        v12 = *(v11 - 3);
        v13 = *(v11 - 2);
        v14 = *(v11 - 1);
        v15 = *v11;
        sub_21DBF8E0C();
        v10(v2, &protocol witness table for TTRReminderCellNotesEditingPresenter, v12, v13, v14, v15, ObjectType, v8);

        v11 += 4;
        --v9;
      }

      while (v9);
    }

    if (*(v4 + 16))
    {
      v16 = swift_getObjectType();
      v20[0] = v4;
      v20[1] = v18;
      v20[2] = v17;
      (*(v8 + 24))(v2, &protocol witness table for TTRReminderCellNotesEditingPresenter, v20, v16, v8);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRReminderCellNotesEditingPresenter.requestHandleEditingNotesDidEnd(_:)(NSAttributedString a1)
{
  v2 = v1;
  if (qword_27CE565E8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5A610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v6 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession + 8);
    swift_unknownObjectRetain();
    sub_21D2FD290(a1.super.isa, v8, v9);
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) == 1)
    {
      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAEDC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_21D0C9000, v10, v11, "TTRReminderCellNotesEditingPresenter: skip saving notes editing session", v12, 2u);
        MEMORY[0x223D46520](v12, -1, -1);
      }

      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    ObjectType = swift_getObjectType();
    v26[0] = v13;
    v9[14](v26, ObjectType, v9);
    sub_21D2FD68C();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEBC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Missing editing session for editing notes", v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }
  }

  *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) = 0;
  v18 = v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
  v19 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
  v20 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
  sub_21D24A7C4(v19, v20);
  sub_21D24A814(v19, v20);
  LOBYTE(v19) = *v18;
  v21 = *(v18 + 1);
  v22 = *(v18 + 8);
  v23 = *(v18 + 16);
  v24 = *(v18 + 24);
  v25 = *(v18 + 32);
  *v18 = 0;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  sub_21D24A7C4(v22, v23);
  sub_21D24A814(v22, v23);
  LOBYTE(v26[0]) = v19;
  BYTE1(v26[0]) = v21;
  v26[1] = v22;
  v26[2] = v23;
  v26[3] = v24;
  v26[4] = v25;
  sub_21D2FF904(v26);
  sub_21D24A814(v22, v23);
}

uint64_t sub_21D2FD290(uint64_t a1, uint64_t a2, void (**a3)(void *__return_ptr, uint64_t, void))
{
  ObjectType = swift_getObjectType();
  a3[9](v29, ObjectType, a3);
  v8 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter + 8);
  v9 = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A648);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  v23 = ObjectType;
  a3[4](aBlock, ObjectType, a3);
  v12 = v25;
  v11 = v26;
  __swift_project_boxed_opaque_existential_1(aBlock, v25);
  *(v10 + 32) = (*(v11 + 5))(v12, v11);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  aBlock[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A650);
  sub_21D300F54();
  sub_21D301E60();
  v13 = sub_21DBFA41C();

  v14 = (*(v8 + 48))(a1, a2, a3, v13, v9, v8);

  v15 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v16 = sub_21DBFA12C();

  sub_21D0D32E4(v29, v28);
  v17 = swift_allocObject();
  sub_21D0D0FD0(v28, v17 + 16);
  *(v17 + 56) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21D301EC4;
  *(v18 + 24) = v17;
  v26 = sub_21D0E6070;
  v27 = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  v25 = &block_descriptor_113;
  v19 = _Block_copy(aBlock);
  v20 = v14;

  [v15 withActionName:v16 block:{v19, 0x800000021DC49BA0}];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    aBlock[0] = 1;
    a3[13](aBlock, v23, a3);

    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  return result;
}

void sub_21D2FD68C()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  if (v2)
  {
    v3 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(v0, &protocol witness table for TTRReminderCellNotesEditingPresenter, v2, v3, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void TTRReminderCellNotesEditingPresenter.request(applySuggestion:notes:)(uint64_t a1, uint64_t a2)
{
  sub_21D0CEB98(a1, v14);
  if (swift_dynamicCast())
  {
    v14[0] = v16[0];
    v14[1] = v16[1];
    v15 = v17;
    sub_21D2FD978(v14, a2);
  }

  else
  {
    if (qword_27CE565E8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5A610);
    sub_21D1D9BE4(a1, v14);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      sub_21D0CEB98(v14, v16);
      __swift_project_boxed_opaque_existential_1(v16, *(&v17 + 1));
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A630);
      v9 = sub_21DBFA1AC();
      v11 = v10;
      sub_21D1D9C40(v14);
      v12 = sub_21D0CDFB4(v9, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v5, v6, "Unknown suggestion {type: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {

      sub_21D1D9C40(v14);
    }
  }
}

void sub_21D2FD978(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  if (qword_27CE565E8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5A610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v10 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession + 8);
    v14 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v36[0] = v4;
    v36[1] = v5;
    v36[2] = v7;
    v36[3] = v6;
    v16 = *(v14 + 24);
    swift_unknownObjectRetain();
    v16(&v37, v36, a2, v12, v13, ObjectType, v14);
    v17 = v37;
    if (v37)
    {
      v32 = v39;
      v33 = v38;
      v31 = v40;
      v35 = v41;
      v18 = v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
      v29 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1);
      v30 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
      v19 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
      v20 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
      sub_21D24A7C4(v19, v20);
      sub_21D24A814(v19, v20);
      LOBYTE(v19) = *v18;
      v21 = *(v18 + 1);
      v22 = *(v18 + 8);
      v23 = *(v18 + 16);
      v25 = *(v18 + 24);
      v24 = *(v18 + 32);
      *v18 = v30;
      *(v18 + 1) = v29;
      *(v18 + 8) = 0u;
      *(v18 + 24) = 0u;
      sub_21D24A7C4(v22, v23);
      sub_21D24A814(v22, v23);
      LOBYTE(v37) = v19;
      BYTE1(v37) = v21;
      v38 = v22;
      v39 = v23;
      v40 = v25;
      v41 = v24;
      sub_21D2FF904(&v37);
      sub_21D24A814(v22, v23);
      v37 = v33;
      v38 = v32;
      v39 = v31;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D2FCDCC(v17, &v37);
      swift_unknownObjectRelease();
      sub_21D300E70(v17, v33, v32, v31, v35);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v26 = sub_21DBF84AC();
    v27 = sub_21DBFAEBC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21D0C9000, v26, v27, "Missing editing session for applying inline hashtag suggestion", v28, 2u);
      MEMORY[0x223D46520](v28, -1, -1);
    }
  }
}

Swift::String_optional __swiftcall TTRReminderCellNotesEditingPresenter.requestAdoptForeignHashtag(in:notes:)(__C::_NSRange in, NSAttributedString notes)
{
  v3 = v2;
  length = in.length;
  location = in.location;
  if (qword_27CE565E8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE5A610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v9 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession + 8);
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 32);
    swift_unknownObjectRetain();
    v16 = v15(location, length, notes.super.isa, v11, v12, ObjectType, v13);
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = v16;
  v20 = v18;
  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

Swift::Void __swiftcall TTRReminderCellNotesEditingPresenter.requestConvertTextToHashtag(in:title:)(__C::_NSRange in, NSAttributedString title)
{
  v3 = v2;
  length = in.length;
  location = in.location;
  if (qword_27CE565E8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE5A610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v9 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession + 8);
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v31 = v3;
    v15 = *(v13 + 40);
    swift_unknownObjectRetain();
    v15(&v32, location, length, title.super.isa, v11, v12, ObjectType, v13);
    v16 = v32;
    if (v32)
    {
      v28 = v34;
      v29 = v33;
      v27 = v35;
      v30 = v36;
      v17 = v31 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
      v25 = *(v31 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1);
      v26 = *(v31 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
      v18 = *(v31 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
      v19 = *(v31 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
      sub_21D24A7C4(v18, v19);
      sub_21D24A814(v18, v19);
      LOBYTE(v18) = *v17;
      v20 = *(v17 + 1);
      v21 = *(v17 + 8);
      v22 = *(v17 + 16);
      v24 = *(v17 + 24);
      v23 = *(v17 + 32);
      *v17 = v26;
      *(v17 + 1) = v25;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      sub_21D24A7C4(v21, v22);
      sub_21D24A814(v21, v22);
      LOBYTE(v32) = v18;
      BYTE1(v32) = v20;
      v33 = v21;
      v34 = v22;
      v35 = v24;
      v36 = v23;
      sub_21D2FF904(&v32);
      sub_21D24A814(v21, v22);
      v32 = v29;
      v33 = v28;
      v34 = v27;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D2FCDCC(v16, &v32);
      swift_unknownObjectRelease();
      sub_21D300E70(v16, v29, v28, v27, v30);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

Swift::Bool __swiftcall TTRReminderCellNotesEditingPresenter.request(handlePaste:into:selectedRange:)(NSAttributedString handlePaste, NSAttributedString into, __C::_NSRange selectedRange)
{
  if (*(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession))
  {
    v4 = v3;
    length = selectedRange.length;
    location = selectedRange.location;
    v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    TTRRemindersListEditingSession.effectiveParentList.getter(ObjectType, v9, &v52);
    v11 = v55;
    if (v55)
    {
      v12 = v56;
      __swift_project_boxed_opaque_existential_1(&v52, v55);
      v13 = v12[9](v11, v12);
      v14 = [v13 supportsTextStyling];

      __swift_destroy_boxed_opaque_existential_0(&v52);
      if (v14)
      {
        v15 = [(objc_class *)handlePaste.super.isa string];
        v42 = sub_21DBFA16C();
        v44 = v16;

        v17 = handlePaste.super.isa;
        v50 = into.super.isa;
        v18 = sub_21D47A128(v50, location, length, v17);

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v4 + 24);
          v47 = swift_getObjectType();
          v20 = [(objc_class *)v17 string];
          v21 = sub_21DBFA16C();
          v23 = v22;

          (*(v19 + 16))(v4, &protocol witness table for TTRReminderCellNotesEditingPresenter, location, length, v21, v23, v47, v19);

          swift_unknownObjectRelease();
        }

        v45 = location;
        v46 = length;
        v43 = v18;
        v48 = sub_21D300FA0(v17, v18, location);
        v24 = *(v48 + 16);
        if (v24)
        {
          v25 = (v48 + 48);
          do
          {
            v27 = *(v25 - 2);
            v26 = *(v25 - 1);
            v28 = *v25;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v29 = *(v4 + 24);
              v30 = swift_getObjectType();
              v52 = v27;
              v53 = v26;
              v54 = v28;
              v31 = *(v29 + 40);
              sub_21DBF8E0C();
              v31(v4, &protocol witness table for TTRReminderCellNotesEditingPresenter, &v52, v30, v29);

              swift_unknownObjectRelease();
            }

            v25 += 3;
            --v24;
          }

          while (v24);
        }

        v37 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter + 8);
        swift_getObjectType();
        v51[0] = v50;
        v51[1] = v45;
        v51[2] = v46;
        v51[3] = v42;
        v51[4] = v44;
        (*(v37 + 16))(&v52, v43, v51);
        v38 = v52;
        if (v52)
        {
          v39 = v53;
          v40 = v54;
          v41 = v55;
          v49 = v56;
          v52 = v53;
          v53 = v54;
          v54 = v55;
          v51[0] = v57;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21D2FC538(v38, &v52, v51);

          sub_21D300E70(v38, v39, v40, v41, v49);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        return 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_21D0CF7E0(&v52, &qword_27CE59DC0);
    }
  }

  if (qword_27CE565E8 != -1)
  {
    swift_once();
  }

  v32 = sub_21DBF84BC();
  __swift_project_value_buffer(v32, qword_27CE5A610);
  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAEBC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_21D0C9000, v33, v34, "Missing editingSession for notes editing", v35, 2u);
    MEMORY[0x223D46520](v35, -1, -1);
  }

  return 0;
}

NSAttributedString __swiftcall TTRReminderCellNotesEditingPresenter.requestHandleToggleBoldface(in:title:)(__C::_NSRange in, NSAttributedString title)
{
  isa = title.super.isa;
  if (in.length < 1 || (length = in.length, location = in.location, v33 = title.super.isa, v6 = [(objc_class *)title.super.isa string], v7 = sub_21DBFA16C(), v9 = v8, v6, MEMORY[0x223D42B30](v7, v9), , sub_21DBFB9CC(), isa = v33, (v11 & 1) != 0) || v10 != length)
  {

    return isa;
  }

  else
  {
    v12 = (v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
    v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
    v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
    v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
    v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 24);
    v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 32);
    v18 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1);
    *v12 = v13;
    v12[1] = 1;
    sub_21D24A7C4(v14, v15);
    sub_21D24A7C4(v14, v15);
    sub_21D24A814(v14, v15);
    LOBYTE(aBlock) = v13;
    BYTE1(aBlock) = v18;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v38 = v17;
    sub_21D2FF904(&aBlock);
    sub_21D24A814(v14, v15);
    if (sub_21DBF4B4C() == location)
    {
      v19 = 0;
LABEL_17:
      v31 = sub_21D4721A0(v33, 0, v19, location, length);
      sub_21D2FFA0C(location, length, v31);
      return v31;
    }

    v21 = [objc_opt_self() attributeNameForStyle_];
    MEMORY[0x28223BE20](v21);
    v32[2] = 1;
    v40 = MEMORY[0x277D84F90];
    v22 = swift_allocObject();
    v22[2] = sub_21D301160;
    v22[3] = v32;
    v22[4] = &v40;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_21D1A6510;
    *(v23 + 24) = v22;
    v38 = sub_21D24B3B4;
    v39 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_21D1A6068;
    v37 = &block_descriptor_10;
    v24 = _Block_copy(&aBlock);

    [(objc_class *)v33 enumerateAttribute:v21 inRange:location options:length usingBlock:0, v24];

    _Block_release(v24);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      v25 = v40;

      v26 = *(v25 + 16);
      if (!v26)
      {
        v27 = 0;
LABEL_16:

        v19 = v27 != length;
        goto LABEL_17;
      }

      v27 = 0;
      v28 = (v25 + 40);
      while (1)
      {
        v29 = *v28;
        v28 += 2;
        v30 = __OFADD__(v27, v29);
        v27 += v29;
        if (v30)
        {
          break;
        }

        if (!--v26)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_21D2FEA60(unsigned __int8 *a1, uint64_t a2, uint64_t a3, id a4)
{
  if (a3 < 1 || (v7 = *a1, v28 = a4, v8 = [a4 string], v9 = sub_21DBFA16C(), v11 = v10, v8, MEMORY[0x223D42B30](v9, v11), , sub_21DBFB9CC(), a4 = v28, (v13 & 1) != 0) || v12 != a3)
  {

    return a4;
  }

  else
  {
    v14 = (v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
    v15 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
    v16 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
    v17 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
    v18 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 24);
    v19 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 32);
    v20 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1);
    *v14 = v15;
    v14[1] = 1;
    sub_21D24A7C4(v16, v17);
    sub_21D24A7C4(v16, v17);
    sub_21D24A814(v16, v17);
    LOBYTE(v30[0]) = v15;
    BYTE1(v30[0]) = v20;
    v30[1] = v16;
    v30[2] = v17;
    v30[3] = v18;
    v30[4] = v19;
    sub_21D2FF904(v30);
    sub_21D24A814(v16, v17);
    LOBYTE(v30[0]) = v7;
    v21 = sub_21D30186C(v30, a2, a3, v28);
    v22 = sub_21D4721A0(v28, v7, v21, a2, a3);
    if (v7 > 1)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        *(inited + 32) = [objc_opt_self() attributeNameForStyle_];
        *(inited + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v27 = sub_21D177570(inited);
        swift_setDeallocating();
        sub_21D0CF7E0(inited + 32, &unk_27CE5F310);
        v29[0] = a2;
        v29[1] = a3;
        v29[2] = v27;
        (*(v24 + 40))(v4, &protocol witness table for TTRReminderCellNotesEditingPresenter, v29, ObjectType, v24);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_21D2FFA0C(a2, a3, v22);
    }

    return v22;
  }
}

NSAttributedString __swiftcall TTRReminderCellNotesEditingPresenter.requestHandleToggleItalics(in:title:)(__C::_NSRange in, NSAttributedString title)
{
  isa = title.super.isa;
  if (in.length < 1 || (length = in.length, location = in.location, v33 = title.super.isa, v6 = [(objc_class *)title.super.isa string], v7 = sub_21DBFA16C(), v9 = v8, v6, MEMORY[0x223D42B30](v7, v9), , sub_21DBFB9CC(), isa = v33, (v11 & 1) != 0) || v10 != length)
  {

    return isa;
  }

  else
  {
    v12 = (v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
    v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
    v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
    v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
    v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 24);
    v17 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 32);
    v18 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1);
    *v12 = v13;
    v12[1] = 1;
    sub_21D24A7C4(v14, v15);
    sub_21D24A7C4(v14, v15);
    sub_21D24A814(v14, v15);
    LOBYTE(aBlock) = v13;
    BYTE1(aBlock) = v18;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v38 = v17;
    sub_21D2FF904(&aBlock);
    sub_21D24A814(v14, v15);
    if (sub_21DBF4B4C() == location)
    {
      v19 = 0;
LABEL_17:
      v31 = sub_21D4721A0(v33, 1, v19, location, length);
      sub_21D2FFA0C(location, length, v31);
      return v31;
    }

    v21 = [objc_opt_self() attributeNameForStyle_];
    MEMORY[0x28223BE20](v21);
    v32[2] = 2;
    v40 = MEMORY[0x277D84F90];
    v22 = swift_allocObject();
    v22[2] = sub_21D301F84;
    v22[3] = v32;
    v22[4] = &v40;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_21D301F58;
    *(v23 + 24) = v22;
    v38 = sub_21D24BE7C;
    v39 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_21D1A6068;
    v37 = &block_descriptor_18_0;
    v24 = _Block_copy(&aBlock);

    [(objc_class *)v33 enumerateAttribute:v21 inRange:location options:length usingBlock:0, v24];

    _Block_release(v24);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      v25 = v40;

      v26 = *(v25 + 16);
      if (!v26)
      {
        v27 = 0;
LABEL_16:

        v19 = v27 != length;
        goto LABEL_17;
      }

      v27 = 0;
      v28 = (v25 + 40);
      while (1)
      {
        v29 = *v28;
        v28 += 2;
        v30 = __OFADD__(v27, v29);
        v27 += v29;
        if (v30)
        {
          break;
        }

        if (!--v26)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t TTRReminderCellNotesEditingPresenter.request(toggleListStyle:in:selectedRange:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  if (!v5 || a4 < 1)
  {
    return result;
  }

  v7 = v4;
  v9 = result;
  v10 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession + 8);
  swift_unknownObjectRetain();
  v11 = [a2 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  MEMORY[0x223D42B30](v12, v14);

  v15 = sub_21DBFB9CC();
  if (v17)
  {
    goto LABEL_20;
  }

  v51 = v5;
  if (v16 != a4)
  {
    goto LABEL_20;
  }

  v18 = (v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
  v19 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
  v20 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
  v21 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
  v61 = v15;
  v63 = v10;
  v23 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 24);
  v22 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 32);
  v24 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1);
  *v18 = v19;
  v18[1] = 1;
  sub_21D24A7C4(v20, v21);
  sub_21D24A7C4(v20, v21);
  sub_21D24A814(v20, v21);
  LOBYTE(v66[0]) = v19;
  BYTE1(v66[0]) = v24;
  v66[1] = v20;
  v66[2] = v21;
  v66[3] = v23;
  v66[4] = v22;
  sub_21D2FF904(v66);
  sub_21D24A814(v20, v21);
  v25 = *(v7 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter + 8);
  ObjectType = swift_getObjectType();
  v27 = (*(v25 + 32))(v9, a2, v61, a4, v51, v63, ObjectType, v25);
  v28 = v27;
  v54 = *(v27 + 16);
  if (!v54)
  {

LABEL_20:

    return swift_unknownObjectRelease();
  }

  v53 = v27 + 32;
  result = swift_beginAccess();
  v29 = 0;
  v30 = &protocol witness table for TTRReminderCellNotesEditingPresenter;
  v52 = v28;
  while (v29 < *(v28 + 16))
  {
    v31 = (v53 + 48 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    v59 = v31[2];
    v35 = v31[4];
    v36 = v31[5];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v55 = v36;
      v37 = v30;
      v58 = v29;
      v38 = *(v7 + 24);
      v39 = *(v32 + 16);
      v64 = v38;
      v56 = v34;
      v57 = v33;
      if (v39)
      {
        v40 = swift_getObjectType();
        v60 = *(v38 + 16);
        v62 = v40;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v41 = v35;
        v42 = (v32 + 56);
        do
        {
          v43 = *(v42 - 3);
          v44 = *(v42 - 2);
          v46 = *(v42 - 1);
          v45 = *v42;
          sub_21DBF8E0C();
          v47 = v44;
          v38 = v64;
          v60(v7, v37, v43, v47, v46, v45, v62, v64);

          v42 += 4;
          --v39;
        }

        while (v39);
      }

      else
      {
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v48 = v35;
      }

      v30 = v37;
      if (*(v57 + 16))
      {
        v49 = swift_getObjectType();
        v65[0] = v57;
        v65[1] = v59;
        v65[2] = v56;
        (*(v38 + 48))(v7, v37, v65, v49, v38);
      }

      v28 = v52;
      v29 = v58;
      if (v55)
      {
        v50 = swift_getObjectType();
        (*(v64 + 56))(v7, v37, v50);
      }

      swift_unknownObjectRelease();
    }

    if (++v29 == v54)
    {

      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void sub_21D2FF578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v9 = objc_opt_self();
  v10 = [v9 attributeNameForStyle_];
  v11 = v10;
  if (*(a1 + 16) && (v12 = sub_21D10FE34(v10), (v13 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v12, v36);

    if (swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC08D00;
      *(inited + 32) = [v9 attributeNameForStyle_];
      *(inited + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v15 = sub_21D177570(inited);
      swift_setDeallocating();
      sub_21D0CF7E0(inited + 32, &unk_27CE5F310);
      v16 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_21D212304(0, *(v16 + 2) + 1, 1, v16);
        *a5 = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v34 = v19 + 1;
        v33 = sub_21D212304((v18 > 1), v19 + 1, 1, v16);
        v20 = v19 + 1;
        v16 = v33;
        *a5 = v33;
      }

      *(v16 + 2) = v20;
      v21 = &v16[24 * v19];
      *(v21 + 4) = a2;
      *(v21 + 5) = a3;
      *(v21 + 6) = v15;
    }
  }

  else
  {
  }

  v22 = [v9 attributeNameForStyle_];
  v23 = v22;
  if (*(a1 + 16) && (v24 = sub_21D10FE34(v22), (v25 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v24, v36);

    if (swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_21DC08D00;
      *(v26 + 32) = [v9 attributeNameForStyle_];
      *(v26 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v27 = sub_21D177570(v26);
      swift_setDeallocating();
      sub_21D0CF7E0(v26 + 32, &unk_27CE5F310);
      v28 = *a5;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_21D212304(0, *(v28 + 2) + 1, 1, v28);
        *a5 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_21D212304((v30 > 1), v31 + 1, 1, v28);
        *a5 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[24 * v31];
      *(v32 + 4) = a2;
      *(v32 + 5) = a3;
      *(v32 + 6) = v27;
    }
  }

  else
  {
  }
}

uint64_t sub_21D2FF904(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v16 = a1[1];
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 24);
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 32);
  v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_21D24A7C4(v16, v2);
  sub_21D24A7C4(v12, v5);
  v8 = _s15RemindersUICore38TTRReminderCellTextEditingAugmentationO16effectivelyEqualySbACSg_AEtFZ_0(&v16, &v12);
  sub_21D301F20(v12, v13);
  result = sub_21D301F20(v16, v17);
  if ((v8 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v10 + 32))(v1, &protocol witness table for TTRReminderCellNotesEditingPresenter, ObjectType, v10);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_21D2FFA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v81 = objc_opt_self();
  v6 = [v81 attributeNameForStyle_];
  v92[0] = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  v7[2] = sub_21D300748;
  v7[3] = 0;
  v7[4] = v92;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D301F58;
  *(v8 + 24) = v7;
  v98 = sub_21D24BE7C;
  v99 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_21D1A6068;
  v97 = &block_descriptor_38;
  v9 = _Block_copy(&aBlock);

  [a3 enumerateAttribute:v6 inRange:a1 options:a2 usingBlock:{0, v9}];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v79 = v92[0];

  v11 = [v81 attributeNameForStyle_];
  v92[0] = MEMORY[0x277D84F90];
  v12 = swift_allocObject();
  v12[2] = sub_21D3007EC;
  v12[3] = 0;
  v12[4] = v92;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D301F58;
  *(v13 + 24) = v12;
  v98 = sub_21D24BE7C;
  v99 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_21D1A6068;
  v97 = &block_descriptor_49_0;
  v14 = _Block_copy(&aBlock);

  [a3 enumerateAttribute:v11 inRange:a1 options:a2 usingBlock:{0, v14}];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v78 = v92[0];

  v15 = [v81 attributeNameForStyle_];
  v92[0] = MEMORY[0x277D84F90];
  v16 = swift_allocObject();
  v16[2] = sub_21D30087C;
  v16[3] = 0;
  v16[4] = v92;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D301F58;
  *(v17 + 24) = v16;
  v98 = sub_21D24BE7C;
  v99 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_21D1A6068;
  v97 = &block_descriptor_60;
  v18 = _Block_copy(&aBlock);

  [a3 enumerateAttribute:v15 inRange:a1 options:a2 usingBlock:{0, v18}];

  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v77 = v92[0];

  v19 = [v81 attributeNameForStyle_];
  v92[0] = MEMORY[0x277D84F90];
  v20 = swift_allocObject();
  v20[2] = sub_21D30090C;
  v20[3] = 0;
  v20[4] = v92;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21D301F58;
  *(v21 + 24) = v20;
  v98 = sub_21D24BE7C;
  v99 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_21D1A6068;
  v97 = &block_descriptor_71_0;
  v22 = _Block_copy(&aBlock);

  [a3 enumerateAttribute:v19 inRange:a1 options:a2 usingBlock:{0, v22}];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v80 = v92[0];

  v24 = *(v79 + 16);
  if (!v24)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v25 = (v79 + 40);
  while (1)
  {
    v27 = *(v25 - 1);
    v26 = *v25;
    if (swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

LABEL_7:
    v25 += 2;
    if (!--v24)
    {
      goto LABEL_13;
    }
  }

  v28 = v82[3];
  ObjectType = swift_getObjectType();
  v30 = [v81 attributeNameForStyle_];
  v93[0] = v30;
  v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v93[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58210);
  v32 = sub_21DBFC40C();

  v33 = v30;
  v34 = v31;
  result = sub_21D10FE34(v33);
  if (v35)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v32[(result >> 6) + 8] |= 1 << result;
  *(v32[6] + 8 * result) = v33;
  *(v32[7] + 8 * result) = v34;
  v36 = v32[2];
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    v32[2] = v38;

    sub_21D0CF7E0(v93, &unk_27CE5F310);
    v92[0] = v27;
    v92[1] = v26;
    v92[2] = v32;
    (*(v28 + 40))(v82, &protocol witness table for TTRReminderCellNotesEditingPresenter, v92, ObjectType, v28);
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  __break(1u);
LABEL_13:

  v39 = *(v78 + 16);
  v40 = v82;
  if (!v39)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  v41 = (v78 + 40);
  while (2)
  {
    v44 = *(v41 - 1);
    v43 = *v41;
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_15:
      v41 += 2;
      if (!--v39)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  v45 = v40[3];
  v90 = [v81 attributeNameForStyle_];
  v91 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58210);
  v46 = sub_21DBFC40C();

  v40 = v91;
  v47 = v90;
  v48 = v40;
  result = sub_21D10FE34(v47);
  if (v49)
  {
    goto LABEL_38;
  }

  v46[(result >> 6) + 8] |= 1 << result;
  *(v46[6] + 8 * result) = v47;
  *(v46[7] + 8 * result) = v48;
  v50 = v46[2];
  v37 = __OFADD__(v50, 1);
  v51 = v50 + 1;
  if (!v37)
  {
    v46[2] = v51;
    v42 = swift_getObjectType();

    sub_21D0CF7E0(&v90, &unk_27CE5F310);
    v89[0] = v44;
    v89[1] = v43;
    v89[2] = v46;
    v40 = v82;
    (*(v45 + 40))(v82, &protocol witness table for TTRReminderCellNotesEditingPresenter, v89, v42, v45);
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  __break(1u);
LABEL_21:

  v52 = *(v77 + 16);
  if (!v52)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v53 = (v77 + 40);
  while (2)
  {
    v55 = *(v53 - 1);
    v56 = *v53;
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_23:
      v53 += 2;
      if (!--v52)
      {
        goto LABEL_29;
      }

      continue;
    }

    break;
  }

  v57 = v40[3];
  v87 = [v81 attributeNameForStyle_];
  v88 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58210);
  v58 = sub_21DBFC40C();

  v40 = v88;
  v59 = v87;
  v60 = v40;
  result = sub_21D10FE34(v59);
  if (v61)
  {
    goto LABEL_39;
  }

  v58[(result >> 6) + 8] |= 1 << result;
  *(v58[6] + 8 * result) = v59;
  *(v58[7] + 8 * result) = v60;
  v62 = v58[2];
  v37 = __OFADD__(v62, 1);
  v63 = v62 + 1;
  if (!v37)
  {
    v58[2] = v63;
    v54 = swift_getObjectType();

    sub_21D0CF7E0(&v87, &unk_27CE5F310);
    v86[0] = v55;
    v86[1] = v56;
    v86[2] = v58;
    v40 = v82;
    (*(v57 + 40))(v82, &protocol witness table for TTRReminderCellNotesEditingPresenter, v86, v54, v57);
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  __break(1u);
LABEL_29:

  v64 = *(v80 + 16);
  if (v64)
  {
    swift_beginAccess();
    v65 = (v80 + 40);
    do
    {
      v66 = *(v65 - 1);
      v67 = *v65;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v68 = v40[3];
        v84 = [v81 attributeNameForStyle_];
        v85 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58210);
        v69 = sub_21DBFC40C();

        v70 = v85;
        v71 = v84;
        v72 = v70;
        result = sub_21D10FE34(v71);
        if (v73)
        {
          goto LABEL_40;
        }

        v69[(result >> 6) + 8] |= 1 << result;
        *(v69[6] + 8 * result) = v71;
        *(v69[7] + 8 * result) = v72;
        v74 = v69[2];
        v37 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v37)
        {
          goto LABEL_41;
        }

        v69[2] = v75;
        v76 = swift_getObjectType();

        sub_21D0CF7E0(&v84, &unk_27CE5F310);
        v83[0] = v66;
        v83[1] = v67;
        v83[2] = v69;
        v40 = v82;
        (*(v68 + 40))(v82, &protocol witness table for TTRReminderCellNotesEditingPresenter, v83, v76, v68);
        swift_unknownObjectRelease();
      }

      v65 += 2;
      --v64;
    }

    while (v64);
  }
}

BOOL sub_21D3006AC(uint64_t a1, uint64_t a2)
{
  sub_21D0D3954(a1, v5, &qword_27CE5C690);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return (a2 & ~v4) == 0;
    }
  }

  else
  {
    sub_21D0CF7E0(v5, &qword_27CE5C690);
  }

  return 0;
}

uint64_t sub_21D300748(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 1;
  }

  sub_21D0D3954(a1, v3, &qword_27CE5C690);
  if (v4)
  {
    if ((swift_dynamicCast() & 1) != 0 && v2)
    {
      return 0;
    }
  }

  else
  {
    sub_21D0CF7E0(v3, &qword_27CE5C690);
  }

  return 1;
}

BOOL sub_21D3007EC(uint64_t a1)
{
  sub_21D0D3954(a1, v3, &qword_27CE5C690);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2 == 1;
    }
  }

  else
  {
    sub_21D0CF7E0(v3, &qword_27CE5C690);
  }

  return 0;
}

BOOL sub_21D30087C(uint64_t a1)
{
  sub_21D0D3954(a1, v3, &qword_27CE5C690);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2 == 2;
    }
  }

  else
  {
    sub_21D0CF7E0(v3, &qword_27CE5C690);
  }

  return 0;
}

BOOL sub_21D30090C(uint64_t a1)
{
  sub_21D0D3954(a1, v3, &qword_27CE5C690);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2 == 3;
    }
  }

  else
  {
    sub_21D0CF7E0(v3, &qword_27CE5C690);
  }

  return 0;
}

uint64_t TTRReminderCellNotesEditingPresenter.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_21D24A814(*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16));
  return v0;
}

uint64_t TTRReminderCellNotesEditingPresenter.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_21D24A814(*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16));

  return swift_deallocClassInstance();
}

uint64_t (*sub_21D300AD8(uint64_t *a1))()
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
  return sub_21D24BEC0;
}

uint64_t sub_21D300B6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state);
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 1);
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  a1[3] = &type metadata for EditingState;
  a1[4] = &off_282EB0BB8;
  v10 = swift_allocObject();
  *a1 = v10;
  *(v10 + 16) = v4;
  *(v10 + 17) = v5;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;

  return sub_21D24A7C4(v6, v7);
}

uint64_t sub_21D300C1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 16);
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 24);
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state + 32);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D24A7C4(v2, v3);
}

uint64_t sub_21D300CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 40) = 0;
  swift_unknownObjectWeakInit();
  v15 = (a6 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  *v15 = 0;
  v15[1] = 0;
  *(a6 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) = 0;
  v16 = a6 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
  *v16 = 0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  sub_21D24BDFC(a1, a6 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item);
  v17 = (a6 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter);
  *v17 = a2;
  v17[1] = a9;
  v18 = (a6 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter);
  *v18 = a3;
  v18[1] = a10;
  swift_beginAccess();
  *(a6 + 40) = a5;
  swift_unknownObjectWeakAssign();
  return a6;
}