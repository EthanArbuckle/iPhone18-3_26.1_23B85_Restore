RemindersUICore::TTRRemindersListViewModel::ListInfo::IOS __swiftcall TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)(Swift::Bool showsActionMenuButton, Swift::Bool hasBottomInsetForPencilInput, Swift::Bool usesFlatDiffableSnapshot_workaroundRdar135908527)
{
  *v3 = showsActionMenuButton;
  v3[1] = hasBottomInsetForPencilInput;
  v3[2] = usesFlatDiffableSnapshot_workaroundRdar135908527;
  result.showsActionMenuButton = showsActionMenuButton;
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.iOS.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v4 = (v1 + *(result + 124));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.macOS.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  *a1 = *(v1 + *(result + 128));
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.isSharedCalDAV.getter()
{
  v1 = (v0 + *(type metadata accessor for TTRRemindersListViewModel.ListInfo(0) + 36));
  v2 = v1[1] == 3;
  v3 = (*v1 >> 8) & 1;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, char *a14, char a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, char a26, char a27, char a28, char a29, char *a30, char *a31)
{
  v34 = *a7;
  v35 = a7[1];
  v50 = *a14;
  v53 = a30[1];
  v54 = *a30;
  v52 = a30[2];
  v55 = *a31;
  v36 = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v37 = v36[10];
  v38 = type metadata accessor for TTRRemindersListTip(0);
  v39 = *(*(v38 - 8) + 56);
  v39(a9 + v37, 1, 1, v38);
  sub_21D0D523C(a1, a9, &qword_27CE650E0);
  v40 = (a9 + v36[5]);
  *v40 = a2;
  v40[1] = a3;
  *(a9 + v36[6]) = a4;
  v41 = a9 + v36[7];
  *v41 = a5;
  *(v41 + 8) = a6 & 1;
  *(a9 + v36[8]) = 0;
  v42 = (a9 + v36[9]);
  *v42 = v34;
  v42[1] = v35;
  sub_21D0CF7E0(a9 + v37, &qword_27CE64AA0);
  v39(a9 + v37, 1, 1, v38);
  *(a9 + v36[11]) = a8;
  *(a9 + v36[12]) = a10;
  *(a9 + v36[13]) = a11;
  *(a9 + v36[14]) = a12;
  *(a9 + v36[15]) = a13;
  *(a9 + v36[16]) = v50;
  *(a9 + v36[17]) = a15;
  *(a9 + v36[18]) = a16;
  *(a9 + v36[19]) = a17;
  *(a9 + v36[20]) = a18;
  *(a9 + v36[21]) = a19;
  v43 = (a9 + v36[22]);
  *v43 = a20;
  v43[1] = a21;
  *(a9 + v36[23]) = a22;
  sub_21D0D523C(a23, a9 + v36[24], &qword_27CE66848);
  result = sub_21D0D523C(a24, a9 + v36[25], &qword_27CE66850);
  *(a9 + v36[26]) = a25;
  *(a9 + v36[27]) = a26;
  *(a9 + v36[28]) = a27;
  *(a9 + v36[29]) = a28;
  *(a9 + v36[30]) = a29;
  v45 = (a9 + v36[31]);
  *v45 = v54;
  v45[1] = v53;
  v45[2] = v52;
  *(a9 + v36[32]) = v55;
  return result;
}

uint64_t TTRRemindersListViewModel.ListInfo.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v3 = v2[10];
  v4 = type metadata accessor for TTRRemindersListTip(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v6 = type metadata accessor for TTRListType(0);
  (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  v7 = (a1 + v2[5]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(a1 + v2[6]) = [objc_opt_self() blackColor];
  v8 = a1 + v2[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = xmmword_21DC2B090;
  sub_21D0CF7E0(a1 + v3, &qword_27CE64AA0);
  v5(a1 + v3, 1, 1, v4);
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 1;
  *(a1 + v2[20]) = 0;
  *(a1 + v2[21]) = 0;
  v9 = (a1 + v2[22]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[23]) = 0;
  v10 = v2[24];
  v11 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v2[25];
  v13 = type metadata accessor for TTRTemplatePublicLinkData(0);
  result = (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  *(a1 + v2[26]) = 0;
  *(a1 + v2[27]) = 0;
  *(a1 + v2[28]) = 0;
  *(a1 + v2[29]) = 0;
  *(a1 + v2[30]) = 0;
  v15 = a1 + v2[31];
  *v15 = 1;
  *(v15 + 2) = 0;
  *(a1 + v2[32]) = 0;
  return result;
}

id TTRRemindersListViewModel.ListSharingInfo.status.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_21DB15B70(v2);
}

uint64_t TTRRemindersListViewModel.DeleteCompletedMenuItem.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRRemindersListViewModel::DeleteCompletedMenuItem __swiftcall TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)(Swift::String title, Swift::Int_optional olderThanMonths)
{
  *v2 = title;
  *(v2 + 16) = olderThanMonths.value;
  *(v2 + 24) = olderThanMonths.is_nil;
  result.title = title;
  result.olderThanMonths = olderThanMonths;
  return result;
}

uint64_t TTRRemindersListViewModel.DeleteCompletedMenuItem.completeBeforeDateFromNow()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_21DBF563C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5A0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21DBF5A2C();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  if (*(v26 + 24))
  {
    return (*(v2 + 56))(v25, 1, 1, v1, v13);
  }

  v23 = v1;
  v17 = *(v26 + 16);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  result = (*(v6 + 104))(v8, *MEMORY[0x277CC9998], v5);
  if (__OFSUB__(0, v17))
  {
    __break(1u);
  }

  else
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    sub_21DBF599C();
    v18 = v23;
    (*(v2 + 8))(v4, v23);
    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v24);
    if ((*(v2 + 48))(v15, 1, v18) == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE58D68);
      v19 = objc_opt_self();
      v20 = sub_21DBFA12C();
      [v19 internalErrorWithDebugDescription_];

      return swift_willThrow();
    }

    else
    {
      v21 = v25;
      (*(v2 + 32))(v25, v15, v18);
      return (*(v2 + 56))(v21, 0, 1, v18, v22);
    }
  }

  return result;
}

id sub_21DB06570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 == 255)
  {
    goto LABEL_12;
  }

  v4 = *a1;
  if (v3)
  {
    REMAlarmVehicleTriggerEvent.localizedDescription.getter([*a1 event]);
    v7 = v6;
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = v5;
      if (qword_280D1AC40 != -1)
      {
        swift_once();
      }

      v10 = qword_280D1AC48;
      v11 = objc_opt_self();
      v12 = v10;
      result = [v11 systemBlueColor];
      v14 = 0xE200000000000000;
      v15 = 16421;
      goto LABEL_17;
    }

LABEL_12:
    v10 = 0;
    result = 0;
    v15 = 0;
    v14 = 0;
    v9 = 0;
    v7 = 0;
    goto LABEL_17;
  }

  REMAlarmProximity.localizedLabelFormatString.getter([*a1 proximity]);
  v15 = v16;
  v14 = v17;
  v18 = [v4 structuredLocation];
  v19 = [v18 displayName];

  if (v19)
  {
    v9 = sub_21DBFA16C();
    v7 = v20;
  }

  else
  {
    v9 = 0;
    v7 = 0xE000000000000000;
  }

  if (qword_280D1AC58 != -1)
  {
    swift_once();
  }

  v10 = qword_280D1AC60;
  v21 = objc_opt_self();
  v22 = v10;
  result = [v21 systemRedColor];
LABEL_17:
  *a2 = v10;
  *(a2 + 8) = result;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;
  *(a2 + 32) = v9;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  return result;
}

void sub_21DB0676C(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Reminder.Override(0);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      sub_21D1055C4(v8, v6, type metadata accessor for TTRRemindersListViewModel.Reminder.Override);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          v16 = *v6;
          if (EnumCaseMultiPayload == 5)
          {
            v17 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 84);
          }

          else
          {
            v17 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 88);
          }

          goto LABEL_24;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v10 = *v6;
          v11 = *(v6 + 1);
          v12 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 36);
        }

        else
        {
          if (EnumCaseMultiPayload != 8)
          {
            v22 = *v6;
            v23 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 92);
            *v23 = v22;
            *(v23 + 8) = 0;
            goto LABEL_5;
          }

          v10 = *v6;
          v11 = *(v6 + 1);
          v12 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 40);
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v24 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
            sub_21D0F02F4(v6, v1 + *(v24 + 44), &unk_27CE5F2B0);
          }

          else
          {
            v15 = *v6;
            *(v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 32)) = v15;
          }

          goto LABEL_5;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v18 = *v6;
          v19 = *(v6 + 1);
          v20 = v6[16];
          v21 = v1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 124);

          *v21 = v18;
          *(v21 + 8) = v19;
          *(v21 + 16) = v20;
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 3)
        {
          v16 = *v6;
          v17 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 80);
LABEL_24:

          *(v1 + v17) = v16;
          goto LABEL_5;
        }

        v10 = *v6;
        v11 = *(v6 + 1);
        v12 = *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 120);
      }

      v13 = (v1 + v12);

      *v13 = v10;
      v13[1] = v11;
LABEL_5:
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

uint64_t TTRRemindersListViewModel.Reminder.init(_:overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v91 = v5[7];
  v6 = (a3 + v5[9]);
  v7 = (a3 + v5[10]);
  v8 = v5[11];
  v95 = v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v93 = (a3 + v5[12]);
  v10 = a3 + v5[13];
  *(v10 + 48) = 0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  v97 = v5[15];
  v98 = v5[16];
  v101 = v5[24];
  v99 = v5[17];
  v100 = a3 + v5[23];
  *(a3 + v101) = 2;
  v102 = (a3 + v5[30]);
  v104 = a3 + v5[31];
  *v104 = 0;
  *(v104 + 8) = 0;
  *(v104 + 16) = 0;
  v106 = (a3 + v5[32]);
  *v106 = 0;
  v106[1] = 0;
  v106[2] = 0;
  v11 = a3 + v5[34];
  sub_21D639910(v110);
  v12 = v110[13];
  *(v11 + 192) = v110[12];
  *(v11 + 208) = v12;
  *(v11 + 224) = v111;
  v13 = v110[9];
  *(v11 + 128) = v110[8];
  *(v11 + 144) = v13;
  v14 = v110[11];
  *(v11 + 160) = v110[10];
  *(v11 + 176) = v14;
  v15 = v110[5];
  *(v11 + 64) = v110[4];
  *(v11 + 80) = v15;
  v16 = v110[7];
  *(v11 + 96) = v110[6];
  *(v11 + 112) = v16;
  v17 = v110[1];
  *v11 = v110[0];
  *(v11 + 16) = v17;
  v18 = v110[3];
  *(v11 + 32) = v110[2];
  *(v11 + 48) = v18;
  v105 = (a3 + v5[37]);
  *v105 = xmmword_21DC19C40;
  v105[2] = 0;
  v105[3] = 0;
  v108 = (a3 + v5[38]);
  *v108 = 0;
  v108[1] = 0;
  v108[2] = 0;
  v19 = (a3 + v5[39]);
  *v19 = 0;
  v19[1] = 0;
  *(a3 + v5[40]) = 2;
  *(a3 + v5[41]) = 1;
  *(a3 + v5[42]) = 0;
  sub_21D1055C4(a1, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  v20 = v5[5];
  v21 = *(a1 + v20);
  *(a3 + v20) = v21;
  v22 = v5[6];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 1);
  v25 = *(a1 + v22 + 2);
  v26 = *(a1 + v22 + 8);
  v27 = *(a1 + v22 + 16);
  v28 = *(a1 + v22 + 24);
  v29 = *(a1 + v22 + 25);
  v30 = a3 + v22;
  *v30 = v23;
  *(v30 + 1) = v24;
  *(v30 + 2) = v25;
  *(v30 + 8) = v26;
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;
  *(v30 + 25) = v29;
  v31 = *(a1 + v5[7]);
  *(a3 + v91) = v31;
  *(a3 + v5[8]) = *(a1 + v5[8]);
  v32 = (a1 + v5[9]);
  v33 = v32[1];
  *v6 = *v32;
  v6[1] = v33;
  v34 = (a1 + v5[10]);
  v35 = v34[1];
  *v7 = *v34;
  v7[1] = v35;
  v36 = v5[11];
  sub_21DBF8E0C();
  v37 = v21;
  sub_21DBF8E0C();
  v38 = v31;
  sub_21DBF8E0C();
  sub_21DB130E8(a1 + v36, a3 + v95);
  v39 = (a1 + v5[12]);
  v40 = v39[1];
  *v93 = *v39;
  v93[1] = v40;
  v41 = a1 + v5[13];
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 24);
  v88 = *(v41 + 16);
  v89 = *v41;
  v46 = *(v41 + 32);
  v45 = *(v41 + 40);
  v94 = *(v10 + 8);
  v96 = *v10;
  v90 = *(v10 + 24);
  v92 = *(v10 + 16);
  LOBYTE(v31) = *(v41 + 48);
  sub_21DBF8E0C();
  sub_21DB159EC(v42, v43, v88, v44);
  sub_21D4B94BC(v96, v94, v92, v90);
  *v10 = v89;
  *(v10 + 8) = v43;
  *(v10 + 16) = v88;
  *(v10 + 24) = v44;
  *(v10 + 32) = v46;
  *(v10 + 40) = v45;
  *(v10 + 48) = v31;
  *(a3 + v5[14]) = *(a1 + v5[14]);
  v47 = *(a1 + v5[15]);
  *(a3 + v97) = v47;
  *(a3 + v98) = *(a1 + v5[16]);
  *(a3 + v99) = *(a1 + v5[17]);
  *(a3 + v5[18]) = *(a1 + v5[18]);
  *(a3 + v5[19]) = *(a1 + v5[19]);
  v48 = v5[20];
  v49 = *(a1 + v48);
  *(a3 + v48) = v49;
  v50 = v5[21];
  v51 = *(a1 + v50);
  *(a3 + v50) = v51;
  v52 = v5[22];
  v53 = *(a1 + v52);
  *(a3 + v52) = v53;
  v54 = a1 + v5[23];
  v55 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  *v100 = v55;
  *(v100 + 8) = v54;
  *(a3 + v101) = *(a1 + v5[24]);
  *(a3 + v5[25]) = *(a1 + v5[25]);
  *(a3 + v5[26]) = *(a1 + v5[26]);
  *(a3 + v5[27]) = *(a1 + v5[27]);
  *(a3 + v5[28]) = *(a1 + v5[28]);
  *(a3 + v5[29]) = *(a1 + v5[29]);
  v56 = (a1 + v5[30]);
  v57 = v56[1];
  *v102 = *v56;
  v102[1] = v57;
  v58 = a1 + v5[31];
  v59 = *(v58 + 8);
  v103 = *v58;
  LOBYTE(v101) = *(v58 + 16);
  v60 = v47;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v61 = v49;
  v62 = v51;
  v63 = v53;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  *v104 = v103;
  *(v104 + 8) = v59;
  *(v104 + 16) = v101;
  v64 = (a1 + v5[32]);
  v65 = *v64;
  v66 = v64[1];
  v67 = v64[2];
  v69 = *v106;
  v68 = v106[1];
  v70 = v106[2];
  sub_21D157724(*v64, v66, v67);
  sub_21D1576C8(v69, v68, v70);
  *v106 = v65;
  v106[1] = v66;
  v106[2] = v67;
  *(a3 + v5[33]) = *(a1 + v5[33]);
  v71 = v5[35];
  v72 = *(a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = *(a1 + v71 + 16);
  v75 = a3 + v71;
  *v75 = v72;
  *(v75 + 8) = v73;
  *(v75 + 16) = v74;
  *(a3 + v5[36]) = *(a1 + v5[36]);
  v76 = (a1 + v5[37]);
  v77 = *v76;
  v78 = v76[1];
  v80 = v76[2];
  v79 = v76[3];
  v81 = v105[1];
  v107 = *v105;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DB15A90(v77, v78);
  sub_21DB159C8(v107, v81);
  *v105 = v77;
  v105[1] = v78;
  v105[2] = v80;
  v105[3] = v79;
  v82 = a1 + v5[38];
  v83 = *v82;
  v84 = *(v82 + 8);
  v85 = *(v82 + 16);
  v86 = *v108;
  sub_21DB15A4C(*v82);
  sub_21D6388A4(v86);
  *v108 = v83;
  v108[1] = v84;
  v108[2] = v85;
  *(a3 + v5[43]) = *(a1 + v5[43]);
  *(a3 + v5[45]) = *(a1 + v5[45]);
  sub_21DB0676C(a2);

  return sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.Reminder);
}

id sub_21DB070A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v7 setDoesRelativeDateFormatting_];
  [v7 setDateStyle_];
  result = [v7 setTimeStyle_];
  *a4 = v7;
  return result;
}

id static TTRRemindersListViewModel.Reminder.reminderDateFormatter(dateHidden:isAllDay:)(char a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      if (qword_27CE57140 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CE66818;
    }

    else
    {
      if (qword_280D14230 != -1)
      {
        swift_once();
      }

      v2 = &qword_280D14238;
    }
  }

  else if (a2)
  {
    if (qword_27CE57138 != -1)
    {
      swift_once();
    }

    v2 = &qword_27CE66810;
  }

  else
  {
    if (qword_280D194D8 != -1)
    {
      swift_once();
    }

    v2 = &qword_280D194E0;
  }

  v3 = *v2;

  return v3;
}

id static TTRRemindersListViewModel.Reminder.accessibilitySpeakableReminderDateFormatter(dateHidden:isAllDay:)(char a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      if (qword_27CE57140 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CE66818;
    }

    else
    {
      if (qword_280D14230 != -1)
      {
        swift_once();
      }

      v2 = &qword_280D14238;
    }
  }

  else if (a2)
  {
    if (qword_27CE57158 != -1)
    {
      swift_once();
    }

    v2 = &qword_27CE66828;
  }

  else
  {
    if (qword_280D14220 != -1)
    {
      swift_once();
    }

    v2 = &qword_280D14228;
  }

  v3 = *v2;

  return v3;
}

double static TTRRemindersListViewModel.Reminder.displayDateWithTimeZoneString(_:currentTimeZone:dateHidden:dateFormatter:accessibilitySpeakableDateFormatter:)@<D0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_21DB13AA8(a1, a2, a3, a4, a5, v10);
  v7 = v11;
  result = *v10;
  v9 = v10[1];
  *a6 = v10[0];
  *(a6 + 16) = v9;
  *(a6 + 32) = v7;
  return result;
}

uint64_t static TTRRemindersListViewModel.Reminder.completionDateString(from:completionHidden:forAccessibility:)(void *a1, char a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return 0;
  }

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (((*(v14 + 64))(v13, v14) & 1) == 0)
  {
    return 0;
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 72))(v15, v16);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE58D68);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a3)
  {
    if (qword_27CE57160 != -1)
    {
      swift_once();
    }

    v18 = &qword_27CE66830;
  }

  else
  {
    if (qword_27CE57148 != -1)
    {
      swift_once();
    }

    v18 = &qword_27CE66820;
  }

  v19 = *v18;
  v20 = sub_21DBF55BC();
  v21 = [v19 stringFromDate_];

  v22 = sub_21DBFA16C();
  (*(v10 + 8))(v12, v9);
  return v22;
}

id static TTRRemindersListViewModel.makeListSharingInfo(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 isShared])
  {
    if ([a1 isShared])
    {
      v4 = a1;
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }
  }

  else if ([a1 sharingStatus] == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if ([a1 isShared])
  {
    v6 = [a1 account];
    v7 = [v6 accountTypeHost];

    v8 = [v7 isCalDav];
  }

  else
  {
    v8 = 0;
  }

  result = [a1 canBeShared];
  *a2 = result;
  *(a2 + 1) = v8;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21DB07790()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v8 - v4);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v6 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v5, v2);
  sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return v6 & 1;
}

uint64_t TTRRemindersListViewModel.Item.hash(into:)()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  TTRRemindersListViewModel.ItemID.hash(into:)();
  return sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
}

uint64_t TTRRemindersListViewModel.Item.hashValue.getter()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  TTRRemindersListViewModel.ItemID.hash(into:)();
  sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21DBFC82C();
}

uint64_t sub_21DB079CC()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  TTRRemindersListViewModel.ItemID.hash(into:)();
  sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21DBFC82C();
}

uint64_t sub_21DB07A78()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  TTRRemindersListViewModel.ItemID.hash(into:)();
  return sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
}

uint64_t sub_21DB07B18()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC7DC();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  TTRRemindersListViewModel.ItemID.hash(into:)();
  sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return sub_21DBFC82C();
}

