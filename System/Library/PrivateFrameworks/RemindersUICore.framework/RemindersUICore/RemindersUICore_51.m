void *sub_21D5AF91C(void *a1, void *a2, int *a3)
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
  v42 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v42) = *(a2 + v42);
  v43 = a3[7];
  v44 = a3[8];
  v45 = a1 + v43;
  v46 = a2 + v43;
  *v45 = *v46;
  *(v45 + 2) = *(v46 + 2);
  *(a1 + v44) = *(a2 + v44);
  v47 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v48 = a1 + v47;
  v49 = a2 + v47;
  v50 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50))
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
    memcpy(v48, v49, *(*(v52 - 8) + 64));
  }

  else
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v49, 1, v53))
    {
      memcpy(v48, v49, *(v51 + 64));
    }

    else
    {
      v98 = v54;
      v55 = sub_21DBF563C();
      v95 = *(v55 - 8);
      v96 = v55;
      v94 = *(v95 + 32);
      v94(v48, v49);
      v56 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
      v48[v56[5]] = v49[v56[5]];
      v57 = v56[6];
      v58 = sub_21DBF509C();
      (*(*(v58 - 8) + 32))(&v48[v57], &v49[v57], v58);
      v48[v56[7]] = v49[v56[7]];
      v59 = v56[8];
      v60 = &v48[v59];
      v61 = &v49[v59];
      v60[16] = v61[16];
      *v60 = *v61;
      v48[v56[9]] = v49[v56[9]];
      v48[v56[10]] = v49[v56[10]];
      v48[v56[11]] = v49[v56[11]];
      *&v48[v56[12]] = *&v49[v56[12]];
      v62 = *(v53 + 48);
      v63 = &v48[v62];
      v64 = &v49[v62];
      v65 = *(v64 + 2);
      *(v63 + 1) = *(v64 + 1);
      *(v63 + 2) = v65;
      *v63 = *v64;
      v97 = v53;
      v66 = *(v53 + 64);
      v100 = &v48[v66];
      v67 = &v49[v66];
      v68 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v69 = *(v68 - 8);
      v99 = v67;
      if ((*(v69 + 48))(v67, 1, v68))
      {
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
        memcpy(v100, v67, *(*(v70 - 8) + 64));
        v72 = v97;
        v71 = v98;
      }

      else
      {
        *v100 = *v67;
        v73 = *(v68 + 20);
        if ((*(v95 + 48))(&v99[v73], 1, v96))
        {
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy(&v100[v73], &v99[v73], *(*(v74 - 8) + 64));
        }

        else
        {
          (v94)(&v100[v73], &v99[v73], v96);
          (*(v95 + 56))(&v100[v73], 0, 1, v96);
        }

        v72 = v97;
        (*(v69 + 56))(v100, 0, 1, v68);
        v71 = v98;
      }

      v48[*(v72 + 80)] = v49[*(v72 + 80)];
      v48[*(v72 + 96)] = v49[*(v72 + 96)];
      (*(v71 + 56))(v48, 0, 1, v72);
    }

    (*(v51 + 56))(v48, 0, 1, v50);
  }

  v75 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v76 = a1 + v75;
  v77 = a2 + v75;
  v78 = *(v77 + 1);
  *v76 = *v77;
  *(v76 + 1) = v78;
  *(v76 + 2) = *(v77 + 2);
  v76[48] = v77[48];
  v79 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  v80 = (a1 + v79);
  v81 = (a2 + v79);
  v82 = v81[3];
  v80[2] = v81[2];
  v80[3] = v82;
  v80[4] = v81[4];
  *(v80 + 73) = *(v81 + 73);
  v83 = v81[1];
  *v80 = *v81;
  v80[1] = v83;
  v84 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v84) = *(a2 + v84);
  v85 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v85) = *(a2 + v85);
  v86 = a3[19];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v88 = *(v87 - 8);
  if ((*(v88 + 48))(a2 + v86, 1, v87))
  {
    v89 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
    memcpy(a1 + v86, a2 + v86, *(*(v89 - 8) + 64));
  }

  else
  {
    v90 = sub_21DBF54CC();
    v91 = *(v90 - 8);
    if ((*(v91 + 48))(a2 + v86, 1, v90))
    {
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(a1 + v86, a2 + v86, *(*(v92 - 8) + 64));
    }

    else
    {
      (*(v91 + 32))(a1 + v86, a2 + v86, v90);
      (*(v91 + 56))(a1 + v86, 0, 1, v90);
    }

    (*(v88 + 56))(a1 + v86, 0, 1, v87);
  }

  return a1;
}

_BYTE *sub_21D5B10A8(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D106BB8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
        goto LABEL_89;
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

LABEL_89:
  v42 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v43 = *&a1[v42];
  *&a1[v42] = *&a2[v42];

  v44 = a3[7];
  v45 = &a1[v44];
  v46 = &a2[v44];
  *v45 = a2[v44];
  *(v45 + 1) = *&a2[v44 + 8];

  *(v45 + 2) = *(v46 + 2);

  *&a1[a3[8]] = *&a2[a3[8]];

  v47 = a3[9];
  v48 = *&a1[v47];
  *&a1[v47] = *&a2[v47];

  v49 = a3[10];
  v50 = &a1[v49];
  v51 = &a2[v49];
  v52 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v55 = v54(v50, 1, v52);
  v56 = v54(v51, 1, v52);
  if (!v55)
  {
    if (v56)
    {
      sub_21D106BB8(v50, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
      goto LABEL_95;
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
    __src = *(v60 - 1);
    v61 = __src[6];
    v62 = v61(v50, 1, v60);
    v63 = v61(v51, 1, v60);
    if (v62)
    {
      if (!v63)
      {
        v64 = sub_21DBF563C();
        v201 = *(v64 - 8);
        v204 = v64;
        v198 = *(v201 + 32);
        (v198)(v50, v51);
        v65 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
        v50[v65[5]] = v51[v65[5]];
        v66 = v65[6];
        v67 = sub_21DBF509C();
        (*(*(v67 - 8) + 32))(&v50[v66], &v51[v66], v67);
        v50[v65[7]] = v51[v65[7]];
        v68 = v65[8];
        v69 = &v50[v68];
        v70 = &v51[v68];
        v69[16] = v70[16];
        *v69 = *v70;
        v50[v65[9]] = v51[v65[9]];
        v50[v65[10]] = v51[v65[10]];
        v50[v65[11]] = v51[v65[11]];
        *&v50[v65[12]] = *&v51[v65[12]];
        v71 = v60[12];
        v72 = &v50[v71];
        v73 = &v51[v71];
        v74 = v73[2];
        v72[1] = v73[1];
        v72[2] = v74;
        *v72 = *v73;
        v75 = v60[16];
        v76 = &v50[v75];
        v77 = &v51[v75];
        v78 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
        v79 = *(v78 - 8);
        if ((*(v79 + 48))(v77, 1, v78))
        {
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
          memcpy(v76, v77, *(*(v80 - 8) + 64));
        }

        else
        {
          v195 = v76;
          *v76 = *v77;
          v125 = *(v78 + 20);
          if ((*(v201 + 48))(v77 + v125, 1, v204))
          {
            v126 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
            v127 = v195 + v125;
            v128 = v77 + v125;
            v129 = v195;
            memcpy(v127, v128, v126);
          }

          else
          {
            v198(v195 + v125, v77 + v125, v204);
            v186 = v195 + v125;
            v129 = v195;
            (*(v201 + 56))(v186, 0, 1, v204);
          }

          (*(v79 + 56))(v129, 0, 1, v78);
        }

        v50[v60[20]] = v51[v60[20]];
        v50[v60[24]] = v51[v60[24]];
        (__src[7])(v50, 0, 1, v60);
        goto LABEL_117;
      }

      goto LABEL_105;
    }

    if (v63)
    {
      sub_21D0CF7E0(v50, &qword_27CE5C678);
LABEL_105:
      v59 = *(v53 + 64);
      goto LABEL_96;
    }

    v101 = sub_21DBF563C();
    v197 = *(v101 - 8);
    v200 = v101;
    v192 = *(v197 + 40);
    (v192)(v50, v51);
    v102 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v50[v102[5]] = v51[v102[5]];
    v103 = v102[6];
    v104 = sub_21DBF509C();
    (*(*(v104 - 8) + 40))(&v50[v103], &v51[v103], v104);
    v50[v102[7]] = v51[v102[7]];
    v105 = v102[8];
    v106 = &v50[v105];
    v107 = &v51[v105];
    v106[16] = v107[16];
    *v106 = *v107;
    v50[v102[9]] = v51[v102[9]];
    v50[v102[10]] = v51[v102[10]];
    v50[v102[11]] = v51[v102[11]];
    v108 = v102[12];
    v109 = &v50[v108];
    v110 = &v51[v108];
    v112 = *v110;
    v111 = v110[1];
    *v109 = v112;
    v109[1] = v111;

    v113 = v60[12];
    v114 = &v50[v113];
    v115 = &v51[v113];
    *v114 = *&v51[v113];
    v114[8] = v51[v113 + 8];
    v116 = *&v51[v113 + 24];
    *(v114 + 2) = *&v51[v113 + 16];
    *(v114 + 3) = v116;

    v117 = *(v115 + 5);
    *(v114 + 4) = *(v115 + 4);
    *(v114 + 5) = v117;

    v118 = v60[16];
    v119 = &v50[v118];
    __srcb = &v51[v118];
    v120 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v194 = *(v120 - 8);
    v121 = *(v194 + 48);
    v206 = v119;
    LODWORD(v119) = v121(v119, 1, v120);
    v122 = v121(__srcb, 1, v120);
    if (v119)
    {
      if (!v122)
      {
        *v206 = *__srcb;
        v184 = *(v120 + 20);
        if ((*(v197 + 48))(&__srcb[v184], 1, v200))
        {
          v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy((v206 + v184), &__srcb[v184], *(*(v185 - 8) + 64));
        }

        else
        {
          (*(v197 + 32))(v206 + v184, &__srcb[v184], v200);
          (*(v197 + 56))(v206 + v184, 0, 1, v200);
        }

        (*(v194 + 56))(v206, 0, 1, v120);
        goto LABEL_159;
      }

      v123 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v124 = v206;
    }

    else
    {
      if (!v122)
      {
        v187 = *(__srcb + 1);
        *v206 = *__srcb;
        *(v206 + 8) = v187;

        v188 = *(v120 + 20);
        v189 = *(v197 + 48);
        v203 = v189(v206 + v188, 1, v200);
        v190 = v189(&__srcb[v188], 1, v200);
        if (v203)
        {
          if (!v190)
          {
            (*(v197 + 32))(v206 + v188, &__srcb[v188], v200);
            (*(v197 + 56))(v206 + v188, 0, 1, v200);
            goto LABEL_159;
          }

          v123 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v124 = (v206 + v188);
        }

        else
        {
          if (!v190)
          {
            v192(v206 + v188, &__srcb[v188], v200);
            goto LABEL_159;
          }

          (*(v197 + 8))(v206 + v188, v200);
          v123 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v124 = (v206 + v188);
        }

        v183 = &__srcb[v188];
LABEL_148:
        memcpy(v124, v183, v123);
LABEL_159:
        v50[v60[20]] = v51[v60[20]];
        v50[v60[24]] = v51[v60[24]];
        goto LABEL_117;
      }

      sub_21D106BB8(v206, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      v123 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v124 = v206;
    }

    v183 = __srcb;
    goto LABEL_148;
  }

  if (v56)
  {
LABEL_95:
    v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998) - 8) + 64);
LABEL_96:
    memcpy(v50, v51, v59);
    goto LABEL_117;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v51, 1, v57))
  {
    memcpy(v50, v51, *(v53 + 64));
  }

  else
  {
    v202 = v58;
    v81 = sub_21DBF563C();
    v193 = *(v81 - 8);
    v196 = v81;
    v191 = *(v193 + 32);
    (v191)(v50, v51);
    v82 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v50[v82[5]] = v51[v82[5]];
    v83 = v82[6];
    v84 = sub_21DBF509C();
    (*(*(v84 - 8) + 32))(&v50[v83], &v51[v83], v84);
    v50[v82[7]] = v51[v82[7]];
    v85 = v82[8];
    v86 = &v50[v85];
    v87 = &v51[v85];
    v86[16] = v87[16];
    *v86 = *v87;
    v50[v82[9]] = v51[v82[9]];
    v50[v82[10]] = v51[v82[10]];
    v50[v82[11]] = v51[v82[11]];
    *&v50[v82[12]] = *&v51[v82[12]];
    v88 = *(v57 + 48);
    v89 = &v50[v88];
    v90 = &v51[v88];
    v91 = v90[2];
    v89[1] = v90[1];
    v89[2] = v91;
    *v89 = *v90;
    v199 = v57;
    v92 = *(v57 + 64);
    __srca = &v50[v92];
    v93 = &v51[v92];
    v94 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v95 = *(v94 - 8);
    v205 = v93;
    if ((*(v95 + 48))(v93, 1, v94))
    {
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__srca, v93, *(*(v96 - 8) + 64));
      v98 = v199;
      v97 = v202;
    }

    else
    {
      *__srca = *v93;
      v99 = *(v94 + 20);
      if ((*(v193 + 48))(&v205[v99], 1, v196))
      {
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(__srca + v99, &v205[v99], *(*(v100 - 8) + 64));
      }

      else
      {
        v191(__srca + v99, &v205[v99], v196);
        (*(v193 + 56))(__srca + v99, 0, 1, v196);
      }

      v98 = v199;
      (*(v95 + 56))(__srca, 0, 1, v94);
      v97 = v202;
    }

    v50[*(v98 + 80)] = v51[*(v98 + 80)];
    v50[*(v98 + 96)] = v51[*(v98 + 96)];
    (*(v97 + 56))(v50, 0, 1, v98);
  }

  (*(v53 + 56))(v50, 0, 1, v52);
LABEL_117:
  *&a1[a3[11]] = *&a2[a3[11]];

  v130 = a3[12];
  v131 = &a1[v130];
  v132 = &a2[v130];
  v133 = a1[v130 + 48];
  if (v133 != 255)
  {
    v134 = v132[48];
    if (v134 != 255)
    {
      v135 = *v131;
      v136 = *(v131 + 8);
      v137 = *(v131 + 16);
      v138 = *(v131 + 24);
      v139 = *(v131 + 32);
      v140 = *(v131 + 40);
      v141 = *(v132 + 1);
      *v131 = *v132;
      *(v131 + 16) = v141;
      *(v131 + 32) = *(v132 + 2);
      *(v131 + 48) = v134 & 1;
      sub_21D1078C0(v135, v136, v137, v138, v139, v140, v133 & 1);
      goto LABEL_122;
    }

    sub_21D2E979C(v131);
  }

  v142 = *(v132 + 1);
  *v131 = *v132;
  *(v131 + 16) = v142;
  *(v131 + 32) = *(v132 + 2);
  *(v131 + 48) = v132[48];
LABEL_122:
  v143 = a3[13];
  v144 = &a1[v143];
  v145 = &a2[v143];
  v147 = *v145;
  v146 = v145[1];
  *v144 = v147;
  v144[1] = v146;

  v148 = a3[14];
  v149 = &a1[v148];
  v150 = &a2[v148];
  if (*&a1[v148 + 8] == 1)
  {
LABEL_125:
    v152 = *(v150 + 3);
    *(v149 + 32) = *(v150 + 2);
    *(v149 + 48) = v152;
    *(v149 + 64) = *(v150 + 4);
    *(v149 + 73) = *(v150 + 73);
    v153 = *(v150 + 1);
    *v149 = *v150;
    *(v149 + 16) = v153;
    goto LABEL_127;
  }

  v151 = *(v150 + 1);
  if (v151 == 1)
  {
    sub_21D5AF8C8(v149);
    goto LABEL_125;
  }

  *v149 = *v150;
  *(v149 + 8) = v151;

  v154 = v150[64];
  v155 = *(v149 + 16);
  v156 = *(v149 + 24);
  v157 = *(v149 + 32);
  v158 = *(v149 + 40);
  v159 = *(v149 + 48);
  v160 = *(v149 + 56);
  v161 = *(v149 + 64);
  v162 = *(v150 + 2);
  *(v149 + 16) = *(v150 + 1);
  *(v149 + 32) = v162;
  *(v149 + 48) = *(v150 + 3);
  *(v149 + 64) = v154;
  sub_21D1078C0(v155, v156, v157, v158, v159, v160, v161);
  v163 = v150[88];
  v164 = *(v149 + 72);
  v165 = *(v149 + 80);
  v166 = *(v149 + 88);
  *(v149 + 72) = *(v150 + 72);
  *(v149 + 88) = v163;
  sub_21D0FB9F4(v164, v165, v166);
LABEL_127:
  v167 = a3[16];
  a1[a3[15]] = a2[a3[15]];
  *&a1[v167] = *&a2[v167];

  v168 = a3[18];
  a1[a3[17]] = a2[a3[17]];
  a1[v168] = a2[v168];
  v169 = a3[19];
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v171 = *(v170 - 8);
  v172 = *(v171 + 48);
  v173 = v172(&a1[v169], 1, v170);
  v174 = v172(&a2[v169], 1, v170);
  if (v173)
  {
    if (!v174)
    {
      v175 = sub_21DBF54CC();
      v176 = *(v175 - 8);
      if ((*(v176 + 48))(&a2[v169], 1, v175))
      {
        v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(&a1[v169], &a2[v169], *(*(v177 - 8) + 64));
      }

      else
      {
        (*(v176 + 32))(&a1[v169], &a2[v169], v175);
        (*(v176 + 56))(&a1[v169], 0, 1, v175);
      }

      goto LABEL_139;
    }

    goto LABEL_133;
  }

  if (v174)
  {
    sub_21D0CF7E0(&a1[v169], &unk_27CE62230);
LABEL_133:
    v178 = type metadata accessor for TTRIQuickEntryViewModel.URLState(0);
    goto LABEL_134;
  }

  v170 = sub_21DBF54CC();
  v171 = *(v170 - 8);
  v179 = *(v171 + 48);
  v180 = v179(&a1[v169], 1, v170);
  v181 = v179(&a2[v169], 1, v170);
  if (v180)
  {
    if (!v181)
    {
      (*(v171 + 32))(&a1[v169], &a2[v169], v170);
LABEL_139:
      (*(v171 + 56))(&a1[v169], 0, 1, v170);
      return a1;
    }
  }

  else
  {
    if (!v181)
    {
      (*(v171 + 40))(&a1[v169], &a2[v169], v170);
      return a1;
    }

    (*(v171 + 8))(&a1[v169], v170);
  }

  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
LABEL_134:
  memcpy(&a1[v169], &a2[v169], *(*(v178 - 8) + 64));
  return a1;
}

void sub_21D5B33F8()
{
  type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v0 <= 0x3F)
  {
    sub_21D5B458C(319, &qword_27CE5E7F0, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TTRIQuickEntryViewModel.URLState(319);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel.URLState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = sub_21DBF54CC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(a1, a2, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1, a2, v12);
      (*(v13 + 56))(a1, 0, 1, v12);
    }

    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TTRReminderDetailViewModel.URLState(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = sub_21DBF54CC();
    v6 = *(v4 - 8);
    result = (*(v6 + 48))(a1, 1, v4);
    if (!result)
    {
      v5 = *(v6 + 8);

      return v5(a1, v4);
    }
  }

  return result;
}

void *initializeWithCopy for TTRReminderDetailViewModel.URLState(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF54CC();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 1, v10))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(a1, a2, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a1, a2, v10);
      (*(v11 + 56))(a1, 0, 1, v10);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *assignWithCopy for TTRReminderDetailViewModel.URLState(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_21DBF54CC();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2, 1, v11))
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(a1, a2, *(*(v13 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(a1, a2, v11);
        (*(v12 + 56))(a1, 0, 1, v11);
      }

      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }

    goto LABEL_7;
  }

  if (!v10)
  {
    v16 = sub_21DBF54CC();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v18(a1, 1, v16);
    v20 = v18(a2, 1, v16);
    if (v19)
    {
      if (!v20)
      {
        (*(v17 + 16))(a1, a2, v16);
        (*(v17 + 56))(a1, 0, 1, v16);
        return a1;
      }
    }

    else
    {
      if (!v20)
      {
        (*(v17 + 24))(a1, a2, v16);
        return a1;
      }

      (*(v17 + 8))(a1, v16);
    }

    v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20) - 8) + 64);
    goto LABEL_8;
  }

  sub_21D0CF7E0(a1, &unk_27CE62230);
LABEL_7:
  v14 = *(*(a3 - 8) + 64);
LABEL_8:

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for TTRReminderDetailViewModel.URLState(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF54CC();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 1, v10))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(a1, a2, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(a1, a2, v10);
      (*(v11 + 56))(a1, 0, 1, v10);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *assignWithTake for TTRReminderDetailViewModel.URLState(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_21DBF54CC();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2, 1, v11))
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(a1, a2, *(*(v13 - 8) + 64));
      }

      else
      {
        (*(v12 + 32))(a1, a2, v11);
        (*(v12 + 56))(a1, 0, 1, v11);
      }

      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }

    goto LABEL_7;
  }

  if (!v10)
  {
    v16 = sub_21DBF54CC();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v18(a1, 1, v16);
    v20 = v18(a2, 1, v16);
    if (v19)
    {
      if (!v20)
      {
        (*(v17 + 32))(a1, a2, v16);
        (*(v17 + 56))(a1, 0, 1, v16);
        return a1;
      }
    }

    else
    {
      if (!v20)
      {
        (*(v17 + 40))(a1, a2, v16);
        return a1;
      }

      (*(v17 + 8))(a1, v16);
    }

    v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20) - 8) + 64);
    goto LABEL_8;
  }

  sub_21D0CF7E0(a1, &unk_27CE62230);
LABEL_7:
  v14 = *(*(a3 - 8) + 64);
LABEL_8:

  return memcpy(a1, a2, v14);
}

uint64_t sub_21D5B4408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_21D5B447C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

void sub_21D5B44F8()
{
  sub_21D5B458C(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
  }
}

void sub_21D5B458C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

