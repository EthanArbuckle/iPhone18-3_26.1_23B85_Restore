void *initializeWithTake for TTRReminderDetailViewModel(void *a1, void *a2, int *a3)
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
  v43 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v44 = a1 + v43;
  v45 = a2 + v43;
  v46 = *(v45 + 1);
  *v44 = *v45;
  *(v44 + 1) = v46;
  *(v44 + 2) = *(v45 + 2);
  v44[48] = v45[48];
  v47 = a3[9];
  v48 = a3[10];
  v49 = (a1 + v47);
  v50 = (a2 + v47);
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *(v49 + 73) = *(v50 + 73);
  v52 = v50[4];
  v49[3] = v50[3];
  v49[4] = v52;
  v49[2] = v50[2];
  *(a1 + v48) = *(a2 + v48);
  v53 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v53) = *(a2 + v53);
  v54 = a3[13];
  v55 = a3[14];
  v56 = (a1 + v54);
  v57 = (a2 + v54);
  v58 = v57[1];
  *v56 = *v57;
  v56[1] = v58;
  *(a1 + v55) = *(a2 + v55);
  v59 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v59) = *(a2 + v59);
  v60 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v60) = *(a2 + v60);
  v61 = a3[19];
  v62 = a3[20];
  v63 = *(a2 + v61);
  v64 = *(a2 + v61 + 16);
  v65 = (a1 + v61);
  *v65 = v63;
  v65[1] = v64;
  v66 = a1 + v62;
  v67 = a2 + v62;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v69 = *(v68 - 1);
  if ((*(v69 + 48))(v67, 1, v68))
  {
    v70 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v66, v67, *(*(v70 - 8) + 64));
  }

  else
  {
    v71 = sub_21DBF563C();
    v150 = *(v71 - 8);
    v151 = v71;
    v149 = *(v150 + 32);
    v149(v66, v67);
    v72 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v66[v72[5]] = v67[v72[5]];
    v73 = v72[6];
    v74 = sub_21DBF509C();
    (*(*(v74 - 8) + 32))(&v66[v73], &v67[v73], v74);
    v66[v72[7]] = v67[v72[7]];
    v75 = v72[8];
    v76 = &v66[v75];
    v77 = &v67[v75];
    v76[16] = v77[16];
    *v76 = *v77;
    v66[v72[9]] = v67[v72[9]];
    v66[v72[10]] = v67[v72[10]];
    v66[v72[11]] = v67[v72[11]];
    *&v66[v72[12]] = *&v67[v72[12]];
    v78 = v68[12];
    v79 = &v66[v78];
    v80 = &v67[v78];
    v81 = *(v80 + 2);
    *(v79 + 1) = *(v80 + 1);
    *(v79 + 2) = v81;
    *v79 = *v80;
    v82 = v68[16];
    __dst = &v66[v82];
    v83 = &v67[v82];
    v84 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v85 = *(v84 - 8);
    if ((*(v85 + 48))(v83, 1, v84))
    {
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__dst, v83, *(*(v86 - 8) + 64));
    }

    else
    {
      *__dst = *v83;
      v148 = *(v84 + 20);
      if ((*(v150 + 48))(&v83[v148], 1, v151))
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(&__dst[v148], &v83[v148], *(*(v87 - 8) + 64));
      }

      else
      {
        (v149)(&__dst[v148], &v83[v148], v151);
        (*(v150 + 56))(&__dst[v148], 0, 1, v151);
      }

      (*(v85 + 56))(__dst, 0, 1, v84);
    }

    v66[v68[20]] = v67[v68[20]];
    v66[v68[24]] = v67[v68[24]];
    (*(v69 + 56))(v66, 0, 1, v68);
  }

  v88 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v88) = *(a2 + v88);
  v89 = a3[23];
  v90 = a3[24];
  v91 = a1 + v89;
  v92 = a2 + v89;
  v93 = *(v92 + 1);
  *v91 = *v92;
  *(v91 + 1) = v93;
  v91[32] = v92[32];
  v94 = a1 + v90;
  v95 = a2 + v90;
  *v94 = *v95;
  v94[8] = v95[8];
  v96 = a3[25];
  v97 = a3[26];
  v98 = a1 + v96;
  v99 = a2 + v96;
  *v98 = *v99;
  *(v98 + 2) = *(v99 + 2);
  v100 = a1 + v97;
  v101 = a2 + v97;
  v102 = *(v101 + 5);
  *(v100 + 4) = *(v101 + 4);
  *(v100 + 5) = v102;
  *(v100 + 6) = *(v101 + 6);
  *(v100 + 14) = *(v101 + 14);
  v103 = *(v101 + 1);
  *v100 = *v101;
  *(v100 + 1) = v103;
  v104 = *(v101 + 3);
  *(v100 + 2) = *(v101 + 2);
  *(v100 + 3) = v104;
  v105 = a3[27];
  v106 = a3[28];
  v107 = (a1 + v105);
  v108 = (a2 + v105);
  v109 = *v108;
  v110 = v108[1];
  v111 = v108[3];
  v107[2] = v108[2];
  v107[3] = v111;
  *v107 = v109;
  v107[1] = v110;
  v112 = v108[4];
  v113 = v108[5];
  v114 = v108[6];
  *(v107 + 105) = *(v108 + 105);
  v107[5] = v113;
  v107[6] = v114;
  v107[4] = v112;
  v115 = a1 + v106;
  v116 = a2 + v106;
  *v115 = *v116;
  *(v115 + 2) = *(v116 + 2);
  v117 = a3[29];
  v118 = a3[30];
  v119 = (a1 + v117);
  v120 = (a2 + v117);
  v121 = v120[1];
  *v119 = *v120;
  v119[1] = v121;
  *(a1 + v118) = *(a2 + v118);
  v122 = a3[31];
  v123 = a3[32];
  v124 = a1 + v122;
  v125 = a2 + v122;
  *v124 = *v125;
  v124[8] = v125[8];
  *(a1 + v123) = *(a2 + v123);
  v126 = a3[33];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v128 = *(v127 - 8);
  if ((*(v128 + 48))(a2 + v126, 1, v127))
  {
    v129 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
    memcpy(a1 + v126, a2 + v126, *(*(v129 - 8) + 64));
  }

  else
  {
    v130 = sub_21DBF54CC();
    v131 = *(v130 - 8);
    if ((*(v131 + 48))(a2 + v126, 1, v130))
    {
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(a1 + v126, a2 + v126, *(*(v132 - 8) + 64));
    }

    else
    {
      (*(v131 + 32))(a1 + v126, a2 + v126, v130);
      (*(v131 + 56))(a1 + v126, 0, 1, v130);
    }

    (*(v128 + 56))(a1 + v126, 0, 1, v127);
  }

  v133 = a3[35];
  *(a1 + a3[34]) = *(a2 + a3[34]);
  v134 = (a1 + v133);
  v135 = (a2 + v133);
  v136 = v135[3];
  v134[2] = v135[2];
  v134[3] = v136;
  v134[4] = v135[4];
  v137 = v135[1];
  *v134 = *v135;
  v134[1] = v137;
  v138 = a3[37];
  *(a1 + a3[36]) = *(a2 + a3[36]);
  v139 = (a1 + v138);
  v140 = (a2 + v138);
  v141 = v140[1];
  *v139 = *v140;
  v139[1] = v141;
  *(v139 + 25) = *(v140 + 25);
  v142 = a3[38];
  v143 = a1 + v142;
  v144 = a2 + v142;
  *(v143 + 8) = *(v144 + 8);
  v145 = *(v144 + 3);
  *(v143 + 2) = *(v144 + 2);
  *(v143 + 3) = v145;
  v146 = *(v144 + 1);
  *v143 = *v144;
  *(v143 + 1) = v146;
  return a1;
}

_BYTE *assignWithTake for TTRReminderDetailViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D799ED4(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
  v43 = &a1[v42];
  v44 = &a2[v42];
  v46 = *v44;
  v45 = v44[1];
  *v43 = v46;
  v43[1] = v45;

  v47 = a3[7];
  v48 = *&a1[v47];
  *&a1[v47] = *&a2[v47];

  v49 = a3[8];
  v50 = &a1[v49];
  v51 = &a2[v49];
  v52 = v51[48];
  v53 = *v50;
  v54 = *(v50 + 1);
  v55 = *(v50 + 2);
  v56 = *(v50 + 3);
  v57 = *(v50 + 4);
  v58 = *(v50 + 5);
  v59 = v50[48];
  v60 = *(v51 + 1);
  *v50 = *v51;
  *(v50 + 1) = v60;
  *(v50 + 2) = *(v51 + 2);
  v50[48] = v52;
  sub_21D1078C0(v53, v54, v55, v56, v57, v58, v59);
  v61 = a3[9];
  v62 = &a1[v61];
  v63 = &a2[v61];
  if (*&a1[v61 + 8] == 1)
  {
LABEL_92:
    v65 = *(v63 + 3);
    *(v62 + 32) = *(v63 + 2);
    *(v62 + 48) = v65;
    *(v62 + 64) = *(v63 + 4);
    *(v62 + 73) = *(v63 + 73);
    v66 = *(v63 + 1);
    *v62 = *v63;
    *(v62 + 16) = v66;
    goto LABEL_94;
  }

  v64 = *(v63 + 1);
  if (v64 == 1)
  {
    sub_21D5AF8C8(v62);
    goto LABEL_92;
  }

  *v62 = *v63;
  *(v62 + 8) = v64;

  v67 = v63[64];
  v68 = *(v62 + 16);
  v69 = *(v62 + 24);
  v70 = *(v62 + 32);
  v71 = *(v62 + 40);
  v72 = *(v62 + 48);
  v73 = *(v62 + 56);
  v74 = *(v62 + 64);
  v75 = *(v63 + 2);
  *(v62 + 16) = *(v63 + 1);
  *(v62 + 32) = v75;
  *(v62 + 48) = *(v63 + 3);
  *(v62 + 64) = v67;
  sub_21D1078C0(v68, v69, v70, v71, v72, v73, v74);
  v76 = v63[88];
  v77 = *(v62 + 72);
  v78 = *(v62 + 80);
  v79 = *(v62 + 88);
  *(v62 + 72) = *(v63 + 72);
  *(v62 + 88) = v76;
  sub_21D0FB9F4(v77, v78, v79);
LABEL_94:
  v80 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v80] = a2[v80];
  v81 = a3[12];
  v82 = *&a1[v81];
  *&a1[v81] = *&a2[v81];

  v83 = a3[13];
  v84 = &a1[v83];
  v85 = &a2[v83];
  if (*&a1[v83 + 8])
  {
    v86 = v85[1];
    if (v86)
    {
      *v84 = *v85;
      v84[1] = v86;

      v84[2] = v85[2];

      v84[3] = v85[3];

      goto LABEL_99;
    }

    sub_21D0CF7E0(v84, &qword_27CE5A640);
  }

  v87 = *(v85 + 1);
  *v84 = *v85;
  *(v84 + 1) = v87;
LABEL_99:
  v88 = a3[15];
  a1[a3[14]] = a2[a3[14]];
  *&a1[v88] = *&a2[v88];
  v89 = a3[17];
  *&a1[a3[16]] = *&a2[a3[16]];
  a1[v89] = a2[v89];
  v90 = a3[18];
  v91 = *&a1[v90];
  *&a1[v90] = *&a2[v90];

  v92 = a3[19];
  v93 = &a1[v92];
  v94 = &a2[v92];
  if (*&a1[v92 + 8])
  {
    v95 = v94[1];
    if (v95)
    {
      *v93 = *v94;
      v93[1] = v95;

      v93[2] = v94[2];

      v93[3] = v94[3];

      goto LABEL_104;
    }

    sub_21D0CF7E0(v93, &qword_27CE5A640);
  }

  v96 = *(v94 + 1);
  *v93 = *v94;
  *(v93 + 1) = v96;
LABEL_104:
  v97 = a3[20];
  v98 = &a1[v97];
  v99 = &a2[v97];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v101 = *(v100 - 1);
  v102 = *(v101 + 48);
  v103 = v102(v98, 1, v100);
  v104 = v102(v99, 1, v100);
  if (!v103)
  {
    if (v104)
    {
      sub_21D0CF7E0(v98, &qword_27CE5C678);
      goto LABEL_110;
    }

    v122 = sub_21DBF563C();
    v279 = *(v122 - 8);
    v281 = v122;
    v276 = *(v279 + 40);
    (v276)(v98, v99);
    v123 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v98[v123[5]] = v99[v123[5]];
    v124 = v123[6];
    v125 = sub_21DBF509C();
    (*(*(v125 - 8) + 40))(&v98[v124], &v99[v124], v125);
    v98[v123[7]] = v99[v123[7]];
    v126 = v123[8];
    v127 = &v98[v126];
    v128 = &v99[v126];
    v127[16] = v128[16];
    *v127 = *v128;
    v98[v123[9]] = v99[v123[9]];
    v98[v123[10]] = v99[v123[10]];
    v98[v123[11]] = v99[v123[11]];
    v129 = v123[12];
    v130 = &v98[v129];
    v131 = &v99[v129];
    v133 = *v131;
    v132 = v131[1];
    *v130 = v133;
    v130[1] = v132;

    v134 = v100[12];
    v135 = &v98[v134];
    v136 = &v99[v134];
    *v135 = *&v99[v134];
    v135[8] = v99[v134 + 8];
    v137 = *&v99[v134 + 24];
    *(v135 + 2) = *&v99[v134 + 16];
    *(v135 + 3) = v137;

    v138 = *(v136 + 5);
    *(v135 + 4) = *(v136 + 4);
    *(v135 + 5) = v138;

    v139 = v100[16];
    v140 = &v98[v139];
    v287 = &v99[v139];
    v141 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v277 = *(v141 - 8);
    v142 = *(v277 + 48);
    v285 = v140;
    LODWORD(v140) = v142(v140, 1, v141);
    v143 = v142(v287, 1, v141);
    if (v140)
    {
      if (!v143)
      {
        *v285 = *v287;
        v148 = *(v141 + 20);
        if ((*(v279 + 48))(&v287[v148], 1, v281))
        {
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy((v285 + v148), &v287[v148], *(*(v149 - 8) + 64));
        }

        else
        {
          (*(v279 + 32))(v285 + v148, &v287[v148], v281);
          (*(v279 + 56))(v285 + v148, 0, 1, v281);
        }

        (*(v277 + 56))(v285, 0, 1, v141);
        goto LABEL_130;
      }

      v144 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v145 = v285;
    }

    else
    {
      if (!v143)
      {
        v150 = *(v287 + 1);
        *v285 = *v287;
        *(v285 + 8) = v150;

        v151 = *(v141 + 20);
        v152 = *(v279 + 48);
        v283 = v152(v285 + v151, 1, v281);
        v153 = v152(&v287[v151], 1, v281);
        if (v283)
        {
          if (!v153)
          {
            (*(v279 + 32))(v285 + v151, &v287[v151], v281);
            (*(v279 + 56))(v285 + v151, 0, 1, v281);
            goto LABEL_130;
          }

          v144 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v145 = (v285 + v151);
        }

        else
        {
          if (!v153)
          {
            v276(v285 + v151, &v287[v151], v281);
            goto LABEL_130;
          }

          (*(v279 + 8))(v285 + v151, v281);
          v144 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v145 = (v285 + v151);
        }

        v147 = &v287[v151];
LABEL_119:
        memcpy(v145, v147, v144);
LABEL_130:
        v98[v100[20]] = v99[v100[20]];
        v98[v100[24]] = v99[v100[24]];
        goto LABEL_131;
      }

      sub_21D799ED4(v285, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      v144 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v145 = v285;
    }

    v147 = v287;
    goto LABEL_119;
  }

  if (v104)
  {
LABEL_110:
    v121 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v98, v99, *(*(v121 - 8) + 64));
    goto LABEL_131;
  }

  v105 = sub_21DBF563C();
  v282 = *(v105 - 8);
  v284 = v105;
  v280 = *(v282 + 32);
  (v280)(v98, v99);
  v106 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  v98[v106[5]] = v99[v106[5]];
  v107 = v106[6];
  v108 = sub_21DBF509C();
  (*(*(v108 - 8) + 32))(&v98[v107], &v99[v107], v108);
  v98[v106[7]] = v99[v106[7]];
  v109 = v106[8];
  v110 = &v98[v109];
  v111 = &v99[v109];
  v110[16] = v111[16];
  *v110 = *v111;
  v98[v106[9]] = v99[v106[9]];
  v98[v106[10]] = v99[v106[10]];
  v98[v106[11]] = v99[v106[11]];
  *&v98[v106[12]] = *&v99[v106[12]];
  v112 = v100[12];
  v113 = &v98[v112];
  v114 = &v99[v112];
  v115 = v114[2];
  v113[1] = v114[1];
  v113[2] = v115;
  *v113 = *v114;
  v116 = v100[16];
  v286 = &v98[v116];
  v117 = &v99[v116];
  v118 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v119 = *(v118 - 8);
  if ((*(v119 + 48))(v117, 1, v118))
  {
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
    memcpy(v286, v117, *(*(v120 - 8) + 64));
  }

  else
  {
    *v286 = *v117;
    v278 = *(v118 + 20);
    if ((*(v282 + 48))(v117 + v278, 1, v284))
    {
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
      memcpy(v286 + v278, v117 + v278, *(*(v146 - 8) + 64));
    }

    else
    {
      v280(v286 + v278, v117 + v278, v284);
      (*(v282 + 56))(v286 + v278, 0, 1, v284);
    }

    (*(v119 + 56))(v286, 0, 1, v118);
  }

  v98[v100[20]] = v99[v100[20]];
  v98[v100[24]] = v99[v100[24]];
  (*(v101 + 56))(v98, 0, 1, v100);