uint64_t TTRRemindersListViewModel.Item.debugDescription.getter()
{
  v0 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v0 - 8);
  v80 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TTRTemplatePublicLinkData(0);
  MEMORY[0x28223BE20](v78);
  v81 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v76 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v76 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  v20 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = (&v76 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1055C4(v85, v34, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v80 = v19;
    v81 = v16;
    v40 = v28;
    v85 = v13;
    v42 = v83;
    v41 = v84;
    v43 = v82;
    if (EnumCaseMultiPayload > 1)
    {
      v44 = v20;
      if (EnumCaseMultiPayload == 2)
      {
        v52 = v40;
        sub_21DAF98D8(v34, v40, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v88 = 0x7265646E696D6572;
        v89 = 0xE900000000000028;
        v53 = [*v52 description];
        v54 = sub_21DBFA16C();
        v56 = v55;

        v86 = v54;
        v87 = v56;
        v57 = v76;
        sub_21D0D3954(v52 + *(v44 + 20), v76, &unk_27CE5CD70);
        if ((*(v43 + 48))(v57, 1, v42) == 1)
        {
          sub_21D0CF7E0(v57, &unk_27CE5CD70);
        }

        else
        {
          v68 = v57;
          v69 = v80;
          sub_21DAF98D8(v68, v80, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v70 = TTRRemindersListViewModel.SectionID.description.getter();
          MEMORY[0x223D42AA0](v70);

          sub_21D107038(v69, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v54 = v86;
          v56 = v87;
        }

        MEMORY[0x223D42AA0](v54, v56);

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        v38 = v88;
        v66 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        v67 = v52;
      }

      else
      {
        v45 = v82;
        if (EnumCaseMultiPayload == 3)
        {
          v46 = v34;
          v47 = v25;
          sub_21DAF98D8(v46, v25, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v88 = 0;
          v89 = 0xE000000000000000;
          sub_21DBFBEEC();

          v88 = 0xD000000000000014;
          v89 = 0x800000021DC715E0;
          v48 = [*v25 description];
          v49 = sub_21DBFA16C();
          v51 = v50;

          v86 = v49;
          v87 = v51;
          sub_21D0D3954(v25 + *(v44 + 20), v41, &unk_27CE5CD70);
          if ((*(v45 + 48))(v41, 1, v42) == 1)
          {
            sub_21D0CF7E0(v41, &unk_27CE5CD70);
          }

          else
          {
            v71 = v81;
            sub_21DAF98D8(v41, v81, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v72 = TTRRemindersListViewModel.SectionID.description.getter();
            MEMORY[0x223D42AA0](v72);

            sub_21D107038(v71, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v49 = v86;
            v51 = v87;
          }

          MEMORY[0x223D42AA0](v49, v51);
        }

        else
        {
          v59 = v34;
          v47 = v22;
          sub_21DAF98D8(v59, v22, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v88 = 0;
          v89 = 0xE000000000000000;
          sub_21DBFBEEC();

          v88 = 0xD000000000000014;
          v89 = 0x800000021DC715C0;
          v60 = [*v22 description];
          v61 = sub_21DBFA16C();
          v63 = v62;

          v86 = v61;
          v87 = v63;
          v64 = v79;
          sub_21D0D3954(v47 + *(v44 + 20), v79, &unk_27CE5CD70);
          if ((*(v45 + 48))(v64, 1, v42) == 1)
          {
            sub_21D0CF7E0(v64, &unk_27CE5CD70);
          }

          else
          {
            v73 = v85;
            sub_21DAF98D8(v64, v85, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v74 = TTRRemindersListViewModel.SectionID.description.getter();
            MEMORY[0x223D42AA0](v74);

            sub_21D107038(v73, type metadata accessor for TTRRemindersListViewModel.SectionID);
            v61 = v86;
            v63 = v87;
          }

          MEMORY[0x223D42AA0](v61, v63);
        }

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        v38 = v88;
        v66 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        v67 = v47;
      }

      goto LABEL_34;
    }

    v36 = v31;
    if (EnumCaseMultiPayload)
    {
      sub_21DAF98D8(v34, v31, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v88 = 0x286E6F6974636573;
      v89 = 0xE800000000000000;
    }

    else
    {
      sub_21DAF98D8(v34, v31, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_21DBFBEEC();

      v88 = 0xD000000000000012;
      v89 = 0x800000021DC77DC0;
    }

    v65 = TTRRemindersListViewModel.SectionID.description.getter();
    MEMORY[0x223D42AA0](v65);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v38 = v88;
    v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return 0xD000000000000019;
      }
    }

    v36 = v80;
    sub_21DAF98D8(v34, v80, type metadata accessor for TTRRemindersListTip);
    v88 = 678455668;
    v89 = 0xE400000000000000;
    v58 = TTRRemindersListTip.description.getter();
    MEMORY[0x223D42AA0](v58);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v38 = v88;
    v39 = type metadata accessor for TTRRemindersListTip;
LABEL_25:
    v66 = v39;
    v67 = v36;
LABEL_34:
    sub_21D107038(v67, v66);
    return v38;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v36 = v77;
      sub_21DAF98D8(v34, v77, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
      v88 = 0x7367617468736168;
      v89 = 0xE900000000000028;
      v37 = TTRRemindersListViewModel.HashtagsState.description.getter();
      MEMORY[0x223D42AA0](v37);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v38 = v88;
      v39 = type metadata accessor for TTRRemindersListViewModel.HashtagsState;
    }

    else
    {
      v36 = v81;
      sub_21DAF98D8(v34, v81, type metadata accessor for TTRTemplatePublicLinkData);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0x6574616C706D6574, 0xEF28737574617453);
      sub_21DBFC14C();
      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v38 = v88;
      v39 = type metadata accessor for TTRTemplatePublicLinkData;
    }

    goto LABEL_25;
  }

  sub_21D107038(v34, type metadata accessor for TTRRemindersListViewModel.Item);
  return 0x6574656C706D6F63;
}

id TTRRemindersListViewModel.Item.objectIDForDebugMenuCopying.getter()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v10 == 2)
    {
      return *v8;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_21DAF98D8(v8, v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v13 = *v5;
      sub_21D107038(v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      return v13;
    }

    sub_21DAF98D8(v8, v2, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v11 = swift_getEnumCaseMultiPayload();
    result = 0;
    if (v11 > 4)
    {
      if (v11 > 7)
      {
        return *v2;
      }

      if (v11 == 5 || v11 == 6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v11 > 1)
      {
LABEL_12:
        sub_21D107038(v2, type metadata accessor for TTRRemindersListViewModel.SectionID);
        return 0;
      }

      if (v11)
      {
        return *v2;
      }
    }
  }

  return result;
}

uint64_t TTRRemindersListViewModel.ReminderID.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v16 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*v0 description];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v16[0] = v10;
  v16[1] = v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  sub_21D0D3954(v0 + *(v13 + 20), v3, &unk_27CE5CD70);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &unk_27CE5CD70);
  }

  else
  {
    sub_21DAF98D8(v3, v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v14 = TTRRemindersListViewModel.SectionID.description.getter();
    MEMORY[0x223D42AA0](v14);

    sub_21D107038(v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
    return v16[0];
  }

  return v10;
}

unint64_t sub_21DB08BB4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x706D6F4365746164;
    v6 = 0x6C6E6F6974636573;
    if (a1 != 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x68746E6F6DLL;
    if (a1 != 5)
    {
      v7 = 1918985593;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64656D616ELL;
    v2 = 0xD000000000000010;
    v3 = 1702125924;
    if (a1 != 3)
    {
      v3 = 7954788;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x44497463656A626FLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21DB08D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21DB34118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21DB08D34(uint64_t a1)
{
  v2 = sub_21DB1616C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DB08D70(uint64_t a1)
{
  v2 = sub_21DB1616C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRRemindersListViewModel.SectionID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = v80 - v4;
  v91 = sub_21DBF509C();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = v80 - v11;
  MEMORY[0x28223BE20](v12);
  v94 = v80 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = v80 - v15;
  v16 = sub_21DBF563C();
  v95 = *(v16 - 8);
  v96 = v16;
  MEMORY[0x28223BE20](v16);
  v85 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v90 = v80 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v80 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66858);
  v99 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v80 - v27;
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v29);
  v31 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_21DB1616C();
  v33 = v100;
  sub_21DBFC87C();
  if (!v33)
  {
    v83 = v22;
    v84 = v25;
    v34 = v98;
    v100 = v31;
    LOBYTE(v102) = 0;
    v35 = sub_21DBFC46C();
    v36 = v28;
    v38 = v37;
    if (v37)
    {
      v39 = v35;
      sub_21DBF8E0C();
      v40._countAndFlagsBits = v39;
      v40._object = v38;
      TTRRemindersListViewModel.SectionID.NamedID.init(rawValue:)(v40);
      v41 = v102;
      if (v102 == 16)
      {
        v42 = objc_opt_self();
        v102 = 0;
        v103 = 0xE000000000000000;
        sub_21DBFBEEC();

        v102 = 0xD00000000000001ALL;
        v103 = 0x800000021DC77DE0;
        MEMORY[0x223D42AA0](v39, v38);

        MEMORY[0x223D42AA0](39, 0xE100000000000000);
        v43 = sub_21DBFA12C();

        [v42 internalErrorWithDebugDescription_];

        swift_willThrow();
        (*(v99 + 8))(v36, v26);
        return __swift_destroy_boxed_opaque_existential_0(v101);
      }

      (*(v99 + 8))(v36, v26);

      v46 = v100;
      *v100 = v41;
      goto LABEL_7;
    }

    v44 = sub_21DBF634C();
    v104 = 1;
    v45 = sub_21DB15960(&qword_280D0C810, MEMORY[0x277D44FB0]);
    sub_21DBFC49C();
    v82 = v45;
    v48 = v102;
    if (v102)
    {
      (*(v99 + 8))(v36, v26);
      v46 = v100;
      *v100 = v48;
    }

    else
    {
      v102 = 3;
      sub_21DB15960(&qword_280D17198, MEMORY[0x277CC9578]);
      v50 = v96;
      sub_21DBFC49C();
      v80[1] = v44;
      v51 = v95;
      v52 = (v95 + 48);
      v81 = *(v95 + 48);
      if (v81(v34, 1, v50) == 1)
      {
        v84 = v52;
        sub_21D0CF7E0(v34, &qword_27CE58D68);
        LOBYTE(v102) = 4;
        v53 = v94;
        sub_21DBFC49C();
        v98 = 0;
        v56 = v81(v53, 1, v50);
        v57 = v53;
        v58 = v99;
        if (v56 != 1)
        {
          (*(v99 + 8))(v36, v26);
          v61 = *(v95 + 32);
          v62 = v83;
          v61(v83, v57, v50);
          v46 = v100;
          v61(v100, v62, v50);
          v47 = v97;
          goto LABEL_11;
        }

        sub_21D0CF7E0(v57, &qword_27CE58D68);
        LOBYTE(v102) = 5;
        v59 = v93;
        v60 = v98;
        sub_21DBFC49C();
        if (v60)
        {
          (*(v58 + 8))(v36, v26);
          return __swift_destroy_boxed_opaque_existential_0(v101);
        }

        if (v81(v59, 1, v50) != 1)
        {
          (*(v58 + 8))(v36, v26);
          v63 = v96;
          v64 = *(v95 + 32);
          v65 = v90;
          v64(v90, v59, v96);
          v46 = v100;
          v64(v100, v65, v63);
          v47 = v97;
          goto LABEL_11;
        }

        sub_21D0CF7E0(v59, &qword_27CE58D68);
        LOBYTE(v102) = 7;
        sub_21DB15960(&qword_280D171E8, MEMORY[0x277CC8990]);
        v98 = v26;
        sub_21DBFC49C();
        if ((*(v89 + 48))(v92, 1, v91) == 1)
        {
          sub_21D0CF7E0(v92, &qword_27CE58D60);
          LOBYTE(v102) = 6;
          sub_21DBFC49C();
          if (v81(v88, 1, v96) == 1)
          {
            sub_21D0CF7E0(v88, &qword_27CE58D68);
            v104 = 9;
            sub_21DBFC49C();
            v78 = v102;
            if (v102)
            {
              (*(v99 + 8))(v36, v98);
              v46 = v100;
              *v100 = v78;
            }

            else
            {
              v104 = 8;
              v79 = v98;
              sub_21DBFC4EC();
              (*(v99 + 8))(v36, v79);
              v46 = v100;
              *v100 = v102;
            }

            goto LABEL_10;
          }

          (*(v99 + 8))(v36, v98);
          v75 = v96;
          v76 = *(v95 + 32);
          v77 = v85;
          v76(v85, v88, v96);
          v46 = v100;
          v76(v100, v77, v75);
        }

        else
        {
          v66 = v89;
          v67 = v86;
          v68 = v91;
          (*(v89 + 32))(v86, v92, v91);
          v69 = v87;
          (*(v66 + 16))(v87, v67, v68);
          v70 = sub_21DBF4F2C();
          LOBYTE(v102) = v71 & 1;
          v96 = sub_21DBF4F7C();
          LODWORD(v95) = v72;
          v73 = *(v66 + 8);
          v73(v69, v68);
          v73(v67, v68);
          (*(v99 + 8))(v36, v98);
          v74 = v102;
          v46 = v100;
          *v100 = v70;
          *(v46 + 8) = v74;
          *(v46 + 16) = v96;
          *(v46 + 24) = v95 & 1;
        }

LABEL_7:
        v47 = v97;
LABEL_11:
        swift_storeEnumTagMultiPayload();
        sub_21DAF98D8(v46, v47, type metadata accessor for TTRRemindersListViewModel.SectionID);
        return __swift_destroy_boxed_opaque_existential_0(v101);
      }

      (*(v99 + 8))(v36, v26);
      v54 = *(v51 + 32);
      v55 = v84;
      v54(v84, v34, v50);
      v46 = v100;
      v54(v100, v55, v50);
    }

LABEL_10:
    v47 = v97;
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0(v101);
}

uint64_t TTRRemindersListViewModel.SectionID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v57 - v5;
  v6 = sub_21DBF509C();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  MEMORY[0x28223BE20](v8);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v57 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66860);
  v26 = *(v25 - 8);
  v69 = v25;
  v70 = v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v57 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB1616C();
  v68 = v28;
  sub_21DBFC88C();
  sub_21D1055C4(v67, v24, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v30 = v66;
        if (EnumCaseMultiPayload == 3)
        {
          v31 = v65;
          (*(v66 + 32))(v18, v24, v65);
          LOBYTE(v72) = 3;
          sub_21DB15960(&qword_27CE65138, MEMORY[0x277CC9578]);
          v33 = v68;
          v32 = v69;
          sub_21DBFC56C();
          v34 = *(v30 + 8);
          v35 = v18;
LABEL_22:
          v34(v35, v31);
          goto LABEL_23;
        }

        v31 = v65;
        (*(v66 + 32))(v15, v24, v65);
        v54 = 4;
LABEL_21:
        LOBYTE(v72) = v54;
        sub_21DB15960(&qword_27CE65138, MEMORY[0x277CC9578]);
        v33 = v68;
        v32 = v69;
        sub_21DBFC56C();
        v34 = *(v30 + 8);
        v35 = v15;
        goto LABEL_22;
      }

      v49 = v65;
      v48 = v66;
      (*(v66 + 32))(v21, v24, v65);
      LOBYTE(v72) = 2;
      sub_21DB15960(&qword_27CE65138, MEMORY[0x277CC9578]);
      v33 = v68;
      v32 = v69;
      sub_21DBFC56C();
      (*(v48 + 8))(v21, v49);
LABEL_23:
      v46 = *(v70 + 8);
      v47 = v33;
      return v46(v47, v32);
    }

    if (!EnumCaseMultiPayload)
    {
      LOBYTE(v72) = *v24;
      TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
      v71 = 0;
      v40 = v68;
      v39 = v69;
      sub_21DBFC51C();
      (*(v70 + 8))(v40, v39);
    }

    v36 = *v24;
    v37 = sub_21DBFADFC();
    v72 = v37;
    v38 = 1;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v50 = sub_21DBF5A2C();
      (*(*(v50 - 8) + 56))(v60, 1, 1, v50);
      v51 = sub_21DBF5C4C();
      (*(*(v51 - 8) + 56))(v61, 1, 1, v51);
      v52 = v62;
      sub_21DBF504C();
      LOBYTE(v72) = 7;
      sub_21DB15960(&qword_27CE66868, MEMORY[0x277CC8990]);
      v33 = v68;
      v32 = v69;
      v53 = v64;
      sub_21DBFC56C();
      (*(v63 + 8))(v52, v53);
      goto LABEL_23;
    }

    v36 = *v24;
    if (EnumCaseMultiPayload == 8)
    {
      v37 = sub_21DBFADFC();
      v72 = v37;
      v38 = 8;
    }

    else
    {
      v37 = sub_21DBFADFC();
      v72 = v37;
      v38 = 9;
    }

LABEL_19:
    v71 = v38;
    sub_21DBF634C();
    sub_21DB15960(&qword_280D0C818, MEMORY[0x277D44FB0]);
    v56 = v68;
    v55 = v69;
    sub_21DBFC56C();

    return (*(v70 + 8))(v56, v55);
  }

  if (EnumCaseMultiPayload != 5)
  {
    v31 = v65;
    v30 = v66;
    v15 = v59;
    (*(v66 + 32))(v59, v24, v65);
    v54 = 6;
    goto LABEL_21;
  }

  v43 = v65;
  v42 = v66;
  v44 = v58;
  (*(v66 + 32))(v58, v24, v65);
  LOBYTE(v72) = 5;
  sub_21DB15960(&qword_27CE65138, MEMORY[0x277CC9578]);
  v45 = v68;
  v32 = v69;
  sub_21DBFC56C();
  (*(v42 + 8))(v44, v43);
  v46 = *(v70 + 8);
  v47 = v45;
  return v46(v47, v32);
}

unint64_t TTRRemindersListViewModel.SectionID.description.getter()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1055C4(v1, v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*(v3 + 32))(v5, v8, v2);
        v12 = 0x2068746E6F6DLL;
        v13 = 0xE600000000000000;
      }

      else
      {
        (*(v3 + 32))(v5, v8, v2);
        v12 = 0x2072616579;
        v13 = 0xE500000000000000;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v14 = *v8;
      v15 = v8[8];
      v16 = *(v8 + 2);
      v17 = v8[24];
      v28 = 0;
      v29 = 0xE000000000000000;
      MEMORY[0x223D42AA0](0x6559646E41617265, 0xEB00000000207261);
      v26[0] = v14;
      LOBYTE(v26[1]) = v15;
      v26[2] = v16;
      v27 = v17;
      sub_21DBFC14C();
      return v28;
    }

    else
    {
      v11 = *v8;
      if (EnumCaseMultiPayload == 8)
      {
        strcpy(v26, "sectionless ");
        BYTE5(v26[1]) = 0;
        HIWORD(v26[1]) = -5120;
      }

      else
      {
        v26[0] = 0;
        v26[1] = 0xE000000000000000;
        sub_21DBFBEEC();

        v26[0] = 0xD00000000000001ALL;
        v26[1] = 0x800000021DC77E00;
      }

      v18 = [v11 description];
      v19 = sub_21DBFA16C();
      v21 = v20;

      MEMORY[0x223D42AA0](v19, v21);

      return v26[0];
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        (*(v3 + 32))(v5, v8, v2);
        v10 = sub_21DBF555C();
LABEL_21:
        (*(v3 + 8))(v5, v2);
        return v10;
      }

      (*(v3 + 32))(v5, v8, v2);
      v12 = 544825700;
      v13 = 0xE400000000000000;
LABEL_20:
      v26[0] = v12;
      v26[1] = v13;
      v24 = sub_21DBF555C();
      MEMORY[0x223D42AA0](v24);

      v10 = v26[0];
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload)
    {
      v22 = *v8;
      v23 = [*v8 description];
      v10 = sub_21DBFA16C();
    }

    else
    {
      LOBYTE(v26[0]) = *v8;
      return TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
    }
  }

  return v10;
}

