uint64_t *initializeBufferWithCopyOfBuffer for TTRUserDefaults.SmartListVersionWarning(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t initializeWithCopy for TTRUserDefaults.SmartListVersionWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for TTRUserDefaults.SmartListVersionWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for TTRUserDefaults.SmartListVersionWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRUserDefaults.SmartListVersionWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21DA60BD8()
{
  result = sub_21DBF563C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for TTRUserDefaults.RemindersListLayoutKey(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = *a1;
  *a1 = v3;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t assignWithTake for TTRUserDefaults.RemindersListLayoutKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

unint64_t sub_21DA60D38()
{
  result = qword_27CE65200;
  if (!qword_27CE65200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65200);
  }

  return result;
}

unint64_t sub_21DA60D90()
{
  result = qword_27CE65208;
  if (!qword_27CE65208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65208);
  }

  return result;
}

unint64_t sub_21DA60DE8()
{
  result = qword_27CE65210;
  if (!qword_27CE65210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65210);
  }

  return result;
}

uint64_t sub_21DA60E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DA60E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DA60EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *TTRRemindersListInCellModule.init(interface:controller:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = (a4 + *(type metadata accessor for TTRRemindersListInCellModule() + 28));

  return sub_21D0CF2E8(a2, v6);
}

uint64_t TTRReminderCellTitleViewModel.init(item:allowsEditing:attributedTitle:font:isCompleted:subtaskCount:inlineHashtagVisibility:completedStateTextColor:isPonderingTextEffectVisible:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v17 = *a8;
  v18 = type metadata accessor for TTRReminderCellTitleViewModel();
  v19 = v18[7];
  v20 = a9 + v18[9];
  result = sub_21D24BDFC(a1, a9);
  *(a9 + v18[5]) = a2;
  *(a9 + v19) = a3;
  *(a9 + v18[6]) = a4;
  *(a9 + v18[8]) = a5;
  *v20 = a6;
  *(v20 + 8) = a7 & 1;
  *(a9 + v18[10]) = v17;
  *(a9 + v18[11]) = a10;
  *(a9 + v18[12]) = a11;
  return result;
}

uint64_t type metadata accessor for TTRReminderCellTitleViewModel()
{
  result = qword_280D18E90;
  if (!qword_280D18E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRReminderCellTitleViewModel.allowsEditing.setter(char a1)
{
  result = type metadata accessor for TTRReminderCellTitleViewModel();
  *(v1 + *(result + 20)) = a1;
  return result;
}

id TTRReminderCellTitleViewModel.baseFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderCellTitleViewModel() + 24));

  return v1;
}

void TTRReminderCellTitleViewModel.baseFont.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderCellTitleViewModel() + 24);

  *(v1 + v3) = a1;
}

void *TTRReminderCellTitleViewModel.attributedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderCellTitleViewModel() + 28));
  v2 = v1;
  return v1;
}

void TTRReminderCellTitleViewModel.attributedTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderCellTitleViewModel() + 28);

  *(v1 + v3) = a1;
}

uint64_t TTRReminderCellTitleViewModel.isCompleted.setter(char a1)
{
  result = type metadata accessor for TTRReminderCellTitleViewModel();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TTRReminderCellTitleViewModel.subtaskCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TTRReminderCellTitleViewModel();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TTRReminderCellTitleViewModel.inlineHashtagVisibility.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRReminderCellTitleViewModel() + 40));

  return sub_21DBF8E0C();
}

uint64_t TTRReminderCellTitleViewModel.inlineHashtagVisibility.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRReminderCellTitleViewModel() + 40);

  *(v1 + v3) = v2;
  return result;
}

id TTRReminderCellTitleViewModel.completedStateTextColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderCellTitleViewModel() + 44));

  return v1;
}

void TTRReminderCellTitleViewModel.completedStateTextColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderCellTitleViewModel() + 44);

  *(v1 + v3) = a1;
}