LABEL_131:
  v154 = a3[22];
  a1[a3[21]] = a2[a3[21]];
  a1[v154] = a2[v154];
  v155 = a3[23];
  v156 = &a1[v155];
  v157 = &a2[v155];
  v158 = v157[32];
  v159 = *v156;
  v160 = *(v156 + 1);
  v161 = *(v156 + 2);
  v162 = *(v156 + 3);
  v163 = *(v157 + 1);
  *v156 = *v157;
  *(v156 + 1) = v163;
  v164 = v156[32];
  v156[32] = v158;
  sub_21D48C240(v159, v160, v161, v162, v164);
  v165 = a3[24];
  v166 = &a1[v165];
  v167 = &a2[v165];
  *&a1[v165] = *&a2[v165];

  v166[8] = v167[8];
  v168 = a3[25];
  v169 = &a1[v168];
  v170 = &a2[v168];
  if (*&a1[v168 + 8] < 3uLL)
  {
LABEL_134:
    *v169 = *v170;
    *(v169 + 16) = *(v170 + 2);
    goto LABEL_136;
  }

  v171 = *(v170 + 1);
  if (v171 < 3)
  {
    sub_21D122250(v169);
    goto LABEL_134;
  }

  *v169 = *v170;
  *(v169 + 8) = v171;

  v172 = *(v169 + 16);
  *(v169 + 16) = *(v170 + 2);

LABEL_136:
  v173 = a3[26];
  v174 = &a1[v173];
  v175 = &a2[v173];
  if (!*&a1[v173])
  {
LABEL_142:
    v185 = *(v175 + 5);
    *(v174 + 64) = *(v175 + 4);
    *(v174 + 80) = v185;
    *(v174 + 96) = *(v175 + 6);
    *(v174 + 112) = *(v175 + 14);
    v186 = *(v175 + 1);
    *v174 = *v175;
    *(v174 + 16) = v186;
    v187 = *(v175 + 3);
    *(v174 + 32) = *(v175 + 2);
    *(v174 + 48) = v187;
    goto LABEL_145;
  }

  if (!*v175)
  {
    sub_21D0CF7E0(v174, &qword_27CE61978);
    goto LABEL_142;
  }

  *v174 = *v175;

  v176 = *(v174 + 8);
  v177 = *(v175 + 1);
  if (v176)
  {
    if (v177)
    {
      *(v174 + 8) = v177;

      v178 = *(v174 + 16);
      *(v174 + 16) = *(v175 + 2);

      v179 = *(v175 + 4);
      *(v174 + 24) = *(v175 + 3);
      *(v174 + 32) = v179;

      v180 = *(v175 + 6);
      *(v174 + 40) = *(v175 + 5);
      *(v174 + 48) = v180;

      v181 = *(v175 + 8);
      *(v174 + 56) = *(v175 + 7);
      *(v174 + 64) = v181;

      v182 = *(v175 + 10);
      *(v174 + 72) = *(v175 + 9);
      *(v174 + 80) = v182;

      v183 = *(v175 + 12);
      *(v174 + 88) = *(v175 + 11);
      *(v174 + 96) = v183;

      *(v174 + 104) = v175[104];
      v184 = *(v174 + 112);
      *(v174 + 112) = *(v175 + 14);

      goto LABEL_145;
    }

    sub_21D30DA04(v174 + 8);
  }

  v188 = *(v175 + 88);
  *(v174 + 72) = *(v175 + 72);
  *(v174 + 88) = v188;
  *(v174 + 104) = *(v175 + 104);
  v189 = *(v175 + 24);
  *(v174 + 8) = *(v175 + 8);
  *(v174 + 24) = v189;
  v190 = *(v175 + 56);
  *(v174 + 40) = *(v175 + 40);
  *(v174 + 56) = v190;
LABEL_145:
  v191 = a3[27];
  v192 = &a1[v191];
  v193 = &a2[v191];
  v194 = *(v193 + 14);
  v195 = v193[120];
  v196 = *v192;
  v197 = *(v192 + 1);
  v198 = *(v192 + 2);
  v199 = *(v192 + 3);
  v200 = *(v192 + 4);
  v201 = *(v192 + 5);
  v202 = *(v192 + 6);
  v203 = *(v192 + 7);
  v204 = *(v192 + 4);
  v205 = *(v192 + 5);
  v206 = *(v192 + 6);
  v207 = *(v192 + 14);
  v208 = v192[120];
  v209 = *(v193 + 1);
  *v192 = *v193;
  *(v192 + 1) = v209;
  v210 = *(v193 + 3);
  *(v192 + 2) = *(v193 + 2);
  *(v192 + 3) = v210;
  v211 = *(v193 + 5);
  *(v192 + 4) = *(v193 + 4);
  *(v192 + 5) = v211;
  *(v192 + 6) = *(v193 + 6);
  *(v192 + 14) = v194;
  v192[120] = v195;
  sub_21D7AC858(v196, v197, v198, v199, v200, v201, v202, v203, v204, *(&v204 + 1), v205, *(&v205 + 1), v206, *(&v206 + 1), v207, v208);
  v212 = a3[28];
  v213 = &a1[v212];
  v214 = &a2[v212];
  *v213 = a2[v212];
  *(v213 + 1) = *&a2[v212 + 8];

  *(v213 + 2) = *(v214 + 2);

  v215 = a3[29];
  v216 = &a1[v215];
  v217 = &a2[v215];
  if (*&a1[v215 + 8])
  {
    v218 = v217[1];
    if (v218)
    {
      *v216 = *v217;
      v216[1] = v218;

      v216[2] = v217[2];

      v216[3] = v217[3];

      goto LABEL_150;
    }

    sub_21D0CF7E0(v216, &qword_27CE5A640);
  }

  v219 = *(v217 + 1);
  *v216 = *v217;
  *(v216 + 1) = v219;
LABEL_150:
  v220 = a3[31];
  a1[a3[30]] = a2[a3[30]];
  v221 = &a1[v220];
  v222 = &a2[v220];
  *v221 = *v222;
  v221[8] = v222[8];
  *&a1[a3[32]] = *&a2[a3[32]];

  v223 = a3[33];
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v225 = *(v224 - 8);
  v226 = *(v225 + 48);
  v227 = v226(&a1[v223], 1, v224);
  v228 = v226(&a2[v223], 1, v224);
  if (v227)
  {
    if (!v228)
    {
      v229 = sub_21DBF54CC();
      v230 = *(v229 - 8);
      if ((*(v230 + 48))(&a2[v223], 1, v229))
      {
        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy(&a1[v223], &a2[v223], *(*(v231 - 8) + 64));
      }

      else
      {
        (*(v230 + 32))(&a1[v223], &a2[v223], v229);
        (*(v230 + 56))(&a1[v223], 0, 1, v229);
      }

      goto LABEL_162;
    }

    goto LABEL_156;
  }

  if (v228)
  {
    sub_21D0CF7E0(&a1[v223], &unk_27CE62230);
LABEL_156:
    v232 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
LABEL_157:
    memcpy(&a1[v223], &a2[v223], *(*(v232 - 8) + 64));
    goto LABEL_163;
  }

  v224 = sub_21DBF54CC();
  v225 = *(v224 - 8);
  v233 = *(v225 + 48);
  v234 = v233(&a1[v223], 1, v224);
  v235 = v233(&a2[v223], 1, v224);
  if (v234)
  {
    if (!v235)
    {
      (*(v225 + 32))(&a1[v223], &a2[v223], v224);
LABEL_162:
      (*(v225 + 56))(&a1[v223], 0, 1, v224);
      goto LABEL_163;
    }

    goto LABEL_187;
  }

  if (v235)
  {
    (*(v225 + 8))(&a1[v223], v224);
LABEL_187:
    v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    goto LABEL_157;
  }

  (*(v225 + 40))(&a1[v223], &a2[v223], v224);
LABEL_163:
  v236 = a3[34];
  v237 = &a1[v236];
  v238 = &a2[v236];
  v240 = *v238;
  v239 = v238[1];
  *v237 = v240;
  v237[1] = v239;

  v241 = a3[35];
  v242 = &a1[v241];
  v243 = &a2[v241];
  if (*&a1[v241 + 8] == 1)
  {
LABEL_166:
    v245 = *(v243 + 3);
    *(v242 + 32) = *(v243 + 2);
    *(v242 + 48) = v245;
    *(v242 + 64) = *(v243 + 4);
    v246 = *(v243 + 1);
    *v242 = *v243;
    *(v242 + 16) = v246;
    goto LABEL_168;
  }

  v244 = *(v243 + 1);
  if (v244 == 1)
  {
    sub_21D0CF7E0(v242, &qword_27CE61980);
    goto LABEL_166;
  }

  *v242 = *v243;
  *(v242 + 8) = v244;

  v247 = *(v243 + 3);
  *(v242 + 16) = *(v243 + 2);
  *(v242 + 24) = v247;

  v248 = *(v243 + 5);
  *(v242 + 32) = *(v243 + 4);
  *(v242 + 40) = v248;

  *(v242 + 48) = v243[48];
  v249 = *(v243 + 8);
  *(v242 + 56) = *(v243 + 7);
  *(v242 + 64) = v249;

  v250 = *(v242 + 72);
  *(v242 + 72) = *(v243 + 9);

LABEL_168:
  *&a1[a3[36]] = *&a2[a3[36]];

  v251 = a3[37];
  v252 = &a1[v251];
  v253 = &a2[v251];
  v254 = a1[v251 + 40];
  if (v254 != 255)
  {
    v255 = v253[40];
    if (v255 != 255)
    {
      v256 = *(v253 + 4);
      v257 = *v252;
      v258 = *(v252 + 8);
      v259 = *(v252 + 16);
      v260 = *(v252 + 24);
      v261 = *(v252 + 32);
      v262 = *(v253 + 1);
      *v252 = *v253;
      *(v252 + 16) = v262;
      *(v252 + 32) = v256;
      *(v252 + 40) = v255;
      sub_21D7A98B4(v257, v258, v259, v260, v261, v254);
      goto LABEL_173;
    }

    sub_21D0CF7E0(v252, &qword_27CE61988);
  }

  v263 = *(v253 + 1);
  *v252 = *v253;
  *(v252 + 16) = v263;
  *(v252 + 25) = *(v253 + 25);
LABEL_173:
  v264 = a3[38];
  v265 = &a1[v264];
  v266 = &a2[v264];
  v267 = *&a1[v264];
  if (!v267)
  {
LABEL_180:
    v272 = *(v266 + 3);
    *(v265 + 32) = *(v266 + 2);
    *(v265 + 48) = v272;
    *(v265 + 64) = *(v266 + 8);
    v273 = *(v266 + 1);
    *v265 = *v266;
    *(v265 + 16) = v273;
    return a1;
  }

  if (!*v266)
  {
    sub_21D7B1EA4(v265);
    goto LABEL_180;
  }

  *v265 = *v266;

  v268 = *(v266 + 2);
  *(v265 + 8) = *(v266 + 1);
  *(v265 + 16) = v268;

  v269 = *(v266 + 4);
  *(v265 + 24) = *(v266 + 3);
  *(v265 + 32) = v269;

  v270 = *(v265 + 56);
  if (v270 != 1)
  {
    v271 = *(v266 + 7);
    if (v271 != 1)
    {
      *(v265 + 40) = v266[40];
      if (v270)
      {
        if (v271)
        {
          *(v265 + 48) = *(v266 + 6);
          *(v265 + 56) = v271;

          v275 = *(v265 + 64);
          *(v265 + 64) = *(v266 + 8);

          return a1;
        }

        sub_21D122250(v265 + 48);
      }

      *(v265 + 48) = *(v266 + 3);
      *(v265 + 64) = *(v266 + 8);
      return a1;
    }

    sub_21D3A1A28(v265 + 40);
  }

  *(v265 + 40) = *(v266 + 40);
  *(v265 + 56) = *(v266 + 56);
  return a1;
}

uint64_t sub_21D7B5BD8()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRReminderDetailViewModel.DueDateState(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TTRReminderDetailViewModel.URLState(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel.DatePickerModel(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    v10 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v11 = a1 + v10;
    v12 = a2 + v10;
    *v11 = *v12;
    v11[16] = v12[16];
    v13 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v13) = *(a2 + v13);
    v14 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    v15 = (a1 + v14);
    v16 = (a2 + v14);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t destroy for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF563C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 24);
  v6 = sub_21DBF509C();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_21DBF509C();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = sub_21DBF509C();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v9 = a3[8];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v13 = a3[12];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  *v14 = *v15;
  v14[1] = v15[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_21DBF509C();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v13) = *(a2 + v13);
  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.DatePickerModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_21DBF509C();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 16) = *(v11 + 16);
  v12 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v17 = *v15;
  v16 = v15[1];
  *v14 = v17;
  v14[1] = v16;

  return a1;
}

uint64_t sub_21D7B647C()
{
  result = sub_21DBF563C();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF509C();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel.DueDateState(void *a1, void *a2, uint64_t a3)
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v8 = *(v7 - 1);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v44 = v8;
    v12 = sub_21DBF563C();
    v42 = *(v12 - 8);
    v43 = v12;
    v41 = *(v42 + 16);
    (v41)(a1, a2);
    v13 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    *(a1 + v13[5]) = *(a2 + v13[5]);
    v14 = v13[6];
    v15 = sub_21DBF509C();
    (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
    *(a1 + v13[7]) = *(a2 + v13[7]);
    v16 = v13[8];
    v17 = a1 + v16;
    v18 = a2 + v16;
    v17[16] = v18[16];
    *v17 = *v18;
    *(a1 + v13[9]) = *(a2 + v13[9]);
    *(a1 + v13[10]) = *(a2 + v13[10]);
    *(a1 + v13[11]) = *(a2 + v13[11]);
    v19 = v13[12];
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    v22 = v21[1];
    *v20 = *v21;
    v20[1] = v22;
    v23 = v7[12];
    v24 = a1 + v23;
    v25 = a2 + v23;
    *v24 = *v25;
    v24[8] = v25[8];
    v26 = *(v25 + 3);
    *(v24 + 2) = *(v25 + 2);
    *(v24 + 3) = v26;
    v27 = *(v25 + 5);
    *(v24 + 4) = *(v25 + 4);
    *(v24 + 5) = v27;
    v28 = v7[16];
    __dst = (a1 + v28);
    v29 = (a2 + v28);
    v30 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v30;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v32(v29, 1, v33))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__dst, v29, *(*(v34 - 8) + 64));
      v35 = v44;
    }

    else
    {
      v36 = v29[1];
      *__dst = *v29;
      __dst[1] = v36;
      v40 = v33;
      v37 = *(v33 + 20);
      v38 = *(v42 + 48);
      sub_21DBF8E0C();
      if (v38(v29 + v37, 1, v43))
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(__dst + v37, v29 + v37, *(*(v39 - 8) + 64));
      }

      else
      {
        v41(__dst + v37, v29 + v37, v43);
        (*(v42 + 56))(__dst + v37, 0, 1, v43);
      }

      v35 = v44;
      (*(v31 + 56))(__dst, 0, 1, v40);
    }

    *(a1 + v7[20]) = *(a2 + v7[20]);
    *(a1 + v7[24]) = *(a2 + v7[24]);
    (*(v35 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TTRReminderDetailViewModel.DueDateState(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = sub_21DBF563C();
    v5 = *(v4 - 8);
    v11 = *(v5 + 8);
    v11(a1, v4);
    v6 = *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 24);
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 8))(a1 + v6, v7);

    v8 = a1 + *(v2 + 64);
    v9 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    result = (*(*(v9 - 8) + 48))(v8, 1, v9);
    if (!result)
    {

      v10 = *(v9 + 20);
      result = (*(v5 + 48))(v8 + v10, 1, v4);
      if (!result)
      {

        return (v11)(v8 + v10, v4);
      }
    }
  }

  return result;
}