RemindersUICore::TTRRemindersListViewModel::ReminderID::CodingKeys_optional __swiftcall TTRRemindersListViewModel.ReminderID.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x44497463656A626FLL && stringValue._object == 0xE800000000000000;
  if (v5 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x444970756F7267 && object == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TTRRemindersListViewModel.ReminderID.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x444970756F7267;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_21DB0A9A8()
{
  if (*v0)
  {
    return 0x444970756F7267;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_21DB0A9E8(uint64_t a1)
{
  v2 = sub_21DB161C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DB0AA24(uint64_t a1)
{
  v2 = sub_21DB161C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRRemindersListViewModel.ReminderID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66870);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB161C0();
  sub_21DBFC87C();
  if (!v2)
  {
    v19 = v10;
    v20 = v12;
    v13 = v22;
    sub_21DBF634C();
    v25 = 0;
    sub_21DB15960(&qword_280D0C810, MEMORY[0x277D44FB0]);
    v14 = v23;
    sub_21DBFC4EC();
    v15 = v26;
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = 1;
    sub_21DB15960(&qword_280D140F8, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC49C();
    (*(v13 + 8))(v9, v14);
    v16 = v19;
    v17 = v20;
    *v20 = v15;
    sub_21D0D523C(v6, v17 + *(v16 + 20), &unk_27CE5CD70);
    sub_21DAF98D8(v17, v21, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TTRRemindersListViewModel.ReminderID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66878);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB161C0();
  sub_21DBFC88C();
  v7 = sub_21DBFADFC();
  v10 = v7;
  v9[7] = 0;
  sub_21DBF634C();
  sub_21DB15960(&qword_280D0C818, MEMORY[0x277D44FB0]);
  sub_21DBFC56C();

  if (!v1)
  {
    type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
    v9[6] = 1;
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    sub_21DB15960(&qword_280D14100, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC50C();
  }

  return (*(v4 + 8))(v6, v3);
}

RemindersUICore::TTRRemindersListViewModel::ItemID::CodingKeys_optional __swiftcall TTRRemindersListViewModel.ItemID.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x496E6F6974636573 && stringValue._object == 0xE900000000000044;
  if (v5 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7265646E696D6572 && object == 0xEA00000000004449 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x44497463656A626FLL && object == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x64656D616ELL && object == 0xE500000000000000)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TTRRemindersListViewModel.ItemID.CodingKeys.stringValue.getter()
{
  v1 = 0x496E6F6974636573;
  v2 = 0x44497463656A626FLL;
  if (*v0 != 2)
  {
    v2 = 0x64656D616ELL;
  }

  if (*v0)
  {
    v1 = 0x7265646E696D6572;
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

uint64_t sub_21DB0B1E8()
{
  v1 = 0x496E6F6974636573;
  v2 = 0x44497463656A626FLL;
  if (*v0 != 2)
  {
    v2 = 0x64656D616ELL;
  }

  if (*v0)
  {
    v1 = 0x7265646E696D6572;
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

uint64_t sub_21DB0B26C(uint64_t a1)
{
  v2 = sub_21DB16214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DB0B2A8(uint64_t a1)
{
  v2 = sub_21DB16214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRRemindersListViewModel.ItemID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66880);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v37 - v4;
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v37 - v8;
  v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66888);
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB16214();
  v17 = v48;
  sub_21DBFC87C();
  if (!v17)
  {
    v38 = v16;
    v48 = v14;
    v19 = v44;
    v18 = v45;
    LOBYTE(v49) = 0;
    sub_21DB15960(&qword_280D140F8, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v20 = v46;
    sub_21DBFC49C();
    if ((*(v18 + 48))(v20, 1, v47) == 1)
    {
      sub_21D0CF7E0(v20, &unk_27CE5CD70);
      LOBYTE(v49) = 1;
      sub_21DB15960(&qword_280D14978, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v22 = v41;
      v21 = v42;
      sub_21DBFC49C();
      v23 = v19;
      if ((*(v40 + 48))(v21, 1, v22) == 1)
      {
        sub_21D0CF7E0(v21, &qword_27CE66880);
        sub_21DBF634C();
        v51 = 2;
        sub_21DB15960(&qword_280D0C810, MEMORY[0x277D44FB0]);
        sub_21DBFC49C();
        v27 = v49;
        if (v49)
        {
          (*(v19 + 8))(v13, v11);
          v24 = v38;
          *v38 = v27;
          v25 = v43;
        }

        else
        {
          v49 = 3;
          v30 = sub_21DBFC4AC();
          v32 = v31;
          sub_21DBF8E0C();
          v33._countAndFlagsBits = v30;
          v33._object = v32;
          TTRRemindersListViewModel.ItemID.NamedID.init(rawValue:)(v33);
          v34 = v49;
          v25 = v43;
          if (v49 == 6)
          {
            v35 = objc_opt_self();
            v49 = 0;
            v50 = 0xE000000000000000;
            sub_21DBFBEEC();

            v49 = 0xD000000000000017;
            v50 = 0x800000021DC77E20;
            MEMORY[0x223D42AA0](v30, v32);

            MEMORY[0x223D42AA0](39, 0xE100000000000000);
            v36 = sub_21DBFA12C();

            [v35 internalErrorWithDebugDescription_];

            swift_willThrow();
            (*(v23 + 8))(v13, v11);
            return __swift_destroy_boxed_opaque_existential_0(a1);
          }

          (*(v23 + 8))(v13, v11);

          v24 = v38;
          *v38 = v34;
        }

        goto LABEL_6;
      }

      (*(v19 + 8))(v13, v11);
      v28 = v39;
      sub_21DAF98D8(v21, v39, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v29 = v28;
      v24 = v38;
      sub_21DAF98D8(v29, v38, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }

    else
    {
      (*(v19 + 8))(v13, v11);
      sub_21DAF98D8(v20, v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v24 = v38;
      sub_21DAF98D8(v10, v38, type metadata accessor for TTRRemindersListViewModel.SectionID);
    }

    v25 = v43;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_21DAF98D8(v24, v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TTRRemindersListViewModel.ItemID.encode(to:)(void *a1)
{
  v2 = v1;
  v23 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66890);
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DB16214();
  sub_21DBFC88C();
  sub_21D1055C4(v2, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *v10;
      v18 = sub_21DBFADFC();
      v26 = v18;
      v29 = 2;
      sub_21DBF634C();
      sub_21DB15960(&qword_280D0C818, MEMORY[0x277D44FB0]);
      v19 = v25;
      sub_21DBFC56C();

      return (*(v24 + 8))(v12, v19);
    }

    else
    {
      v21 = v25;
      v30 = 3;
      sub_21DBFC51C();
      (*(v24 + 8))(v12, v21);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_21DAF98D8(v10, v5, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v28 = 1;
      sub_21DB15960(&qword_280D14980, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v14 = v25;
      sub_21DBFC56C();
      v15 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v16 = v5;
    }

    else
    {
      sub_21DAF98D8(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v27 = 0;
      sub_21DB15960(&qword_280D14100, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v14 = v25;
      sub_21DBFC56C();
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID;
      v16 = v7;
    }

    sub_21D107038(v16, v15);
    return (*(v24 + 8))(v12, v14);
  }
}

uint64_t TTRRemindersListViewModel.ItemID.init(base64EncodedString:)()
{
  v0 = sub_21DBF54EC();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    v3 = objc_opt_self();
    v4 = sub_21DBFA12C();
    [v3 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  else
  {
    sub_21DBF521C();
    swift_allocObject();
    sub_21DBF520C();
    type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    sub_21DB15960(&qword_280D14270, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBF51EC();

    return sub_21D1BAF38(v0, v2);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRRemindersListViewModel.ItemID.base64EncodedString()()
{
  sub_21DBF525C();
  swift_allocObject();
  sub_21DBF524C();
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21DB15960(&qword_280D14278, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v1 = sub_21DBF522C();
  v3 = v2;

  if (!v0)
  {
    v6 = sub_21DBF550C();
    v8 = v7;
    sub_21D17B8A8(v1, v3);
    v4 = v6;
    v5 = v8;
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t TTRRemindersListViewModel.ItemID.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1055C4(v1, v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = *v17;
      v37 = 0x44497463656A626FLL;
      v38 = 0xE900000000000028;
      v22 = [v21 description];
      v23 = sub_21DBFA16C();
      v25 = v24;

      MEMORY[0x223D42AA0](v23, v25);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
    }

    else
    {
      v30 = *v17;
      v37 = 0x2864656D616ELL;
      v38 = 0xE600000000000000;
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v31 = 0x800000021DC43E00;
          v32 = 0xD00000000000001FLL;
        }

        else if (v30 == 4)
        {
          v31 = 0xE700000000000000;
          v32 = 0x6D657449706974;
        }

        else
        {
          v31 = 0x800000021DC43E30;
          v32 = 0xD00000000000001DLL;
        }
      }

      else if (v30)
      {
        if (v30 == 1)
        {
          v31 = 0xEC0000006D657449;
          v32 = 0x7367617468736168;
        }

        else
        {
          v32 = 0xD000000000000012;
          v31 = 0x800000021DC43DE0;
        }
      }

      else
      {
        v31 = 0xED00006D65744964;
        v32 = 0x6574656C706D6F63;
      }

      MEMORY[0x223D42AA0](v32, v31);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
    }

    return v37;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_21DAF98D8(v17, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v37 = 0x7265646E696D6572;
    v38 = 0xEB00000000284449;
    v26 = [*v7 description];
    v27 = sub_21DBFA16C();
    v29 = v28;

    v35 = v27;
    v36 = v29;
    sub_21D0D3954(v7 + *(v5 + 20), v4, &unk_27CE5CD70);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_21D0CF7E0(v4, &unk_27CE5CD70);
    }

    else
    {
      sub_21DAF98D8(v4, v11, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v33 = TTRRemindersListViewModel.SectionID.description.getter();
      MEMORY[0x223D42AA0](v33);

      sub_21D107038(v11, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v27 = v35;
      v29 = v36;
    }

    MEMORY[0x223D42AA0](v27, v29);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v20 = v37;
    sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  else
  {
    sub_21DAF98D8(v17, v14, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v37 = 0x496E6F6974636573;
    v38 = 0xEA00000000002844;
    v19 = TTRRemindersListViewModel.SectionID.description.getter();
    MEMORY[0x223D42AA0](v19);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v20 = v37;
    sub_21D107038(v14, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  return v20;
}

id TTRRemindersListViewModel.SectionHeaderTitle.attributedTitleText(baseAttributes:secondaryTextAttributes:)(uint64_t a1, void (*a2)(void))
{
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  v11 = *(v2 + 64);
  v12 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v30 = v5;
  v31 = v7;
  v29 = v8;
  sub_21D2A7DB4(v6, v5, v7, v8, v10, v9, v11);
  v28 = v4;
  v13 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
  v14 = sub_21DBF9E5C();
  v15 = [v12 initWithString:v13 attributes:v14];

  v16 = v11 >> 6;
  if (v11 >> 6 > 1)
  {
    if (v16 == 2)
    {
      v19 = v6;
      v20 = v5;
      v21 = v31;
      v23 = v10;
      v22 = v29;
      goto LABEL_6;
    }
  }

  else
  {
    if (!v16)
    {
      v17 = *MEMORY[0x277D740C0];
      v18 = TTRListColors.Color.nativeColor.getter();
      [v15 addAttribute:v17 value:v18 range:{0, MEMORY[0x223D42B30](v28, v3)}];

      v19 = v6;
      v20 = v30;
      v21 = v31;
      v22 = v29;
      v23 = v10;
LABEL_6:
      sub_21D179EF0(v19, v20, v21, v22, v23, v9, v11);
      goto LABEL_7;
    }

    if ((v31 & 1) == 0)
    {
      a2();
      v26 = sub_21DBF9E5C();

      [v15 addAttributes:v26 range:{v6, v30}];
    }
  }

LABEL_7:
  v24 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v24;
}

id TTRRemindersListViewModel.SectionHeaderTitle.attributedSubtitleText(baseAttributes:secondaryTextAttributes:)(void (*a1)(void), uint64_t a2, void (*a3)(void))
{
  if ((*(v3 + 64) & 0xC0) != 0x80)
  {
    return 0;
  }

  v13 = *(v3 + 40);
  v14 = *(v3 + 32);
  v5 = *(v3 + 48);
  a1();
  v6 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v7 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
  v8 = sub_21DBF9E5C();

  v9 = [v6 initWithString:v7 attributes:v8];

  if ((v5 & 1) == 0)
  {
    a3();
    v10 = sub_21DBF9E5C();

    [v9 addAttributes:v10 range:{v14, v13}];
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v11;
}

RemindersUICore::TTRRemindersListViewModel::CompletedRemindersState __swiftcall TTRRemindersListViewModel.ListInfo.completedRemindersState(completedRowHasShowHide:)(Swift::Bool completedRowHasShowHide)
{
  v4 = v1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v6 = *(v2 + v5[20]);
  v7 = *(v2 + v5[18]);
  v8 = *(v2 + v5[12]) & completedRowHasShowHide;
  v9 = *(v2 + v5[14]);
  v10 = *(v2 + v5[6]);
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 9) = v8 & 1;
  *(v4 + 10) = v9;
  *(v4 + 16) = v10;

  v11 = v10;
  result.listColor.super.isa = v13;
  result.count = v11;
  result.shown = v12;
  result.canToggleVisibility = BYTE1(v12);
  result.canClear = BYTE2(v12);
  return result;
}

uint64_t TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (result <= 0)
  {
    v3 = 64;
  }

  else
  {
    v3 = 65;
  }

  if (a2)
  {
    v4 = 64;
  }

  else
  {
    v4 = v3;
  }

  *a3 = v4;
  return result;
}

uint64_t TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2)
  {
    v3 = 66;
  }

  else
  {
    v3 = 64;
  }

  if (a2)
  {
    v4 = 67;
  }

  else
  {
    v4 = 65;
  }

  if (result)
  {
    v3 = v4;
  }

  *a3 = v3;
  return result;
}

Swift::String_optional __swiftcall TTRRemindersListViewModel.EmptyListMessagingType.localizedTitle(withTextFormat:)(RemindersUICore::TTRRemindersListViewModel::EmptyListMessagingType::TextFormat withTextFormat)
{
  v2 = *withTextFormat;
  v3 = *v1;
  if (!(v3 >> 6))
  {
    if (v3)
    {
      if (*withTextFormat)
      {
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_12;
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
LABEL_12:
        countAndFlagsBits = sub_21DBF516C();
        goto LABEL_14;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_12;
    }

    swift_once();
    goto LABEL_12;
  }

  if (v3 >> 6 == 1)
  {
    v8[1] = v3 & 0x3F;
    v8[0] = v2;
    v6 = TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.text(withTextFormat:)(v8);
    object = v6._object;
    countAndFlagsBits = v6._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

LABEL_14:
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

NSAttributedString_optional __swiftcall TTRRemindersListViewModel.EmptyListMessagingType.localizedSubtitle(currentLayout:)(RemindersUICore::TTRRemindersListLayout currentLayout)
{
  v2 = *v1;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1 && (v2 & 0x3E) != 0)
    {
      if (*currentLayout)
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v17 = 0x800000021DC4CCF0;
      }

      else
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v17 = 0x800000021DC4CC00;
      }

      sub_21DBF516C();
      v14 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v15 = sub_21DBFA12C();

      v3 = [v14 initWithString_];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    sub_21DBF516C();
    v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v5 = sub_21DBFA12C();
    v3 = [v4 initWithString_];

    v6 = sub_21DBFA12C();

    v7 = sub_21DBFA12C();

    v8 = [v6 rangeOfString_];
    v10 = v9;

    if (v8 != sub_21DBF4B4C())
    {
      v12 = *MEMORY[0x277D740E8];
      v13 = sub_21DBFA12C();
      [v3 addAttribute:v12 value:v13 range:{v8, v10}];
    }
  }

  v16 = v3;
  result.value.super.isa = v16;
  result.is_nil = v11;
  return result;
}

uint64_t TTRRemindersListViewModel.EmptyListMessagingType.imageSystemName.getter()
{
  if ((*v0 & 0x3E) != 0 && (*v0 & 0xC0) == 64)
  {
    return 0x662E746F72726163;
  }

  else
  {
    return 0;
  }
}

double TTRRemindersListViewModel.EmptyListMessagingType.helpAnchor.getter@<D0>(uint64_t a1@<X8>)
{
  if (*v1 >= 0x40u)
  {
    result = 0.0;
    *a1 = xmmword_21DC19C40;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    if (qword_27CE56E10 != -1)
    {
      swift_once();
    }

    v4 = qword_27CE63818;
    v3 = unk_27CE63820;
    sub_21DBF8E0C();
    sub_21D4F432C(0, 0);
    sub_21D8DA944(0, 0);
    *a1 = 0xD000000000000014;
    *(a1 + 8) = 0x800000021DC77F90;
    *(a1 + 16) = v4;
    *(a1 + 24) = v3;
    result = 1.82753616e184;
    *(a1 + 32) = xmmword_21DC3D290;
    *(a1 + 48) = xmmword_21DC3D2A0;
    *(a1 + 64) = 0xD000000000000018;
    *(a1 + 72) = 0x800000021DC6FA20;
  }

  return result;
}

id sub_21DB0D414(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v5 = sub_21DBFA12C();
    v6 = [v4 initWithString_];

    v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v8 = sub_21DBFA12C();
    v9 = [v7 initWithString_];

    [v6 appendAttributedString_];
    v10 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
    [v6 appendAttributedString_];

    return v6;
  }

  else
  {

    return a1;
  }
}

id TTRRemindersListViewModel.HashtagSelectionDescription.attributedPreferredDescription(baseAttributes:emphasizedAttributes:)(void (*a1)(void), uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = v4;
  v9 = sub_21D47A9D8(v8, a1, a2, a3);

  return v9;
}

uint64_t sub_21DB0D59C(void *a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  a2();
  type metadata accessor for Key(0);
  sub_21DB15960(&qword_280D17790, type metadata accessor for Key);
  v5 = sub_21DBF9E5C();

  v6 = [a1 string];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = MEMORY[0x223D42B30](v7, v9);

  [a1 addAttributes:v5 range:{0, v10}];

  if (qword_27CE57130 != -1)
  {
    swift_once();
  }

  v11 = qword_27CE66808;
  v30 = MEMORY[0x277D84F90];
  v12 = [a1 string];
  v13 = sub_21DBFA16C();
  v15 = v14;

  v16 = MEMORY[0x223D42B30](v13, v15);

  v17 = swift_allocObject();
  v17[2] = sub_21D13C354;
  v17[3] = 0;
  v17[4] = &v30;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21D1A6510;
  *(v18 + 24) = v17;
  aBlock[4] = sub_21D24B3B4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_149;
  v19 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v11 inRange:0 options:v16 usingBlock:{0, v19}];
  _Block_release(v19);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v21 = v30;

    v23 = *(v21 + 16);
    if (v23)
    {
      a4(v22);
      v24 = (v21 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v27 = sub_21DBF9E5C();
        [a1 addAttributes:v27 range:{v25, v26}];

        v24 += 2;
        --v23;
      }

      while (v23);
    }
  }

  return result;
}

uint64_t sub_21DB0D920(uint64_t result, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = sub_21DBFBD7C();
  result = v2;
  if (v3 < v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_21DB0D98C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:
    result = sub_21DBF8E0C();
LABEL_8:
    if (a3 >> 62)
    {

      return sub_21DBFC3BC();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    sub_21D0D8CF0(0, &qword_280D177E0);
    sub_21DBF8E0C();
    result = v5;
    do
    {
      v6 = result + 1;
      sub_21DBFBF6C();
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  v89 = v3;
  v90 = v4;
  MEMORY[0x28223BE20](v3);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v79 - v7;
  MEMORY[0x28223BE20](v8);
  v81 = &v79 - v9;
  MEMORY[0x28223BE20](v10);
  v80 = &v79 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = &v79 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v14);
  v85 = (&v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v84 = (&v79 - v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v21);
  v88 = &v79 - v22;
  MEMORY[0x28223BE20](v23);
  v87 = &v79 - v24;
  MEMORY[0x28223BE20](v25);
  v86 = &v79 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v79 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = (&v79 - v34);
  MEMORY[0x28223BE20](v36);
  v38 = &v79 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66978);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v79 - v40;
  v43 = &v79 + *(v42 + 56) - v40;
  sub_21D1055C4(v91, &v79 - v40, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v44 = a2;
  v45 = v43;
  sub_21D1055C4(v44, v43, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v29 = v87;
        sub_21D1055C4(v41, v87, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v61 = v43;
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          goto LABEL_38;
        }

        v47 = v90;
        v48 = *(v90 + 32);
        v49 = v82;
      }

      else
      {
        v29 = v88;
        sub_21D1055C4(v41, v88, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v61 = v43;
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_38;
        }

        v47 = v90;
        v48 = *(v90 + 32);
        v49 = v83;
      }

      v50 = v49;
      v51 = v61;
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload == 7)
    {
      sub_21D1055C4(v41, v20, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v67 = *v20;
      v68 = *(v20 + 2);
      v69 = v20[24];
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v70 = v43[8];
        v71 = v43[24];
        if (v20[8])
        {
          if (!v43[8])
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v67 != *v43)
          {
            v70 = 1;
          }

          if (v70)
          {
            goto LABEL_48;
          }
        }

        if (v69)
        {
          if (v43[24])
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v68 != *(v43 + 2))
          {
            v71 = 1;
          }

          if ((v71 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

LABEL_48:
        sub_21D107038(v41, type metadata accessor for TTRRemindersListViewModel.SectionID);
        goto LABEL_40;
      }

LABEL_39:
      sub_21D0CF7E0(v41, &qword_27CE66978);
LABEL_40:
      v55 = 0;
      return v55 & 1;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v52 = v84;
      sub_21D1055C4(v41, v84, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v53 = *v52;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v74 = v85;
      sub_21D1055C4(v41, v85, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v53 = *v74;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21D1055C4(v41, v32, type metadata accessor for TTRRemindersListViewModel.SectionID);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*(v90 + 8))(v32, v89);
          goto LABEL_39;
        }

        v63 = v89;
        v62 = v90;
        v64 = v79;
        (*(v90 + 32))(v79, v45, v89);
        v55 = sub_21DBF55EC();
        v65 = *(v62 + 8);
        v65(v64, v63);
        v66 = v32;
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_21D1055C4(v41, v29, type metadata accessor for TTRRemindersListViewModel.SectionID);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v47 = v90;
          v48 = *(v90 + 32);
          v49 = v80;
          v50 = v80;
          v51 = v43;
LABEL_36:
          v75 = v89;
          v48(v50, v51, v89);
          v55 = sub_21DBF55EC();
          v76 = *(v47 + 8);
          v76(v49, v75);
          v76(v29, v75);
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      v29 = v86;
      sub_21D1055C4(v41, v86, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v63 = v89;
        v72 = v90;
        v73 = v81;
        (*(v90 + 32))(v81, v43, v89);
        v55 = sub_21DBF55EC();
        v65 = *(v72 + 8);
        v65(v73, v63);
        v66 = v29;
LABEL_28:
        v65(v66, v63);
        goto LABEL_37;
      }

LABEL_38:
      (*(v90 + 8))(v29, v89);
      goto LABEL_39;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_21D1055C4(v41, v38, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (!swift_getEnumCaseMultiPayload())
      {
        v56 = *v43;
        v93 = *v38;
        v92 = v56;
        v57 = TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter();
        v59 = v58;
        if (v57 == TTRRemindersListViewModel.SectionID.NamedID.rawValue.getter() && v59 == v60)
        {

LABEL_50:
          sub_21D107038(v41, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v55 = 1;
          return v55 & 1;
        }

        v78 = sub_21DBFC64C();

        if (v78)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    sub_21D1055C4(v41, v35, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v53 = *v35;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_30:

      goto LABEL_39;
    }
  }

  v54 = *v43;
  sub_21D0D8CF0(0, &qword_280D17680);
  v55 = sub_21DBFB63C();

LABEL_37:
  sub_21D107038(v41, type metadata accessor for TTRRemindersListViewModel.SectionID);
  return v55 & 1;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v15 = *(v11 + 48);
  sub_21D0D3954(a1 + v14, v13, &unk_27CE5CD70);
  sub_21D0D3954(a2 + v14, &v13[v15], &unk_27CE5CD70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE5CD70);
      return 1;
    }

    goto LABEL_7;
  }

  sub_21D0D3954(v13, v10, &unk_27CE5CD70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_7:
    sub_21D0CF7E0(v13, &qword_27CE58388);
    return 0;
  }

  v18 = v21;
  sub_21DAF98D8(&v13[v15], v21, type metadata accessor for TTRRemindersListViewModel.SectionID);
  v19 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v10, v18);
  sub_21D107038(v18, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.SectionID);
  sub_21D0CF7E0(v13, &unk_27CE5CD70);
  return (v19 & 1) != 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v38 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v38 - v21;
  v24 = *(v23 + 56);
  sub_21D1055C4(a1, &v38 - v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D1055C4(a2, &v22[v24], type metadata accessor for TTRRemindersListViewModel.ItemID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21D1055C4(v22, v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v26 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        v27 = v16;
        goto LABEL_14;
      }

      v31 = &v22[v24];
      v32 = v39;
      sub_21DAF98D8(v31, v39, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v30 = _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(v16, v32);
      v33 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      sub_21D107038(v32, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v34 = v16;
    }

    else
    {
      sub_21D1055C4(v22, v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        v26 = type metadata accessor for TTRRemindersListViewModel.SectionID;
        v27 = v19;
LABEL_14:
        sub_21D107038(v27, v26);
        goto LABEL_15;
      }

      v35 = &v22[v24];
      v36 = v38;
      sub_21DAF98D8(v35, v38, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v30 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v19, v36);
      v33 = type metadata accessor for TTRRemindersListViewModel.SectionID;
      sub_21D107038(v36, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v34 = v19;
    }

    sub_21D107038(v34, v33);
LABEL_18:
    sub_21D107038(v22, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return v30 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_21D1055C4(v22, v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v28 = *v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v29 = *&v22[v24];
      sub_21D0D8CF0(0, &qword_280D17680);
      v30 = sub_21DBFB63C();

      goto LABEL_18;
    }
  }

  else
  {
    sub_21D1055C4(v22, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v30 = sub_21D25BF78(*v10, v22[v24]);
      goto LABEL_18;
    }
  }

LABEL_15:
  sub_21D0CF7E0(v22, &qword_27CE58AD0);
  v30 = 0;
  return v30 & 1;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC09CompletedA5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0 || ((*(a1 + 10) ^ *(a2 + 10)) & 1) != 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  return sub_21DBFB63C() & 1;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC13SharingStatusV2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      return 1;
    }

    v10 = 0;
    v2 = *a2;
    goto LABEL_9;
  }

  if (!v3)
  {
    v10 = *a1;
LABEL_9:
    v12 = v2;

    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  v4 = v2;
  v5 = v3;
  v6 = v4;
  v7 = [v6 remObjectID];
  v8 = [v5 remObjectID];
  v9 = sub_21DBFB63C();

  return (v9 & 1) != 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC0D11SharingInfoV6StatusO2eeoiySbAG_AGtFZ_0(void **a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != 2)
  {
    if (v2 == 1)
    {
      if (v3 == 1)
      {
        v4 = 1;
        sub_21DB34454(1);
        v5 = 1;
LABEL_10:
        sub_21DB34454(v5);
        return v4;
      }
    }

    else if ((v3 - 1) >= 2)
    {
      v7 = *a2;
      v8 = v2;
      sub_21DB15B70(v3);
      sub_21DB15B70(v2);
      sub_21DB15B70(v3);
      sub_21DB15B70(v2);
      v4 = _s15RemindersUICore25TTRRemindersListViewModelC13SharingStatusV2eeoiySbAE_AEtFZ_0(&v8, &v7);
      sub_21DB34454(v2);
      sub_21DB34454(v3);
      sub_21DB34454(v3);
      v5 = v2;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
LABEL_8:
    sub_21DB15B70(*a2);
    sub_21DB15B70(v2);
    sub_21DB34454(v2);
    sub_21DB34454(v3);
    return 0;
  }

  sub_21DB34454(2);
  sub_21DB34454(2);
  return 1;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC0D11SharingInfoV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v3 = *(a1 + 1);
    v5 = *(a2 + 1);
    v6 = v3;
    sub_21DB15B70(v3);
    sub_21DB15B70(v5);
    v2 = _s15RemindersUICore25TTRRemindersListViewModelC0D11SharingInfoV6StatusO2eeoiySbAG_AGtFZ_0(&v6, &v5);
    sub_21DB34454(v5);
    sub_21DB34454(v6);
  }

  return v2;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC13HashtagsStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v31 - v12;
  v15 = *(v14 + 56);
  sub_21D0D3954(a1, v31 - v12, &qword_27CE5A440);
  sub_21D0D3954(a2, &v13[v15], &qword_27CE5A440);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &qword_27CE5A440);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21DAF98D8(&v13[v15], v7, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
      if (sub_21D1D57A4(*v10, *v7))
      {
        v30 = MEMORY[0x223D3F370](v10 + *(v4 + 20), v7 + *(v4 + 20));
        sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
        sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
        sub_21D0CF7E0(v13, &qword_27CE5A440);
        if ((v30 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_4;
      }

      sub_21D107038(v7, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
      sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
      v29 = &qword_27CE5A440;
LABEL_11:
      sub_21D0CF7E0(v13, v29);
      return 0;
    }

    sub_21D107038(v10, type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState);
LABEL_10:
    v29 = &qword_27CE66950;
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_21D0CF7E0(v13, &qword_27CE5A440);
LABEL_4:
  v17 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = (a2 + v17);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  if (v19)
  {
    v33[0] = v18;
    v33[1] = v19;
    v34 = v20;
    if (v23)
    {
      v31[0] = v22;
      v31[1] = v23;
      v32 = v24;
      sub_21D157724(v18, v19, v20);
      sub_21D157724(v22, v23, v24);
      sub_21D157724(v18, v19, v20);
      v25 = sub_21DB10404(v33, v31, &qword_280D177E0);
      v26 = v32;

      v27 = v34;

      sub_21D1576C8(v18, v19, v20);
      return (v25 & 1) != 0;
    }

    sub_21D157724(v18, v19, v20);
    sub_21D157724(v22, 0, v24);
    sub_21D157724(v18, v19, v20);
  }

  else
  {
    sub_21D157724(v18, 0, v20);
    if (!v23)
    {
      sub_21D157724(v22, 0, v24);
      sub_21D1576C8(v18, 0, v20);
      return 1;
    }

    sub_21D157724(v22, v23, v24);
  }

  sub_21D1576C8(v18, v19, v20);
  sub_21D1576C8(v22, v23, v24);
  return 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC0D4InfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v108 = type metadata accessor for TTRTemplatePublicLinkData(0);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v103 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66850);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v102 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66938);
  MEMORY[0x28223BE20](v105);
  v112 = &v102 - v7;
  v113 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  v110 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v104 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66848);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = &v102 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66940);
  MEMORY[0x28223BE20](v109);
  v114 = &v102 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8);
  MEMORY[0x28223BE20](v116);
  v117 = &v102 - v12;
  v13 = type metadata accessor for TTRRemindersListTip(0);
  v120 = *(v13 - 8);
  v121 = v13;
  MEMORY[0x28223BE20](v13);
  v115 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA0);
  MEMORY[0x28223BE20](v15 - 8);
  v118 = &v102 - v16;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AB0);
  MEMORY[0x28223BE20](v119);
  v122 = &v102 - v17;
  v18 = type metadata accessor for TTRListType(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v102 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66948);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v102 - v26;
  v29 = *(v28 + 56);
  v123 = a1;
  sub_21D0D3954(a1, &v102 - v26, &qword_27CE650E0);
  v124 = a2;
  sub_21D0D3954(a2, &v27[v29], &qword_27CE650E0);
  v30 = *(v19 + 48);
  if (v30(v27, 1, v18) == 1)
  {
    if (v30(&v27[v29], 1, v18) == 1)
    {
      sub_21D0CF7E0(v27, &qword_27CE650E0);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &qword_27CE66948;
    v32 = v27;
LABEL_7:
    sub_21D0CF7E0(v32, v31);
    goto LABEL_42;
  }

  sub_21D0D3954(v27, v24, &qword_27CE650E0);
  if (v30(&v27[v29], 1, v18) == 1)
  {
    sub_21D107038(v24, type metadata accessor for TTRListType);
    goto LABEL_6;
  }

  sub_21DAF98D8(&v27[v29], v21, type metadata accessor for TTRListType);
  v33 = _s15RemindersUICore11TTRListTypeO2eeoiySbAC_ACtFZ_0(v24, v21);
  sub_21D107038(v21, type metadata accessor for TTRListType);
  sub_21D107038(v24, type metadata accessor for TTRListType);
  sub_21D0CF7E0(v27, &qword_27CE650E0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  v34 = type metadata accessor for TTRRemindersListViewModel.ListInfo(0);
  v35 = v34[5];
  v37 = v123;
  v36 = v124;
  v38 = *(v123 + v35);
  v39 = *(v123 + v35 + 8);
  v40 = (v124 + v35);
  if ((v38 != *v40 || v39 != v40[1]) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    goto LABEL_42;
  }

  v41 = v34[7];
  v42 = (v37 + v41);
  v43 = *(v37 + v41 + 8);
  v44 = (v36 + v41);
  v45 = *(v36 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      return v45 & 1;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_42;
    }
  }

  v46 = v34[8];
  v47 = *(v37 + v46);
  v48 = *(v36 + v46);
  if (v47)
  {
    v49 = 0x736E6D756C6F63;
  }

  else
  {
    v49 = 1953720684;
  }

  if (v47)
  {
    v50 = 0xE700000000000000;
  }

  else
  {
    v50 = 0xE400000000000000;
  }

  if (v48)
  {
    v51 = 0x736E6D756C6F63;
  }

  else
  {
    v51 = 1953720684;
  }

  if (v48)
  {
    v52 = 0xE700000000000000;
  }

  else
  {
    v52 = 0xE400000000000000;
  }

  if (v49 == v51 && v50 == v52)
  {
  }

  else
  {
    v53 = sub_21DBFC64C();

    if ((v53 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v54 = v34[9];
  v55 = *(v37 + v54);
  v56 = *(v37 + v54 + 8);
  v57 = (v36 + v54);
  v58 = *v57;
  v59 = v57[1];
  if (v56 == 3)
  {
    sub_21DB15B5C(v55, 3);
    if (v59 == 3)
    {
      sub_21DB15B5C(v58, 3);
      sub_21DB34468(v55, 3);
      goto LABEL_45;
    }

    sub_21DB15B5C(v58, v59);
LABEL_41:
    sub_21DB34468(v55, v56);
    sub_21DB34468(v58, v59);
    goto LABEL_42;
  }

  v127 = v55;
  v128 = v56;
  if (v59 == 3)
  {
    sub_21DB15B5C(v55, v56);
    sub_21DB15B5C(v58, 3);
    sub_21DB15B5C(v55, v56);
    sub_21DB34454(v56);
    goto LABEL_41;
  }

  v125 = v58 & 0x101;
  v126 = v59;
  sub_21DB15B5C(v55, v56);
  sub_21DB15B5C(v58, v59);
  sub_21DB15B5C(v55, v56);
  v61 = _s15RemindersUICore25TTRRemindersListViewModelC0D11SharingInfoV2eeoiySbAE_AEtFZ_0(&v127, &v125);
  sub_21DB34454(v126);
  sub_21DB34454(v128);
  sub_21DB34468(v55, v56);
  if (!v61)
  {
    goto LABEL_42;
  }

LABEL_45:
  v62 = v34[10];
  v63 = *(v119 + 48);
  v64 = v122;
  sub_21D0D3954(v37 + v62, v122, &qword_27CE64AA0);
  sub_21D0D3954(v36 + v62, v64 + v63, &qword_27CE64AA0);
  v65 = v121;
  v66 = *(v120 + 48);
  if (v66(v64, 1, v121) == 1)
  {
    if (v66(v64 + v63, 1, v65) == 1)
    {
      sub_21D0CF7E0(v64, &qword_27CE64AA0);
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v67 = v118;
  sub_21D0D3954(v64, v118, &qword_27CE64AA0);
  if (v66(v64 + v63, 1, v65) == 1)
  {
    sub_21D107038(v67, type metadata accessor for TTRRemindersListTip);
LABEL_50:
    v31 = &qword_27CE64AB0;
    v32 = v64;
    goto LABEL_7;
  }

  v68 = v64 + v63;
  v69 = v115;
  sub_21DAF98D8(v68, v115, type metadata accessor for TTRRemindersListTip);
  v70 = v117;
  v71 = *(v116 + 48);
  sub_21D1055C4(v67, v117, type metadata accessor for TTRRemindersListTip);
  sub_21DAF98D8(v69, &v70[v71], type metadata accessor for TTRRemindersListTip);
  LODWORD(v69) = *v70;
  v72 = v70[v71];
  sub_21D107038(&v70[v71], type metadata accessor for TTRRemindersListTips);
  sub_21D107038(v70, type metadata accessor for TTRRemindersListTips);
  sub_21D107038(v67, type metadata accessor for TTRRemindersListTip);
  sub_21D0CF7E0(v64, &qword_27CE64AA0);
  if (v69 != v72)
  {
    goto LABEL_42;
  }

LABEL_52:
  if (*(v37 + v34[11]) != *(v36 + v34[11]) || *(v37 + v34[12]) != *(v36 + v34[12]) || *(v37 + v34[13]) != *(v36 + v34[13]) || *(v37 + v34[14]) != *(v36 + v34[14]) || *(v37 + v34[15]) != *(v36 + v34[15]) || *(v37 + v34[16]) != *(v36 + v34[16]) || *(v37 + v34[17]) != *(v36 + v34[17]) || *(v37 + v34[18]) != *(v36 + v34[18]) || *(v123 + v34[19]) != *(v124 + v34[19]) || *(v123 + v34[20]) != *(v124 + v34[20]) || *(v123 + v34[21]) != *(v124 + v34[21]))
  {
    goto LABEL_42;
  }

  v73 = v34[22];
  v74 = (v123 + v73);
  v75 = *(v123 + v73 + 8);
  v76 = (v124 + v73);
  v77 = v76[1];
  if (v75)
  {
    if (!v77 || (*v74 != *v76 || v75 != v77) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v77)
  {
    goto LABEL_42;
  }

  if (*(v123 + v34[23]) != *(v124 + v34[23]))
  {
    goto LABEL_42;
  }

  v78 = v34[24];
  v79 = *(v109 + 48);
  v80 = v114;
  sub_21D0D3954(v123 + v78, v114, &qword_27CE66848);
  sub_21D0D3954(v124 + v78, v80 + v79, &qword_27CE66848);
  v81 = *(v110 + 48);
  if (v81(v80, 1, v113) == 1)
  {
    if (v81(v114 + v79, 1, v113) == 1)
    {
      sub_21D0CF7E0(v114, &qword_27CE66848);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v82 = v114;
  sub_21D0D3954(v114, v111, &qword_27CE66848);
  if (v81(v82 + v79, 1, v113) == 1)
  {
    sub_21D107038(v111, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
LABEL_76:
    v31 = &qword_27CE66940;
    v32 = v114;
    goto LABEL_7;
  }

  v83 = v114;
  v84 = v114 + v79;
  v85 = v104;
  sub_21DAF98D8(v84, v104, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
  v86 = v111;
  v87 = _s15RemindersUICore25TTRRemindersListViewModelC13HashtagsStateV2eeoiySbAE_AEtFZ_0(v111, v85);
  sub_21D107038(v85, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
  sub_21D107038(v86, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
  sub_21D0CF7E0(v83, &qword_27CE66848);
  if (!v87)
  {
    goto LABEL_42;
  }

LABEL_78:
  v88 = v34[25];
  v89 = *(v105 + 48);
  v90 = v112;
  sub_21D0D3954(v123 + v88, v112, &qword_27CE66850);
  sub_21D0D3954(v124 + v88, v90 + v89, &qword_27CE66850);
  v91 = *(v106 + 48);
  if (v91(v90, 1, v108) != 1)
  {
    v96 = v112;
    sub_21D0D3954(v112, v107, &qword_27CE66850);
    if (v91(v96 + v89, 1, v108) != 1)
    {
      v97 = v103;
      sub_21DAF98D8(v112 + v89, v103, type metadata accessor for TTRTemplatePublicLinkData);
      if (_s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(v107, v97))
      {
        v98 = *(v108 + 20);
        v99 = v107;
        v100 = *(v107 + v98);
        v101 = *(v103 + v98);
        sub_21D107038(v103, type metadata accessor for TTRTemplatePublicLinkData);
        sub_21D107038(v99, type metadata accessor for TTRTemplatePublicLinkData);
        sub_21D0CF7E0(v112, &qword_27CE66850);
        if (v100 == v101)
        {
          goto LABEL_81;
        }

LABEL_42:
        LOBYTE(v45) = 0;
        return v45 & 1;
      }

      sub_21D107038(v103, type metadata accessor for TTRTemplatePublicLinkData);
      sub_21D107038(v107, type metadata accessor for TTRTemplatePublicLinkData);
      v31 = &qword_27CE66850;
      goto LABEL_93;
    }

    sub_21D107038(v107, type metadata accessor for TTRTemplatePublicLinkData);
LABEL_92:
    v31 = &qword_27CE66938;
LABEL_93:
    v32 = v112;
    goto LABEL_7;
  }

  if (v91(v112 + v89, 1, v108) != 1)
  {
    goto LABEL_92;
  }

  sub_21D0CF7E0(v112, &qword_27CE66850);
LABEL_81:
  if (*(v123 + v34[26]) != *(v124 + v34[26]) || *(v123 + v34[27]) != *(v124 + v34[27]) || *(v123 + v34[28]) != *(v124 + v34[28]) || *(v123 + v34[29]) != *(v124 + v34[29]) || *(v123 + v34[30]) != *(v124 + v34[30]))
  {
    goto LABEL_42;
  }

  LOBYTE(v45) = 0;
  v92 = v34[31];
  v93 = v123 + v92;
  v94 = *(v123 + v92);
  v95 = (v124 + v92);
  if (v94 == *v95 && ((*(v93 + 1) ^ v95[1]) & 1) == 0 && ((*(v93 + 2) ^ v95[2]) & 1) == 0)
  {
    LOBYTE(v45) = *(v123 + v34[32]) ^ *(v124 + v34[32]) ^ 1;
  }

  return v45 & 1;
}

uint64_t sub_21DB10404(void *a1, void *a2, unint64_t *a3)
{
  v4 = a1[2];
  v5 = a2[2];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21DBFC64C(), result = 0, (v7 & 1) != 0))
  {
    if (v4)
    {
      if (v5)
      {
        sub_21D0D8CF0(0, a3);
        v9 = v5;
        v10 = v4;
        v11 = sub_21DBFB63C();

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC12LocationDataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v20 = *(a2 + 40);
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v18 = *(a2 + 48);
    v19 = *(a1 + 48);
    sub_21D0D8CF0(0, &qword_280D17688);
    v11 = v7;
    v12 = v3;
    v13 = sub_21DBFB63C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v20 = *(a2 + 40);
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v18 = *(a2 + 48);
    v19 = *(a1 + 48);
    if (v7)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (!v6)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0);
    v14 = v6;
    v15 = v2;
    v16 = sub_21DBFB63C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9 || (sub_21DBFC64C()) && (v22 == v10 && v21 == v20 || (sub_21DBFC64C()))
  {
    return v19 ^ v18 ^ 1u;
  }

  return 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV9TextStyleO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  LODWORD(v15) = *(a2 + 48);
  v16 = v8 >> 6;
  v68 = v5;
  if (v8 >> 6 > 1)
  {
    v65 = *(a1 + 48);
    if (v16 != 2)
    {
      v34 = *(a1 + 40);
      v66 = *(a1 + 8);
      v67 = *a1;
      v35 = *(a1 + 32);
      v36 = *(a1 + 24);
      if (v15 >= 0xC0 && !(v9 | v10 | v12 | v11 | v14 | v13) && v15 == 192)
      {
        sub_21D179EF0(v3, v2, v68, v4, v6, v7, v65);
        sub_21D179EF0(0, 0, v12, v11, v14, v13, 0xC0u);
        return 1;
      }

      goto LABEL_21;
    }

    if ((v15 & 0xC0) != 0x80)
    {
      v34 = *(a1 + 40);
      v66 = *(a1 + 8);
      v67 = *a1;
      v35 = *(a1 + 32);
      v36 = *(a1 + 24);
      v40 = *(a2 + 48);
      v15 = *(a2 + 8);
      sub_21DBF8E0C();
      goto LABEL_20;
    }

    v58 = *(a1 + 40);
    v60 = *(a2 + 40);
    v29 = *(a1 + 32);
    v62 = *(a1 + 24);
    if (v3 == v10 && v2 == v9)
    {
      v54 = *(a2 + 32);
      v30 = *(a1 + 8);
      sub_21D2A7DB4(v3, v2, v12, v11, v14, *(a2 + 40), v15);
      v31 = v29;
      sub_21D2A7DB4(v3, v30, v5, v62, v29, v58, v65);
      sub_21D179EF0(v3, v30, v5, v62, v29, v58, v65);
      v32 = v11;
      v33 = v54;
      sub_21D179EF0(v3, v30, v12, v11, v54, v60, v15);
    }

    else
    {
      v45 = *(a2 + 16);
      v56 = *(a2 + 8);
      v46 = *a2;
      v47 = *(a2 + 24);
      v64 = v47;
      v48 = *(a2 + 32);
      v49 = *(a2 + 40);
      v50 = *(a1 + 8);
      v51 = sub_21DBFC64C();
      sub_21D2A7DB4(v46, v56, v45, v47, v48, v49, v15);
      v31 = v29;
      sub_21D2A7DB4(v3, v50, v68, v62, v29, v58, v65);
      sub_21D179EF0(v3, v50, v68, v62, v29, v58, v65);
      v12 = v45;
      v32 = v64;
      v33 = v48;
      sub_21D179EF0(v46, v56, v45, v64, v48, v60, v15);
      v28 = 0;
      if ((v51 & 1) == 0)
      {
        return v28;
      }
    }

    if (v31)
    {
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v33 & 1) != 0 || v68 != v12 || v62 != v32)
    {
      return 0;
    }

    return 1;
  }

  v66 = *(a1 + 8);
  v67 = *a1;
  if (v16)
  {
    v65 = *(a1 + 48);
    v34 = *(a1 + 40);
    v35 = *(a1 + 32);
    v36 = *(a1 + 24);
    if ((v15 & 0xC0) != 0x40)
    {
LABEL_21:
      v41 = v15;
      v42 = v15;
      v43 = v9;
      sub_21D2A7DB4(v10, v9, v12, v11, v14, v13, v41);
      sub_21D179EF0(v67, v66, v68, v36, v35, v34, v65);
      sub_21D179EF0(v10, v43, v12, v11, v14, v13, v42);
      return 0;
    }

    v37 = *(a2 + 40);
    v38 = *(a2 + 8);
    sub_21D179EF0(v3, v2, v68, v4, v6, v7, v65);
    sub_21D179EF0(v10, v38, v12, v11, v14, v37, v15);
    if (v68)
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v12 & 1) != 0 || v3 != v10 || v66 != v38)
    {
      return 0;
    }

    return 1;
  }

  if (v15 >= 0x40)
  {
    v65 = *(a1 + 48);
    v39 = v8 & 1;
    v36 = *(a1 + 24);
    v35 = *(a1 + 32);
    v34 = *(a1 + 40);
    v40 = *(a2 + 48);
    v15 = *(a2 + 8);
    sub_21D0FB960(*a1, v2, *(a1 + 16), v4, v6, v7, v39);
LABEL_20:
    v9 = v15;
    LOBYTE(v15) = v40;
    goto LABEL_21;
  }

  v71[0] = *a1;
  v71[1] = v2;
  v71[2] = v5;
  v71[3] = v4;
  v71[4] = v6;
  v71[5] = v7;
  v72 = v8 & 1;
  v69[0] = v10;
  v69[1] = v9;
  v69[2] = v12;
  v69[3] = v11;
  v69[4] = v14;
  v69[5] = v13;
  v70 = v15 & 1;
  v17 = v10;
  v18 = v12;
  v19 = v10;
  v52 = v10;
  v53 = v14;
  v55 = v9;
  v61 = v4;
  v63 = v11;
  v20 = v11;
  v21 = v14;
  v22 = v6;
  v23 = v13;
  v59 = v13;
  v24 = v7;
  v25 = v2;
  v26 = v9;
  sub_21D2A7DB4(v17, v9, v18, v20, v21, v23, v15);
  sub_21D2A7DB4(v3, v25, v5, v61, v22, v24, v8);
  sub_21D2A7DB4(v19, v26, v18, v63, v53, v59, v15);
  v27 = v24;
  v57 = v24;
  sub_21D2A7DB4(v3, v25, v68, v61, v22, v24, v8);
  v28 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(v71, v69);
  sub_21D179EF0(v3, v25, v68, v61, v22, v27, v8);
  sub_21D179EF0(v52, v55, v18, v63, v53, v59, v15);
  sub_21D179EF0(v52, v55, v18, v63, v53, v59, v15);
  sub_21D179EF0(v3, v66, v68, v61, v22, v57, v8);
  return v28;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v67 = *(a1 + 65);
  v65 = *(a1 + 66);
  v60 = *(a1 + 67);
  v48 = *(a1 + 68);
  v52 = *(a1 + 72);
  v53 = *(a1 + 80);
  v54 = *(a1 + 88);
  v55 = *(a1 + 96);
  v56 = *(a1 + 104);
  v63 = *(a1 + 112);
  v51 = *(a1 + 120);
  v45 = *(a1 + 121);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  v66 = *(a2 + 65);
  v64 = *(a2 + 66);
  v59 = *(a2 + 67);
  v57 = *(a2 + 72);
  v58 = *(a2 + 80);
  v49 = *(a2 + 96);
  v50 = *(a2 + 104);
  v61 = *(a2 + 88);
  v62 = *(a2 + 112);
  v46 = *(a2 + 120);
  v47 = *(a2 + 68);
  v44 = *(a2 + 121);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    v43 = *(a2 + 48);
    v16 = *(a1 + 48);
    v42 = *(a2 + 64);
    v40 = *(a2 + 40);
    v41 = *(a2 + 24);
    v17 = *(a1 + 40);
    v18 = *(a2 + 56);
    v19 = *(a1 + 56);
    v20 = *(a2 + 32);
    v21 = *(a2 + 16);
    v22 = *(a1 + 64);
    v23 = sub_21DBFC64C();
    v8 = v22;
    v10 = v21;
    v11 = v20;
    v7 = v19;
    v14 = v18;
    v5 = v16;
    v13 = v43;
    v6 = v17;
    v12 = v40;
    v9 = v41;
    v15 = v42;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v75 = v2;
  v76 = v3;
  v77 = v4;
  v78 = v6;
  v79 = v5;
  v80 = v7;
  v81 = v8;
  v68 = v10;
  v69 = v9;
  v70 = v11;
  v71 = v12;
  v72 = v13;
  v73 = v14;
  v74 = v15;
  sub_21D2A7DB4(v2, v3, v4, v6, v5, v7, v8);
  sub_21D2A7DB4(v10, v9, v11, v12, v13, v14, v15);
  v24 = _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV9TextStyleO2eeoiySbAG_AGtFZ_0(&v75, &v68);
  sub_21D179EF0(v68, v69, v70, v71, v72, v73, v74);
  sub_21D179EF0(v75, v76, v77, v78, v79, v80, v81);
  result = 0;
  if (v24 && v67 == v66 && v65 == v64 && ((v60 ^ v59) & 1) == 0)
  {
    if (v48 == 2)
    {
      v27 = v62;
      v26 = v63;
      v29 = v55;
      v28 = v56;
      v31 = v53;
      v30 = v54;
      v32 = v52;
      v33 = v51;
      v35 = v49;
      v34 = v50;
      v36 = v61;
      v38 = v57;
      v37 = v58;
      if (v47 != 2)
      {
        return 0;
      }
    }

    else
    {
      v27 = v62;
      v26 = v63;
      v29 = v55;
      v28 = v56;
      v31 = v53;
      v30 = v54;
      v32 = v52;
      v33 = v51;
      v35 = v49;
      v34 = v50;
      v36 = v61;
      v38 = v57;
      v37 = v58;
      if (v48 == 3)
      {
        if (v47 != 3)
        {
          return 0;
        }
      }

      else if (v47 & 0xFE) == 2 || ((v47 ^ v48))
      {
        return 0;
      }
    }

    if (v33 == 255)
    {
      sub_21DB15AE4(v32, v31, v30, v29, v28, v26, 255);
      if (v46 == 255)
      {
        sub_21DB15AE4(v38, v37, v61, v35, v34, v62, 255);
        sub_21D66A604(v32, v31, v30, v29, v28, v63, 255);
        return v45 ^ v44 ^ 1u;
      }

      sub_21DB15AE4(v38, v37, v61, v35, v34, v62, v46);
    }

    else
    {
      v75 = v32;
      v76 = v31;
      v77 = v30;
      v78 = v29;
      v79 = v28;
      v80 = v26;
      v81 = v33;
      if (v46 != 255)
      {
        v68 = v38;
        v69 = v58;
        v70 = v36;
        v71 = v35;
        v72 = v34;
        v73 = v27;
        v74 = v46 & 1;
        sub_21DB15AE4(v32, v31, v30, v29, v28, v26, v33);
        sub_21DB15AE4(v57, v58, v61, v35, v34, v62, v46);
        sub_21DB15AE4(v32, v31, v30, v29, v28, v63, v33);
        v39 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(&v75, &v68);
        sub_21D1078C0(v68, v69, v70, v71, v72, v73, v74);
        sub_21D1078C0(v75, v76, v77, v78, v79, v80, v81);
        sub_21D66A604(v32, v31, v30, v29, v28, v63, v33);
        if (!v39)
        {
          return 0;
        }

        return v45 ^ v44 ^ 1u;
      }

      sub_21DB15AE4(v32, v31, v30, v29, v28, v26, v33);
      v37 = v58;
      sub_21DB15AE4(v38, v58, v61, v35, v34, v62, 255);
      sub_21DB15AE4(v32, v31, v30, v29, v28, v63, v33);
      sub_21D1078C0(v32, v31, v30, v29, v28, v63, v33 & 1);
    }

    sub_21D66A604(v32, v31, v30, v29, v28, v63, v33);
    sub_21D66A604(v38, v37, v61, v35, v34, v62, v46);
    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC13SectionHeaderV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = (a1 + v4[5]);
  v6 = v5[3];
  v7 = v5[5];
  v91 = v5[4];
  v92 = v7;
  v8 = v5[5];
  v93[0] = v5[6];
  *(v93 + 10) = *(v5 + 106);
  v9 = v5[1];
  v10 = v5[3];
  v89 = v5[2];
  v90 = v10;
  v11 = *v5;
  v12 = *v5;
  v88[1] = v5[1];
  v88[0] = v11;
  v13 = (a2 + v4[5]);
  v15 = v13[1];
  v14 = v13[2];
  v16 = v14;
  v94[3] = v13[3];
  v94[2] = v14;
  *(v95 + 10) = *(v13 + 106);
  v17 = v13[5];
  v95[0] = v13[6];
  v19 = v13[3];
  v18 = v13[4];
  v20 = v18;
  v94[5] = v13[5];
  v94[4] = v18;
  v21 = *v13;
  v22 = *v13;
  v94[1] = v13[1];
  v94[0] = v21;
  v23 = v5[5];
  v78 = v5[4];
  v79 = v23;
  *v80 = v5[6];
  *&v80[10] = *(v5 + 106);
  v24 = v5[1];
  v74 = *v5;
  v75 = v24;
  v25 = v5[3];
  v76 = v5[2];
  v77 = v25;
  v83 = v16;
  v82 = v15;
  v81 = v22;
  *(v87 + 10) = *(v13 + 106);
  v87[0] = v13[6];
  v86 = v17;
  v84 = v19;
  v85 = v20;
  v96[2] = v89;
  v96[3] = v6;
  v96[0] = v12;
  v96[1] = v9;
  v26 = v5[6];
  *&v97[10] = *(v5 + 106);
  v96[5] = v8;
  *v97 = v26;
  v96[4] = v91;
  if (sub_21D1D9A6C(v96) != 1)
  {
    v71 = v78;
    v72 = v79;
    v73[0] = *v80;
    *(v73 + 10) = *&v80[10];
    v67 = v74;
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v48 = v76;
    v49 = v77;
    v46 = v74;
    v47 = v75;
    *(v52 + 10) = *&v80[10];
    v51 = v79;
    v52[0] = *v80;
    v50 = v78;
    v55 = v83;
    v56 = v84;
    v53 = v81;
    v54 = v82;
    *&v59[10] = *(v87 + 10);
    v58 = v86;
    *v59 = v87[0];
    v57 = v85;
    if (sub_21D1D9A6C(&v53) != 1)
    {
      v43 = v85;
      v44 = v86;
      v45[0] = v87[0];
      *(v45 + 10) = *(v87 + 10);
      v39 = v81;
      v40 = v82;
      v41 = v83;
      v42 = v84;
      sub_21D0D3954(v88, v37, &qword_27CE5B090);
      sub_21D0D3954(v94, v37, &qword_27CE5B090);
      sub_21D0D3954(&v67, v37, &qword_27CE5B090);
      v27 = _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV2eeoiySbAE_AEtFZ_0(&v46, &v39);
      v35[4] = v43;
      v35[5] = v44;
      v36[0] = v45[0];
      *(v36 + 10) = *(v45 + 10);
      v35[0] = v39;
      v35[1] = v40;
      v35[2] = v41;
      v35[3] = v42;
      sub_21D179E9C(v35);
      v37[4] = v50;
      v37[5] = v51;
      v38[0] = v52[0];
      *(v38 + 10) = *(v52 + 10);
      v37[0] = v46;
      v37[1] = v47;
      v37[2] = v48;
      v37[3] = v49;
      sub_21D179E9C(v37);
      v43 = v78;
      v44 = v79;
      v45[0] = *v80;
      *(v45 + 10) = *&v80[10];
      v39 = v74;
      v40 = v75;
      v41 = v76;
      v42 = v77;
      sub_21D0CF7E0(&v39, &qword_27CE5B090);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v43 = v78;
    v44 = v79;
    v45[0] = *v80;
    *(v45 + 10) = *&v80[10];
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    sub_21D0D3954(v88, v37, &qword_27CE5B090);
    sub_21D0D3954(v94, v37, &qword_27CE5B090);
    sub_21D0D3954(&v67, v37, &qword_27CE5B090);
    sub_21D179E9C(&v39);
LABEL_8:
    v64 = v85;
    v65 = v86;
    v66[0] = v87[0];
    *(v66 + 10) = *(v87 + 10);
    v60 = v81;
    v61 = v82;
    v62 = v83;
    v63 = v84;
    v57 = v78;
    v58 = v79;
    *v59 = *v80;
    *&v59[16] = *&v80[16];
    v53 = v74;
    v54 = v75;
    v55 = v76;
    v56 = v77;
    sub_21D0CF7E0(&v53, &qword_27CE66970);
    return 0;
  }

  v57 = v85;
  v58 = v86;
  *v59 = v87[0];
  *&v59[10] = *(v87 + 10);
  v53 = v81;
  v54 = v82;
  v55 = v83;
  v56 = v84;
  if (sub_21D1D9A6C(&v53) != 1)
  {
    sub_21D0D3954(v88, &v67, &qword_27CE5B090);
    sub_21D0D3954(v94, &v67, &qword_27CE5B090);
    goto LABEL_8;
  }

  v71 = v78;
  v72 = v79;
  v73[0] = *v80;
  *(v73 + 10) = *&v80[10];
  v67 = v74;
  v68 = v75;
  v69 = v76;
  v70 = v77;
  sub_21D0D3954(v88, &v46, &qword_27CE5B090);
  sub_21D0D3954(v94, &v46, &qword_27CE5B090);
  sub_21D0CF7E0(&v67, &qword_27CE5B090);
LABEL_10:
  if (*(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v29 = v4[11];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    if (v31)
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v32 = v31;
      v33 = v30;
      v34 = sub_21DBFB63C();

      if (v34)
      {
        return 1;
      }
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC14AssignmentDataV2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v4 = a1[11];
  v5 = a1[9];
  v154 = a1[10];
  v155 = v4;
  v6 = a1[11];
  v7 = a1[13];
  v156 = a1[12];
  v157 = v7;
  v8 = a1[7];
  v9 = a1[5];
  v150 = a1[6];
  v151 = v8;
  v10 = a1[7];
  v11 = a1[9];
  v152 = a1[8];
  v153 = v11;
  v12 = a1[3];
  v13 = a1[1];
  v146 = a1[2];
  v147 = v12;
  v14 = a1[3];
  v15 = a1[5];
  v148 = a1[4];
  v149 = v15;
  v16 = a1[1];
  v145[0] = *a1;
  v145[1] = v16;
  v17 = *(a2 + 176);
  v18 = *(a2 + 144);
  v167 = *(a2 + 160);
  v168 = v17;
  v19 = *(a2 + 176);
  v20 = *(a2 + 208);
  v169 = *(a2 + 192);
  v170 = v20;
  v21 = *(a2 + 112);
  v22 = *(a2 + 80);
  v163 = *(a2 + 96);
  v164 = v21;
  v23 = *(a2 + 112);
  v24 = *(a2 + 144);
  v165 = *(a2 + 128);
  v166 = v24;
  v25 = *(a2 + 48);
  v26 = *(a2 + 16);
  v159 = *(a2 + 32);
  v160 = v25;
  v27 = *(a2 + 48);
  v28 = *(a2 + 80);
  v161 = *(a2 + 64);
  v162 = v28;
  v29 = *(a2 + 16);
  v158[0] = *a2;
  v158[1] = v29;
  v30 = a1[11];
  __src[10] = a1[10];
  __src[11] = v30;
  v31 = a1[13];
  __src[12] = a1[12];
  __src[13] = v31;
  v32 = a1[7];
  __src[6] = a1[6];
  __src[7] = v32;
  v33 = a1[9];
  __src[8] = a1[8];
  __src[9] = v33;
  v34 = a1[3];
  __src[2] = a1[2];
  __src[3] = v34;
  v35 = a1[5];
  __src[4] = a1[4];
  __src[5] = v35;
  v36 = a1[1];
  __src[0] = *a1;
  __src[1] = v36;
  __src[24] = v167;
  __src[25] = v19;
  v37 = *(a2 + 208);
  __src[26] = v169;
  __src[27] = v37;
  __src[20] = v163;
  __src[21] = v23;
  __src[22] = v165;
  __src[23] = v18;
  __src[16] = v159;
  __src[17] = v27;
  __src[18] = v161;
  __src[19] = v22;
  __src[14] = v158[0];
  __src[15] = v26;
  v171[10] = v154;
  v171[11] = v6;
  v38 = a1[13];
  v171[12] = v156;
  v171[13] = v38;
  v171[6] = v150;
  v171[7] = v10;
  v171[8] = v152;
  v171[9] = v5;
  v171[2] = v146;
  v171[3] = v14;
  v171[4] = v148;
  v171[5] = v9;
  v39 = *(a1 + 28);
  v40 = *(a2 + 224);
  v171[0] = v145[0];
  v171[1] = v13;
  if (sub_21D157494(v171) != 1)
  {
    v55 = a1[11];
    v56 = a1[9];
    v140 = a1[10];
    v141 = v55;
    v57 = a1[11];
    v58 = a1[13];
    v142 = a1[12];
    v143 = v58;
    v59 = a1[7];
    v60 = a1[5];
    v136 = a1[6];
    v137 = v59;
    v61 = a1[7];
    v62 = a1[9];
    v138 = a1[8];
    v139 = v62;
    v63 = a1[3];
    v64 = a1[1];
    v132 = a1[2];
    v133 = v63;
    v65 = a1[3];
    v66 = a1[5];
    v134 = a1[4];
    v135 = v66;
    v67 = a1[1];
    v130 = *a1;
    v131 = v67;
    v125 = v140;
    v126 = v57;
    v68 = a1[13];
    v127 = v142;
    v128 = v68;
    v121 = v136;
    v122 = v61;
    v123 = v138;
    v124 = v56;
    v117 = v132;
    v118 = v65;
    v119 = v134;
    v120 = v60;
    v115 = v130;
    v116 = v64;
    v69 = *(a2 + 176);
    __dst[10] = *(a2 + 160);
    __dst[11] = v69;
    v70 = *(a2 + 208);
    __dst[12] = *(a2 + 192);
    __dst[13] = v70;
    v71 = *(a2 + 112);
    __dst[6] = *(a2 + 96);
    __dst[7] = v71;
    v72 = *(a2 + 144);
    __dst[8] = *(a2 + 128);
    __dst[9] = v72;
    v73 = *(a2 + 48);
    __dst[2] = *(a2 + 32);
    __dst[3] = v73;
    v74 = *(a2 + 80);
    __dst[4] = *(a2 + 64);
    __dst[5] = v74;
    v75 = *(a2 + 16);
    __dst[0] = *a2;
    __dst[1] = v75;
    if (sub_21D157494(__dst) != 1)
    {
      v84 = *(a2 + 176);
      v111 = *(a2 + 160);
      v112 = v84;
      v85 = *(a2 + 208);
      v113 = *(a2 + 192);
      v114 = v85;
      v86 = *(a2 + 112);
      v107 = *(a2 + 96);
      v108 = v86;
      v87 = *(a2 + 144);
      v109 = *(a2 + 128);
      v110 = v87;
      v88 = *(a2 + 48);
      v103 = *(a2 + 32);
      v104 = v88;
      v89 = *(a2 + 80);
      v105 = *(a2 + 64);
      v106 = v89;
      v90 = *(a2 + 16);
      v101 = *a2;
      v102 = v90;
      sub_21D0D3954(v145, v100, &qword_27CE608E0);
      sub_21D0D3954(v158, v100, &qword_27CE608E0);
      sub_21D0D3954(&v130, v100, &qword_27CE608E0);
      v91 = _s15RemindersUICore13TTRAssignmentV2eeoiySbAC_ACtFZ_0(&v115, &v101);
      v99[10] = v111;
      v99[11] = v112;
      v99[12] = v113;
      v99[13] = v114;
      v99[6] = v107;
      v99[7] = v108;
      v99[8] = v109;
      v99[9] = v110;
      v99[2] = v103;
      v99[3] = v104;
      v99[4] = v105;
      v99[5] = v106;
      v99[0] = v101;
      v99[1] = v102;
      sub_21D30DA58(v99);
      v100[10] = v125;
      v100[11] = v126;
      v100[12] = v127;
      v100[13] = v128;
      v100[6] = v121;
      v100[7] = v122;
      v100[8] = v123;
      v100[9] = v124;
      v100[2] = v117;
      v100[3] = v118;
      v100[4] = v119;
      v100[5] = v120;
      v100[0] = v115;
      v100[1] = v116;
      sub_21D30DA58(v100);
      v92 = a1[11];
      v111 = a1[10];
      v112 = v92;
      v93 = a1[13];
      v113 = a1[12];
      v114 = v93;
      v94 = a1[7];
      v107 = a1[6];
      v108 = v94;
      v95 = a1[9];
      v109 = a1[8];
      v110 = v95;
      v96 = a1[3];
      v103 = a1[2];
      v104 = v96;
      v97 = a1[5];
      v105 = a1[4];
      v106 = v97;
      v98 = a1[1];
      v101 = *a1;
      v102 = v98;
      sub_21D0CF7E0(&v101, &qword_27CE608E0);
      if (v91)
      {
        return v39 == v40;
      }

      return 0;
    }

    v76 = a1[11];
    v111 = a1[10];
    v112 = v76;
    v77 = a1[13];
    v113 = a1[12];
    v114 = v77;
    v78 = a1[7];
    v107 = a1[6];
    v108 = v78;
    v79 = a1[9];
    v109 = a1[8];
    v110 = v79;
    v80 = a1[3];
    v103 = a1[2];
    v104 = v80;
    v81 = a1[5];
    v105 = a1[4];
    v106 = v81;
    v82 = a1[1];
    v101 = *a1;
    v102 = v82;
    sub_21D0D3954(v145, v100, &qword_27CE608E0);
    sub_21D0D3954(v158, v100, &qword_27CE608E0);
    sub_21D0D3954(&v130, v100, &qword_27CE608E0);
    sub_21D30DA58(&v101);
LABEL_7:
    memcpy(__dst, __src, sizeof(__dst));
    sub_21D0CF7E0(__dst, &qword_27CE66968);
    return 0;
  }

  v41 = *(a2 + 176);
  __dst[10] = *(a2 + 160);
  __dst[11] = v41;
  v42 = *(a2 + 208);
  __dst[12] = *(a2 + 192);
  __dst[13] = v42;
  v43 = *(a2 + 112);
  __dst[6] = *(a2 + 96);
  __dst[7] = v43;
  v44 = *(a2 + 144);
  __dst[8] = *(a2 + 128);
  __dst[9] = v44;
  v45 = *(a2 + 48);
  __dst[2] = *(a2 + 32);
  __dst[3] = v45;
  v46 = *(a2 + 80);
  __dst[4] = *(a2 + 64);
  __dst[5] = v46;
  v47 = *(a2 + 16);
  __dst[0] = *a2;
  __dst[1] = v47;
  if (sub_21D157494(__dst) != 1)
  {
    sub_21D0D3954(v145, &v130, &qword_27CE608E0);
    sub_21D0D3954(v158, &v130, &qword_27CE608E0);
    goto LABEL_7;
  }

  v48 = a1[11];
  v140 = a1[10];
  v141 = v48;
  v49 = a1[13];
  v142 = a1[12];
  v143 = v49;
  v50 = a1[7];
  v136 = a1[6];
  v137 = v50;
  v51 = a1[9];
  v138 = a1[8];
  v139 = v51;
  v52 = a1[3];
  v132 = a1[2];
  v133 = v52;
  v53 = a1[5];
  v134 = a1[4];
  v135 = v53;
  v54 = a1[1];
  v130 = *a1;
  v131 = v54;
  sub_21D0D3954(v145, &v115, &qword_27CE608E0);
  sub_21D0D3954(v158, &v115, &qword_27CE608E0);
  sub_21D0CF7E0(&v130, &qword_27CE608E0);
  return v39 == v40;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC14LinkAttachmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C())
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
    if (sub_21DBF544C())
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6)
      {
        if (v7)
        {
          sub_21D0D8CF0(0, &qword_280D17838);
          v8 = v7;
          v9 = v6;
          v10 = sub_21DBFB63C();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC17SharingStatusDataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSharedWithYouHighlight();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66838);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66958);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_21D0D3954(a1, &v20 - v12, &qword_27CE66838);
  sub_21D0D3954(a2, &v13[v15], &qword_27CE66838);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE66838);
      return 1;
    }

    goto LABEL_6;
  }

  sub_21D0D3954(v13, v10, &qword_27CE66838);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D107038(v10, type metadata accessor for TTRSharedWithYouHighlight);
LABEL_6:
    v18 = &qword_27CE66958;
LABEL_7:
    sub_21D0CF7E0(v13, v18);
    return 0;
  }

  sub_21DAF98D8(&v13[v15], v7, type metadata accessor for TTRSharedWithYouHighlight);
  if ((sub_21DBF544C() & 1) == 0)
  {
    sub_21D107038(v7, type metadata accessor for TTRSharedWithYouHighlight);
    sub_21D107038(v10, type metadata accessor for TTRSharedWithYouHighlight);
    v18 = &qword_27CE66838;
    goto LABEL_7;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  v19 = sub_21DBFB63C();
  sub_21D107038(v7, type metadata accessor for TTRSharedWithYouHighlight);
  sub_21D107038(v10, type metadata accessor for TTRSharedWithYouHighlight);
  sub_21D0CF7E0(v13, &qword_27CE66838);
  return (v19 & 1) != 0;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO10EraAndYearV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC4ItemO13contentsEqualySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v137 = a1;
  v138 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v120 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v136 = &v114 - v5;
  MEMORY[0x28223BE20](v6);
  v135 = &v114 - v7;
  MEMORY[0x28223BE20](v8);
  v134 = &v114 - v9;
  MEMORY[0x28223BE20](v10);
  v133 = &v114 - v11;
  MEMORY[0x28223BE20](v12);
  v132 = &v114 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64AA8);
  MEMORY[0x28223BE20](v121);
  v122 = &v114 - v14;
  v15 = type metadata accessor for TTRRemindersListTip(0);
  MEMORY[0x28223BE20](v15 - 8);
  v119 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v128 = &v114 - v18;
  v115 = type metadata accessor for TTRTemplatePublicLinkData(0);
  MEMORY[0x28223BE20](v115);
  v118 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v114 - v21;
  v22 = type metadata accessor for TTRRemindersListViewModel.HashtagsState(0);
  MEMORY[0x28223BE20](v22 - 8);
  v117 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v114 - v25;
  v26 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v26 - 8);
  v131 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v130 = &v114 - v29;
  MEMORY[0x28223BE20](v30);
  v116 = &v114 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v114 - v33;
  v35 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v114 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v114 - v42;
  MEMORY[0x28223BE20](v44);
  v124 = &v114 - v45;
  MEMORY[0x28223BE20](v46);
  v126 = &v114 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v114 - v49;
  MEMORY[0x28223BE20](v51);
  v125 = &v114 - v52;
  MEMORY[0x28223BE20](v53);
  v123 = &v114 - v54;
  MEMORY[0x28223BE20](v55);
  v57 = &v114 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v114 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v114 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v114 - v65;
  sub_21D1055C4(v137, &v114 - v65, type metadata accessor for TTRRemindersListViewModel.Item);
  v137 = v35;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v57 = v40;
    v73 = v34;
    v74 = v131;
    v70 = v133;
    v76 = v135;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v68 = v73;
        sub_21DAF98D8(v66, v73, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        sub_21D1055C4(v138, v63, type metadata accessor for TTRRemindersListViewModel.Item);
        if (!swift_getEnumCaseMultiPayload())
        {
          v70 = v116;
          sub_21DAF98D8(v63, v116, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          v71 = _s15RemindersUICore25TTRRemindersListViewModelC13SectionHeaderV2eeoiySbAE_AEtFZ_0(v68, v70);
          v72 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
          goto LABEL_28;
        }

        sub_21D107038(v68, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v79 = type metadata accessor for TTRRemindersListViewModel.Item;
        v80 = v63;
        goto LABEL_49;
      }

      v97 = v130;
      v75 = v130;
      sub_21DAF98D8(v66, v130, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D1055C4(v138, v60, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21D107038(v75, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        v79 = type metadata accessor for TTRRemindersListViewModel.Item;
        v80 = v60;
        goto LABEL_49;
      }

      sub_21DAF98D8(v60, v74, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v71 = _s15RemindersUICore25TTRRemindersListViewModelC13SectionHeaderV2eeoiySbAE_AEtFZ_0(v75, v74);
      v98 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
      v99 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
      v100 = v74;
LABEL_31:
      sub_21D107038(v100, v98);
      v101 = v97;
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v68 = v132;
      sub_21DAF98D8(v66, v132, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D1055C4(v138, v43, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v108 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        v109 = v68;
        goto LABEL_40;
      }

      v81 = v43;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v68 = v134;
        sub_21DAF98D8(v66, v134, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        sub_21D1055C4(v138, v40, type metadata accessor for TTRRemindersListViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_21D107038(v68, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          goto LABEL_42;
        }

        v70 = v76;
        sub_21DAF98D8(v40, v76, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v77 = v68;
        v78 = v76;
LABEL_27:
        v71 = _s15RemindersUICore25TTRRemindersListViewModelC10ReminderIDV2eeoiySbAE_AEtFZ_0(v77, v78);
        v72 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
        goto LABEL_28;
      }

      v68 = v136;
      sub_21DAF98D8(v66, v136, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v69 = v37;
      sub_21D1055C4(v138, v37, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v110 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_46:
        v111 = v110;
        v112 = v68;
LABEL_48:
        sub_21D107038(v112, v111);
        v79 = type metadata accessor for TTRRemindersListViewModel.Item;
        v80 = v69;
        goto LABEL_49;
      }

      v81 = v37;
      v70 = v120;
    }

    sub_21DAF98D8(v81, v70, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v77 = v68;
    v78 = v70;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v68 = v127;
        sub_21DAF98D8(v66, v127, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
        v69 = v123;
        sub_21D1055C4(v138, v123, type metadata accessor for TTRRemindersListViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v70 = v117;
          sub_21DAF98D8(v69, v117, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
          v71 = _s15RemindersUICore25TTRRemindersListViewModelC13HashtagsStateV2eeoiySbAE_AEtFZ_0(v68, v70);
          v72 = type metadata accessor for TTRRemindersListViewModel.HashtagsState;
LABEL_28:
          v99 = v72;
          sub_21D107038(v70, v72);
          v101 = v68;
LABEL_32:
          sub_21D107038(v101, v99);
          return v71 & 1;
        }

        v110 = type metadata accessor for TTRRemindersListViewModel.HashtagsState;
        goto LABEL_46;
      }

      v102 = v129;
      sub_21DAF98D8(v66, v129, type metadata accessor for TTRTemplatePublicLinkData);
      v69 = v125;
      sub_21D1055C4(v138, v125, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v111 = type metadata accessor for TTRTemplatePublicLinkData;
        v112 = v102;
        goto LABEL_48;
      }

      v103 = v118;
      sub_21DAF98D8(v69, v118, type metadata accessor for TTRTemplatePublicLinkData);
      if (_s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(v102, v103))
      {
        v104 = v115;
        v105 = *(v102 + *(v115 + 20));
        sub_21D107038(v102, type metadata accessor for TTRTemplatePublicLinkData);
        v106 = *(v103 + *(v104 + 20));
        sub_21D107038(v103, type metadata accessor for TTRTemplatePublicLinkData);
        v71 = v105 == v106;
        return v71 & 1;
      }

      sub_21D107038(v103, type metadata accessor for TTRTemplatePublicLinkData);
      v80 = v102;
      v79 = type metadata accessor for TTRTemplatePublicLinkData;
LABEL_49:
      sub_21D107038(v80, v79);
      v71 = 0;
      return v71 & 1;
    }

    v82 = *v66;
    v83 = v66[8];
    v84 = v66[9];
    v85 = v66[10];
    v86 = *(v66 + 2);
    sub_21D1055C4(v138, v57, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v87 = *v57;
      v88 = v57[8];
      v89 = v57[9];
      v90 = v57[10];
      v91 = *(v57 + 2);
      v143 = v91;
      v144 = v82;
      v145 = v83;
      v146 = v84;
      v147 = v85;
      v148 = v86;
      v139 = v87;
      v140 = v88;
      v141 = v89;
      v142 = v90;
      v71 = _s15RemindersUICore25TTRRemindersListViewModelC09CompletedA5StateV2eeoiySbAE_AEtFZ_0(&v144, &v139);

      return v71 & 1;
    }

LABEL_42:
    v79 = type metadata accessor for TTRRemindersListViewModel.Item;
    v80 = v57;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v92 = v128;
    sub_21DAF98D8(v66, v128, type metadata accessor for TTRRemindersListTip);
    v43 = v126;
    sub_21D1055C4(v138, v126, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v93 = v43;
      v94 = v119;
      sub_21DAF98D8(v93, v119, type metadata accessor for TTRRemindersListTip);
      v95 = *(v121 + 48);
      v96 = v92;
      v97 = v122;
      sub_21DAF98D8(v96, v122, type metadata accessor for TTRRemindersListTip);
      sub_21DAF98D8(v94, &v97[v95], type metadata accessor for TTRRemindersListTip);
      v71 = *v97 ^ v97[v95] ^ 1;
      v98 = type metadata accessor for TTRRemindersListTips;
      v99 = type metadata accessor for TTRRemindersListTips;
      v100 = &v97[v95];
      goto LABEL_31;
    }

    v108 = type metadata accessor for TTRRemindersListTip;
    v109 = v92;
LABEL_40:
    sub_21D107038(v109, v108);
    v79 = type metadata accessor for TTRRemindersListViewModel.Item;
    v80 = v43;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_21D1055C4(v138, v50, type metadata accessor for TTRRemindersListViewModel.Item);
    v71 = swift_getEnumCaseMultiPayload() == 9;
    sub_21D107038(v50, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  else
  {
    v107 = v124;
    sub_21D1055C4(v138, v124, type metadata accessor for TTRRemindersListViewModel.Item);
    v71 = swift_getEnumCaseMultiPayload() == 10;
    sub_21D107038(v107, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  return v71 & 1;
}

uint64_t sub_21DB130E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL _s15RemindersUICore28TTRReminderSuggestedLocationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v5 = a1[5];
  v4 = a1[6];
  v6 = a2[2];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v6)
    {
      return 0;
    }

    v14 = v4;
    sub_21D0D8CF0(0, &qword_280D17688);
    v10 = v6;
    v11 = v2;
    v12 = sub_21DBFB63C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v14 = v4;
    if (v6)
    {
      return 0;
    }
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C() & 1) != 0 && (v3 == v7 && v5 == v8 || (sub_21DBFC64C()))
  {
    return v14 == v9;
  }

  return 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC15ImageAttachmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v15 = a1;
  v16 = a2;
  v31 = v14;
  v32 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_21D0D3954(v15 + v17, v13, &qword_27CE5EA20);
  v19 = v16 + v17;
  v20 = v16;
  sub_21D0D3954(v19, &v13[v18], &qword_27CE5EA20);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &qword_27CE5EA20);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_21DB15960(&qword_280D171D0, MEMORY[0x277CC9260]);
      v23 = sub_21DBFA10C();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      v20 = v16;
      sub_21D0CF7E0(v13, &qword_27CE5EA20);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_21D0CF7E0(v13, &unk_27CE5F2A0);
    return 0;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_21D0CF7E0(v13, &qword_27CE5EA20);
LABEL_11:
  v25 = *(v31 + 24);
  v26 = *(v32 + v25);
  v27 = *(v20 + v25);
  if (v26)
  {
    if (v27)
    {
      sub_21D0D8CF0(0, &qword_280D17688);
      v28 = v27;
      v29 = v26;
      v30 = sub_21DBFB63C();

      if (v30)
      {
        return 1;
      }
    }
  }

  else if (!v27)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC11DisplayDateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_21DBF5C4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66960);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v15)
  {
    goto LABEL_25;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_21DBFC64C() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v17)
  {
    goto LABEL_25;
  }

  v18 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((sub_21DBF55EC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v27 = v18;
  v19 = *(v18 + 28);
  v20 = *(v11 + 48);
  sub_21D0D3954(a1 + v19, v13, &unk_27CE60DB0);
  sub_21D0D3954(a2 + v19, &v13[v20], &unk_27CE60DB0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &unk_27CE60DB0);
    if (v21(&v13[v20], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_21;
    }

    (*(v5 + 32))(v7, &v13[v20], v4);
    sub_21DB15960(&qword_27CE64FE0, MEMORY[0x277CC9A70]);
    v23 = sub_21DBFA10C();
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v10, v4);
    sub_21D0CF7E0(v13, &unk_27CE60DB0);
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_25:
    v22 = 0;
    return v22 & 1;
  }

  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_21D0CF7E0(v13, &unk_27CE60DB0);
LABEL_23:
    if (*(a1 + v27[8]) == *(a2 + v27[8]) && *(a1 + v27[9]) == *(a2 + v27[9]))
    {
      v22 = *(a1 + v27[10]) ^ *(a2 + v27[10]) ^ 1;
      return v22 & 1;
    }

    goto LABEL_25;
  }

LABEL_21:
  sub_21D0CF7E0(v13, &qword_27CE66960);
  v22 = 0;
  return v22 & 1;
}

void sub_21DB13AA8(id a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v187) = a3;
  v195 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v10 - 8);
  v186 = &v179 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v12 - 8);
  v189 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v190 = &v179 - v15;
  v193 = sub_21DBF5A2C();
  v198 = *(v193 - 1);
  MEMORY[0x28223BE20](v193);
  v192 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v179 - v18;
  v20 = sub_21DBF509C();
  v191 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v194 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v196 = &v179 - v23;
  v24 = sub_21DBF563C();
  v204 = *(v24 - 8);
  v205 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v179 - v28;
  v200 = sub_21DBF5C4C();
  v197 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v31 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v179 - v33;
  MEMORY[0x28223BE20](v35);
  v199 = &v179 - v36;
  v37 = a5;
  if (!a5)
  {
    v37 = a4;
  }

  v201 = a4;
  v202 = v37;
  v38 = a5;
  v39 = [a1 isAllDay];
  v203 = a6;
  if (v39)
  {
    if (qword_27CE57120 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_27CE667F0);
    v41 = sub_21DBF84AC();
    v42 = sub_21DBFAEBC();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v205;
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21D0C9000, v41, v42, "TTRRemindersListViewModel: Should not display time zone for an all-day reminder", v45, 2u);
      MEMORY[0x223D46520](v45, -1, -1);
    }

LABEL_16:

    v59 = [a1 date];
    sub_21DBF55FC();

    v60 = sub_21DBF55BC();
    v61 = *(v204 + 8);
    v61(v29, v44);
    v62 = [v201 stringFromDate_];

    v63 = sub_21DBFA16C();
    v65 = v64;

    v66 = [a1 &selRef_blueColor];
    sub_21DBF55FC();

    v67 = sub_21DBF55BC();
    v61(v29, v44);
    v68 = v202;
    v69 = [v202 stringFromDate_];

    v70 = sub_21DBFA16C();
    v72 = v71;

    v73 = 0;
    v74 = v203;
    goto LABEL_17;
  }

  v46 = [a1 timeZone];
  if (!v46)
  {
LABEL_12:
    if (qword_27CE57120 != -1)
    {
      swift_once();
    }

    v55 = sub_21DBF84BC();
    __swift_project_value_buffer(v55, qword_27CE667F0);
    v41 = sub_21DBF84AC();
    v56 = sub_21DBFAEBC();
    v57 = os_log_type_enabled(v41, v56);
    v44 = v205;
    if (v57)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_21D0C9000, v41, v56, "TTRRemindersListViewModel: Should not display time zone string for a reminder in the current time zone", v58, 2u);
      MEMORY[0x223D46520](v58, -1, -1);
    }

    goto LABEL_16;
  }

  v181 = v31;
  v182 = v26;
  v188 = a1;
  v184 = v20;
  v47 = v199;
  v48 = v46;
  sub_21DBF5C2C();

  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v49 = sub_21DBF5BFC();
  v50 = v205;
  v51 = v204 + 8;
  v52 = *(v204 + 8);
  v52(v29, v205);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v53 = v195;
  v54 = sub_21DBF5BFC();
  v52(v29, v50);
  if (v49 == v54)
  {
    (v197)[1](v47, v200);
    a1 = v188;
    goto LABEL_12;
  }

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v75 = v188;
  v76 = [v188 date];
  sub_21DBF55FC();

  sub_21DBF58BC();
  v52(v29, v50);
  v77 = *(v198 + 8);
  v198 += 8;
  v77(v19, v193);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v78 = [v75 timeZone];
  v185 = v51;
  v79 = v52;
  if (v78)
  {
    v80 = v78;
    sub_21DBF5C2C();

    v81 = v200;
    v82 = v189;
    v83 = v197;
  }

  else
  {
    v83 = v197;
    v81 = v200;
    (v197[2])(v34, v53, v200);
    v82 = v189;
  }

  v84 = v188;
  v85 = [v188 date];
  sub_21DBF55FC();

  v86 = v192;
  sub_21DBF58BC();
  v79(v29, v205);
  v87 = v83[1];
  v189 = (v83 + 1);
  v183 = v87;
  v87(v34, v81);
  v77(v86, v193);
  v88 = [v84 timeZone];
  v89 = v81;
  if (v88)
  {
    v90 = v88;
    sub_21DBF5C2C();

    v83 = v197;
    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v74 = v203;
  v92 = v190;
  (v83[7])(v82, v91, 1, v81);
  sub_21D0D523C(v82, v92, &unk_27CE60DB0);
  if ((v83[6])(v92, 1, v81) == 1)
  {
    sub_21D0CF7E0(v92, &unk_27CE60DB0);
    v93 = v205;
LABEL_33:
    if (qword_27CE57120 != -1)
    {
      swift_once();
    }

    v113 = sub_21DBF84BC();
    __swift_project_value_buffer(v113, qword_27CE667F0);
    v114 = sub_21DBF84AC();
    v115 = sub_21DBFAEBC();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_21D0C9000, v114, v115, "TTRRemindersListViewModel: Unable to get the current time zone abbreviation for displayDateWithTimeZoneString", v116, 2u);
      MEMORY[0x223D46520](v116, -1, -1);
    }

    v117 = v188;
    v118 = [v188 date];
    sub_21DBF55FC();

    v119 = sub_21DBF55BC();
    v79(v29, v93);
    v120 = [v201 stringFromDate_];

    v63 = sub_21DBFA16C();
    v65 = v121;

    v122 = [v117 &selRef_blueColor];
    sub_21DBF55FC();

    v110 = sub_21DBF55BC();
    v79(v29, v93);
    v111 = v202;
    v112 = [v202 stringFromDate_];
LABEL_38:
    v123 = v112;

    v70 = sub_21DBFA16C();
    v72 = v124;

    v125 = *(v191 + 8);
    v126 = v184;
    v125(v194, v184);
    v125(v196, v126);
    v183(v199, v200);
    v73 = 0;
    goto LABEL_17;
  }

  v94 = [v188 date];
  sub_21DBF55FC();

  v95 = sub_21DBF5BDC();
  v97 = v96;
  v93 = v205;
  v79(v29, v205);
  v183(v92, v89);
  if (!v97)
  {
    goto LABEL_33;
  }

  v98 = v186;
  sub_21DBF4F4C();
  v99 = v204;
  if ((*(v204 + 48))(v98, 1, v93) == 1)
  {

    sub_21D0CF7E0(v98, &qword_27CE58D68);
    if (qword_27CE57120 != -1)
    {
      swift_once();
    }

    v100 = sub_21DBF84BC();
    __swift_project_value_buffer(v100, qword_27CE667F0);
    v101 = sub_21DBF84AC();
    v102 = sub_21DBFAEBC();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_21D0C9000, v101, v102, "TTRRemindersListViewModel: Unable get the date in the current timezone for displayDateWithTimeZoneString", v103, 2u);
      MEMORY[0x223D46520](v103, -1, -1);
    }

    v104 = v188;
    v105 = [v188 date];
    sub_21DBF55FC();

    v106 = sub_21DBF55BC();
    v79(v29, v93);
    v107 = [v201 stringFromDate_];

    v63 = sub_21DBFA16C();
    v65 = v108;

    v109 = [v104 &selRef_blueColor];
    sub_21DBF55FC();

    v110 = sub_21DBF55BC();
    v79(v29, v93);
    v111 = v202;
    v112 = [v202 stringFromDate_];
    goto LABEL_38;
  }

  (*(v99 + 32))(v182, v98, v93);
  v127 = [v188 isAllDay];
  if (v187)
  {
    if (v127)
    {
      if (qword_27CE57140 != -1)
      {
        swift_once();
      }

      v128 = &qword_27CE66818;
    }

    else
    {
      if (qword_280D14230 != -1)
      {
        swift_once();
      }

      v128 = &qword_280D14238;
    }
  }

  else if (v127)
  {
    if (qword_27CE57138 != -1)
    {
      swift_once();
    }

    v128 = &qword_27CE66810;
  }

  else
  {
    if (qword_280D194D8 != -1)
    {
      swift_once();
    }

    v128 = &qword_280D194E0;
  }

  v129 = *v128;
  v130 = [v188 isAllDay];
  v204 = v97;
  v180 = v79;
  v198 = v95;
  if (v187)
  {
    if (v130)
    {
      if (qword_27CE57140 != -1)
      {
        swift_once();
      }

      v131 = &qword_27CE66818;
    }

    else
    {
      if (qword_280D14230 != -1)
      {
        swift_once();
      }

      v131 = &qword_280D14238;
    }
  }

  else if (v130)
  {
    if (qword_27CE57158 != -1)
    {
      swift_once();
    }

    v131 = &qword_27CE66828;
  }

  else
  {
    if (qword_280D14220 != -1)
    {
      swift_once();
    }

    v131 = &qword_280D14228;
  }

  v132 = *v131;
  v133 = sub_21DBF5C0C();
  [v129 setTimeZone_];

  v134 = sub_21DBF55BC();
  v197 = v129;
  v135 = [v129 stringFromDate_];

  v136 = sub_21DBFA16C();
  v187 = v137;

  v138 = sub_21DBF55BC();
  v195 = v132;
  v139 = [v132 stringFromDate_];

  v192 = sub_21DBFA16C();
  v190 = v140;

  v141 = v188;
  if (qword_280D14230 != -1)
  {
    swift_once();
  }

  v142 = qword_280D14238;
  v143 = [v141 timeZone];
  v144 = v200;
  if (v143)
  {
    v145 = v181;
    v146 = v143;
    sub_21DBF5C2C();

    v147 = sub_21DBF5C0C();
    v183(v145, v144);
  }

  else
  {
    v147 = 0;
  }

  [v142 setTimeZone_];

  v148 = [v141 date];
  sub_21DBF55FC();

  v149 = sub_21DBF55BC();
  v180(v29, v205);
  v150 = [v142 stringFromDate_];

  v201 = sub_21DBFA16C();
  v152 = v151;

  v153 = sub_21DBF4F0C();
  v154 = MEMORY[0x277D837D0];
  v193 = v142;
  if (v155 & 1) != 0 || (v156 = v153, v157 = sub_21DBF4F0C(), (v158) || v156 == v157)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_21DC08D10;
    *(v159 + 56) = v154;
    v160 = sub_21D17A884();
    v161 = v187;
    *(v159 + 32) = v136;
    *(v159 + 40) = v161;
    *(v159 + 96) = v154;
    *(v159 + 104) = v160;
    v162 = v201;
    *(v159 + 64) = v160;
    *(v159 + 72) = v162;
    *(v159 + 80) = v152;
    *(v159 + 136) = v154;
    *(v159 + 144) = v160;
    v163 = v204;
    *(v159 + 112) = v198;
    *(v159 + 120) = v163;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v63 = sub_21DBFA17C();
    v65 = v164;

    v73 = 0;
    goto LABEL_80;
  }

  if (v156 < v157)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_87;
    }

    goto LABEL_88;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_88:
    swift_once();
  }

LABEL_87:
  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_21DC08D10;
  *(v173 + 56) = v154;
  v174 = sub_21D17A884();
  v175 = v187;
  *(v173 + 32) = v136;
  *(v173 + 40) = v175;
  *(v173 + 96) = v154;
  *(v173 + 104) = v174;
  v176 = v201;
  *(v173 + 64) = v174;
  *(v173 + 72) = v176;
  *(v173 + 80) = v152;
  *(v173 + 136) = v154;
  *(v173 + 144) = v174;
  v177 = v204;
  *(v173 + 112) = v198;
  *(v173 + 120) = v177;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v63 = sub_21DBFA17C();
  v65 = v178;

  v73 = 1;
LABEL_80:
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_21DC08D10;
  *(v165 + 56) = v154;
  v166 = sub_21D17A884();
  v167 = v190;
  *(v165 + 32) = v192;
  *(v165 + 40) = v167;
  *(v165 + 96) = v154;
  *(v165 + 104) = v166;
  v168 = v201;
  *(v165 + 64) = v166;
  *(v165 + 72) = v168;
  *(v165 + 80) = v152;
  *(v165 + 136) = v154;
  *(v165 + 144) = v166;
  v169 = v204;
  *(v165 + 112) = v198;
  *(v165 + 120) = v169;
  v70 = sub_21DBFA17C();
  v72 = v170;

  v180(v182, v205);
  v171 = *(v191 + 8);
  v172 = v184;
  v171(v194, v184);
  v171(v196, v172);
  v183(v199, v200);
LABEL_17:
  *v74 = v63;
  *(v74 + 8) = v65;
  *(v74 + 16) = v70;
  *(v74 + 24) = v72;
  *(v74 + 32) = v73;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV16urgentIconString4fromSSSgAA19TTRReminderProtocol_p_tFZ_0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if (((*(v2 + 168))(v1, v2) & 1) == 0)
  {
    return 0;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBFA17C();

  sub_21D176F0C();
  sub_21DBFBB8C();
  v3 = sub_21DBFBB5C();

  return v3;
}

uint64_t _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(unint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  sub_21D0D3954(a2, v10, &qword_27CE58D68);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE58D68);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  if (a1 >> 62)
  {
    v16 = sub_21DBFBD7C();
    if (v16 >= 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= 2)
    {
LABEL_7:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v17 = sub_21DBF516C();
      goto LABEL_20;
    }
  }

  if (v16 != 1)
  {
    goto LABEL_19;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x223D44740](0, a1);
    goto LABEL_17;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(a1 + 32);
LABEL_17:
    v19 = v18;
    v20 = objc_opt_self();
    v21 = sub_21DBF55BC();
    v22 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    v23 = sub_21DBF5C0C();
    (*(v5 + 8))(v7, v4);
    v24 = [v20 shortNaturalLanguageDescriptionForRecurrenceRule:v19 date:v21 timeZone:v23 lowercase:0];

    v17 = sub_21DBFA16C();
LABEL_20:
    (*(v12 + 8))(v14, v11);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DB15960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DB159C8(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_21D8DA944(result, a2);
  }

  return result;
}

id sub_21DB159EC(id result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = result;
    v4 = a2;
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return v5;
  }

  return result;
}

id sub_21DB15A4C(id result)
{
  if (result)
  {
    v1 = result;
    sub_21DBF8E0C();

    return v1;
  }

  return result;
}

uint64_t sub_21DB15A90(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_21DB15AA0(a1, a2);
  }

  return a1;
}

uint64_t sub_21DB15AA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }

  return result;
}

id sub_21DB15AE4(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_21D0FB960(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

void sub_21DB15B5C(uint64_t a1, void *a2)
{
  if (a2 != 3)
  {
    sub_21DB15B70(a2);
  }
}

id sub_21DB15B70(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

BOOL _s15RemindersUICore25TTRRemindersListViewModelC4ItemO14itemTypesEqualySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v11);
  v45 = &v42 - v12;
  MEMORY[0x28223BE20](v13);
  v44 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v43 = &v42 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v42 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v42 - v33;
  sub_21D1055C4(v46, &v42 - v33, type metadata accessor for TTRRemindersListViewModel.Item);
  v46 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_21D1055C4(v47, v28, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = swift_getEnumCaseMultiPayload() == 1;
        v37 = v28;
      }

      else
      {
        sub_21D1055C4(v47, v31, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = swift_getEnumCaseMultiPayload() == 0;
        v37 = v31;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_21D1055C4(v47, v10, type metadata accessor for TTRRemindersListViewModel.Item);
      v36 = swift_getEnumCaseMultiPayload() == 2;
      v37 = v10;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21D1055C4(v47, v7, type metadata accessor for TTRRemindersListViewModel.Item);
      v36 = swift_getEnumCaseMultiPayload() == 3;
      v37 = v7;
    }

    else
    {
      sub_21D1055C4(v47, v4, type metadata accessor for TTRRemindersListViewModel.Item);
      v36 = swift_getEnumCaseMultiPayload() == 4;
      v37 = v4;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v39 = v44;
      sub_21D1055C4(v47, v44, type metadata accessor for TTRRemindersListViewModel.Item);
      v36 = swift_getEnumCaseMultiPayload() == 8;
      v37 = v39;
LABEL_21:
      sub_21D107038(v37, type metadata accessor for TTRRemindersListViewModel.Item);
      v40 = v46;
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v25 = v43;
      sub_21D1055C4(v47, v43, type metadata accessor for TTRRemindersListViewModel.Item);
      v38 = swift_getEnumCaseMultiPayload() == 9;
    }

    else
    {
      v25 = v45;
      sub_21D1055C4(v47, v45, type metadata accessor for TTRRemindersListViewModel.Item);
      v38 = swift_getEnumCaseMultiPayload() == 10;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_21D1055C4(v47, v22, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = swift_getEnumCaseMultiPayload() == 6;
        v37 = v22;
      }

      else
      {
        sub_21D1055C4(v47, v19, type metadata accessor for TTRRemindersListViewModel.Item);
        v36 = swift_getEnumCaseMultiPayload() == 7;
        v37 = v19;
      }

      goto LABEL_21;
    }

    sub_21D107038(v46, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D1055C4(v47, v25, type metadata accessor for TTRRemindersListViewModel.Item);
    v38 = swift_getEnumCaseMultiPayload() == 5;
  }

  v36 = v38;
  v40 = v25;
LABEL_27:
  sub_21D107038(v40, type metadata accessor for TTRRemindersListViewModel.Item);
  return v36;
}

unint64_t sub_21DB1616C()
{
  result = qword_280D14118;
  if (!qword_280D14118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14118);
  }

  return result;
}

unint64_t sub_21DB161C0()
{
  result = qword_280D14998;
  if (!qword_280D14998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14998);
  }

  return result;
}

unint64_t sub_21DB16214()
{
  result = qword_280D14290;
  if (!qword_280D14290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14290);
  }

  return result;
}

unint64_t sub_21DB1626C()
{
  result = qword_27CE66898;
  if (!qword_27CE66898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66898);
  }

  return result;
}

unint64_t sub_21DB162C4()
{
  result = qword_27CE668A0;
  if (!qword_27CE668A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668A0);
  }

  return result;
}

unint64_t sub_21DB1631C()
{
  result = qword_27CE668A8;
  if (!qword_27CE668A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668A8);
  }

  return result;
}

unint64_t sub_21DB163BC()
{
  result = qword_27CE668B0;
  if (!qword_27CE668B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668B0);
  }

  return result;
}

unint64_t sub_21DB16414()
{
  result = qword_27CE668B8;
  if (!qword_27CE668B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668B8);
  }

  return result;
}

unint64_t sub_21DB1646C()
{
  result = qword_27CE668C0;
  if (!qword_27CE668C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668C0);
  }

  return result;
}

unint64_t sub_21DB164C4()
{
  result = qword_27CE668C8;
  if (!qword_27CE668C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668C8);
  }

  return result;
}

unint64_t sub_21DB1651C()
{
  result = qword_280D14830;
  if (!qword_280D14830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14830);
  }

  return result;
}

unint64_t sub_21DB16574()
{
  result = qword_280D14828;
  if (!qword_280D14828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14828);
  }

  return result;
}

unint64_t sub_21DB16614()
{
  result = qword_27CE668D0;
  if (!qword_27CE668D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668D0);
  }

  return result;
}

unint64_t sub_21DB166B0()
{
  result = qword_27CE668E8;
  if (!qword_27CE668E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668E8);
  }

  return result;
}

unint64_t sub_21DB16750()
{
  result = qword_27CE668F0;
  if (!qword_27CE668F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668F0);
  }

  return result;
}

unint64_t sub_21DB167A8()
{
  result = qword_27CE668F8;
  if (!qword_27CE668F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE668F8);
  }

  return result;
}

unint64_t sub_21DB16800()
{
  result = qword_27CE66900;
  if (!qword_27CE66900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66900);
  }

  return result;
}

unint64_t sub_21DB16858()
{
  result = qword_27CE66908;
  if (!qword_27CE66908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66908);
  }

  return result;
}

unint64_t sub_21DB168B0()
{
  result = qword_27CE66910;
  if (!qword_27CE66910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66910);
  }

  return result;
}

unint64_t sub_21DB16908()
{
  result = qword_27CE66918;
  if (!qword_27CE66918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66918);
  }

  return result;
}

unint64_t sub_21DB169F0()
{
  result = qword_27CE66920;
  if (!qword_27CE66920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66920);
  }

  return result;
}