id sub_21D5B4604@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE56A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v3 = __swift_project_value_buffer(v2, qword_27CE5E7C8);
  sub_21D5B6114(v3, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  v27 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  if (qword_280D15470 != -1)
  {
    swift_once();
  }

  v25 = byte_280D15478;
  v4 = qword_280D15480;
  v5 = unk_280D15488;
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = v4;
  sub_21DBF8E0C();
  v24 = v5;
  sub_21DBF8E0C();
  v23 = [v6 init];
  v7 = type metadata accessor for TTRIQuickEntryViewModel(0);
  v8 = v7[10];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  (*(*(v10 - 8) + 56))(a1 + v8, 0, 1, v10);
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = xmmword_280D1BAC8;
  v12 = xmmword_280D1BAD8;
  v13 = xmmword_280D1BAE8;
  v14 = byte_280D1BAF8;
  v15 = v7[19];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  *(a1 + v7[5]) = 0;
  *(a1 + v7[6]) = v27;
  v17 = a1 + v7[7];
  *v17 = v25;
  *(v17 + 8) = v26;
  *(v17 + 16) = v24;
  v18 = MEMORY[0x277D84F90];
  *(a1 + v7[8]) = MEMORY[0x277D84F90];
  *(a1 + v7[9]) = v23;
  *(a1 + v7[11]) = v18;
  v19 = a1 + v7[12];
  *v19 = v11;
  *(v19 + 16) = v12;
  *(v19 + 32) = v13;
  *(v19 + 48) = v14;
  v20 = (a1 + v7[13]);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (a1 + v7[14]);
  *v21 = xmmword_21DC19C40;
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  *(v21 + 73) = 0u;
  *(a1 + v7[15]) = 0;
  *(a1 + v7[16]) = 0;
  *(a1 + v7[17]) = 0;
  *(a1 + v7[18]) = 0;
  return sub_21D0FB960(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
}

uint64_t sub_21D5B4980()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  __swift_allocate_value_buffer(v0, qword_27CE5E7C8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E7C8);
  v2 = [objc_opt_self() newObjectID];
  v3 = *(v0 + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  result = (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *v1 = v2;
  return result;
}

uint64_t sub_21D5B4A34(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1)
  {
    if (!a5)
    {
      goto LABEL_10;
    }

    sub_21D5B4B18();
    v16 = a5;
    v17 = a1;
    v18 = sub_21DBFB63C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (a5)
  {
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  if ((a2 != a6 || a3 != a7) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = a4 ^ a8 ^ 1;
  return v19 & 1;
}

unint64_t sub_21D5B4B18()
{
  result = qword_280D17688;
  if (!qword_280D17688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17688);
  }

  return result;
}

char *sub_21D5B4B64(void *a1, uint64_t a2, char a3, int a4, uint64_t a5)
{
  v183 = a1;
  v184 = a5;
  v174 = a4;
  v7 = sub_21DBF604C();
  v179 = *(v7 - 8);
  v180 = v7;
  MEMORY[0x28223BE20](v7);
  v178 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_21DBF5C4C();
  v182 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v170 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v161 - v11;
  MEMORY[0x28223BE20](v13);
  v169 = &v161 - v14;
  v15 = sub_21DBF5A2C();
  v176 = *(v15 - 8);
  v177 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v161 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v21 - 8);
  v173 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v161 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v161 - v27;
  v187 = sub_21DBF563C();
  v185 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v172 = &v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v190 = &v161 - v31;
  v32 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v32);
  v188 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v34 - 8);
  v189 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v161 - v37;
  if (a3)
  {
    v39 = type metadata accessor for TTRReminderDetailViewModel(0);
    v40 = a2;
    sub_21D5B6114(a2 + *(v39 + 80), v38, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  }

  else
  {
    v40 = a2;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
    (*(*(v41 - 8) + 56))(v38, 1, 1, v41);
  }

  v42 = v189;
  sub_21D5B6114(v38, v189, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  v191 = v38;
  if (v44 == 1)
  {
    v45 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v162 = v12;
  v167 = v40;
  v168 = v43;
  v46 = (v42 + *(v43 + 48));
  v47 = *v46;
  v48 = v46[3];
  v164 = v46[2];
  v175 = v48;
  v49 = v42;
  v50 = v188;
  sub_21D5B6058(v49, v188);
  (*(v185 + 16))(v190, v50, v187);
  v51 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v51 setDateStyle_];
  [v51 setTimeStyle_];
  v181 = v51;
  [v51 setDoesRelativeDateFormatting_];
  v171 = *(v32 + 24);
  sub_21DBF507C();
  v52 = v182;
  v53 = v186;
  v163 = *(v182 + 48);
  if (v163(v28, 1, v186) == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = sub_21DBF5C0C();
    (*(v52 + 8))(v28, v53);
  }

  v55 = v181;
  [v181 setTimeZone_];

  v56 = sub_21DBF55BC();
  v57 = [v55 stringFromDate_];

  v165 = sub_21DBFA16C();
  v166 = v58;

  if (!v47)
  {

    v164 = 0;
    v175 = 0;
  }

  v59 = v187;
  v60 = v186;
  v61 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  (*(v176 + 8))(v17, v177);
  v62 = v185;
  if ((*(v185 + 48))(v20, 1, v59) == 1)
  {
    sub_21D0CF7E0(v20, &qword_27CE58D68);
    v176 = 0;
    v177 = 0xE000000000000000;
    v63 = v60;
  }

  else
  {
    v64 = v172;
    (*(v62 + 32))(v172, v20, v59);
    sub_21DBF507C();
    v63 = v60;
    if (v163(v25, 1, v60) == 1)
    {
      (*(v62 + 8))(v64, v59);
      sub_21D0CF7E0(v25, &unk_27CE60DB0);
      v176 = 0;
      v177 = 0xE000000000000000;
    }

    else
    {
      v65 = v64;
      v66 = v182;
      v67 = v169;
      (*(v182 + 32))(v169, v25, v60);
      v68 = sub_21DBF5BDC();
      if (v69)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0;
      }

      v71 = 0xE000000000000000;
      if (v69)
      {
        v71 = v69;
      }

      v176 = v70;
      v177 = v71;
      (*(v66 + 8))(v67, v60);
      (*(v62 + 8))(v65, v59);
    }
  }

  v72 = v178;
  v73 = v179;
  v74 = v180;
  (*(v179 + 104))(v178, *MEMORY[0x277D44DC0], v180);
  v75 = sub_21DBF603C();
  (*(v73 + 8))(v72, v74);
  if (v75)
  {
    v76 = [objc_opt_self() defaultTimeZone];
    v77 = v162;
    sub_21DBF5C2C();

    v78 = v173;
    sub_21DBF507C();
    if (v163(v78, 1, v63) == 1)
    {
      sub_21D0CF7E0(v78, &unk_27CE60DB0);
      v40 = v167;
      v79 = v182;
LABEL_30:
      v91 = v168;
      v88 = v165;
      v92 = v175;
      if (!v175)
      {
        (*(v79 + 8))(v77, v186);
        v80 = v166;
        goto LABEL_37;
      }

      v93 = qword_280D1BAA8;
      sub_21DBF8E0C();
      if (v93 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_21DC08D20;
      v95 = MEMORY[0x277D837D0];
      *(v94 + 56) = MEMORY[0x277D837D0];
      v96 = sub_21D17A884();
      v97 = v166;
      *(v94 + 32) = v88;
      *(v94 + 40) = v97;
      *(v94 + 96) = v95;
      *(v94 + 104) = v96;
      v98 = v164;
      *(v94 + 64) = v96;
      *(v94 + 72) = v98;
      *(v94 + 80) = v92;
      sub_21DBF8E0C();
      v88 = sub_21DBFA17C();
      v100 = v99;
      swift_bridgeObjectRelease_n();

      (*(v79 + 8))(v77, v186);
      v80 = v100;
      goto LABEL_34;
    }

    v79 = v182;
    v90 = v170;
    (*(v182 + 32))(v170, v78, v63);
    sub_21D5B60BC();
    if (sub_21DBFA10C())
    {
      (*(v79 + 8))(v90, v63);
      v40 = v167;
      goto LABEL_30;
    }

    v137 = v175;
    if (v175)
    {
      v138 = qword_280D1BAA8;
      sub_21DBF8E0C();
      if (v138 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v139 = swift_allocObject();
      *(v139 + 16) = xmmword_21DC08D10;
      v140 = MEMORY[0x277D837D0];
      *(v139 + 56) = MEMORY[0x277D837D0];
      v141 = sub_21D17A884();
      v142 = v166;
      *(v139 + 32) = v165;
      *(v139 + 40) = v142;
      *(v139 + 96) = v140;
      *(v139 + 104) = v141;
      v143 = v176;
      v144 = v177;
      *(v139 + 64) = v141;
      *(v139 + 72) = v143;
      *(v139 + 80) = v144;
      *(v139 + 136) = v140;
      *(v139 + 144) = v141;
      *(v139 + 112) = v164;
      *(v139 + 120) = v137;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v145 = sub_21DBFA17C();
      v147 = v146;

      swift_bridgeObjectRelease_n();

      v148 = *(v79 + 8);
      v148(v170, v63);
      v149 = v63;
      v88 = v145;
      v148(v162, v149);
      v80 = v147;
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_21DC08D20;
      v151 = MEMORY[0x277D837D0];
      *(v150 + 56) = MEMORY[0x277D837D0];
      v152 = sub_21D17A884();
      v153 = v166;
      *(v150 + 32) = v165;
      *(v150 + 40) = v153;
      *(v150 + 96) = v151;
      *(v150 + 104) = v152;
      v154 = v176;
      v155 = v177;
      *(v150 + 64) = v152;
      *(v150 + 72) = v154;
      *(v150 + 80) = v155;
      sub_21DBF8E0C();
      v156 = sub_21DBFA17C();
      v158 = v157;

      v159 = *(v79 + 8);
      v159(v170, v63);
      v160 = v63;
      v88 = v156;
      v159(v77, v160);
      v80 = v158;
    }

    v40 = v167;
    v62 = v185;
  }

  else
  {
    v80 = v166;
    v81 = v175;
    if (!v175)
    {
      v40 = v167;
      v91 = v168;
      v88 = v165;
      goto LABEL_37;
    }

    v82 = qword_280D1BAA8;
    sub_21DBF8E0C();
    v40 = v167;
    v83 = v165;
    if (v82 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_21DC08D20;
    v85 = MEMORY[0x277D837D0];
    *(v84 + 56) = MEMORY[0x277D837D0];
    v86 = sub_21D17A884();
    *(v84 + 32) = v83;
    *(v84 + 40) = v80;
    *(v84 + 96) = v85;
    *(v84 + 104) = v86;
    v87 = v164;
    *(v84 + 64) = v86;
    *(v84 + 72) = v87;
    *(v84 + 80) = v81;
    sub_21DBF8E0C();
    v88 = sub_21DBFA17C();
    v80 = v89;

    swift_bridgeObjectRelease_n();
  }

LABEL_34:
  v91 = v168;
LABEL_37:
  v45 = sub_21D212888(0, 1, 1, MEMORY[0x277D84F90]);
  v102 = *(v45 + 2);
  v101 = *(v45 + 3);
  v103 = v187;
  if (v102 >= v101 >> 1)
  {
    v45 = sub_21D212888((v101 > 1), v102 + 1, 1, v45);
  }

  v104 = *(v91 + 64);
  (*(v62 + 8))(v190, v103);
  sub_21D106BB8(v188, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
  *(v45 + 2) = v102 + 1;
  v105 = &v45[32 * v102];
  *(v105 + 4) = 0;
  *(v105 + 5) = v88;
  *(v105 + 6) = v80;
  v105[56] = 0;

  sub_21D0CF7E0(v189 + v104, &unk_27CE628E0);
LABEL_40:
  v106 = (v40 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 92));
  v108 = *v106;
  v107 = v106[1];
  v109 = v106[3];
  v110 = *(v106 + 32) >> 6;
  if (!v110)
  {
    sub_21DBF8E0C();
    REMAlarmProximity.localizedLabelFormatString.getter(v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_21DC08D00;
    *(v116 + 56) = MEMORY[0x277D837D0];
    *(v116 + 64) = sub_21D17A884();
    *(v116 + 32) = v108;
    *(v116 + 40) = v107;
    v117 = sub_21DBFA17C();
    v119 = v118;

    v120 = sub_21DBFA12C();
    v121 = [objc_opt_self() _systemImageNamed_];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_21D212888(0, *(v45 + 2) + 1, 1, v45);
    }

    v123 = *(v45 + 2);
    v122 = *(v45 + 3);
    if (v123 >= v122 >> 1)
    {
      v45 = sub_21D212888((v122 > 1), v123 + 1, 1, v45);
    }

    *(v45 + 2) = v123 + 1;
    v124 = &v45[32 * v123];
    *(v124 + 4) = v121;
    *(v124 + 5) = v117;
    *(v124 + 6) = v119;
    v124[56] = v174 & 1;
    goto LABEL_52;
  }

  if (v110 == 1)
  {
    sub_21DBF8E0C();
    v111 = sub_21DBFA12C();
    v112 = [objc_opt_self() _systemImageNamed_];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_21D212888(0, *(v45 + 2) + 1, 1, v45);
    }

    v114 = *(v45 + 2);
    v113 = *(v45 + 3);
    if (v114 >= v113 >> 1)
    {
      v45 = sub_21D212888((v113 > 1), v114 + 1, 1, v45);
    }

    *(v45 + 2) = v114 + 1;
    v115 = &v45[32 * v114];
    *(v115 + 4) = v112;
    *(v115 + 5) = v108;
    *(v115 + 6) = v107;
    v115[56] = 0;
    goto LABEL_52;
  }

  if (v106[2] | v107 | v108 | v109)
  {
LABEL_52:
    v125 = v183;
    v126 = v191;
    goto LABEL_55;
  }

  v126 = v191;
  v125 = v183;
LABEL_55:
  v127 = sub_21D5BFC20(v125);
  if (v128)
  {
    v129 = v127;
    v130 = v128;
    v131 = sub_21DBFA12C();
    v132 = [objc_opt_self() _systemImageNamed_];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_21D212888(0, *(v45 + 2) + 1, 1, v45);
    }

    v134 = *(v45 + 2);
    v133 = *(v45 + 3);
    if (v134 >= v133 >> 1)
    {
      v45 = sub_21D212888((v133 > 1), v134 + 1, 1, v45);
    }

    sub_21D106BB8(v191, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    *(v45 + 2) = v134 + 1;
    v135 = &v45[32 * v134];
    *(v135 + 4) = v132;
    *(v135 + 5) = v129;
    *(v135 + 6) = v130;
    v135[56] = 0;
  }

  else
  {
    sub_21D106BB8(v126, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  }

  return v45;
}

uint64_t sub_21D5B6058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D5B60BC()
{
  result = qword_27CE64FE0;
  if (!qword_27CE64FE0)
  {
    sub_21DBF5C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64FE0);
  }

  return result;
}

uint64_t sub_21D5B6114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for TTRIQuickEntryViewModel.DetailComponent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIQuickEntryViewModel.DetailComponent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for TTRIQuickEntryViewModel.DetailComponent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickEntryViewModel.DetailComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIQuickEntryViewModel.DetailComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21D5B631C(void *a1, void *a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v33 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v32 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = [Strong navigationController];

    if (v21)
    {
      v32[1] = a5;
      v22 = sub_21DBF66FC();
      v23 = 1;
      (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
      sub_21D53BFA4(0xD000000000000016, 0x800000021DC61CE0, v18);
      sub_21D0CF7E0(v18, &unk_27CE650B0);
      if (a1)
      {
        TTRRecurrenceRuleModel.init(sourceRule:)(a1, v15);
        v23 = 0;
      }

      v24 = type metadata accessor for TTRRecurrenceRuleModel(0);
      (*(*(v24 - 8) + 56))(v15, v23, 1, v24);
      type metadata accessor for TTRIRecurrenceEditorRouter();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21D0D3954(v15, v12, &qword_27CE5A018);

      v26 = a2;
      v27 = sub_21D5B8128(v25, v26, v12, v33 & 1);
      v28 = type metadata accessor for TTRIRecurrenceEditorViewController();
      v29 = objc_allocWithZone(v28);
      v30 = &v29[OBJC_IVAR____TtC15RemindersUICore34TTRIRecurrenceEditorViewController_presenter];
      *v30 = v27;
      v30[1] = &off_282EC40B0;
      v35.receiver = v29;
      v35.super_class = v28;

      v31 = objc_msgSendSuper2(&v35, sel_initWithStyle_, 2);
      *(v27 + 24) = &off_282EC3FD0;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();

      *(v27 + 40) = v34;
      swift_unknownObjectWeakAssign();

      [v21 pushViewController:v31 animated:a4 & 1];

      sub_21D0CF7E0(v15, &qword_27CE5A018);
    }
  }
}

void sub_21D5B667C(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a4;
  v38 = a3;
  v35 = a1;
  v6 = type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_21DBF66FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong navigationController];

    v34 = v18;
    if (v18)
    {
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680) + 48);
      *v15 = [a2 objectID];
      v20 = *MEMORY[0x277D451A8];
      v21 = sub_21DBF66BC();
      (*(*(v21 - 8) + 104))(&v15[v19], v20, v21);
      v22 = *MEMORY[0x277D45168];
      v23 = sub_21DBF66DC();
      (*(*(v23 - 8) + 104))(&v15[v19], v22, v23);
      (*(v13 + 104))(v15, *MEMORY[0x277D45248], v12);
      (*(v13 + 16))(v11, v15, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      sub_21D53BFA4(0xD000000000000011, 0x800000021DC61C60, v11);
      sub_21D0CF7E0(v11, &unk_27CE650B0);
      sub_21D0D3954(v35, v8, &unk_27CE62610);
      v24 = &v8[*(v6 + 20)];
      v25 = v36;
      *v24 = v37;
      *(v24 + 1) = v25;
      type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = objc_opt_self();
      swift_unknownObjectRetain();
      v28 = [v27 bundleForClass_];
      v29 = sub_21DBFA12C();
      v30 = [objc_opt_self() storyboardWithName:v29 bundle:v28];

      v31 = sub_21D5A34BC(v30, 0xD000000000000032, 0x800000021DC61C80, v8);
      sub_21D5B8EB8(v8, type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument);
      v32 = v34;
      [v34 pushViewController:v31 animated:v38 & 1];

      (*(v13 + 8))(v15, v12);
    }
  }
}

void sub_21D5B6AC8(void (*a1)(char *, uint64_t, uint64_t), void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a3;
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong navigationController];

    if (v17)
    {
      v18 = sub_21DBF66FC();
      (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
      sub_21D53BFA4(0xD000000000000017, 0x800000021DC61C40, v14);
      sub_21D0CF7E0(v14, &unk_27CE650B0);
      v19 = [a2 date];
      sub_21DBF55FC();

      v23 = 0;
      v20 = sub_21D8017C4(a4, v21, a1, v11, &v23);
      (*(v9 + 8))(v11, v8);
      [v17 pushViewController:v20 animated:v22 & 1];
    }
  }
}

void sub_21D5B6D14(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v49 = a1;
  v50 = a2;
  v5 = sub_21DBF647C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v48 - v11;
  v13 = *MEMORY[0x277D45018];
  v14 = v6[13];
  v51 = v48 - v11;
  v14(v48 - v11, v13, v5, v10);
  type metadata accessor for TTRReminderListPickerInteractor();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 32) = a1;
  v16 = type metadata accessor for TTRIReminderListPickerRouter();
  v17 = swift_allocObject();
  v48[1] = v17;
  swift_unknownObjectWeakInit();
  v18 = v6[2];
  v18(v8, v12, v5);
  v59[3] = v16;
  v59[4] = &off_282EAAAD8;
  v59[0] = v17;
  type metadata accessor for TTRIReminderListPickerPresenter();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v59, v16);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v58[3] = v16;
  v58[4] = &off_282EAAAD8;
  v58[0] = v25;
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 48) = 0;
  *(v19 + 80) = 0;
  v26 = (v19 + 80);
  *(v19 + 56) = -1;
  *(v19 + 88) = 0;
  *(v19 + 96) = v15;
  *(v19 + 104) = &protocol witness table for TTRReminderListPickerInteractor;
  sub_21D0D32E4(v58, v19 + 112);
  v18((v19 + OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_mode), v8, v5);
  *(v19 + 64) = 0;
  *(v19 + 72) = 2;
  *(v19 + OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_reminders) = 0;
  v27 = v49;

  v28 = v50;
  v29 = TTRReminderListPickerInteractor.fetchAccounts(for:includeSmartLists:)();
  if (!v29)
  {
    v29 = MEMORY[0x277D84F90];
  }

  v55 = 1;
  TTRReminderListPickerViewModel.init(accounts:customSmartListPredicate:disabledListID:)(v29, &v55, 0, &v56);
  v30 = v57;
  *(v19 + 32) = v56;
  *(v19 + 40) = v30;
  sub_21D1B33D4(v28, &v56);

  v31 = v6[1];
  v31(v8, v5);
  __swift_destroy_boxed_opaque_existential_0(v58);
  v32 = v57;
  v33 = *(v19 + 48);
  *(v19 + 48) = v56;
  v34 = *(v19 + 56);
  *(v19 + 56) = v32;
  sub_21D157864(v33, v34);
  __swift_destroy_boxed_opaque_existential_0(v59);
  v35 = type metadata accessor for TTRIReminderListPickerViewController();
  v36 = objc_allocWithZone(v35);
  v37 = &v36[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_palette];
  *v37 = 0;
  v37[1] = 0;
  *&v36[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_contentSizeObserver] = 0;
  v38 = &v36[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_presenter];
  *v38 = v19;
  v38[1] = &off_282EAAC40;
  v36[OBJC_IVAR____TtC15RemindersUICore36TTRIReminderListPickerViewController_isPresentedInPopover] = 0;
  v54.receiver = v36;
  v54.super_class = v35;

  v39 = objc_msgSendSuper2(&v54, sel_initWithStyle_, 0);
  v31(v51, v5);
  swift_beginAccess();
  *(v15 + 24) = &off_282EAACA8;
  swift_unknownObjectWeakAssign();

  *(v19 + 24) = &off_282EAAB78;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v42 = v52;
  v43 = v53;
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v43;
  swift_beginAccess();
  v44 = *v26;
  *v26 = sub_21D5B8328;
  *(v19 + 88) = v41;

  sub_21D0D0E88(v44);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    v47 = [Strong navigationController];

    [v47 pushViewController:v39 animated:1];
  }
}

uint64_t sub_21D5B7298(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v5 = *a2;
  v6 = *(a2 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = [Strong navigationController];

      if (v10)
      {
      }
    }

    v11 = v5;
    v12 = v6;
    a4(&v11);
  }

  return result;
}

void sub_21D5B737C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [a1 saveRequest];
  v9 = [v8 store];

  type metadata accessor for TTRReminderLocationPickerInteractor.ReminderEditor();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a4;
  v11 = a4;
  v10[4] = 0;
  v12 = a1;
  v19 = sub_21D581F70(v9, v10, 1, 0, a2, a3, v11);
  v14 = v13;

  v15 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  swift_getObjectType();
  v16 = [v15 presentationController];
  (*(v14 + 16))();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    [Strong presentViewController:v15 animated:1 completion:0];
  }

  swift_unknownObjectRelease();
}