uint64_t TTRReminderCellTitleViewModel.isPonderingTextEffectVisible.setter(char a1)
{
  result = type metadata accessor for TTRReminderCellTitleViewModel();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t TTRReminderCellTitleViewModel.init(reminder:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRReminderCellTitleViewModel();
  v7 = v6[7];
  v8 = a3 + v6[9];
  sub_21D1D338C(a1, a3);
  v9 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(a3 + v6[5]) = *(a1 + v9[6] + 2);
  v10 = *(a1 + v9[7]);
  *(a3 + v7) = v10;
  *(a3 + v6[6]) = a2;
  *(a3 + v6[8]) = *(a1 + v9[8]);
  v11 = a1 + v9[23];
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 8);
  *v8 = v12;
  *(v8 + 8) = v11;
  *(a3 + v6[10]) = *(a1 + v9[35] + 8);
  v13 = *(a1 + v9[22]);
  sub_21DBF8E0C();
  v14 = v13;
  v15 = v10;
  result = sub_21DA66184(a1, type metadata accessor for TTRRemindersListViewModel.Reminder);
  *(a3 + v6[11]) = v14;
  *(a3 + v6[12]) = 0;
  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRReminderCellTitleViewModel(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(a2, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v114 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v114(a1 + v39, a2 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (a2 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_129;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(a2, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, a2, v48);
              *(a1 + *(v34 + 20)) = *(a2 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(a2 + *(v49 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *a2;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_130:
        v90 = a3[6];
        *(a1 + a3[5]) = *(a2 + a3[5]);
        v91 = *(a2 + v90);
        *(a1 + v90) = v91;
        v92 = a3[7];
        v93 = a3[8];
        v94 = *(a2 + v92);
        *(a1 + v92) = v94;
        *(a1 + v93) = *(a2 + v93);
        v95 = a3[9];
        v96 = a3[10];
        v97 = a1 + v95;
        v98 = a2 + v95;
        *v97 = *v98;
        v97[8] = v98[8];
        *(a1 + v96) = *(a2 + v96);
        v99 = a3[11];
        v100 = a3[12];
        v101 = *(a2 + v99);
        *(a1 + v99) = v101;
        *(a1 + v100) = *(a2 + v100);
        v102 = v91;
        v103 = v94;
        sub_21DBF8E0C();
        v104 = v101;
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v20 = a2[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_129;
      }

      v31 = *a2;
      *a1 = *a2;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(a2 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v15, a2 + v15, *(*(v27 - 8) + 64));
        goto LABEL_129;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v87 = *(a2 + v15);
        *(a1 + v15) = v87;
        v88 = v87;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_129;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v15, a2 + v15, *(v17 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v89 = sub_21DBF563C();
      (*(*(v89 - 8) + 16))(a1 + v15, a2 + v15, v89);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(a2 + v15, 1, v16))
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

      else
      {
        v14 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
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

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = a2 + v57;
      v60 = *(a2 + v57 + 8);
      if (v60)
      {
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v106 = *(v59 + 6);
        v115 = *(v59 + 7);
        v110 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v106, v115, v110);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v106;
        *(v58 + 7) = v115;
        v58[64] = v110;
        *(v58 + 65) = *(v59 + 65);
        v65 = v59[120];
        if (v65 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v111 = *(v59 + 10);
          v116 = *(v59 + 9);
          v66 = *(v59 + 12);
          v107 = *(v59 + 11);
          v67 = *(v59 + 13);
          v68 = *(v59 + 14);
          v69 = v65 & 1;
          sub_21D0FB960(v116, v111, v107, v66, v67, v68, v65 & 1);
          *(v58 + 9) = v116;
          *(v58 + 10) = v111;
          *(v58 + 11) = v107;
          *(v58 + 12) = v66;
          *(v58 + 13) = v67;
          *(v58 + 14) = v68;
          v58[120] = v69;
        }

        v58[121] = v59[121];
        goto LABEL_98;
      }

LABEL_95:
      v70 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v70;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v71 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v71;
      v72 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v72;
LABEL_98:
      *(a1 + v56[6]) = *(a2 + v56[6]);
      *(a1 + v56[7]) = *(a2 + v56[7]);
      *(a1 + v56[8]) = *(a2 + v56[8]);
      *(a1 + v56[9]) = *(a2 + v56[9]);
      *(a1 + v56[10]) = *(a2 + v56[10]);
      v73 = v56[11];
      v74 = *(a2 + v73);
      *(a1 + v73) = v74;
      v75 = v74;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *a2;
      *a1 = *a2;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, a2, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v76 = v56[5];
    v58 = a1 + v76;
    v59 = a2 + v76;
    v77 = *(a2 + v76 + 8);
    if (v77)
    {
      *v58 = *v59;
      *(v58 + 1) = v77;
      v78 = *(v59 + 2);
      v79 = *(v59 + 3);
      v80 = *(v59 + 4);
      v81 = *(v59 + 5);
      v108 = *(v59 + 6);
      v117 = *(v59 + 7);
      v112 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v78, v79, v80, v81, v108, v117, v112);
      *(v58 + 2) = v78;
      *(v58 + 3) = v79;
      *(v58 + 4) = v80;
      *(v58 + 5) = v81;
      *(v58 + 6) = v108;
      *(v58 + 7) = v117;
      v58[64] = v112;
      *(v58 + 65) = *(v59 + 65);
      v82 = v59[120];
      if (v82 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v113 = *(v59 + 10);
        v118 = *(v59 + 9);
        v83 = *(v59 + 12);
        v109 = *(v59 + 11);
        v84 = *(v59 + 13);
        v85 = *(v59 + 14);
        v86 = v82 & 1;
        sub_21D0FB960(v118, v113, v109, v83, v84, v85, v82 & 1);
        *(v58 + 9) = v118;
        *(v58 + 10) = v113;
        *(v58 + 11) = v109;
        *(v58 + 12) = v83;
        *(v58 + 13) = v84;
        *(v58 + 14) = v85;
        v58[120] = v86;
      }

      v58[121] = v59[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = (v11 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRReminderCellTitleViewModel(id *a1, int *a2)
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

  v22 = *(a1 + a2[11]);
}

void **initializeWithCopy for TTRReminderCellTitleViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
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

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v117 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
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

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
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
        v108 = *(v57 + 7);
        v113 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v63, v108, v113);
        *(v56 + 2) = v59;
        *(v56 + 3) = v60;
        *(v56 + 4) = v61;
        *(v56 + 5) = v62;
        *(v56 + 6) = v63;
        *(v56 + 7) = v108;
        v56[64] = v113;
        *(v56 + 65) = *(v57 + 65);
        v64 = v57[120];
        if (v64 == 255)
        {
          *(v56 + 72) = *(v57 + 72);
          *(v56 + 88) = *(v57 + 88);
          *(v56 + 104) = *(v57 + 104);
          v56[120] = v57[120];
        }

        else
        {
          v65 = *(v57 + 9);
          v66 = *(v57 + 12);
          v109 = *(v57 + 11);
          v114 = *(v57 + 10);
          v67 = *(v57 + 13);
          v68 = *(v57 + 14);
          v69 = v64 & 1;
          sub_21D0FB960(v65, v114, v109, v66, v67, v68, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v114;
          *(v56 + 11) = v109;
          *(v56 + 12) = v66;
          *(v56 + 13) = v67;
          *(v56 + 14) = v68;
          v56[120] = v69;
        }

        a3 = v117;
        v56[121] = v57[121];
        goto LABEL_96;
      }

LABEL_93:
      v70 = *(v57 + 5);
      *(v56 + 4) = *(v57 + 4);
      *(v56 + 5) = v70;
      *(v56 + 6) = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      v71 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v71;
      v72 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v72;
LABEL_96:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v73 = v54[11];
      v74 = *(a2 + v73);
      *(a1 + v73) = v74;
      v75 = v74;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v118 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
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

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v76 = v54[5];
    v56 = a1 + v76;
    v57 = a2 + v76;
    v77 = *(a2 + v76 + 8);
    if (v77)
    {
      *v56 = *v57;
      *(v56 + 1) = v77;
      v78 = *(v57 + 2);
      v79 = *(v57 + 3);
      v80 = *(v57 + 4);
      v81 = *(v57 + 5);
      v82 = *(v57 + 6);
      v110 = *(v57 + 7);
      v115 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v78, v79, v80, v81, v82, v110, v115);
      *(v56 + 2) = v78;
      *(v56 + 3) = v79;
      *(v56 + 4) = v80;
      *(v56 + 5) = v81;
      *(v56 + 6) = v82;
      *(v56 + 7) = v110;
      v56[64] = v115;
      *(v56 + 65) = *(v57 + 65);
      v83 = v57[120];
      if (v83 == 255)
      {
        *(v56 + 72) = *(v57 + 72);
        *(v56 + 88) = *(v57 + 88);
        *(v56 + 104) = *(v57 + 104);
        v56[120] = v57[120];
      }

      else
      {
        v84 = *(v57 + 9);
        v85 = *(v57 + 12);
        v111 = *(v57 + 11);
        v116 = *(v57 + 10);
        v86 = *(v57 + 13);
        v87 = *(v57 + 14);
        v88 = v83 & 1;
        sub_21D0FB960(v84, v116, v111, v85, v86, v87, v83 & 1);
        *(v56 + 9) = v84;
        *(v56 + 10) = v116;
        *(v56 + 11) = v111;
        *(v56 + 12) = v85;
        *(v56 + 13) = v86;
        *(v56 + 14) = v87;
        v56[120] = v88;
      }

      a3 = v118;
      v56[121] = v57[121];
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
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
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
      v89 = *(a2 + v13);
      *(a1 + v13) = v89;
      v90 = v89;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
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
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v91 = sub_21DBF563C();
    (*(*(v91 - 8) + 16))(a1 + v13, a2 + v13, v91);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v112 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v112(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
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
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1, a2, v46);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  v92 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v93 = *(a2 + v92);
  *(a1 + v92) = v93;
  v94 = a3[7];
  v95 = a3[8];
  v96 = *(a2 + v94);
  *(a1 + v94) = v96;
  *(a1 + v95) = *(a2 + v95);
  v97 = a3[9];
  v98 = a3[10];
  v99 = a1 + v97;
  v100 = a2 + v97;
  *v99 = *v100;
  v99[8] = v100[8];
  *(a1 + v98) = *(a2 + v98);
  v101 = a3[11];
  v102 = a3[12];
  v103 = *(a2 + v101);
  *(a1 + v101) = v103;
  *(a1 + v102) = *(a2 + v102);
  v104 = v93;
  v105 = v96;
  sub_21DBF8E0C();
  v106 = v103;
  return a1;
}

void *assignWithCopy for TTRReminderCellTitleViewModel(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21DA66184(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
            if ((*(v27 + 48))(a2, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v120 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v120(a1 + v37, a2 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (a2 + v39);
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
            if ((*(v33 + 48))(a2, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, a2, v46);
              *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *a2;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v18 = a2[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *a2;
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(a2 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
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
        v92 = *(a2 + v13);
        *(a1 + v13) = v92;
        v93 = v92;
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
          memcpy(a1 + v13, a2 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v94 = sub_21DBF563C();
      (*(*(v94 - 8) + 16))(a1 + v13, a2 + v13, v94);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
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
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
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
LABEL_34:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
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
        v49 = *a2;
        *a1 = *a2;
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
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      if (*(a2 + v55 + 8))
      {
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v112 = *(v57 + 6);
        v121 = *(v57 + 7);
        v116 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v112, v121, v116);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v112;
        *(v56 + 7) = v121;
        v56[64] = v116;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v62 = v57[120];
        if (v62 == 255)
        {
          v73 = *(v57 + 72);
          v74 = *(v57 + 88);
          v75 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v75;
          *(v56 + 88) = v74;
          *(v56 + 72) = v73;
        }

        else
        {
          v117 = *(v57 + 10);
          v122 = *(v57 + 9);
          v63 = *(v57 + 12);
          v113 = *(v57 + 11);
          v64 = *(v57 + 13);
          v65 = *(v57 + 14);
          v66 = v62 & 1;
          sub_21D0FB960(v122, v117, v113, v63, v64, v65, v62 & 1);
          *(v56 + 9) = v122;
          *(v56 + 10) = v117;
          *(v56 + 11) = v113;
          *(v56 + 12) = v63;
          *(v56 + 13) = v64;
          *(v56 + 14) = v65;
          v56[120] = v66;
        }

        v56[121] = v57[121];
        goto LABEL_97;
      }

LABEL_94:
      v67 = *v57;
      v68 = *(v57 + 1);
      v69 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v69;
      *v56 = v67;
      *(v56 + 1) = v68;
      v70 = *(v57 + 4);
      v71 = *(v57 + 5);
      v72 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v71;
      *(v56 + 6) = v72;
      *(v56 + 4) = v70;
LABEL_97:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v76 = v54[11];
      v77 = *(a2 + v76);
      *(a1 + v76) = v77;
      v78 = v77;
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
        (*(*(v51 - 8) + 16))(a1, a2, v51);
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
      v52 = *a2;
      *a1 = *a2;
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
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v79 = v54[5];
    v56 = a1 + v79;
    v57 = a2 + v79;
    if (*(a2 + v79 + 8))
    {
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v80 = *(v57 + 2);
      v81 = *(v57 + 3);
      v82 = *(v57 + 4);
      v83 = *(v57 + 5);
      v114 = *(v57 + 6);
      v123 = *(v57 + 7);
      v118 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v80, v81, v82, v83, v114, v123, v118);
      *(v56 + 2) = v80;
      *(v56 + 3) = v81;
      *(v56 + 4) = v82;
      *(v56 + 5) = v83;
      *(v56 + 6) = v114;
      *(v56 + 7) = v123;
      v56[64] = v118;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v84 = v57[120];
      if (v84 == 255)
      {
        v89 = *(v57 + 72);
        v90 = *(v57 + 88);
        v91 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v91;
        *(v56 + 88) = v90;
        *(v56 + 72) = v89;
      }

      else
      {
        v119 = *(v57 + 10);
        v124 = *(v57 + 9);
        v85 = *(v57 + 12);
        v115 = *(v57 + 11);
        v86 = *(v57 + 13);
        v87 = *(v57 + 14);
        v88 = v84 & 1;
        sub_21D0FB960(v124, v119, v115, v85, v86, v87, v84 & 1);
        *(v56 + 9) = v124;
        *(v56 + 10) = v119;
        *(v56 + 11) = v115;
        *(v56 + 12) = v85;
        *(v56 + 13) = v86;
        *(v56 + 14) = v87;
        v56[120] = v88;
      }

      v56[121] = v57[121];
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v95 = a3[6];
  v96 = *(a2 + v95);
  v97 = *(a1 + v95);
  *(a1 + v95) = v96;
  v98 = v96;

  v99 = a3[7];
  v100 = *(a1 + v99);
  v101 = *(a2 + v99);
  *(a1 + v99) = v101;
  v102 = v101;

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v103 = a3[9];
  v104 = a1 + v103;
  v105 = a2 + v103;
  v106 = v105[8];
  *v104 = *v105;
  v104[8] = v106;
  *(a1 + a3[10]) = *(a2 + a3[10]);
  sub_21DBF8E0C();

  v107 = a3[11];
  v108 = *(a2 + v107);
  v109 = *(a1 + v107);
  *(a1 + v107) = v108;
  v110 = v108;

  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t sub_21DA66184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for TTRReminderCellTitleViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
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
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
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
        goto LABEL_87;
      }

      goto LABEL_32;
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
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
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
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
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
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

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
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v42] = *&a2[v42];
  v43 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  a1[v43] = a2[v43];
  v44 = a3[9];
  v45 = a3[10];
  v46 = &a1[v44];
  v47 = &a2[v44];
  *v46 = *v47;
  v46[8] = v47[8];
  *&a1[v45] = *&a2[v45];
  v48 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  a1[v48] = a2[v48];
  return a1;
}

void *assignWithTake for TTRReminderCellTitleViewModel(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21DA66184(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

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
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
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
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

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
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

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
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  v42 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  v44 = a3[7];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);

  v46 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v47 = a1 + v46;
  v48 = a2 + v46;
  *v47 = *v48;
  v47[8] = v48[8];
  *(a1 + a3[10]) = *(a2 + a3[10]);

  v49 = a3[11];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t sub_21DA684A8()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21DA68568()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21DA68600(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = *(((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    *(((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 24) = v10;
    (**(v10 - 8))();
  }

  return v3;
}

uint64_t sub_21DA6872C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_21DA68798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = *(((v6 + a2) & 0xFFFFFFFFFFFFFFF8) + 24);
  *(((v6 + a1) & 0xFFFFFFFFFFFFFFF8) + 24) = v7;
  (**(v7 - 8))();
  return a1;
}

uint64_t sub_21DA6884C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  __swift_assign_boxed_opaque_existential_0(((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8), ((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8));
  return a1;
}

uint64_t sub_21DA688C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  return a1;
}

uint64_t sub_21DA68940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_0(v7);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  return a1;
}

uint64_t sub_21DA689C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_21DA68B00(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v18[2] = 0;
      v18[3] = 0;
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[3] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_21DA68CBC(uint64_t a1)
{
  v44 = sub_21DBF6D7C();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_21DBF6F8C();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v10 = sub_21DBFBF9C();
    v46 = v10;
    v11 = sub_21DBF718C();
    v33 = *(v11 + 16);
    if (!v33)
    {
      break;
    }

    v12 = 0;
    v13 = v28;
    v32 = v11 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v31 = v28 + 16;
    v45 = v2 + 16;
    v14 = (v2 + 8);
    v29 = (v28 + 8);
    v37 = v2;
    v38 = v7;
    v43 = a1;
    v27 = v8;
    v30 = v11;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        goto LABEL_38;
      }

      v16 = *(v13 + 72);
      v34 = v12;
      (*(v13 + 16))(v36, v32 + v16 * v12, v8);
      if (v10 >> 62)
      {
        if (sub_21DBFBD7C() >= a1)
        {
          goto LABEL_6;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
      {
        goto LABEL_6;
      }

      v17 = sub_21DBF6F7C();
      v42 = *(v17 + 16);
      if (v42)
      {
        break;
      }

LABEL_5:
      v13 = v28;
LABEL_6:
      v15 = v34 + 1;
      (*v29)(v36, v8);
      v12 = v15;
      v11 = v30;
      if (v15 == v33)
      {
        goto LABEL_36;
      }
    }

    v8 = 0;
    v35 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v40 = v17 + v35;
    v41 = v17;
    v18 = v44;
    while (v8 < *(v17 + 16))
    {
      v19 = *(v2 + 72);
      v20 = *(v2 + 16);
      v20(v7, v40 + v19 * v8, v18);
      if (v10 >> 62)
      {
        if (sub_21DBFBD7C() < a1)
        {
LABEL_17:
          sub_21DBF6D5C();
          v21 = swift_beginAccess();
          MEMORY[0x223D42D80](v21);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
            v7 = v38;
          }

          sub_21DBFA6CC();
          v10 = v46;
          swift_endAccess();
          v22 = sub_21DBF6D6C();
          if (v22)
          {
            v23 = *(v22 + 16);
            a1 = v43;
            v18 = v44;
            v39 = v22;
            if (v23)
            {
              v24 = v22 + v35;
              do
              {
                v20(v4, v24, v18);
                if (v10 >> 62)
                {
                  if (sub_21DBFBD7C() < a1)
                  {
LABEL_26:
                    sub_21DBF6D5C();
                    v25 = swift_beginAccess();
                    MEMORY[0x223D42D80](v25);
                    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_21DBFA63C();
                    }

                    sub_21DBFA6CC();
                    v10 = v46;
                    swift_endAccess();
                    a1 = v43;
                    v18 = v44;
                  }
                }

                else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
                {
                  goto LABEL_26;
                }

                (*v14)(v4, v18);
                v24 += v19;
                --v23;
              }

              while (v23);
            }

            v2 = v37;
            v7 = v38;
          }

          else
          {
            a1 = v43;
            v18 = v44;
          }
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
      {
        goto LABEL_17;
      }

      ++v8;
      (*v14)(v7, v18);
      v17 = v41;
      if (v8 == v42)
      {

        v8 = v27;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    sub_21DBFBD7C();
  }

LABEL_36:

  return v10;
}

Swift::tuple_contact_CNContact_fullname_String __swiftcall REMContactsProviderType.syncContactAndFullName(for:keys:)(RemindersUICore::TTRParticipantModel *a1, Swift::OpaquePointer_optional keys)
{
  sub_21DA6977C(keys.value._rawValue);
  emailAddress = a1->emailAddress;
  lastName = a1->lastName;
  v23 = emailAddress;
  phoneNumber = a1->phoneNumber;
  firstName = a1->firstName;
  displayName = a1->displayName;
  v21 = firstName;
  v5 = TTRParticipantModel.contactHandles.getter();
  if (v5)
  {
    v6 = v5;
    v7 = sub_21DBF6A4C();
    v9 = v8;

    if ((v9 & 1) == 0)
    {

      goto LABEL_7;
    }

    displayName.value._countAndFlagsBits = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    swift_willThrowTypedImpl();

    sub_21D3A229C(v7);
  }

  else
  {
  }

  v7 = 0;
LABEL_7:
  v10 = a1->emailAddress;
  lastName = a1->lastName;
  v23 = v10;
  phoneNumber = a1->phoneNumber;
  v11 = a1->firstName;
  displayName = a1->displayName;
  v21 = v11;
  v12 = sub_21DA69814(&displayName.value._countAndFlagsBits, v7);
  v14 = v13;
  v16 = v15;

  v17 = v12;
  v18 = v14;
  v19 = v16;
  result.fullname._object = v19;
  result.fullname._countAndFlagsBits = v18;
  result.contact.super.isa = v17;
  return result;
}

__n128 REMContactsProviderType.loadContactSynchronously(for:keys:)(Swift::String_optional *a1, uint64_t a2)
{
  sub_21DA6977C(a2);
  v3 = a1[4];
  v38 = a1[3];
  v39 = v3;
  v40 = a1[5];
  v4 = a1[2];
  v36 = a1[1];
  v37 = v4;
  v5 = TTRParticipantModel.contactHandles.getter();
  if (!v5)
  {

    goto LABEL_5;
  }

  v6 = v5;
  v7 = sub_21DBF6A4C();
  v9 = v8;

  if (v9)
  {
    sub_21D3A229C(v7);
LABEL_5:
    v10 = a1[2];
    v11 = a1[4];
    v35.lastName = a1[3];
    v35.emailAddress = v11;
    v12 = a1[4];
    v35.phoneNumber = a1[5];
    v13 = a1[2];
    v35.displayName = a1[1];
    v35.firstName = v13;
    lastName = v35.lastName;
    v33 = v12;
    v34 = a1[5];
    displayName = v35.displayName;
    v31 = v10;
    sub_21D1D9B34(&v35, &v36);
    v14 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&displayName);
    v38 = lastName;
    v39 = v33;
    v40 = v34;
    v36 = displayName;
    v37 = v31;
    sub_21D1D9B90(&v36);

    a1->value._object = v14;
    return result;
  }

  object = a1->value._object;
  sub_21D64F74C(v7);
  v17 = v7;

  v18 = a1[2];
  v19 = a1[4];
  v27 = a1[3];
  v28 = v19;
  v20 = a1[4];
  v29 = a1[5];
  v21 = a1[2];
  v26[0] = a1[1];
  v22 = v26[0];
  v26[1] = v21;
  v38 = v27;
  v39 = v20;
  v40 = a1[5];
  a1->value._object = v7;
  v36 = v22;
  v37 = v18;
  sub_21D1D9B34(v26, &v35);
  TTRParticipantModel.updatingNames(with:)(&v35, v17);
  sub_21D3A229C(v7);
  sub_21D3A229C(v7);
  lastName = v38;
  v33 = v39;
  v34 = v40;
  displayName = v36;
  v31 = v37;
  sub_21D1D9B90(&displayName);
  v23 = a1[4];
  v38 = a1[3];
  v39 = v23;
  v40 = a1[5];
  v24 = a1[2];
  v36 = a1[1];
  v37 = v24;
  sub_21D1D9B90(&v36);
  emailAddress = v35.emailAddress;
  a1[3] = v35.lastName;
  a1[4] = emailAddress;
  a1[5] = v35.phoneNumber;
  result = v35.firstName;
  a1[1] = v35.displayName;
  a1[2] = result;
  return result;
}

void REMContactsProviderType.loadContact(for:keys:updateHandler:)(Swift::String_optional *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[2];
  v9 = a1[4];
  v45 = a1[3];
  v46 = v9;
  v10 = a1[4];
  v47 = a1[5];
  v11 = a1[2];
  v44[0] = a1[1];
  v44[1] = v11;
  v41 = v45;
  v42 = v10;
  v43 = a1[5];
  v39 = v44[0];
  v40 = v8;
  sub_21D1D9B34(v44, v48);
  v12 = sub_21DA69BEC(&v39.value._countAndFlagsBits, a2, a3, a4);
  v48[2] = v41;
  v48[3] = v42;
  v48[4] = v43;
  v48[0] = v39;
  v48[1] = v40;
  sub_21D1D9B90(v48);
  if (v12)
  {
    object = a1->value._object;
    v14 = v12;

    v15 = a1[2];
    v16 = a1[4];
    v30 = a1[3];
    v31 = v16;
    v17 = a1[4];
    v32 = a1[5];
    v18 = a1[2];
    v29[0] = a1[1];
    v19 = v29[0];
    v29[1] = v18;
    v41 = v30;
    v42 = v17;
    v43 = a1[5];
    a1->value._object = v12;
    v39 = v19;
    v40 = v15;
    sub_21D1D9B34(v29, &v38);
    TTRParticipantModel.updatingNames(with:)(&v38, v14);

    lastName = v41;
    v36 = v42;
    v37 = v43;
    displayName = v39;
    v34 = v40;
    sub_21D1D9B90(&displayName);
    v20 = a1[4];
    v41 = a1[3];
    v42 = v20;
    v43 = a1[5];
    v21 = a1[2];
    v39 = a1[1];
    v40 = v21;
    sub_21D1D9B90(&v39);
    emailAddress = v38.emailAddress;
    a1[3] = v38.lastName;
    a1[4] = emailAddress;
    a1[5] = v38.phoneNumber;
    firstName = v38.firstName;
    a1[1] = v38.displayName;
    a1[2] = firstName;
  }

  else
  {
    v24 = a1[2];
    v25 = a1[4];
    v38.lastName = a1[3];
    v38.emailAddress = v25;
    v26 = a1[4];
    v38.phoneNumber = a1[5];
    v27 = a1[2];
    v38.displayName = a1[1];
    v38.firstName = v27;
    lastName = v38.lastName;
    v36 = v26;
    v37 = a1[5];
    displayName = v38.displayName;
    v34 = v24;
    sub_21D1D9B34(&v38, &v39);
    v28 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&displayName);
    v41 = lastName;
    v42 = v36;
    v43 = v37;
    v39 = displayName;
    v40 = v34;
    sub_21D1D9B90(&v39);

    a1->value._object = v28;
  }
}

uint64_t sub_21DA6977C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_21DC09CF0;
    *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  }

  sub_21DBF8E0C();
  return v1;
}

id sub_21DA69814(__int128 *a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v5 = a1[3];
    v16 = a1[2];
    v17 = v5;
    v18 = a1[4];
    v6 = a1[1];
    v14 = *a1;
    v15 = v6;
    v4 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v14);
  }

  v7 = objc_opt_self();
  v8 = a2;
  v9 = [v7 stringFromContact:v4 style:0];
  if (v9)
  {
    v10 = v9;
    sub_21DBFA16C();
  }

  else
  {
    v11 = a1[3];
    v16 = a1[2];
    v17 = v11;
    v18 = a1[4];
    v12 = a1[1];
    v14 = *a1;
    v15 = v12;
    TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
  }

  return v4;
}

uint64_t REMContactsProviderType.contactAndFullName(for:keys:updateHandler:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - v8);
  sub_21DA6977C(a2);
  v10 = a1[3];
  v26 = a1[2];
  v27 = v10;
  v28 = a1[4];
  v11 = a1[1];
  v24 = *a1;
  v25 = v11;
  v12 = TTRParticipantModel.contactHandles.getter();
  if (!v12)
  {

    goto LABEL_9;
  }

  v13 = v12;
  sub_21DBF6A7C();
  v14 = (*(v7 + 88))(v9, v6);
  if (v14 == *MEMORY[0x277D450E0])
  {

    (*(v7 + 96))(v9, v6);
    v15 = swift_allocObject();
    *(v15 + 16) = v22;
    *(v15 + 24) = v23;

    v16 = sub_21DBF816C();
    sub_21DBF820C();

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  if (v14 == *MEMORY[0x277D450E8])
  {

    (*(v7 + 96))(v9, v6);
    v17 = *v9;
LABEL_10:
    v18 = a1[3];
    v26 = a1[2];
    v27 = v18;
    v28 = a1[4];
    v19 = a1[1];
    v24 = *a1;
    v25 = v19;
    v20 = sub_21DA69814(&v24, v17);

    return v20;
  }

  if (v14 == *MEMORY[0x277D450D8])
  {

    (*(v7 + 8))(v9, v6);
    goto LABEL_9;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21DA69BEC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = a1[3];
  v23 = a1[2];
  v24 = v11;
  v25 = a1[4];
  v12 = a1[1];
  v21 = *a1;
  v22 = v12;
  sub_21DA6977C(a2);
  v13 = TTRParticipantModel.contactHandles.getter();
  if (v13)
  {
    v14 = v13;
    sub_21DBF6A7C();
    v15 = (*(v8 + 88))(v10, v7);
    if (v15 == *MEMORY[0x277D450E0])
    {

      (*(v8 + 96))(v10, v7);
      v16 = swift_allocObject();
      *(v16 + 16) = v20;
      *(v16 + 24) = a4;

      v17 = sub_21DBF816C();
      sub_21DBF820C();
    }

    else
    {
      if (v15 == *MEMORY[0x277D450E8])
      {

        (*(v8 + 96))(v10, v7);
        return *v10;
      }

      if (v15 != *MEMORY[0x277D450D8])
      {
        result = sub_21DBFC63C();
        __break(1u);
        return result;
      }

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
  }

  return 0;
}

Class REMContactsProviderType.loadContact(for:keys:updateHandler:)(Swift::String_optional *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v10 = a1[3];
  v28 = a1[4];
  v11 = a1[1];
  v25[0] = *a1;
  v25[1] = v11;
  v24.lastName = v26;
  v24.emailAddress = v10;
  v24.phoneNumber = a1[4];
  v24.displayName = v25[0];
  v24.firstName = v8;
  sub_21D1D9B34(v25, &v29);
  v12.super.isa = sub_21DA69BEC(&v24.displayName.value._countAndFlagsBits, a2, a3, a4);
  v29 = v24;
  sub_21D1D9B90(&v29);
  if (v12.super.isa)
  {
    v13 = a1[3];
    v22.lastName = a1[2];
    v22.emailAddress = v13;
    v22.phoneNumber = a1[4];
    v14 = a1[1];
    v22.displayName = *a1;
    v22.firstName = v14;
    TTRParticipantModel.updatingNames(with:)(&v24, v12);
    v23 = v22;
    sub_21D1D9B90(&v23);
    emailAddress = v24.emailAddress;
    a1[2] = v24.lastName;
    a1[3] = emailAddress;
    a1[4] = v24.phoneNumber;
    firstName = v24.firstName;
    *a1 = v24.displayName;
    a1[1] = firstName;
  }

  else
  {
    v17 = a1[1];
    v18 = a1[3];
    v23.lastName = a1[2];
    v23.emailAddress = v18;
    v19 = a1[3];
    v23.phoneNumber = a1[4];
    v20 = a1[1];
    v23.displayName = *a1;
    v23.firstName = v20;
    v22.lastName = v23.lastName;
    v22.emailAddress = v19;
    v22.phoneNumber = a1[4];
    v22.displayName = v23.displayName;
    v22.firstName = v17;
    sub_21D1D9B34(&v23, &v24);
    v12.super.isa = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v22);
    v24 = v22;
    sub_21D1D9B90(&v24);
  }

  return v12.super.isa;
}

id static UIFont.roundedSystemFont(ofSize:weight:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:a1 weight:a2];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithDesign_];

  if (!v7)
  {
    return v5;
  }

  v8 = [v4 fontWithDescriptor:v7 size:0.0];

  return v8;
}

UIFont __swiftcall UIFont.addingTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 symbolicTraits];
  if ((a1 & ~v4) != 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];

    return v7;
  }

  else
  {

    return v9;
  }
}

id static UIFont.roundedCustomFont(textStyle:contentSizeCategory:maximumContentSizeCategory:weight:)(uint64_t a1, UIContentSizeCategory lhs, UIContentSizeCategory rhs, uint64_t a4, char a5)
{
  if (UIContentSizeCategoryCompareToCategory(lhs, rhs) == NSOrderedDescending)
  {
    v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v10 = objc_opt_self();
    v11 = [v10 preferredFontForTextStyle:a1 compatibleWithTraitCollection:v9];
    v12 = v11;
    if ((a5 & 1) == 0)
    {
      [v11 pointSize];
      v13 = [v10 systemFontOfSize_weight_];

      v12 = v13;
    }

    v14 = [v12 fontDescriptor];
    v15 = [v14 fontDescriptorWithDesign_];

    if (v15)
    {
      v16 = [v10 fontWithDescriptor:v15 size:0.0];

      return v16;
    }

    else
    {
      return v12;
    }
  }

  else
  {

    return sub_21D10FA9C(a1, a4, a5 & 1, 0);
  }
}

UIFont __swiftcall UIFont.withTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v2 = *&a1;
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {

    return v7;
  }
}

id static UIFont.roundedSystemFont.getter()
{
  UIAccessibilityIsBoldTextEnabled();
  v0 = objc_opt_self();
  [v0 systemFontSize];
  v1 = [v0 systemFontOfSize_weight_];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithDesign_];

  if (!v3)
  {
    return v1;
  }

  v4 = [v0 fontWithDescriptor:v3 size:0.0];

  return v4;
}

id static UIFont.roundedFont(ofSizeMatching:weight:)(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle_];
  [v5 pointSize];
  v7 = v6;

  v8 = [v4 systemFontOfSize:v7 weight:a2];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithDesign_];

  if (!v10)
  {
    return v8;
  }

  v11 = [v4 fontWithDescriptor:v10 size:0.0];

  return v11;
}

UIFont __swiftcall UIFont.withCustomWeight(_:)(UIFontWeight a1)
{
  v3 = [v1 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652B0);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D74430];
  *(inited + 16) = xmmword_21DC08D00;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = a1;
  v7 = v6;
  v8 = sub_21D10FD44(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE652B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652C0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_21DC08D00;
  v10 = *MEMORY[0x277D74380];
  *(v9 + 32) = *MEMORY[0x277D74380];
  *(v9 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE652C8);
  *(v9 + 40) = v8;
  v11 = v10;
  sub_21D10FFE4(v9);
  swift_setDeallocating();
  sub_21D0CF7E0(v9 + 32, &qword_27CE58160);
  type metadata accessor for AttributeName(0);
  sub_21D11010C();
  v12 = sub_21DBF9E5C();

  v13 = [v3 fontDescriptorByAddingAttributes_];

  if (v13)
  {
    v14 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];

    return v14;
  }

  else
  {

    return v16;
  }
}

id static UIFont.bodyFont.getter()
{
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  return sub_21D9004E8();
}

id sub_21DA6A9E4(uint64_t a1)
{
  if (qword_280D176B8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_21D900614(a1);
}

id static UIFont.roundedNavigationTitleFont.getter()
{
  v0 = *MEMORY[0x277D76988];
  v1 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v1];

  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithDesign_];

  if (!v5)
  {
    return v3;
  }

  v6 = [v2 fontWithDescriptor:v5 size:0.0];

  return v6;
}

id static UIFont.roundedLargeNavigationTitleFont.getter()
{
  v0 = *MEMORY[0x277D769A8];
  v1 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v1];
  [v3 pointSize];
  v4 = [v2 systemFontOfSize_weight_];

  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithDesign_];

  if (!v6)
  {
    return v4;
  }

  v7 = [v2 fontWithDescriptor:v6 size:0.0];

  return v7;
}