char *initializeWithCopy for TTRReminderDetailViewModel.DueDateState(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v42 = v7;
    v10 = sub_21DBF563C();
    v40 = *(v10 - 8);
    v41 = v10;
    v39 = *(v40 + 16);
    v39(a1, a2);
    v11 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v11[5]] = a2[v11[5]];
    v12 = v11[6];
    v13 = sub_21DBF509C();
    (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    a1[v11[7]] = a2[v11[7]];
    v14 = v11[8];
    v15 = &a1[v14];
    v16 = &a2[v14];
    v15[16] = v16[16];
    *v15 = *v16;
    a1[v11[9]] = a2[v11[9]];
    a1[v11[10]] = a2[v11[10]];
    a1[v11[11]] = a2[v11[11]];
    v17 = v11[12];
    v18 = &a1[v17];
    v19 = &a2[v17];
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    v21 = v6[12];
    v22 = &a1[v21];
    v23 = &a2[v21];
    *v22 = *v23;
    v22[8] = v23[8];
    v24 = *(v23 + 3);
    *(v22 + 2) = *(v23 + 2);
    *(v22 + 3) = v24;
    v25 = *(v23 + 5);
    *(v22 + 4) = *(v23 + 4);
    *(v22 + 5) = v25;
    v26 = v6[16];
    __dst = &a1[v26];
    v27 = &a2[v26];
    v28 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    v31 = v28;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v30(v27, 1, v31))
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__dst, v27, *(*(v32 - 8) + 64));
      v33 = v42;
    }

    else
    {
      v34 = *(v27 + 1);
      *__dst = *v27;
      *(__dst + 1) = v34;
      v38 = v31;
      v35 = *(v31 + 20);
      v36 = *(v40 + 48);
      sub_21DBF8E0C();
      if (v36(&v27[v35], 1, v41))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(&__dst[v35], &v27[v35], *(*(v37 - 8) + 64));
      }

      else
      {
        (v39)(&__dst[v35], &v27[v35], v41);
        (*(v40 + 56))(&__dst[v35], 0, 1, v41);
      }

      v33 = v42;
      (*(v29 + 56))(__dst, 0, 1, v38);
    }

    a1[v6[20]] = a2[v6[20]];
    a1[v6[24]] = a2[v6[24]];
    (*(v33 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *assignWithCopy for TTRReminderDetailViewModel.DueDateState(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_21D0CF7E0(a1, &qword_27CE5C678);
      goto LABEL_7;
    }

    v34 = sub_21DBF563C();
    v75 = *(v34 - 8);
    __dsta = v34;
    v72 = *(v75 + 24);
    (v72)(a1, a2);
    v35 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v35[5]] = a2[v35[5]];
    v36 = v35[6];
    v37 = sub_21DBF509C();
    (*(*(v37 - 8) + 24))(&a1[v36], &a2[v36], v37);
    a1[v35[7]] = a2[v35[7]];
    v38 = v35[8];
    v39 = &a1[v38];
    v40 = &a2[v38];
    v41 = v40[16];
    *v39 = *v40;
    v39[16] = v41;
    a1[v35[9]] = a2[v35[9]];
    a1[v35[10]] = a2[v35[10]];
    a1[v35[11]] = a2[v35[11]];
    v42 = v35[12];
    v43 = &a1[v42];
    v44 = &a2[v42];
    *v43 = *v44;
    v43[1] = v44[1];
    sub_21DBF8E0C();

    v45 = v6[12];
    v46 = &a1[v45];
    v47 = &a2[v45];
    *v46 = *&a2[v45];
    v46[8] = a2[v45 + 8];
    *(v46 + 2) = *&a2[v45 + 16];
    *(v46 + 3) = *&a2[v45 + 24];
    sub_21DBF8E0C();

    *(v46 + 4) = *(v47 + 4);
    *(v46 + 5) = *(v47 + 5);
    sub_21DBF8E0C();

    v48 = v6[16];
    v49 = &a1[v48];
    v50 = &a2[v48];
    v51 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    v54 = v53(v49, 1, v51);
    v55 = v53(v50, 1, v51);
    if (v54)
    {
      if (!v55)
      {
        *v49 = *v50;
        *(v49 + 1) = *(v50 + 1);
        v56 = *(v51 + 20);
        v73 = *(v75 + 48);
        sub_21DBF8E0C();
        if (v73(&v50[v56], 1, __dsta))
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy(&v49[v56], &v50[v56], *(*(v57 - 8) + 64));
        }

        else
        {
          (*(v75 + 16))(&v49[v56], &v50[v56], __dsta);
          (*(v75 + 56))(&v49[v56], 0, 1, __dsta);
        }

        (*(v52 + 56))(v49, 0, 1, v51);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v55)
      {
        *v49 = *v50;
        *(v49 + 1) = *(v50 + 1);
        sub_21DBF8E0C();

        v64 = *(v51 + 20);
        v65 = *(v75 + 48);
        v66 = v65(&v49[v64], 1, __dsta);
        v67 = v65(&v50[v64], 1, __dsta);
        if (v66)
        {
          if (!v67)
          {
            (*(v75 + 16))(&v49[v64], &v50[v64], __dsta);
            (*(v75 + 56))(&v49[v64], 0, 1, __dsta);
            goto LABEL_28;
          }
        }

        else
        {
          if (!v67)
          {
            v72(&v49[v64], &v50[v64], __dsta);
            goto LABEL_28;
          }

          (*(v75 + 8))(&v49[v64], __dsta);
        }

        v61 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
        v62 = &v49[v64];
        v63 = &v50[v64];
LABEL_19:
        memcpy(v62, v63, v61);
LABEL_28:
        a1[v6[20]] = a2[v6[20]];
        a1[v6[24]] = a2[v6[24]];
        return a1;
      }

      sub_21D799ED4(v49, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
    }

    v61 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
    v62 = v49;
    v63 = v50;
    goto LABEL_19;
  }

  if (!v10)
  {
    v74 = v7;
    v11 = sub_21DBF563C();
    v70 = *(v11 - 8);
    v71 = v11;
    v69 = *(v70 + 16);
    (v69)(a1, a2);
    v12 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v12[5]] = a2[v12[5]];
    v13 = v12[6];
    v14 = sub_21DBF509C();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    a1[v12[7]] = a2[v12[7]];
    v15 = v12[8];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v18 = v17[16];
    *v16 = *v17;
    v16[16] = v18;
    a1[v12[9]] = a2[v12[9]];
    a1[v12[10]] = a2[v12[10]];
    a1[v12[11]] = a2[v12[11]];
    v19 = v12[12];
    v20 = &a1[v19];
    v21 = &a2[v19];
    *v20 = *v21;
    v20[1] = v21[1];
    v22 = v6[12];
    v23 = &a1[v22];
    v24 = &a2[v22];
    *v23 = *v24;
    v23[8] = v24[8];
    *(v23 + 2) = *(v24 + 2);
    *(v23 + 3) = *(v24 + 3);
    *(v23 + 4) = *(v24 + 4);
    *(v23 + 5) = *(v24 + 5);
    v25 = v6[16];
    __dst = &a1[v25];
    v26 = &a2[v25];
    v27 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    v30 = v27;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v29(v26, 1, v30))
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__dst, v26, *(*(v31 - 8) + 64));
    }

    else
    {
      *__dst = *v26;
      __dst[1] = v26[1];
      v68 = v30;
      v58 = *(v30 + 20);
      v59 = *(v70 + 48);
      sub_21DBF8E0C();
      if (v59(v26 + v58, 1, v71))
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(__dst + v58, v26 + v58, *(*(v60 - 8) + 64));
      }

      else
      {
        v69(__dst + v58, v26 + v58, v71);
        (*(v70 + 56))(__dst + v58, 0, 1, v71);
      }

      (*(v28 + 56))(__dst, 0, 1, v68);
    }

    a1[v6[20]] = a2[v6[20]];
    a1[v6[24]] = a2[v6[24]];
    (*(v74 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v32 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v32);
}

char *initializeWithTake for TTRReminderDetailViewModel.DueDateState(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF563C();
    v30 = *(v10 - 8);
    v29 = *(v30 + 32);
    v29(a1, a2, v10);
    v11 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v11[5]] = a2[v11[5]];
    v12 = v11[6];
    v13 = sub_21DBF509C();
    (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
    a1[v11[7]] = a2[v11[7]];
    v14 = v11[8];
    v15 = &a1[v14];
    v16 = &a2[v14];
    v15[16] = v16[16];
    *v15 = *v16;
    a1[v11[9]] = a2[v11[9]];
    a1[v11[10]] = a2[v11[10]];
    a1[v11[11]] = a2[v11[11]];
    *&a1[v11[12]] = *&a2[v11[12]];
    v17 = v6[12];
    v18 = &a1[v17];
    v19 = &a2[v17];
    v20 = *(v19 + 2);
    *(v18 + 1) = *(v19 + 1);
    *(v18 + 2) = v20;
    *v18 = *v19;
    v21 = v6[16];
    v22 = &a1[v21];
    v23 = &a2[v21];
    v24 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(v22, v23, *(*(v26 - 8) + 64));
    }

    else
    {
      *v22 = *v23;
      v27 = *(v24 + 20);
      if ((*(v30 + 48))(&v23[v27], 1, v10))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(&v22[v27], &v23[v27], *(*(v28 - 8) + 64));
      }

      else
      {
        v29(&v22[v27], &v23[v27], v10);
        (*(v30 + 56))(&v22[v27], 0, 1, v10);
      }

      (*(v25 + 56))(v22, 0, 1, v24);
    }

    a1[v6[20]] = a2[v6[20]];
    a1[v6[24]] = a2[v6[24]];
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

_BYTE *assignWithTake for TTRReminderDetailViewModel.DueDateState(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_21D0CF7E0(a1, &qword_27CE5C678);
      goto LABEL_7;
    }

    v30 = sub_21DBF563C();
    v71 = *(v30 - 8);
    v67 = *(v71 + 40);
    v69 = v30;
    (v67)(a1, a2);
    v31 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v31[5]] = a2[v31[5]];
    v32 = v31[6];
    v33 = sub_21DBF509C();
    (*(*(v33 - 8) + 40))(&a1[v32], &a2[v32], v33);
    a1[v31[7]] = a2[v31[7]];
    v34 = v31[8];
    v35 = &a1[v34];
    v36 = &a2[v34];
    v35[16] = v36[16];
    *v35 = *v36;
    a1[v31[9]] = a2[v31[9]];
    a1[v31[10]] = a2[v31[10]];
    a1[v31[11]] = a2[v31[11]];
    v37 = v31[12];
    v38 = &a1[v37];
    v39 = &a2[v37];
    v41 = *v39;
    v40 = v39[1];
    *v38 = v41;
    v38[1] = v40;

    v42 = v6[12];
    v43 = &a1[v42];
    v44 = &a2[v42];
    *v43 = *&a2[v42];
    v43[8] = a2[v42 + 8];
    v45 = *&a2[v42 + 24];
    *(v43 + 2) = *&a2[v42 + 16];
    *(v43 + 3) = v45;

    v46 = *(v44 + 5);
    *(v43 + 4) = *(v44 + 4);
    *(v43 + 5) = v46;

    v47 = v6[16];
    v48 = &a1[v47];
    v49 = &a2[v47];
    v50 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);
    v53 = v52(v48, 1, v50);
    v54 = v52(v49, 1, v50);
    if (v53)
    {
      if (!v54)
      {
        *v48 = *v49;
        v55 = *(v50 + 20);
        if ((*(v71 + 48))(&v49[v55], 1, v69))
        {
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy((v48 + v55), &v49[v55], *(*(v56 - 8) + 64));
        }

        else
        {
          (*(v71 + 32))(v48 + v55, &v49[v55], v69);
          (*(v71 + 56))(v48 + v55, 0, 1, v69);
        }

        (*(v51 + 56))(v48, 0, 1, v50);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v54)
      {
        v62 = *(v49 + 1);
        *v48 = *v49;
        *(v48 + 8) = v62;

        v63 = *(v50 + 20);
        v64 = *(v71 + 48);
        v65 = v64(v48 + v63, 1, v69);
        v66 = v64(&v49[v63], 1, v69);
        if (v65)
        {
          if (!v66)
          {
            (*(v71 + 32))(v48 + v63, &v49[v63], v69);
            (*(v71 + 56))(v48 + v63, 0, 1, v69);
            goto LABEL_28;
          }
        }

        else
        {
          if (!v66)
          {
            v67(v48 + v63, &v49[v63], v69);
            goto LABEL_28;
          }

          (*(v71 + 8))(v48 + v63, v69);
        }

        v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
        v60 = (v48 + v63);
        v61 = &v49[v63];
LABEL_19:
        memcpy(v60, v61, v59);
LABEL_28:
        a1[v6[20]] = a2[v6[20]];
        a1[v6[24]] = a2[v6[24]];
        return a1;
      }

      sub_21D799ED4(v48, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
    }

    v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
    v60 = v48;
    v61 = v49;
    goto LABEL_19;
  }

  if (!v10)
  {
    v11 = sub_21DBF563C();
    v70 = *(v11 - 8);
    v68 = *(v70 + 32);
    v68(a1, a2, v11);
    v12 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    a1[v12[5]] = a2[v12[5]];
    v13 = v12[6];
    v14 = sub_21DBF509C();
    (*(*(v14 - 8) + 32))(&a1[v13], &a2[v13], v14);
    a1[v12[7]] = a2[v12[7]];
    v15 = v12[8];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v16[16] = v17[16];
    *v16 = *v17;
    a1[v12[9]] = a2[v12[9]];
    a1[v12[10]] = a2[v12[10]];
    a1[v12[11]] = a2[v12[11]];
    *&a1[v12[12]] = *&a2[v12[12]];
    v18 = v6[12];
    v19 = &a1[v18];
    v20 = &a2[v18];
    v21 = v20[2];
    v19[1] = v20[1];
    v19[2] = v21;
    *v19 = *v20;
    v22 = v6[16];
    v23 = &a1[v22];
    v24 = &a2[v22];
    v25 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25))
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(v23, v24, *(*(v27 - 8) + 64));
    }

    else
    {
      *v23 = *v24;
      v57 = *(v25 + 20);
      if ((*(v70 + 48))(v24 + v57, 1, v11))
      {
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(v23 + v57, v24 + v57, *(*(v58 - 8) + 64));
      }

      else
      {
        v68(v23 + v57, v24 + v57, v11);
        (*(v70 + 56))(v23 + v57, 0, 1, v11);
      }

      (*(v26 + 56))(v23, 0, 1, v25);
    }

    a1[v6[20]] = a2[v6[20]];
    a1[v6[24]] = a2[v6[24]];
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v28 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v28);
}