uint64_t sub_21D5B7518(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DBF66BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  *&v39 = 1;
  BYTE8(v39) = 0;
  v40 = 0uLL;
  v12 = a2 & 1;
  v13 = *MEMORY[0x277D451B0];
  v14 = sub_21DBF66CC();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  (*(v9 + 104))(v11, *MEMORY[0x277D45188], v8);
  v35[0] = a1;
  v35[1] = 0;
  v33 = v12;
  v34 = 0;
  v32[2] = v38;
  v32[3] = v39;
  v32[4] = v40;
  v32[0] = v36;
  v32[1] = v37;
  v29 = 1;
  v30 = 0u;
  v31 = 0u;
  memset(v28, 0, sizeof(v28));
  v15 = a1;
  v16 = sub_21D831A34(v35, a3, a4, &v33, 0, 1, v32, &v29, v28);
  v18 = v17;

  v19 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v20 = [v19 presentationController];
  if (v20)
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v18 + 96))(v21, 0, ObjectType, v18);
  }

  swift_unknownObjectWeakAssign();
  v23 = swift_getObjectType();
  (*(v18 + 104))(v11, 0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8, v23, v18);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    [Strong presentViewController:v19 animated:1 completion:0];

    sub_21D5B8E5C(&v36);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21D5B8E5C(&v36);

    swift_unknownObjectRelease();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21D5B7838(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DBF66BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v33[2] = a2[2];
  v33[3] = v12;
  v33[4] = a2[4];
  v13 = a2[1];
  v33[0] = *a2;
  v33[1] = v13;
  (*(v9 + 104))(v11, *MEMORY[0x277D45178], v8);
  v32[0] = a1;
  v32[1] = 0;
  v30 = 4;
  v31 = -64;
  v27 = 1;
  v28 = 0u;
  v29 = 0u;
  memset(v26, 0, sizeof(v26));
  v14 = a1;
  v15 = sub_21D831A34(v32, a3, a4, &v30, 0, 1, v33, &v27, v26);
  v17 = v16;

  v18 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v19 = [v18 presentationController];
  if (v19)
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    (*(v17 + 96))(v20, 1, ObjectType, v17);
  }

  swift_unknownObjectWeakAssign();
  v22 = swift_getObjectType();
  (*(v17 + 104))(v11, 0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8, v22, v17);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong presentViewController:v18 animated:1 completion:0];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21D5B7AF8()
{
  MEMORY[0x223D46650](v0 + 16);

  MEMORY[0x223D46650](v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_21D5B7C00(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a4;
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v35 - v7;
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for TTRICustomRecurrenceEditorRouter();
  v41[3] = v18;
  v41[4] = &off_282EAED90;
  v41[0] = a1;
  type metadata accessor for TTRICustomRecurrenceEditorPresenter(0);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v41, v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v40[3] = v18;
  v40[4] = &off_282EAED90;
  v40[0] = v25;
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v19 + 40) = 0;
  swift_unknownObjectWeakInit();
  v26 = OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_viewModel;
  v27 = type metadata accessor for TTRICustomRecurrenceEditorViewModel(0);
  v35 = *(*(v27 - 8) + 56);
  v35(v19 + v26, 1, 1, v27);
  v39 = a3;
  sub_21D0D3954(a3, v14, &qword_27CE5A018);
  v28 = *(v9 + 48);
  if (v28(v14, 1, v8) == 1)
  {
    v29 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    v30 = v8[5];
    v31 = v8[6];
    *&v11[v8[7]] = 0;
    *&v11[v8[8]] = 0;
    *&v11[v8[9]] = 0;
    *&v11[v8[10]] = 0;
    *&v11[v8[11]] = 0;
    *&v11[v8[12]] = 0;
    *&v11[v8[13]] = 0;
    *&v11[v30] = 0;
    *&v11[v31] = 1;
    sub_21D55B1D8(v11, v17);
    (*(v9 + 56))(v17, 0, 1, v8);
    if (v28(v14, 1, v8) != 1)
    {
      sub_21D0CF7E0(v14, &qword_27CE5A018);
    }
  }

  else
  {
    sub_21D55B1D8(v14, v17);
    (*(v9 + 56))(v17, 0, 1, v8);
  }

  sub_21D0D32E4(v40, v19 + OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_router);
  *(v19 + OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_displayDate) = v36;
  *(v19 + OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_supportsHourlyRecurrence) = v37 & 1;
  v32 = v38;
  sub_21D0D3954(v17, v38, &qword_27CE5A018);
  v35(v32, 0, 1, v27);
  v33 = OBJC_IVAR____TtC15RemindersUICore35TTRICustomRecurrenceEditorPresenter_viewModel;
  swift_beginAccess();
  sub_21D5B8F18(v32, v19 + v33);
  swift_endAccess();
  sub_21D23DEA0();
  sub_21D0CF7E0(v39, &qword_27CE5A018);
  sub_21D0CF7E0(v17, &qword_27CE5A018);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v19;
}

uint64_t sub_21D5B8128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for TTRIRecurrenceEditorRouter();
  v20[3] = v8;
  v20[4] = &off_282EC4090;
  v20[0] = a1;
  type metadata accessor for TTRIRecurrenceEditorPresenter();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v19[3] = v8;
  v19[4] = &off_282EC4090;
  v19[0] = v15;
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  v16 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule;
  v17 = type metadata accessor for TTRRecurrenceRuleModel(0);
  (*(*(v17 - 8) + 56))(v9 + v16, 1, 1, v17);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter____lazy_storage___indexOfRepeatType) = 0;
  sub_21D0D32E4(v19, v9 + 80);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate) = a2;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_supportsHourlyRecurrence) = a4;
  sub_21D559E74(a3, 0, 0);
  sub_21D0CF7E0(a3, &qword_27CE5A018);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return v9;
}

void sub_21D5B8334(void *a1, void *a2, int a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v83 = a6;
  LODWORD(v85) = a3;
  v77 = a2;
  v76 = a1;
  v84 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v74 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_21DBF5C4C();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v10 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_21DBF563C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v70[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v70[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v70[-v23];
  v25 = a4[1];
  v91 = *a4;
  v92 = v25;
  *v93 = a4[2];
  *&v93[9] = *(a4 + 41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = a5;
    v75 = v21;
    v27 = Strong;
    v28 = sub_21DBF66FC();
    v29 = 1;
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    sub_21D53BFA4(0xD000000000000018, 0x800000021DC61CC0, v24);
    sub_21D0CF7E0(v24, &unk_27CE650B0);
    aBlock = v91;
    v89 = v92;
    *v90 = *v93;
    *&v90[9] = *&v93[9];
    v73 = v27;
    v71 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&aBlock);
    if (v76)
    {
      v30 = v76;
      v31 = v75;
      TTRRecurrenceRuleModel.init(sourceRule:)(v30, v75);
      v29 = 0;
    }

    else
    {
      v31 = v75;
    }

    v36 = v82;
    (*(v82 + 56))(v31, v29, 1, v84);
    type metadata accessor for TTRICustomRecurrenceEditorRouter();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(v31, v18, &qword_27CE5A018);

    v38 = v77;
    v39 = sub_21D5B7C00(v37, v38, v18, v85 & 1);
    v40 = [v38 date];
    sub_21DBF55FC();

    v41 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    v42 = objc_allocWithZone(TTRICustomRecurrenceEditorViewController);
    v43 = sub_21DBF55BC();
    v44 = sub_21DBF5C0C();
    v45 = [v42 initWithStartDate:v43 timeZone:v44];

    v46 = v31;
    (*(v80 + 8))(v10, v81);
    (*(v78 + 8))(v12, v79);
    sub_21D0D3954(v31, v15, &qword_27CE5A018);
    if ((*(v36 + 48))(v15, 1, v84) == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE5A018);
    }

    else
    {
      v47 = v74;
      sub_21D55B1D8(v15, v74);
      v48 = TTRRecurrenceRuleModel.standaloneREMRecurrenceRule()();
      [v45 setRecurrenceRule_];

      sub_21D5B8EB8(v47, type metadata accessor for TTRRecurrenceRuleModel);
    }

    *v90 = sub_21D5B8EB0;
    *&v90[8] = v39;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v89 = sub_21D1B6000;
    *(&v89 + 1) = &block_descriptor_56;
    v49 = _Block_copy(&aBlock);

    [v45 setCompletionBlock_];
    _Block_release(v49);
    [v45 setProhibitsHourlyRecurrence_];
    swift_unknownObjectWeakAssign();

    *(v39 + 40) = v83;
    swift_unknownObjectWeakAssign();

    if ((v71 & 1) != 0 && (~v93[8] & 0xFE) != 0)
    {
      v54 = v93[8];
      if (v93[24])
      {
        v87 = 0;
        if (v93[8] < 0x40u)
        {
          v54 = v93[8] & 1;
        }

        v55 = 1;
      }

      else
      {
        v55 = *&v93[16];
        v87 = v93[24];
      }

      aBlock = v91;
      v89 = v92;
      *v90 = *v93;
      v90[8] = v54;
      v90[15] = v93[15];
      *&v90[13] = *&v93[12] >> 8;
      *&v90[9] = *&v93[8] >> 8;
      *&v90[16] = v55;
      v90[24] = v87;
      sub_21D0D3954(&v91, v86, &qword_27CE5D558);
      sub_21D50B9A4(&aBlock, v86);
      [v45 setModalPresentationStyle_];
      v56 = [v45 popoverPresentationController];
      if (v56)
      {
        v57 = v56;
        if (v90[24])
        {
          v58 = 15;
        }

        else
        {
          v58 = *&v90[16];
        }

        v59 = aBlock;
        v60 = v89;
        v61 = *v90;
        v62 = v90[8];
        [v56 setPermittedArrowDirections_];
        if (v62 > 0x3F)
        {
          v68 = 0;
          v67 = 1;
          v63 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
          v85 = v59;
          v66 = 0.0;
        }

        else
        {
          v85 = 0;
          v63 = *(&v59 + 1);
          v65 = *(&v60 + 1);
          v64 = *&v60;
          v66 = *&v61;
          v67 = v62;
          v68 = v59;
        }

        sub_21D50BA00(v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62);
        sub_21D50B9A4(&aBlock, v86);
        [v57 setSourceView_];
        if (v67)
        {
          v63 = *MEMORY[0x277CBF398];
          v64 = *(MEMORY[0x277CBF398] + 8);
          v65 = *(MEMORY[0x277CBF398] + 16);
          v66 = *(MEMORY[0x277CBF398] + 24);
        }

        [v57 setSourceRect_];
        [v57 setSourceItem_];

        swift_unknownObjectRelease();
        sub_21D1A9430(&aBlock);
        v46 = v75;
      }

      sub_21D1A9430(&aBlock);
      v69 = v73;
      [v73 presentViewController:v45 animated:1 completion:0];

      sub_21D1A9430(&aBlock);
    }

    else
    {
      v50 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v51 = [v50 presentationController];
      if (v51)
      {
        v52 = v51;
        [v51 setDelegate_];
      }

      v53 = v73;
      [v73 presentViewController:v50 animated:1 completion:0];
    }

    sub_21D0CF7E0(v46, &qword_27CE5A018);
  }

  else
  {
    if (qword_27CE569A0 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5DA50);
    v85 = sub_21DBF84AC();
    v33 = sub_21DBFAECC();
    if (os_log_type_enabled(v85, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21D0C9000, v85, v33, "Failed to get viewController -- Failed to show custom recurrence editor", v34, 2u);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    v35 = v85;
  }
}

uint64_t sub_21D5B8EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D5B8F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D5B8F8C(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v11[2] = a1[2];
  v11[3] = v2;
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v9[2] = a2;
  v9[3] = v11;
  v5 = *(a2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D5BA264;
  *(v6 + 24) = v9;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_57;
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

void sub_21D5B90E0(char *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v5 = *a2;
  v4 = a2[1];
  v6 = *&a1[qword_27CE65590];
  v7 = sub_21DBFA12C();
  [v6 setText_];

  v8 = *(v2 + 4);
  v109 = *(v2 + 3);
  v110 = v8;
  v111 = *(v2 + 80);
  v9 = *(v2 + 2);
  v107 = *(v2 + 1);
  v108 = v9;
  v10 = &v3[qword_27CE655A0];
  swift_beginAccess();
  v11 = *(v10 + 3);
  v114 = *(v10 + 2);
  v115 = v11;
  v116 = v10[64];
  v12 = *(v10 + 1);
  v112 = *v10;
  v113 = v12;
  v117[2] = v114;
  v117[3] = v11;
  v118 = v116;
  v117[0] = v112;
  v117[1] = v12;
  v13 = v107;
  v14 = v108;
  v15 = v109;
  v16 = v110;
  v10[64] = v111;
  *(v10 + 2) = v15;
  *(v10 + 3) = v16;
  *v10 = v13;
  *(v10 + 1) = v14;
  sub_21D0D3954(&v107, v105, &unk_27CE5EA00);
  sub_21D0D3954(&v112, v105, &unk_27CE5EA00);
  sub_21D0CF7E0(v117, &unk_27CE5EA00);
  v105[2] = v114;
  v105[3] = v115;
  v106 = v116;
  v105[0] = v112;
  v105[1] = v113;
  sub_21DA7EF48(v105);
  sub_21D0CF7E0(&v112, &unk_27CE5EA00);
  v98 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v17 = 0x800000021DC61D40;
  if (qword_280D1BAA8 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v92 = v17;
    sub_21DBF516C();
    v18 = *MEMORY[0x277D76968];
    v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:{0, v92}];
    v93 = v5;
    v94 = v4;
    if (!v19)
    {
      v21 = 0;
LABEL_7:
      v99 = [objc_opt_self() preferredFontForTextStyle_];
      goto LABEL_8;
    }

    v20 = v19;
    v21 = [v19 fontDescriptorWithDesign_];

    if (!v21)
    {
      goto LABEL_7;
    }

    v99 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
    if (!v99)
    {
      goto LABEL_7;
    }

LABEL_8:
    v95 = v3;

    v22 = v2[11];
    v5 = *(v22 + 16);
    if (!v5)
    {
      break;
    }

    v23 = (v22 + 56);
    v96 = *MEMORY[0x277D74150];
    v24 = &off_278331000;
    v97 = 1;
    v3 = v98;
    while (1)
    {
      v27 = *(v23 - 3);
      v2 = *(v23 - 1);
      v101 = *v23;
      v28 = v27;
      sub_21DBF8E0C();
      if ([v3 length])
      {
        v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v30 = sub_21DBFA12C();
        v31 = [v29 v24[476]];

        [v3 appendAttributedString_];
      }

      if (v27)
      {
        v32 = objc_opt_self();
        v33 = v28;
        v34 = [v32 configurationWithFont:v99 scale:1];
        v100 = [v33 imageWithConfiguration_];

        v35 = [objc_opt_self() textAttachmentWithImage_];
        v36 = [objc_opt_self() attributedStringWithAttachment_];
        [v3 appendAttributedString_];
        v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v38 = sub_21DBFA12C();
        v39 = [v37 initWithString_];

        v3 = v98;
        [v98 appendAttributedString_];

        v24 = &off_278331000;
      }

      v40 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v41 = sub_21DBFA12C();
      v42 = [v40 v24[476]];

      if (!v101)
      {
        goto LABEL_12;
      }

      v102[4] = MEMORY[0x277D83B88];
      v4 = 1;
      v102[0] = v96;
      v102[1] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58280);
      v17 = sub_21DBFC40C();
      v43 = v96;
      sub_21D0D3954(v102, v105, &unk_27CE5F2C0);
      v44 = *&v105[0];
      v45 = sub_21D10FE34(*&v105[0]);
      if (v46)
      {
        break;
      }

      v17[(v45 >> 6) + 8] |= 1 << v45;
      *(v17[6] + 8 * v45) = v44;
      sub_21D0CF2E8((v105 + 8), (v17[7] + 32 * v45));
      v47 = v17[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_35;
      }

      v17[2] = v49;
      sub_21D0CF7E0(v102, &unk_27CE5F2C0);
      type metadata accessor for Key(0);
      sub_21D112874();
      v50 = sub_21DBF9E5C();

      v51 = [v42 string];
      sub_21DBFA16C();
      v53 = v52;

      if ((v53 & 0x1000000000000000) != 0)
      {
        v25 = sub_21DBFA35C();
      }

      else
      {
        v25 = sub_21DBFA36C();
      }

      v26 = v25;

      [v42 addAttributes:v50 range:{0, v26}];

      v97 = 0;
LABEL_12:
      [v3 appendAttributedString_];

      v23 += 32;
      --v5;
      v24 = &off_278331000;
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v97 = 1;
  v3 = v98;
LABEL_23:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v55 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v56 = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = v99;
  v57 = *MEMORY[0x277D740C0];
  *(inited + 64) = v56;
  *(inited + 72) = v57;
  v58 = v3;
  v59 = objc_opt_self();
  v60 = v55;
  v61 = v99;
  v62 = v57;
  v63 = [v59 secondaryLabelColor];
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D1B8F0);
  *(inited + 80) = v63;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_21D112874();
  v64 = sub_21DBF9E5C();

  v65 = v58;
  v66 = [v65 string];
  v67 = sub_21DBFA16C();
  v69 = v68;

  v70 = MEMORY[0x223D42B30](v67, v69);

  [v65 addAttributes:v64 range:{0, v70}];

  sub_21DA7C390(v65);
  v71 = qword_27CE65608;
  swift_beginAccess();
  v72 = *&v95[v71];
  if (v72 && (v97 & 1) == 0)
  {
    v73 = qword_280D1B938;
    v74 = v72;
    if (v73 != -1)
    {
      swift_once();
    }

    v75 = qword_280D1B940;
    v76 = unk_280D1B948;
    v103 = v93;
    v104 = v94;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v75, v76);
    v78 = v103;
    v77 = v104;
    v79 = [v74 string];
    v80 = sub_21DBFA16C();
    v82 = v81;

    v103 = v78;
    v104 = v77;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v80, v82);

    v83 = v103;
    v84 = v104;
    if (qword_280D1AA40 != -1)
    {
      swift_once();
    }

    v85 = qword_280D1AA48;
    v86 = *algn_280D1AA50;
    v103 = v83;
    v104 = v84;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v85, v86);

    v87 = v103;
    v88 = v104;
    if (qword_27CE57548 != -1)
    {
      swift_once();
    }

    v89 = qword_27CE67180;
    v90 = *algn_27CE67188;
    v103 = v87;
    v104 = v88;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v89, v90);

    v91 = sub_21DBFA12C();

    [v95 setAccessibilityLabel_];
  }

  else
  {
    [v95 setAccessibilityLabel_];
  }
}

id sub_21D5B9BAC@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D568328(v2);
}

uint64_t sub_21D5B9BB8()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t type metadata accessor for TTRIQuickEntryDetailStatusCellContent()
{
  result = qword_27CE5E808;
  if (!qword_27CE5E808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t destroy for TTRIDetailCellStateAdaptor(id *a1)
{
  if (*a1 >= 2)
  {
  }
}

void *sub_21D5B9D00(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 >= 2uLL)
  {
    v5 = v4;
  }

  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  *a1 = v4;
  a1[1] = v7;
  a1[2] = v6;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIDetailCellStateAdaptor(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 >= 2uLL)
  {
    if (v5 >= 2)
    {
      *a1 = v5;
      v7 = v5;

      goto LABEL_8;
    }

    v5 = *a2;
    goto LABEL_6;
  }

  if (v5 < 2)
  {
LABEL_6:
    *a1 = v5;
    goto LABEL_8;
  }

  *a1 = v5;
  v6 = v5;
LABEL_8:
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRIDetailCellStateAdaptor(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 >= 2uLL)
  {
    if (v5 >= 2)
    {
      *a1 = v5;

      goto LABEL_6;
    }
  }

  *a1 = v5;
LABEL_6:
  v6 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v6;

  return a1;
}

unint64_t sub_21D5B9E70()
{
  result = qword_27CE5E818;
  if (!qword_27CE5E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5E818);
  }

  return result;
}

uint64_t sub_21D5B9EC4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v58 = *(a1 + 3);
  v59 = v6;
  v60 = *(a1 + 80);
  v7 = *(a1 + 2);
  v56 = *(a1 + 1);
  v57 = v7;
  v8 = a1[11];
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  v65 = *(a2 + 80);
  v63 = v13;
  v64 = v14;
  v61 = v11;
  v62 = v12;
  v15 = a2[11];
  if ((v4 != v9 || v5 != v10) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(&v57 + 1);
  v17 = v60;
  *&v55[7] = *(a2 + 1);
  *&v55[23] = a2[4];
  v18 = *(&v62 + 1);
  v19 = v65;
  if (*(&v57 + 1) >> 1 != 0xFFFFFFFFLL || v60 >= 2u)
  {
    v21 = a1[4];
    v45 = *(a1 + 1);
    *&v46 = v21;
    *(&v46 + 1) = *(&v57 + 1);
    v22 = *(a1 + 4);
    v47 = *(a1 + 3);
    v48 = v22;
    v49 = v60;
    v44 = v60;
    v42 = v47;
    v43 = v22;
    v40 = v45;
    v41 = v46;
    if (*(&v62 + 1) >> 1 != 0xFFFFFFFFLL || v65 >= 2u)
    {
      v35 = *(a2 + 1);
      v23 = a2[4];
      v24 = *(a2 + 4);
      v37 = *(a2 + 3);
      v38 = v24;
      *&v36 = v23;
      *(&v36 + 1) = *(&v62 + 1);
      v39 = v65;
      sub_21D0D3954(&v56, v33, &unk_27CE5EA00);
      sub_21D0D3954(&v61, v33, &unk_27CE5EA00);
      sub_21D0D3954(&v45, v33, &unk_27CE5EA00);
      v25 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v40, &v35);
      v31[2] = v37;
      v31[3] = v38;
      v32 = v39;
      v31[0] = v35;
      v31[1] = v36;
      sub_21D35D940(v31);
      v33[2] = v42;
      v33[3] = v43;
      v34 = v44;
      v33[0] = v40;
      v33[1] = v41;
      sub_21D35D940(v33);
      v35 = *(a1 + 1);
      *&v36 = a1[4];
      *(&v36 + 1) = v16;
      v26 = *(a1 + 4);
      v37 = *(a1 + 3);
      v38 = v26;
      v39 = v17;
      sub_21D0CF7E0(&v35, &unk_27CE5EA00);
      if (v25)
      {
        goto LABEL_13;
      }

LABEL_16:
      v27 = 0;
      return v27 & 1;
    }

    v37 = v47;
    v38 = v48;
    v39 = v49;
    v35 = v45;
    v36 = v46;
    sub_21D0D3954(&v56, v33, &unk_27CE5EA00);
    sub_21D0D3954(&v61, v33, &unk_27CE5EA00);
    sub_21D0D3954(&v45, v33, &unk_27CE5EA00);
    sub_21D35D940(&v35);
LABEL_15:
    v45 = *(a1 + 1);
    *&v46 = a1[4];
    *(&v46 + 1) = v16;
    v28 = *(a1 + 4);
    v47 = *(a1 + 3);
    v48 = v28;
    v49 = v17;
    *v50 = *v55;
    *&v50[15] = *&v55[15];
    v51 = v18;
    v29 = *(a2 + 3);
    v53 = *(a2 + 4);
    v52 = v29;
    v54 = v19;
    sub_21D0CF7E0(&v45, qword_27CE5ABE0);
    goto LABEL_16;
  }

  if (*(&v62 + 1) >> 1 != 0xFFFFFFFFLL || v65 >= 2u)
  {
    sub_21D0D3954(&v56, &v45, &unk_27CE5EA00);
    sub_21D0D3954(&v61, &v45, &unk_27CE5EA00);
    goto LABEL_15;
  }

  v45 = *(a1 + 1);
  *&v46 = a1[4];
  *(&v46 + 1) = *(&v57 + 1);
  v20 = *(a1 + 4);
  v47 = *(a1 + 3);
  v48 = v20;
  v49 = v60;
  sub_21D0D3954(&v56, &v40, &unk_27CE5EA00);
  sub_21D0D3954(&v61, &v40, &unk_27CE5EA00);
  sub_21D0CF7E0(&v45, &unk_27CE5EA00);