void sub_21DA6ACBC()
{
  type metadata accessor for TTRIFontCache();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F98];
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_contentSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_boldTextStatusChanged_ name:*MEMORY[0x277D76448] object:0];

  qword_280D176C0 = v0;
}

id sub_21DA6ADA8(NSString *a1, NSString *a2, uint64_t a3, char a4)
{
  v7 = *MEMORY[0x277D76918];
  if (UIContentSizeCategoryCompareToCategory(a1, a2) == NSOrderedDescending)
  {
    v8 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v9 = objc_opt_self();
    v10 = [v9 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];
    v11 = v10;
    if ((a4 & 1) == 0)
    {
      [v10 pointSize];
      v12 = [v9 systemFontOfSize_weight_];

      v11 = v12;
    }

    v13 = [v11 fontDescriptor];
    v14 = [v13 fontDescriptorWithDesign_];

    if (v14)
    {
      v15 = [v9 fontWithDescriptor:v14 size:0.0];

      return v15;
    }

    else
    {
      return v11;
    }
  }

  else
  {

    return sub_21D10FA9C(v7, a3, a4 & 1, 0);
  }
}

uint64_t TTRObservableViewModel.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TTRObservableViewModel.deinit()
{
  v1 = v0;

  sub_21DBF905C();

  v2 = *(*v0 + 88);
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t TTRObservableViewModel.__deallocating_deinit()
{
  TTRObservableViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRITextCellContentState.init(text:placeholder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = a4;
  *(a5 + 40) = 0;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = a3;
  return result;
}

void *TTRITextCellContentState.text.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3 = [v1 string];
    v4 = sub_21DBFA16C();

    sub_21D5968AC(v1, v2, 1);
    return v4;
  }

  else
  {
    sub_21DBF8E0C();
  }

  return v1;
}

Swift::Void __swiftcall TTRITextCellContent.setCurrentText(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *v1;
  v6 = *MEMORY[0x277D85000] & *v1;
  v7 = *((*MEMORY[0x277D85000] & v5) + 0x68);
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (v8)
  {
    v10 = *(v6 + 232);
    v9 = *(v6 + 240);
    v11 = *(v9 + 24);
    v12 = v8;
    v13 = v11(v10, v9);
    v15 = v14;

    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    sub_21DBF8E0C();
    v17(countAndFlagsBits, object, ObjectType, v15);
    sub_21DA6D780(v13, v15, 0);
    swift_unknownObjectRelease();
  }
}

uint64_t TTRITextCellContent.currentText.getter()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    return 0;
  }

  v6 = v1 + 232;
  v4 = *(v1 + 232);
  v5 = *(v6 + 8);
  v7 = *(v5 + 24);
  v8 = v3;
  v7(v4, v5);
  v10 = v9;

  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 8))(ObjectType, v10);
  swift_unknownObjectRelease();
  return v12;
}

Swift::Void __swiftcall TTRITextCellContent.setTextIfNotEditing(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if ((TTRITextCellContent.isEditing.getter() & 1) == 0)
  {
    v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = v4[16];
    v8 = v4[17];
    v10 = *(v4 + 3);
    v9 = *(v4 + 4);
    v11 = *(v4 + 5);
    sub_21D59B950(v5, v6, v7);
    v12 = v11;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D5968AC(v5, v6, v7);
    v14 = countAndFlagsBits;
    v15 = object;
    v16 = 0;
    v17 = v8;
    v18 = v10;
    v19 = v9;
    v20 = v11;
    sub_21DBE9678(&v14);
    v13 = v20;
    sub_21D5968AC(v14, v15, v16);
  }
}

void TTRITextCellContentState.text.setter(uint64_t a1, uint64_t a2)
{
  sub_21D5968AC(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;
}

Swift::Void __swiftcall TTRITextCellContent.setCellSelected(isSelected:)(Swift::Bool isSelected)
{
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = v3[16];
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = isSelected;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_21D59B950(v4, v5, v6);
  v10 = v9;
  sub_21DBF8E0C();
  sub_21DBE9678(&v12);
  v11 = v18;
  sub_21D5968AC(v12, v13, v14);
}

Swift::Void __swiftcall TTRITextCellTextArea.setTextIfChanged(_:)(Swift::String_optional a1)
{
  v3 = v2;
  v4 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v7 = (*(v2 + 8))();
  if (!v8)
  {
    if (!object)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!object)
  {

LABEL_12:
    v11 = *(v3 + 16);
    sub_21DBF8E0C();

    v11(countAndFlagsBits, object, v4, v3);
    return;
  }

  if (v7 != countAndFlagsBits || v8 != object)
  {
    v10 = sub_21DBFC64C();

    if (v10)
    {
      return;
    }

    goto LABEL_12;
  }
}

uint64_t sub_21DA6B858(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      return sub_21DBFB63C() & 1;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  return sub_21DBFC64C();
}

uint64_t TTRITextCellContentState.placeholder.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRITextCellContentState.placeholder.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void sub_21DA6B998(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v5 = [v3 string];
    v6 = sub_21DBFA16C();
    v8 = v7;

    sub_21D5968AC(v3, v4, 1);
    v3 = v6;
    v4 = v8;
  }

  else
  {
    sub_21DBF8E0C();
  }

  *a2 = v3;
  a2[1] = v4;
}

void (*TTRITextCellContentState.text.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7)
  {
    v8 = [v5 string];
    v9 = sub_21DBFA16C();
    v11 = v10;

    sub_21D5968AC(v5, v6, 1);
    v5 = v9;
    v6 = v11;
  }

  else
  {
    sub_21DBF8E0C();
  }

  *v4 = v5;
  v4[1] = v6;
  return sub_21DA6BB18;
}

void sub_21DA6BB18(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 40);
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[2];
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21D5968AC(v7, v6, v5);
    *v8 = v4;
    *(v8 + 8) = v3;
    *(v8 + 16) = 0;
  }

  else
  {
    sub_21D5968AC((*a1)[3], v6, v5);
    *v8 = v4;
    *(v8 + 8) = v3;
    *(v8 + 16) = 0;
  }

  free(v2);
}

id TTRITextCellContentState.attributedText.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {

    return v1;
  }

  else
  {
    v3 = *(v0 + 8);
    v7 = *v0;
    v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_21DBF8E0C();
    v5 = sub_21DBFA12C();
    sub_21D5968AC(v7, v3, 0);
    v6 = [v4 initWithString_];

    return v6;
  }
}

void sub_21DA6BC78(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_21DBF8E0C();
    v7 = sub_21DBFA12C();
    sub_21D5968AC(v3, v5, 0);
    v4 = [v6 initWithString_];
  }

  *a2 = v4;
}

void TTRITextCellContentState.attributedText.setter(uint64_t a1)
{
  sub_21D5968AC(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
}

void (*TTRITextCellContentState.attributedText.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  v5 = *v1;
  *(v3 + 16) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 24) = v6;
  v7 = *(v1 + 16);
  *(v3 + 32) = v7;
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_21DBF8E0C();
    v10 = sub_21DBFA12C();
    sub_21D5968AC(v5, v6, 0);
    v8 = [v9 initWithString_];
  }

  *v4 = v8;
  return sub_21DA6BE4C;
}