void sub_21D7B8670()
{
  type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(319);
  if (v0 <= 0x3F)
  {
    sub_21D7BA950(319, &qword_27CE61990, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
    if (v1 <= 0x3F)
    {
      swift_getTupleTypeLayout();
      swift_initEnumMetadataSinglePayload();
    }
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21D48BB60(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21D48BB60(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_21D48C240(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_21D48C240(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.LocationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.LocationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21D7B8960(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21D7B8990(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.LocationQuickPicksState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.LocationQuickPicksState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D7B8A78(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void destroy for TTRReminderDetailViewModel.PersonState(uint64_t a1)
{
  if (*(a1 + 8) >= 0xFFFFFFFFuLL)
  {

    v2 = *(a1 + 16);
  }
}

__n128 sub_21D7B8B0C(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    v3 = a2[1].n128_u64[0];
    a1[1].n128_u64[0] = v3;
    sub_21DBF8E0C();
    v4 = v3;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.PersonState(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (*(a1 + 8) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      *(a1 + 8) = a2[1];
      v8 = a2[2];
      *(a1 + 16) = v8;
      sub_21DBF8E0C();
      v9 = v8;
      return a1;
    }

LABEL_7:
    v10 = *a2;
    *(a1 + 16) = a2[2];
    *a1 = v10;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = *a2;
  *(a1 + 8) = a2[1];
  sub_21DBF8E0C();

  v5 = *(a1 + 16);
  v6 = a2[2];
  *(a1 + 16) = v6;
  v7 = v6;

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.PersonState(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;

      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(v4 + 16);
      *(v4 + 16) = *(a2 + 16);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.PersonState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.PersonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_21D7B8D98(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void destroy for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t a1)
{
  if (*a1)
  {

    v2 = *(a1 + 104);
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 16);
    *result = v3;
    *(result + 8) = v5;
    v7 = *(a2 + 24);
    v6 = *(a2 + 32);
    *(result + 16) = v4;
    *(result + 24) = v7;
    v9 = *(a2 + 40);
    v8 = *(a2 + 48);
    *(result + 32) = v6;
    *(result + 40) = v9;
    v11 = *(a2 + 56);
    v10 = *(a2 + 64);
    *(result + 48) = v8;
    *(result + 56) = v11;
    v13 = *(a2 + 72);
    v12 = *(a2 + 80);
    *(result + 64) = v10;
    *(result + 72) = v13;
    v14 = *(a2 + 88);
    *(result + 80) = v12;
    *(result + 88) = v14;
    *(result + 96) = *(a2 + 96);
    v15 = *(a2 + 104);
    *(result + 104) = v15;
    v16 = result;
    v17 = v3;
    v18 = v5;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v19 = v15;
    result = v16;
  }

  else
  {
    v20 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v20;
    *(result + 96) = *(a2 + 96);
    v21 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v21;
    v22 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v22;
  }

  *(result + 112) = *(a2 + 112);
  return result;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v6 = v5;

      v7 = *(a1 + 8);
      v8 = *(a2 + 1);
      *(a1 + 8) = v8;
      v9 = v8;

      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      sub_21DBF8E0C();

      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 5);
      sub_21DBF8E0C();

      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = *(a2 + 7);
      sub_21DBF8E0C();

      *(a1 + 64) = *(a2 + 8);
      *(a1 + 72) = *(a2 + 9);
      sub_21DBF8E0C();

      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      sub_21DBF8E0C();

      *(a1 + 96) = *(a2 + 96);
      v10 = *(a1 + 104);
      v11 = *(a2 + 13);
      *(a1 + 104) = v11;
      v12 = v11;
    }

    else
    {
      sub_21D30DA04(a1);
      v19 = a2[1];
      v18 = a2[2];
      *a1 = *a2;
      *(a1 + 16) = v19;
      *(a1 + 32) = v18;
      v20 = a2[6];
      v22 = a2[3];
      v21 = a2[4];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v20;
      *(a1 + 48) = v22;
      *(a1 + 64) = v21;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    v13 = *(a2 + 1);
    *(a1 + 8) = v13;
    *(a1 + 16) = *(a2 + 2);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 13);
    *(a1 + 104) = v14;
    v15 = v5;
    v16 = v13;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17 = v14;
  }

  else
  {
    v23 = *a2;
    v24 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v24;
    *a1 = v23;
    v25 = a2[3];
    v26 = a2[4];
    v27 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v27;
    *(a1 + 48) = v25;
    *(a1 + 64) = v26;
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  if (!*a2)
  {
    sub_21D30DA04(a1);
LABEL_5:
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    *(a1 + 96) = *(a2 + 96);
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    v14 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v14;
    goto LABEL_6;
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

LABEL_6:
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeCandidateState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void destroy for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {

    v2 = *(a1 + 8);
    if (v2)
    {

      v3 = *(a1 + 112);
    }
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t a1, uint64_t a2)
{
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v21 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v21;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    v22 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v22;
    v23 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v23;
  }

  else
  {
    *a1 = *a2;
    v4 = (a2 + 8);
    v5 = *(a2 + 8);
    sub_21DBF8E0C();
    if (v5)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;
      v9 = *(a2 + 32);
      v8 = *(a2 + 40);
      *(a1 + 24) = v6;
      *(a1 + 32) = v9;
      v11 = *(a2 + 48);
      v10 = *(a2 + 56);
      *(a1 + 40) = v8;
      *(a1 + 48) = v11;
      v13 = *(a2 + 64);
      v12 = *(a2 + 72);
      *(a1 + 56) = v10;
      *(a1 + 64) = v13;
      v15 = *(a2 + 80);
      v14 = *(a2 + 88);
      *(a1 + 72) = v12;
      *(a1 + 80) = v15;
      v16 = *(a2 + 96);
      *(a1 + 88) = v14;
      *(a1 + 96) = v16;
      *(a1 + 104) = *(a2 + 104);
      v17 = *(a2 + 112);
      *(a1 + 112) = v17;
      v18 = v5;
      v19 = v7;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v20 = v17;
    }

    else
    {
      v24 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = v24;
      *(a1 + 104) = *(a2 + 104);
      v25 = *(a2 + 24);
      *(a1 + 8) = *v4;
      *(a1 + 24) = v25;
      v26 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v26;
    }
  }

  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 < 0xFFFFFFFF)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      v6 = (a1 + 8);
      v9 = (a2 + 8);
      v17 = *(a2 + 1);
      sub_21DBF8E0C();
      if (v17)
      {
        *(a1 + 8) = v17;
        v18 = *(a2 + 2);
        *(a1 + 16) = v18;
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        *(a1 + 40) = *(a2 + 5);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 96) = *(a2 + 12);
        *(a1 + 104) = *(a2 + 104);
        v19 = *(a2 + 14);
        *(a1 + 112) = v19;
        v20 = v17;
        v21 = v18;
LABEL_14:
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v32 = v19;
        return a1;
      }

LABEL_15:
      v33 = *v9;
      v34 = v9[2];
      v6[1] = v9[1];
      v6[2] = v34;
      *v6 = v33;
      v35 = v9[3];
      v36 = v9[4];
      v37 = v9[6];
      v6[5] = v9[5];
      v6[6] = v37;
      v6[3] = v35;
      v6[4] = v36;
      return a1;
    }

LABEL_11:
    v23 = *a2;
    v24 = a2[1];
    v25 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v25;
    *a1 = v23;
    *(a1 + 16) = v24;
    v26 = a2[4];
    v27 = a2[5];
    v28 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 80) = v27;
    *(a1 + 96) = v28;
    *(a1 + 64) = v26;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    v22 = *(a1 + 8);
    if (v22)
    {
    }

    goto LABEL_11;
  }

  *a1 = v5;
  sub_21DBF8E0C();

  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  v9 = (a2 + 8);
  v8 = *(a2 + 1);
  if (!v7)
  {
    if (v8)
    {
      *(a1 + 8) = v8;
      v29 = *(a2 + 2);
      *(a1 + 16) = v29;
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
      v19 = *(a2 + 14);
      *(a1 + 112) = v19;
      v30 = v8;
      v31 = v29;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v8)
  {
    *(a1 + 8) = v8;
    v10 = v8;

    v11 = *(a1 + 16);
    v12 = *(a2 + 2);
    *(a1 + 16) = v12;
    v13 = v12;

    *(a1 + 24) = *(a2 + 3);
    *(a1 + 32) = *(a2 + 4);
    sub_21DBF8E0C();

    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = *(a2 + 6);
    sub_21DBF8E0C();

    *(a1 + 56) = *(a2 + 7);
    *(a1 + 64) = *(a2 + 8);
    sub_21DBF8E0C();

    *(a1 + 72) = *(a2 + 9);
    *(a1 + 80) = *(a2 + 10);
    sub_21DBF8E0C();

    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    sub_21DBF8E0C();

    *(a1 + 104) = *(a2 + 104);
    v14 = *(a1 + 112);
    v15 = *(a2 + 14);
    *(a1 + 112) = v15;
    v16 = v15;
  }

  else
  {
    sub_21D30DA04(a1 + 8);
    v39 = *(a2 + 24);
    v38 = *(a2 + 40);
    *v6 = *v9;
    *(a1 + 24) = v39;
    *(a1 + 40) = v38;
    v40 = *(a2 + 104);
    v42 = *(a2 + 56);
    v41 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = v40;
    *(a1 + 56) = v42;
    *(a1 + 72) = v41;
  }

  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t a1, uint64_t a2)
{
  if (*a1 < 0xFFFFFFFFuLL)
  {
LABEL_8:
    v14 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v14;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    v16 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v16;
    return a1;
  }

  if (*a2 < 0xFFFFFFFFuLL)
  {

    v13 = *(a1 + 8);
    if (v13)
    {
    }

    goto LABEL_8;
  }

  *a1 = *a2;

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (!v4)
  {
LABEL_11:
    v18 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v18;
    *(a1 + 104) = *(a2 + 104);
    v19 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v19;
    v20 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v20;
    return a1;
  }

  if (!v5)
  {
    sub_21D30DA04(a1 + 8);
    goto LABEL_11;
  }

  *(a1 + 8) = v5;

  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;

  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  v9 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v9;

  v10 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v10;

  v11 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v11;

  *(a1 + 104) = *(a2 + 104);
  v12 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeOptionsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D7B9B0C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.AssigneeState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 112);
  v19 = *(a2 + 120);
  sub_21D7ABD2C(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.AssigneeState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v26 = *(a2 + 72);
  v27 = *(a2 + 80);
  v28 = *(a2 + 88);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  sub_21D7ABD2C(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v28, v29, v30, v31, v32);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v24 = *(a1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  sub_21D7AC858(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  return a1;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.AssigneeState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  v19 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v19;
  v20 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v20;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v3;
  *(a1 + 120) = v4;
  sub_21D7AC858(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 120);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.AssigneeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D7B9F38(uint64_t a1)
{
  if (*(a1 + 120) <= 1u)
  {
    return *(a1 + 120);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21D7B9F50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    LOBYTE(a2) = 2;
    *(result + 104) = 0u;
  }

  *(result + 120) = a2;
  return result;
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.Recurrence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.Recurrence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.Recurrence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = *(a3 + 20);
    v8 = sub_21DBF563C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    sub_21DBF8E0C();
    if (v10(&a2[v7], 1, v8))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
      memcpy(&v4[v7], &a2[v7], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], &a2[v7], v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }
  }

  return v4;
}

uint64_t destroy for TTRReminderDetailViewModel.RecurrenceEnd(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_21DBF563C();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *initializeWithCopy for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = sub_21DBF563C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  sub_21DBF8E0C();
  if (v9(&a2[v6], 1, v7))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  return a1;
}

char *assignWithCopy for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_21DBF8E0C();

  v6 = *(a3 + 20);
  v7 = sub_21DBF563C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
  return a1;
}

char *initializeWithTake for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for TTRReminderDetailViewModel.RecurrenceEnd(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(&a1[v7], &a2[v7], v8);
      return a1;
    }

    (*(v9 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(&a1[v7], &a2[v7], v8);
  (*(v9 + 56))(&a1[v7], 0, 1, v8);
  return a1;
}

void sub_21D7BA89C()
{
  sub_21D7BA950(319, &qword_280D1B858, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D7BA950(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void destroy for TTRReminderDetailViewModel.Attachment(uint64_t a1)
{

  v2 = *(a1 + 24);
}

void *initializeWithCopy for TTRReminderDetailViewModel.Attachment(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  v7 = *(a2 + 24);
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 2)
  {
    return v7 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = (a2 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_21D7BAC74(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, 1, v4);
}

uint64_t sub_21D7BACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, 1, v6);
}

void sub_21D7BAD68()
{
  sub_21D7BA950(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
  }
}

void destroy for TTRReminderDetailViewModel.LocationDetailsModel(uint64_t a1)
{

  v2 = *(a1 + 72);
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.LocationDetailsModel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v7 = *(a2 + 72);
  *(a1 + 72) = v7;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = v7;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.LocationDetailsModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  v4 = *(a1 + 72);
  v5 = *(a2 + 72);
  *(a1 + 72) = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.LocationDetailsModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v7 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void destroy for TTRReminderDetailViewModel.LocationDetailsState(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = v2;
  }

  if (v3 - 1 < 0)
  {

    v4 = *(a1 + 72);
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.LocationDetailsState(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = *(a2 + 8);
  }

  if (v3 - 1 < 0)
  {
    *result = *a2;
    *(result + 8) = v2;
    v6 = *(a2 + 24);
    *(result + 16) = *(a2 + 16);
    *(result + 24) = v6;
    v7 = *(a2 + 40);
    *(result + 32) = *(a2 + 32);
    *(result + 40) = v7;
    *(result + 48) = *(a2 + 48);
    v8 = *(a2 + 64);
    *(result + 56) = *(a2 + 56);
    *(result + 64) = v8;
    v9 = *(a2 + 72);
    *(result + 72) = v9;
    v10 = result;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v11 = v9;
    return v10;
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v4;
    *(result + 64) = *(a2 + 64);
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.LocationDetailsState(uint64_t result, uint64_t a2)
{
  LODWORD(v2) = -1;
  if (*(result + 8) >= 0xFFFFFFFFuLL)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = v3 - 1;
  if (*(a2 + 8) < 0xFFFFFFFFuLL)
  {
    v2 = *(a2 + 8);
  }

  v5 = v2 - 1;
  if (v4 < 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      v9 = result;

      *v9 = *a2;
      v11 = *(a2 + 16);
      v12 = *(a2 + 32);
      v13 = *(a2 + 64);
      *(v9 + 48) = *(a2 + 48);
      *(v9 + 64) = v13;
      *(v9 + 16) = v11;
      *(v9 + 32) = v12;
      return v9;
    }

    *result = *a2;
    *(result + 8) = *(a2 + 8);
    v17 = result;
    sub_21DBF8E0C();

    *(v17 + 16) = *(a2 + 16);
    *(v17 + 24) = *(a2 + 24);
    sub_21DBF8E0C();

    *(v17 + 32) = *(a2 + 32);
    *(v17 + 40) = *(a2 + 40);
    sub_21DBF8E0C();

    *(v17 + 48) = *(a2 + 48);
    *(v17 + 56) = *(a2 + 56);
    *(v17 + 64) = *(a2 + 64);
    sub_21DBF8E0C();

    v19 = *(v17 + 72);
    v20 = *(a2 + 72);
    v15 = v17;
    *(v17 + 72) = v20;
    v21 = v20;
  }

  else
  {
    if ((v5 & 0x80000000) == 0)
    {
      *result = *a2;
      v6 = *(a2 + 16);
      v7 = *(a2 + 32);
      v8 = *(a2 + 64);
      *(result + 48) = *(a2 + 48);
      *(result + 64) = v8;
      *(result + 16) = v6;
      *(result + 32) = v7;
      return result;
    }

    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 16) = *(a2 + 16);
    *(result + 24) = *(a2 + 24);
    *(result + 32) = *(a2 + 32);
    *(result + 40) = *(a2 + 40);
    *(result + 48) = *(a2 + 48);
    *(result + 56) = *(a2 + 56);
    *(result + 64) = *(a2 + 64);
    v14 = *(a2 + 72);
    v15 = result;
    *(result + 72) = v14;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v16 = v14;
  }

  return v15;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.LocationDetailsState(uint64_t result, uint64_t a2)
{
  LODWORD(v2) = -1;
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v2 = *(result + 8);
  }

  if (v2 - 1 < 0)
  {
    v5 = *(a2 + 8);
    LODWORD(v6) = -1;
    if (v5 < 0xFFFFFFFF)
    {
      v6 = *(a2 + 8);
    }

    if (v6 - 1 < 0)
    {
      *result = *a2;
      *(result + 8) = v5;
      v7 = result;

      v12 = *(a2 + 24);
      *(v7 + 16) = *(a2 + 16);
      *(v7 + 24) = v12;

      v13 = *(a2 + 40);
      *(v7 + 32) = *(a2 + 32);
      *(v7 + 40) = v13;

      *(v7 + 48) = *(a2 + 48);
      *(v7 + 56) = *(a2 + 56);

      v14 = *(v7 + 72);
      *(v7 + 64) = *(a2 + 64);
    }

    else
    {
      v7 = result;

      v9 = *(a2 + 48);
      *(v7 + 32) = *(a2 + 32);
      *(v7 + 48) = v9;
      *(v7 + 64) = *(a2 + 64);
      v10 = *(a2 + 16);
      *v7 = *a2;
      *(v7 + 16) = v10;
    }

    return v7;
  }

  else
  {
    v3 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v3;
    *(result + 64) = *(a2 + 64);
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.LocationDetailsState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 80))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.LocationDetailsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21D7BB52C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_21D7BB550(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

id sub_21D7BB5A4(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {

    return sub_21DBF8E0C();
  }

  else
  {
    if (a6 != 1)
    {
      if (a6)
      {
        return result;
      }

      v7 = result;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      result = v7;
    }

    return result;
  }
}

void sub_21D7BB63C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2)
  {

LABEL_6:

    return;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      return;
    }

    goto LABEL_6;
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1, uint64_t a2)
{
  v2 = a2;
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
  sub_21D0FB960(v5, v6, v7, v8, v9, v10, v11);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  v12 = *(v2 + 72);
  v13 = *(v2 + 80);
  LOBYTE(v2) = *(v2 + 88);
  sub_21D0FB9BC(v12, v13, v2);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v2;
  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  sub_21DBF8E0C();

  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(v2 + 64);
  sub_21D0FB960(v4, v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  sub_21D1078C0(v11, v12, v13, v14, v15, v16, v17);
  v18 = v2[9];
  v19 = v2[10];
  LOBYTE(v2) = *(v2 + 88);
  sub_21D0FB9BC(v18, v19, v2);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  *(a1 + 88) = v2;
  sub_21D0FB9F4(v20, v21, v22);
  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1, uint64_t a2)
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
  v12 = *(a1 + 64);
  v13 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v13;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  sub_21D1078C0(v6, v7, v8, v9, v10, v11, v12);
  v14 = *(a2 + 88);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v14;
  sub_21D0FB9F4(v15, v16, v17);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.BadgeViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.BadgeViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unsigned __int8 *destroy for TTRReminderDetailViewModel.SectionPickerVisibility(unsigned __int8 *result)
{
  v1 = result[40];
  if (v1 <= 2)
  {
    return sub_21D7A98B4(*result, *(result + 1), *(result + 2), *(result + 3), *(result + 4), v1);
  }

  return result;
}

__n128 initializeWithCopy for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 40);
  if (v2 > 2)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[3];
    v7 = a2[4];
    sub_21D7A9844(*a2, v4, v5, v6, v7, v2);
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v2;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a2 + 40);
  if (v3 > 2)
  {
    if (v4 <= 2)
    {
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = *(a2 + 2);
      v19 = *(a2 + 3);
      v20 = *(a2 + 4);
      sub_21D7A9844(*a2, v17, v18, v19, v20, v4);
      *a1 = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      *(a1 + 24) = v19;
      *(a1 + 32) = v20;
      *(a1 + 40) = v4;
      return a1;
    }

    v22 = *a2;
    v23 = a2[1];
    v24 = *(a2 + 25);
LABEL_8:
    *(a1 + 25) = v24;
    *a1 = v22;
    *(a1 + 16) = v23;
    return a1;
  }

  if (v4 > 2)
  {
    sub_21D7A98B4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v3);
    v22 = *a2;
    v23 = a2[1];
    v24 = *(a2 + 25);
    goto LABEL_8;
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  sub_21D7A9844(*a2, v6, v7, v8, v9, v4);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  v15 = *(a1 + 40);
  *(a1 + 40) = v4;
  sub_21D7A98B4(v10, v11, v12, v13, v14, v15);
  return a1;
}

_OWORD *assignWithTake for TTRReminderDetailViewModel.SectionPickerVisibility(_OWORD *result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2 > 2)
  {
    v12 = *(a2 + 16);
    *result = *a2;
    result[1] = v12;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 40);
    if (v3 > 2)
    {
      v11 = result;
      sub_21D7A98B4(*result, *(result + 1), *(result + 2), *(result + 3), *(result + 4), v2);
      v14 = *(a2 + 16);
      *v11 = *a2;
      v11[1] = v14;
      *(v11 + 25) = *(a2 + 25);
    }

    else
    {
      v4 = *(a2 + 32);
      v5 = *result;
      v6 = *(result + 1);
      v7 = *(result + 2);
      v8 = *(result + 3);
      v9 = *(result + 4);
      v10 = *(a2 + 16);
      *result = *a2;
      result[1] = v10;
      *(result + 4) = v4;
      *(result + 40) = v3;
      v11 = result;
      sub_21D7A98B4(v5, v6, v7, v8, v9, v2);
    }

    return v11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.SectionPickerVisibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

uint64_t sub_21D7BBD74(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_21D7BBD88(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_21D7BBE1C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = *(a2 + 40);
  a4(*a2, v6, v7, v8, v9, v10);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return a1;
}

uint64_t *sub_21D7BBEC8(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = *(a2 + 40);
  a4(*a2, v8, v9, v10, v11, v12);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[4];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  v18 = *(a1 + 40);
  *(a1 + 40) = v12;
  a5(v13, v14, v15, v16, v17, v18);
  return a1;
}

uint64_t *sub_21D7BBF7C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *a1;
  v10 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v13;
  a1[4] = v6;
  v14 = *(a1 + 40);
  *(a1 + 40) = v7;
  a4(v8, v10, v9, v11, v12, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D7BC070(uint64_t a1)
{
  if (*(a1 + 40) <= 1u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 2);
  }
}

void destroy for TTRReminderDetailViewModel.AppLink(uint64_t a1)
{

  if (*(a1 + 56) >= 2uLL)
  {

    v2 = *(a1 + 64);
  }
}

uint64_t initializeWithCopy for TTRReminderDetailViewModel.AppLink(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 56);
  v8 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 == 1)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    if (v7)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v7;
      v9 = *(a2 + 64);
      *(a1 + 64) = v9;
      sub_21DBF8E0C();
      v10 = v9;
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
    }
  }

  return a1;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.AppLink(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  if (v7 == 1)
  {
    if (v8 == 1)
    {
      v9 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v9;
      return a1;
    }

    *(a1 + 40) = *(a2 + 40);
    if (*(a2 + 56))
    {
LABEL_7:
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      v11 = *(a2 + 64);
      *(a1 + 64) = v11;
      sub_21DBF8E0C();
      v12 = v11;
      return a1;
    }

LABEL_12:
    v17 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v17;
    return a1;
  }

  if (v8 == 1)
  {
    sub_21D3A1A28(a1 + 40);
    v10 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v10;
    return a1;
  }

  *(a1 + 40) = *(a2 + 40);
  v13 = *(a2 + 56);
  if (!v7)
  {
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v13)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    sub_21DBF8E0C();

    v14 = *(a1 + 64);
    v15 = *(a2 + 64);
    *(a1 + 64) = v15;
    v16 = v15;
  }

  else
  {
    sub_21D122250(a1 + 48);
    v18 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v18;
  }

  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.AppLink(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a1 + 56);
  if (v7 != 1)
  {
    v8 = *(a2 + 56);
    if (v8 != 1)
    {
      *(a1 + 40) = *(a2 + 40);
      if (v7)
      {
        if (v8)
        {
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 56) = v8;

          v10 = *(a1 + 64);
          *(a1 + 64) = *(a2 + 64);

          return a1;
        }

        sub_21D122250(a1 + 48);
      }

      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      return a1;
    }

    sub_21D3A1A28(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.AppLink(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.AppLink(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.PresenterStateDontCare(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
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

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.PresenterStateDontCare(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21D7BC5F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D7BC638@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, void **a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{

  return sub_21D142838(a1, a2, a3, a4, a5, a6, a7, a8);
}

void *sub_21D7BC824(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-9 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 8) & ~v5, (a2 + v5 + 8) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

void *sub_21D7BC910(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *sub_21D7BC980(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *sub_21D7BC9F0(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

Swift::Bool __swiftcall TTRExecutingWithinSiriProcess()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_21DBFA16C();
  v4 = v3;

  if (v2 == 0xD000000000000011 && 0x800000021DC4A6B0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21DBFC64C();
  }

  return v6 & 1;
}

uint64_t static TTRAccessibilityUtil.dictLocalizedString(_:)()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_21DBF516C();

  return v1;
}

uint64_t TTRReminderSwipeAction.localizedTitle.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (*v0 > 2u)
    {
      if (v1 == 3)
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (v1 == 4)
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

      goto LABEL_34;
    }

    if (*v0)
    {
      if (v1 == 1)
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

      goto LABEL_34;
    }

    goto LABEL_18;
  }

  if (*v0 <= 8u)
  {
    if (v1 == 6)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v1 == 7)
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

    goto LABEL_34;
  }

  if (v1 == 9)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_34;
  }

  if (v1 == 10)
  {
LABEL_18:
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_34;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_34:
    swift_once();
  }

  return sub_21DBF516C();
}

id TTRReminderSwipeAction.image.getter()
{
  v1 = *v0;
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 != 1)
  {
    return 0;
  }

  if (v1 <= 5)
  {
LABEL_5:
    v2 = sub_21DBFA12C();
    v5 = [objc_opt_self() _systemImageNamed_];

    return v5;
  }

  if ((v1 - 6) < 4)
  {
    return 0;
  }

  if (v1 == 10)
  {
    goto LABEL_5;
  }

  if (qword_280D168B8 != -1)
  {
    swift_once();
  }

  v3 = qword_280D168C0;
  v4 = qword_280D168C0;
  return v3;
}

id TTRReminderSwipeAction.backgroundColor.getter()
{
  result = 0;
  v2 = *v0;
  if (v2 > 5)
  {
    if (*v0 > 8u)
    {
      if (v2 != 9)
      {
        if (v2 == 10)
        {
          return result;
        }

        v9 = [objc_opt_self() ttr_systemIndigoColor];
        return v9;
      }

      if (qword_280D173D8 != -1)
      {
        swift_once();
      }

      v14 = qword_280D21CE0;
      v15 = sub_21DBFA12C();
      v7 = objc_opt_self();
      v8 = [v7 colorNamed:v15 inBundle:v14 compatibleWithTraitCollection:0];

      if (v8)
      {
        return v8;
      }
    }

    else if (v2 - 7 >= 2)
    {
      if (qword_280D173D8 != -1)
      {
        swift_once();
      }

      v12 = qword_280D21CE0;
      v13 = sub_21DBFA12C();
      v7 = objc_opt_self();
      v8 = [v7 colorNamed:v13 inBundle:v12 compatibleWithTraitCollection:0];

      if (v8)
      {
        return v8;
      }
    }

    else
    {
      if (qword_280D173D8 != -1)
      {
        swift_once();
      }

      v5 = qword_280D21CE0;
      v6 = sub_21DBFA12C();
      v7 = objc_opt_self();
      v8 = [v7 colorNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

      if (v8)
      {
        return v8;
      }
    }

LABEL_26:
    v9 = [v7 magentaColor];
    return v9;
  }

  if (*v0 > 3u)
  {
    v9 = [objc_opt_self() ttr_systemBrownColor];
    return v9;
  }

  if (v2 - 2 >= 2)
  {
    if (!*v0)
    {
      return result;
    }

    if (qword_280D173D8 != -1)
    {
      swift_once();
    }

    v10 = qword_280D21CE0;
    v11 = sub_21DBFA12C();
    v7 = objc_opt_self();
    v8 = [v7 colorNamed:v11 inBundle:v10 compatibleWithTraitCollection:0];

    if (!v8)
    {
      goto LABEL_26;
    }

    return v8;
  }

  if (qword_280D16948 != -1)
  {
    swift_once();
  }

  v3 = qword_280D16950;
  v4 = qword_280D16950;
  return v3;
}

uint64_t TTRReminderSwipeAction.accessibilityLabel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v72 - v5;
  v7 = sub_21DBF563C();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v72 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  v15 = sub_21DBF5C4C();
  v80 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF5A2C();
  v81 = *(v18 - 8);
  v82 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF509C();
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  MEMORY[0x28223BE20](v27);
  v31 = *v0;
  if (v31 <= 5)
  {
    if (*v0 > 2u)
    {
      if (v31 == 3)
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (v31 == 4)
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

    else if (*v0)
    {
      if (v31 == 1)
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

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_57;
  }

  if (*v0 > 8u)
  {
    if (v31 == 9)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v31 == 10)
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

LABEL_57:
    swift_once();
    return sub_21DBF516C();
  }

  if (v31 == 6)
  {
    v76 = &v72 - v29;
    v77 = v28;
    v78 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_21DC08D00;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    *(v39 + 32) = sub_21DBF516C();
    *(v39 + 40) = v40;
    v75 = v39;
    type metadata accessor for TTRReminderEditor();
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v41 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    sub_21DBF58BC();
    v42 = v83;
    v73 = *(v83 + 8);
    v74 = v83 + 8;
    v73(v14, v84);
    (*(v80 + 8))(v17, v15);
    v43 = v82;
    v44 = *(v81 + 8);
    v44(v20, v82);
    static TTRReminderEditor.tomorrowDueDateComponents(now:)(v76);
    v45 = *(v78 + 8);
    v46 = v26;
    v78 += 8;
    v47 = v45;
    v45(v46, v77);
    v48 = [objc_opt_self() currentCalendar];
    sub_21DBF596C();

    v49 = v84;
    sub_21DBF597C();
    v44(v20, v43);
    if ((*(v42 + 48))(v6, 1, v49) == 1)
    {
      sub_21D46CB6C(v6);
      v50 = v75;
    }

    else
    {
      v52 = v79;
      (*(v42 + 32))(v79, v6, v49);
      if (qword_280D171B8 != -1)
      {
        swift_once();
      }

      v53 = qword_280D171C0;
      v54 = sub_21DBF55BC();
      v55 = [v53 stringFromDate_];

      v56 = sub_21DBFA16C();
      v58 = v57;

      v50 = v75;
      v60 = *(v75 + 2);
      v59 = *(v75 + 3);
      if (v60 >= v59 >> 1)
      {
        v50 = sub_21D210A84((v59 > 1), v60 + 1, 1, v75);
      }

      v73(v52, v84);
      *(v50 + 2) = v60 + 1;
      v61 = &v50[16 * v60];
      *(v61 + 4) = v56;
      *(v61 + 5) = v58;
    }

    v85 = v50;
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D1ADAA8();
    v62 = sub_21DBFA07C();

    v47(v76, v77);
    return v62;
  }

  if (v31 != 7)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_57;
  }

  v77 = v28;
  v78 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21DC08D00;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  *(v32 + 32) = sub_21DBF516C();
  *(v32 + 40) = v33;
  type metadata accessor for TTRReminderEditor();
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  static TTRReminderEditor.thisWeekendDueDateComponents(now:)(v14, v23);
  v34 = v83;
  v35 = *(v83 + 8);
  v36 = v14;
  v37 = v84;
  v35(v36, v84);
  v38 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  (*(v81 + 8))(v20, v82);
  if ((*(v34 + 48))(v3, 1, v37) == 1)
  {
    sub_21D46CB6C(v3);
  }

  else
  {
    (*(v34 + 32))(v9, v3, v37);
    if (qword_280D171B8 != -1)
    {
      swift_once();
    }

    v63 = qword_280D171C0;
    v64 = sub_21DBF55BC();
    v65 = [v63 stringFromDate_];

    v66 = sub_21DBFA16C();
    v68 = v67;

    v70 = *(v32 + 16);
    v69 = *(v32 + 24);
    if (v70 >= v69 >> 1)
    {
      v32 = sub_21D210A84((v69 > 1), v70 + 1, 1, v32);
    }

    v35(v9, v37);
    *(v32 + 16) = v70 + 1;
    v71 = v32 + 16 * v70;
    *(v71 + 32) = v66;
    *(v71 + 40) = v68;
  }

  v85 = v32;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v62 = sub_21DBFA07C();

  (*(v78 + 8))(v23, v77);
  return v62;
}

uint64_t TTRReminderSwipeAction.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D7BEABC()
{
  result = qword_27CE619C8;
  if (!qword_27CE619C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE619C8);
  }

  return result;
}

uint64_t TTRHashtagTokenTextInteraction.__allocating_init(tokenEditingBehavior:)(_BYTE *a1)
{
  v2 = swift_allocObject();
  LOBYTE(a1) = *a1;
  type metadata accessor for HashtagTokenEditor();
  *(v2 + 24) = swift_allocObject();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t TTRHashtagTokenTextInteraction.adjustTextReplacement(in:affectedRange:replacementText:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, NSUInteger a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v10 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a3)
  {
    result = sub_21D7C1880(a1, a2);
    if (v14)
    {
      length = 0;
      location = a2;
      goto LABEL_10;
    }

LABEL_24:
    *a6 = xmmword_21DC11550;
    goto LABEL_25;
  }

  sub_21D7BF51C(a1, a2, a3);
  sub_21DBFC10C();

  sub_21DBFC42C();
  location = a2;
  length = a3;
  if (v25)
  {
LABEL_6:

    if (location != a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (length != a3)
    {
LABEL_11:
      *a6 = location;
      *(a6 + 8) = length;
      v15 = 2;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v16 = v24;
  v17 = a3 + a2;
  length = a3;
  location = a2;
  while (1)
  {
    v19 = v16.location == a2;
    if (v16.length != a3)
    {
      v19 = 0;
    }

    if (v16.location <= a2 && !v19)
    {
      v20 = v16.length + v16.location;
      if ((v16.length + v16.location) >= v17)
      {
        break;
      }
    }

    v26.location = location;
    v26.length = length;
    v18 = NSUnionRange(v26, v16);
    location = v18.location;
    length = v18.length;
    sub_21DBFC42C();
    v16 = v24;
    if (v25 == 1)
    {
      goto LABEL_6;
    }
  }

  v21 = v16.length;
  v22 = v16.location;

  if (v10)
  {
LABEL_20:
    *a6 = 0;
    *(a6 + 8) = 0;
LABEL_25:
    v15 = 3;
    goto LABEL_26;
  }

  if (v20 != v17)
  {
    goto LABEL_24;
  }

  result = swift_beginAccess();
  v23 = *(v6 + 16);
  *a6 = v22;
  *(a6 + 8) = v21;
  if ((v23 & 1) == 0)
  {
    *(a6 + 16) = 0;
    return result;
  }

  v15 = 1;
LABEL_26:
  *(a6 + 16) = v15;
  return result;
}

__C::_NSRange __swiftcall TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(__C::_NSRange _, NSAttributedString in)
{
  length = _.length;
  location = _.location;
  if (sub_21DBF4B4C() != _.location)
  {
    if (length)
    {
      sub_21D7BF51C(in.super.isa, location, length);
      sub_21DBFC10C();

      sub_21DBFC42C();
      if ((v14 & 1) == 0)
      {
        v5 = v13;
        do
        {
          v15.location = location;
          v15.length = length;
          v6 = NSUnionRange(v15, v5);
          location = v6.location;
          length = v6.length;
          sub_21DBFC42C();
          v5 = v13;
        }

        while (v14 != 1);
      }
    }

    else
    {
      v7 = sub_21D7C1880(in.super.isa, location);
      if (v9)
      {
        length = 0;
      }

      else
      {
        location = v7;
        length = v8;
      }
    }
  }

  v10 = location;
  v11 = length;
  result.length = v11;
  result.location = v10;
  return result;
}

Swift::Bool __swiftcall TTRHashtagTokenTextInteraction.removeTokenAttribute(in:range:)(NSMutableAttributedString in, __C::_NSRange range)
{
  length = range.length;
  location = range.location;
  v5 = sub_21DBF4B4C();
  result = 0;
  if (v5 != location && length >= 1)
  {
    sub_21D7BF51C(in.super.super.isa, location, length);
    sub_21DBFC10C();
    while (1)
    {
      sub_21DBFC42C();
      if (v10)
      {
        break;
      }

      if (v8 == location && v9 == length)
      {

        [(objc_class *)in.super.super.isa rem_removeHashtagInRange:location, length];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

NSUInteger TTRHashtagTokenTextInteraction.hashtagTokenMenuItem(forSelectedRange:in:hashtagVisibility:)@<X0>(NSUInteger result@<X0>, int64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v7 = *a4;
  if (*a4)
  {
    v8 = v5;
    v11 = result;
    if ((sub_21D7BF650(a3, result, a2) & 1) == 0)
    {
      goto LABEL_7;
    }

    v32[0] = 0;
    v32[1] = 0;
    if (v11 < 0)
    {
      __break(1u);
    }

    v12 = [a3 string];
    v13 = sub_21DBFA16C();
    v15 = v14;

    v16 = MEMORY[0x223D42B30](v13, v15);

    v17 = [a3 rem:v11 hashtagAtIndex:v32 longestEffectiveRange:0 inRange:v16];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 objectIdentifier];
      v20 = sub_21DBFA16C();
      v22 = v21;

      LOBYTE(v19) = sub_21D1E1CE8(v20, v22, v7);

      if (v19)
      {
        v23 = &unk_282EA71D0;
      }

      else
      {
        v23 = &unk_282EA71F8;
      }

      v28 = sub_21D1D1B28(v23);
    }

    else
    {
LABEL_7:
      type metadata accessor for TTRHashtagEditingPresenterCapability();
      v24 = [a3 string];
      v25 = sub_21DBFA16C();
      v27 = v26;

      static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(v25, v27, v11, a2, v32);

      v28 = MEMORY[0x277D84FA0];
      if (LOBYTE(v32[0]) != 2 && (v32[0] & 0x100) == 0 && (v32[0] & 1) != 0)
      {
        v28 = sub_21D1D1B28(&unk_282EA7220);
      }
    }

    swift_beginAccess();
    if (*(v8 + 16))
    {
      v29 = &unk_282EA71A8;
    }

    else
    {
      v29 = &unk_282EA7180;
    }

    v30 = sub_21D1D1B28(v29);
    v31 = sub_21D7C0F34(v28, v30, sub_21D7C1110, sub_21D7C1110);

    sub_21D1957E4(v31, a5);
  }

  else
  {
    *a5 = 4;
  }

  return result;
}

void __swiftcall TTRHashtagTokenTextInteraction.rangeForDeletingHashtagTokenPrefix(in:range:)(Swift::tuple_rangeToDelete___C__NSRange_remainingRange___C__NSRange_optional *__return_ptr retstr, Swift::String in, __C::_NSRange range)
{
  sub_21D7C19D4(range.location, range.length, v5);
  v4 = v5[1];
  retstr->value.rangeToDelete = v5[0];
  retstr->value.remainingRange = v4;
  retstr->is_nil = v6;
}

uint64_t sub_21D7BF1E0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE619D0);
  v1 = __swift_project_value_buffer(v0, qword_27CE619D0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRHashtagTokenTextInteraction.TokenContextMenuItem.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRHashtagTokenTextInteraction.TokenEditingBehavior.supportedContextMenuItems.getter()
{
  if (*v0)
  {
    return sub_21D1D1B28(&unk_282EA71A8);
  }

  else
  {
    return sub_21D1D1B28(&unk_282EA7180);
  }
}

uint64_t TTRHashtagTokenTextInteraction.TokenEditingBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRHashtagTokenTextInteraction.tokenEditingBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t TTRHashtagTokenTextInteraction.tokenEditingBehavior.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t TTRHashtagTokenTextInteraction.init(tokenEditingBehavior:)(char *a1)
{
  v2 = *a1;
  type metadata accessor for HashtagTokenEditor();
  *(v1 + 24) = swift_allocObject();
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_21D7BF51C(void *a1, NSUInteger location, NSUInteger a3)
{
  v7 = [a1 string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  v11 = MEMORY[0x223D42B30](v8, v10);

  if (v11 == location)
  {
    length = 0;
  }

  else
  {
    v19.location = 0;
    v19.length = v11;
    v20.location = location;
    v20.length = a3;
    v13 = NSIntersectionRange(v19, v20);
    location = v13.location;
    length = v13.length;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = location;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = location;
  v15[4] = length;
  v15[5] = v3;
  v15[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A18);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21D7C1E0C;
  *(v16 + 24) = v15;

  v17 = a1;
  return v16;
}

uint64_t sub_21D7BF650(void *a1, NSUInteger a2, int64_t a3)
{
  v6 = 0;
  if (sub_21DBF4B4C() != a2 && a3 >= 1)
  {
    sub_21D7BF51C(a1, a2, a3);
    sub_21DBFC10C();
    do
    {
      sub_21DBFC42C();
      if (v11)
      {
        break;
      }
    }

    while (v9 != a2 || v10 != a3);
    v6 = v11 ^ 1u;
  }

  return v6;
}

uint64_t TTRHashtagTokenTextInteraction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21D7BF75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A158);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21D7C1E64;
  *(v12 + 24) = v11;
  *a6 = v12;

  return a5;
}

void sub_21D7BF82C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = a3 + a2;
  v11 = &selRef_setAttributedText_;
  v35 = a4;
  do
  {
    if (v9 >= v10)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 1;
      return;
    }

    v37 = 0;
    v38 = 0;
    if (v9 < 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
    }

    v13 = [a4 v11[155]];
    sub_21DBFA16C();
    v15 = v14;

    if ((v15 & 0x1000000000000000) != 0)
    {
      v16 = sub_21DBFA35C();
    }

    else
    {
      v16 = sub_21DBFA36C();
    }

    v17 = v16;

    v18 = [a4 rem:v9 hashtagAtIndex:&v37 longestEffectiveRange:0 inRange:v17];
    v19 = v37;
    v20 = v38;
    v9 = v38 + v37;
    if (*(a1 + 16) >= v38 + v37)
    {
      if (qword_27CE56CB0 != -1)
      {
        swift_once();
      }

      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_27CE619D0);

      v22 = sub_21DBF84AC();
      v23 = sub_21DBFAECC();
      if (os_log_type_enabled(v22, v23))
      {
        v36 = v18;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 134218242;
        *(v24 + 4) = *(a1 + 16);

        *(v24 + 12) = 2080;
        v26 = sub_21DBFB9BC();
        v28 = v20;
        v29 = v19;
        v30 = v10;
        v31 = sub_21D0CDFB4(v26, v27, &v37);
        v11 = &selRef_setAttributedText_;

        *(v24 + 14) = v31;
        v10 = v30;
        v19 = v29;
        v20 = v28;
        _os_log_impl(&dword_21D0C9000, v22, v23, "HashtagTokenEditor: invalid results from effectiveTokenRange {searchLocation: %ld, effectiveRange: %s}", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v25);
        v32 = v25;
        a4 = v35;
        MEMORY[0x223D46520](v32, -1, -1);
        v33 = v24;
        v18 = v36;
        MEMORY[0x223D46520](v33, -1, -1);
      }

      else
      {
      }

      v12 = *(a1 + 16);
      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_18;
      }
    }

    *(a1 + 16) = v9;
  }

  while (!v18);

  *a5 = v19;
  *(a5 + 8) = v20;
  *(a5 + 16) = 0;
}

void *sub_21D7BFBA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_21D7BFC3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59290);
  result = sub_21DBFBEBC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_21DBFB62C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21D7BFE30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A08);
  result = sub_21DBFBEBC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v17);
    MEMORY[0x223D44FA0](v18);
    result = sub_21DBFC82C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21D7C0054(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59280);
  result = sub_21DBFBEBC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21DBFC7DC();
    sub_21DBF8E0C();
    sub_21DBFA27C();
    result = sub_21DBFC82C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21D7C0278(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A00);
  result = sub_21DBFBEBC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v25 = result + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v28 = (v12 - 1) & v12;
LABEL_16:
    v17 = a4;
    v18 = *(a4 + 48);
    v19 = v26;
    v20 = *(v27 + 72);
    sub_21D7C1D3C(v18 + v20 * (v14 | (v13 << 6)), v26, type metadata accessor for TTRRecurrenceRuleModel);
    sub_21DBFC7DC();
    TTRRecurrenceRuleModel.hash(into:)();
    sub_21DBFC82C();
    v21 = v25;
    v22 = sub_21DBFBCFC();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_21D7C1DA4(v19, *(v10 + 48) + v22 * v20, type metadata accessor for TTRRecurrenceRuleModel);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v17;
    v12 = v28;
    if (!a3)
    {
LABEL_18:

      return v10;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_18;
    }

    v16 = a1[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v28 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21D7C04DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE592B8);
  result = sub_21DBFBEBC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v16);
    result = sub_21DBFC82C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21D7C06E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A10);
  result = sub_21DBFBEBC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v16);
    result = sub_21DBFC82C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = v16;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21D7C08F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619F8);
  result = sub_21DBFBEBC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_21D7C1D3C(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBFC7DC();
    TTRRemindersListViewModel.ItemID.hash(into:)();
    result = sub_21DBFC82C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_21D7C1DA4(v10, *(v11 + 48) + v24 * v20, type metadata accessor for TTRRemindersListViewModel.ItemID);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21D7C0BBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_21DBF54CC();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619F0);
  result = sub_21DBFBEBC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_21D7C1CE4();
    result = sub_21DBF9FFC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_21D7C0EB4(uint64_t a1, uint64_t a2)
{

  return sub_21D7C0F34(a1, a2, sub_21D7C141C, sub_21D7C141C);
}