LABEL_13:
  sub_21D1D5A54(v8, v15);
  return v27 & 1;
}

uint64_t destroy for TTRIQuickEntryDetailStatusCellState(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 >> 1 != 0xFFFFFFFF || *(a1 + 80) >= 2u)
  {
    sub_21D362050(*(a1 + 16), *(a1 + 24), *(a1 + 32), v2, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  }
}

uint64_t initializeWithCopy for TTRIQuickEntryDetailStatusCellState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  v6 = *(a2 + 80);
  sub_21DBF8E0C();
  if (v5 >> 1 != 0xFFFFFFFF || v6 >= 2)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    v11 = *(a2 + 56);
    v17 = *(a2 + 48);
    v12 = *(a2 + 64);
    v13 = *(a2 + 72);
    sub_21D361F04(v8, v9, v10, v5, v17, v11, v12, v13, v6);
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v5;
    *(a1 + 48) = v17;
    *(a1 + 56) = v11;
    *(a1 + 64) = v12;
    *(a1 + 72) = v13;
    *(a1 + 80) = v6;
  }

  else
  {
    v14 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v14;
    *(a1 + 80) = *(a2 + 80);
    v15 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v15;
  }

  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIQuickEntryDetailStatusCellState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 40);
  v5 = *(a2 + 80);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 40) >> 1 != 0xFFFFFFFFLL || *(a1 + 80) >= 2u)
  {
    if (v7)
    {
      sub_21D35D940(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      v10 = *(a2 + 48);
      v9 = *(a2 + 64);
      v11 = *(a2 + 32);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v10;
      *(a1 + 64) = v9;
      *(a1 + 32) = v11;
    }

    else
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
      v17 = *(a2 + 32);
      v18 = *(a2 + 56);
      v37 = *(a2 + 48);
      v19 = *(a2 + 64);
      v20 = *(a2 + 72);
      sub_21D361F04(v15, v16, v17, v4, v37, v18, v19, v20, v5);
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      v27 = *(a1 + 64);
      v28 = *(a1 + 72);
      v29 = *(a1 + 80);
      *(a1 + 16) = v15;
      *(a1 + 24) = v16;
      *(a1 + 32) = v17;
      *(a1 + 40) = v4;
      *(a1 + 48) = v37;
      *(a1 + 56) = v18;
      *(a1 + 64) = v19;
      *(a1 + 72) = v20;
      *(a1 + 80) = v5;
      sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else if (v7)
  {
    *(a1 + 16) = *(a2 + 16);
    v12 = *(a2 + 32);
    v13 = *(a2 + 48);
    v14 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 48) = v13;
    *(a1 + 64) = v14;
    *(a1 + 32) = v12;
  }

  else
  {
    v30 = *(a2 + 16);
    v31 = *(a2 + 24);
    v32 = *(a2 + 32);
    v33 = *(a2 + 56);
    v38 = *(a2 + 48);
    v34 = *(a2 + 64);
    v35 = *(a2 + 72);
    sub_21D361F04(v30, v31, v32, v4, v38, v33, v34, v35, v5);
    *(a1 + 16) = v30;
    *(a1 + 24) = v31;
    *(a1 + 32) = v32;
    *(a1 + 40) = v4;
    *(a1 + 48) = v38;
    *(a1 + 56) = v33;
    *(a1 + 64) = v34;
    *(a1 + 72) = v35;
    *(a1 + 80) = v5;
  }

  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t assignWithTake for TTRIQuickEntryDetailStatusCellState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  if (v5 >> 1 == 0xFFFFFFFF && v6 < 2)
  {
    goto LABEL_12;
  }

  v8 = *(a2 + 40);
  v9 = *(a2 + 80);
  if (v8 >> 1 == 0xFFFFFFFF && v9 < 2)
  {
    sub_21D35D940(a1 + 16);
LABEL_12:
    v20 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v20;
    *(a1 + 80) = *(a2 + 80);
    v21 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v21;
    goto LABEL_13;
  }

  v11 = *(a2 + 32);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v11;
  *(a1 + 40) = v8;
  v19 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v19;
  *(a1 + 80) = v9;
  sub_21D362050(v12, v13, v14, v5, v15, v16, v17, v18, v6);
LABEL_13:
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickEntryDetailStatusCellState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for TTRIQuickEntryDetailStatusCellState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D5BA740(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 90) = a1;
  sub_21DBFA84C();
  *(v2 + 48) = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_21D5BA7DC, v4, v3);
}

uint64_t sub_21D5BA7DC()
{
  v33 = v0;
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 90);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136315138;
    v7 = 0xE900000000000067;
    v8 = 0x6E6967617373656DLL;
    if (v4 != 1)
    {
      v8 = 0x68535641446C6163;
      v7 = 0xED0000676E697261;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6E6F697461636F6CLL;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_21D0CDFB4(v9, v10, &v32);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Contacts] checking Contacts Access with alertFeature: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v12 = [objc_opt_self() authorizationStatusForEntityType_];
  *(v0 + 72) = v12;
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315138;
    if (v12 == 3)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v12 == 3)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_21D0CDFB4(v17, v18, &v32);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_21D0C9000, v13, v14, "PrivacyChecker: [Contacts] hasContactsAccess: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  if (v12 == 3 || ((v20 = *(v0 + 40), v21 = *(v0 + 90), swift_beginAccess(), v22 = *(v20 + 96), ObjectType = swift_getObjectType(), !v21) ? (v26 = v22[1], swift_unknownObjectRetain(), v25 = v26(ObjectType, v22)) : (v21 != 1 ? (v24 = v22[7]) : (v24 = v22[4]), swift_unknownObjectRetain(), v25 = v24(ObjectType, v22)), v27 = v25, swift_unknownObjectRelease(), (v27 & 1) != 0))
  {

    v28 = *(v0 + 8);
    v29 = *(v0 + 72) == 3;

    return v28(v29);
  }

  else
  {
    *(v0 + 89) = 2;
    v31 = swift_task_alloc();
    *(v0 + 80) = v31;
    *v31 = v0;
    v31[1] = sub_21D5BAC30;

    return TTRIPrivacyChecker.showPrivacyAlert(type:)(v0 + 88, (v0 + 89));
  }
}

uint64_t sub_21D5BAC30()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21D5BAD50, v3, v2);
}

uint64_t sub_21D5BAD50()
{
  v13 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 90);

  v3 = *(v0 + 88);
  v4 = *(v1 + 96);
  ObjectType = swift_getObjectType();
  if (v2)
  {
    if (v2 == 1)
    {
      v6 = v4[5];
    }

    else
    {
      v6 = v4[8];
    }

    swift_unknownObjectRetain();
    v6(1, ObjectType, v4);
  }

  else
  {
    v7 = v4[2];
    swift_unknownObjectRetain();
    v7(1, ObjectType, v4);
  }

  swift_unknownObjectRelease();
  if (v3 != 2)
  {
    if (v3)
    {
      v8 = sub_21DBFC64C();

      if ((v8 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v12 = 2;
    _s15RemindersUICore18TTRIPrivacyCheckerC15openSettingsApp3foryAA14TTRPrivacyTypeO_tF_0(&v12);
  }

LABEL_13:
  v9 = *(v0 + 8);
  v10 = *(v0 + 72) == 3;

  return v9(v10);
}

uint64_t sub_21D5BAEF0()
{
  v1[15] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B1A8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_21DBFA84C();
  v1[21] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_21D5BAFF0, v3, v2);
}

uint64_t sub_21D5BAFF0()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[24] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [UrgentAlarm] Checking AlarmKit access and request if necessary", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[15];

  swift_beginAccess();
  sub_21D0D32E4(v5 + 104, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_21D5BB1F0;

  return v10(v6, v7);
}

uint64_t sub_21D5BB1F0()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_21D5BB310, v3, v2);
}

uint64_t sub_21D5BB310()
{
  v34 = v0;
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[15];

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  sub_21D0D32E4(v3 + 104, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));
  sub_21D0D3954(v1, v2, &qword_27CE5B1A8);
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEDC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  if (v8)
  {
    v10 = v0[18];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    sub_21D0D3954(v9, v10, &qword_27CE5B1A8);
    v13 = sub_21DBF5E6C();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v10, 1, v13);
    v16 = v0[18];
    if (v15 == 1)
    {
      sub_21D0CF7E0(v0[18], &qword_27CE5B1A8);
      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    else
    {
      v18 = sub_21DBF5E5C();
      v17 = v19;
      (*(v14 + 8))(v16, v13);
    }

    sub_21D0CF7E0(v0[19], &qword_27CE5B1A8);
    v20 = sub_21D0CDFB4(v18, v17, &v33);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_21D0C9000, v6, v7, "PrivacyChecker: [UrgentAlarm] Current AlarmKit authorization status: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  else
  {

    sub_21D0CF7E0(v9, &qword_27CE5B1A8);
  }

  v21 = v0[17];
  sub_21D0D3954(v0[20], v21, &qword_27CE5B1A8);
  v22 = sub_21DBF5E6C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
LABEL_8:
    v24 = 0;
    goto LABEL_11;
  }

  v25 = v0[16];
  sub_21D0D3954(v0[17], v25, &qword_27CE5B1A8);
  v26 = (*(v23 + 88))(v25, v22);
  if (v26 == *MEMORY[0x277D44CD8])
  {
    v24 = 1;
  }

  else
  {
    v24 = 0;
    if (v26 != *MEMORY[0x277D44CE0] && v26 != *MEMORY[0x277D44CE8])
    {
      (*(v23 + 8))(v0[16], v22);
      v30 = sub_21DBF84AC();
      v31 = sub_21DBFAEBC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_21D0C9000, v30, v31, "PrivacyChecker: [UrgentAlarm] Unknown notification authorization status", v32, 2u);
        MEMORY[0x223D46520](v32, -1, -1);
      }

      goto LABEL_8;
    }
  }

LABEL_11:
  v27 = v0[17];
  sub_21D0CF7E0(v0[20], &qword_27CE5B1A8);
  sub_21D0CF7E0(v27, &qword_27CE5B1A8);

  v28 = v0[1];

  return v28(v24);
}

uint64_t sub_21D5BB7CC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E820);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E820);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unsigned __int8 *sub_21D5BB894@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 ^ 1;
  }

  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t sub_21D5BB8BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext);
    v1._object = 0x800000021DC62230;
    v1._countAndFlagsBits = 0xD000000000000034;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v1);
  }

  return result;
}

uint64_t sub_21D5BB948(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = (*(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) | a1) & 1;
    v3._object = 0x800000021DC62230;
    v3._countAndFlagsBits = 0xD000000000000034;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
  }

  return result;
}

uint64_t sub_21D5BB9E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  v148 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v122 = v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v123 = v121 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D998);
  MEMORY[0x28223BE20](v8 - 8);
  v143 = v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v147 = (v121 - v11);
  v131 = type metadata accessor for TTRReminderDetailViewModel(0);
  MEMORY[0x28223BE20](v131);
  v13 = v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v144);
  v146 = v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = v121 - v16;
  v17 = sub_21DBF4CAC();
  v138 = *(v17 - 8);
  v139 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor;
  v21 = *(v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor);
  v22 = *(v20 + 8);
  ObjectType = swift_getObjectType();
  v24 = *(v22 + 16);
  v136 = ObjectType;
  v137 = v21;
  v135 = v24;
  v145 = v24(ObjectType, v22);
  v151 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v149 = v4;
  v141 = v13;
  if (!Strong)
  {
    goto LABEL_7;
  }

  v26 = sub_21D5CC4A8();
  swift_unknownObjectRelease();
  v27 = *(v26 + 32);

  v28 = qword_27CE8EBE0;
  swift_beginAccess();
  if (!*&v27[v28])
  {

LABEL_7:
    v30 = 0;
    goto LABEL_8;
  }

  sub_21D0D3954(&v27[v28], &v163, &qword_27CE5E8E0);

  v30 = *(&v163 + 1);
  v29 = v163;
  swift_unknownObjectRetain();
  sub_21D0CF7E0(&v163, &qword_27CE5E8E0);
  if (!v29)
  {
LABEL_8:
    v142 = 0;
    v140 = 1;
    goto LABEL_9;
  }

  v31 = swift_getObjectType();
  v124 = v30;
  v32 = *(v30 + 8);
  v33 = *(v32 + 32);
  swift_unknownObjectRetain();
  v33(&v153, v31, v32);
  v142 = v29;
  swift_unknownObjectRelease();
  sub_21D0D0FD0(&v153, &v163);
  v34 = *(&v164 + 1);
  v35 = v165;
  __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
  if ((*(v35 + 16))(v34, v35))
  {
    v36 = *(&v164 + 1);
    v37 = v165;
    __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
    LODWORD(v138) = (*(v37 + 40))(v36, v37);
    v38 = *(&v164 + 1);
    v39 = v165;
    __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
    LODWORD(v139) = (*(v39 + 48))(v38, v39);
    __swift_destroy_boxed_opaque_existential_0(&v163);
    v140 = 0;
    goto LABEL_15;
  }

  __swift_destroy_boxed_opaque_existential_0(&v163);
  v140 = 0;
  v30 = v124;
LABEL_9:
  v124 = v30;
  v40 = [v145 titleAsString];
  if (v40)
  {
    v41 = v40;
    v42 = sub_21DBFA16C();
    v44 = v43;

    *&v163 = v42;
    *(&v163 + 1) = v44;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v45 = sub_21DBFBB3C();
    v47 = v46;
    (*(v138 + 8))(v19, v139);

    v48 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v48 = v45 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v138) = v48 != 0;
  }

  else
  {
    LODWORD(v138) = 0;
  }

  LODWORD(v139) = 1;
LABEL_15:
  v49 = v136;
  v50 = v135(v136, v22);
  v51 = [v50 objectID];

  v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v54 = v150;
  (*(*(v53 - 8) + 56))(v150 + v52, 1, 1, v53);
  *v54 = v51;
  swift_storeEnumTagMultiPayload();
  v55 = v151;
  v56 = *(v151 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_configuration);
  LODWORD(v132) = *(v151 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_configuration + 1);
  v57 = *(v151 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_dueDateCapability);
  v172[3] = &type metadata for PresenterState;
  v172[4] = &off_282EC6C50;
  v172[0] = v57;
  v58 = *(v22 + 56);
  v121[2] = v57;

  v58(&v169, v49, v22);
  v59 = v169;
  v60 = v170;
  v61 = v171;
  v168[5] = v169;
  v168[6] = v170;
  v168[7] = v171;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v168);

  v62 = *(v55 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_observerForShouldShowAsUnauthorizedForPreciseLocation);
  swift_beginAccess();
  v63 = *(v62 + 16);
  *(&v154 + 1) = sub_21D0D8CF0(0, &qword_280D17770);
  *&v155 = &protocol witness table for REMReminderChangeItem;
  v64 = v145;
  *&v153 = v145;
  *&v160 = 3;
  swift_retain_n();
  v65 = v64;
  TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v153, &v160, &v163);
  v67 = *(&v163 + 1);
  v66 = v163;
  LODWORD(v136) = v164;
  v68 = *(&v164 + 1);
  v69 = v165;
  if (v163)
  {
    v70 = v163;
    v71 = v141;
  }

  else
  {
    v70 = [v65 title];
    v66 = 0;
    v71 = v141;
    if (!v70)
    {
      v70 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      v66 = 0;
    }
  }

  v135 = v70;
  v144 = v67;
  v133 = v66;
  if (v67)
  {
    v72 = v66;
    v73 = v67;
    v74 = v149;
  }

  else
  {
    v75 = v66;
    v73 = [v65 notes];
    v74 = v149;
    if (!v73)
    {
      v73 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v134 = v73;
  sub_21D0D3954(v168, &v158, &qword_27CE59DC0);
  if (v159)
  {
    sub_21D0D0FD0(&v158, &v160);
    sub_21D0D32E4(&v160, &v163);
    v76 = v144;
    TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)(&v163, &v153);
    __swift_destroy_boxed_opaque_existential_0(&v160);
    v165 = v155;
    v166 = v156;
    v167[0] = v157[0];
    *(v167 + 9) = *(v157 + 9);
    v163 = v153;
    v164 = v154;
  }

  else
  {
    v77 = v144;
    sub_21D0CF7E0(&v158, &qword_27CE59DC0);
    v163 = xmmword_21DC19C40;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    memset(v167, 0, 25);
  }

  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  sub_21D0D32E4(v172, &v158);
  *&v155 = 0;
  v153 = 0u;
  v154 = 0u;
  BYTE8(v155) = -1;
  v152[0] = 0;
  v78 = v65;
  sub_21D7BC638(v78, &v160, &v158, v63 & 1, &v153, v152, v132, v71);
  v79 = v56 ^ 1;
  v80 = v151;

  v145 = v78;
  v132 = sub_21D5B4B64(v78, v71, v79, v63 & 1, v80);

  sub_21D10514C(v150, v146, type metadata accessor for TTRRemindersListViewModel.Item);
  if (v79)
  {
    v82 = 1;
    v81 = v147;
  }

  else
  {
    v81 = v147;
    sub_21D10514C(v71 + *(v131 + 80), v147, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    v82 = 0;
  }

  v121[0] = *(v148 + 56);
  v121[1] = v148 + 56;
  (v121[0])(v81, v82, 1, v74);
  sub_21D0D3954(v168, &v160, &qword_27CE59DC0);
  if (*(&v161 + 1))
  {
    sub_21D0D0FD0(&v160, &v158);
    type metadata accessor for TTRListColors();
    sub_21D0D32E4(&v158, v152);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    static TTRListColors.color(for:)(v152, &v153);
    sub_21D0CF7E0(v152, &qword_27CE59DC0);
    __swift_destroy_boxed_opaque_existential_0(&v158);
    v127 = v154;
    v129 = v153;
    v130 = *(&v155 + 1);
    v131 = v155;
    v128 = v156;
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v130 = 0;
    v131 = 0;
    v129 = 0u;
    v128 = 255;
    v127 = 0u;
  }

  sub_21D0D3954(v168, &v153, &qword_27CE59DC0);
  v83 = *(&v154 + 1);
  LODWORD(v137) = v63;
  v84 = v69;
  if (*(&v154 + 1))
  {
    v85 = v155;
    __swift_project_boxed_opaque_existential_1(&v153, *(&v154 + 1));
    v86 = (*(v85 + 32))(v83, v85);
    v125 = v87;
    v126 = v86;
    __swift_destroy_boxed_opaque_existential_0(&v153);
  }

  else
  {
    sub_21D0CF7E0(&v153, &qword_27CE59DC0);
    v125 = 0xE000000000000000;
    v126 = 0;
  }

  sub_21D0D3954(&v163, &v153, &unk_27CE5E9E0);
  sub_21DBF8E0C();
  v88 = v145;
  v89 = [v145 accountCapabilities];
  v90 = [v89 supportsTextStyling];

  sub_21D0CF7E0(&v163, &unk_27CE5E9E0);
  sub_21D106C18(v71, type metadata accessor for TTRReminderDetailViewModel);
  sub_21D0CF7E0(v168, &qword_27CE59DC0);
  sub_21D106C18(v150, type metadata accessor for TTRRemindersListViewModel.Item);
  __swift_destroy_boxed_opaque_existential_0(v172);
  v91 = type metadata accessor for TTRIQuickEntryViewModel(0);
  v92 = v91[19];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v94 = *(v93 - 8);
  v95 = *(v94 + 56);
  v144 = (v94 + 56);
  (v95)(a1 + v92, 1, 1, v93);
  sub_21D1057CC(v146, a1, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a1 + v91[5]) = v138 & 1;
  *(a1 + v91[6]) = v135;
  v96 = a1 + v91[7];
  *v96 = v136;
  *(v96 + 8) = v68;
  *(v96 + 16) = v84;
  v150 = v91[8];
  *(a1 + v150) = MEMORY[0x277D84F90];
  *(a1 + v91[9]) = v134;
  v97 = v91[10];
  sub_21D0D523C(v147, a1 + v97, &qword_27CE5D998);

  v98 = v131;
  *(a1 + v91[11]) = v132;
  v99 = a1 + v91[12];
  v100 = v127;
  *v99 = v129;
  *(v99 + 16) = v100;
  v101 = v130;
  *(v99 + 32) = v98;
  *(v99 + 40) = v101;
  *(v99 + 48) = v128;
  v102 = (a1 + v91[13]);
  v103 = v125;
  *v102 = v126;
  v102[1] = v103;
  v104 = (a1 + v91[14]);
  v105 = v166;
  v104[2] = v165;
  v104[3] = v105;
  v104[4] = v167[0];
  *(v104 + 73) = *(v167 + 9);
  v106 = v164;
  *v104 = v163;
  v104[1] = v106;
  *(a1 + v91[15]) = v137 & 1;
  *(a1 + v91[16]) = v68;
  *(a1 + v91[17]) = v90;
  *(a1 + v91[18]) = v139 & 1;
  v107 = [v88 attachmentContext];
  if (v107)
  {
    v108 = v107;
    v109 = [v107 attachments];
    v151 = v93;
    v110 = v109;

    sub_21D0D8CF0(0, &qword_280D0C310);
    v111 = sub_21DBFA5EC();

    *&v153 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E900);
    sub_21DBF54CC();
    v147 = v95;
    sub_21D0D9418(&qword_280D0C3A0, &unk_27CE5E900);
    v112 = v123;
    sub_21DBFA48C();

    sub_21D106C18(a1 + v92, type metadata accessor for TTRIQuickEntryViewModel.URLState);
    sub_21D0D523C(v112, a1 + v92, &qword_27CE5EA20);
    (v147)(a1 + v92, 0, 1, v151);
  }

  if (v140)
  {
    v113 = MEMORY[0x277D84F90];
  }

  else
  {
    v115 = swift_getObjectType();
    v116 = v124;
    v117 = *(v124 + 40);
    swift_unknownObjectRetain();
    v113 = v117(v115, v116);
    swift_unknownObjectRelease();
  }

  v114 = v149;
  *(a1 + v150) = v113;
  v118 = v143;
  sub_21D0D3954(a1 + v97, v143, &qword_27CE5D998);
  if ((*(v148 + 48))(v118, 1, v114) == 1)
  {

    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v118, &qword_27CE5D998);
  }

  else
  {
    v120 = v122;
    sub_21D1057CC(v118, v122, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    sub_21D4582E8(v120);

    swift_unknownObjectRelease();
    sub_21D0CF7E0(a1 + v97, &qword_27CE5D998);
    sub_21D1057CC(v120, a1 + v97, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    return (v121[0])(a1 + v97, 0, 1, v114);
  }
}

void sub_21D5BCA88(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_dueDateCapability);
  v3 = *(v2 + 56);
  if (v3 == 2)
  {
    v4 = 0;
    v5 = 0uLL;
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = v3 & 1;
  }

  *a1 = v5;
  *(a1 + 16) = v4;
}