void sub_21DA6BE4C(void ***a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v8 = v6;
    sub_21D5968AC(v5, v4, v3);
    *v7 = v8;
    v7[1] = 0;
    *(v7 + 16) = 1;
  }

  else
  {
    sub_21D5968AC((*a1)[2], v4, v3);
    *v7 = v6;
    v7[1] = 0;
    *(v7 + 16) = 1;
  }

  free(v2);
}

void *TTRITextCellContentState.textColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t TTRITextCellContentState.init(attributedText:placeholder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = a2;
  return result;
}

uint64_t sub_21DA6BF94@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE652D8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F9B4;
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

uint64_t sub_21DA6C034(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F9C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652D8);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA6C19C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE652E0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
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

uint64_t sub_21DA6C23C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652E0);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA6C3A4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE652E8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
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

uint64_t sub_21DA6C444(uint64_t *a1, void *a2)
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

  v7 = (*a2 + qword_27CE652E8);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA6C5AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27CE652F0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F968;
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

uint64_t sub_21DA6C64C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F918;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652F0);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA6C7B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27CE652F8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F8DC;
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

uint64_t sub_21DA6C854(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F89C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE652F8);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA6C9BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27CE65300);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F9B8;
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

uint64_t sub_21DA6CA5C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F9C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE65300);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA6CBC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27CE65308);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DA6F834;
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

uint64_t sub_21DA6CC64(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21DA6F830;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE65308);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA6CD4C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_21DA6CDD4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id TTRITextCellContent.init(textAutocapitalizationType:keyboardType:state:stateChangeEvent:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x277D85000];
  v7 = *(a3 + 16);
  v8 = *(a3 + 17);
  v9 = *(a3 + 5);
  v10 = *a4;
  v11 = (v4 + qword_27CE652D8);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v4 + qword_27CE652E0);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v4 + qword_27CE652E8);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v4 + qword_27CE652F0);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v4 + qword_27CE652F8);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v4 + qword_27CE65300);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v4 + qword_27CE65308);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + qword_27CE65310) = 1;
  *(v4 + qword_27CE65318) = a1;
  *(v4 + qword_27CE65320) = a2 == 3;
  *(v4 + qword_27CE65328) = a2;
  *(v4 + qword_27CE652D0) = v10;
  v26 = *a3;
  v27 = v7;
  v28 = v8;
  v29 = *(a3 + 24);
  v30 = v9;
  v18 = *((v6 & v5) + 0xE8);
  v19 = *((v6 & v5) + 0xF0);
  (*(v19 + 8))(&v25, v18, v19);
  v20 = (*(v19 + 16))(v18, v19);
  v22 = sub_21DBE97E0(&v26, &v25, v20, v21);
  v23 = v30;
  sub_21D5968AC(v26, *(&v26 + 1), v27);

  return v22;
}

uint64_t TTRITextCellContent.isEditing.getter()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 216))(ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t TTRITextCellContent.currentAttributedText.getter()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    return 0;
  }

  v6 = v1 + 232;
  v4 = *(v1 + 232);
  v5 = *(v6 + 8);
  v7 = *(v5 + 24);
  v8 = v3;
  v7(v4, v5);
  v10 = v9;

  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 32))(ObjectType, v10);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t TTRITextCellContent.hasMarkedText.getter()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 224))(ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

Swift::Void __swiftcall TTRITextCellContent.beginEditing()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    (*(v10 + 200))(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRITextCellContent.endEditing()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    (*(v10 + 208))(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRITextCellContent.selectAllText()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    (*(v10 + 232))(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRITextCellContent.setAttributedTextIfNotEditing(_:)(NSAttributedString a1)
{
  if ((TTRITextCellContent.isEditing.getter() & 1) == 0)
  {
    v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v4 = *v3;
    v5 = *(v3 + 1);
    v6 = v3[16];
    v7 = v3[17];
    v9 = *(v3 + 3);
    v8 = *(v3 + 4);
    v10 = *(v3 + 5);
    sub_21D59B950(v4, v5, v6);
    v11 = v10;
    v12 = a1.super.isa;
    sub_21DBF8E0C();
    sub_21D5968AC(v4, v5, v6);
    isa = a1.super.isa;
    v15 = 0;
    v16 = 1;
    v17 = v7;
    v18 = v9;
    v19 = v8;
    v20 = v10;
    sub_21DBE9678(&isa);
    v13 = v20;
    sub_21D5968AC(isa, v15, v16);
  }
}

uint64_t sub_21DA6D780(uint64_t a1, uint64_t a2, char a3)
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
  v17 = v6[17];
  v18 = *(v6 + 4);
  v33 = *(v6 + 3);
  v19 = *(v6 + 5);
  v42 = v6[16];
  v41 = v17;
  if (v42)
  {
    if (v7)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D59B950(v16, v15, 1);
      v31 = v19;
      v20 = v19;
      sub_21DBF8E0C();
      sub_21D59B950(v16, v15, 1);
      v21 = sub_21DBFB63C();
      sub_21D5968AC(v10, v12, 1);
      sub_21D5968AC(v16, v15, 1);
      if (v21)
      {
        sub_21D5968AC(v10, v12, 1);
        v7 = v42;
LABEL_25:
        v10 = v16;
        v12 = v15;
        goto LABEL_33;
      }

      sub_21D5968AC(v16, v15, 1);
      v17 = v41;
LABEL_29:
      v19 = v31;
      goto LABEL_30;
    }

    sub_21D59B950(v16, v15, 1);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v10, v12, 0);
    sub_21D5968AC(v16, v15, 1);
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      if (v16 == v10 && v15 == v12)
      {
        sub_21D59B950(v10, v12, 0);
        v20 = v19;
        sub_21DBF8E0C();
        sub_21D5968AC(v10, v12, 0);
        sub_21D5968AC(v10, v12, 0);
        v7 = 0;
        goto LABEL_33;
      }

      v23 = v19;
      v24 = sub_21DBFC64C();
      sub_21D59B950(v16, v15, 0);
      v31 = v23;
      v20 = v23;
      sub_21DBF8E0C();
      sub_21D5968AC(v10, v12, 0);
      if (v24)
      {
        sub_21D5968AC(v10, v12, 0);
        v7 = 0;
        goto LABEL_25;
      }

      sub_21D5968AC(v16, v15, 0);
      goto LABEL_29;
    }

    sub_21D59B950(v16, v15, 0);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v10, v12, 1);
    sub_21D5968AC(v16, v15, 0);
  }

LABEL_30:
  v42 = v7;
  v34 = v10;
  v35 = v12;
  v36 = v7;
  v37 = v17;
  v38 = v33;
  v39 = v18;
  v25 = v19;
  v40 = v19;
  sub_21D59B950(v10, v12, v7);
  sub_21DBF8E0C();
  v20 = v20;
  TTRITableCellContent.setStateWithoutUpdatingCell(_:)(&v34);
  v26 = v40;
  sub_21D5968AC(v34, v35, v36);

  if (a3)
  {
    v27 = (v4 + qword_27CE652D8);
    swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {
      v34 = v10;
      v35 = v12;
      v36 = v7;
      v37 = v17;
      v38 = v33;
      v39 = v18;
      v40 = v25;
      sub_21D0D0E78(v28);
      sub_21D59B950(v10, v12, v7);
      sub_21DBF8E0C();
      v20 = v20;
      v28(&v34);
      sub_21D0D0E88(v28);
      v29 = v40;
      sub_21D5968AC(v34, v35, v36);
    }
  }

LABEL_33:
  sub_21D5968AC(v10, v12, v7);
}

uint64_t TTRITextCellContent.willUnassignCell(_:)()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0xF0) + 24))(*((*MEMORY[0x277D85000] & *v0) + 0xE8));
  v2 = v1;
  ObjectType = swift_getObjectType();
  (*(v2 + 248))(0, 0, ObjectType, v2);

  return swift_unknownObjectRelease();
}

uint64_t TTRITextCellContent.didAssignCell(_:)()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0xF0) + 24))(*((*MEMORY[0x277D85000] & *v0) + 0xE8));
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 248);
  v5 = swift_unknownObjectRetain();
  v4(v5, &protocol witness table for TTRITextCellContent<A>, ObjectType, v2);

  return swift_unknownObjectRelease();
}

void TTRITextCellContent.didSetNeedsDisplayCell(oldState:)(uint64_t a1)
{
  v2 = qword_27CE65310;
  if ((*(v1 + qword_27CE65310) & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v7 + 1);
    if (v7[16])
    {
      if (v6)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        v10 = v8;
        v11 = sub_21DBFB63C();
        sub_21D5968AC(v8, v9, 1);
LABEL_8:
        v3 = v11 ^ 1;
        goto LABEL_9;
      }
    }

    else if ((v6 & 1) == 0)
    {
      if (v8 == v4 && v9 == v5)
      {
        v11 = 1;
      }

      else
      {
        v11 = sub_21DBFC64C();
      }

      goto LABEL_8;
    }

    v11 = 0;
    goto LABEL_8;
  }

  v3 = 1;
LABEL_9:
  *(v1 + v2) = v3 & 1;
}

uint64_t TTRITextCellContent.updateCell(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  (*(*((*MEMORY[0x277D85000] & *v1) + 0xF0) + 24))(*((*MEMORY[0x277D85000] & *v1) + 0xE8));
  v6 = v5;
  if (*(v1 + qword_27CE65310) == 1)
  {
    *(v1 + qword_27CE65310) = 0;
    v7 = v1 + *((*v4 & *v1) + 0x78);
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v7[16];
    ObjectType = swift_getObjectType();
    if ((v10 & 1) == 0)
    {
      sub_21DBF8E0C();
      v17.value._countAndFlagsBits = v8;
      v17.value._object = v9;
      TTRITextCellTextArea.setTextIfChanged(_:)(v17);
LABEL_10:
      sub_21D5968AC(v8, v9, v10);
      if (v7[17])
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }

      [a1 setAccessoryType_];
      goto LABEL_14;
    }

    v32 = v10;
    v12 = *(v6 + 32);
    v31 = v8;
    v30 = ObjectType;
    v13 = v12();
    if (v13)
    {
      v14 = v13;
      sub_21D0D8CF0(0, &qword_280D177E0);
      v15 = v31;
      v16 = sub_21DBFB63C();

      if (v16)
      {
        sub_21D5968AC(v8, v9, 1);
LABEL_9:
        v4 = MEMORY[0x277D85000];
        v10 = v32;
        goto LABEL_10;
      }
    }

    else
    {
      v18 = v31;
    }

    (*(v6 + 40))(v8, v30, v6);
    goto LABEL_9;
  }

LABEL_14:
  v20 = swift_getObjectType();
  v21 = (v2 + *((*v4 & *v2) + 0x78));
  swift_beginAccess();
  v22 = v21[3];
  v23 = v21[4];
  v24 = *(v6 + 88);
  sub_21DBF8E0C();
  v24(v22, v23, v20, v6);
  v25 = v21[5];
  v26 = v25;
  if (!v25)
  {
    v26 = [objc_opt_self() labelColor];
  }

  v27 = *(v6 + 64);
  v28 = v25;
  v27(v26, v20, v6);
  (*(v6 + 112))(*(v2 + qword_27CE65318), v20, v6);
  (*(v6 + 136))(*(v2 + qword_27CE65320), v20, v6);
  (*(v6 + 160))(*(v2 + qword_27CE65328), v20, v6);
  return swift_unknownObjectRelease();
}

void TTRITextCellContent.textCellTextAreaDidEndEditing(_:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + qword_27CE652D0))
  {
    sub_21DA6E388(a1, a2);
  }

  v3 = (v2 + qword_27CE652E8);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x78);
    swift_beginAccess();
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = v5[16];
    v9 = v5[17];
    v10 = *(v5 + 3);
    v11 = *(v5 + 4);
    v12 = *(v5 + 5);
    v15 = v6;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    sub_21D0D0E78(v4);
    sub_21D59B950(v6, v7, v8);
    v13 = v12;
    sub_21DBF8E0C();
    v4(&v15);
    sub_21D0D0E88(v4);
    v14 = v21;
    sub_21D5968AC(v15, v16, v17);
  }
}

uint64_t sub_21DA6E388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78);
  swift_beginAccess();
  v6 = v5[16];
  ObjectType = swift_getObjectType();
  if (v6)
  {
    v8 = (*(a2 + 32))(ObjectType, a2);
    if (!v8)
    {
      v8 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v9 = v8;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    v12 = (*(a2 + 8))(ObjectType, a2);
    if (v13)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0;
    }

    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    sub_21DBF8E0C();
  }

  v15 = *v5;
  v14 = *(v5 + 1);
  v16 = v5[17];
  v17 = *(v5 + 3);
  v18 = *(v5 + 4);
  v19 = *(v5 + 5);
  v48 = v5[16];
  v47 = v16;
  if (v48)
  {
    v39 = v17;
    if (v6)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D59B950(v15, v14, 1);
      v36 = v19;
      v20 = v19;
      sub_21DBF8E0C();
      sub_21D59B950(v15, v14, 1);
      v21 = sub_21DBFB63C();
      sub_21D5968AC(v9, v11, 1);
      sub_21D5968AC(v15, v14, 1);
      if (v21)
      {
        sub_21D5968AC(v9, v11, 1);
        v6 = v48;
LABEL_28:
        v9 = v15;
        v11 = v14;
        goto LABEL_31;
      }

      sub_21D5968AC(v15, v14, 1);
      v26 = v47;
      v19 = v36;
      goto LABEL_20;
    }

    v22 = v16;
    sub_21D59B950(v15, v14, 1);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v9, v11, 0);
    v23 = v15;
    v24 = v14;
    v25 = 1;
LABEL_19:
    sub_21D5968AC(v23, v24, v25);
    v26 = v22;
    goto LABEL_20;
  }

  if (v6)
  {
    v39 = v17;
    v22 = v16;
    sub_21D59B950(v15, v14, 0);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v9, v11, 1);
    v23 = v15;
    v24 = v14;
    v25 = 0;
    goto LABEL_19;
  }

  if (v15 == v9 && v14 == v11)
  {
    sub_21D59B950(v9, v11, 0);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v9, v11, 0);
    sub_21D5968AC(v9, v11, 0);
    v6 = 0;
    goto LABEL_31;
  }

  v38 = v16;
  v39 = v17;
  v33 = v19;
  v34 = sub_21DBFC64C();
  sub_21D59B950(v15, v14, 0);
  v20 = v33;
  sub_21DBF8E0C();
  sub_21D5968AC(v9, v11, 0);
  if (v34)
  {
    sub_21D5968AC(v9, v11, 0);
    v6 = 0;
    goto LABEL_28;
  }

  sub_21D5968AC(v15, v14, 0);
  v19 = v33;
  v26 = v38;
LABEL_20:
  v37 = v26;
  v48 = v6;
  v40 = v9;
  v41 = v11;
  v42 = v6;
  v43 = v26;
  v44 = v39;
  v45 = v18;
  v46 = v19;
  sub_21D59B950(v9, v11, v6);
  sub_21DBF8E0C();
  v20 = v20;
  v27 = v19;
  TTRITableCellContent.setStateWithoutUpdatingCell(_:)(&v40);
  v28 = v46;
  sub_21D5968AC(v40, v41, v42);

  v29 = (v3 + qword_27CE652D8);
  swift_beginAccess();
  v30 = *v29;
  if (*v29)
  {
    v40 = v9;
    v41 = v11;
    v42 = v6;
    v43 = v37;
    v44 = v39;
    v45 = v18;
    v46 = v27;
    sub_21D0D0E78(v30);
    sub_21D59B950(v9, v11, v6);
    sub_21DBF8E0C();
    v20 = v20;
    v30(&v40);
    sub_21D0D0E88(v30);
    v31 = v46;
    sub_21D5968AC(v40, v41, v42);
  }

LABEL_31:
  sub_21D5968AC(v9, v11, v6);
}