unint64_t sub_21DB16A48()
{
  result = qword_280D14988;
  if (!qword_280D14988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14988);
  }

  return result;
}

unint64_t sub_21DB16AA0()
{
  result = qword_280D14990;
  if (!qword_280D14990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14990);
  }

  return result;
}

unint64_t sub_21DB16AF8()
{
  result = qword_27CE66928;
  if (!qword_27CE66928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66928);
  }

  return result;
}

unint64_t sub_21DB16B50()
{
  result = qword_280D14280;
  if (!qword_280D14280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14280);
  }

  return result;
}

unint64_t sub_21DB16BA8()
{
  result = qword_280D14288;
  if (!qword_280D14288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D14288);
  }

  return result;
}

uint64_t destroy for TTRReminderSuggestedLocation(uint64_t a1)
{
}

void *initializeWithCopy for TTRReminderSuggestedLocation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  v5 = a2[3];
  a1[2] = v4;
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  a1[6] = a2[6];
  sub_21DBF8E0C();
  v7 = v4;
  v8 = v5;
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRReminderSuggestedLocation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  v7 = a2[3];
  v8 = a1[3];
  a1[3] = v7;
  v9 = v7;

  a1[4] = a2[4];
  a1[5] = a2[5];
  sub_21DBF8E0C();

  a1[6] = a2[6];
  return a1;
}