uint64_t sub_21D5BCAC0(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = *v1;
  v5 = sub_21DBF619C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3)
  {
    v20[1] = v4;
    v21 = v3;
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    sub_21DBF62DC();
    sub_21DBF62CC();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
    v10 = &v8[v9[12]];
    v11 = v9[16];
    v3 = &v8[v9[20]];
    v12 = *MEMORY[0x277D44E20];
    v13 = sub_21DBF613C();
    (*(*(v13 - 8) + 104))(v8, v12, v13);
    *v10 = TTRUserDefaults.activitySessionId.getter();
    v10[1] = v14;
    TTRUserDefaults.activitySessionBeginTime.getter(&v8[v11]);
    v22 = sub_21DBFC8EC();
    v23 = v15;
    MEMORY[0x223D42AA0](0x6E456B636975512DLL, 0xEB00000000797274);
    v16 = v23;
    *v3 = v22;
    v3[1] = v16;
    (*(v6 + 104))(v8, *MEMORY[0x277D44E98], v5);
    sub_21DBF62BC();

    (*(v6 + 8))(v8, v5);
    LOBYTE(v3) = v21;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = v2[5];
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v2, &off_282EC6818, v3 & 1, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D5BCD7C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_21D5CC4A8();
    swift_unknownObjectRelease();
    v3 = *(v2 + 32);

    v4 = qword_27CE8EBE0;
    swift_beginAccess();
    if (*&v3[v4])
    {
      sub_21D0D3954(&v3[v4], v8, &qword_27CE5E8E0);

      v5 = v8[1];
      swift_unknownObjectRetain();
      sub_21D0CF7E0(v8, &qword_27CE5E8E0);
      ObjectType = swift_getObjectType();
      (*(v5 + 56))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  LOBYTE(v8[0]) = 2;
  v7.value._object = 0x800000021DC61470;
  v7.value._countAndFlagsBits = 0xD000000000000010;
  TTRITipKitSignal.donate(signalContext:)(v7);
}

uint64_t sub_21D5BCEB4(char a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE5E820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v7 = inited + 32;
  v8 = a1 & 1;
  v9 = 1702195828;
  if (!v8)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  v11 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v11;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v7, &qword_27CE5A6B0);
  sub_21DAEACDC();

  return a3(v8);
}

unsigned __int8 *sub_21D5BD01C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE5E820);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v6 = *(v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_dueDateCapability);
  v10 = a3;
  result = sub_21D455530(&v10);
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = *(v6 + 24);

    v8(1);

    return sub_21D0EC9F4(v8, v9);
  }

  return result;
}

uint64_t sub_21D5BD13C(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5E820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  *(inited + 32) = 1701606770;
  *(inited + 40) = 0xE400000000000000;
  v6 = [objc_opt_self() localizedDescriptionForRepeatType_];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0x7265646E696D6572;
  *(inited + 88) = 0xE800000000000000;
  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);
  v14 = [v13 objectID];

  *(inited + 120) = sub_21D0D8CF0(0, &qword_280D17880);
  *(inited + 96) = v14;
  sub_21D17716C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0);
  swift_arrayDestroy();
  sub_21DAEACDC();

  return sub_21D455EBC(a1);
}

void sub_21D5BD34C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v2);
  v4 = &v9[-v3];
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE5E820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  sub_21D0D3954(a1, v4, &unk_27CE62610);
  v7 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  sub_21D4562D4(a1);
}

uint64_t sub_21D5BD508()
{
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5E820);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  type metadata accessor for DetailModuleDelegate();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v3 = (v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_currentDetailModuleEventHandler);
  *v3 = v2;
  v3[1] = &off_282EC6700;

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  (*(v4 + 72))(v23, ObjectType, v4);
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_configuration + 8);
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_configuration + 16);
  v22[0] = v6;
  v22[1] = 0;
  v20 = v7;
  v21 = v8;
  v19[2] = v23[2];
  v19[3] = v23[3];
  v19[4] = v23[4];
  v19[0] = v23[0];
  v19[1] = v23[1];
  v16 = 1;
  v17 = 0u;
  v18 = 0u;
  memset(v15, 0, sizeof(v15));
  v9 = v6;
  v10 = sub_21D831A34(v22, v2, &off_282EC6700, &v20, 0, 1, v19, &v16, v15);

  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = [Strong navigationController], v12, v13))
  {
    [v13 pushViewController:v10 animated:1];
    sub_21D5B8E5C(v23);
  }

  else
  {
    sub_21D5B8E5C(v23);
  }
}

void sub_21D5BD7AC(void *a1, void *a2)
{
  v63[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v62 = sub_21DBF54CC();
  v14 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v57 - v17;
  v18 = sub_21DBF4CAC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_10;
  }

  v61 = v2;
  v63[0] = a1;
  v63[1] = a2;
  sub_21DBF8E0C();
  sub_21DBF4BBC();
  sub_21D176F0C();
  v23 = sub_21DBFBB3C();
  v25 = v24;
  (*(v19 + 8))(v22, v18);

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

LABEL_10:
    (*(v14 + 56))(v7, 1, 1, v62, v20);
    sub_21D5BDF38(v7);
    sub_21D0CF7E0(v7, &qword_27CE5EA20);
    return;
  }

  v27 = v23;
  v28 = sub_21DBFA28C();
  v29 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v63[0] = 0;
  v30 = [v29 initWithTypes:32 error:v63];
  v57 = v30;
  if (!v30)
  {
    v34 = v27;
    v41 = v63[0];
    v42 = sub_21DBF52DC();

    swift_willThrow();
    v37 = v62;
    goto LABEL_12;
  }

  v31 = v30;
  v32 = v63[0];
  v33 = v31;
  v34 = v27;
  v35 = sub_21DBFA12C();
  v36 = [v33 firstMatchInString:v35 options:0 range:{0, v28}];

  v37 = v62;
  if (!v36)
  {
LABEL_12:
    v43 = *(v14 + 56);
    v43(v13, 1, 1, v37);
    v58 = 0;
    goto LABEL_15;
  }

  v58 = v36;
  v38 = [v36 URL];
  if (v38)
  {
    v39 = v38;
    sub_21DBF546C();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v43 = *(v14 + 56);
  v43(v10, v40, 1, v37);
  sub_21D0D523C(v10, v13, &qword_27CE5EA20);
  if ((*(v14 + 48))(v13, 1, v37) != 1)
  {

    v56 = v59;
    (*(v14 + 32))(v59, v13, v37);
    (*(v14 + 16))(v7, v56, v37);
    v43(v7, 0, 1, v37);
    sub_21D5BDF38(v7);

    sub_21D0CF7E0(v7, &qword_27CE5EA20);
    (*(v14 + 8))(v56, v37);
    return;
  }

LABEL_15:
  sub_21D0CF7E0(v13, &qword_27CE5EA20);
  v44 = objc_opt_self();
  v45 = sub_21DBFA12C();
  v46 = [v44 _lp_URLWithUserTypedString_relativeToURL_];

  if (v46)
  {

    v47 = v60;
    sub_21DBF546C();

    (*(v14 + 16))(v7, v47, v37);
    v43(v7, 0, 1, v37);
    sub_21D5BDF38(v7);

    sub_21D0CF7E0(v7, &qword_27CE5EA20);
    (*(v14 + 8))(v47, v37);
  }

  else
  {
    if (qword_27CE56A70 != -1)
    {
      swift_once();
    }

    v48 = sub_21DBF84BC();
    __swift_project_value_buffer(v48, qword_27CE5E820);
    sub_21DBF8E0C();
    v49 = sub_21DBF84AC();
    v50 = sub_21DBFAE9C();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v57;
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63[0] = v54;
      *v53 = 136315138;
      v55 = sub_21D0CDFB4(v34, v25, v63);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_21D0C9000, v49, v50, "Discarding edits for invalid URL string: {url: %s}", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223D46520](v54, -1, -1);
      MEMORY[0x223D46520](v53, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21D5D1640();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D5BDF38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v27[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27[1] = v3;
  v28 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v27 - v5;
  v7 = sub_21DBF84BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_27CE5E820);
  (*(v8 + 16))(v10, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v29 = a1;
  sub_21D0D3954(a1, v6, &qword_27CE5EA20);
  v13 = sub_21DBF54CC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5EA20);
    v15 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = sub_21DBF535C();
    v18 = v17;
    (*(v14 + 8))(v6, v13);
    v15 = (inited + 48);
    *(inited + 72) = MEMORY[0x277D837D0];
    if (v18)
    {
      *v15 = v16;
      goto LABEL_8;
    }
  }

  *v15 = 0;
  v18 = 0xE000000000000000;
LABEL_8:
  *(inited + 56) = v18;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  (*(v8 + 8))(v10, v7);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v19 = objc_opt_self();
  v20 = sub_21DBFA12C();

  v21 = v28;
  sub_21D0D3954(v29, v28, &qword_27CE5EA20);
  v22 = (*(v27[0] + 80) + 24) & ~*(v27[0] + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v30;
  sub_21D0D523C(v21, v23 + v22, &qword_27CE5EA20);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_21D5C59E8;
  *(v24 + 24) = v23;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_57_2;
  v25 = _Block_copy(aBlock);

  [v19 withActionName:v20 block:v25];

  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5BE4EC()
{
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5E820);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  (*(v2 + 56))(v15, ObjectType, v2);
  v4 = v15[0];
  v5 = v15[1];
  v6 = v15[2];
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v16);

  v7 = v17;
  if (!v17)
  {
    return sub_21D0CF7E0(v16, &qword_27CE59DC0);
  }

  v8 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v9 = (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
  v10 = (*(v2 + 16))(ObjectType, v2);
  v11 = [v10 saveRequest];

  v12 = [v11 store];
  v13 = swift_allocObject();
  swift_weakInit();

  sub_21D5B6D14(v12, v9, sub_21D5C54F8, v13);
}

uint64_t sub_21D5BE748(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v5 = objc_opt_self();
    v6 = sub_21DBFA12C();

    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v1;
    *(v7 + 32) = v2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21D5C5500;
    *(v8 + 24) = v7;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_58;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    [v5 withActionName:v6 block:{v9, 0x800000021DC501F0}];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D5BE9C8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = sub_21D5CC4A8();
    swift_unknownObjectRelease();
    v1 = *(v0 + 32);

    v2 = qword_27CE8EBE0;
    swift_beginAccess();
    if (*&v1[v2])
    {
      sub_21D0D3954(&v1[v2], v11, &qword_27CE5E8E0);

      v3 = *(&v11[0] + 1);
      swift_unknownObjectRetain();
      sub_21D0CF7E0(v11, &qword_27CE5E8E0);
      ObjectType = swift_getObjectType();
      (*(*(v3 + 8) + 32))(v11, ObjectType);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
LABEL_6:
  sub_21D0D3954(v11, &v16, &qword_27CE62670);
  if (v17)
  {
    sub_21D0D0FD0(&v16, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    if ((*(v6 + 16))(v5, v6))
    {
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9 = (*(v8 + 32))(v7, v8);
    }

    else
    {
      v9 = 0;
    }

    sub_21D0CF7E0(v11, &qword_27CE62670);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_21D0CF7E0(v11, &qword_27CE62670);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_21D5BEBBC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = sub_21D5CC57C();
    swift_unknownObjectRelease();
    v1 = *(v0 + 32);

    v2 = qword_27CE8EBF0;
    swift_beginAccess();
    if (*&v1[v2])
    {
      sub_21D0D3954(&v1[v2], v11, &qword_27CE5E8F8);

      v3 = *(&v11[0] + 1);
      swift_unknownObjectRetain();
      sub_21D0CF7E0(v11, &qword_27CE5E8F8);
      ObjectType = swift_getObjectType();
      (*(v3 + 56))(v11, ObjectType, v3);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
LABEL_6:
  sub_21D0D3954(v11, &v16, &unk_27CE62660);
  if (v17)
  {
    sub_21D0D0FD0(&v16, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    if ((*(v6 + 8))(v5, v6))
    {
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9 = (*(v8 + 16))(v7, v8);
    }

    else
    {
      v9 = 0;
    }

    sub_21D0CF7E0(v11, &unk_27CE62660);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_21D0CF7E0(v11, &unk_27CE62660);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_21D5BEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_21DBFA84C();
  *(v5 + 24) = sub_21DBFA83C();
  *(v5 + 41) = a5 & 1;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_21D1B4BCC;

  return sub_21D5BEE80(v5 + 40, (v5 + 41));
}

uint64_t sub_21D5BEE80(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 74) = *a2;
  sub_21DBFA84C();
  *(v3 + 32) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x2822009F8](sub_21D5BEF20, v5, v4);
}

uint64_t sub_21D5BEF20()
{
  v16 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState;
  *(v0 + 56) = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState;
  if (*(v1 + v2))
  {

    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v1 + v2) = 1;
    if (qword_27CE56A70 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE5E820);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 74);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x6574736575716572;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (v8)
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0x800000021DC62270;
      }

      v13 = sub_21D0CDFB4(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Quick Entry cancel editing {dismissalState: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    *(v0 + 73) = *(v0 + 74);
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_21D5BF194;

    return sub_21D5C16D8(v0 + 72, (v0 + 73));
  }
}

uint64_t sub_21D5BF194()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21D5BF2B4, v3, v2);
}

uint64_t sub_21D5BF2B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v3 = *(v0 + 72);
  *(v2 + v1) = 2 * (v3 == 0);
  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

void sub_21D5BF334(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = sub_21DBF619C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState))
  {
    v28 = *a1;
    if (qword_27CE56A70 != -1)
    {
      swift_once();
    }

    v27[1] = v4;
    v29 = v7;
    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5E820);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    sub_21DBF62DC();
    sub_21DBF62CC();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
    v14 = &v11[v13[12]];
    v15 = v13[16];
    v16 = &v11[v13[20]];
    v17 = *MEMORY[0x277D44E30];
    v18 = sub_21DBF613C();
    (*(*(v18 - 8) + 104))(v11, v17, v18);
    *v14 = TTRUserDefaults.activitySessionId.getter();
    v14[1] = v19;
    TTRUserDefaults.activitySessionBeginTime.getter(&v11[v15]);
    v30 = sub_21DBFC8EC();
    v31 = v20;
    MEMORY[0x223D42AA0](0x6E456B636975512DLL, 0xEB00000000797274);
    v21 = v31;
    *v16 = v30;
    v16[1] = v21;
    (*(v9 + 104))(v11, *MEMORY[0x277D44E98], v8);
    sub_21DBF62BC();

    (*(v9 + 8))(v11, v8);
    v22 = sub_21DBFA89C();
    v23 = v29;
    (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
    sub_21DBFA84C();

    v24 = sub_21DBFA83C();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    *(v25 + 32) = v2;
    *(v25 + 40) = v28;
    sub_21D1B5178(0, 0, v23, &unk_21DC1D508, v25);
  }
}

uint64_t sub_21D5BF71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_21DBFA84C();
  *(v5 + 24) = sub_21DBFA83C();
  *(v5 + 41) = a5 & 1;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_21D0EF998;

  return sub_21D5BF7EC(v5 + 40, (v5 + 41));
}

uint64_t sub_21D5BF7EC(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 74) = *a2;
  sub_21DBFA84C();
  *(v3 + 32) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x2822009F8](sub_21D5BF88C, v5, v4);
}

uint64_t sub_21D5BF88C()
{
  v16 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState;
  *(v0 + 56) = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState;
  if (*(v1 + v2))
  {

    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v1 + v2) = 1;
    if (qword_27CE56A70 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE5E820);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 74);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x6574736575716572;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (v8)
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0x800000021DC62270;
      }

      v13 = sub_21D0CDFB4(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Quick Entry commit editing {dismissalState: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    *(v0 + 73) = *(v0 + 74);
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_21D5BFB00;

    return sub_21D5C12DC(v0 + 72, (v0 + 73));
  }
}

uint64_t sub_21D5BFB00()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21D5C62D0, v3, v2);
}

id sub_21D5BFC20(void *a1)
{
  v3 = sub_21DBF61CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF7A2C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 accountCapabilities];
  v13 = [v12 supportsPersonTrigger];

  if (!v13)
  {
    return 0;
  }

  result = [a1 contactHandles];
  if (!result)
  {
    return result;
  }

  v15 = result;
  v19[1] = v1;
  sub_21DBF633C();
  sub_21DBF630C();
  sub_21DBF62EC();

  v16 = (*(v8 + 88))(v11, v7);
  if (v16 == *MEMORY[0x277D45730])
  {
    (*(v8 + 96))(v11, v7);
    swift_allocObject();
    swift_weakInit();
    v17 = sub_21DBF816C();
    sub_21DBF820C();

    return 0;
  }

  if (v16 == *MEMORY[0x277D45738])
  {
    (*(v8 + 96))(v11, v7);
    (*(v4 + 32))(v6, v11, v3);
    v18 = sub_21DBF61AC();

    (*(v4 + 8))(v6, v3);
    return v18;
  }

  else
  {
    result = sub_21DBFC63C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5BFF50()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext);
    v1._object = 0x800000021DC62230;
    v1._countAndFlagsBits = 0xD000000000000034;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v1);
  }

  return result;
}

uint64_t sub_21D5BFFEC@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 url];
    sub_21DBF546C();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_21DBF54CC();
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_21D5C00AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  v7 = sub_21DBFA12C();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D5C60D0;
  *(v9 + 24) = v8;
  v12[4] = sub_21D0E622C;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21D0E6204;
  v12[3] = &block_descriptor_110_1;
  v10 = _Block_copy(v12);

  swift_unknownObjectRetain();

  [v6 withActionName:v7 block:v10];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_21D5C0250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v6 = swift_getObjectType();
  v7 = (*(a3 + 72))(v6, a3);
  (*(v4 + 360))(v7, ObjectType, v4);
}

void sub_21D5C0300(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (a1)
  {
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 16))(ObjectType, v13);
    v16 = [v15 objectID];

    v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    (*(*(v18 - 8) + 56))(&v11[v17], 1, 1, v18);
    *v11 = v16;
    swift_storeEnumTagMultiPayload();
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_21DBFBEEC();
    v19 = sub_21DBFC8EC();
    v21 = v20;

    v39 = v19;
    v40 = v21;
    MEMORY[0x223D42AA0](0xD000000000000020, 0x800000021DC62540);
    v22 = sub_21D5C0768(v11, v39, v40);
    v24 = v23;

    sub_21D106C18(v11, type metadata accessor for TTRRemindersListViewModel.Item);
    if (v22)
    {
      v38 = swift_getObjectType();
      (*(v24 + 72))(&v39, v38, v24);
      v25 = v12;
      v26 = v41;
      v27 = v42;
      __swift_project_boxed_opaque_existential_1(&v39, v41);
      v28 = *(v27 + 152);
      v29 = v27;
      v12 = v25;
      v28(a1, v26, v29);
      __swift_destroy_boxed_opaque_existential_0(&v39);
      v39 = 3;
      (*(v24 + 104))(&v39, v38, v24);
      swift_unknownObjectRelease();
    }
  }

  if (v12 != 3)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
      v31 = *(v30 + 48);
      v32 = *(v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
      v33 = swift_getObjectType();
      v34 = (*(v32 + 16))(v33, v32);
      v35 = [v34 objectID];

      v36 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      (*(*(v37 - 8) + 56))(&v8[v36], 1, 1, v37);
      *v8 = v35;
      swift_storeEnumTagMultiPayload();
      v8[v31] = v12;
      (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
      sub_21D5D0F1C(v8);
      swift_unknownObjectRelease();
      sub_21D0CF7E0(v8, &qword_27CE5E8E8);
    }
  }
}

uint64_t sub_21D5C0768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10514C(a1, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  v10 = *(v4 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 16))(ObjectType, v10);
  (*(v10 + 24))(v24, ObjectType, v10);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = *(v4 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_editingSessionSharedProperties);
  v16 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for TTRReminderStandaloneEditingSession();
  v17 = swift_allocObject();

  sub_21DBF56AC();
  sub_21D1057CC(v9, v17 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v18 = (v17 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_acquirerName);
  *v18 = v23;
  v18[1] = a3;
  *(v17 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_reminderChangeItem) = v12;
  sub_21D0D0FD0(v24, v17 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_attributeEditor);
  v19 = (v17 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_pendingMoveTargetListValue);
  *v19 = sub_21D5C5A90;
  v19[1] = v13;
  v20 = (v17 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setPendingMoveTargetList);
  *v20 = sub_21D5C5A98;
  v20[1] = v14;
  *(v17 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_sharedPropertiesWrapper) = v15;
  v21 = (v17 + OBJC_IVAR____TtC15RemindersUICore35TTRReminderStandaloneEditingSession_setNeedsDisplayHandler);
  *v21 = sub_21D5C5AA0;
  v21[1] = v16;
  sub_21DBF8E0C();
  return v17;
}

uint64_t sub_21D5C0A00()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);

  sub_21D106C18(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_viewModel, type metadata accessor for TTRIQuickEntryViewModel);
  sub_21D257D78(*(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_configuration + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_configuration + 16));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_quickBar, &qword_27CE5E710);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_autoCompleteReminderProvider);

  sub_21D5C5F74(*(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_currentAttachImportingContext));

  return v0;
}