uint64_t TTRITextCellContent.textCellTextArea(_:shouldChangeCharactersIn:replacementText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (v6 + qword_27CE652F0);
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    ObjectType = swift_getObjectType();
    v21 = a3;
    v22 = a6;
    v15 = *(a2 + 8);

    v16 = v15(ObjectType, a2);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = v13(v16, v18, v21, a4, a5, v22);
    sub_21D0D0E88(v13);
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t TTRITextCellContent.textCellTextAreaDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  result = (*(a2 + 224))(ObjectType, a2);
  if ((result & 1) == 0 && (*(v3 + qword_27CE652D0) & 2) != 0)
  {

    return sub_21DA6E388(a1, a2);
  }

  return result;
}

uint64_t TTRITextCellContent.textCellTextAreaDidReceiveReturnKey(_:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + qword_27CE652F8);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 8);

    v8 = v7(ObjectType, a2);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = v5(v8, v10);
    sub_21D0D0E88(v5);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_21DA6EB64()
{
  sub_21D0D0E88(*(v0 + qword_27CE652D8));
  sub_21D0D0E88(*(v0 + qword_27CE652E0));
  sub_21D0D0E88(*(v0 + qword_27CE652E8));
  sub_21D0D0E88(*(v0 + qword_27CE652F0));
  sub_21D0D0E88(*(v0 + qword_27CE652F8));
  sub_21D0D0E88(*(v0 + qword_27CE65300));
  v1 = *(v0 + qword_27CE65308);

  return sub_21D0D0E88(v1);
}

id TTRITextCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DA6EC48(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE652D8));
  sub_21D0D0E88(*(a1 + qword_27CE652E0));
  sub_21D0D0E88(*(a1 + qword_27CE652E8));
  sub_21D0D0E88(*(a1 + qword_27CE652F0));
  sub_21D0D0E88(*(a1 + qword_27CE652F8));
  sub_21D0D0E88(*(a1 + qword_27CE65300));
  v2 = *(a1 + qword_27CE65308);

  return sub_21D0D0E88(v2);
}

uint64_t _s15RemindersUICore24TTRITextCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 17);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17680);
    v10 = sub_21DBFB63C();
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
    {
      if (v2 != v6)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v10 = sub_21DBFC64C();
  }

  v12 = v10;
  result = 0;
  if ((v12 & 1) != 0 && ((v2 ^ v6) & 1) == 0)
  {
LABEL_14:
    if (v4)
    {
      if (v7 && (v3 == v8 && v4 == v7 || (sub_21DBFC64C() & 1) != 0))
      {
LABEL_21:
        if (v5)
        {
          if (v9)
          {
            sub_21D0D8CF0(0, &qword_280D1B8F0);
            v13 = v9;
            v14 = v5;
            v15 = sub_21DBFB63C();

            if (v15)
            {
              return 1;
            }
          }
        }

        else if (!v9)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      goto LABEL_21;
    }

    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore19TTRITextCellContentC04textD23TextAreaDidBeginEditingyyAA0cdgH0_pF_0()
{
  v1 = (v0 + qword_27CE652E0);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_21D0D0E88(v3);
  }

  return result;
}

uint64_t sub_21DA6EF60(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  result = swift_beginAccess();
  v8 = *v6;
  if (*v6)
  {

    v8(a1, a2);
    return sub_21D0D0E88(v8);
  }

  return result;
}

unint64_t sub_21DA6F01C()
{
  result = qword_27CE65330;
  if (!qword_27CE65330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65330);
  }

  return result;
}

unint64_t sub_21DA6F074()
{
  result = qword_27CE65338;
  if (!qword_27CE65338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65338);
  }

  return result;
}

unint64_t sub_21DA6F0CC()
{
  result = qword_27CE65340;
  if (!qword_27CE65340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65340);
  }

  return result;
}

unint64_t sub_21DA6F124()
{
  result = qword_27CE65348[0];
  if (!qword_27CE65348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE65348);
  }

  return result;
}

void destroy for TTRITextCellContentState(uint64_t a1)
{
  sub_21D5968AC(*a1, *(a1 + 8), *(a1 + 16));

  v2 = *(a1 + 40);
}

uint64_t initializeWithCopy for TTRITextCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_21D59B950(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 17) = *(a2 + 17);
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  sub_21DBF8E0C();
  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for TTRITextCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_21D59B950(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  sub_21D5968AC(v7, v8, v9);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v10 = *(a1 + 40);
  v11 = *(a2 + 40);
  *(a1 + 40) = v11;
  v12 = v11;

  return a1;
}

uint64_t assignWithTake for TTRITextCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  sub_21D5968AC(v5, v6, v7);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  v8 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRITextCellContentState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRITextCellContentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_21DA6F864(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_21DA6F89C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

uint64_t sub_21DA6F8DC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_21DA6F918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v12[0] = a1;
  v12[1] = a2;
  v11[0] = a3;
  v11[1] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v7(&v9, v12, v11, v10);
  return v9;
}

uint64_t sub_21DA6F968@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, a1[1], *a2, a2[1], *a3, a3[1]);
  *a4 = result & 1;
  return result;
}

uint64_t TTRITitledDatePickerCellContentState.init(icon:title:date:datePickerMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0x1FFFFFFFELL;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0;
  v21 = 0;
  v12 = *(a6 + 48);
  v20[2] = *(a6 + 32);
  v20[3] = v12;
  v13 = *(a6 + 16);
  v20[0] = *a6;
  v20[1] = v13;
  sub_21D0CF7E0(v20, &unk_27CE5EA00);
  v14 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v14;
  *(a6 + 64) = *(a1 + 64);
  v15 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v15;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  v16 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  v17 = *(v16 + 24);
  v18 = sub_21DBF563C();
  result = (*(*(v18 - 8) + 32))(a6 + v17, a4, v18);
  *(a6 + *(v16 + 28)) = a5;
  return result;
}

uint64_t TTRITitledDatePickerCellContentState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D1ADB0C(v8, v7);
}

__n128 TTRITitledDatePickerCellContentState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRITitledDatePickerCellContentState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRITitledDatePickerCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t TTRITitledDatePickerCellContentState.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRITitledDatePickerCellContentState(0) + 24);
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRITitledDatePickerCellContentState.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRITitledDatePickerCellContentState(0) + 24);
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTRITitledDatePickerCellContentState.datePickerMode.setter(uint64_t a1)
{
  result = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_21DA6FE64@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE8EC48);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
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

uint64_t sub_21DA6FF04(uint64_t *a1, void *a2)
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

  v7 = (*a2 + qword_27CE8EC48);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0EC9F4(v8, v9);
}

uint64_t TTRITitledDatePickerCellContent.stateChangeBlock.getter()
{
  v1 = (v0 + qword_27CE8EC48);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1);
  return v2;
}

uint64_t TTRITitledDatePickerCellContent.stateChangeBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE8EC48);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0EC9F4(v6, v7);
}

id TTRITitledDatePickerCellContent.init(state:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + qword_27CE8EC48);
  *v6 = 0;
  v6[1] = 0;
  sub_21DA710B0(a1, v5);
  v7 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v7 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v7 & *v1) + 0x90)) = 0;
  sub_21DA710B0(v5, v1 + *((*v7 & *v1) + 0x78));
  *(v1 + *((*v7 & *v1) + 0x80)) = 0;
  v8 = (v1 + *((*v7 & *v1) + 0x88));
  *v8 = 0xD000000000000014;
  v8[1] = 0x800000021DC74B80;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE653D0);
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_21DA71114(a1);
  sub_21DA71114(v5);
  return v10;
}

void TTRITitledDatePickerCellContent.updateCell(_:)(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v8 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v9 = v8;
  v10 = sub_21DBFA12C();

  [v9 setText_];

  v11 = *(v7 + 3);
  v28 = *(v7 + 2);
  v29 = v11;
  v30 = v7[64];
  v12 = *(v7 + 1);
  v26 = *v7;
  v27 = v12;
  v13 = (a1 + qword_27CE655A0);
  swift_beginAccess();
  v14 = v13[3];
  v33 = v13[2];
  v34 = v14;
  v35 = *(v13 + 64);
  v15 = v13[1];
  v31 = *v13;
  v32 = v15;
  v36[2] = v33;
  v36[3] = v14;
  v37 = v35;
  v36[0] = v31;
  v36[1] = v15;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  *(v13 + 64) = v30;
  v13[2] = v18;
  v13[3] = v19;
  *v13 = v16;
  v13[1] = v17;
  sub_21D1ADB0C(&v26, v24);
  sub_21D1ADB0C(&v31, v24);
  sub_21D0CF7E0(v36, &unk_27CE5EA00);
  v24[2] = v33;
  v24[3] = v34;
  v25 = v35;
  v24[0] = v31;
  v24[1] = v32;
  sub_21DA7EF48(v24);
  sub_21D0CF7E0(&v31, &unk_27CE5EA00);
  v20 = *(a1 + qword_27CE653D8);
  v21 = [v20 minuteInterval];
  v22 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  [v20 setDatePickerMode_];
  [v20 setPreferredDatePickerStyle_];
  [v20 setMinuteInterval_];
  (*(v4 + 16))(v6, &v7[*(v22 + 24)], v3);
  v23 = sub_21DBF55BC();
  (*(v4 + 8))(v6, v3);
  [v20 setDate_];
}

uint64_t sub_21DA70614(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  sub_21D0CEB98(a1, v23);
  sub_21DA71A5C();
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v22[1];
    v15 = MEMORY[0x277D85000];
    v16 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    sub_21DA710B0(v1 + v16, v12);
    v17 = [v14 date];
    sub_21DBF55FC();

    (*(v4 + 40))(&v12[*(v7 + 24)], v6, v3);
    v18 = *((*v15 & *v1) + 0x90);
    *(v1 + v18) = 1;
    sub_21DA710B0(v12, v9);
    sub_21D5C7798(v9);
    *(v1 + v18) = 0;
    v19 = v1 + qword_27CE8EC48;
    swift_beginAccess();
    v20 = *v19;
    if (*v19)
    {
      v21 = *(v19 + 1);

      v20(v12);
      sub_21D0EC9F4(v20, v21);
    }

    return sub_21DA71114(v12);
  }

  return result;
}

uint64_t sub_21DA7089C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21DA70614(v4);

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

id TTRITitledDatePickerTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRITitledDatePickerTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(MEMORY[0x277D753E8]) initWithFrame_];
  v8 = qword_27CE653D8;
  *&v3[qword_27CE653D8] = v7;
  [v7 _setCustomFontDesign_];
  [*&v3[v8] setRoundsToMinuteInterval_];
  if (a3)
  {
    v9 = sub_21DBFA12C();
  }

  else
  {
    v9 = 0;
  }

  v24.receiver = v3;
  v24.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = *&v10[qword_27CE653D8];
  type metadata accessor for TTRITitledDatePickerTableCell.DatePickerProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = &v10[qword_27CE65610];
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  *v13 = v12;
  *(v13 + 1) = &off_282EE37B8;
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  *(v13 + 2) = 0;
  LOBYTE(v12) = v13[40];
  v13[40] = 2;
  v19 = v10;
  v20 = v11;
  sub_21D361B20(v14, v15, v16, v17, v18, v12);
  sub_21D361BB4(v14, v15, v16, v17, v18, v12);
  v22[0] = v14;
  v22[1] = v15;
  v22[2] = v16;
  v22[3] = v17;
  v22[4] = v18;
  v23 = v12;
  sub_21DA7F6B4(v22);

  sub_21D361BB4(v14, v15, v16, v17, v18, v12);
  return v19;
}

char *sub_21DA70BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return TTRITitledDatePickerTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

uint64_t sub_21DA70CD8()
{

  return swift_deallocClassInstance();
}

BOOL _s15RemindersUICore36TTRITitledDatePickerCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v57 = *(a1 + 32);
  v58 = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v55 = *a1;
  v56 = v5;
  v7 = *(a2 + 48);
  v60[2] = *(a2 + 32);
  v60[3] = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v60[0] = *a2;
  v60[1] = v8;
  v53 = v55;
  v10 = *(a1 + 48);
  v51 = v6;
  v52 = v10;
  v59 = *(a1 + 64);
  v61 = *(a2 + 64);
  v54 = *(a1 + 16);
  v11 = *(&v56 + 1);
  v12 = v59;
  *&v50[7] = v60[0];
  *&v50[23] = *(a2 + 16);
  v13 = *(&v8 + 1);
  v14 = *(a2 + 48);
  v48 = v9;
  v49 = v14;
  v15 = v61;
  if (*(&v56 + 1) >> 1 != 0xFFFFFFFFLL || v59 >= 2u)
  {
    v17 = *(a1 + 16);
    v38 = *a1;
    *&v39 = v17;
    *(&v39 + 1) = *(&v56 + 1);
    v18 = *(a1 + 48);
    v40 = *(a1 + 32);
    v41 = v18;
    v42 = v59;
    v37 = v59;
    v35 = v40;
    v36 = v18;
    v33 = v38;
    v34 = v39;
    if (*(&v8 + 1) >> 1 != 0xFFFFFFFFLL || v61 >= 2u)
    {
      v28 = *a2;
      v19 = *(a2 + 16);
      v20 = *(a2 + 48);
      v30 = *(a2 + 32);
      v31 = v20;
      *&v29 = v19;
      *(&v29 + 1) = v13;
      v32 = v61;
      sub_21D1ADB0C(&v55, v26);
      sub_21D1ADB0C(v60, v26);
      sub_21D1ADB0C(&v38, v26);
      v21 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v33, &v28);
      v24[2] = v30;
      v24[3] = v31;
      v25 = v32;
      v24[0] = v28;
      v24[1] = v29;
      sub_21D35D940(v24);
      v26[2] = v35;
      v26[3] = v36;
      v27 = v37;
      v26[0] = v33;
      v26[1] = v34;
      sub_21D35D940(v26);
      v28 = v53;
      *&v29 = v54;
      *(&v29 + 1) = v11;
      v30 = v51;
      v31 = v52;
      v32 = v12;
      sub_21D0CF7E0(&v28, &unk_27CE5EA00);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v30 = v40;
    v31 = v41;
    v32 = v42;
    v28 = v38;
    v29 = v39;
    sub_21D1ADB0C(&v55, v26);
    sub_21D1ADB0C(v60, v26);
    sub_21D1ADB0C(&v38, v26);
    sub_21D35D940(&v28);
LABEL_16:
    v38 = v53;
    *&v39 = v54;
    *(&v39 + 1) = v11;
    v40 = v51;
    v41 = v52;
    v42 = v12;
    *v43 = *v50;
    *&v43[15] = *&v50[15];
    v44 = v13;
    v46 = v49;
    v45 = v48;
    v47 = v15;
    sub_21D0CF7E0(&v38, qword_27CE5ABE0);
    return 0;
  }

  if (*(&v8 + 1) >> 1 != 0xFFFFFFFFLL || v61 >= 2u)
  {
    sub_21D1ADB0C(&v55, &v38);
    sub_21D1ADB0C(v60, &v38);
    goto LABEL_16;
  }

  v38 = *a1;
  *&v39 = *(a1 + 16);
  *(&v39 + 1) = *(&v56 + 1);
  v16 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v16;
  v42 = v59;
  sub_21D1ADB0C(&v55, &v33);
  sub_21D1ADB0C(v60, &v33);
  sub_21D0CF7E0(&v38, &unk_27CE5EA00);
LABEL_10:
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) || (sub_21DBFC64C() & 1) != 0)
  {
    v22 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
    if (sub_21DBF55EC())
    {
      return *(a1 + *(v22 + 28)) == *(a2 + *(v22 + 28));
    }
  }

  return 0;
}