void *sub_21D7C0F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_21D7BFBA4(v15, v10, a2, a1, a4);

    MEMORY[0x223D46520](v15, -1, -1);
  }

  return v13;
}

uint64_t sub_21D7C1110(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  v39 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + v31);
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v32);
      result = sub_21DBFC82C();
      v33 = -1 << *(v39 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v39 + 48) + v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_21D7C04DC(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + (v12 | (v5 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v15);
      result = sub_21DBFC82C();
      a4 = v39;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_21D7C141C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      v26 = sub_21DBFC82C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_21D7C0054(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      v39 = sub_21DBFC82C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_21DBFC64C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore40TTRTokenTextInteractionReplacementActionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      if (v3 | v2)
      {
        if (v6 != 3 || v5 != 1 || v4 != 0)
        {
          return 0;
        }
      }

      else
      {
        v11 = v4 | v5;
        if (v6 != 3 || v11 != 0)
        {
          return 0;
        }
      }

      return 1;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        return v3 == v5 && v2 == v4;
      }

      return 0;
    }

    if (v6 != 1)
    {
      return 0;
    }
  }

  return v3 == v5 && v2 == v4;
}

uint64_t sub_21D7C1880(void *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = [a1 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  if (v8 <= a2)
  {
    return 0;
  }

  v17[0] = 0;
  v17[1] = 0;
  if (a2 < 0)
  {
    __break(1u);
  }

  v9 = [a1 string];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = MEMORY[0x223D42B30](v10, v12);

  v14 = [a1 rem:a2 hashtagAtIndex:v17 longestEffectiveRange:0 inRange:v13];
  if (v14 && (v15 = v17[0], v14, v15 < a2))
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void sub_21D7C19D4(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBFA12C();
  v11 = [v10 rangeOfComposedCharacterSequenceAtIndex_];
  v13 = v12;
  if (v11 == sub_21DBF4B4C() || (v23 = a1, v24 = a2, v14 = [v10 substringWithRange_], v15 = sub_21DBFA16C(), v17 = v16, v14, sub_21D1954D0(v15, v17), v19 = v18, , !v19))
  {

    goto LABEL_7;
  }

  sub_21DBF4C1C();
  v20 = sub_21DBF4BFC();

  (*(v7 + 8))(v9, v6);

  if ((v20 & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    v13 = 0;
    v22 = 0;
    v21 = 1;
    goto LABEL_8;
  }

  if (!__OFSUB__(v24 + v23, &v11[v13]))
  {
    v21 = 0;
    v22 = (v24 + v23 - &v11[v13]) & ~((v24 + v23 - &v11[v13]) >> 63);
LABEL_8:
    *a3 = v11;
    *(a3 + 8) = v13;
    *(a3 + 16) = v11;
    *(a3 + 24) = v22;
    *(a3 + 32) = v21;
    return;
  }

  __break(1u);
}

unint64_t sub_21D7C1BB8()
{
  result = qword_280D12888;
  if (!qword_280D12888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D12888);
  }

  return result;
}

unint64_t sub_21D7C1C10()
{
  result = qword_27CE619E8;
  if (!qword_27CE619E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE619E8);
  }

  return result;
}

unint64_t sub_21D7C1CE4()
{
  result = qword_280D171E0;
  if (!qword_280D171E0)
  {
    sub_21DBF54CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D171E0);
  }

  return result;
}