uint64_t assignWithTake for TTRReminderSuggestedLocation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void destroy for TTRRemindersListSectionMenuCapabilities(uint64_t a1)
{
  if (*(a1 + 8) != 255)
  {
  }
}

uint64_t sub_21DB16DF0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == 255)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *a2;
    *result = *a2;
    *(result + 8) = v3 & 1;
    v5 = result;
    v6 = v4;
    result = v5;
  }

  *(result + 9) = *(a2 + 9);
  return result;
}

uint64_t assignWithCopy for TTRRemindersListSectionMenuCapabilities(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v11 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v11;
    }

    else
    {
      v8 = *a2;
      *a1 = *a2;
      *(a1 + 8) = v4 & 1;
      v9 = v8;
    }
  }

  else if (v4 == 255)
  {
    sub_21DB16F10(a1);
    v10 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v10;
  }

  else
  {
    v5 = *a2;
    v6 = *a1;
    *a1 = *a2;
    *(a1 + 8) = v4 & 1;
    v7 = v5;
  }

  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListSectionMenuCapabilities(uint64_t result, uint64_t a2)
{
  if (*(result + 8) == 255)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 == 255)
    {
      v6 = result;
      sub_21DB16F10(result);
      result = v6;
      *v6 = *a2;
      *(v6 + 8) = *(a2 + 8);
    }

    else
    {
      v4 = *result;
      *result = *a2;
      *(result + 8) = v3 & 1;
      v5 = result;

      result = v5;
    }
  }

  *(result + 9) = *(a2 + 9);
  return result;
}