uint64_t sub_21D5C0B90()
{
  sub_21D5C0A00();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIQuickEntryPresenter()
{
  result = qword_27CE5E8D0;
  if (!qword_27CE5E8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D5C0C3C()
{
  result = type metadata accessor for TTRIQuickEntryViewModel(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_21D5C0E1C(uint64_t a1)
{
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5E820);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  return sub_21D454B0C(a1);
}

void sub_21D5C0F48(char a1, _OWORD *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 9) = *(a2 + 41);
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5E820);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  sub_21D456DF4(a1 & 1, v5);
}

uint64_t sub_21D5C1048(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE5E820);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  return a6(a1 & 1);
}

uint64_t sub_21D5C118C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE5E820);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v12[0] = v7;
  v12[1] = v8;
  v13 = v9;
  return a6(v12);
}

void sub_21D5C127C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = (*(v4 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) | a4) & 1;
  v5._object = 0x800000021DC62230;
  v5._countAndFlagsBits = 0xD000000000000034;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v5);
}

uint64_t sub_21D5C12DC(uint64_t a1, _BYTE *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 64) = *a2;
  sub_21DBFA84C();
  *(v3 + 56) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D5C137C, v5, v4);
}

uint64_t sub_21D5C137C()
{
  v29 = v0;
  v1 = *(v0 + 48);

  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE5E820);
  v6 = v4;
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
    _os_log_impl(&dword_21D0C9000, v7, v8, "Quick Entry Save {objectID: %@}", v9, 0xCu);
    sub_21D0CF7E0(v10, &unk_27CE60070);
    MEMORY[0x223D46520](v10, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  (*(v2 + 368))(&v26, ObjectType, v2);
  v13 = v26;
  v12 = v27;
  v14 = sub_21DBF84AC();
  v15 = sub_21DBFAE9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21D0C9000, v14, v15, "Quick Entry Save: about to donate reminder update", v16, 2u);
    MEMORY[0x223D46520](v16, -1, -1);
  }

  sub_21DBF60DC();
  v17 = sub_21DBF60CC();
  type metadata accessor for TTRRemindersInteraction();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = v6;
  sub_21D5C4C78(v19, v18);

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);
    v22 = *(v21 + 40);
    v23 = swift_getObjectType();
    v26 = v13;
    v27 = v12;
    v28 = v20;
    (*(v22 + 32))(v21, &off_282EC6818, &v26, &v28, v23, v22);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  **(v0 + 40) = 0;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21D5C16D8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  *(v3 + 73) = *a2;
  sub_21DBFA84C();
  *(v3 + 120) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 128) = v5;
  *(v3 + 136) = v4;

  return MEMORY[0x2822009F8](sub_21D5C1778, v5, v4);
}

uint64_t sub_21D5C1778()
{
  v22 = v0;
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 80))(ObjectType, v1) & 1) != 0 || (sub_21D5BE9C8())
  {
    if (*(v0 + 73) != 1)
    {
LABEL_4:

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v0 + 73);
        v4 = *(v0 + 112);
        v5 = *(v4 + 40);
        v6 = swift_getObjectType();
        LOBYTE(v20[0]) = v3;
        (*(v5 + 24))(v4, &off_282EC6818, v20, v6, v5);
        swift_unknownObjectRelease();
      }

      **(v0 + 104) = 0;
      v7 = *(v0 + 8);

      return v7();
    }
  }

  else
  {
    v9 = *(v0 + 73);
    if ((sub_21D5BEBBC() & 1) == 0 || (v9 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v10 = sub_21DBFA12C();

  v11 = [objc_opt_self() alertControllerWithTitle:0 message:v10 preferredStyle:{0, 0x800000021DC46DA0}];
  *(v0 + 144) = v11;

  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRelease();
    if (Strong)
    {
      LOBYTE(v20[0]) = 1;
      *(v0 + 16) = Strong;
      *(v0 + 24) = 0u;
      *(v0 + 40) = 0u;
      *(v0 + 56) = 64;
      *(v0 + 64) = 0;
      *(v0 + 72) = 1;
      v13 = *(v0 + 32);
      v20[0] = *(v0 + 16);
      v20[1] = v13;
      v21[0] = *(v0 + 48);
      *(v21 + 9) = *(v0 + 57);
      UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(v20);
      sub_21D1A9430(v0 + 16);
    }
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(*(v0 + 112) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62620);
  v14 = swift_allocObject();
  *(v0 + 152) = v14;
  *(v14 + 16) = xmmword_21DC08D20;
  v15 = sub_21DBF516C();
  *(v14 + 56) = 1;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  *(v14 + 48) = 2;
  v17 = sub_21DBF516C();
  *(v14 + 88) = 0;
  *(v14 + 64) = v17;
  *(v14 + 72) = v18;
  *(v14 + 80) = 1;
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  *v19 = v0;
  v19[1] = sub_21D5C1BE4;

  return sub_21D57B138(v11, v14);
}

uint64_t sub_21D5C1BE4(char a1)
{
  v2 = *v1;
  *(*v1 + 74) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_21D5C1D30, v4, v3);
}

uint64_t sub_21D5C1D30()
{
  v11 = v0;
  v1 = *(v0 + 74);
  v2 = *(v0 + 144);

  if (v1 == 2 || (*(v0 + 74) & 1) == 0)
  {
    v7 = 2;
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v0 + 73);
      v4 = *(v0 + 112);
      v5 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      v10 = v3;
      (*(v5 + 24))(v4, &off_282EC6818, &v10, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    v7 = 0;
  }

  **(v0 + 104) = v7;
  v8 = *(v0 + 8);

  return v8();
}

void (*sub_21D5C1E40(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t sub_21D5C1ED4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_21D5C1F20()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 80))(ObjectType, v1) & 1) != 0 || (sub_21D5BE9C8())
  {
    return 1;
  }

  return sub_21D5BEBBC();
}

uint64_t sub_21D5C1FB0(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [a1 setDelegate_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D5C2020(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 352))(a1, a2, ObjectType, v5);
}

uint64_t sub_21D5C2088(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D5BF7EC(a1, a2);
}

uint64_t sub_21D5C2130(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return sub_21D5BEE80(a1, a2);
}

uint64_t sub_21D5C21DC()
{
  v1 = (*(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_inCellEditingPresenterHelper) + OBJC_IVAR____TtC15RemindersUICore39TTRInCellEditingPresenterManagingHelper_textInputPrimaryLanguageObserver);
  if (!*v1)
  {
    return 0;
  }

  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_21D5C22DC(uint64_t a1, uint64_t a2)
{
  sub_21DBCCF04(a1, a2, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D5C2350@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21D5C23BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRAutoCompleteReminderListScope();
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_21D5C243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_21D5C2464, 0, 0);
}

uint64_t sub_21D5C2464()
{
  v1 = (v0[7] + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_autoCompleteReminderProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v11 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_21D5C25A4;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_21D5C25A4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id sub_21D5C26A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  (*(v1 + 64))(&v11, ObjectType, v1);
  swift_unknownObjectRelease();
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  if (v12 == 255)
  {
    sub_21D157864(v11, 255);
    sub_21D575DF4(v5, v6, v7, v8);
    return 0;
  }

  v9 = v11;
  sub_21D157864(v3, v4);
  sub_21D575DF4(v5, v6, v7, v8);
  if (v4)
  {
    sub_21D157864(v3, v4);
    return 0;
  }

  return v3;
}

void sub_21D5C27D8(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
      v4 = a1;
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v8 = a1;
      v9 = 0;
      v6 = *(v3 + 104);
      v7 = v4;
      v6(&v8, ObjectType, v3);

      swift_unknownObjectRelease();
    }
  }
}

void *sub_21D5C28C0(void *result)
{
  v1 = *result;
  if (*result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = 1;
      v2._countAndFlagsBits = 0xD000000000000034;
      v2._object = 0x800000021DC62230;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
    }
  }

  if ((v1 & 2) != 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext + 1) = 1;
      v3._object = 0x800000021DC62210;
      v3._countAndFlagsBits = 0xD000000000000018;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
    }
  }

  return result;
}

uint64_t sub_21D5C29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v7 = *a5;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  if (swift_weakLoadStrong())
  {
    sub_21D5C00AC(a1, a2);
  }

  result = swift_weakLoadStrong();
  if (v7)
  {
    if (result)
    {
      v10 = 1;
      sub_21D5BF334(&v10);
    }
  }

  else if (result)
  {
    *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = 1;
    v9._countAndFlagsBits = 0xD000000000000034;
    v9._object = 0x800000021DC62230;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v9);
  }

  return result;
}

uint64_t sub_21D5C2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = *a5;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  if (swift_weakLoadStrong())
  {
    sub_21D5C00AC(a1, a2);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = 1;
    v9._countAndFlagsBits = 0xD000000000000034;
    v9._object = 0x800000021DC62230;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v9);
  }

  if (v7)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_21D0D32E4(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router, v12);

      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:{0, 0x800000021DC4F9B0}];
      }

      return __swift_destroy_boxed_opaque_existential_0(v12);
    }
  }

  return result;
}

uint64_t sub_21D5C2E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = *a5;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  if (swift_weakLoadStrong())
  {
    sub_21D5C00AC(a1, a2);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = 1;
    v9._countAndFlagsBits = 0xD000000000000034;
    v9._object = 0x800000021DC62230;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v9);
  }

  if (v7)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_21D0D32E4(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router, v12);

      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:{0, 0x800000021DC4F850}];
      }

      return __swift_destroy_boxed_opaque_existential_0(v12);
    }
  }

  return result;
}

uint64_t sub_21D5C3020()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t destroy for TTRIQuickEntryPresenter.AttachImportingContext(id *a1)
{

  return swift_unknownObjectRelease();
}

uint64_t assignWithCopy for TTRIQuickEntryPresenter.AttachImportingContext(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = v7;
  return a1;
}

uint64_t assignWithTake for TTRIQuickEntryPresenter.AttachImportingContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = v4;
  return a1;
}

uint64_t sub_21D5C3188()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    sub_21D5C0300(0, &v2);
  }

  return result;
}

uint64_t sub_21D5C31DC(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 24);
    sub_21D5C0300(a2, &v5);
  }

  return result;
}

uint64_t sub_21D5C323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_21DBFA84C();
  v5[5] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21D5C32D8, v7, v6);
}

uint64_t sub_21D5C32D8()
{
  *(v0 + 64) = sub_21DBFA83C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21D5C33A4;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D5C33A4()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D5C34E0, v1, v0);
}

uint64_t sub_21D5C34E0()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_21D5C3544, v1, v2);
}

uint64_t sub_21D5C3544()
{
  v2 = v0[2];
  v1 = v0[3];

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  sub_21D5B7518(v5, *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_configuration + 1), v1, &off_282EC66D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21D5C362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D5C36C8, v6, v5);
}

uint64_t sub_21D5C36C8()
{
  v0[7] = *(v0[2] + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_privacyChecker);
  v0[8] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_21D5C3794;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D5C3794()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D5C38D0, v1, v0);
}

uint64_t sub_21D5C38D0()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21D5C397C;

  return sub_21D591090();
}

uint64_t sub_21D5C397C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21D5C3A9C, v3, v2);
}

uint64_t sub_21D5C3A9C()
{
  v1 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  sub_21D5B737C(v4, v1, &off_282EC6678, *(v1 + 48));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21D5C3B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_21DBFA84C();
  v5[5] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21D5C3C0C, v7, v6);
}

uint64_t sub_21D5C3C0C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[8] = v2;
  if (!v2)
  {
LABEL_5:

    v6 = v0[1];

    return v6();
  }

  v3 = 0;
  v0[9] = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_privacyChecker;
  v4 = v1 + 32;
  while (1)
  {
    v0[10] = v3;
    v5 = *(v4 + v3);
    if (v5 != 3)
    {
      break;
    }

    if (v2 == ++v3)
    {
      goto LABEL_5;
    }
  }

  if (*(v4 + v3) <= 1u)
  {
    if (!*(v4 + v3))
    {
      v0[11] = sub_21DBFA83C();
      v8 = swift_task_alloc();
      v0[12] = v8;
      *v8 = v0;
      v8[1] = sub_21D5C3EB8;

      return sub_21D591AA8(2, 1);
    }

    v12 = sub_21D591090;
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v11 = sub_21D5C4310;
    goto LABEL_19;
  }

  if (v5 != 2)
  {
    v12 = sub_21D5BAEF0;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v11 = sub_21D5C4550;
LABEL_19:
    v10[1] = v11;

    return v12();
  }

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_21D5C4430;

  return (sub_21D5BA740)(0);
}

uint64_t sub_21D5C3EB8()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D5C3FF4, v1, v0);
}

uint64_t sub_21D5C3FF4()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_21D5C4058, v1, v2);
}

uint64_t sub_21D5C4058()
{
  v1 = v0[10] + 33;
  v2 = 1 - v0[8];
  do
  {
    if (v2 + v1 == 33)
    {

      v7 = v0[1];

      return v7();
    }

    v0[10] = v1 - 32;
    v3 = *(v0[2] + v1++);
  }

  while (v3 == 3);
  if (v3 <= 1)
  {
    if (!v3)
    {
      v0[11] = sub_21DBFA83C();
      v4 = swift_task_alloc();
      v0[12] = v4;
      *v4 = v0;
      v4[1] = sub_21D5C3EB8;

      return sub_21D591AA8(2, 1);
    }

    v10 = sub_21D591090;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v9 = sub_21D5C4310;
    goto LABEL_18;
  }

  if (v3 != 2)
  {
    v10 = sub_21D5BAEF0;
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v9 = sub_21D5C4550;
LABEL_18:
    v8[1] = v9;

    return v10();
  }

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_21D5C4430;

  return (sub_21D5BA740)(0);
}

uint64_t sub_21D5C4310()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D5C62C0, v3, v2);
}

uint64_t sub_21D5C4430()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D5C62C0, v3, v2);
}

uint64_t sub_21D5C4550()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D5C62C0, v3, v2);
}

void sub_21D5C4674(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(v4 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:a3 animated:a4 & 1 completion:0];
  }
}

uint64_t sub_21D5C472C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21DBFA89C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21DBFA84C();

  v6 = sub_21DBFA83C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21D1B5178(0, 0, v4, &unk_21DC1D490, v7);
}

void sub_21D5C4858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:a3 animated:1 completion:0];
  }
}

uint64_t sub_21D5C48E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a5, v10, &unk_27CE5CD80);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5CD80);
    return 0;
  }

  else
  {
    sub_21D1057CC(v10, v14, type metadata accessor for TTRRemindersListViewModel.Item);
    v16 = sub_21D5C0768(v14, a3, a4);
    sub_21D106C18(v14, type metadata accessor for TTRRemindersListViewModel.Item);
    return v16;
  }
}

uint64_t sub_21D5C4AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_21DBFA89C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21DBFA84C();
  sub_21DBF8E0C();

  v10 = sub_21DBFA83C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a3;
  v11[5] = v4;
  sub_21D1B5178(0, 0, v8, &unk_21DC1D470, v11);
}

void sub_21D5C4BE4()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = 1;
  v1._object = 0x800000021DC62230;
  v1._countAndFlagsBits = 0xD000000000000034;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v1);
}

__n128 sub_21D5C4C60@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(*v1 + 56);
  result = *(*v1 + 40);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_21D5C4C78(void *a1, uint64_t a2)
{
  v4 = sub_21DBF9D2C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28[3] = sub_21D0D8CF0(0, &qword_280D17770);
  v28[4] = &protocol witness table for REMReminderChangeItem;
  v28[0] = a1;
  v14 = *(a2 + 16);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D851F0], v10);
  v15 = a1;
  v14;
  LOBYTE(v14) = sub_21DBF9DAC();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v17 = [v15 title];
    if (v17)
    {
      v18 = v17;
      if ([v17 length] < 1)
      {
      }

      else
      {
        sub_21D0D32E4(v28, v27);
        v19 = swift_allocObject();
        *(v19 + 16) = a2;
        sub_21D0D0FD0(v27, v19 + 24);
        aBlock[4] = sub_21D5C5FB4;
        aBlock[5] = v19;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0D74FC;
        aBlock[3] = &block_descriptor_93_0;
        v20 = _Block_copy(aBlock);

        sub_21DBF9D4C();
        v25 = MEMORY[0x277D84F90];
        sub_21D0CD898();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
        sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
        sub_21DBFBCBC();
        MEMORY[0x223D438F0](0, v9, v6, v20);
        _Block_release(v20);

        (*(v24 + 8))(v6, v4);
        (*(v22 + 8))(v9, v23);
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5C5074()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRelease();
  return Strong;
}

uint64_t sub_21D5C50C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
    v7 = *(v6 + 48);
    sub_21D10514C(a1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
    v4[v7] = 2;
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    sub_21D5D0F1C(v4);
    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v4, &qword_27CE5E8E8);
  }

  return result;
}

uint64_t sub_21D5C51FC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIQuickEntryViewModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext);
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext + 1);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = 0;
  sub_21D5BB9E0(v4);
  v7 = OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_viewModel;
  swift_beginAccess();
  sub_21D5A45C0(v4, v1 + v7);
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D5D143C();
    result = swift_unknownObjectRelease();
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
    v9 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21DC08D00;
    v12 = (v11 + v10);
    v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 16))(ObjectType, v13);
    v16 = [v15 objectID];

    v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
    *v12 = v16;
    swift_storeEnumTagMultiPayload();
    TTRInCellEditingPresenterManagingHelper.updateReminderEditingComponentsFor(_:)(v11);
    swift_setDeallocating();
    sub_21D106C18(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    result = swift_deallocClassInstance();
  }

  if (v5 && *(v1 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_completionState) <= 1u)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = *(v1 + 40);
      v20 = swift_getObjectType();
      (*(v19 + 16))(v1, &off_282EC6818, v20, v19);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21D5C5500()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v6 = v1;
  v7 = v2;
  return (*(v3 + 104))(&v6, ObjectType, v3);
}

void sub_21D5C5574(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  LOBYTE(a2) = *a2;
  v8 = [objc_allocWithZone(type metadata accessor for TTRIAttachmentImportingController()) init];
  v27 = a2;
  v26 = v8;
  TTRIAttachmentImportingController.createPicker(of:)(v9, &v27);
  if (v10)
  {
    v11 = v10;
    v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_inCellEditingPresenterHelper);
    v13 = OBJC_IVAR____TtC15RemindersUICore39TTRInCellEditingPresenterManagingHelper_editingTarget;
    swift_beginAccess();
    sub_21D0D3954(v12 + v13, v7, &qword_27CE5E8E8);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
    if ((*(*(v14 - 8) + 48))(v7, 1, v14) == 1)
    {
      sub_21D0CF7E0(v7, &qword_27CE5E8E8);
      v15 = 3;
    }

    else
    {
      v15 = v7[*(v14 + 48)];
      sub_21D106C18(v7, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    type metadata accessor for AttachmentImportingControllerDelegate();
    v17 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    *(v17 + 24) = v15;
    v18 = &v26[OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate];
    swift_beginAccess();
    *(v18 + 1) = &off_282EC6688;
    swift_unknownObjectWeakAssign();
    v19 = (v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_currentAttachImportingContext);
    v20 = *(v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_currentAttachImportingContext);
    v21 = v26;
    *v19 = v26;
    v19[1] = v17;
    v19[2] = &off_282EC6688;
    v22 = v21;

    sub_21D5C5F74(v20);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(v3 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      [Strong presentViewController:v11 animated:1 completion:0];
    }
  }

  else
  {
    v16 = v26;
  }
}

uint64_t sub_21D5C5858()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  type metadata accessor for DueDatePickerDetailModuleDelegate();
  v5 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v6 = (v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_currentDetailModuleEventHandler);
  *v6 = v5;
  v6[1] = &off_282EC66D0;

  swift_unknownObjectRelease();
  v7 = sub_21DBFA89C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_21DBFA84C();

  v8 = sub_21DBFA83C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v1;
  v9[5] = v5;
  sub_21D1B5178(0, 0, v4, &unk_21DC1D4A0, v9);
}

uint64_t sub_21D5C59E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 344))(v0 + v2, ObjectType, v3);
}

uint64_t sub_21D5C5AA8()
{
  type metadata accessor for AssigneePickerDetailModuleDelegate();
  v1 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_currentDetailModuleEventHandler);
  *v2 = v1;
  v2[1] = &off_282EC66A0;

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router), *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router + 24));
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  (*(v3 + 72))(v7, ObjectType, v3);

  sub_21D5B7838(v5, v7, v1, &off_282EC66A0);

  v8[2] = v7[2];
  v8[3] = v7[3];
  v8[4] = v7[4];
  v8[0] = v7[0];
  v8[1] = v7[1];
  return sub_21D5B8E5C(v8);
}

void sub_21D5C5C00()
{
  if (qword_27CE56A70 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE5E820);
  oslog = sub_21DBF84AC();
  v1 = sub_21DBFAECC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v1, "TTRIQuickEntryPresenter: unexpected call: reminderDidBecomeNotFound", v2, 2u);
    MEMORY[0x223D46520](v2, -1, -1);
  }
}

uint64_t sub_21D5C5CE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D5C3B70(a1, v4, v5, v7, v6);
}

uint64_t sub_21D5C5DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D5C362C(a1, v4, v5, v6);
}

uint64_t objectdestroy_62Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_21D5C5EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D5C323C(a1, v4, v5, v7, v6);
}

void *sub_21D5C5F74(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D5C600C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D5BF71C(a1, v4, v5, v6, v7);
}

uint64_t sub_21D5C60DC()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 16);

      v4(v5, &off_282EC6818, ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21D5C619C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_deferredUpdateContext) = 1;
    v1._object = 0x800000021DC62230;
    v1._countAndFlagsBits = 0xD000000000000034;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v1);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D0D32E4(result + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_router, v5);

    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:1 completion:0];
    }

    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return result;
}