uint64_t sub_21DA710B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA71114(uint64_t a1)
{
  v2 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRITitledDatePickerCellContentState(char *a1, id *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = &v15[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = a2[3];
    v8 = *(a2 + 64);
    if (v7 >> 1 != 0xFFFFFFFF || v8 >= 2)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[2];
      v13 = a2[5];
      v14 = a2[6];
      v23 = a2[7];
      v24 = a2[4];
      sub_21D361F04(*a2, v11, v12, v7, v24, v13, v14, v23, v8);
      *v4 = v10;
      *(v4 + 1) = v11;
      *(v4 + 2) = v12;
      *(v4 + 3) = v7;
      *(v4 + 4) = v24;
      *(v4 + 5) = v13;
      *(v4 + 6) = v14;
      *(v4 + 7) = v23;
      v4[64] = v8;
    }

    else
    {
      v16 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v16;
      a1[64] = *(a2 + 64);
      v17 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v17;
    }

    v18 = a2[10];
    *(v4 + 9) = a2[9];
    *(v4 + 10) = v18;
    v19 = *(a3 + 24);
    v20 = sub_21DBF563C();
    v21 = *(*(v20 - 8) + 16);
    sub_21DBF8E0C();
    v21(&v4[v19], a2 + v19, v20);
    *&v4[*(a3 + 28)] = *(a2 + *(a3 + 28));
  }

  return v4;
}

uint64_t destroy for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 64);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v4, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), v5);
  }

  v7 = *(a2 + 24);
  v8 = sub_21DBF563C();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1 + v7, v8);
}

uint64_t initializeWithCopy for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a2 + 24);
  v7 = *(a2 + 64);
  if (v6 >> 1 != 0xFFFFFFFF || v7 >= 2)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v22 = *(a2 + 56);
    sub_21D361F04(*a2, v10, v11, v6, v12, v13, v14, v22, v7);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = v6;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
    v3 = a3;
    *(a1 + 48) = v14;
    *(a1 + 56) = v22;
    *(a1 + 64) = v7;
  }

  else
  {
    v15 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v15;
    *(a1 + 64) = *(a2 + 64);
    v16 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v16;
  }

  v17 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v17;
  v18 = *(v3 + 24);
  v19 = sub_21DBF563C();
  v20 = *(*(v19 - 8) + 16);
  sub_21DBF8E0C();
  v20(a1 + v18, a2 + v18, v19);
  *(a1 + *(v3 + 28)) = *(a2 + *(v3 + 28));
  return a1;
}

uint64_t assignWithCopy for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a2[3];
  v7 = *(a2 + 64);
  v9 = v6 >> 1 == 0xFFFFFFFF && v7 < 2;
  if (*(a1 + 24) >> 1 != 0xFFFFFFFFLL || *(a1 + 64) >= 2u)
  {
    if (v9)
    {
      sub_21D35D940(a1);
      *a1 = *a2;
      v12 = *(a2 + 2);
      v11 = *(a2 + 3);
      v13 = *(a2 + 1);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v12;
      *(a1 + 48) = v11;
      *(a1 + 16) = v13;
    }

    else
    {
      v17 = *a2;
      v18 = a2[1];
      v19 = a2[2];
      v20 = a2[4];
      v21 = a2[5];
      v22 = a2[6];
      v41 = a2[7];
      sub_21D361F04(*a2, v18, v19, v6, v20, v21, v22, v41, v7);
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 24);
      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v29 = *(a1 + 48);
      v30 = *(a1 + 56);
      v31 = *(a1 + 64);
      *a1 = v17;
      *(a1 + 8) = v18;
      v3 = a3;
      *(a1 + 16) = v19;
      *(a1 + 24) = v6;
      *(a1 + 32) = v20;
      *(a1 + 40) = v21;
      *(a1 + 48) = v22;
      *(a1 + 56) = v41;
      *(a1 + 64) = v7;
      sub_21D362050(v23, v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  else if (v9)
  {
    *a1 = *a2;
    v14 = *(a2 + 1);
    v15 = *(a2 + 2);
    v16 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v15;
    *(a1 + 48) = v16;
    *(a1 + 16) = v14;
  }

  else
  {
    v32 = *a2;
    v33 = a2[1];
    v34 = a2[2];
    v35 = a2[4];
    v36 = a2[5];
    v37 = a2[6];
    v42 = a2[7];
    sub_21D361F04(*a2, v33, v34, v6, v35, v36, v37, v42, v7);
    *a1 = v32;
    *(a1 + 8) = v33;
    v3 = a3;
    *(a1 + 16) = v34;
    *(a1 + 24) = v6;
    *(a1 + 32) = v35;
    *(a1 + 40) = v36;
    *(a1 + 48) = v37;
    *(a1 + 56) = v42;
    *(a1 + 64) = v7;
  }

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  sub_21DBF8E0C();

  v38 = *(v3 + 24);
  v39 = sub_21DBF563C();
  (*(*(v39 - 8) + 24))(a1 + v38, a2 + v38, v39);
  *(a1 + *(v3 + 28)) = *(a2 + *(v3 + 28));
  return a1;
}

uint64_t initializeWithTake for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a3 + 24);
  v9 = sub_21DBF563C();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithTake for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 64);
  if (v6 >> 1 == 0xFFFFFFFF && v7 < 2)
  {
    goto LABEL_12;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 64);
  if (v9 >> 1 == 0xFFFFFFFF && v10 < 2)
  {
    sub_21D35D940(a1);
LABEL_12:
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
    *(a1 + 64) = *(a2 + 64);
    v22 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v22;
    goto LABEL_13;
  }

  v12 = *(a2 + 16);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 24) = v9;
  v20 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v20;
  *(a1 + 64) = v10;
  sub_21D362050(v13, v14, v15, v6, v16, v17, v18, v19, v7);
LABEL_13:
  v23 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v23;

  v24 = *(a3 + 24);
  v25 = sub_21DBF563C();
  (*(*(v25 - 8) + 40))(a1 + v24, a2 + v24, v25);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t sub_21DA718F0()
{
  result = sub_21DBF563C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21DA71A5C()
{
  result = qword_27CE60890;
  if (!qword_27CE60890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE60890);
  }

  return result;
}

uint64_t sub_21DA71ABC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65410);
  v1 = __swift_project_value_buffer(v0, qword_27CE65410);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRITextFieldTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void TTRITextFieldTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  type metadata accessor for TTRITextField();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = qword_280D176B8;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_21D900614(1);
  [v10 setFont_];

  v12 = [objc_opt_self() labelColor];
  [v10 setTextColor_];

  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setAdjustsFontSizeToFitWidth_];
  [v10 setMinimumFontSize_];
  [v10 setClearButtonMode_];
  [v10 setBorderStyle_];
  v13 = objc_allocWithZone(type metadata accessor for TTRITextCellTextFieldTextArea());
  v14 = v10;
  v15 = TTRITextCellTextFieldTextArea.init(textField:)(v14);
  v16 = &v4[qword_27CE65428];
  *v16 = v15;
  v16[1] = &protocol witness table for TTRITextCellTextFieldTextArea;
  v17 = v15;
  if (a3)
  {
    sub_21DBF8E0C();
    v18 = sub_21DBFA12C();
  }

  else
  {
    v18 = 0;
  }

  v33.receiver = v4;
  v33.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v33, sel_initWithStyle_reuseIdentifier_, a1, v18);

  v20 = v19;
  v21 = [v20 traitCollection];
  v22 = [v21 layoutDirection];

  if (v22 + 1 >= 3)
  {
    if (qword_27CE56FF0 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE65410);
    v32 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v32);
    sub_21DAEAB00("Unknown layout Direction", 24, 2);
    __break(1u);
  }

  else
  {
    v23 = qword_21DC392F8[v22 + 1];

    [v14 setTextAlignment_];

    v24 = qword_27CE5AF20;
    v25 = *&v20[qword_27CE5AF20];
    v26 = v20;
    [v25 setHorizontalAlignment_];
    [*&v20[v24] setVerticalAlignment_];
    v27 = *&v20[v24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21DC09CF0;
    *(v28 + 32) = v14;
    sub_21D114EC8();
    v29 = v14;
    v30 = sub_21DBFA5DC();

    [v27 setArrangedSubviews_];
  }
}

void sub_21DA72024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  TTRITextFieldTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRITextFieldTableViewCell.preferredSeparatorInsetType.getter@<X0>(uint64_t *a1@<X8>)
{
  result = [*(v1 + qword_27CE5AF20) arrangedSubviews];
  if (!result)
  {
    goto LABEL_10;
  }

  v4 = result;
  sub_21D114EC8();
  v5 = sub_21DBFA5EC();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
LABEL_9:

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223D44740](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:
    v7 = v6;

LABEL_11:
    *a1 = v7;
    return result;
  }

  __break(1u);
  return result;
}

char *TTRITextCellTextFieldTextArea.init(textField:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField] = a1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v13, sel_init);
  v6 = OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField;
  v7 = *&v5[OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField];
  v8 = v5;
  [v7 addTarget:v8 action:sel_textFieldEditingChanged forControlEvents:0x20000];
  v9 = *&v5[v6];
  [v9 setDelegate_];

  v10 = *&v5[v6];
  v11 = OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder;
  swift_beginAccess();
  v10[v11] = 1;

  return v8;
}

void (*TTRITextCellTextFieldTextArea.text.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[2] = v3;
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DA724B4;
}

id TTRITextCellTextFieldTextArea.attributedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) attributedText];

  return v1;
}

void TTRITextCellTextFieldTextArea.attributedText.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) setAttributedText_];
}

void (*TTRITextCellTextFieldTextArea.attributedText.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 attributedText];
  return sub_21DA725B4;
}

void sub_21DA725B4(id *a1)
{
  v1 = *a1;
  [a1[1] setAttributedText_];
}

id TTRITextCellTextFieldTextArea.textColor.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) textColor];

  return v1;
}

void TTRITextCellTextFieldTextArea.textColor.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) setTextColor_];
}

void (*TTRITextCellTextFieldTextArea.textColor.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 textColor];
  return sub_21DA726F0;
}

void sub_21DA726F0(id *a1)
{
  v1 = *a1;
  [a1[1] setTextColor_];
}

uint64_t sub_21DA72744(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_21DBFA16C();

  return v4;
}

void sub_21DA727B4(void *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_21DA72824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  if (*(a1 + 8))
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void sub_21DA728AC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  if (a2)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  [v5 *a3];
}

void (*TTRITextCellTextFieldTextArea.placeholder.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[2] = v3;
  v4 = [v3 placeholder];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DA729BC;
}

void sub_21DA729C8(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 8);
  if (a2)
  {
    if (v5)
    {
      sub_21DBF8E0C();
      v6 = sub_21DBFA12C();
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 16) *a3];
  }

  else if (v5)
  {
    v6 = sub_21DBFA12C();

    [*(a1 + 16) *a3];
  }

  else
  {
    v6 = 0;
    [*(a1 + 16) *a3];
  }
}

id (*TTRITextCellTextFieldTextArea.autocapitalizationType.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 autocapitalizationType];
  return sub_21DA72B28;
}

id (*TTRITextCellTextFieldTextArea.autocorrectionType.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 autocorrectionType];
  return sub_21DA72BCC;
}

id (*TTRITextCellTextFieldTextArea.keyboardType.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 keyboardType];
  return sub_21DA72C70;
}

id (*TTRITextCellTextFieldTextArea.returnKeyType.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 returnKeyType];
  return sub_21DA72D14;
}

Swift::Void __swiftcall TTRITextCellTextFieldTextArea.beginEditing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  v2 = [v1 window];
  [v2 makeKeyWindow];

  [v1 becomeFirstResponder];
}

Swift::Void __swiftcall TTRITextCellTextFieldTextArea.selectAllText()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  v2 = [v1 beginningOfDocument];
  v3 = [v1 endOfDocument];
  v4 = [v1 textRangeFromPosition:v2 toPosition:v3];

  [v1 setSelectedTextRange_];
}

uint64_t TTRITextCellTextFieldTextArea.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRITextCellTextFieldTextArea.delegate.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1E55F4;
}

id TTRITextCellTextFieldTextArea.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*sub_21DA731D0(uint64_t **a1))(void *)
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
  v2[4] = TTRITextCellTextFieldTextArea.text.modify(v2);
  return sub_21D4C3D30;
}

id sub_21DA73240()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) attributedText];

  return v1;
}

void sub_21DA73280(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) setAttributedText_];
}

void (*sub_21DA732D0(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 attributedText];
  return sub_21DA725B4;
}

id sub_21DA73334()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) textColor];

  return v1;
}

void sub_21DA73374(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) setTextColor_];
}

void (*sub_21DA733C4(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 textColor];
  return sub_21DA726F0;
}

uint64_t sub_21DA73434(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_21DBFA16C();

  return v6;
}

void sub_21DA734AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  if (a2)
  {
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  [v7 *a5];
}

void (*sub_21DA7352C(uint64_t **a1))(void *)
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
  v2[4] = TTRITextCellTextFieldTextArea.placeholder.modify(v2);
  return sub_21D4C30A8;
}

id (*sub_21DA735D0(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 autocapitalizationType];
  return sub_21DA72B28;
}

id (*sub_21DA73660(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 autocorrectionType];
  return sub_21DA72BCC;
}

id (*sub_21DA736F0(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 keyboardType];
  return sub_21DA72C70;
}

id (*sub_21DA73780(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 returnKeyType];
  return sub_21DA72D14;
}

id sub_21DA737DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  v2 = [v1 window];
  [v2 makeKeyWindow];

  return [v1 becomeFirstResponder];
}

void sub_21DA738BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  v2 = [v1 beginningOfDocument];
  v3 = [v1 endOfDocument];
  v4 = [v1 textRangeFromPosition:v2 toPosition:v3];

  [v1 setSelectedTextRange_];
}

uint64_t sub_21DA739D0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21DA73A3C(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D6A4448;
}

Swift::Bool __swiftcall TTRITextCellTextFieldTextArea.textFieldShouldBeginEditing(_:)(UITextField *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(v1, &protocol witness table for TTRITextCellTextFieldTextArea, a1, &protocol witness table for UITextField, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return 1;
}

Swift::Void __swiftcall TTRITextCellTextFieldTextArea.textFieldDidBeginEditing(_:)(UITextField *a1)
{
  v2 = v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v1, &protocol witness table for TTRITextCellTextFieldTextArea, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

Swift::Bool __swiftcall TTRITextCellTextFieldTextArea.textField(_:shouldChangeCharactersIn:replacementString:)(UITextField *_, __C::_NSRange shouldChangeCharactersIn, Swift::String replacementString)
{
  object = replacementString._object;
  countAndFlagsBits = replacementString._countAndFlagsBits;
  length = shouldChangeCharactersIn.length;
  location = shouldChangeCharactersIn.location;
  v8 = v3 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(v3, &protocol witness table for TTRITextCellTextFieldTextArea, location, length, countAndFlagsBits, object, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

Swift::Bool __swiftcall TTRITextCellTextFieldTextArea.textFieldShouldReturn(_:)(UITextField *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), v6 = (*(v4 + 32))(v1, &protocol witness table for TTRITextCellTextFieldTextArea, ObjectType, v4), swift_unknownObjectRelease(), (v6 & 1) == 0))
  {
    [(UITextField *)a1 resignFirstResponder];
  }

  return 0;
}

Swift::Void __swiftcall TTRITextCellTextFieldTextArea.textFieldDidEndEditing(_:)(UITextField *a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(v2, &protocol witness table for TTRITextCellTextFieldTextArea, a1, &protocol witness table for UITextField, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v4 + 8);
    v8 = swift_getObjectType();
    (*(v7 + 40))(v2, &protocol witness table for TTRITextCellTextFieldTextArea, v8, v7);
    swift_unknownObjectRelease();
  }
}

id keypath_get_2Tm_1@<X0>(void *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) *a2];
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for TTRITextFieldTableViewCell()
{
  result = qword_27CE65448;
  if (!qword_27CE65448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, char a14)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0x1FFFFFFFELL;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0;
  v28 = 0;
  v20 = *(a9 + 48);
  v27[2] = *(a9 + 32);
  v27[3] = v20;
  v21 = *(a9 + 16);
  v27[0] = *a9;
  v27[1] = v21;
  sub_21D0CF7E0(v27, &unk_27CE5EA00);
  v22 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v22;
  *(a9 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = result;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 121) = a10;
  *(a9 + 122) = a11;
  *(a9 + 123) = a12;
  *(a9 + 124) = a13;
  *(a9 + 125) = a14;
  return result;
}