uint64_t sub_21DB17008(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21DB17028(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21DB17038(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21DB17008(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListSubtaskDisplayStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21DB17008(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21DB17028(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListSubtaskDisplayStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21DB17028(v4, v5, v6);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.SectionID(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_20;
    }

LABEL_17:
    v10 = *a2;
    *a1 = *a2;
    v11 = v10;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 2)
  {
LABEL_11:
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_11;
  }

LABEL_20:
  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

void destroy for TTRRemindersListViewModel.SectionID(void **a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        return;
      }

      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      return;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
LABEL_9:
      v3 = sub_21DBF563C();
      v4 = *(*(v3 - 8) + 8);

      v4(a1, v3);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  v5 = *a1;
}

void **initializeWithCopy for TTRRemindersListViewModel.SectionID(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_17;
    }

LABEL_15:
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 2)
  {
LABEL_9:
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_9;
  }

LABEL_17:
  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void **assignWithCopy for TTRRemindersListViewModel.SectionID(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_19;
    }

LABEL_16:
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 2)
  {
LABEL_10:
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_10;
  }

LABEL_19:
  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *initializeWithTake for TTRRemindersListViewModel.SectionID(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_8;
    }
  }

  else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
  {
LABEL_8:
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithTake for TTRRemindersListViewModel.SectionID(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_9;
    }
  }

  else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
  {
LABEL_9:
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionID.NamedID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionID.NamedID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionID.EraAndYear(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionID.EraAndYear(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.SectionHeader(void **a1, void **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
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
  v13 = v6[5];
  v14 = a1 + v13;
  v15 = v3 + v13;
  v16 = *(v3 + v13 + 8);
  if (v16)
  {
    v41 = v6;
    v42 = v3;
    *v14 = *v15;
    *(v14 + 1) = v16;
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v19 = *(v15 + 4);
    v20 = *(v15 + 5);
    v21 = *(v15 + 6);
    v22 = *(v15 + 7);
    v23 = v15[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v17, v18, v19, v20, v21, v22, v23);
    *(v14 + 2) = v17;
    *(v14 + 3) = v18;
    *(v14 + 4) = v19;
    *(v14 + 5) = v20;
    *(v14 + 6) = v21;
    *(v14 + 7) = v22;
    v14[64] = v23;
    *(v14 + 65) = *(v15 + 65);
    v24 = v15[120];
    if (v24 == 255)
    {
      *(v14 + 72) = *(v15 + 72);
      *(v14 + 88) = *(v15 + 88);
      *(v14 + 104) = *(v15 + 104);
      v14[120] = v15[120];
    }

    else
    {
      v25 = *(v15 + 9);
      v26 = *(v15 + 10);
      v27 = *(v15 + 11);
      v28 = *(v15 + 12);
      v29 = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = v24 & 1;
      sub_21D0FB960(v25, v26, v27, v28, v29, v30, v24 & 1);
      *(v14 + 9) = v25;
      *(v14 + 10) = v26;
      *(v14 + 11) = v27;
      *(v14 + 12) = v28;
      *(v14 + 13) = v29;
      *(v14 + 14) = v30;
      v14[120] = v31;
    }

    v14[121] = v15[121];
    v6 = v41;
    v3 = v42;
  }

  else
  {
    v32 = *(v15 + 5);
    *(v14 + 4) = *(v15 + 4);
    *(v14 + 5) = v32;
    *(v14 + 6) = *(v15 + 6);
    *(v14 + 106) = *(v15 + 106);
    v33 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v33;
    v34 = *(v15 + 3);
    *(v14 + 2) = *(v15 + 2);
    *(v14 + 3) = v34;
  }

  v35 = v6[7];
  *(a1 + v6[6]) = *(v3 + v6[6]);
  *(a1 + v35) = *(v3 + v35);
  v36 = v6[9];
  *(a1 + v6[8]) = *(v3 + v6[8]);
  *(a1 + v36) = *(v3 + v36);
  v37 = v6[11];
  *(a1 + v6[10]) = *(v3 + v6[10]);
  v38 = *(v3 + v37);
  *(a1 + v37) = v38;
  v39 = v38;
  return a1;
}

void destroy for TTRRemindersListViewModel.SectionHeader(id *a1, uint64_t a2)
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
    v5 = sub_21DBF563C();
    (*(*(v5 - 8) + 8))(a1, v5);
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
  v6 = a1 + *(a2 + 20);
  if (*(v6 + 1))
  {

    sub_21D179EF0(*(v6 + 2), *(v6 + 3), *(v6 + 4), *(v6 + 5), *(v6 + 6), *(v6 + 7), v6[64]);
    v7 = v6[120];
    if (v7 != 255)
    {
      sub_21D1078C0(*(v6 + 9), *(v6 + 10), *(v6 + 11), *(v6 + 12), *(v6 + 13), *(v6 + 14), v7 & 1);
    }
  }

  v8 = *(a1 + *(a2 + 44));
}

void **initializeWithCopy for TTRRemindersListViewModel.SectionHeader(void **a1, void **a2, int *a3)
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
  v11 = a3[5];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(a2 + v11 + 8);
  if (v14)
  {
    v39 = a3;
    v40 = a2;
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = *(v13 + 2);
    v16 = *(v13 + 3);
    v17 = *(v13 + 4);
    v18 = *(v13 + 5);
    v19 = *(v13 + 6);
    v20 = *(v13 + 7);
    v21 = v13[64];
    sub_21DBF8E0C();
    sub_21D2A7DB4(v15, v16, v17, v18, v19, v20, v21);
    *(v12 + 2) = v15;
    *(v12 + 3) = v16;
    *(v12 + 4) = v17;
    *(v12 + 5) = v18;
    *(v12 + 6) = v19;
    *(v12 + 7) = v20;
    v12[64] = v21;
    *(v12 + 65) = *(v13 + 65);
    v22 = v13[120];
    if (v22 == 255)
    {
      *(v12 + 72) = *(v13 + 72);
      *(v12 + 88) = *(v13 + 88);
      *(v12 + 104) = *(v13 + 104);
      v12[120] = v13[120];
    }

    else
    {
      v23 = *(v13 + 9);
      v24 = *(v13 + 10);
      v25 = *(v13 + 11);
      v26 = *(v13 + 12);
      v27 = *(v13 + 13);
      v28 = *(v13 + 14);
      v29 = v22 & 1;
      sub_21D0FB960(v23, v24, v25, v26, v27, v28, v22 & 1);
      *(v12 + 9) = v23;
      *(v12 + 10) = v24;
      *(v12 + 11) = v25;
      *(v12 + 12) = v26;
      *(v12 + 13) = v27;
      *(v12 + 14) = v28;
      v12[120] = v29;
    }

    v12[121] = v13[121];
    a3 = v39;
    a2 = v40;
  }

  else
  {
    v30 = *(v13 + 5);
    *(v12 + 4) = *(v13 + 4);
    *(v12 + 5) = v30;
    *(v12 + 6) = *(v13 + 6);
    *(v12 + 106) = *(v13 + 106);
    v31 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v31;
    v32 = *(v13 + 3);
    *(v12 + 2) = *(v13 + 2);
    *(v12 + 3) = v32;
  }

  v33 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v33) = *(a2 + v33);
  v34 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v34) = *(a2 + v34);
  v35 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v36 = *(a2 + v35);
  *(a1 + v35) = v36;
  v37 = v36;
  return a1;
}