uint64_t sub_21D7C1D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7C1DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D7C1E88()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61A20);
  v1 = __swift_project_value_buffer(v0, qword_27CE61A20);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D7C1F84(void (*a1)(char *))
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v55 - v12;
  v67 = type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState(0);
  MEMORY[0x28223BE20](v67);
  v64 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v55 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v55 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v55 - v22;
  v24 = OBJC_IVAR____TtC15RemindersUICore36TTRSECreateRemindersEditingPresenter_state;
  swift_beginAccess();
  sub_21D7CE5D8(v1 + v24, v23, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
  a1(v23);
  sub_21D7CE5D8(v1 + v24, v20, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
  v25 = sub_21D7CDC5C(v20, v23);
  sub_21D106E58(v20, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
  if ((v25 & 1) == 0)
  {
    if (qword_27CE56CB8 != -1)
    {
      swift_once();
    }

    v26 = sub_21DBF84BC();
    __swift_project_value_buffer(v26, qword_27CE61A20);

    v27 = sub_21DBF84AC();
    v28 = sub_21DBFAEAC();

    if (os_log_type_enabled(v27, v28))
    {
      v62 = v28;
      v63 = v27;
      v29 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v68[0] = v60;
      v61 = v29;
      *v29 = 136315394;
      sub_21D7CE5D8(v2 + v24, v17, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
      sub_21D0D3954(v17, v8, &qword_27CE5E8E8);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
      v31 = *(*(v30 - 8) + 48);
      v58 = v30;
      v59 = v31;
      if ((v31)(v8, 1) == 1)
      {
        sub_21D0CF7E0(v8, &qword_27CE5E8E8);
        v32 = 1;
        v55[0] = 0x7469646520746F6ELL;
        v33 = 0xEB00000000676E69;
      }

      else
      {
        sub_21D1056FC(v8, v13, type metadata accessor for TTRRemindersListViewModel.Item);
        v32 = 0;
        v55[0] = 0x20676E6974696465;
        v33 = 0xEC0000006D657469;
      }

      v34 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v35 = *(v34 - 8);
      v36 = *(v35 + 56);
      v57 = v34;
      v56 = v36;
      v55[1] = v35 + 56;
      (v36)(v13, v32, 1);
      sub_21D0CF7E0(v13, &unk_27CE5CD80);
      sub_21D106E58(v17, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
      v37 = sub_21D0CDFB4(v55[0], v33, v68);

      v38 = v61;
      *(v61 + 1) = v37;
      *(v38 + 6) = 2080;
      swift_beginAccess();
      v39 = v64;
      sub_21D7CE5D8(v23, v64, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
      v40 = v65;
      sub_21D0D3954(v39, v65, &qword_27CE5E8E8);
      if (v59(v40, 1, v58) == 1)
      {
        sub_21D0CF7E0(v40, &qword_27CE5E8E8);
        v41 = 1;
        v42 = 0xEB00000000676E69;
        v43 = 0x7469646520746F6ELL;
        v44 = v66;
        v45 = v62;
      }

      else
      {
        v46 = v40;
        v44 = v66;
        sub_21D1056FC(v46, v66, type metadata accessor for TTRRemindersListViewModel.Item);
        v41 = 0;
        v45 = v62;
        v42 = 0xEC0000006D657469;
        v43 = 0x20676E6974696465;
      }

      v56(v44, v41, 1, v57);
      sub_21D0CF7E0(v44, &unk_27CE5CD80);
      sub_21D106E58(v39, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
      v47 = sub_21D0CDFB4(v43, v42, v68);

      *(v38 + 14) = v47;
      v27 = v63;
      _os_log_impl(&dword_21D0C9000, v63, v45, "TTRSECreateRemindersEditingPresenter editing state changed {from: '%s', to: '%s'}", v38, 0x16u);
      v48 = v60;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v48, -1, -1);
      MEMORY[0x223D46520](v38, -1, -1);
    }

    swift_beginAccess();
    sub_21D7CE5D8(v23, v20, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
    swift_beginAccess();
    sub_21D7CE504(v20, v2 + v24);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      v68[3] = v67;
      v68[4] = &off_282ED2D00;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v68);
      sub_21D7CE5D8(v23, boxed_opaque_existential_0, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v52 = *(v50 + 24);
        ObjectType = swift_getObjectType();
        (*(v52 + 32))(v50, v68, ObjectType, v52);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v68);
    }
  }

  return sub_21D106E58(v23, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
}

uint64_t sub_21D7C27E0()
{
  sub_21D157444(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_21D106E58(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRSECreateRemindersEditingPresenter_state, type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState);
  return v0;
}

uint64_t sub_21D7C2854()
{
  sub_21D7C27E0();

  return swift_deallocClassInstance();
}

void sub_21D7C28D4()
{
  sub_21D7C299C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D7C299C()
{
  if (!qword_280D19600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5E8F0);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D19600);
    }
  }
}

char *sub_21D7C2A00(char *a1, char **a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = &v11[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v35 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v36 = *(v35 - 8);
            if ((*(v36 + 48))(a2, 1, v35))
            {
              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v37 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v47 = *(v35 + 20);
              v48 = sub_21DBF6C1C();
              v109 = *(*(v48 - 8) + 16);
              sub_21DBF8E0C();
              v109(&a1[v47], a2 + v47, v48);
              (*(v36 + 56))(a1, 0, 1, v35);
            }

            v49 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v50 = &a1[v49];
            v51 = (a2 + v49);
            v52 = v51[1];
            if (v52)
            {
              *v50 = *v51;
              *(v50 + 1) = v52;
              v53 = v51[2];
              *(v50 + 2) = v53;
              sub_21DBF8E0C();
              v54 = v53;
            }

            else
            {
              *v50 = *v51;
              *(v50 + 2) = v51[2];
            }

            goto LABEL_135;
          case 7:
            v42 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v43 = *(v42 - 8);
            if ((*(v43 + 48))(a2, 1, v42))
            {
              v44 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v44 - 8) + 64));
            }

            else
            {
              v56 = sub_21DBF563C();
              (*(*(v56 - 8) + 16))(a1, a2, v56);
              a1[*(v42 + 20)] = *(a2 + *(v42 + 20));
              (*(v43 + 56))(a1, 0, 1, v42);
            }

            v57 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&a1[*(v57 + 20)] = *(a2 + *(v57 + 20));
            goto LABEL_135;
          case 8:
            *a1 = *a2;
            v14 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v15 = sub_21DBF8D7C();
            (*(*(v15 - 8) + 16))(&a1[v14], a2 + v14, v15);
LABEL_135:
            swift_storeEnumTagMultiPayload();
            goto LABEL_136;
        }

LABEL_39:
        memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_136:
        a1[*(v7 + 48)] = *(a2 + *(v7 + 48));
        (*(v8 + 56))(a1, 0, 1, v7);
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        a1[8] = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v25 = a2[2];
        *(a1 + 2) = v25;
        v26 = v25;
        goto LABEL_135;
      }

      v38 = *a2;
      *a1 = *a2;
      v30 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v32 = *(v31 - 8);
      v39 = *(v32 + 48);
      v40 = v38;
      if (v39(a2 + v30, 1, v31))
      {
LABEL_36:
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&a1[v30], a2 + v30, *(*(v41 - 8) + 64));
        goto LABEL_135;
      }

      v55 = swift_getEnumCaseMultiPayload();
      if (v55 > 4)
      {
        if (v55 <= 7)
        {
          if (v55 == 5 || v55 == 6)
          {
            goto LABEL_118;
          }

          goto LABEL_133;
        }

        if (v55 != 8 && v55 != 9)
        {
          goto LABEL_133;
        }

LABEL_121:
        v101 = *(a2 + v30);
        *&a1[v30] = v101;
        v102 = v101;
        swift_storeEnumTagMultiPayload();
        goto LABEL_134;
      }

      if (v55 <= 2)
      {
        if (v55 != 1)
        {
          if (v55 == 2)
          {
            goto LABEL_118;
          }

LABEL_133:
          memcpy(&a1[v30], a2 + v30, *(v32 + 64));
          goto LABEL_134;
        }

        goto LABEL_121;
      }