uint64_t TTRIToggleCellContentState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D1ADB0C(v8, v7);
}

__n128 TTRIToggleCellContentState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRIToggleCellContentState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIToggleCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t TTRIToggleCellContentState.subtitle.getter()
{
  v1 = *(v0 + 88);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIToggleCellContentState.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t TTRIToggleCellContentState.ttriAccessibilitySubtitle.getter()
{
  v1 = *(v0 + 104);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIToggleCellContentState.ttriAccessibilitySubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_21DA748A0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE654C0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
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

uint64_t sub_21DA74940(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE654C0);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA74AA8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE654C8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
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

uint64_t sub_21DA74B48(uint64_t *a1, void *a2)
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

  v7 = (*a2 + qword_27CE654C8);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t sub_21DA74C30(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_21DA74CB8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id TTRIToggleCellContent.init(state:)(_OWORD *a1)
{
  v3 = (v1 + qword_27CE654C0);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + qword_27CE654C8);
  *v4 = 0;
  v4[1] = 0;
  v5 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v5 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v5 & *v1) + 0x90)) = 0;
  v6 = (v1 + *((*v5 & *v1) + 0x78));
  v7 = a1[3];
  v6[2] = a1[2];
  v6[3] = v7;
  v8 = a1[1];
  *v6 = *a1;
  v6[1] = v8;
  *(v6 + 110) = *(a1 + 110);
  v9 = a1[6];
  v6[5] = a1[5];
  v6[6] = v9;
  v6[4] = a1[4];
  *(v1 + *((*v5 & *v1) + 0x80)) = 0;
  v10 = (v1 + *((*v5 & *v1) + 0x88));
  *v10 = 0x6543686374697753;
  v10[1] = 0xEA00000000006C6CLL;
  v12.receiver = v1;
  v12.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0);
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t TTRIToggleCellContent.selectionBehavior.getter@<X0>(char *a1@<X8>)
{
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  result = swift_beginAccess();
  if (v3[121])
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  *a1 = v5;
  return result;
}

Swift::Void __swiftcall TTRIToggleCellContent.cellDidBecomeSelected()()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  if (v1[121] == 1)
  {
    v2 = (v0 + qword_27CE654C0);
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {

      v3(v4);
      sub_21D0D0E88(v3);
    }
  }
}

uint64_t TTRIToggleCellContent.updateCell(_:)(uint64_t a1)
{
  v5[2] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21DA7719C;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_133;
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

uint64_t sub_21DA751C4(uint64_t a1, void *a2)
{
  v3 = a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78);
  swift_beginAccess();
  v4 = *(v3 + 3);
  v48 = *(v3 + 2);
  v49 = v4;
  v50 = v3[64];
  v5 = *(v3 + 1);
  v46 = *v3;
  v47 = v5;
  v6 = (a1 + qword_27CE655A0);
  swift_beginAccess();
  v7 = v6[3];
  v53 = v6[2];
  v54 = v7;
  v55 = *(v6 + 64);
  v8 = v6[1];
  v51 = *v6;
  v52 = v8;
  v56[2] = v53;
  v56[3] = v7;
  v57 = v55;
  v56[0] = v51;
  v56[1] = v8;
  v9 = v46;
  v10 = v47;
  v11 = v48;
  v12 = v49;
  *(v6 + 64) = v50;
  v6[2] = v11;
  v6[3] = v12;
  *v6 = v9;
  v6[1] = v10;
  sub_21D1ADB0C(&v46, &v41);
  sub_21D1ADB0C(&v51, &v41);
  sub_21D0CF7E0(v56, &unk_27CE5EA00);
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v41 = v51;
  v42 = v52;
  sub_21DA7EF48(&v41);
  sub_21D0CF7E0(&v51, &unk_27CE5EA00);
  v13 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v14 = v13;
  v15 = sub_21DBFA12C();

  [v14 setText_];

  v16 = *(v3 + 11);
  v17 = *(v3 + 12);
  sub_21DBF8E0C();
  sub_21DA7B5A0(v16, v17);
  v18 = *(v3 + 13);
  v19 = *(v3 + 14);
  v20 = (a1 + qword_27CE655D0);
  swift_beginAccess();
  *v20 = v18;
  v20[1] = v19;
  sub_21DBF8E0C();

  v21 = *(a1 + qword_27CE654D0);
  [v21 setOn_];
  if (v3[122])
  {
    v21 = 0;
    v22 = -1;
  }

  else
  {
    v23 = v21;
    v22 = 1;
  }

  v24 = a1 + qword_27CE65610;
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  *v24 = v21;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v30 = *(v24 + 40);
  *(v24 + 40) = v22;
  sub_21D361B20(v25, v26, v27, v28, v29, v30);
  sub_21D361BB4(v25, v26, v27, v28, v29, v30);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  *&v42 = v27;
  *(&v42 + 1) = v28;
  *&v43 = v29;
  BYTE8(v43) = v30;
  sub_21DA7F6B4(&v41);
  sub_21D361BB4(v25, v26, v27, v28, v29, v30);
  v31 = v3[123];
  v32 = qword_27CE65580;
  swift_beginAccess();
  v33 = *(a1 + v32);
  *(a1 + v32) = v31;
  if (v31 != v33)
  {
    [*(a1 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  *(a1 + qword_27CE654E0) = v3[124];
  *(a1 + qword_27CE654E8) = v3[125];
  *(a1 + qword_27CE654F0) = v3[121];
  v34 = (a2 + qword_27CE654C0);
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  v37 = (a1 + qword_27CE654D8);
  v38 = *(a1 + qword_27CE654D8);
  *v37 = v35;
  v37[1] = v36;
  sub_21D0D0E78(v35);
  return sub_21D0D0E88(v38);
}

void sub_21DA75598(uint64_t a1)
{
  sub_21D0CEB98(a1, v40);
  sub_21D0D8CF0(0, &qword_27CE65518);
  if (swift_dynamicCast())
  {
    v2 = v39;
    v3 = [v39 isOn];
    v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v5 = *(v4 + 5);
    v36 = *(v4 + 4);
    v37 = v5;
    v38[0] = *(v4 + 6);
    v6 = v38[0];
    *(v38 + 14) = *(v4 + 110);
    v7 = *(v4 + 1);
    v33[0] = *v4;
    v33[1] = v7;
    v8 = *(v4 + 3);
    v34 = *(v4 + 2);
    v35 = v8;
    v41[4] = v36;
    v41[5] = v5;
    v41[6] = v6;
    v42 = *(v4 + 14);
    v41[0] = v33[0];
    v41[1] = v7;
    v41[2] = v34;
    v41[3] = v8;
    v43 = v3;
    v45 = v4[125];
    v44 = *(v4 + 121);
    sub_21D539B98(v33, v31);
    sub_21D5C6D8C(v41);
    v9 = (v1 + qword_27CE654C8);
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v4 + 5);
      v12 = *(v4 + 3);
      v28 = *(v4 + 4);
      v29 = v11;
      v13 = *(v4 + 5);
      v30[0] = *(v4 + 6);
      *(v30 + 14) = *(v4 + 110);
      v14 = *(v4 + 1);
      v25[0] = *v4;
      v25[1] = v14;
      v15 = *(v4 + 3);
      v17 = *v4;
      v16 = *(v4 + 1);
      v26 = *(v4 + 2);
      v27 = v15;
      v22 = v28;
      v23 = v13;
      v24[0] = *(v4 + 6);
      *(v24 + 14) = *(v4 + 110);
      v18 = v17;
      v19 = v16;
      v20 = v26;
      v21 = v12;
      sub_21D0D0E78(v10);
      sub_21D539B98(v25, v31);
      v10(&v18);
      sub_21D0D0E88(v10);

      v31[4] = v22;
      v31[5] = v23;
      v32[0] = v24[0];
      *(v32 + 14) = *(v24 + 14);
      v31[0] = v18;
      v31[1] = v19;
      v31[2] = v20;
      v31[3] = v21;
      sub_21D5D2B7C(v31);
    }

    else
    {
    }
  }
}

uint64_t sub_21DA757BC(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21DA75598(v4);

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_21DA75850()
{
  sub_21D0D0E88(*(v0 + qword_27CE654C0));
  v1 = *(v0 + qword_27CE654C8);

  return sub_21D0D0E88(v1);
}

uint64_t sub_21DA7589C(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE654C0));
  v2 = *(a1 + qword_27CE654C8);

  return sub_21D0D0E88(v2);
}

id TTRIToggleTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIToggleTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[qword_27CE654D8];
  *v7 = 0;
  v7[1] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  *&v3[qword_27CE654D0] = v8;
  v3[qword_27CE654E0] = 0;
  v3[qword_27CE654E8] = 0;
  v3[qword_27CE654F0] = 0;
  v9 = *v7;
  *v7 = 0;
  v7[1] = 0;
  sub_21D0D0E88(v9);
  if (a3)
  {
    v10 = sub_21DBFA12C();
  }

  else
  {
    v10 = 0;
  }

  v25.receiver = v3;
  v25.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v25, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = *&v11[qword_27CE654D0];
  v13 = &v11[qword_27CE65610];
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  *v13 = v12;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v19 = v13[40];
  v13[40] = 1;
  v20 = v11;
  v21 = v12;
  sub_21D361B20(v14, v15, v16, v17, v18, v19);
  sub_21D361BB4(v14, v15, v16, v17, v18, v19);
  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v24 = v19;
  sub_21DA7F6B4(v23);

  sub_21D361BB4(v14, v15, v16, v17, v18, v19);
  return v20;
}

char *sub_21DA75B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return TTRIToggleTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

void sub_21DA75B9C(uint64_t a1)
{
  v1 = (a1 + qword_27CE654D8);
  *v1 = 0;
  v1[1] = 0;
  sub_21DBFC31C();
  __break(1u);
}

char *sub_21DA75C64(char *result)
{
  v1 = *&result[qword_27CE654D8];
  if (v1)
  {
    v2 = result;
    v3 = sub_21D0D0E78(v1);
    v1(v3);

    return sub_21D0D0E88(v1);
  }

  return result;
}

id sub_21DA75D64(char *a1)
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