uint64_t sub_21D5C62E8(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v4 + 9);
  v82 = *(v4 + 10);
  v6 = *(v4 + 10);
  v83 = *(v4 + 11);
  v7 = *(v4 + 11);
  v84 = *(v4 + 12);
  v8 = *(v4 + 7);
  v9 = *(v4 + 5);
  v78 = *(v4 + 6);
  v79 = v8;
  v10 = *(v4 + 7);
  v80 = *(v4 + 8);
  v11 = *(v4 + 8);
  v81 = *(v4 + 9);
  v12 = *(v4 + 3);
  v13 = *(v4 + 1);
  v74 = *(v4 + 2);
  v75 = v12;
  v14 = *(v4 + 3);
  v15 = *(v4 + 5);
  v76 = *(v4 + 4);
  v77 = v15;
  v16 = *(v4 + 1);
  v72 = *v4;
  v73 = v16;
  v86[10] = v6;
  v86[11] = v7;
  v86[12] = *(v4 + 12);
  v86[6] = v78;
  v86[7] = v10;
  v86[8] = v11;
  v86[9] = v5;
  v86[2] = v74;
  v86[3] = v14;
  v86[4] = v76;
  v86[5] = v9;
  v85 = *(v4 + 26);
  v87 = *(v4 + 26);
  v86[0] = v72;
  v86[1] = v13;
  v17 = *(a1 + 176);
  *(v4 + 10) = *(a1 + 160);
  *(v4 + 11) = v17;
  *(v4 + 12) = *(a1 + 192);
  *(v4 + 26) = *(a1 + 208);
  v18 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v18;
  v19 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v19;
  v20 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v20;
  v21 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v21;
  v22 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v22;
  sub_21D313A94(&v72, v70);
  sub_21D5D2AD4(v86);
  v70[10] = v82;
  v70[11] = v83;
  v70[12] = v84;
  v71 = v85;
  v70[6] = v78;
  v70[7] = v79;
  v70[8] = v80;
  v70[9] = v81;
  v70[2] = v74;
  v70[3] = v75;
  v70[4] = v76;
  v70[5] = v77;
  v70[0] = v72;
  v70[1] = v73;
  if (*(v1 + *((*v3 & *v1) + 0x90)) != 1)
  {
    v23 = *(v4 + 11);
    v24 = *(v4 + 9);
    v64 = *(v4 + 10);
    v65 = v23;
    v25 = *(v4 + 11);
    v66 = *(v4 + 12);
    v26 = *(v4 + 7);
    v27 = *(v4 + 5);
    v60 = *(v4 + 6);
    v61 = v26;
    v28 = *(v4 + 7);
    v29 = *(v4 + 9);
    v62 = *(v4 + 8);
    v63 = v29;
    v30 = *(v4 + 3);
    v31 = *(v4 + 1);
    v56 = *(v4 + 2);
    v57 = v30;
    v32 = *(v4 + 3);
    v33 = *(v4 + 5);
    v58 = *(v4 + 4);
    v59 = v33;
    v34 = *(v4 + 1);
    v55[0] = *v4;
    v55[1] = v34;
    v51 = v64;
    v52 = v25;
    v53 = *(v4 + 12);
    v47 = v60;
    v48 = v28;
    v49 = v62;
    v50 = v24;
    v43 = v56;
    v44 = v32;
    v45 = v58;
    v46 = v27;
    v67 = *(v4 + 26);
    v54 = *(v4 + 26);
    v41 = v55[0];
    v42 = v31;
    sub_21D313A94(v55, v40);
    v35 = _s15RemindersUICore19TTRIDetailCellStateV2eeoiySbAC_ACtFZ_0(v70, &v41);
    v68[10] = v51;
    v68[11] = v52;
    v68[12] = v53;
    v69 = v54;
    v68[6] = v47;
    v68[7] = v48;
    v68[8] = v49;
    v68[9] = v50;
    v68[2] = v43;
    v68[3] = v44;
    v68[4] = v45;
    v68[5] = v46;
    v68[0] = v41;
    v68[1] = v42;
    sub_21D5D2AD4(v68);
    if ((v35 & 1) == 0)
    {
      v36 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v37 = *(v36 + 1);
        ObjectType = swift_getObjectType();
        (*(v37 + 8))(ObjectType, v37);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v70);
    }
  }

  return sub_21D5D2AD4(&v72);
}

uint64_t sub_21D5C665C(uint64_t a1)
{
  v3 = type metadata accessor for TTRICalendarPickerCellContentState(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D5D3A9C(v1 + v10, v8, type metadata accessor for TTRICalendarPickerCellContentState);
  swift_beginAccess();
  sub_21D5D3B04(a1, v1 + v10, type metadata accessor for TTRICalendarPickerCellContentState);
  swift_endAccess();
  if ((*(v1 + *((*v9 & *v1) + 0x90)) & 1) == 0)
  {
    sub_21D5D3A9C(v1 + v10, v5, type metadata accessor for TTRICalendarPickerCellContentState);
    if (sub_21DBF55EC())
    {
      v11 = MEMORY[0x223D3E3D0](&v8[*(v3 + 20)], &v5[*(v3 + 20)]);
      sub_21D5D3B6C(v5, type metadata accessor for TTRICalendarPickerCellContentState);
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_21D5D3B6C(v5, type metadata accessor for TTRICalendarPickerCellContentState);
    }

    v12 = v1 + *((*v9 & *v1) + 0x70);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(ObjectType, v13);
      swift_unknownObjectRelease();
    }

    (*((*v9 & *v1) + 0xB0))(v8);
  }

LABEL_9:
  sub_21D5D3B6C(a1, type metadata accessor for TTRICalendarPickerCellContentState);
  return sub_21D5D3B6C(v8, type metadata accessor for TTRICalendarPickerCellContentState);
}

id *sub_21D5C6918(__int128 *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v4 + 3);
  v34 = *(v4 + 2);
  v35 = v5;
  v36 = *(v4 + 16);
  v6 = *(v4 + 1);
  v32 = *v4;
  v33 = v6;
  v37[2] = v34;
  v37[3] = v5;
  v38 = v36;
  v37[0] = v32;
  v37[1] = v6;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 2) = v9;
  *(v4 + 3) = v10;
  *v4 = v7;
  *(v4 + 1) = v8;
  sub_21D369560(&v32, v30);
  sub_21D369598(v37);
  v30[2] = v34;
  v30[3] = v35;
  v31 = v36;
  v30[0] = v32;
  v30[1] = v33;
  if (*(v1 + *((*v3 & *v1) + 0x90)) != 1)
  {
    v11 = *(v4 + 3);
    v25 = *(v4 + 2);
    v26 = v11;
    v27 = *(v4 + 16);
    v12 = *(v4 + 1);
    v24[0] = *v4;
    v24[1] = v12;
    v21 = v25;
    v22 = v11;
    v23 = v27;
    v19 = v24[0];
    v20 = v12;
    sub_21D369560(v24, v18);
    v13 = _s15RemindersUICore26TTRISliderCellContentStateV2eeoiySbAC_ACtFZ_0(v30, &v19);
    v28[2] = v21;
    v28[3] = v22;
    v29 = v23;
    v28[0] = v19;
    v28[1] = v20;
    sub_21D369598(v28);
    if (!v13)
    {
      v14 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(ObjectType, v15);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v30);
    }
  }

  return sub_21D369598(&v32);
}

uint64_t sub_21D5C6B34(_OWORD *a1)
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
  v11 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v11;
  *(v3 + 2) = a1[2];
  sub_21D59B950(v4, v5, v6);
  v12 = v10;
  sub_21DBF8E0C();
  sub_21D5968AC(v4, v5, v6);

  v34[0] = v4;
  v34[1] = v5;
  v35 = v6;
  v36 = v7;
  v37 = v9;
  v13 = MEMORY[0x277D85000];
  v38 = v8;
  v39 = v10;
  if ((*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x90)) & 1) == 0)
  {
    v14 = *v3;
    v15 = *(v3 + 1);
    v16 = v3[16];
    v17 = v3[17];
    v18 = *(v3 + 3);
    v19 = *(v3 + 4);
    v20 = *(v3 + 5);
    v27 = v14;
    v28 = v15;
    v29 = v16;
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = v20;
    sub_21D59B950(v14, v15, v16);
    v21 = v20;
    sub_21DBF8E0C();
    LOBYTE(v20) = _s15RemindersUICore24TTRITextCellContentStateV2eeoiySbAC_ACtFZ_0(v34, &v27);
    v22 = v33;
    sub_21D5968AC(v27, v28, v29);

    if ((v20 & 1) == 0)
    {
      v23 = v1 + *((*v13 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v23 + 1);
        ObjectType = swift_getObjectType();
        (*(v24 + 8))(ObjectType, v24);
        swift_unknownObjectRelease();
      }

      (*((*v13 & *v1) + 0xB0))(v34);
    }
  }

  sub_21D5968AC(v4, v5, v6);
}

uint64_t sub_21D5C6D8C(__int128 *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  swift_beginAccess();
  v5 = v4[5];
  v43 = v4[4];
  v44 = v5;
  v45[0] = v4[6];
  v6 = v45[0];
  *(v45 + 14) = *(v4 + 110);
  v7 = v4[1];
  v39 = *v4;
  v40 = v7;
  v8 = v4[3];
  v41 = v4[2];
  v42 = v8;
  v46[0] = v39;
  v46[1] = v7;
  v46[2] = v41;
  v46[3] = v8;
  v46[4] = v43;
  v46[5] = v5;
  v47[0] = v6;
  *(v47 + 14) = *(v45 + 14);
  v9 = a1[5];
  v4[4] = a1[4];
  v4[5] = v9;
  v4[6] = a1[6];
  *(v4 + 110) = *(a1 + 110);
  v10 = a1[1];
  *v4 = *a1;
  v4[1] = v10;
  v11 = a1[3];
  v4[2] = a1[2];
  v4[3] = v11;
  sub_21D539B98(&v39, v37);
  sub_21D5D2B7C(v46);
  v37[4] = v43;
  v37[5] = v44;
  v38[0] = v45[0];
  *(v38 + 14) = *(v45 + 14);
  v37[0] = v39;
  v37[1] = v40;
  v37[2] = v41;
  v37[3] = v42;
  if (*(v1 + *((*v3 & *v1) + 0x90)) != 1)
  {
    v12 = v4[5];
    v32 = v4[4];
    v33 = v12;
    v34[0] = v4[6];
    v13 = v34[0];
    *(v34 + 14) = *(v4 + 110);
    v14 = v4[1];
    v29[0] = *v4;
    v29[1] = v14;
    v15 = v4[3];
    v30 = v4[2];
    v31 = v15;
    v22 = v29[0];
    v23 = v14;
    v24 = v30;
    v25 = v15;
    v26 = v32;
    v27 = v12;
    v28[0] = v13;
    *(v28 + 14) = *(v34 + 14);
    sub_21D539B98(v29, &v21);
    v16 = _s15RemindersUICore26TTRIToggleCellContentStateV2eeoiySbAC_ACtFZ_0(v37, &v22);
    v35[4] = v26;
    v35[5] = v27;
    v36[0] = v28[0];
    *(v36 + 14) = *(v28 + 14);
    v35[0] = v22;
    v35[1] = v23;
    v35[2] = v24;
    v35[3] = v25;
    sub_21D5D2B7C(v35);
    if ((v16 & 1) == 0)
    {
      v17 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        (*(v18 + 8))(ObjectType, v18);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v37);
    }
  }

  return sub_21D5D2B7C(&v39);
}

uint64_t sub_21D5C7058(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v4 + 5);
  v6 = *(v4 + 7);
  v39 = *(v4 + 6);
  v40 = v6;
  v7 = *(v4 + 1);
  v8 = *(v4 + 3);
  v35 = *(v4 + 2);
  v36 = v8;
  v9 = *(v4 + 3);
  v10 = *(v4 + 5);
  v37 = *(v4 + 4);
  v38 = v10;
  v11 = *(v4 + 1);
  v33 = *v4;
  v34 = v11;
  v12 = *(v4 + 7);
  v42[6] = v39;
  v42[7] = v12;
  v42[2] = v35;
  v42[3] = v9;
  v42[4] = v37;
  v42[5] = v5;
  v41 = *(v4 + 64);
  v43 = *(v4 + 64);
  v42[0] = v33;
  v42[1] = v7;
  v13 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v13;
  v14 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v14;
  *(v4 + 64) = *(a1 + 128);
  v15 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v15;
  v16 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v16;
  sub_21D0D3954(&v33, v31, &qword_27CE5D9C8);
  sub_21D0CF7E0(v42, &qword_27CE5D9C8);
  v27[6] = v39;
  v27[7] = v40;
  v28 = v41;
  v27[2] = v35;
  v27[3] = v36;
  v27[4] = v37;
  v27[5] = v38;
  v27[0] = v33;
  v27[1] = v34;
  if ((*(v1 + *((*v3 & *v1) + 0x90)) & 1) == 0)
  {
    v17 = *(v4 + 7);
    v31[6] = *(v4 + 6);
    v31[7] = v17;
    v32 = *(v4 + 64);
    v18 = *(v4 + 3);
    v31[2] = *(v4 + 2);
    v31[3] = v18;
    v19 = *(v4 + 5);
    v31[4] = *(v4 + 4);
    v31[5] = v19;
    v20 = *(v4 + 1);
    v31[0] = *v4;
    v31[1] = v20;
    v29[6] = v39;
    v29[7] = v40;
    v30 = v41;
    v29[2] = v35;
    v29[3] = v36;
    v29[4] = v37;
    v29[5] = v38;
    v29[0] = v33;
    v29[1] = v34;
    sub_21D0D3954(v31, v26, &qword_27CE5D9C8);
    v21 = sub_21D5C9C20(v29, v31);
    sub_21D0CF7E0(v31, &qword_27CE5D9C8);
    if ((v21 & 1) == 0)
    {
      v22 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v22 + 1);
        ObjectType = swift_getObjectType();
        (*(v23 + 8))(ObjectType, v23);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v27);
    }
  }

  return sub_21D0CF7E0(&v33, &qword_27CE5D9C8);
}

uint64_t sub_21D5C732C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78);
  result = swift_beginAccess();
  v10 = *v8;
  v11 = *(v8 + 1);
  v12 = v8[16];
  *v8 = a1;
  *(v8 + 1) = a2;
  v8[16] = a3;
  v17[0] = v10;
  v17[1] = v11;
  v18 = v12;
  if ((*(v3 + *((*v7 & *v3) + 0x90)) & 1) == 0)
  {
    v13 = v10 == a1 && v11 == a2;
    if (!v13 || ((v12 ^ a3) & 1) != 0)
    {
      v14 = v3 + *((*v7 & *v3) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(ObjectType, v15);
        swift_unknownObjectRelease();
      }

      return (*((*v7 & *v3) + 0xB0))(v17);
    }
  }

  return result;
}

uint64_t sub_21D5C74DC(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v4 + 5);
  v30 = *(v4 + 4);
  v31 = v5;
  v32 = *(v4 + 6);
  v33 = *(v4 + 56);
  v6 = *(v4 + 1);
  v26 = *v4;
  v27 = v6;
  v7 = *(v4 + 3);
  v28 = *(v4 + 2);
  v29 = v7;
  v34[0] = v26;
  v34[1] = v6;
  v34[2] = v28;
  v34[3] = v7;
  v34[4] = v30;
  v34[5] = v5;
  v34[6] = v32;
  v35 = v33;
  v8 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v8;
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 56) = *(a1 + 112);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v9;
  v10 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v10;
  sub_21D0D3954(&v26, v24, &qword_27CE5D9A0);
  sub_21D0CF7E0(v34, &qword_27CE5D9A0);
  v20[5] = v31;
  v20[6] = v32;
  v20[0] = v26;
  v20[1] = v27;
  v20[2] = v28;
  v21 = v33;
  v20[3] = v29;
  v20[4] = v30;
  if ((*(v1 + *((*v3 & *v1) + 0x90)) & 1) == 0)
  {
    v11 = *(v4 + 5);
    v24[4] = *(v4 + 4);
    v24[5] = v11;
    v24[6] = *(v4 + 6);
    v25 = *(v4 + 56);
    v12 = *(v4 + 1);
    v24[0] = *v4;
    v24[1] = v12;
    v13 = *(v4 + 3);
    v24[2] = *(v4 + 2);
    v24[3] = v13;
    v22[2] = v28;
    v22[3] = v29;
    v22[0] = v26;
    v22[1] = v27;
    v23 = v33;
    v22[5] = v31;
    v22[6] = v32;
    v22[4] = v30;
    sub_21D0D3954(v24, v19, &qword_27CE5D9A0);
    v14 = sub_21D5CA038(v22, v24);
    sub_21D0CF7E0(v24, &qword_27CE5D9A0);
    if ((v14 & 1) == 0)
    {
      v15 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 1);
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(ObjectType, v16);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v20);
    }
  }

  return sub_21D0CF7E0(&v26, &qword_27CE5D9A0);
}

uint64_t sub_21D5C7798(uint64_t a1)
{
  v3 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D5D3A9C(v1 + v10, v8, type metadata accessor for TTRITitledDatePickerCellContentState);
  swift_beginAccess();
  sub_21D5D3B04(a1, v1 + v10, type metadata accessor for TTRITitledDatePickerCellContentState);
  swift_endAccess();
  if ((*(v1 + *((*v9 & *v1) + 0x90)) & 1) == 0)
  {
    sub_21D5D3A9C(v1 + v10, v5, type metadata accessor for TTRITitledDatePickerCellContentState);
    v11 = _s15RemindersUICore36TTRITitledDatePickerCellContentStateV2eeoiySbAC_ACtFZ_0(v8, v5);
    sub_21D5D3B6C(v5, type metadata accessor for TTRITitledDatePickerCellContentState);
    if (!v11)
    {
      v12 = v1 + *((*v9 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 1);
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(ObjectType, v13);
        swift_unknownObjectRelease();
      }

      (*((*v9 & *v1) + 0xB0))(v8);
    }
  }

  sub_21D5D3B6C(a1, type metadata accessor for TTRITitledDatePickerCellContentState);
  return sub_21D5D3B6C(v8, type metadata accessor for TTRITitledDatePickerCellContentState);
}

uint64_t sub_21D5C7A18(uint64_t a1)
{
  v3 = type metadata accessor for TTRIHashtagCollectionCellContentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D5D3A9C(v1 + v10, v8, type metadata accessor for TTRIHashtagCollectionCellContentState);
  swift_beginAccess();
  sub_21D5D3B04(a1, v1 + v10, type metadata accessor for TTRIHashtagCollectionCellContentState);
  swift_endAccess();
  if ((*(v1 + *((*v9 & *v1) + 0x90)) & 1) == 0)
  {
    sub_21D5D3A9C(v1 + v10, v5, type metadata accessor for TTRIHashtagCollectionCellContentState);
    v11 = _s15RemindersUICore37TTRIHashtagCollectionCellContentStateV2eeoiySbAC_ACtFZ_0(v8, v5);
    sub_21D5D3B6C(v5, type metadata accessor for TTRIHashtagCollectionCellContentState);
    if (!v11)
    {
      v12 = v1 + *((*v9 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 1);
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(ObjectType, v13);
        swift_unknownObjectRelease();
      }

      (*((*v9 & *v1) + 0xB0))(v8);
    }
  }

  sub_21D5D3B6C(a1, type metadata accessor for TTRIHashtagCollectionCellContentState);
  return sub_21D5D3B6C(v8, type metadata accessor for TTRIHashtagCollectionCellContentState);
}

uint64_t sub_21D5C7C98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAB0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E9D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D0D3954(v1 + v10, v8, &qword_27CE5E9D8);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v10, &qword_27CE5E9D8);
  swift_endAccess();
  if (*(v1 + *((*v9 & *v1) + 0x90)))
  {
    goto LABEL_11;
  }

  v11 = *(v3 + 48);
  sub_21D0D3954(v8, v5, &qword_27CE5E9D8);
  sub_21D0D3954(v1 + v10, &v5[v11], &qword_27CE5E9D8);
  v12 = type metadata accessor for TTRIReminderTitleAndStructuredHashtagCellContentState(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v5, 1, v12);
  v15 = v13(&v5[v11], 1, v12);
  if (v14 == 1)
  {
    if (v15 == 1)
    {
      sub_21D0CF7E0(a1, &qword_27CE5E9D8);
      a1 = v8;
      v8 = v5;
      goto LABEL_11;
    }
  }

  else if (v15 != 1)
  {
    sub_21D0CF7E0(&v5[v11], &qword_27CE5E9D8);
    v17 = v5;
    v16 = &qword_27CE5E9D8;
    goto LABEL_8;
  }

  v16 = &qword_27CE5EAB0;
  v17 = v5;
LABEL_8:
  sub_21D0CF7E0(v17, v16);
  v18 = v1 + *((*v9 & *v1) + 0x70);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 1);
    ObjectType = swift_getObjectType();
    (*(v19 + 8))(ObjectType, v19);
    swift_unknownObjectRelease();
  }

  (*((*v9 & *v1) + 0xB0))(v8);
LABEL_11:
  sub_21D0CF7E0(a1, &qword_27CE5E9D8);
  return sub_21D0CF7E0(v8, &qword_27CE5E9D8);
}

uint64_t sub_21D5C801C(__int128 *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  swift_beginAccess();
  v5 = v4[3];
  v35 = v4[2];
  v36 = v5;
  v6 = v4[5];
  v37 = v4[4];
  v38 = v6;
  v7 = v4[1];
  v33 = *v4;
  v34 = v7;
  v39[2] = v35;
  v39[3] = v5;
  v39[4] = v37;
  v39[5] = v6;
  v39[0] = v33;
  v39[1] = v7;
  v8 = a1[3];
  v4[2] = a1[2];
  v4[3] = v8;
  v9 = a1[5];
  v4[4] = a1[4];
  v4[5] = v9;
  v10 = a1[1];
  *v4 = *a1;
  v4[1] = v10;
  sub_21D5D2914(&v33, v32);
  sub_21D5D2A50(v39);
  v32[2] = v35;
  v32[3] = v36;
  v32[4] = v37;
  v32[5] = v38;
  v32[0] = v33;
  v32[1] = v34;
  if (*(v1 + *((*v3 & *v1) + 0x90)) != 1)
  {
    v11 = v4[3];
    v27 = v4[2];
    v28 = v11;
    v12 = v4[5];
    v29 = v4[4];
    v30 = v12;
    v13 = v4[1];
    v26[0] = *v4;
    v26[1] = v13;
    v22 = v27;
    v23 = v11;
    v24 = v29;
    v25 = v12;
    v20 = v26[0];
    v21 = v13;
    sub_21D5D2914(v26, &v19);
    v14 = sub_21D5B9EC4(v32, &v20);
    v31[2] = v22;
    v31[3] = v23;
    v31[4] = v24;
    v31[5] = v25;
    v31[0] = v20;
    v31[1] = v21;
    sub_21D5D2A50(v31);
    if ((v14 & 1) == 0)
    {
      v15 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 1);
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(ObjectType, v16);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v32);
    }
  }

  return sub_21D5D2A50(&v33);
}