LABEL_118:
      v100 = sub_21DBF563C();
      (*(*(v100 - 8) + 16))(&a1[v30], a2 + v30, v100);
      swift_storeEnumTagMultiPayload();
LABEL_134:
      (*(v32 + 56))(&a1[v30], 0, 1, v31);
      goto LABEL_135;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_39;
        }

        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = swift_getEnumCaseMultiPayload();
        v115 = v8;
        v114 = v7;
        if (v17 <= 4)
        {
          if (v17 > 2)
          {
LABEL_69:
            v58 = sub_21DBF563C();
            (*(*(v58 - 8) + 16))(a1, a2, v58);
            swift_storeEnumTagMultiPayload();
            goto LABEL_96;
          }

          if (v17 != 1)
          {
            if (v17 == 2)
            {
              goto LABEL_69;
            }

            goto LABEL_95;
          }

LABEL_72:
          v59 = *a2;
          *a1 = *a2;
          v60 = v59;
          swift_storeEnumTagMultiPayload();
          goto LABEL_96;
        }

        if (v17 > 7)
        {
          if (v17 == 8 || v17 == 9)
          {
            goto LABEL_72;
          }
        }

        else if (v17 == 5 || v17 == 6)
        {
          goto LABEL_69;
        }

LABEL_95:
        memcpy(a1, a2, *(*(v16 - 8) + 64));
LABEL_96:
        v64 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v65 = v64[5];
        v66 = &a1[v65];
        v67 = a2 + v65;
        v68 = *(a2 + v65 + 8);
        if (v68)
        {
          *v66 = *v67;
          *(v66 + 1) = v68;
          v69 = *(v67 + 2);
          v70 = *(v67 + 3);
          v71 = *(v67 + 4);
          v72 = *(v67 + 5);
          v73 = *(v67 + 6);
          v105 = *(v67 + 7);
          v110 = v67[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v69, v70, v71, v72, v73, v105, v110);
          *(v66 + 2) = v69;
          *(v66 + 3) = v70;
          *(v66 + 4) = v71;
          *(v66 + 5) = v72;
          *(v66 + 6) = v73;
          *(v66 + 7) = v105;
          v66[64] = v110;
          *(v66 + 65) = *(v67 + 65);
          v74 = v67[120];
          if (v74 == 255)
          {
            *(v66 + 72) = *(v67 + 72);
            *(v66 + 88) = *(v67 + 88);
            *(v66 + 104) = *(v67 + 104);
            v66[120] = v67[120];
          }

          else
          {
            v75 = *(v67 + 9);
            v76 = *(v67 + 12);
            v106 = *(v67 + 11);
            v111 = *(v67 + 10);
            v77 = *(v67 + 13);
            v78 = *(v67 + 14);
            v79 = v74 & 1;
            sub_21D0FB960(v75, v111, v106, v76, v77, v78, v74 & 1);
            *(v66 + 9) = v75;
            *(v66 + 10) = v111;
            *(v66 + 11) = v106;
            *(v66 + 12) = v76;
            *(v66 + 13) = v77;
            *(v66 + 14) = v78;
            v66[120] = v79;
          }

          v8 = v115;
          v7 = v114;
          v66[121] = v67[121];
          goto LABEL_102;
        }

LABEL_99:
        v80 = *(v67 + 5);
        *(v66 + 4) = *(v67 + 4);
        *(v66 + 5) = v80;
        *(v66 + 6) = *(v67 + 6);
        *(v66 + 106) = *(v67 + 106);
        v81 = *(v67 + 1);
        *v66 = *v67;
        *(v66 + 1) = v81;
        v82 = *(v67 + 3);
        *(v66 + 2) = *(v67 + 2);
        *(v66 + 3) = v82;
LABEL_102:
        a1[v64[6]] = *(a2 + v64[6]);
        a1[v64[7]] = *(a2 + v64[7]);
        a1[v64[8]] = *(a2 + v64[8]);
        a1[v64[9]] = *(a2 + v64[9]);
        a1[v64[10]] = *(a2 + v64[10]);
        v83 = v64[11];
        v84 = *(a2 + v83);
        *&a1[v83] = v84;
        v85 = v84;
        goto LABEL_135;
      }

      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = swift_getEnumCaseMultiPayload();
      v116 = v8;
      if (v28 <= 4)
      {
        if (v28 > 2)
        {
LABEL_73:
          v61 = sub_21DBF563C();
          (*(*(v61 - 8) + 16))(a1, a2, v61);
          swift_storeEnumTagMultiPayload();
          goto LABEL_104;
        }

        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_73;
          }

          goto LABEL_103;
        }

LABEL_76:
        v62 = *a2;
        *a1 = *a2;
        v63 = v62;
        swift_storeEnumTagMultiPayload();
        goto LABEL_104;
      }

      if (v28 > 7)
      {
        if (v28 == 8 || v28 == 9)
        {
          goto LABEL_76;
        }
      }

      else if (v28 == 5 || v28 == 6)
      {
        goto LABEL_73;
      }

LABEL_103:
      memcpy(a1, a2, *(*(v27 - 8) + 64));
LABEL_104:
      v64 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v86 = v64[5];
      v66 = &a1[v86];
      v67 = a2 + v86;
      v87 = *(a2 + v86 + 8);
      if (v87)
      {
        *v66 = *v67;
        *(v66 + 1) = v87;
        v88 = *(v67 + 2);
        v89 = *(v67 + 3);
        v90 = *(v67 + 4);
        v91 = *(v67 + 5);
        v103 = *(v67 + 6);
        v112 = *(v67 + 7);
        v107 = v67[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v88, v89, v90, v91, v103, v112, v107);
        *(v66 + 2) = v88;
        *(v66 + 3) = v89;
        *(v66 + 4) = v90;
        *(v66 + 5) = v91;
        *(v66 + 6) = v103;
        *(v66 + 7) = v112;
        v66[64] = v107;
        *(v66 + 65) = *(v67 + 65);
        v92 = v67[120];
        if (v92 == 255)
        {
          *(v66 + 72) = *(v67 + 72);
          *(v66 + 88) = *(v67 + 88);
          *(v66 + 104) = *(v67 + 104);
          v66[120] = v67[120];
        }

        else
        {
          v108 = *(v67 + 10);
          v113 = *(v67 + 9);
          v93 = *(v67 + 12);
          v104 = *(v67 + 11);
          v94 = *(v67 + 13);
          v95 = *(v67 + 14);
          v96 = v92 & 1;
          sub_21D0FB960(v113, v108, v104, v93, v94, v95, v92 & 1);
          *(v66 + 9) = v113;
          *(v66 + 10) = v108;
          *(v66 + 11) = v104;
          *(v66 + 12) = v93;
          *(v66 + 13) = v94;
          *(v66 + 14) = v95;
          v66[120] = v96;
        }

        v8 = v116;
        v66[121] = v67[121];
        goto LABEL_102;
      }

      goto LABEL_99;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v29 = *a2;
      *a1 = *a2;
      v30 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      v34 = v29;
      if (v33(a2 + v30, 1, v31))
      {
        goto LABEL_36;
      }

      v46 = swift_getEnumCaseMultiPayload();
      if (v46 > 4)
      {
        if (v46 <= 7)
        {
          if (v46 == 5 || v46 == 6)
          {
            goto LABEL_118;
          }

          goto LABEL_133;
        }

        if (v46 != 8 && v46 != 9)
        {
          goto LABEL_133;
        }

        goto LABEL_121;
      }

      if (v46 > 2)
      {
        goto LABEL_118;
      }

      if (v46 == 1)
      {
        goto LABEL_121;
      }

      if (v46 != 2)
      {
        goto LABEL_133;
      }

      goto LABEL_118;
    }

    v18 = *a2;
    *a1 = *a2;
    v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v18;
    if (v22(a2 + v19, 1, v20))
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v19], a2 + v19, *(*(v24 - 8) + 64));
      goto LABEL_135;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_110;
        }

        goto LABEL_131;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_131;
      }
    }

    else
    {
      if (v45 > 2)
      {
LABEL_110:
        v97 = sub_21DBF563C();
        (*(*(v97 - 8) + 16))(&a1[v19], a2 + v19, v97);
        swift_storeEnumTagMultiPayload();
LABEL_132:
        (*(v21 + 56))(&a1[v19], 0, 1, v20);
        goto LABEL_135;
      }

      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_110;
        }