void **assignWithCopy for TTRRemindersListViewModel.SectionHeader(void **a1, void **a2, int *a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
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
  v11 = a3[5];
  v12 = a1 + v11;
  v13 = v4 + v11;
  v14 = *(a1 + v11 + 8);
  v15 = *(v4 + v11 + 8);
  if (v14)
  {
    if (v15)
    {
      v82 = a3;
      v83 = v4;
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 1);
      sub_21DBF8E0C();

      v16 = *(v13 + 2);
      v17 = *(v13 + 3);
      v18 = *(v13 + 4);
      v19 = *(v13 + 5);
      v20 = *(v13 + 6);
      v21 = *(v13 + 7);
      v22 = v13[64];
      sub_21D2A7DB4(v16, v17, v18, v19, v20, v21, v22);
      v23 = *(v12 + 16);
      v24 = *(v12 + 24);
      v25 = *(v12 + 32);
      v26 = *(v12 + 40);
      v27 = *(v12 + 48);
      v28 = *(v12 + 56);
      *(v12 + 16) = v16;
      *(v12 + 24) = v17;
      *(v12 + 32) = v18;
      *(v12 + 40) = v19;
      *(v12 + 48) = v20;
      *(v12 + 56) = v21;
      v29 = *(v12 + 64);
      *(v12 + 64) = v22;
      sub_21D179EF0(v23, v24, v25, v26, v27, v28, v29);
      *(v12 + 65) = v13[65];
      *(v12 + 66) = v13[66];
      *(v12 + 67) = v13[67];
      *(v12 + 68) = v13[68];
      v30 = v13[120];
      if (*(v12 + 120) != 255)
      {
        if (v30 == 255)
        {
          sub_21D2E979C(v12 + 72);
          v74 = *(v13 + 88);
          v75 = *(v13 + 104);
          v76 = v13[120];
          *(v12 + 72) = *(v13 + 72);
          *(v12 + 120) = v76;
          *(v12 + 104) = v75;
          *(v12 + 88) = v74;
        }

        else
        {
          v31 = *(v13 + 9);
          v32 = *(v13 + 10);
          v33 = *(v13 + 11);
          v34 = *(v13 + 12);
          v35 = *(v13 + 13);
          v36 = *(v13 + 14);
          v37 = v30 & 1;
          sub_21D0FB960(v31, v32, v33, v34, v35, v36, v30 & 1);
          v38 = *(v12 + 72);
          v39 = *(v12 + 80);
          v40 = *(v12 + 88);
          v41 = *(v12 + 96);
          v42 = *(v12 + 104);
          v43 = *(v12 + 112);
          v44 = *(v12 + 120);
          *(v12 + 72) = v31;
          *(v12 + 80) = v32;
          *(v12 + 88) = v33;
          *(v12 + 96) = v34;
          *(v12 + 104) = v35;
          *(v12 + 112) = v36;
          *(v12 + 120) = v37;
          sub_21D1078C0(v38, v39, v40, v41, v42, v43, v44);
        }

LABEL_31:
        a3 = v82;
        v4 = v83;
        *(v12 + 121) = v13[121];
        goto LABEL_32;
      }

LABEL_25:
      if (v30 == 255)
      {
        v65 = *(v13 + 72);
        v66 = *(v13 + 88);
        v67 = *(v13 + 104);
        *(v12 + 120) = v13[120];
        *(v12 + 104) = v67;
        *(v12 + 88) = v66;
        *(v12 + 72) = v65;
      }

      else
      {
        v52 = *(v13 + 9);
        v53 = *(v13 + 10);
        v54 = *(v13 + 11);
        v55 = *(v13 + 12);
        v56 = *(v13 + 13);
        v57 = *(v13 + 14);
        v58 = v30 & 1;
        sub_21D0FB960(v52, v53, v54, v55, v56, v57, v30 & 1);
        *(v12 + 72) = v52;
        *(v12 + 80) = v53;
        *(v12 + 88) = v54;
        *(v12 + 96) = v55;
        *(v12 + 104) = v56;
        *(v12 + 112) = v57;
        *(v12 + 120) = v58;
      }

      goto LABEL_31;
    }

    sub_21D179E9C(v12);
    v59 = *(v13 + 3);
    v61 = *v13;
    v60 = *(v13 + 1);
    *(v12 + 32) = *(v13 + 2);
    *(v12 + 48) = v59;
    *v12 = v61;
    *(v12 + 16) = v60;
    v63 = *(v13 + 5);
    v62 = *(v13 + 6);
    v64 = *(v13 + 4);
    *(v12 + 106) = *(v13 + 106);
    *(v12 + 80) = v63;
    *(v12 + 96) = v62;
    *(v12 + 64) = v64;
  }

  else
  {
    if (v15)
    {
      v82 = a3;
      v83 = v4;
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 1);
      v45 = *(v13 + 2);
      v46 = *(v13 + 3);
      v47 = *(v13 + 4);
      v48 = *(v13 + 5);
      v49 = *(v13 + 6);
      v50 = *(v13 + 7);
      v51 = v13[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v45, v46, v47, v48, v49, v50, v51);
      *(v12 + 16) = v45;
      *(v12 + 24) = v46;
      *(v12 + 32) = v47;
      *(v12 + 40) = v48;
      *(v12 + 48) = v49;
      *(v12 + 56) = v50;
      *(v12 + 64) = v51;
      *(v12 + 65) = v13[65];
      *(v12 + 66) = v13[66];
      *(v12 + 67) = v13[67];
      *(v12 + 68) = v13[68];
      v30 = v13[120];
      goto LABEL_25;
    }

    v68 = *v13;
    v69 = *(v13 + 1);
    v70 = *(v13 + 3);
    *(v12 + 32) = *(v13 + 2);
    *(v12 + 48) = v70;
    *v12 = v68;
    *(v12 + 16) = v69;
    v71 = *(v13 + 4);
    v72 = *(v13 + 5);
    v73 = *(v13 + 6);
    *(v12 + 106) = *(v13 + 106);
    *(v12 + 80) = v72;
    *(v12 + 96) = v73;
    *(v12 + 64) = v71;
  }