uint64_t TTRIToggleTableViewCell.accessibilityLabel.getter()
{
  v1 = [*(v0 + qword_27CE65590) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t (*TTRIToggleTableViewCell.accessibilityLabel.modify(uint64_t *a1))()
{
  v3 = [*(v1 + qword_27CE65590) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

uint64_t TTRIToggleTableViewCell.accessibilityValue.getter()
{
  v1 = (v0 + qword_27CE655D0);
  swift_beginAccess();
  v2 = v1[1];
  if (v2 || (v1 = (v0 + qword_27CE655C8), swift_beginAccess(), (v2 = v1[1]) != 0))
  {
    v3 = *v1;
    sub_21DBF8E0C();
    v4 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_21D210A84((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v3;
    *(v7 + 5) = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  if ([*(v0 + qword_27CE654D0) isOn])
  {
    if (qword_27CE57178 != -1)
    {
      swift_once();
    }

    v8 = &qword_27CE66AB0;
  }

  else
  {
    if (qword_27CE57180 != -1)
    {
      swift_once();
    }

    v8 = &qword_27CE66AC0;
  }

  v10 = *v8;
  v9 = v8[1];
  sub_21DBF8E0C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_21D210A84(0, *(v4 + 2) + 1, 1, v4);
  }

  v12 = *(v4 + 2);
  v11 = *(v4 + 3);
  if (v12 >= v11 >> 1)
  {
    v4 = sub_21D210A84((v11 > 1), v12 + 1, 1, v4);
  }

  *(v4 + 2) = v12 + 1;
  v13 = &v4[16 * v12];
  *(v13 + 4) = v10;
  *(v13 + 5) = v9;
  if (*(v0 + qword_27CE654E0) == 1)
  {
    if (*(v0 + qword_27CE654E8) == 1)
    {
      if (qword_27CE57500 != -1)
      {
        swift_once();
      }

      v14 = &qword_27CE670F0;
    }

    else
    {
      if (qword_27CE574F8 != -1)
      {
        swift_once();
      }

      v14 = &qword_27CE670E0;
    }

    v16 = *v14;
    v15 = v14[1];
    sub_21DBF8E0C();
    v18 = *(v4 + 2);
    v17 = *(v4 + 3);
    if (v18 >= v17 >> 1)
    {
      v4 = sub_21D210A84((v17 > 1), v18 + 1, 1, v4);
    }

    *(v4 + 2) = v18 + 1;
    v19 = &v4[16 * v18];
    *(v19 + 4) = v16;
    *(v19 + 5) = v15;
  }

  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v20 = sub_21DBFA07C();

  return v20;
}

uint64_t (*TTRIToggleTableViewCell.accessibilityValue.modify(uint64_t *a1))()
{
  *a1 = TTRIToggleTableViewCell.accessibilityValue.getter();
  a1[1] = v2;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

id sub_21DA762F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t TTRIToggleTableViewCell.accessibilityHint.getter()
{
  if (*(v0 + qword_27CE654E0) == 1)
  {
    if (*(v0 + qword_27CE654E8) == 1)
    {
      if (qword_27CE57538 != -1)
      {
        swift_once();
      }

      v1 = &qword_27CE67160;
    }

    else if ([*(v0 + qword_27CE654D0) isOn])
    {
      if (qword_27CE57530 != -1)
      {
        swift_once();
      }

      v1 = &qword_27CE67150;
    }

    else
    {
      if (qword_27CE57540 != -1)
      {
        swift_once();
      }

      v1 = &qword_27CE67170;
    }

    v3 = *v1;
    v2 = v1[1];
    sub_21DBF8E0C();
    v4 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_21D210A84((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v3;
    *(v7 + 5) = v2;
  }

  if (qword_280D1AA40 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v8 = sub_21DBFA07C();

  return v8;
}

uint64_t (*TTRIToggleTableViewCell.accessibilityHint.modify(uint64_t *a1))()
{
  *a1 = TTRIToggleTableViewCell.accessibilityHint.getter();
  a1[1] = v2;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

Swift::Bool __swiftcall TTRIToggleTableViewCell.accessibilityActivate()()
{
  v1 = *(v0 + qword_27CE654D0);
  [v1 setOn:objc_msgSend(v1 animated:{sel_isOn) ^ 1, 1}];
  [v1 sendActionsForControlEvents_];
  return 1;
}

uint64_t sub_21DA7664C(char *a1)
{
  v2 = qword_27CE654D0;
  v3 = *&a1[qword_27CE654D0];
  v4 = a1;
  [v3 setOn:objc_msgSend(v3 animated:{sel_isOn) ^ 1, 1}];
  [*&a1[v2] sendActionsForControlEvents_];

  return 1;
}

uint64_t (*TTRIToggleTableViewCell.accessibilityActivationPoint.modify(void *a1))(void, void, void)
{
  [*(v1 + qword_27CE654D0) accessibilityActivationPoint];
  *a1 = v3;
  a1[1] = v4;
  return nullsub_1;
}

id sub_21DA7675C(void *a1)
{
  v1 = a1;
  v2 = TTRIToggleTableViewCell.accessibilityCustomActions.getter();

  if (v2)
  {
    sub_21D0D8CF0(0, qword_27CE58B18);
    v3 = sub_21DBFA5DC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t TTRIToggleTableViewCell.accessibilityCustomActions.getter()
{
  ObjectType = swift_getObjectType();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v12, sel_accessibilityCustomActions);
  if (v2)
  {
    v3 = v2;
    sub_21D0D8CF0(0, qword_27CE58B18);
    v4 = sub_21DBFA5EC();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v13 = v4;
  if (v0[qword_27CE654E0] == 1 && [*&v0[qword_27CE654D0] isOn] && v0[qword_27CE654F0] == 1)
  {
    if (v0[qword_27CE654E8] == 1)
    {
      if (qword_27CE57518 != -1)
      {
        swift_once();
      }

      v5 = &qword_27CE67120;
    }

    else
    {
      if (qword_27CE57510 != -1)
      {
        swift_once();
      }

      v5 = &qword_27CE67110;
    }

    v6 = *v5;
    v7 = v5[1];
    sub_21DBF8E0C();
    sub_21D0D8CF0(0, qword_27CE58B18);
    v11[3] = ObjectType;
    v11[0] = v0;
    v8 = v0;
    v9 = sub_21DA76A04(v6, v7, v11, sel_toggleExpandCollapseState);
    MEMORY[0x223D42D80]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    return v13;
  }

  return v4;
}

id sub_21DA76A04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_21DBFA12C();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_21DBFC62C();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v13 selector:a4];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_21DA76BC0()
{
  v1 = *(v0 + qword_27CE654D8);

  return sub_21D0D0E88(v1);
}

uint64_t sub_21DA76C04(uint64_t a1)
{
  v2 = *(a1 + qword_27CE654D8);

  return sub_21D0D0E88(v2);
}

uint64_t _s15RemindersUICore26TTRIToggleCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v98 = *(a1 + 32);
  v99 = v4;
  v5 = *(a1 + 16);
  v96 = *a1;
  v97 = v5;
  v6 = *(a2 + 48);
  v101[2] = *(a2 + 32);
  v101[3] = v6;
  v7 = *(a2 + 16);
  v101[0] = *a2;
  v101[1] = v7;
  v100 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v69 = *(a1 + 96);
  v70 = *(a1 + 80);
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 121);
  v14 = *(a1 + 122);
  v15 = *(a1 + 123);
  v16 = *(a1 + 124);
  v17 = *(a1 + 125);
  v102 = *(a2 + 64);
  v18 = *(a2 + 72);
  v19 = *(a2 + 80);
  v67 = *(a2 + 88);
  v68 = *(a2 + 96);
  v21 = *(a2 + 104);
  v20 = *(a2 + 112);
  v22 = *(a2 + 120);
  v23 = *(a2 + 121);
  v24 = *(a2 + 122);
  v25 = *(a2 + 123);
  v26 = *(a2 + 124);
  v27 = *(a2 + 125);
  v28 = *(&v5 + 1);
  v29 = v100;
  *&v95[7] = v101[0];
  *&v95[23] = *(a2 + 16);
  v30 = *(&v7 + 1);
  v31 = v102;
  if (*(&v5 + 1) >> 1 == 0xFFFFFFFFLL && v100 < 2u)
  {
    if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v102 < 2u)
    {
      v60 = v9;
      v61 = v26;
      v62 = v21;
      v63 = v20;
      v64 = v16;
      v65 = v22;
      v66 = v11;
      v32 = v10;
      v57 = v23;
      v58 = v13;
      v55 = v24;
      v56 = v14;
      v53 = v25;
      v54 = v15;
      v59 = v12;
      v51 = v17;
      v52 = v27;
      v85 = *a1;
      *&v86 = *(a1 + 16);
      *(&v86 + 1) = *(&v97 + 1);
      v33 = *(a1 + 48);
      v87 = *(a1 + 32);
      v88 = v33;
      v89 = v100;
      sub_21D1ADB0C(&v96, &v80);
      sub_21D1ADB0C(v101, &v80);
      sub_21D0CF7E0(&v85, &unk_27CE5EA00);
      goto LABEL_10;
    }

    sub_21D1ADB0C(&v96, &v85);
    sub_21D1ADB0C(v101, &v85);
LABEL_20:
    v85 = *a1;
    *&v86 = *(a1 + 16);
    *(&v86 + 1) = v28;
    v47 = *(a1 + 48);
    v87 = *(a1 + 32);
    v88 = v47;
    v89 = v29;
    *v90 = *v95;
    *&v90[15] = *&v95[15];
    v91 = v30;
    v48 = *(a2 + 32);
    v93 = *(a2 + 48);
    v92 = v48;
    v94 = v31;
    sub_21D0CF7E0(&v85, qword_27CE5ABE0);
    return 0;
  }

  v34 = *(a1 + 16);
  v85 = *a1;
  *&v86 = v34;
  *(&v86 + 1) = *(&v97 + 1);
  v35 = *(a1 + 48);
  v87 = *(a1 + 32);
  v88 = v35;
  v89 = v100;
  v84 = v100;
  v82 = v87;
  v83 = v35;
  v80 = v85;
  v81 = v86;
  if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v102 < 2u)
  {
    v77 = v87;
    v78 = v88;
    v79 = v89;
    v75 = v85;
    v76 = v86;
    sub_21D1ADB0C(&v96, v73);
    sub_21D1ADB0C(v101, v73);
    sub_21D1ADB0C(&v85, v73);
    sub_21D35D940(&v75);
    goto LABEL_20;
  }

  v60 = v9;
  v61 = v26;
  v62 = v21;
  v63 = v20;
  v64 = v16;
  v65 = v22;
  v66 = v11;
  v32 = v10;
  v57 = v23;
  v58 = v13;
  v55 = v24;
  v56 = v14;
  v53 = v25;
  v54 = v15;
  v59 = v12;
  v51 = v17;
  v52 = v27;
  v75 = *a2;
  v36 = *(a2 + 16);
  v37 = *(a2 + 48);
  v77 = *(a2 + 32);
  v78 = v37;
  *&v76 = v36;
  *(&v76 + 1) = v30;
  v79 = v102;
  sub_21D1ADB0C(&v96, v73);
  sub_21D1ADB0C(v101, v73);
  sub_21D1ADB0C(&v85, v73);
  v38 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v80, &v75);
  v71[2] = v77;
  v71[3] = v78;
  v72 = v79;
  v71[0] = v75;
  v71[1] = v76;
  sub_21D35D940(v71);
  v73[2] = v82;
  v73[3] = v83;
  v74 = v84;
  v73[0] = v80;
  v73[1] = v81;
  sub_21D35D940(v73);
  v75 = *a1;
  *&v76 = *(a1 + 16);
  *(&v76 + 1) = v28;
  v39 = *(a1 + 48);
  v77 = *(a1 + 32);
  v78 = v39;
  v79 = v29;
  sub_21D0CF7E0(&v75, &unk_27CE5EA00);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((v8 != v18 || v70 != v19) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (!v69)
  {
    v40 = v66;
    v42 = v64;
    v41 = v65;
    v44 = v62;
    v43 = v63;
    v45 = v61;
    if (!v68)
    {
      goto LABEL_24;
    }

    return 0;
  }

  v40 = v66;
  v42 = v64;
  v41 = v65;
  v44 = v62;
  v43 = v63;
  v45 = v61;
  if (!v68)
  {
    return 0;
  }

  if (v60 != v67 || v69 != v68)
  {
    v46 = sub_21DBFC64C();
    v45 = v61;
    v44 = v62;
    v43 = v63;
    v42 = v64;
    v41 = v65;
    v40 = v66;
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_24:
  if (v40)
  {
    if (v43)
    {
      v50 = v42 ^ v45;
      if (v32 == v44 && v40 == v43)
      {
        if (((v59 ^ v41 | v58 ^ v57 | v56 ^ v55 | v54 ^ v53 | v50) & 1) == 0)
        {
          return v51 ^ v52 ^ 1u;
        }
      }

      else if (((sub_21DBFC64C() ^ 1 | v59 ^ v41 | v58 ^ v57 | v56 ^ v55 | v54 ^ v53 | v50) & 1) == 0)
      {
        return v51 ^ v52 ^ 1u;
      }
    }

    return 0;
  }

  result = 0;
  if (!v43 && ((v59 ^ v41) & 1) == 0 && ((v58 ^ v57) & 1) == 0 && ((v56 ^ v55) & 1) == 0 && ((v54 ^ v53) & 1) == 0 && ((v42 ^ v45) & 1) == 0)
  {
    return v51 ^ v52 ^ 1u;
  }

  return result;
}

uint64_t destroy for TTRIToggleCellContentState(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 64);
  if (v1 >> 1 != 0xFFFFFFFF || v2 >= 2)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v1, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), v2);
  }
}

uint64_t initializeWithCopy for TTRIToggleCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 64);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 40);
    v19 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    sub_21D361F04(*a2, v8, v9, v4, v19, v10, v11, v12, v5);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
    *(a1 + 32) = v19;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    *(a1 + 64) = v5;
  }

  else
  {
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
  }

  v15 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v15;
  v16 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v16;
  v17 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v17;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIToggleCellContentState(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  v5 = *(a2 + 64);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 24) >> 1 != 0xFFFFFFFFLL || *(a1 + 64) >= 2u)
  {
    if (v7)
    {
      sub_21D35D940(a1);
      *a1 = *a2;
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *(a2 + 1);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[5];
      v37 = a2[4];
      v19 = a2[6];
      v20 = a2[7];
      sub_21D361F04(*a2, v16, v17, v4, v37, v18, v19, v20, v5);
      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v29 = *(a1 + 64);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      *(a1 + 24) = v4;
      *(a1 + 32) = v37;
      *(a1 + 40) = v18;
      *(a1 + 48) = v19;
      *(a1 + 56) = v20;
      *(a1 + 64) = v5;
      sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else if (v7)
  {
    *a1 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    *(a1 + 16) = v12;
  }

  else
  {
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    v33 = a2[5];
    v38 = a2[4];
    v34 = a2[6];
    v35 = a2[7];
    sub_21D361F04(*a2, v31, v32, v4, v38, v33, v34, v35, v5);
    *a1 = v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
    *(a1 + 24) = v4;
    *(a1 + 32) = v38;
    *(a1 + 40) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = v35;
    *(a1 + 64) = v5;
  }

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  sub_21DBF8E0C();

  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];
  sub_21DBF8E0C();

  *(a1 + 104) = a2[13];
  *(a1 + 112) = a2[14];
  sub_21DBF8E0C();

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

__n128 __swift_memcpy126_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRIToggleCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 64);
  if (v4 >> 1 == 0xFFFFFFFF && v5 < 2)
  {
    goto LABEL_12;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 64);
  if (v7 >> 1 == 0xFFFFFFFF && v8 < 2)
  {
    sub_21D35D940(a1);
LABEL_12:
    v19 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v19;
    *(a1 + 64) = *(a2 + 64);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    goto LABEL_13;
  }

  v10 = *(a2 + 16);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = v8;
  sub_21D362050(v11, v12, v13, v4, v14, v15, v16, v17, v5);
LABEL_13:
  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v21;

  v22 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v22;

  v23 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v23;

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIToggleCellContentState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 126))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIToggleCellContentState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 TTRIActionCellStateAdaptor.State.init(title:titleIsTinted:detailText:icon:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0x1FFFFFFFELL;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  v15 = 0;
  v9 = *(a7 + 56);
  v10 = *(a7 + 88);
  v14[2] = *(a7 + 72);
  v14[3] = v10;
  v14[0] = *(a7 + 40);
  v14[1] = v9;
  sub_21D0CF7E0(v14, &unk_27CE5EA00);
  v11 = *a6;
  *(a7 + 56) = a6[1];
  result = a6[2];
  v13 = a6[3];
  *(a7 + 72) = result;
  *(a7 + 88) = v13;
  *(a7 + 104) = *(a6 + 64);
  *(a7 + 40) = v11;
  return result;
}

id TTRIActionCellContent.__allocating_init(state:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[5];
  v8[4] = a1[4];
  v9[0] = v4;
  *(v9 + 9) = *(a1 + 89);
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return sub_21DA884EC(0, 0x65436E6F69746341, 0xEA00000000006C6CLL, 0, v8);
}

uint64_t TTRIActionCellStateAdaptor.State.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIActionCellStateAdaptor.State.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRIActionCellStateAdaptor.State.detailText.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIActionCellStateAdaptor.State.detailText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TTRIActionCellStateAdaptor.State.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_21D0D3954(v8, v7, &unk_27CE5EA00);
}

__n128 TTRIActionCellStateAdaptor.State.icon.setter(__int128 *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v8[3] = v4;
  v9 = *(v1 + 104);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  sub_21D0CF7E0(v8, &unk_27CE5EA00);
  v5 = *a1;
  *(v1 + 56) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 72) = result;
  *(v1 + 88) = v7;
  *(v1 + 104) = *(a1 + 64);
  *(v1 + 40) = v5;
  return result;
}

id TTRIActionCellStateAdaptor.prototypeCellView.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D568328(v2);
}

uint64_t TTRIActionCellStateAdaptor.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

double TTRIActionCellStateAdaptor.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_21DC39410;
  *(a1 + 16) = 0xEA00000000006C6CLL;
  return result;
}

uint64_t TTRIActionCellStateAdaptor.setState(_:on:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[5];
  v11[4] = a1[4];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 89);
  v3 = a1[1];
  v11[0] = *a1;
  v11[1] = v3;
  v4 = a1[3];
  v11[2] = a1[2];
  v11[3] = v4;
  v9[2] = a2;
  v9[3] = v11;
  v5 = *(a2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21DA785B0;
  *(v6 + 24) = v9;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_134;
  v7 = _Block_copy(aBlock);

  [v5 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA77DB8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_self() labelColor];
  }

  *&v39 = v4;
  sub_21DA7B9D0(&v39);
  v5 = *(a1 + qword_27CE65590);
  v6 = sub_21DBFA12C();
  [v5 setText_];

  v7 = *(a2 + 56);
  v8 = *(a2 + 88);
  v41 = *(a2 + 72);
  v42 = v8;
  v43 = *(a2 + 104);
  v39 = *(a2 + 40);
  v40 = v7;
  v9 = (a1 + qword_27CE655A0);
  swift_beginAccess();
  v10 = v9[2];
  v11 = v9[3];
  v12 = *v9;
  v32 = v9[1];
  v33 = v10;
  v34 = v11;
  v35 = *(v9 + 64);
  v31 = v12;
  v36[2] = v10;
  v36[3] = v11;
  v37 = v35;
  v36[0] = v12;
  v36[1] = v32;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = v42;
  *(v9 + 64) = v43;
  v9[2] = v15;
  v9[3] = v16;
  *v9 = v13;
  v9[1] = v14;
  sub_21D0D3954(&v39, &v26, &unk_27CE5EA00);
  sub_21D0D3954(&v31, &v26, &unk_27CE5EA00);
  sub_21D0CF7E0(v36, &unk_27CE5EA00);
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v26 = v31;
  v27 = v32;
  sub_21DA7EF48(&v26);
  sub_21D0CF7E0(&v31, &unk_27CE5EA00);
  v38 = *(a2 + 24);
  v17 = *(&v38 + 1);
  if (*(&v38 + 1))
  {
    v18 = v38;
    v19 = a1 + qword_27CE65610;
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    *v19 = v18;
    *(v19 + 8) = v17;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 0;
    LOBYTE(v17) = *(v19 + 40);
    *(v19 + 40) = 0;
    sub_21D0D3954(&v38, &v26, &qword_27CE588A0);
  }

  else
  {
    v25 = a1 + qword_27CE65610;
    swift_beginAccess();
    v20 = *v25;
    v21 = *(v25 + 8);
    v22 = *(v25 + 16);
    v23 = *(v25 + 24);
    v24 = *(v25 + 32);
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0;
    v17 = *(v25 + 40);
    *(v25 + 40) = -1;
  }

  sub_21D361B20(v20, v21, v22, v23, v24, v17);
  sub_21D361BB4(v20, v21, v22, v23, v24, v17);
  *&v26 = v20;
  *(&v26 + 1) = v21;
  *&v27 = v22;
  *(&v27 + 1) = v23;
  *&v28 = v24;
  BYTE8(v28) = v17;
  sub_21DA7F6B4(&v26);
  sub_21D361BB4(v20, v21, v22, v23, v24, v17);
}