LABEL_131:
        memcpy(&a1[v19], a2 + v19, *(v21 + 64));
        goto LABEL_132;
      }
    }

    v98 = *(a2 + v19);
    *&a1[v19] = v98;
    v99 = v98;
    swift_storeEnumTagMultiPayload();
    goto LABEL_132;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

void sub_21D7C419C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  if ((*(*(v2 - 8) + 48))(a1, 1, v2))
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 4)
    {
      if (v8 <= 7)
      {
        if (v8 != 5 && v8 != 6)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (v8 != 8 && v8 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v8 > 2)
      {
        goto LABEL_39;
      }

      if (v8 != 1)
      {
        if (v8 != 2)
        {
LABEL_43:
          v20 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v21 = a1 + *(v20 + 20);
          if (*(v21 + 8))
          {

            sub_21D179EF0(*(v21 + 16), *(v21 + 24), *(v21 + 32), *(v21 + 40), *(v21 + 48), *(v21 + 56), *(v21 + 64));
            v22 = *(v21 + 120);
            if (v22 != 255)
            {
              sub_21D1078C0(*(v21 + 72), *(v21 + 80), *(v21 + 88), *(v21 + 96), *(v21 + 104), *(v21 + 112), v22 & 1);
            }
          }

          v9 = *(a1 + *(v20 + 44));
          goto LABEL_47;
        }

LABEL_39:
        v19 = sub_21DBF563C();
        (*(*(v19 - 8) + 8))(a1, v19);
        goto LABEL_43;
      }
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v9 = *(a1 + 16);
LABEL_47:

      return;
    }

LABEL_19:

    v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v11 - 8) + 48))(a1 + v10, 1, v11))
    {
      return;
    }

    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 4)
    {
      if (v12 <= 7)
      {
        if (v12 != 5 && v12 != 6)
        {
          return;
        }

        goto LABEL_50;
      }

      if (v12 != 8 && v12 != 9)
      {
        return;
      }
    }

    else
    {
      if (v12 > 2)
      {
LABEL_50:
        v5 = sub_21DBF563C();
        v6 = *(*(v5 - 8) + 8);
        v7 = a1 + v10;
LABEL_51:

        v6(v7, v5);
        return;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
          return;
        }

        goto LABEL_50;
      }
    }

    v9 = *(a1 + v10);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v17 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v17 - 8) + 48))(a1, 1, v17))
      {
        return;
      }

      v18 = sub_21DBF563C();
      v6 = *(*(v18 - 8) + 8);
      v5 = v18;
      v7 = a1;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        return;
      }

      v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v5 = sub_21DBF8D7C();
      v6 = *(*(v5 - 8) + 8);
      v7 = a1 + v4;
    }

    goto LABEL_51;
  }

  v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v13 - 8) + 48))(a1, 1, v13))
  {

    v14 = *(v13 + 20);
    v15 = sub_21DBF6C1C();
    (*(*(v15 - 8) + 8))(a1 + v14, v15);
  }

  v16 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v16 + 8))
  {

    v9 = *(v16 + 16);
    goto LABEL_47;
  }
}

void *sub_21D7C4638(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a2, 1, v4))
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v31 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v32 = *(v31 - 8);
            if ((*(v32 + 48))(a2, 1, v31))
            {
              v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v33 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v43 = *(v31 + 20);
              v44 = sub_21DBF6C1C();
              v105 = *(*(v44 - 8) + 16);
              sub_21DBF8E0C();
              v105(a1 + v43, a2 + v43, v44);
              (*(v32 + 56))(a1, 0, 1, v31);
            }

            v45 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v46 = (a1 + v45);
            v47 = (a2 + v45);
            v48 = v47[1];
            if (v48)
            {
              *v46 = *v47;
              v46[1] = v48;
              v49 = v47[2];
              v46[2] = v49;
              sub_21DBF8E0C();
              v50 = v49;
            }

            else
            {
              *v46 = *v47;
              v46[2] = v47[2];
            }

            goto LABEL_133;
          case 7:
            v38 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v39 = *(v38 - 8);
            if ((*(v39 + 48))(a2, 1, v38))
            {
              v40 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v40 - 8) + 64));
            }

            else
            {
              v52 = sub_21DBF563C();
              (*(*(v52 - 8) + 16))(a1, a2, v52);
              *(a1 + *(v38 + 20)) = *(a2 + *(v38 + 20));
              (*(v39 + 56))(a1, 0, 1, v38);
            }

            v53 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v53 + 20)) = *(a2 + *(v53 + 20));
            goto LABEL_133;
          case 8:
            *a1 = *a2;
            v10 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v11 = sub_21DBF8D7C();
            (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
LABEL_133:
            swift_storeEnumTagMultiPayload();
            goto LABEL_134;
        }

LABEL_37:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_134:
        *(a1 + *(v4 + 48)) = *(a2 + *(v4 + 48));
        (*(v5 + 56))(a1, 0, 1, v4);
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v21 = a2[2];
        a1[2] = v21;
        v22 = v21;
        goto LABEL_133;
      }

      v34 = *a2;
      *a1 = *a2;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      v35 = *(v28 + 48);
      v36 = v34;
      if (v35(a2 + v26, 1, v27))
      {
LABEL_34:
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v26, a2 + v26, *(*(v37 - 8) + 64));
        goto LABEL_133;
      }

      v51 = swift_getEnumCaseMultiPayload();
      if (v51 > 4)
      {
        if (v51 <= 7)
        {
          if (v51 == 5 || v51 == 6)
          {
            goto LABEL_116;
          }

          goto LABEL_131;
        }

        if (v51 != 8 && v51 != 9)
        {
          goto LABEL_131;
        }

LABEL_119:
        v97 = *(a2 + v26);
        *(a1 + v26) = v97;
        v98 = v97;
        swift_storeEnumTagMultiPayload();
        goto LABEL_132;
      }

      if (v51 <= 2)
      {
        if (v51 != 1)
        {
          if (v51 == 2)
          {
            goto LABEL_116;
          }

LABEL_131:
          memcpy(a1 + v26, a2 + v26, *(v28 + 64));
          goto LABEL_132;
        }

        goto LABEL_119;
      }

LABEL_116:
      v96 = sub_21DBF563C();
      (*(*(v96 - 8) + 16))(a1 + v26, a2 + v26, v96);
      swift_storeEnumTagMultiPayload();
LABEL_132:
      (*(v28 + 56))(a1 + v26, 0, 1, v27);
      goto LABEL_133;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_37;
        }

        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = swift_getEnumCaseMultiPayload();
        v111 = v5;
        v110 = v4;
        if (v13 <= 4)
        {
          if (v13 > 2)
          {
LABEL_67:
            v54 = sub_21DBF563C();
            (*(*(v54 - 8) + 16))(a1, a2, v54);
            swift_storeEnumTagMultiPayload();
            goto LABEL_94;
          }

          if (v13 != 1)
          {
            if (v13 == 2)
            {
              goto LABEL_67;
            }

            goto LABEL_93;
          }

LABEL_70:
          v55 = *a2;
          *a1 = *a2;
          v56 = v55;
          swift_storeEnumTagMultiPayload();
          goto LABEL_94;
        }

        if (v13 > 7)
        {
          if (v13 == 8 || v13 == 9)
          {
            goto LABEL_70;
          }
        }

        else if (v13 == 5 || v13 == 6)
        {
          goto LABEL_67;
        }

LABEL_93:
        memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_94:
        v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v61 = v60[5];
        v62 = a1 + v61;
        v63 = a2 + v61;
        v64 = *(a2 + v61 + 8);
        if (v64)
        {
          *v62 = *v63;
          *(v62 + 1) = v64;
          v65 = *(v63 + 2);
          v66 = *(v63 + 3);
          v67 = *(v63 + 4);
          v68 = *(v63 + 5);
          v69 = *(v63 + 6);
          v101 = *(v63 + 7);
          v106 = v63[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v65, v66, v67, v68, v69, v101, v106);
          *(v62 + 2) = v65;
          *(v62 + 3) = v66;
          *(v62 + 4) = v67;
          *(v62 + 5) = v68;
          *(v62 + 6) = v69;
          *(v62 + 7) = v101;
          v62[64] = v106;
          *(v62 + 65) = *(v63 + 65);
          v70 = v63[120];
          if (v70 == 255)
          {
            *(v62 + 72) = *(v63 + 72);
            *(v62 + 88) = *(v63 + 88);
            *(v62 + 104) = *(v63 + 104);
            v62[120] = v63[120];
          }

          else
          {
            v71 = *(v63 + 9);
            v72 = *(v63 + 12);
            v102 = *(v63 + 11);
            v107 = *(v63 + 10);
            v73 = *(v63 + 13);
            v74 = *(v63 + 14);
            v75 = v70 & 1;
            sub_21D0FB960(v71, v107, v102, v72, v73, v74, v70 & 1);
            *(v62 + 9) = v71;
            *(v62 + 10) = v107;
            *(v62 + 11) = v102;
            *(v62 + 12) = v72;
            *(v62 + 13) = v73;
            *(v62 + 14) = v74;
            v62[120] = v75;
          }

          v5 = v111;
          v4 = v110;
          v62[121] = v63[121];
          goto LABEL_100;
        }

LABEL_97:
        v76 = *(v63 + 5);
        *(v62 + 4) = *(v63 + 4);
        *(v62 + 5) = v76;
        *(v62 + 6) = *(v63 + 6);
        *(v62 + 106) = *(v63 + 106);
        v77 = *(v63 + 1);
        *v62 = *v63;
        *(v62 + 1) = v77;
        v78 = *(v63 + 3);
        *(v62 + 2) = *(v63 + 2);
        *(v62 + 3) = v78;
LABEL_100:
        *(a1 + v60[6]) = *(a2 + v60[6]);
        *(a1 + v60[7]) = *(a2 + v60[7]);
        *(a1 + v60[8]) = *(a2 + v60[8]);
        *(a1 + v60[9]) = *(a2 + v60[9]);
        *(a1 + v60[10]) = *(a2 + v60[10]);
        v79 = v60[11];
        v80 = *(a2 + v79);
        *(a1 + v79) = v80;
        v81 = v80;
        goto LABEL_133;
      }

      v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v24 = swift_getEnumCaseMultiPayload();
      v112 = v5;
      if (v24 <= 4)
      {
        if (v24 > 2)
        {
LABEL_71:
          v57 = sub_21DBF563C();
          (*(*(v57 - 8) + 16))(a1, a2, v57);
          swift_storeEnumTagMultiPayload();
          goto LABEL_102;
        }

        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_71;
          }

          goto LABEL_101;
        }

LABEL_74:
        v58 = *a2;
        *a1 = *a2;
        v59 = v58;
        swift_storeEnumTagMultiPayload();
        goto LABEL_102;
      }

      if (v24 > 7)
      {
        if (v24 == 8 || v24 == 9)
        {
          goto LABEL_74;
        }
      }

      else if (v24 == 5 || v24 == 6)
      {
        goto LABEL_71;
      }

LABEL_101:
      memcpy(a1, a2, *(*(v23 - 8) + 64));
LABEL_102:
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v82 = v60[5];
      v62 = a1 + v82;
      v63 = a2 + v82;
      v83 = *(a2 + v82 + 8);
      if (v83)
      {
        *v62 = *v63;
        *(v62 + 1) = v83;
        v84 = *(v63 + 2);
        v85 = *(v63 + 3);
        v86 = *(v63 + 4);
        v87 = *(v63 + 5);
        v99 = *(v63 + 6);
        v108 = *(v63 + 7);
        v103 = v63[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v84, v85, v86, v87, v99, v108, v103);
        *(v62 + 2) = v84;
        *(v62 + 3) = v85;
        *(v62 + 4) = v86;
        *(v62 + 5) = v87;
        *(v62 + 6) = v99;
        *(v62 + 7) = v108;
        v62[64] = v103;
        *(v62 + 65) = *(v63 + 65);
        v88 = v63[120];
        if (v88 == 255)
        {
          *(v62 + 72) = *(v63 + 72);
          *(v62 + 88) = *(v63 + 88);
          *(v62 + 104) = *(v63 + 104);
          v62[120] = v63[120];
        }

        else
        {
          v104 = *(v63 + 10);
          v109 = *(v63 + 9);
          v89 = *(v63 + 12);
          v100 = *(v63 + 11);
          v90 = *(v63 + 13);
          v91 = *(v63 + 14);
          v92 = v88 & 1;
          sub_21D0FB960(v109, v104, v100, v89, v90, v91, v88 & 1);
          *(v62 + 9) = v109;
          *(v62 + 10) = v104;
          *(v62 + 11) = v100;
          *(v62 + 12) = v89;
          *(v62 + 13) = v90;
          *(v62 + 14) = v91;
          v62[120] = v92;
        }

        v5 = v112;
        v62[121] = v63[121];
        goto LABEL_100;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v25 = *a2;
      *a1 = *a2;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      v30 = v25;
      if (v29(a2 + v26, 1, v27))
      {
        goto LABEL_34;
      }

      v42 = swift_getEnumCaseMultiPayload();
      if (v42 > 4)
      {
        if (v42 <= 7)
        {
          if (v42 == 5 || v42 == 6)
          {
            goto LABEL_116;
          }

          goto LABEL_131;
        }

        if (v42 != 8 && v42 != 9)
        {
          goto LABEL_131;
        }

        goto LABEL_119;
      }

      if (v42 > 2)
      {
        goto LABEL_116;
      }

      if (v42 == 1)
      {
        goto LABEL_119;
      }

      if (v42 != 2)
      {
        goto LABEL_131;
      }

      goto LABEL_116;
    }

    v14 = *a2;
    *a1 = *a2;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v14;
    if (v18(a2 + v15, 1, v16))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v15, a2 + v15, *(*(v20 - 8) + 64));
      goto LABEL_133;
    }

    v41 = swift_getEnumCaseMultiPayload();
    if (v41 > 4)
    {
      if (v41 <= 7)
      {
        if (v41 == 5 || v41 == 6)
        {
          goto LABEL_108;
        }

        goto LABEL_129;
      }

      if (v41 != 8 && v41 != 9)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v41 > 2)
      {
LABEL_108:
        v93 = sub_21DBF563C();
        (*(*(v93 - 8) + 16))(a1 + v15, a2 + v15, v93);
        swift_storeEnumTagMultiPayload();
LABEL_130:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_133;
      }

      if (v41 != 1)
      {
        if (v41 == 2)
        {
          goto LABEL_108;
        }

LABEL_129:
        memcpy(a1 + v15, a2 + v15, *(v17 + 64));
        goto LABEL_130;
      }
    }

    v94 = *(a2 + v15);
    *(a1 + v15) = v94;
    v95 = v94;
    swift_storeEnumTagMultiPayload();
    goto LABEL_130;
  }

  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8) - 8) + 64);

  return memcpy(a1, a2, v6);
}