LABEL_32:
  *(a1 + a3[6]) = *(v4 + a3[6]);
  *(a1 + a3[7]) = *(v4 + a3[7]);
  *(a1 + a3[8]) = *(v4 + a3[8]);
  *(a1 + a3[9]) = *(v4 + a3[9]);
  *(a1 + a3[10]) = *(v4 + a3[10]);
  v77 = a3[11];
  v78 = *(a1 + v77);
  v79 = *(v4 + v77);
  *(a1 + v77) = v79;
  v80 = v79;

  return a1;
}

char *initializeWithTake for TTRRemindersListViewModel.SectionHeader(char *a1, char *a2, int *a3)
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
  v9 = a3[5];
  v10 = a3[6];
  v11 = &a1[v9];
  v12 = &a2[v9];
  *(v11 + 106) = *(v12 + 106);
  v13 = *(v12 + 6);
  *(v11 + 5) = *(v12 + 5);
  *(v11 + 6) = v13;
  v14 = *(v12 + 4);
  v15 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v15;
  v16 = *(v12 + 3);
  *(v11 + 2) = *(v12 + 2);
  *(v11 + 3) = v16;
  *(v11 + 4) = v14;
  a1[v10] = a2[v10];
  v17 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v17] = a2[v17];
  v18 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v18] = a2[v18];
  *&a1[a3[11]] = *&a2[a3[11]];
  return a1;
}

char *assignWithTake for TTRRemindersListViewModel.SectionHeader(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D107038(a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
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
  v9 = a3[5];
  v10 = &a1[v9];
  v11 = &a2[v9];
  if (*&a1[v9 + 8])
  {
    v12 = *(v11 + 1);
    if (v12)
    {
      *v10 = *v11;
      *(v10 + 8) = v12;

      v13 = v11[64];
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      v16 = *(v10 + 32);
      v17 = *(v10 + 40);
      v18 = *(v10 + 48);
      v19 = *(v10 + 56);
      v20 = *(v11 + 2);
      *(v10 + 16) = *(v11 + 1);
      *(v10 + 32) = v20;
      *(v10 + 48) = *(v11 + 3);
      v21 = *(v10 + 64);
      *(v10 + 64) = v13;
      sub_21D179EF0(v14, v15, v16, v17, v18, v19, v21);
      *(v10 + 65) = *(v11 + 65);
      *(v10 + 67) = v11[67];
      *(v10 + 68) = v11[68];
      v22 = *(v10 + 120);
      if (v22 != 255)
      {
        v23 = v11[120];
        if (v23 != 255)
        {
          v24 = *(v10 + 72);
          v25 = *(v10 + 80);
          v26 = *(v10 + 88);
          v27 = *(v10 + 96);
          v28 = *(v10 + 104);
          v29 = *(v10 + 112);
          *(v10 + 72) = *(v11 + 72);
          *(v10 + 88) = *(v11 + 88);
          *(v10 + 104) = *(v11 + 104);
          *(v10 + 120) = v23 & 1;
          sub_21D1078C0(v24, v25, v26, v27, v28, v29, v22 & 1);
LABEL_23:
          *(v10 + 121) = v11[121];
          goto LABEL_24;
        }

        sub_21D2E979C(v10 + 72);
      }

      *(v10 + 72) = *(v11 + 72);
      *(v10 + 88) = *(v11 + 88);
      *(v10 + 104) = *(v11 + 104);
      *(v10 + 120) = v11[120];
      goto LABEL_23;
    }

    sub_21D179E9C(v10);
  }

  v30 = *(v11 + 5);
  *(v10 + 64) = *(v11 + 4);
  *(v10 + 80) = v30;
  *(v10 + 96) = *(v11 + 6);
  *(v10 + 106) = *(v11 + 106);
  v31 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 16) = v31;
  v32 = *(v11 + 3);
  *(v10 + 32) = *(v11 + 2);
  *(v10 + 48) = v32;
LABEL_24:
  v33 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v33] = a2[v33];
  v34 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v34] = a2[v34];
  v35 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  v36 = *&a1[v35];
  *&a1[v35] = *&a2[v35];

  return a1;
}

uint64_t sub_21DB19738()
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionID(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void destroy for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1)
{

  sub_21D179EF0(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v2 = *(a1 + 120);
  if (v2 != 255)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    v6 = *(a1 + 96);
    v7 = *(a1 + 104);
    v8 = *(a1 + 112);

    sub_21D1078C0(v3, v4, v5, v6, v7, v8, v2 & 1);
  }
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_21DBF8E0C();
  sub_21D2A7DB4(v5, v6, v7, v8, v9, v10, v11);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 65) = *(a2 + 65);
  v12 = *(a2 + 120);
  if (v12 == 255)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
  }

  else
  {
    v13 = *(a2 + 72);
    v14 = *(a2 + 80);
    v15 = *(a2 + 88);
    v16 = *(a2 + 96);
    v17 = *(a2 + 104);
    v18 = *(a2 + 112);
    v19 = v12 & 1;
    sub_21D0FB960(v13, v14, v15, v16, v17, v18, v12 & 1);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v19;
  }

  *(a1 + 121) = *(a2 + 121);
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  sub_21D2A7DB4(v4, v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  v17 = *(a1 + 64);
  *(a1 + 64) = v10;
  sub_21D179EF0(v11, v12, v13, v14, v15, v16, v17);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 67) = *(a2 + 67);
  *(a1 + 68) = *(a2 + 68);
  v18 = *(a2 + 120);
  if (*(a1 + 120) == 255)
  {
    if (v18 == 255)
    {
      v43 = *(a2 + 72);
      v44 = *(a2 + 88);
      v45 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v45;
      *(a1 + 88) = v44;
      *(a1 + 72) = v43;
    }

    else
    {
      v33 = *(a2 + 72);
      v34 = *(a2 + 80);
      v35 = *(a2 + 88);
      v36 = *(a2 + 96);
      v37 = *(a2 + 104);
      v38 = *(a2 + 112);
      v39 = v18 & 1;
      sub_21D0FB960(v33, v34, v35, v36, v37, v38, v18 & 1);
      *(a1 + 72) = v33;
      *(a1 + 80) = v34;
      *(a1 + 88) = v35;
      *(a1 + 96) = v36;
      *(a1 + 104) = v37;
      *(a1 + 112) = v38;
      *(a1 + 120) = v39;
    }
  }

  else if (v18 == 255)
  {
    sub_21D2E979C(a1 + 72);
    v40 = *(a2 + 88);
    v41 = *(a2 + 104);
    v42 = *(a2 + 120);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 120) = v42;
    *(a1 + 104) = v41;
    *(a1 + 88) = v40;
  }

  else
  {
    v19 = *(a2 + 72);
    v20 = *(a2 + 80);
    v21 = *(a2 + 88);
    v22 = *(a2 + 96);
    v23 = *(a2 + 104);
    v24 = *(a2 + 112);
    v25 = v18 & 1;
    sub_21D0FB960(v19, v20, v21, v22, v23, v24, v18 & 1);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 96);
    v30 = *(a1 + 104);
    v31 = *(a1 + 112);
    v32 = *(a1 + 120);
    *(a1 + 72) = v19;
    *(a1 + 80) = v20;
    *(a1 + 88) = v21;
    *(a1 + 96) = v22;
    *(a1 + 104) = v23;
    *(a1 + 112) = v24;
    *(a1 + 120) = v25;
    sub_21D1078C0(v26, v27, v28, v29, v30, v31, v32);
  }

  *(a1 + 121) = *(a2 + 121);
  return a1;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 64);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v12;
  *(a1 + 48) = *(a2 + 48);
  v13 = *(a1 + 64);
  *(a1 + 64) = v5;
  sub_21D179EF0(v6, v7, v8, v9, v10, v11, v13);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 67) = *(a2 + 67);
  *(a1 + 68) = *(a2 + 68);
  v14 = *(a1 + 120);
  if (v14 == 255)
  {
    goto LABEL_5;
  }

  v15 = *(a2 + 120);
  if (v15 == 255)
  {
    sub_21D2E979C(a1 + 72);
LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    goto LABEL_6;
  }

  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  v21 = *(a1 + 112);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v15 & 1;
  sub_21D1078C0(v16, v17, v18, v19, v20, v21, v14 & 1);
LABEL_6:
  *(a1 + 121) = *(a2 + 121);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D2A7DB4(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D2A7DB4(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_21D179EF0(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  sub_21D179EF0(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 49))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21DB19F78(uint64_t a1)
{
  v1 = *(a1 + 48) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21DB19FA4(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -64;
  }

  return result;
}

void destroy for TTRRemindersListViewModel.AssignmentData(uint64_t a1)
{
  if (*a1)
  {

    v2 = *(a1 + 112);
    if (v2)
    {

      v3 = *(a1 + 216);
    }
  }
}

uint64_t initializeWithCopy for TTRRemindersListViewModel.AssignmentData(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v6 = *(a2 + 8);
    v5 = *(a2 + 16);
    *a1 = v4;
    *(a1 + 8) = v6;
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    *(a1 + 16) = v5;
    *(a1 + 24) = v8;
    v10 = *(a2 + 40);
    v9 = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a1 + 40) = v10;
    v12 = *(a2 + 56);
    v11 = *(a2 + 64);
    *(a1 + 48) = v9;
    *(a1 + 56) = v12;
    v13 = *(a2 + 72);
    *(a1 + 64) = v11;
    *(a1 + 72) = v13;
    v14 = (a2 + 112);
    v46 = *(a2 + 112);
    v15 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v15;
    *(a1 + 96) = *(a2 + 96);
    v16 = *(a2 + 104);
    *(a1 + 104) = v16;
    v17 = v4;
    v18 = v6;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v19 = v16;
    if (v46)
    {
      v21 = *(a2 + 120);
      v20 = *(a2 + 128);
      *(a1 + 112) = v46;
      *(a1 + 120) = v21;
      v23 = *(a2 + 136);
      v22 = *(a2 + 144);
      *(a1 + 128) = v20;
      *(a1 + 136) = v23;
      v25 = *(a2 + 152);
      v24 = *(a2 + 160);
      *(a1 + 144) = v22;
      *(a1 + 152) = v25;
      v27 = *(a2 + 168);
      v26 = *(a2 + 176);
      *(a1 + 160) = v24;
      *(a1 + 168) = v27;
      v29 = *(a2 + 184);
      v28 = *(a2 + 192);
      *(a1 + 176) = v26;
      *(a1 + 184) = v29;
      v30 = *(a2 + 200);
      *(a1 + 192) = v28;
      *(a1 + 200) = v30;
      *(a1 + 208) = *(a2 + 208);
      v31 = *(a2 + 216);
      *(a1 + 216) = v31;
      v32 = v46;
      v33 = v21;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v34 = v31;
    }

    else
    {
      v42 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v42;
      *(a1 + 208) = *(a2 + 208);
      v43 = *(a2 + 128);
      *(a1 + 112) = *v14;
      *(a1 + 128) = v43;
      v44 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v44;
    }
  }

  else
  {
    v35 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v35;
    v36 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v36;
    v37 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v37;
    v38 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v38;
    v39 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v39;
    v40 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v40;
    v41 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v41;
  }

  *(a1 + 224) = *(a2 + 224);
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.AssignmentData(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v24 = *(a2 + 8);
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      v25 = *(a2 + 104);
      *(a1 + 104) = v25;
      v26 = (a2 + 112);
      v70 = *(a2 + 112);
      v27 = v5;
      v28 = v24;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v29 = v25;
      if (v70)
      {
        *(a1 + 112) = v70;
        v30 = *(a2 + 120);
        *(a1 + 120) = v30;
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        v31 = *(a2 + 216);
        *(a1 + 216) = v31;
        v32 = v70;
LABEL_12:
        v44 = v30;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v45 = v31;
        goto LABEL_17;
      }

      v62 = *v26;
      v63 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v63;
      *(a1 + 112) = v62;
      v53 = *(a2 + 160);
      v54 = *(a2 + 176);
      v55 = *(a2 + 192);
      v56 = *(a2 + 208);
    }

    else
    {
      v46 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v46;
      v47 = *(a2 + 32);
      v48 = *(a2 + 48);
      v49 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v49;
      *(a1 + 32) = v47;
      *(a1 + 48) = v48;
      v50 = *(a2 + 96);
      v51 = *(a2 + 112);
      v52 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v52;
      *(a1 + 96) = v50;
      *(a1 + 112) = v51;
      v53 = *(a2 + 160);
      v54 = *(a2 + 176);
      v55 = *(a2 + 192);
      v56 = *(a2 + 208);
    }

    *(a1 + 192) = v55;
    *(a1 + 208) = v56;
    *(a1 + 160) = v53;
    *(a1 + 176) = v54;
    goto LABEL_17;
  }

  if (!v5)
  {
    sub_21D30DA58(a1);
    v33 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v33;
    v34 = *(a2 + 80);
    v36 = *(a2 + 32);
    v35 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v34;
    *(a1 + 32) = v36;
    *(a1 + 48) = v35;
    v37 = *(a2 + 144);
    v39 = *(a2 + 96);
    v38 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v37;
    *(a1 + 96) = v39;
    *(a1 + 112) = v38;
    v40 = *(a2 + 208);
    v42 = *(a2 + 160);
    v41 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v40;
    *(a1 + 160) = v42;
    *(a1 + 176) = v41;
    goto LABEL_17;
  }

  *a1 = v5;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 104);
  *(a1 + 104) = v11;
  v12 = v11;

  v13 = (a1 + 112);
  v14 = *(a1 + 112);
  v16 = (a2 + 112);
  v15 = *(a2 + 112);
  if (!v14)
  {
    if (!v15)
    {
      v65 = *v16;
      v66 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v66;
      *v13 = v65;
      v67 = *(a2 + 160);
      v68 = *(a2 + 176);
      v69 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v69;
      *(a1 + 160) = v67;
      *(a1 + 176) = v68;
      goto LABEL_17;
    }

    *(a1 + 112) = v15;
    v30 = *(a2 + 120);
    *(a1 + 120) = v30;
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    v31 = *(a2 + 216);
    *(a1 + 216) = v31;
    v43 = v15;
    goto LABEL_12;
  }

  if (v15)
  {
    *(a1 + 112) = v15;
    v17 = v15;

    v18 = *(a1 + 120);
    v19 = *(a2 + 120);
    *(a1 + 120) = v19;
    v20 = v19;

    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    sub_21DBF8E0C();

    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    sub_21DBF8E0C();

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    sub_21DBF8E0C();

    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    sub_21DBF8E0C();

    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    sub_21DBF8E0C();

    *(a1 + 208) = *(a2 + 208);
    v21 = *(a1 + 216);
    v22 = *(a2 + 216);
    *(a1 + 216) = v22;
    v23 = v22;
  }

  else
  {
    sub_21D30DA04(a1 + 112);
    v58 = *(a2 + 128);
    v57 = *(a2 + 144);
    *v13 = *v16;
    *(a1 + 128) = v58;
    *(a1 + 144) = v57;
    v59 = *(a2 + 208);
    v61 = *(a2 + 160);
    v60 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v59;
    *(a1 + 160) = v61;
    *(a1 + 176) = v60;
  }

LABEL_17:
  *(a1 + 224) = *(a2 + 224);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.AssignmentData(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if (!*a2)
  {
    sub_21D30DA58(a1);
LABEL_7:
    v21 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v21;
    v22 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v22;
    v23 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v23;
    v24 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v24;
    v25 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v25;
    v26 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v26;
    v27 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v27;
    goto LABEL_10;
  }

  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;

  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;

  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;

  *(a1 + 96) = *(a2 + 96);
  v11 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  v12 = *(a1 + 112);
  v13 = *(a2 + 112);
  if (!v12)
  {
LABEL_9:
    v28 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v28;
    *(a1 + 208) = *(a2 + 208);
    v29 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v29;
    v30 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v30;
    goto LABEL_10;
  }

  if (!v13)
  {
    sub_21D30DA04(a1 + 112);
    goto LABEL_9;
  }

  *(a1 + 112) = v13;

  v14 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v15 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v15;

  v16 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v16;

  v17 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v17;

  v18 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v18;

  v19 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v19;

  *(a1 + 208) = *(a2 + 208);
  v20 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);

LABEL_10:
  *(a1 + 224) = *(a2 + 224);
  return a1;
}