uint64_t sub_21D5C8234(__int128 *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  swift_beginAccess();
  v5 = v4[5];
  v6 = v4[7];
  v56 = v4[6];
  v57[0] = v6;
  *(v57 + 9) = *(v4 + 121);
  v7 = v4[1];
  v8 = v4[3];
  v52 = v4[2];
  v53 = v8;
  v9 = v4[3];
  v10 = v4[5];
  v54 = v4[4];
  v55 = v10;
  v11 = v4[1];
  v50 = *v4;
  v51 = v11;
  v12 = v4[7];
  v58[6] = v56;
  v59[0] = v12;
  *(v59 + 9) = *(v4 + 121);
  v58[2] = v52;
  v58[3] = v9;
  v58[4] = v54;
  v58[5] = v5;
  v58[0] = v50;
  v58[1] = v7;
  v13 = a1[5];
  v4[4] = a1[4];
  v4[5] = v13;
  v14 = a1[3];
  v4[2] = a1[2];
  v4[3] = v14;
  v15 = a1[1];
  *v4 = *a1;
  v4[1] = v15;
  *(v4 + 121) = *(a1 + 121);
  v16 = a1[7];
  v4[6] = a1[6];
  v4[7] = v16;
  sub_21D5D2970(&v50, v48);
  sub_21D5D29CC(v58);
  v48[6] = v56;
  v49[0] = v57[0];
  *(v49 + 9) = *(v57 + 9);
  v48[2] = v52;
  v48[3] = v53;
  v48[4] = v54;
  v48[5] = v55;
  v48[0] = v50;
  v48[1] = v51;
  if (*(v1 + *((*v3 & *v1) + 0x90)) != 1)
  {
    v17 = v4[5];
    v18 = v4[7];
    v44 = v4[6];
    v45[0] = v18;
    *(v45 + 9) = *(v4 + 121);
    v19 = v4[1];
    v20 = v4[3];
    v40 = v4[2];
    v41 = v20;
    v21 = v4[3];
    v22 = v4[5];
    v42 = v4[4];
    v43 = v22;
    v23 = v4[1];
    v39[0] = *v4;
    v39[1] = v23;
    v24 = v4[7];
    v37 = v44;
    v38[0] = v24;
    *(v38 + 9) = *(v4 + 121);
    v33 = v40;
    v34 = v21;
    v35 = v42;
    v36 = v17;
    v31 = v39[0];
    v32 = v19;
    sub_21D5D2970(v39, &v30);
    v25 = _s15RemindersUICore24TTRIListCellStateAdaptorV0E0V2eeoiySbAE_AEtFZ_0(v48, &v31);
    v46[6] = v37;
    v47[0] = v38[0];
    *(v47 + 9) = *(v38 + 9);
    v46[2] = v33;
    v46[3] = v34;
    v46[4] = v35;
    v46[5] = v36;
    v46[0] = v31;
    v46[1] = v32;
    sub_21D5D29CC(v46);
    if ((v25 & 1) == 0)
    {
      v26 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v26 + 1);
        ObjectType = swift_getObjectType();
        (*(v27 + 8))(ObjectType, v27);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v48);
    }
  }

  return sub_21D5D29CC(&v50);
}

uint64_t sub_21D5C84F0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_21D1D9BE4(v2 + v5, v12);
  swift_beginAccess();
  sub_21D5D2C30(a1, v2 + v5);
  swift_endAccess();
  if ((*(v2 + *((*v4 & *v2) + 0x90)) & 1) == 0)
  {
    sub_21D1D9BE4(v2 + v5, v11);
    v6 = v13(v11);
    sub_21D1D9C40(v11);
    if ((v6 & 1) == 0)
    {
      v7 = v2 + *((*v4 & *v2) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 1);
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(ObjectType, v8);
        swift_unknownObjectRelease();
      }

      (*((*v4 & *v2) + 0xB0))(v12);
    }
  }

  sub_21D1D9C40(a1);
  return sub_21D1D9C40(v12);
}

void sub_21D5C8698(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = v9[24];
  *v9 = a1;
  *(v9 + 1) = a2;
  v14 = MEMORY[0x277D85000];
  *(v9 + 2) = a3;
  v9[24] = a4 & 1;
  sub_21DBF8E0C();
  sub_21D15751C(v12);

  sub_21D157878(v12);
  v26[0] = v11;
  v26[1] = v10;
  v26[2] = v12;
  v27 = v13;
  if ((*(v4 + *((*v14 & *v4) + 0x90)) & 1) == 0)
  {
    v15 = *(v9 + 1);
    v16 = *(v9 + 2);
    v17 = v9[24];
    v23[0] = *v9;
    v23[1] = v15;
    v24 = v16;
    v25 = v17;
    sub_21DBF8E0C();
    sub_21D15751C(v16);
    v18 = sub_21D5EF0D4(v26, v23);
    v19 = v24;

    sub_21D157878(v19);
    if ((v18 & 1) == 0)
    {
      v20 = v4 + *((*v14 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 1);
        ObjectType = swift_getObjectType();
        (*(v21 + 8))(ObjectType, v21);
        swift_unknownObjectRelease();
      }

      (*((*v14 & *v4) + 0xB0))(v26);
    }
  }

  sub_21D157878(v12);
}

uint64_t sub_21D5C88C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = v9[24];
  *v9 = a1;
  *(v9 + 1) = a2;
  v14 = MEMORY[0x277D85000];
  *(v9 + 2) = a3;
  v9[24] = a4;
  sub_21D5D359C();
  sub_21D5D35A4();
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v25 = v13;
  if ((*(v4 + *((*v14 & *v4) + 0x90)) & 1) == 0)
  {
    v15 = *(v9 + 1);
    v16 = *(v9 + 2);
    v22[0] = *v9;
    v22[1] = v15;
    v22[2] = v16;
    v23 = v9[24];
    sub_21D5D359C();
    v17 = _s15RemindersUICore28TTRILocationCellContentStateO2eeoiySbAC_ACtFZ_0(v24, v22);
    sub_21D5D35A4();
    if ((v17 & 1) == 0)
    {
      v18 = v4 + *((*v14 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 1);
        ObjectType = swift_getObjectType();
        (*(v19 + 8))(ObjectType, v19);
        swift_unknownObjectRelease();
      }

      (*((*v14 & *v4) + 0xB0))(v24);
    }
  }

  return sub_21D5D35A4();
}

uint64_t sub_21D5C8AC8(_OWORD *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[8];
  v7 = *(v4 + 2);
  v8 = v4[24];
  v9 = *(v4 + 4);
  v10 = *(v4 + 5);
  v11 = a1[2];
  *(v4 + 1) = a1[1];
  *(v4 + 2) = v11;
  *v4 = *a1;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v10;
  if ((*(v1 + *((*v3 & *v1) + 0x90)) & 1) == 0)
  {
    v12 = v4[8];
    v13 = *(v4 + 2);
    v14 = v4[24];
    v16 = *(v4 + 4);
    v15 = *(v4 + 5);
    v22 = *v4;
    v23 = v12;
    v24 = v13;
    v25 = v14;
    v26 = v16;
    v27 = v15;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17 = _s15RemindersUICore40TTRILocationQuickPickersCellContentStateV2eeoiySbAC_ACtFZ_0(&v28, &v22);

    if (!v17)
    {
      v18 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 1);
        ObjectType = swift_getObjectType();
        (*(v19 + 8))(ObjectType, v19);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(&v28);
    }
  }
}

uint64_t sub_21D5C8CDC(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v8 = MEMORY[0x277D85000];
  v9 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78));
  swift_beginAccess();
  v10 = v9[5];
  v36 = v9[4];
  v37 = v10;
  v38[0] = v9[6];
  v11 = v38[0];
  *(v38 + 9) = *(v9 + 105);
  v12 = v9[1];
  v32 = *v9;
  v33 = v12;
  v13 = v9[3];
  v34 = v9[2];
  v35 = v13;
  v39[0] = v32;
  v39[1] = v12;
  v39[2] = v34;
  v39[3] = v13;
  v39[4] = v36;
  v39[5] = v10;
  v40[0] = v11;
  *(v40 + 9) = *(v38 + 9);
  v14 = a1[5];
  v9[4] = a1[4];
  v9[5] = v14;
  v9[6] = a1[6];
  *(v9 + 105) = *(a1 + 105);
  v15 = a1[1];
  *v9 = *a1;
  v9[1] = v15;
  v16 = a1[3];
  v9[2] = a1[2];
  v9[3] = v16;
  sub_21D0D3954(&v32, v30, a2);
  sub_21D0CF7E0(v39, a2);
  v26[4] = v36;
  v26[5] = v37;
  v27[0] = v38[0];
  *(v27 + 9) = *(v38 + 9);
  v26[0] = v32;
  v26[1] = v33;
  v26[2] = v34;
  v26[3] = v35;
  if ((*(v4 + *((*v8 & *v4) + 0x90)) & 1) == 0)
  {
    v17 = v9[5];
    v30[4] = v9[4];
    v30[5] = v17;
    v31[0] = v9[6];
    *(v31 + 9) = *(v9 + 105);
    v18 = v9[1];
    v30[0] = *v9;
    v30[1] = v18;
    v19 = v9[3];
    v30[2] = v9[2];
    v30[3] = v19;
    v28[2] = v34;
    v28[3] = v35;
    v28[0] = v32;
    v28[1] = v33;
    *(v29 + 9) = *(v38 + 9);
    v28[5] = v37;
    v29[0] = v38[0];
    v28[4] = v36;
    sub_21D0D3954(v30, &v25, a2);
    v20 = sub_21D5CA42C(v28, v30, a4);
    sub_21D0CF7E0(v30, a2);
    if ((v20 & 1) == 0)
    {
      v21 = v4 + *((*v8 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        (*(v22 + 8))(ObjectType, v22);
        swift_unknownObjectRelease();
      }

      (*((*v8 & *v4) + 0xB0))(v26);
    }
  }

  return sub_21D0CF7E0(&v32, a2);
}

uint64_t sub_21D5C8FCC(uint64_t a1, void (*a2)(__int128 *, char *), uint64_t (*a3)(__int128 *), uint64_t (*a4)(_OWORD *, __int128 *))
{
  v9 = MEMORY[0x277D85000];
  v10 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v11 = *(v10 + 5);
  v47 = *(v10 + 4);
  v48 = v11;
  v49 = v10[96];
  v12 = *(v10 + 1);
  v43 = *v10;
  v44 = v12;
  v13 = *(v10 + 3);
  v45 = *(v10 + 2);
  v46 = v13;
  v50[0] = v43;
  v50[1] = v12;
  v50[2] = v45;
  v50[3] = v13;
  v50[4] = v47;
  v50[5] = v11;
  v51 = v49;
  v14 = *(a1 + 80);
  *(v10 + 4) = *(a1 + 64);
  *(v10 + 5) = v14;
  v10[96] = *(a1 + 96);
  v15 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v15;
  v16 = *(a1 + 48);
  *(v10 + 2) = *(a1 + 32);
  *(v10 + 3) = v16;
  a2(&v43, v41);
  a3(v50);
  v41[4] = v47;
  v41[5] = v48;
  v42 = v49;
  v41[0] = v43;
  v41[1] = v44;
  v41[2] = v45;
  v41[3] = v46;
  if (*(v4 + *((*v9 & *v4) + 0x90)) != 1)
  {
    v17 = *(v10 + 5);
    v36 = *(v10 + 4);
    v37 = v17;
    v38 = v10[96];
    v18 = *(v10 + 1);
    v33[0] = *v10;
    v33[1] = v18;
    v19 = *(v10 + 3);
    v34 = *(v10 + 2);
    v35 = v19;
    v26 = v33[0];
    v27 = v18;
    v28 = v34;
    v29 = v19;
    v30 = v36;
    v31 = v17;
    v32 = v38;
    a2(v33, v25);
    v20 = a4(v41, &v26);
    v39[4] = v30;
    v39[5] = v31;
    v40 = v32;
    v39[0] = v26;
    v39[1] = v27;
    v39[2] = v28;
    v39[3] = v29;
    a3(v39);
    if ((v20 & 1) == 0)
    {
      v21 = v4 + *((*v9 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        (*(v22 + 8))(ObjectType, v22);
        swift_unknownObjectRelease();
      }

      (*((*v9 & *v4) + 0xB0))(v41);
    }
  }

  return a3(&v43);
}

uint64_t sub_21D5C924C(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = MEMORY[0x277D85000];
  v10 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = v10[24];
  v15 = v10[25];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  v10[24] = a4;
  v10[25] = HIBYTE(a4) & 1;
  v26[0] = v11;
  v26[1] = v12;
  v26[2] = v13;
  v27 = v14;
  v28 = v15;
  v16 = *v9;
  v17 = v11;
  if ((*(v4 + *((v16 & *v4) + 0x90)) & 1) == 0)
  {
    v18 = v15 ? 256 : 0;
    v25 = a1;
    sub_21DBF8E0C();
    v19 = sub_21D3EDF68(v17, v12, v13, v18 | v14, a1, a2, a3, a4 & 0x1FF);

    if ((v19 & 1) == 0)
    {
      v20 = MEMORY[0x277D85000];
      v21 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        (*(v22 + 8))(ObjectType, v22);
        swift_unknownObjectRelease();
      }

      (*((*v20 & *v4) + 0xB0))(v26);
    }
  }
}

void sub_21D5C944C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78));
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = v8[2];
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v17[0] = v10;
  v17[1] = v9;
  v17[2] = v11;
  if ((*(v3 + *((*v7 & *v3) + 0x90)) & 1) == 0)
  {
    v12 = a3;
    sub_21DBF8E0C();
    v13 = sub_21D934C10(v10, v9, v11, a1, a2, a3);

    if ((v13 & 1) == 0)
    {
      v14 = v3 + *((*v7 & *v3) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(ObjectType, v15);
        swift_unknownObjectRelease();
      }

      (*((*v7 & *v3) + 0xB0))(v17);
    }
  }
}

uint64_t sub_21D5C9608(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v5 = *(v4 + 11);
  v6 = *(v4 + 13);
  v58 = *(v4 + 12);
  v59 = v6;
  v7 = *(v4 + 7);
  v8 = *(v4 + 9);
  v54 = *(v4 + 8);
  v55 = v8;
  v9 = *(v4 + 9);
  v10 = *(v4 + 11);
  v56 = *(v4 + 10);
  v57 = v10;
  v11 = *(v4 + 3);
  v12 = *(v4 + 5);
  v50 = *(v4 + 4);
  v51 = v12;
  v13 = *(v4 + 5);
  v14 = *(v4 + 7);
  v52 = *(v4 + 6);
  v53 = v14;
  v15 = *(v4 + 1);
  v46 = *v4;
  v47 = v15;
  v16 = *(v4 + 3);
  v18 = *v4;
  v17 = *(v4 + 1);
  v48 = *(v4 + 2);
  v49 = v16;
  v61[11] = v5;
  v61[12] = v58;
  v61[13] = *(v4 + 13);
  v61[7] = v7;
  v61[8] = v54;
  v61[9] = v9;
  v61[10] = v56;
  v61[4] = v50;
  v61[5] = v13;
  v61[6] = v52;
  v61[0] = v18;
  v61[1] = v17;
  v60 = v4[224];
  v62 = v4[224];
  v61[2] = v48;
  v61[3] = v11;
  v19 = *(a1 + 208);
  *(v4 + 12) = *(a1 + 192);
  *(v4 + 13) = v19;
  v4[224] = *(a1 + 224);
  v20 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v20;
  v21 = *(a1 + 176);
  *(v4 + 10) = *(a1 + 160);
  *(v4 + 11) = v21;
  v22 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v22;
  v23 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v23;
  v24 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v24;
  v25 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v25;
  sub_21D0D3954(&v46, v44, &unk_27CE5EB10);
  sub_21D0CF7E0(v61, &unk_27CE5EB10);
  v40[12] = v58;
  v40[13] = v59;
  v41 = v60;
  v40[8] = v54;
  v40[9] = v55;
  v40[10] = v56;
  v40[11] = v57;
  v40[4] = v50;
  v40[5] = v51;
  v40[6] = v52;
  v40[7] = v53;
  v40[0] = v46;
  v40[1] = v47;
  v26 = *v3 & *v1;
  v40[2] = v48;
  v40[3] = v49;
  if ((*(v1 + *(v26 + 144)) & 1) == 0)
  {
    v27 = *(v4 + 13);
    v44[12] = *(v4 + 12);
    v44[13] = v27;
    v45 = v4[224];
    v28 = *(v4 + 9);
    v44[8] = *(v4 + 8);
    v44[9] = v28;
    v29 = *(v4 + 11);
    v44[10] = *(v4 + 10);
    v44[11] = v29;
    v30 = *(v4 + 5);
    v44[4] = *(v4 + 4);
    v44[5] = v30;
    v31 = *(v4 + 7);
    v44[6] = *(v4 + 6);
    v44[7] = v31;
    v32 = *(v4 + 1);
    v44[0] = *v4;
    v44[1] = v32;
    v33 = *(v4 + 3);
    v44[2] = *(v4 + 2);
    v44[3] = v33;
    v42[12] = v58;
    v42[13] = v59;
    v43 = v60;
    v42[8] = v54;
    v42[9] = v55;
    v42[10] = v56;
    v42[11] = v57;
    v42[4] = v50;
    v42[5] = v51;
    v42[6] = v52;
    v42[7] = v53;
    v42[0] = v46;
    v42[1] = v47;
    v42[2] = v48;
    v42[3] = v49;
    sub_21D0D3954(v44, v39, &unk_27CE5EB10);
    v34 = sub_21D5CA828(v42, v44);
    sub_21D0CF7E0(v44, &unk_27CE5EB10);
    if ((v34 & 1) == 0)
    {
      v35 = v1 + *((*v3 & *v1) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v35 + 1);
        ObjectType = swift_getObjectType();
        (*(v36 + 8))(ObjectType, v36);
        swift_unknownObjectRelease();
      }

      (*((*v3 & *v1) + 0xB0))(v40);
    }
  }

  return sub_21D0CF7E0(&v46, &unk_27CE5EB10);
}

void sub_21D5C9980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D85000];
  v10 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v11 = *(v10 + 2);
  v12 = *(v10 + 3);
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v13 = *v10;
  *v10 = a1;
  *(v10 + 1) = a2;
  v28 = v13;
  v29 = v11;
  v30 = v12;
  if ((*(v4 + *((*v9 & *v4) + 0x90)) & 1) == 0)
  {
    v14 = *(v10 + 2);
    v15 = *(v10 + 3);
    v24 = v13;
    v25 = *v10;
    v26 = v14;
    v27 = v15;
    v16 = v25;
    sub_21DBF8E0C();
    v17 = v15;
    v18 = _s15RemindersUICore26TTRReminderDetailViewModelV10AttachmentV2eeoiySbAE_AEtFZ_0(&v28, &v25);
    v19 = v25;

    *&v13 = v24;
    if ((v18 & 1) == 0)
    {
      v20 = v4 + *((*v9 & *v4) + 0x70);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 1);
        ObjectType = swift_getObjectType();
        (*(v21 + 8))(ObjectType, v21);
        swift_unknownObjectRelease();
      }

      (*((*v9 & *v4) + 0xB0))(&v28);
      *&v13 = v24;
    }
  }

  v23 = v13;
}

uint64_t sub_21D5C9B64(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 49);
  *(v1 + 49) = a1;
  if (v5 != v3)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v1, &protocol witness table for TTRITableCell<A>, a1 & 1, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21D5C9C20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v55 = *(a1 + 32);
  v56 = v4;
  v5 = *(a1 + 16);
  v53 = *a1;
  v54 = v5;
  v6 = *(a2 + 48);
  v51[2] = *(a2 + 32);
  v51[3] = v6;
  v7 = *(a2 + 16);
  v51[0] = *a2;
  v51[1] = v7;
  v57 = *(a1 + 64);
  v52 = *(a2 + 64);
  v8 = *(&v5 + 1);
  v9 = v57;
  *&v50[7] = v51[0];
  *&v50[23] = *(a2 + 16);
  v10 = *(&v7 + 1);
  v11 = v52;
  if (*(&v5 + 1) >> 1 == 0xFFFFFFFFLL && v57 < 2u)
  {
    if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v52 < 2u)
    {
      v40 = *a1;
      *&v41 = *(a1 + 16);
      *(&v41 + 1) = *(&v54 + 1);
      v12 = *(a1 + 48);
      v42 = *(a1 + 32);
      v43 = v12;
      v44 = v57;
      sub_21D0D3954(&v53, &v35, &unk_27CE5EA00);
      sub_21D0D3954(v51, &v35, &unk_27CE5EA00);
      sub_21D0CF7E0(&v40, &unk_27CE5EA00);
      goto LABEL_10;
    }

    sub_21D0D3954(&v53, &v40, &unk_27CE5EA00);
    sub_21D0D3954(v51, &v40, &unk_27CE5EA00);
LABEL_20:
    v40 = *a1;
    *&v41 = *(a1 + 16);
    *(&v41 + 1) = v8;
    v21 = *(a1 + 48);
    v42 = *(a1 + 32);
    v43 = v21;
    v44 = v9;
    *v45 = *v50;
    *&v45[15] = *&v50[15];
    v46 = v10;
    v22 = *(a2 + 32);
    v48 = *(a2 + 48);
    v47 = v22;
    v49 = v11;
    sub_21D0CF7E0(&v40, qword_27CE5ABE0);
    goto LABEL_21;
  }

  v13 = *(a1 + 16);
  v40 = *a1;
  *&v41 = v13;
  *(&v41 + 1) = *(&v54 + 1);
  v14 = *(a1 + 48);
  v42 = *(a1 + 32);
  v43 = v14;
  v44 = v57;
  v39 = v57;
  v37 = v42;
  v38 = v14;
  v35 = v40;
  v36 = v41;
  if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v52 < 2u)
  {
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v30 = v40;
    v31 = v41;
    sub_21D0D3954(&v53, v28, &unk_27CE5EA00);
    sub_21D0D3954(v51, v28, &unk_27CE5EA00);
    sub_21D0D3954(&v40, v28, &unk_27CE5EA00);
    sub_21D35D940(&v30);
    goto LABEL_20;
  }

  v30 = *a2;
  v15 = *(a2 + 16);
  v16 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v16;
  *&v31 = v15;
  *(&v31 + 1) = v10;
  v34 = v52;
  sub_21D0D3954(&v53, v28, &unk_27CE5EA00);
  sub_21D0D3954(v51, v28, &unk_27CE5EA00);
  sub_21D0D3954(&v40, v28, &unk_27CE5EA00);
  v17 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v35, &v30);
  v26[2] = v32;
  v26[3] = v33;
  v27 = v34;
  v26[0] = v30;
  v26[1] = v31;
  sub_21D35D940(v26);
  v28[2] = v37;
  v28[3] = v38;
  v29 = v39;
  v28[0] = v35;
  v28[1] = v36;
  sub_21D35D940(v28);
  v30 = *a1;
  *&v31 = *(a1 + 16);
  *(&v31 + 1) = v8;
  v18 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v18;
  v34 = v9;
  sub_21D0CF7E0(&v30, &unk_27CE5EA00);
  if ((v17 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = *(a1 + 96);
  v20 = *(a2 + 96);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_24;
    }

LABEL_21:
    v23 = 0;
    return v23 & 1;
  }

  if (!v20 || (*(a1 + 88) != *(a2 + 88) || v19 != v20) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v25 = sub_21D1D8080(*(a1 + 104), *(a2 + 104));
  v23 = 0;
  if ((v25 & 1) != 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
    if (((*(a1 + 128) ^ *(a2 + 128)) & 1) == 0)
    {
      v23 = *(a1 + 129) ^ *(a2 + 129) ^ 1;
      return v23 & 1;
    }

    goto LABEL_21;
  }

  return v23 & 1;
}